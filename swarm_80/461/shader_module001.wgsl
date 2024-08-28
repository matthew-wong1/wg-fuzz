struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = 2169f < arg_1;
    var_0 = _wgslsmith_dot_vec3_i32(abs(min(vec3<i32>(14967i, 1i, 73425i), vec3<i32>(arg_0, 45692i, arg_2.a))) << (select(_wgslsmith_sub_vec3_u32(vec3<u32>(45099u, u_input.a, u_input.a), vec3<u32>(1u, 12669u, 1u)), vec3<u32>(4294967295u, 0u, u_input.a), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_2.a, arg_0), vec3<i32>(-4214i, arg_0, arg_0) >> (vec3<u32>(66671u, 20778u, 1u) % vec3<u32>(32u))), vec3<i32>(arg_2.a, arg_0, -21295i) << ((vec3<u32>(u_input.a, u_input.a, 11840u) >> (vec3<u32>(4294967295u, 5914u, 49270u) % vec3<u32>(32u))) % vec3<u32>(32u)), max(vec3<i32>(-34811i, -1i, 33017i), vec3<i32>(8603i, 26458i, arg_0)) << (vec3<u32>(u_input.a, 4205u, 25329u) % vec3<u32>(32u)))) != ~arg_2.a;
    let var_1 = 102542u >= ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a, 1u), ~4095u);
    var_0 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1, -301f), _wgslsmith_f_op_f32(round(141f)))), max(u_input.a, 1u) == 0u)) >= -1789f);
    var var_2 = ~1u;
    return ~(~18426u);
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(i32(-1i) * -48714i), Struct_1(reverseBits(-1i)));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(39236u, _wgslsmith_mult_u32(~select(u_input.a, u_input.a, true), ~(u_input.a << (4294967295u % 32u)))), min(_wgslsmith_mult_u32(~u_input.a & 4294967295u, reverseBits(4294967295u)), ~func_3(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -883f), Struct_1(1i))), _wgslsmith_sub_u32(u_input.a, min(_wgslsmith_mod_u32(4294967295u, select(u_input.a, 21515u, true)), firstLeadingBit(reverseBits(u_input.a)))));
    let var_2 = vec2<bool>(true, true);
    let var_3 = Struct_1(~var_0.b.a);
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(step(-1173f, 2268f)))), -1000f)), -1431f);
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    let var_0 = select(!vec4<bool>(_wgslsmith_add_u32(1u, u_input.a) == ~79568u, false, any(vec4<bool>(arg_1, arg_1, false, true)), arg_1), !vec4<bool>(arg_1 != (-23459i == arg_0.x), true, _wgslsmith_mod_i32(-23836i, arg_0.x) > (i32(-1i) * -36039i), true), func_2());
    var var_1 = select(!var_0, select(select(vec4<bool>(true, 4294967295u != u_input.a, all(var_0), false), !var_0, false), var_0, vec4<bool>(var_0.x, any(vec2<bool>(true, true)), false, select(var_0.x, true, all(var_0)))), vec4<bool>(true, arg_1, true, var_0.x != arg_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1344f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1707f, 1460f), _wgslsmith_f_op_f32(f32(-1f) * -1371f), !var_1.x))))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = select(arg_0.a, vec3<bool>(all(select(!arg_0.a, vec3<bool>(true, true, true), select(vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(false, arg_0.a.x, false), arg_0.a.x))), 1u < (15300u << (reverseBits(u_input.a) % 32u)), true || any(arg_0.a.zz)), true);
    var var_1 = any(select(vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, true, true)), all(vec4<bool>(var_0.x, arg_0.a.x, false, arg_0.a.x)), var_0.x, arg_0.a.x), vec4<bool>(countOneBits(u_input.a) == 1u, arg_0.a.x, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), var_0))), !all(!vec4<bool>(true, arg_0.a.x, arg_0.a.x, false))));
    var_1 = any(!vec4<bool>(all(vec2<bool>(true, true)), arg_0.a.x, arg_0.a.x, any(!vec3<bool>(true, var_0.x, var_0.x))));
    let var_2 = _wgslsmith_mod_vec2_i32(arg_0.b, -vec2<i32>(1i, -10390i));
    var var_3 = !(!(!(!(var_0.x != arg_0.a.x))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(545f, 340f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 6851u ^ u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-606f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1875f - 190f) - 1293f) + _wgslsmith_f_op_f32(f32(-1f) * -183f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1983f, -2317f), vec2<f32>(924f, 429f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1950f, -636f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1710f, 341f) - vec2<f32>(1841f, 1055f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1008f, -494f)), true))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(sign(-398f)), 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -1036f), _wgslsmith_f_op_f32(floor(794f)))), _wgslsmith_f_op_f32(func_4(Struct_3(vec3<bool>(true, true, true), vec2<i32>(-12548i, 0i), _wgslsmith_f_op_f32(func_1(vec2<i32>(-1i, -16820i), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(1066f + var_1.x)) - -1333f)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(242f, var_2.x)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(var_2.x, -317f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), 525f);
    let var_5 = Struct_3(vec3<bool>(true, true, true), ~vec2<i32>(0i, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_4.x)), var_4.x))));
    let var_6 = Struct_1(_wgslsmith_mod_i32(0i, min(_wgslsmith_div_i32(var_5.b.x, 0i), abs(var_5.b.x)) | var_5.b.x));
    let var_7 = 4294967295u;
    var_3 = 860f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xz, 0u, -1545f, _wgslsmith_mult_u32(42868u, ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, 13697u), firstLeadingBit(u_input.a))));
}

