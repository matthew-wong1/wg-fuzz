struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: f32 = -1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~(-arg_1);
    global1 = _wgslsmith_div_f32(arg_2, arg_0);
    var var_1 = 257f;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, arg_3.x, false)) + _wgslsmith_f_op_f32(f32(-1f) * -257f))))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-310f + -187f), _wgslsmith_f_op_f32(-arg_3.x)))));
    var_0 = ~(-arg_1 >> (vec4<u32>(max(1u, 1u), 1u, countOneBits(~0u), min(firstTrailingBit(1u), _wgslsmith_sub_u32(4294967295u, 15161u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-265f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2353f, 186f)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, select(true & any(vec3<bool>(false, true, false)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), true), true));
    var_0 = Struct_1(!vec3<bool>(true, all(!var_0.a), all(vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2081f, 1055f, -1751f, 449f) + vec4<f32>(-602f, -1815f, -360f, -2080f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, 1135f, 410f, -1000f)), select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(false, var_0.a.x, true, true), var_0.a.x))))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1f), -1437f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-499f + -759f), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(sign(347f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(519f, -194f, -665f, -1200f) + vec4<f32>(865f, -995f, -1000f, 1332f)))), _wgslsmith_f_op_f32(-438f - 333f)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2015f), -832f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(538f + 771f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1360f * -1390f))))));
    var var_2 = var_1.x;
    let var_3 = Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -992f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2540f) - var_1.x), true));
    return Struct_1(vec3<bool>(var_0.a.x, var_3.a.x, u_input.a >= _wgslsmith_add_i32(u_input.a, u_input.a)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = 1000f;
    let var_0 = vec4<u32>(1u, 40441u, 1u, _wgslsmith_mult_u32(1u, 48018u));
    var var_1 = 7145i;
    var var_2 = Struct_1(func_2().a);
    var var_3 = ~countOneBits(var_0) & (~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 1u, 4294967295u, var_0.x) & vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 4911u), var_0), vec4<u32>(1u, var_0.x, var_0.x, var_0.x) & var_0) << (~var_0 % vec4<u32>(32u)));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = all(arg_0.a);
    let var_1 = firstTrailingBit(~(-(~_wgslsmith_clamp_i32(u_input.a, 1i, u_input.a))));
    var var_2 = func_4(-1i, _wgslsmith_clamp_i32(max(_wgslsmith_add_i32(var_1 >> (1u % 32u), u_input.a << (27193u % 32u)), 12616i & var_1), var_1, -96665i ^ ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 36579i), vec2<i32>(u_input.a, 15866i))), func_2());
    var_0 = !arg_0.a.x;
    let var_3 = var_2.a.zx;
    return global0[_wgslsmith_index_u32(~0u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, 2009f, 484f) - vec3<f32>(908f, -696f, 235f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1797f, 877f, -474f) + vec3<f32>(-746f, 187f, 207f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 493f, 602f) * vec3<f32>(-761f, 1321f, 1821f)) + vec3<f32>(338f, 324f, -756f))))));
    var var_1 = ~29336u;
    var var_2 = global0[_wgslsmith_index_u32(0u, 18u)];
    var var_3 = 110f;
    let var_4 = ~_wgslsmith_clamp_u32(12286u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 5u, 0u, 58225u)), ~(~vec4<u32>(0u, 0u, 30537u, 53414u))), 69220u);
    let var_5 = Struct_1(!(!(!(!var_2.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-928f + 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(585f, _wgslsmith_f_op_f32(1270f - 467f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1014f)))), _wgslsmith_f_op_f32(1f - -1616f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1227f)), _wgslsmith_div_vec3_i32(-(vec3<i32>(u_input.a, -2147483647i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a)), max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 22629i), min(vec3<i32>(u_input.a, 98188i, -27531i), vec3<i32>(-32814i, 15929i, -2147483647i))), select(vec3<i32>(u_input.a, u_input.a, 16889i) >> (vec3<u32>(33080u, 4294967295u, 0u) % vec3<u32>(32u)), -vec3<i32>(2147483647i, u_input.a, -2147483647i), !vec3<bool>(var_2.a.x, var_2.a.x, var_0.a.x)))), u_input.a, -firstLeadingBit(_wgslsmith_div_i32(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-840f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -1410f), _wgslsmith_f_op_f32(319f * 456f), var_2.a.x)), 1f)));
}

