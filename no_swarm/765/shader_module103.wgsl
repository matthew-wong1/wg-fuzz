struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = reverseBits(_wgslsmith_sub_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(select(u_input.b, vec3<u32>(1u, u_input.b.x, u_input.b.x), true), u_input.b)));
    var var_1 = Struct_1(2471f, all(vec2<bool>(true, all(vec4<bool>(arg_2.d, true, true, arg_2.b)))), !vec2<bool>(arg_2.d, (arg_1 ^ arg_1) != ~2147483647i), !arg_2.b);
    var var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a, arg_2.a, var_1.a, 502f), vec4<f32>(-757f, arg_2.a, -399f, -962f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-429f, -2535f, 1058f, arg_2.a) * vec4<f32>(-797f, var_1.a, -1344f, -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(ceil(arg_2.a)), _wgslsmith_f_op_f32(-arg_2.a), -1298f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -760f, arg_2.a, var_1.a) + vec4<f32>(1000f, arg_2.a, arg_2.a, 1636f))))), var_0, false | !any(select(vec4<bool>(arg_2.d, false, arg_2.c.x, true), vec4<bool>(arg_2.c.x, arg_2.b, true, false), var_1.d)), i32(-1i) * -10353i);
    let var_3 = Struct_2(var_2.a, u_input.b, !(true & select(true, var_2.c, all(vec3<bool>(false, false, true)))), i32(-1i) * -2147483647i);
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a))), 2650f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1377f), 343f), var_3.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(var_3.b.x, 4294967295u), firstLeadingBit(_wgslsmith_add_u32(var_3.b.x, var_3.b.x)), ~1u), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(15943u, select(1u, var_2.b.x, var_2.c)), 0u)), var_1.a != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f * var_3.a.x)), -(~(-(i32(-1i) * -1i))));
    return _wgslsmith_f_op_f32(abs(var_1.a));
}

fn func_2() -> Struct_2 {
    var var_0 = ~u_input.b.x;
    var_0 = abs(~_wgslsmith_sub_u32(~1u, ~131313u)) & ~_wgslsmith_mult_u32(firstTrailingBit(u_input.b.x), 13336u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0i, -u_input.a, Struct_1(1000f, false, vec2<bool>(false, false), true)))) * -421f) - _wgslsmith_f_op_f32(483f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1490f))), _wgslsmith_f_op_f32(1660f + -811f)))));
    var_0 = ~(~14162u);
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 51866u, 71065u, 1u), (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ (vec4<u32>(0u, 21932u, 4294967295u, u_input.b.x) << (vec4<u32>(24043u, 39647u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) << (vec4<u32>(firstTrailingBit(4294967295u), ~0u, _wgslsmith_mod_u32(33231u, u_input.b.x), u_input.b.x) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_clamp_u32(47764u, ~u_input.b.x, 33397u), firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 0u)), 60947u, select(10203u, _wgslsmith_add_u32(19249u, u_input.b.x), false)));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(328f, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1860f, 529f, 890f, var_1) * vec4<f32>(var_1, var_1, var_1, -567f)), vec4<bool>(false, false, false, false))))), u_input.b | vec3<u32>(min(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 52048u))), 20480u, u_input.b.x), any(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)))), _wgslsmith_sub_i32(20519i, u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = func_2();
    var var_1 = -26307i;
    let var_2 = var_0;
    var var_3 = arg_1;
    let var_4 = ~1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1219f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(251f, -941f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) - -1270f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-192f)) - 1487f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_1(-128f, false, vec2<bool>(false, false), false), Struct_2(vec4<f32>(-2071f, 637f, 154f, -624f), u_input.b, false, -1i), true, _wgslsmith_f_op_f32(912f - 1000f)))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1161f) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1225f)))), -1455f, -233f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(140f, var_0, var_0, -1672f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, var_0, -2587f, var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, 712f, 1120f, var_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(260f, -492f, var_0, 1023f)))))))), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(0u, 15434u), 0u, 0u), reverseBits(firstTrailingBit(func_2().b))), true, -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 10511i, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 85989i));
    var var_2 = u_input.a;
    var_2 = firstLeadingBit(-var_1.d);
    var_2 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(13747i, 0i, u_input.a, var_1.d), vec4<i32>(u_input.a, 61041i, 2147483647i, var_1.d)), -var_1.d, -58575i), ~(~vec3<i32>(2147483647i, 0i, 16048i))), -vec3<i32>(var_1.d, 4332i, 67873i)), _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(floor(1f)))))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - var_0));
}

