struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-347f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, 1514f))))));
    var var_1 = var_0.x;
    var var_2 = countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(reverseBits(u_input.b.x), u_input.b.x, ~u_input.b.x), vec3<i32>(0i, 1i, u_input.b.x)), -(~vec3<i32>(u_input.b.x, -44028i, -18933i))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-776f)), 1151f))));
    var_2 = -u_input.b.x;
    return arg_0.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_5) -> f32 {
    let var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f + _wgslsmith_f_op_f32(select(-796f, arg_3.a.x, false)))), 1556f, -819f), !vec2<bool>(arg_1.x, true), arg_0);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -1938f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))), _wgslsmith_f_op_f32(min(-1000f, arg_3.a.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -223f))))) + arg_3.a.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 219f)) - var_2) - var_0.a.x), -590f)), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i | abs(u_input.b.x), _wgslsmith_clamp_i32(6793i, u_input.b.x, 18073i << (var_0.c.x % 32u))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f * var_0.a.x) + var_2), vec4<i32>(u_input.b.x, 10623i, -2916i, _wgslsmith_sub_i32(1i, -max(-25272i, u_input.b.x))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(133f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_4(~vec2<u32>(u_input.a.x, 41305u) & u_input.a, select(vec2<bool>(true, true), vec2<bool>(select(true, true, true), select(false, true, true)), true), ~select(u_input.a, _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(0u, 23544u)), func_3(vec3<bool>(true, false, false))), Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(412f, 696f, -897f))) + vec3<f32>(-462f, -1002f, 2523f)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), false), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-199f)), _wgslsmith_f_op_f32(step(-423f, 530f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -2095f) + _wgslsmith_f_op_f32(sign(-724f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-562f)) - _wgslsmith_div_f32(-1588f, var_0.x)), 721f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-920f, 613f, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let var_1 = _wgslsmith_mod_u32(~firstTrailingBit(4294967295u), (max(~74986u, u_input.a.x | u_input.a.x) | ~u_input.a.x) & 7044u);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-657f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-244f, 378f) + _wgslsmith_f_op_f32(trunc(283f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_f_op_f32(ceil(var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -659f, 148f, var_0.x) * vec4<f32>(var_0.x, var_0.x, 104f, var_0.x))), vec4<f32>(var_0.x, 225f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x))) - vec4<f32>(-543f, 1293f, var_0.x, -1150f)));
    return Struct_2(_wgslsmith_sub_u32(1u, var_1), !var_2, Struct_1(var_0.x, firstTrailingBit(~(-vec4<i32>(-19218i, u_input.b.x, -2147483647i, u_input.b.x)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec4<u32>) -> f32 {
    let var_0 = vec4<bool>(!(_wgslsmith_add_u32(~arg_2.c.x, 12200u) < ~(1u << (u_input.a.x % 32u))), arg_2.c.x != _wgslsmith_mod_u32(~arg_2.c.x, 34133u), false, any(vec3<bool>(all(vec4<bool>(arg_2.b.x, false, false, arg_2.b.x)), true, arg_2.b.x)));
    var var_1 = vec3<bool>(arg_2.b.x, any(var_0.zyy), false);
    var var_2 = arg_1;
    return 2138f;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(500f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(732f, -239f) + _wgslsmith_f_op_f32(-391f * 463f)), _wgslsmith_f_op_f32(func_5(vec2<bool>(true, true), func_2(), Struct_5(vec3<f32>(504f, -369f, 205f), vec2<bool>(false, false), u_input.a), vec4<u32>(13416u, u_input.a.x, 0u, u_input.a.x)))), _wgslsmith_f_op_f32(func_5(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), func_2(), Struct_5(vec3<f32>(-266f, 941f, 1110f), vec2<bool>(true, true), u_input.a), vec4<u32>(u_input.a.x, 29020u, 21935u, 0u) >> (~vec4<u32>(25794u, 4040u, 118086u, u_input.a.x) % vec4<u32>(32u)))))));
    let var_1 = vec3<f32>(-638f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f + 317f))))), -316f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2240f)))))), vec4<i32>(1i, u_input.b.x, arg_0.x, arg_0.x) >> (~(~select(vec4<u32>(10817u, u_input.a.x, 15366u, 14640u), vec4<u32>(57934u, u_input.a.x, 18129u, u_input.a.x), false)) % vec4<u32>(32u)));
    var var_3 = vec2<u32>(~reverseBits(1u), 1u);
    var var_4 = u_input.a.x;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, func_1(abs(vec3<i32>(0i, u_input.b.x, 1i)))), vec2<u32>(u_input.a.x, 16597u));
    var var_1 = _wgslsmith_clamp_i32(-34855i, -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(19212i, 2147483647i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 16272i))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(abs(u_input.a.x) & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), func_1(~vec3<i32>(-15085i, 2147483647i, 29120i))), _wgslsmith_clamp_u32(var_0, ~u_input.a.x, abs(min(u_input.a.x, 0u))), ~(7340u >> (u_input.a.x % 32u))), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_0, 44715u, 3672u), vec4<u32>(0u, 1u, 3990u, var_0)), vec4<u32>(49224u, u_input.a.x, var_0, 4294967295u) >> (vec4<u32>(1u, var_0, 4294967295u, 29277u) % vec4<u32>(32u)))), select(~(-vec2<i32>(-1i, -44034i)), -vec2<i32>(u_input.b.x & u_input.b.x, countOneBits(u_input.b.x)), false), reverseBits(-((vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(0i, 45892i, u_input.b.x, u_input.b.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(35388u, u_input.a.x, var_0, u_input.a.x), vec4<u32>(u_input.a.x, var_0, var_0, var_0)) % vec4<u32>(32u)))));
}

