struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = true;
    var var_1 = arg_0.x;
    var var_2 = max(vec4<u32>(~u_input.a.x, 37348u, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) >> (~vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), ~select(u_input.b.xw, u_input.a.xz, vec2<bool>(var_0, false)))), u_input.b);
    var var_3 = _wgslsmith_div_vec3_i32(firstLeadingBit(~(select(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(2147483647i, 1i, -37005i), var_0) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 1i, arg_0.x), vec3<i32>(0i, -2147483647i, arg_0.x), vec3<i32>(0i, arg_0.x, 5403i)))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 18675i, arg_0.x), vec3<i32>(-75069i, arg_0.x, 2147483647i)), ~arg_0.x, arg_0.x), countOneBits(countOneBits(vec3<i32>(arg_0.x, arg_0.x, 34662i))), ~(-vec3<i32>(arg_0.x, -1i, arg_0.x))), vec3<i32>(abs(arg_0.x & 0i), ~max(arg_0.x, arg_0.x), 0i)));
    var var_4 = any(!select(select(vec3<bool>(true, var_0, false), !vec3<bool>(var_0, false, var_0), !vec3<bool>(true, false, var_0)), select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, true), var_0), select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, false, var_0), var_0)), vec3<bool>(var_0, any(vec3<bool>(true, var_0, var_0)), select(true, true, var_0))));
    return arg_0.x > _wgslsmith_add_i32(-37787i, max(var_3.x, -2147483647i));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_3(Struct_2(u_input.a, u_input.b), Struct_2(u_input.a, max(~vec4<u32>(1u, 1u, 4294967295u, 35956u), (vec4<u32>(arg_0, arg_0, 48627u, arg_0) | vec4<u32>(4294967295u, arg_0, 14485u, 4294967295u)) ^ (u_input.b >> (vec4<u32>(4294967295u, arg_0, u_input.b.x, 0u) % vec4<u32>(32u))))));
    var_0 = Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a.x, 1u, 1u), ~vec3<u32>(arg_0, 18360u, u_input.a.x) | firstTrailingBit(vec3<u32>(34602u, arg_0, 14740u))), u_input.b), var_0.a);
    let var_1 = Struct_4(vec3<bool>(false, all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))))), _wgslsmith_mod_i32(-_wgslsmith_div_i32(1i, abs(33387i)), -1580i), Struct_2(var_0.a.a, min(~vec4<u32>(18909u, 50523u, u_input.b.x, var_0.a.a.x) ^ vec4<u32>(0u, 1u, arg_0, 21853u), u_input.b)), func_3(max(~vec2<i32>(29835i, 57352i), vec2<i32>(max(-1i, 2147483647i), -46605i))));
    var_0 = Struct_3(var_1.c, Struct_2(var_0.a.a, u_input.b));
    var_0 = Struct_3(Struct_2(var_0.a.a, ~var_1.c.b), Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, 4294967295u, ~arg_0), countOneBits(var_1.c.b.zzx)), vec4<u32>(var_0.a.a.x >> (u_input.a.x % 32u), _wgslsmith_sub_u32(~var_0.b.a.x, ~u_input.b.x), ~1651u, reverseBits(u_input.a.x) ^ ~arg_0)));
    return _wgslsmith_dot_vec3_i32(max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b, var_1.b, 1i), vec3<i32>(1i, var_1.b, 1i), vec3<i32>(28935i, -2147483647i, 2147483647i)), vec3<i32>(var_1.b, _wgslsmith_add_i32(var_1.b, -2147483647i), 82518i)) | reverseBits(-(vec3<i32>(var_1.b, var_1.b, var_1.b) & vec3<i32>(7056i, 2147483647i, -3018i))), vec3<i32>(_wgslsmith_add_i32(var_1.b, 52196i), ~var_1.b, 0i));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-869f, -1065f)))), 372f));
    var_0 = Struct_2(~(~countOneBits(vec3<u32>(1u, arg_2.x, 4294967295u))) << (~(~u_input.a) % vec3<u32>(32u)), vec4<u32>(~arg_2.x << (abs(1u) % 32u), arg_2.x, ~arg_2.x, _wgslsmith_clamp_u32(arg_2.x, abs(1u), 1u) ^ arg_2.x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_1.x), vec2<f32>(var_1.x, var_1.x)), vec2<f32>(1f, 1f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1066f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1739f, 598f)))))));
    let var_2 = ~(48688u << ((arg_3.b.x | ~min(125719u, arg_2.x)) % 32u));
    return func_2(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-418f, 1f));
    let var_1 = func_1(false, u_input.b.x == _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x | u_input.a.x), select(~vec3<u32>(u_input.a.x, ~57475u, _wgslsmith_clamp_u32(0u, 15408u, u_input.a.x)), vec3<u32>(~u_input.b.x, u_input.a.x, 1u << (u_input.b.x % 32u)), !all(vec2<bool>(true, true))), Struct_2(_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 56142u, u_input.b.x), vec3<u32>(48315u, 0u, u_input.a.x))) ^ ~vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), vec4<u32>(~u_input.b.x, ~(~12259u), u_input.b.x, abs(~u_input.b.x))));
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1569f, 1000f, 267f, -813f), vec4<f32>(-1536f, 2264f, var_0, -740f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2082f, var_0, 967f, var_0))))));
    var var_4 = Struct_1(vec3<i32>(2147483647i, ~(-select(var_2, var_1, true)), i32(-1i) * -1i), (_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.a.x), 1u | u_input.a.x) >= 0u) & !all(vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1156f, _wgslsmith_f_op_f32(-var_3.x)))), 1000f));
    var var_5 = ~(firstTrailingBit(~(17851u | u_input.b.x)) >> (18736u % 32u));
    var var_6 = Struct_4(!vec3<bool>(!var_4.b & var_4.b, var_2 >= var_2, var_4.b), countOneBits(var_1), Struct_2(u_input.a, ~(firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 65786u)) ^ (u_input.b << (vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x) % vec4<u32>(32u))))), false);
    var var_7 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, -2015f, -210f, var_3.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(327f, 455f, var_0, 326f) - vec4<f32>(-152f, var_0, var_0, var_3.x))), vec4<f32>(_wgslsmith_f_op_f32(round(var_4.c.x)), _wgslsmith_f_op_f32(round(var_0)), -258f, _wgslsmith_f_op_f32(var_3.x - 263f))))))));
    let var_8 = !func_3(var_4.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.c.b.x);
}

