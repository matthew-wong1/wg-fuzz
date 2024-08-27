struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 41479i;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = ~reverseBits(28898i | _wgslsmith_clamp_i32(-1i, 1890i, -9484i)) ^ _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(reverseBits(-39942i), firstTrailingBit(1i) | (0i << (1u % 32u))), 66415i);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(1636f)), 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(470f, -1436f), vec2<f32>(2767f, -231f)))))), ~(~firstLeadingBit(u_input.a.x)), min(vec2<i32>(64369i, firstTrailingBit(~1i)), reverseBits(vec2<i32>(i32(-1i) * -1i, -8236i))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(ceil(666f))))), -1000f));
    var var_1 = abs(var_0.b);
    let var_2 = global1.zyw;
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    global1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(func_3(), 1u, u_input.a.x & 28293u, u_input.a.x), select(~vec4<u32>(0u, 6949u, global1.x, u_input.a.x), firstTrailingBit(vec4<u32>(57487u, u_input.a.x, 1u, 1u)), vec4<bool>(true, true, false, true)) ^ ((vec4<u32>(u_input.a.x, 23232u, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 4294967295u, global1.x, 0u) % vec4<u32>(32u))) ^ ~vec4<u32>(0u, 11478u, global1.x, u_input.a.x))), vec4<u32>(abs(~4294967295u), 1u, ~u_input.a.x, 4610u) | _wgslsmith_div_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(0u, global1.x, global1.x, u_input.a.x))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 93193u, 5291u, 4294967295u), vec4<u32>(global1.x, u_input.a.x, u_input.a.x, 9356u)))));
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(129f, arg_0.x)), arg_0, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2007f, 1000f) * arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 383f) + arg_0)))), u_input.a.x, vec2<i32>(26440i, abs(-2147483647i)), vec2<f32>(-103f, arg_0.x));
    let var_1 = 4294967295u;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f - -461f)) * 602f), -1029f), ~_wgslsmith_mod_u32(25313u, 28598u), var_0.c, vec2<f32>(-492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x) * arg_0.x))));
    let var_3 = global1.zx;
    return Struct_4(Struct_3(1u, var_2.b), !all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), countOneBits(vec2<i32>(countOneBits(countOneBits(var_0.c.x)), -_wgslsmith_add_i32(2147483647i, var_0.c.x))), -(vec2<i32>(~var_2.c.x, -1i) >> (firstLeadingBit(~global1.xw) % vec2<u32>(32u))));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-980f * 475f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -906f)))), _wgslsmith_f_op_f32(max(400f, _wgslsmith_f_op_f32(step(-613f, _wgslsmith_f_op_f32(step(-297f, 1229f))))))));
    var var_1 = !func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, -642f) * vec2<f32>(-906f, 601f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1858f, -129f) - vec2<f32>(940f, -2195f))))).b & ((global1.x ^ 9068u) < max(abs(_wgslsmith_add_u32(25166u, global1.x)), _wgslsmith_add_u32(global1.x, reverseBits(0u))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-531f, 322f), vec2<f32>(-1000f, -1110f)))), reverseBits((global1.x & 19702u) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 54138u, 4294967295u), vec3<u32>(0u, 50108u, 1u))), ~vec2<i32>(var_0.c.x, ~(-80607i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(249f, 1035f) + vec2<f32>(-931f, 1050f))))), -3018i);
    var var_3 = false;
    var_3 = (~0i << (global1.x % 32u)) <= firstLeadingBit(var_0.c.x);
    return ~global1.yxw;
}

fn func_4(arg_0: vec3<u32>) -> i32 {
    var var_0 = -2147483647i;
    global0 = firstLeadingBit(36999i);
    let var_1 = vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(select(min(888i, -2147483647i), -2147483647i, true), 0i, -_wgslsmith_mod_i32(-2147483647i, -603i), _wgslsmith_mod_i32(-21529i, firstLeadingBit(1i))), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(-23787i, -1i, 8372i, 10727i), vec4<i32>(2147483647i, -7580i, -30866i, -5736i), vec4<bool>(true, true, false, true)), vec4<i32>(1i, 2147483647i, i32(-1i) * -9638i, select(39155i, -1i, true)))));
    global1 = ~reverseBits(_wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.x, 43030u, 6865u), vec4<u32>(58421u, 38166u, 4294967295u, 4294967295u))), ~vec4<u32>(arg_0.x, 0u, 0u, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(839f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1989f * 1961f) - -1006f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-328f)))), _wgslsmith_f_op_f32(-966f * _wgslsmith_f_op_f32(min(-1007f, 1208f))), false)), _wgslsmith_f_op_f32(select(210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 270f) + _wgslsmith_f_op_f32(-1345f * -1821f)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))))));
    return -34069i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    global0 = func_4(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(func_1(), global1.yww << (global1.zzw % vec3<u32>(32u))), abs(vec3<u32>(1u, global1.x, ~4294967295u))));
    var var_0 = 0u;
    var var_1 = -8523i;
    var_0 = 1u;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(878f, -1411f) - vec2<f32>(484f, -250f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1399f, 585f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -1918f))))), u_input.a.x, ~_wgslsmith_add_vec2_i32(vec2<i32>(21108i, -34700i), vec2<i32>(51957i, -22273i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, -879f))))), abs(-(~firstLeadingBit(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(-13128i, select(vec4<u32>(~firstTrailingBit(20571u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), func_1().x), var_2.a.b, 23302u), vec4<u32>(32900u, ~u_input.a.x, 72846u, ~(~2u)), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), i32(-1i) * -20644i, vec3<u32>(u_input.a.x, 2932u, 1u));
}

