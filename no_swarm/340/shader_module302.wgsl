struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32> = vec2<f32>(-121f, 1239f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = ~(-10498i);
    let var_1 = Struct_1(~u_input.b, -u_input.b.wx);
    let var_2 = Struct_1(u_input.b, vec2<i32>(_wgslsmith_mult_i32(var_1.a.x, 35691i), u_input.b.x));
    var var_3 = vec3<bool>(false, !select(select(all(vec2<bool>(false, false)), true, false), true, select(all(vec2<bool>(false, false)), false, var_1.b.x < -2147483647i)), true);
    global1 = global0.ww;
    return -15391i;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> vec2<f32> {
    let var_0 = Struct_1(vec4<i32>(func_3(), -u_input.b.x, -1i, 0i), max(u_input.b.zw, -(~(~vec2<i32>(u_input.a, 2147483647i)))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.xy, arg_1, true)));
    var var_1 = Struct_2(Struct_1(select(-vec4<i32>(-52069i, arg_3, 2268i, var_0.a.x), ~vec4<i32>(arg_3, -6332i, arg_3, var_0.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, true, false))), u_input.b.yy), var_0);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xzw) * global0.zww)) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.x, global0.x)), global1.x, false)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1613f - 811f) * -1000f))), global0.xxz);
    let var_3 = -24958i;
    return vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(select(-141f, global0.x, true)))) + global1.x))), arg_1.x);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.ww), global0.yw)), vec2<f32>(-370f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-366f)), _wgslsmith_div_f32(-364f, 1322f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.wz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -286f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yw) - global0.wx))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(419f))), -1595f), min(~0u, 1u) ^ _wgslsmith_clamp_u32(~36560u, _wgslsmith_add_u32(0u, 5408u), 34730u >> (0u % 32u)), firstLeadingBit(2147483647i | u_input.b.x) << (1u % 32u))), global0.wy));
    return Struct_2(Struct_1(u_input.b ^ vec4<i32>(24075i, u_input.a, -1i, min(10001i, u_input.a)), min(u_input.b.zz, vec2<i32>(u_input.b.x & -1i, i32(-1i) * -34393i))), Struct_1(reverseBits(countOneBits(vec4<i32>(2147483647i, -22176i, 30457i, u_input.a))) | min(vec4<i32>(-24381i, u_input.a, u_input.a, u_input.b.x) << (vec4<u32>(40003u, 48833u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.a, 2147483647i, u_input.a) << (vec4<u32>(102080u, 4294967295u, 23896u, 74009u) % vec4<u32>(32u))), -u_input.b.wy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.zw;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(trunc(305f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-846f - _wgslsmith_f_op_f32(sign(-1000f))), -2701f, all(vec3<bool>(true, true, true)) || true))));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, u_input.a), max(_wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -1i), ~u_input.b.x));
    var var_2 = func_1();
    var var_3 = reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 1i, u_input.b.x), vec3<i32>(var_2.b.b.x << (27968u % 32u), i32(-1i) * -1i, -u_input.a)), countOneBits(func_1().a.a.x), -2027i));
    let var_4 = firstTrailingBit(~0u & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(51027u, 28075u, 14607u), max(vec3<u32>(4294967295u, 35432u, 1u), vec3<u32>(6930u, 0u, 47740u))), _wgslsmith_add_u32(21331u, firstTrailingBit(18203u))));
    let var_5 = func_1().a;
    var var_6 = false;
    var var_7 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(~0i, var_5.b.x, var_3.x), 0i, var_5.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.a.x, 44332i, u_input.a), u_input.b.yxx)), ~var_2.a.a), vec2<i32>(~var_3.x, -(~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_5.b.x, firstTrailingBit(abs(countOneBits(var_4))));
}

