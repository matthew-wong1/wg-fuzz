struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    var var_0 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false)), !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !(u_input.e.x == (0i ^ u_input.e.x))), select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, true)), any(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, false))), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, all(vec4<bool>(false, false, false, false)))), false), any(vec2<bool>(true, !all(vec3<bool>(true, false, true)))));
    var var_1 = any(vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) == all(select(var_0.xy, var_0.wx, var_0.zz)), var_0.x));
    let var_2 = -2416f;
    var var_3 = Struct_4(var_2, ~u_input.d.xy >> (_wgslsmith_add_vec2_u32(u_input.d.zx, vec2<u32>(~u_input.d.x, 1u)) % vec2<u32>(32u)));
    var var_4 = all(var_0.xx);
    return _wgslsmith_f_op_f32(f32(-1f) * -682f);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = u_input.e;
    var_0 = ~u_input.e;
    let var_1 = _wgslsmith_div_u32(u_input.b, reverseBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c, 11095u), u_input.b), u_input.c)));
    var_0 = abs(min(_wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(20772i, _wgslsmith_mult_i32(arg_1, u_input.e.x), -2147483647i), u_input.e), -(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -2147483647i, arg_1), u_input.e))));
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(func_3()) < -744f, true != !(u_input.e.x == arg_1), any(vec3<bool>(true, true, true)));
    return !any(!select(select(var_2.zy, var_2.xx, var_2.x), var_2.yz, var_2.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = select(select(vec4<bool>(all(arg_0.a.yy), func_2(vec2<f32>(arg_1.b, arg_0.b), -8834i) && !arg_1.a.x, arg_1.a.x, arg_0.a.x), select(select(vec4<bool>(true, arg_0.a.x, arg_1.a.x, arg_1.a.x), !vec4<bool>(arg_1.a.x, false, false, arg_1.a.x), select(arg_1.a.x, false, true)), vec4<bool>(true, all(vec2<bool>(arg_0.a.x, true)), -137f > arg_1.e, arg_0.a.x || false), true), select(vec4<bool>(arg_1.a.x, !arg_1.a.x, arg_1.a.x, !arg_1.a.x), vec4<bool>(true, 469f <= arg_0.e, arg_1.c.x < 34360i, !arg_0.a.x), true)), vec4<bool>((true | func_2(vec2<f32>(arg_0.b, arg_1.b), arg_0.c.x)) & false, select(select(false, true, arg_0.a.x), true, !arg_1.a.x) | (any(vec4<bool>(arg_0.a.x, arg_1.a.x, arg_0.a.x, false)) & arg_1.a.x), arg_0.a.x, select(func_2(vec2<f32>(arg_0.b, 1000f), _wgslsmith_div_i32(-1i, 23904i)), arg_0.a.x, !arg_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_f_op_f32(-arg_0.b)))) != -131f);
    var var_1 = Struct_2(vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(740f, arg_1.b)))), arg_0.c.x), func_2(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.e)), 821f), 1i & arg_1.c.x), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_vec3_i32(arg_0.c, vec3<i32>(countOneBits(-1i), 2147483647i, i32(-1i) * -1i)) | vec3<i32>(~1i, arg_1.c.x, ~(-2147483647i)), ~min(~1u, arg_0.d) >> (1u % 32u), arg_1.e);
    var var_2 = select(var_0, !vec4<bool>(any(var_1.a.yy) | true, all(vec3<bool>(false, true, arg_0.a.x)), false | var_1.a.x, select(true, arg_0.a.x, arg_0.a.x) != (4294967295u > u_input.a)), vec4<bool>(!(!(!var_1.a.x)), true, all(!vec3<bool>(false, false, var_1.a.x)), all(select(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(arg_0.a.x, arg_1.a.x, arg_0.a.x), vec3<bool>(var_1.a.x, arg_0.a.x, false)), vec3<bool>(false, var_0.x, arg_0.a.x), var_0.x))));
    var_1 = arg_1;
    let var_3 = 1u;
    return 6898u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-438f, -1131f, func_1(Struct_2(vec3<bool>(true, false, true), 741f, vec3<i32>(u_input.e.x, u_input.e.x, 21634i), 21920u, -226f), Struct_2(vec3<bool>(false, false, true), -577f, vec3<i32>(u_input.e.x, -1i, 1i), u_input.b, 490f)) == _wgslsmith_mult_u32(23475u, 40965u))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) + 226f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-941f, -598f))))))));
    var var_1 = _wgslsmith_clamp_u32(u_input.a, firstTrailingBit(u_input.d.x), ~u_input.b);
    let var_2 = u_input.d.x;
    let var_3 = countOneBits(~reverseBits(abs(9558u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2134f, 805f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -330f), vec2<f32>(611f, 1093f), vec2<bool>(true, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -783f)), vec2<f32>(1492f, -1463f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-525f, -418f))) + vec2<f32>(1000f, -504f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(308f, -240f)))))), countOneBits(vec3<u32>(firstLeadingBit(1u | var_2), var_2, ~(u_input.d.x & 6119u))), u_input.e.xy, select(vec4<i32>(-1i) * -(~vec4<i32>(-58276i, 2147483647i, 22907i, -61831i)), vec4<i32>(~(~u_input.e.x), max(1i, -5987i), _wgslsmith_add_i32(u_input.e.x, u_input.e.x) ^ -46103i, ~_wgslsmith_add_i32(1i, u_input.e.x)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))));
}

