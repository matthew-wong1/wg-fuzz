struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, -344f, vec4<f32>(-870f, -221f, -1265f, -1079f)), Struct_1(true, -2244f, vec4<f32>(-1482f, -394f, -1101f, 258f)), Struct_1(true, -1000f, vec4<f32>(1000f, -626f, 793f, 3116f)), Struct_1(true, -206f, vec4<f32>(448f, 535f, 438f, 424f)), Struct_1(true, 2439f, vec4<f32>(306f, -2354f, -165f, -591f)), Struct_1(false, 226f, vec4<f32>(190f, -2341f, 1000f, 908f)), Struct_1(false, -205f, vec4<f32>(128f, -937f, -1000f, 767f)), Struct_1(false, 2072f, vec4<f32>(-179f, 110f, -765f, -234f)), Struct_1(false, 1084f, vec4<f32>(-746f, 208f, -680f, -844f)), Struct_1(false, 102f, vec4<f32>(-1549f, 350f, 209f, 556f)), Struct_1(false, 308f, vec4<f32>(1595f, -1000f, -1329f, -1716f)), Struct_1(false, 479f, vec4<f32>(1603f, 391f, 1000f, -1910f)), Struct_1(true, -304f, vec4<f32>(1496f, 359f, -887f, -677f)), Struct_1(true, -2193f, vec4<f32>(254f, -301f, -1000f, 1036f)), Struct_1(false, -2512f, vec4<f32>(1072f, 664f, -137f, -767f)), Struct_1(true, 554f, vec4<f32>(667f, 768f, 1450f, 569f)), Struct_1(true, 1021f, vec4<f32>(-1478f, -1012f, 704f, -943f)), Struct_1(false, -841f, vec4<f32>(3111f, -574f, -352f, -1192f)), Struct_1(true, -1340f, vec4<f32>(1000f, 1059f, 375f, -298f)), Struct_1(true, 432f, vec4<f32>(1000f, -105f, -787f, -1000f)), Struct_1(false, -329f, vec4<f32>(-530f, -339f, -1000f, -1570f)), Struct_1(false, 1609f, vec4<f32>(874f, -898f, 772f, -1153f)), Struct_1(false, 633f, vec4<f32>(1000f, -596f, 1000f, 205f)), Struct_1(true, -212f, vec4<f32>(-1548f, 498f, -673f, 1931f)), Struct_1(true, 1188f, vec4<f32>(-964f, -396f, 241f, -294f)), Struct_1(true, 111f, vec4<f32>(-522f, 209f, 211f, 1504f)), Struct_1(true, -197f, vec4<f32>(1300f, -641f, 1738f, 1345f)), Struct_1(true, -1725f, vec4<f32>(430f, 914f, -435f, 475f)), Struct_1(true, -685f, vec4<f32>(773f, 635f, -882f, -491f)), Struct_1(true, 350f, vec4<f32>(-1005f, -2269f, -348f, -243f)), Struct_1(true, 1532f, vec4<f32>(834f, 1000f, -979f, 1552f)), Struct_1(false, 1153f, vec4<f32>(1819f, 759f, -398f, 1395f)));

var<private> global1: i32;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global1 = firstTrailingBit(-2147483647i);
    global1 = u_input.b.x;
    let var_0 = arg_0;
    global2 = ~arg_3.b << (select(_wgslsmith_add_vec2_u32(arg_3.b << (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.x, 4294967295u), vec2<u32>(arg_3.b.x, u_input.a)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~arg_3.b, abs(u_input.c.xx))), vec2<u32>(~(arg_2.b.x >> (arg_3.b.x % 32u)), 4294967295u), 521u > (~1u ^ reverseBits(arg_3.b.x))) % vec2<u32>(32u));
    let var_1 = global3[_wgslsmith_index_u32(~(~reverseBits(u_input.d.x)), 31u)];
    return 103341u;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec4<u32> {
    global3 = array<Struct_2, 31>();
    global1 = arg_0;
    var var_0 = ~max(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.x), _wgslsmith_sub_vec2_u32(vec2<u32>(67314u, 90663u), vec2<u32>(u_input.d.x, global2.x))), u_input.c.xx) | (u_input.c.xy | vec2<u32>(1u, _wgslsmith_div_u32(~4294967295u, max(u_input.c.x, global2.x))));
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(!any(vec3<bool>(true, true, true)), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), true), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_1.x) > arg_1.x, false, !(all(vec3<bool>(false, false, true)) & true)));
    global3 = array<Struct_2, 31>();
    return ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, func_3(Struct_1(true, arg_1.x, vec4<f32>(arg_1.x, arg_1.x, -300f, 750f)), u_input.b, global3[_wgslsmith_index_u32(global2.x, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)]), _wgslsmith_mult_u32(var_0.x, u_input.c.x), firstLeadingBit(6752u)), ~(~vec4<u32>(u_input.a, 1u, u_input.c.x, global2.x)));
}

fn func_1() -> vec3<u32> {
    var var_0 = u_input.c;
    var var_1 = -vec4<i32>(u_input.b.x, abs(u_input.b.x), 2147483647i, abs(2147483647i & u_input.b.x) & -u_input.b.x);
    global0 = array<Struct_1, 32>();
    var_1 = ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x >> (0u % 32u), var_1.x), u_input.b.x), var_1.x, var_1.x, -(~u_input.b.x));
    let var_2 = ~(~func_2(max(-4023i, u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-713f, -712f) + _wgslsmith_div_vec2_f32(vec2<f32>(-569f, 1036f), vec2<f32>(-939f, 908f)))));
    return var_2.wyw;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global3 = array<Struct_2, 31>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d.c + arg_1.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.d.c)))))), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.b.x, ~arg_0.b.x, global2.x, _wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(0u, 1u))), vec4<u32>(~global2.x, 13750u, min(4294967295u, u_input.a >> (arg_0.b.x % 32u)), 58356u)), vec2<i32>(u_input.b.x, -u_input.b.x), arg_0.c, -_wgslsmith_add_vec3_i32(vec3<i32>(abs(u_input.b.x), i32(-1i) * -2147483647i, u_input.b.x), select(vec3<i32>(u_input.b.x, u_input.b.x, 59559i), vec3<i32>(0i, 2147483647i, -72588i), vec3<bool>(false, false, true)) & ~vec3<i32>(u_input.b.x, 40585i, -6744i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -624f) * _wgslsmith_f_op_f32(abs(476f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2250f)), -565f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f + 545f)))), -598f, _wgslsmith_f_op_f32(f32(-1f) * -346f)));
    let x = u_input.a;
    s_output = func_4(global3[_wgslsmith_index_u32(global2.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, global2.x, u_input.c.x), vec3<u32>(0u, 63267u, 0u)), func_1()), vec3<u32>(4294967295u | global2.x, 52702u, 14090u)), vec3<u32>(4294967295u, u_input.d.x, ~global2.x)), 32u)], Struct_1(false, _wgslsmith_f_op_f32(abs(221f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1329f, _wgslsmith_f_op_f32(-602f - 815f), _wgslsmith_f_op_f32(var_0.b * var_0.c.x), var_0.c.x)))));
}

