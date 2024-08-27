struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = Struct_2(Struct_1(arg_2, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1531f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2055f - -1008f), _wgslsmith_f_op_f32(-arg_2), !arg_0)))));
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -255f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.b.x)))) - 149f), vec3<f32>(1973f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1424f)))), _wgslsmith_f_op_f32(f32(-1f) * -600f)));
    var_0 = Struct_2(Struct_1(arg_2, vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) * _wgslsmith_f_op_f32(-arg_2)), 610f)));
    var var_3 = Struct_3(~countOneBits(firstTrailingBit(vec4<i32>(1i, u_input.a, u_input.a, 30843i)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, arg_1, 4294967295u), vec4<u32>(1u, arg_3, arg_1, 7572u)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_f32(sign(arg_2));
}

fn func_2() -> vec3<f32> {
    let var_0 = i32(-1i) * -1i;
    var var_1 = false;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1882f + _wgslsmith_f_op_f32(func_3(false, 0u, -515f, 11972u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var_1 = false;
    var_1 = !all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))) && true;
    return vec3<f32>(_wgslsmith_f_op_f32(min(var_2.a.a, _wgslsmith_div_f32(var_2.a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(true, 0u, var_2.a.b.x, 14495u))))))), var_2.a.a, var_2.a.b.x);
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-497f))), 965f, 173f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f * var_0.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1345f, var_0.x, var_1.a.a, var_1.a.b.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(285f, 344f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(floor(var_1.a.a))), -214f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(357f, var_0.x) * 1166f))));
    var var_3 = Struct_2(Struct_1(1484f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 150f, -280f))) + _wgslsmith_f_op_vec3_f32(var_1.a.b - var_2.zzz)))));
    return vec4<i32>(~(-42525i), 43565i, -1i >> (0u % 32u), select(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, -5610i), countOneBits(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(10759i, u_input.a)) & ~vec2<i32>(u_input.a, u_input.a)), 1i, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = abs((func_1() ^ min(vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a))) ^ (func_1() << (vec4<u32>(32967u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 0u)), 86259u) % vec4<u32>(32u))));
    var var_2 = !all(select(vec4<bool>(true, true, any(vec3<bool>(true, false, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, true)));
    var var_3 = _wgslsmith_sub_i32(~u_input.a, -_wgslsmith_mult_i32(var_1.x, func_1().x)) << (1u % 32u);
    var var_4 = var_1.ww;
    var_4 = _wgslsmith_div_vec2_i32(var_1.yx, var_1.wx);
    var_2 = all(!vec3<bool>(true, _wgslsmith_mult_i32(u_input.a, u_input.a) < ~var_1.x, all(vec4<bool>(true, true, true, true))));
    let var_5 = _wgslsmith_div_vec4_i32(var_1, ~(-(~(~var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 51629i, _wgslsmith_f_op_f32(f32(-1f) * -674f));
}

