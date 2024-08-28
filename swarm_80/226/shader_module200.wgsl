struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(40422u, 0u, 0u, 87586u);

var<private> global1: vec3<u32> = vec3<u32>(83018u, 25422u, 95165u);

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(298f, -988f, 100f), vec3<f32>(-995f, 342f, -1086f), vec3<f32>(-2014f, -694f, 1247f), vec3<f32>(-788f, -2211f, 1744f), vec3<f32>(1167f, 383f, -1525f), vec3<f32>(680f, -2888f, -494f), vec3<f32>(-1707f, 468f, 1202f), vec3<f32>(-1132f, -121f, -1000f), vec3<f32>(583f, 621f, -1000f), vec3<f32>(2192f, -1347f, -1488f), vec3<f32>(-1039f, -150f, 477f), vec3<f32>(-711f, -207f, 177f), vec3<f32>(906f, -561f, -348f), vec3<f32>(2244f, -2321f, -401f), vec3<f32>(-269f, 1438f, 352f), vec3<f32>(-1422f, -903f, -1450f), vec3<f32>(-266f, 2393f, 1000f), vec3<f32>(372f, -429f, -1000f), vec3<f32>(502f, -1009f, -1000f), vec3<f32>(956f, 314f, -1274f), vec3<f32>(1019f, -729f, -390f), vec3<f32>(-2322f, 801f, 970f), vec3<f32>(998f, -383f, -231f), vec3<f32>(1334f, 1000f, 854f), vec3<f32>(-547f, 1783f, 1000f), vec3<f32>(-404f, 643f, 421f), vec3<f32>(-1000f, 1000f, 398f), vec3<f32>(212f, -613f, 1000f), vec3<f32>(-2750f, -1000f, 1494f), vec3<f32>(-320f, -1100f, 1890f));

var<private> global3: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.b.x, 30u)];
    let var_1 = 0u;
    global1 = ~(~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1, global0.x), ~5637u), 5099u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4562u, var_1)), ~global1.xz)));
    let var_2 = reverseBits(u_input.b.xzz) & u_input.b.yyz;
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) | -u_input.a.x, countOneBits(u_input.a.x), i32(-1i) * -2147483647i) ^ -u_input.a.yyx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f + arg_1.x) - _wgslsmith_f_op_f32(ceil(arg_1.x)));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    global3 = !(!((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 18480i, arg_0), vec3<i32>(arg_0, arg_0, arg_0)) ^ -1i) == _wgslsmith_mod_i32(firstTrailingBit(20798i), ~arg_0)));
    let var_0 = vec2<i32>(-1i) * -countOneBits(vec2<i32>(0i, ~u_input.a.x));
    return _wgslsmith_f_op_f32(ceil(arg_1.x));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + _wgslsmith_f_op_f32(func_3(reverseBits(u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1169f, 520f) - arg_1.yy), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -865f, arg_1.x, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -840f, -743f), vec4<f32>(arg_1.x, 585f, arg_1.x, -1580f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, 1926f, -642f, arg_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1000f, arg_1.x, 1057f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, -749f, arg_1.x, arg_1.x)))))), ~arg_0 ^ firstTrailingBit(_wgslsmith_mult_u32(firstLeadingBit(arg_0), arg_0)), _wgslsmith_f_op_f32(-arg_1.x));
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 30u)];
    global0 = reverseBits(countOneBits(min(~(~vec4<u32>(26087u, global1.x, 11379u, 0u)), u_input.b >> (firstLeadingBit(vec4<u32>(var_0.c, 1u, 4294967295u, global1.x)) % vec4<u32>(32u)))));
    global1 = ~vec3<u32>(arg_0, var_0.c, arg_0);
    let var_2 = Struct_1(_wgslsmith_div_f32(-931f, var_1.x), _wgslsmith_f_op_vec4_f32(max(var_0.b, var_0.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.b.x), min(firstLeadingBit(global1.x), _wgslsmith_mod_u32(var_0.c, 53483u))), ~global0.yy), var_0.b.x);
    return -236f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~vec4<u32>(~global0.x, u_input.b.x, 1u, global0.x)) >> (~(~u_input.b >> (min(vec4<u32>(1u, global1.x, 34693u, u_input.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 68621u, 88416u, 10287u), u_input.b, vec4<u32>(4294967295u, 23789u, u_input.b.x, global1.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, true), vec4<f32>(-1821f, -1339f, 383f, 628f)))))));
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(~70646u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global1.x, 30u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, 0u), 30u)])))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-371f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-432f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-994f, 1012f, 1629f, -167f), vec4<f32>(-1005f, -1223f, -927f, 127f))))) + _wgslsmith_f_op_f32(f32(-1f) * -563f)) + _wgslsmith_f_op_f32(abs(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0.zz), 619f);
}

