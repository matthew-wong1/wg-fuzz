struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1969f)), -713f, -379f)));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))), var_1.d) + arg_1.b.a) + _wgslsmith_f_op_vec2_f32(arg_0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a.x, -788f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1117f, arg_1.d))), vec2<bool>(true, arg_1.b.c.x))))));
    let var_3 = var_1.b.a.x;
    var var_4 = arg_1.b.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1094f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = true;
    let var_1 = Struct_2(u_input.b, Struct_1(vec2<f32>(718f, arg_1.a.x), arg_1.b, select(vec3<bool>(true, all(arg_1.c), all(vec4<bool>(var_0, var_0, var_0, arg_1.c.x))), vec3<bool>(false, false, all(vec2<bool>(true, var_0))), false)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0, u_input.b, arg_0 | 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, u_input.b), reverseBits(vec4<u32>(arg_0, u_input.b, 97982u, 1u))))), _wgslsmith_f_op_f32(567f + arg_1.a.x));
    let var_2 = !(!vec2<bool>(false, true || (-1000f >= arg_1.a.x)));
    var var_3 = _wgslsmith_f_op_f32(-2139f + var_1.b.a.x);
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - arg_1.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(arg_1, var_1, 0u, var_1.b.a.x)), 642f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.a.x), 763f))), false)));
    return arg_1.b.zyz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-2147483647i, arg_0.x)), _wgslsmith_mod_vec2_i32(max(_wgslsmith_clamp_vec2_i32(select(arg_0.xx, vec2<i32>(u_input.c.x, arg_0.x), arg_1), u_input.d.xx, ~arg_0.yy), ~vec2<i32>(arg_0.x, 0i)), vec2<i32>(firstTrailingBit(2147483647i), max(2147483647i, -2147483647i))));
    let var_1 = Struct_2(4294967295u | select(1449u, ~4294967295u, all(vec4<bool>(true, arg_1.x, true, arg_1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -2078f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1153f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, 1076f)))))), _wgslsmith_div_vec4_i32((vec4<i32>(u_input.d.x, -68227i, -1i, var_0) & vec4<i32>(var_0, -18594i, var_0, var_0)) | u_input.d, -select(u_input.d, u_input.d, arg_1.x)), vec3<bool>(arg_1.x, true, any(vec3<bool>(true, true, true)))), vec4<u32>(~_wgslsmith_clamp_u32(max(u_input.b, u_input.b), _wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b)), firstTrailingBit(u_input.b), abs(u_input.b), u_input.b), _wgslsmith_f_op_f32(trunc(-1320f)));
    let var_2 = Struct_2(max(1u, 0u), Struct_1(var_1.b.a, firstTrailingBit(vec4<i32>(-1i) * -u_input.d), vec3<bool>(_wgslsmith_div_f32(arg_2, 1000f) <= _wgslsmith_f_op_f32(-arg_2), true, arg_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.c.x, 47363u, 4294967295u, ~var_1.a), (select(vec4<u32>(u_input.b, 48439u, var_1.a, 9718u), var_1.c, var_1.b.c.x) << (~var_1.c % vec4<u32>(32u))) & ~(var_1.c ^ vec4<u32>(u_input.b, var_1.c.x, var_1.c.x, 81689u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-849f)))), _wgslsmith_f_op_f32(sign(var_1.b.a.x))));
    let var_3 = var_2.c;
    var var_4 = 1000f;
    return vec4<bool>(false, arg_1.x, (true || any(var_2.b.c)) & var_1.b.c.x, any(select(var_1.b.c, !var_2.b.c, !(!var_1.b.c))));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x)));
    var var_1 = Struct_2(~_wgslsmith_sub_u32(~firstLeadingBit(u_input.b), ~u_input.b), arg_0, _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 48500u), vec4<u32>(48437u, u_input.b, 1u, u_input.b)), ~firstLeadingBit(vec4<u32>(u_input.b, 4294967295u, u_input.b, 27376u) | vec4<u32>(1u, u_input.b, u_input.b, u_input.b))), -564f);
    var var_2 = var_1.c.x;
    return func_4(select((_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, var_1.b.b.x, 15541i), var_1.b.b.ywx) ^ abs(vec3<i32>(1i, -14714i, 1i))) << (vec3<u32>(18048u, u_input.b, ~0u) % vec3<u32>(32u)), ~select(func_2(var_1.a, arg_0), vec3<i32>(-44002i, -1i, arg_0.b.x), var_1.b.c), vec3<bool>(any(select(vec2<bool>(var_1.b.c.x, var_1.b.c.x), vec2<bool>(arg_0.c.x, var_1.b.c.x), false)), true, !all(vec4<bool>(false, arg_0.c.x, true, true)))), vec2<bool>(false, var_1.b.b.x == -1120i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-723f, _wgslsmith_f_op_f32(arg_0.a.x * var_0), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(-abs(vec4<i32>(u_input.d.x, -1i, u_input.c.x, u_input.c.x)))) >> (abs(select(~(vec4<u32>(4294967295u, 0u, u_input.b, 1u) & vec4<u32>(u_input.b, 0u, 0u, 10438u)), ~vec4<u32>(u_input.b, u_input.b, 4030u, u_input.b) ^ (vec4<u32>(45433u, 1u, u_input.b, u_input.b) ^ vec4<u32>(28595u, 4294967295u, 4294967295u, 55248u)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), func_1(Struct_1(vec2<f32>(-836f, -214f), u_input.d, vec3<bool>(false, false, true))), 1u >= u_input.b))) % vec4<u32>(32u));
    let var_1 = Struct_2(~(~1u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, _wgslsmith_f_op_f32(abs(-1032f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(350f, -542f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-936f, -424f) + vec2<f32>(628f, -2108f)))), _wgslsmith_add_vec4_i32(-u_input.d, -vec4<i32>(50016i, 0i, 40701i, var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), u_input.c.x < (var_0.x | u_input.a))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(89282u, u_input.b, 74487u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)))), -682f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, 1427f, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.zww, reverseBits(var_0.wwx)), vec3<i32>(select(u_input.a, u_input.d.x, false), _wgslsmith_add_i32(-2147483647i, var_1.b.b.x), _wgslsmith_div_i32(countOneBits(u_input.c.x), u_input.a))));
}

