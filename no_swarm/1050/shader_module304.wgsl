struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_4(Struct_3(vec3<bool>(true, _wgslsmith_f_op_f32(arg_1 - arg_0.x) < -289f, true)), 45145u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -454f);
    var_0 = Struct_4(var_0.a, abs(~var_0.b & u_input.a.x));
    let var_2 = false;
    var var_3 = arg_1;
    return u_input.b;
}

fn func_2() -> vec4<u32> {
    var var_0 = -2147483647i;
    let var_1 = -(~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1610f, 1090f, 1000f, -573f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - -1093f))));
    var var_2 = vec2<f32>(-355f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1031f + 1f))), _wgslsmith_f_op_f32(f32(-1f) * -790f)));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-276f, _wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1254f, _wgslsmith_div_f32(var_2.x, var_2.x)))))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 476f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, 224f)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.x, var_2.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-261f, var_2.x), vec2<f32>(-701f, var_2.x), vec2<bool>(true, true)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, 2486f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, 1314f)))));
    return select(firstTrailingBit(vec4<u32>(52612u, 4294967295u, ~u_input.a.x, 29990u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a.x, 0u, 1u)) & ~vec4<u32>(u_input.a.x, 47612u, u_input.a.x, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)), true) ^ ~_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 8962u, u_input.a.x, u_input.a.x))), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(21970u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(42934u, u_input.a.x, u_input.a.x, u_input.a.x) << (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~vec4<u32>(reverseBits(u_input.a.x), ~17327u, firstLeadingBit(0u), u_input.a.x);
    var_0 = ~(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, 0u) << (vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a.x, 41651u, 71044u)), ~(vec4<u32>(u_input.a.x, var_0.x, 0u, u_input.a.x) | vec4<u32>(var_0.x, 4294967295u, 4294967295u, 15809u))) & reverseBits(_wgslsmith_mult_vec4_u32(func_2(), vec4<u32>(u_input.a.x, 22253u, var_0.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1177f, 2117f, -852f, -1128f)))), vec4<f32>(_wgslsmith_f_op_f32(-596f + -498f), _wgslsmith_f_op_f32(f32(-1f) * -901f), _wgslsmith_f_op_f32(ceil(797f)), -1000f))));
    var var_2 = Struct_2(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~u_input.a.x, _wgslsmith_div_u32(var_0.x, 0u), u_input.a.x), vec4<u32>(var_0.x, u_input.a.x, var_0.x, u_input.a.x) ^ firstLeadingBit(vec4<u32>(var_0.x, 4294967295u, u_input.a.x, u_input.a.x))), u_input.a.x, -(~func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 996f, -1592f, var_1.x)), _wgslsmith_f_op_f32(abs(536f))).x));
    var_2 = Struct_2(firstTrailingBit(var_2.a), ~_wgslsmith_dot_vec4_u32(~var_2.a & vec4<u32>(13450u, 1u, var_2.b, var_2.a.x), func_2()), i32(-1i) * -firstLeadingBit(0i));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(!select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), u_input.b.x > u_input.b.x), select(vec2<bool>(false, var_0), func_1(), vec2<bool>(false, true)), vec2<bool>(true, true)));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1149f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -382f, 1000f))));
    var_2 = var_1.a.x;
    var var_4 = u_input.b.x;
    var_4 = u_input.b.x;
    var var_5 = ~u_input.a.x;
    var_4 = _wgslsmith_mult_i32(33764i, _wgslsmith_dot_vec3_i32(abs(max(vec3<i32>(u_input.b.x, -1i, -1i), vec3<i32>(2721i, u_input.b.x, u_input.b.x))) << (vec3<u32>(22570u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), select(~(-vec3<i32>(u_input.b.x, -31900i, u_input.b.x)), vec3<i32>(firstTrailingBit(1i), -28650i ^ u_input.b.x, firstTrailingBit(0i)), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(60936u, 1u, u_input.a.x, u_input.a.x)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(37051u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(71804u, u_input.a.x, 0u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x ^ 57443u, ~32284u, ~34782u, 4294967295u << (u_input.a.x % 32u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 34891u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 77249u, u_input.a.x, 43135u))), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x | 1937u, u_input.a.x), u_input.a.x, abs(firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), max(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(49204u, 0u, u_input.a.x))))), i32(-1i) * -(~_wgslsmith_div_i32(2147483647i, u_input.b.x)), countOneBits(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.b.x, 3450i)), abs(vec3<i32>(2147483647i, -2147483647i, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, var_3.x, var_3.x))), vec3<f32>(-237f, var_3.x, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3)) + vec3<f32>(776f, 900f, -1383f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_3)))))));
}

