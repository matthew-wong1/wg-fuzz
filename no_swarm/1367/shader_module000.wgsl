struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1664f, 729f), vec2<f32>(783f, -918f), vec2<f32>(2068f, -1618f), vec2<f32>(928f, -2323f), vec2<f32>(-1760f, -149f), vec2<f32>(1000f, 1265f), vec2<f32>(1115f, -481f), vec2<f32>(225f, -660f), vec2<f32>(831f, -386f), vec2<f32>(-769f, 384f), vec2<f32>(178f, 832f), vec2<f32>(1563f, -428f));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: u32 = 17159u;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> f32 {
    global2 = abs(~43124u);
    global1 = !(!select(!(!vec2<bool>(true, global1.x)), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), global1.x), -global3.a.x < 1i));
    var var_0 = Struct_1(u_input.b, u_input.c);
    let var_1 = -304f;
    global3 = Struct_1(global3.a, vec4<u32>(u_input.c.x, firstTrailingBit(countOneBits(select(32694u, 26787u, false))), countOneBits(~(~0u)), u_input.a.x));
    return -429f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec3<u32> {
    var var_0 = abs(abs(min(vec2<u32>(~65298u, ~u_input.c.x), global3.b.yy)));
    let var_1 = ~(~37951u);
    let var_2 = arg_1;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, arg_3, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 1110f))) - _wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), arg_3) - _wgslsmith_f_op_f32(-arg_3)));
    global3 = Struct_1(-_wgslsmith_clamp_vec2_i32(-var_2.a, reverseBits(vec2<i32>(var_2.a.x, 69359i)), global3.a) | abs(u_input.b), ~u_input.c);
    return ~vec3<u32>(var_0.x, ~u_input.a.x, global3.b.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = Struct_1(firstTrailingBit(arg_2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(~abs(45165u), ~1u, u_input.c.x, arg_2.b.x), ~(~vec4<u32>(arg_1.b.x, 4294967295u, global3.b.x, arg_1.b.x))));
    global3 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(181f)));
    var var_1 = -(~_wgslsmith_add_i32(-(i32(-1i) * -1i), arg_1.a.x));
    global0 = array<vec2<f32>, 12>();
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = vec3<u32>(~((u_input.c.x & (u_input.c.x | 73781u)) >> ((~4294967295u << (u_input.c.x % 32u)) % 32u)), ~u_input.c.x, 4294967295u);
    global0 = array<vec2<f32>, 12>();
    global3 = func_4(u_input.a.x >= _wgslsmith_dot_vec3_u32(firstLeadingBit(func_2(vec4<i32>(global3.a.x, global3.a.x, u_input.d, 1i), Struct_1(u_input.b, vec4<u32>(var_0.x, 4294967295u, global3.b.x, 1u)), vec3<i32>(u_input.b.x, u_input.b.x, 1i), 1000f)), _wgslsmith_div_vec3_u32(var_0, vec3<u32>(50624u, 4294967295u, var_0.x)) >> (~var_0 % vec3<u32>(32u))), Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-22848i, u_input.d), min(-34950i, 2215i))), u_input.c), Struct_1(_wgslsmith_mod_vec2_i32(u_input.b, reverseBits(-u_input.b)), abs(~vec4<u32>(global3.b.x, 45409u, u_input.a.x, 51382u)) | (~vec4<u32>(4294967295u, 1u, global3.b.x, global3.b.x) & (u_input.c | global3.b))));
    var var_1 = abs(_wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(-14353i, -2147483647i, 1i, global3.a.x)) ^ select(vec4<i32>(u_input.b.x, global3.a.x, -44792i, 53354i), ~vec4<i32>(-52159i, u_input.d, 2147483647i, -65608i), false), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, 15218i, u_input.d, global3.a.x), ~vec4<i32>(-45354i, 76890i, -25618i, global3.a.x)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.d, global3.a.x, 38984i)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, 519f, 972f, -1764f) - vec4<f32>(1f, 1f, 1f, 1f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(751f, 872f, -171f, -797f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-935f, -349f, -124f, -1283f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(849f, 450f, -341f, 1831f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(981f, 401f, -2508f, 1751f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-461f, -508f, -433f, 761f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1911f, -471f, 531f, -803f))))))));
    return global3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(50068i);
    var var_1 = vec4<u32>(~(~_wgslsmith_div_u32(func_1(), _wgslsmith_sub_u32(global3.b.x, global3.b.x))), _wgslsmith_dot_vec4_u32(u_input.c | firstLeadingBit(vec4<u32>(29725u, 1u, 35045u, global3.b.x) >> (global3.b % vec4<u32>(32u))), max(abs(max(vec4<u32>(global3.b.x, 4294967295u, u_input.c.x, 15558u), u_input.c)), vec4<u32>(1u, 14291u, u_input.a.x, 1u) | abs(global3.b))), abs(_wgslsmith_add_u32(global3.b.x, u_input.c.x & 76852u) ^ (global3.b.x >> (firstLeadingBit(global3.b.x) % 32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(33041u, global3.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(global3.b.x, 74529u), u_input.c.xw)) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(44431u, 21280u)), vec2<u32>(4294967295u, u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1225f))))))));
    global2 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(var_1.x, 21803u)), ~u_input.a)), countOneBits(select(var_1.xz, var_1.xy, vec2<bool>(global1.x, true)) | ~vec2<u32>(global3.b.x, 94076u))) | _wgslsmith_mult_u32(var_1.x & global3.b.x, ~func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, global3.a.x, -48267i, global3.a.x), vec4<i32>(-4392i, global3.a.x, -2147483647i, u_input.b.x), vec4<i32>(-10305i, global3.a.x, -46789i, global3.a.x)), Struct_1(vec2<i32>(global3.a.x, global3.a.x), vec4<u32>(14106u, global3.b.x, 51714u, global3.b.x)), ~vec3<i32>(global3.a.x, u_input.d, -2147483647i), -656f).x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(950f - _wgslsmith_div_f32(-2378f, _wgslsmith_f_op_f32(ceil(284f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1998f + -400f) - -2166f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2027f))))));
    global2 = global3.b.x;
    global1 = !(!select(select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), global1.x), vec2<bool>(true, global1.x), true), select(!vec2<bool>(false, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), global1.x), 0u < u_input.a.x), global1.x));
    let var_4 = -2057f;
    let var_5 = Struct_1(global3.a, _wgslsmith_add_vec4_u32(global3.b, ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.ww, abs(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, -12083i, 1i, var_5.a.x)), vec4<i32>(global3.a.x, 0i, -24523i, -2188i))) ^ (firstTrailingBit(~vec4<i32>(-64145i, 25388i, -1i, global3.a.x)) >> (vec4<u32>(global3.b.x, _wgslsmith_dot_vec2_u32(var_5.b.zy, vec2<u32>(var_1.x, var_1.x)), _wgslsmith_mult_u32(u_input.a.x, 0u), ~1u) % vec4<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_div_u32(abs(global3.b.x), ~83112u) >> ((~114u ^ _wgslsmith_add_u32(5214u, var_5.b.x)) % 32u), 97110u));
}

