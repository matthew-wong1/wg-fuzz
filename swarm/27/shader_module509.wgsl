struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    return !(!vec2<bool>(_wgslsmith_f_op_f32(-350f - 180f) > _wgslsmith_f_op_f32(floor(542f)), false));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(!arg_2.a & false, arg_1.b, !(!arg_2.a));
    let var_1 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.c, true, arg_0), false), select(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_2.a, arg_0), var_0.a), select(select(vec3<bool>(true, var_0.c, arg_0), vec3<bool>(false, arg_1.a, arg_0), arg_1.a), select(vec3<bool>(arg_0, true, arg_2.c), vec3<bool>(arg_2.a, false, arg_0), vec3<bool>(true, arg_2.a, arg_2.c)), all(vec4<bool>(var_0.c, var_0.a, true, arg_2.c))), !any(vec2<bool>(true, true))), all(!vec2<bool>(arg_1.a, arg_2.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(ceil(1199f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(980f, -112f) * -310f), -2644f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1293f, -828f, 422f, 1122f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1579f, -427f, -446f, -1265f), vec4<f32>(347f, 1000f, 1000f, 992f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, -1027f, 979f, -1277f)))));
    return !func_1(arg_2);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    let var_1 = Struct_1(0u < _wgslsmith_dot_vec4_u32(arg_0, ~(vec4<u32>(u_input.c.x, 37949u, u_input.c.x, arg_0.x) << (vec4<u32>(4294967295u, arg_0.x, 27229u, 31310u) % vec4<u32>(32u)))), -arg_3.b, all(func_3(var_0.c, Struct_1(false, _wgslsmith_clamp_vec4_i32(u_input.b, arg_1, arg_1), arg_2.c), Struct_1(arg_3.a, vec4<i32>(var_0.b.x, -19589i, arg_3.b.x, u_input.b.x), func_1(arg_3).x))));
    var var_2 = vec2<bool>(!any(select(!vec4<bool>(arg_2.a, false, arg_2.c, false), !vec4<bool>(true, true, arg_3.c, var_0.c), select(vec4<bool>(false, true, arg_3.c, var_0.c), vec4<bool>(var_1.c, true, false, var_0.a), true))), true);
    let var_3 = arg_2.a;
    var_2 = vec2<bool>(any(select(!vec4<bool>(var_1.a, false, false, var_0.c), select(vec4<bool>(arg_3.a, var_3, true, true), !vec4<bool>(true, var_3, var_0.a, var_0.c), vec4<bool>(true, var_0.a, var_1.c, var_3)), !(arg_2.a && arg_2.c))), any(vec3<bool>(false, !(var_2.x == var_3), all(select(vec2<bool>(false, true), vec2<bool>(false, arg_3.c), vec2<bool>(var_0.c, var_0.c))))));
    return 460f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, true, any(select(func_1(Struct_1(true, vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), true)), vec2<bool>(true, true), false)), any(vec2<bool>(all(vec4<bool>(true, false, false, false)), false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-540f, -572f, 450f))) * vec3<f32>(-724f, 101f, -704f))) + vec3<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(5405u, 4294967295u, u_input.a.x, 4294967295u), vec4<i32>(u_input.b.x, -10260i, u_input.b.x, -30152i), Struct_1(var_0.x, u_input.b, var_0.x), Struct_1(var_0.x, vec4<i32>(-3935i, u_input.b.x, u_input.b.x, 1i), var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1101f), _wgslsmith_f_op_f32(select(-700f, -1000f, var_0.x)))), -1535f)));
    var var_2 = ~u_input.b.xwx;
    var var_3 = var_1;
    var var_4 = Struct_1(func_1(Struct_1(var_0.x | true, firstLeadingBit(vec4<i32>(u_input.b.x, 1i, 2484i, var_2.x)), false)).x, vec4<i32>(_wgslsmith_mod_i32(61788i, 6923i) ^ u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, 2147483647i), ~u_input.b.x), u_input.b.x, _wgslsmith_add_i32(-5485i, var_2.x) & _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) >> (~(~(vec4<u32>(17791u, u_input.c.x, 4294967295u, 0u) ^ vec4<u32>(u_input.a.x, 29559u, 0u, 1u))) % vec4<u32>(32u)), false);
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, var_3.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - var_3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 587f, var_1.x, 427f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, -1062f, var_3.x, -800f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_3.x, var_3.x, var_1.x) + vec4<f32>(var_3.x, var_1.x, var_1.x, 312f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(414f, var_1.x, 1665f, var_3.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(193f))), 1235f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)))));
    var var_6 = Struct_1(!(!(_wgslsmith_f_op_f32(-var_5.x) <= _wgslsmith_f_op_f32(665f * 1000f))), var_4.b, all(vec3<bool>(!var_4.a, true, var_4.c)));
    let var_7 = Struct_1(var_6.a, max(var_6.b, u_input.b), var_6.c);
    var var_8 = !var_0.wy;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec4<u32>(41821u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 0u), var_8.x | false) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.c.x) | vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(u_input.a.x, 28660u, u_input.c.x, 4294967295u))));
}

