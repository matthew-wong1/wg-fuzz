struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 36012u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(38288u, 39401u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(957u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 44777u), vec2<u32>(61861u, 43533u), vec2<u32>(16847u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(9637u, 4294967295u), vec2<u32>(8378u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(11796u, 20417u), vec2<u32>(4294967295u, 23405u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 76130u), vec2<u32>(16554u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 20243u), vec2<u32>(8370u, 53658u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global0 = array<vec2<u32>, 23>();
    var var_0 = Struct_1(vec4<u32>(0u, select(1u | u_input.b, u_input.c, true) & 23407u, ~(4294967295u | ~u_input.a), (firstLeadingBit(4294967295u) ^ u_input.b) | 16936u), abs(arg_0.zx), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    let var_1 = _wgslsmith_dot_vec3_i32(arg_0, _wgslsmith_clamp_vec3_i32(~countOneBits(arg_0 >> (var_0.a.wzw % vec3<u32>(32u))), ~arg_0, _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-20356i, arg_0.x, 1i), arg_0 | arg_0), vec3<i32>(u_input.e << (u_input.b % 32u), ~(-1i), arg_0.x))));
    var var_2 = !(!(-25000i > var_0.b.x));
    return min(_wgslsmith_div_u32(var_0.a.x, ~(~var_0.a.x)), 6254u) >> ((_wgslsmith_clamp_u32(~countOneBits(u_input.b), ~(~u_input.b), 0u) | 99425u) % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(0u, 4294967295u);
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(max(46114u, var_0.x), var_0.x), ~u_input.a, abs(~(~7461u)), func_3(~vec3<i32>(u_input.d | -56928i, u_input.e, _wgslsmith_add_i32(0i, -14294i))));
    global0 = array<vec2<u32>, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1118f, -100f, -655f, 1548f), vec4<f32>(-293f, 1355f, -500f, 2124f), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2042f, -896f, 126f, -845f) * vec4<f32>(146f, -446f, -1199f, 327f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(738f, -595f, 238f, 639f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(350f, -726f, -475f, 430f) - vec4<f32>(1280f, -176f, -841f, 304f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1710f, 963f, 673f), vec4<f32>(1083f, -446f, 634f, -1162f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-302f)), -1000f, true)), 1f, -600f, 1099f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-363f, -1857f, 618f, 1422f), vec4<f32>(342f, -370f, -472f, 805f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, 922f, 437f, -146f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, 415f, -329f, 449f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(190f, -1757f, 668f, 1000f), vec4<f32>(819f, -1714f, -1186f, 244f)))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(var_2.wyz + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.xzy), var_2.xzw, !select(false, true, false)))), Struct_2(var_0, Struct_1(vec4<u32>(var_1.x, abs(26000u), 0u | var_0.x, var_0.x), vec2<i32>(u_input.e, _wgslsmith_clamp_i32(u_input.d, u_input.e, u_input.e)), vec2<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(ceil(-910f))), var_2.x, true))));
    return var_3.b.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = vec4<u32>(arg_1.b.a.x, u_input.a, firstTrailingBit(81053u), ~(~(~arg_1.b.a.x)));
    global0 = array<vec2<u32>, 23>();
    var var_1 = ~(~(~vec4<u32>(20456u, var_0.x, 45044u, arg_1.b.b.a.x))) ^ vec4<u32>(1u, ~arg_1.b.a.x, ~1u, ~u_input.a);
    let var_2 = Struct_4(arg_1.b, Struct_1(~var_0, -(~(~vec2<i32>(u_input.d, u_input.d))), vec2<bool>(true, true)), Struct_2(vec2<u32>(var_0.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(32886u, 28395u), vec2<u32>(44112u, 62379u)))), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_1.b.c) + _wgslsmith_f_op_f32(f32(-1f) * -287f)) + -931f)));
    let var_3 = arg_1;
    return ~firstLeadingBit(var_1.xzz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1154f, 425f)) - _wgslsmith_div_vec2_f32(vec2<f32>(937f, -746f), vec2<f32>(1943f, 989f))), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(253f, 1000f, 145f) + vec3<f32>(-2388f, 2596f, -749f)), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 23u)], Struct_1(vec4<u32>(u_input.c, u_input.b, 1u, u_input.b), vec2<i32>(1i, u_input.d), vec2<bool>(false, true)), -162f))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(countOneBits(~4294967295u) ^ ~_wgslsmith_mult_u32(u_input.b, 1u), 23u)], 2147483647i | u_input.d);
}

