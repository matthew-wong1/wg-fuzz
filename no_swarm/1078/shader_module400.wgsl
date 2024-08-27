struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(-306f, vec3<f32>(473f, 1000f, 1918f)), 219f), Struct_2(Struct_1(-2296f, vec3<f32>(-853f, -2150f, 567f)), -1176f), Struct_2(Struct_1(655f, vec3<f32>(937f, -1517f, -911f)), -669f), Struct_2(Struct_1(1138f, vec3<f32>(132f, 336f, -1000f)), 1000f), Struct_2(Struct_1(1000f, vec3<f32>(-1504f, -970f, 1364f)), -199f), Struct_2(Struct_1(647f, vec3<f32>(-405f, -726f, 341f)), -1675f), Struct_2(Struct_1(-1580f, vec3<f32>(-293f, -271f, -974f)), 360f), Struct_2(Struct_1(-1264f, vec3<f32>(479f, -502f, -486f)), -1000f), Struct_2(Struct_1(-1000f, vec3<f32>(1000f, 1206f, -1851f)), 1000f), Struct_2(Struct_1(706f, vec3<f32>(-345f, 1555f, -610f)), -530f), Struct_2(Struct_1(415f, vec3<f32>(1183f, 1164f, 1614f)), 699f), Struct_2(Struct_1(1000f, vec3<f32>(-1385f, 1632f, -309f)), 1170f), Struct_2(Struct_1(1508f, vec3<f32>(242f, -319f, -682f)), 760f), Struct_2(Struct_1(492f, vec3<f32>(184f, -109f, 814f)), 1361f), Struct_2(Struct_1(-258f, vec3<f32>(-221f, 238f, 377f)), -181f), Struct_2(Struct_1(1234f, vec3<f32>(-1000f, -1431f, -595f)), -433f), Struct_2(Struct_1(-886f, vec3<f32>(-1000f, -307f, 1106f)), 1343f), Struct_2(Struct_1(1430f, vec3<f32>(-1960f, 408f, 1089f)), 1000f), Struct_2(Struct_1(3226f, vec3<f32>(765f, -1168f, 491f)), -390f), Struct_2(Struct_1(-488f, vec3<f32>(-454f, 498f, 1771f)), -452f), Struct_2(Struct_1(1195f, vec3<f32>(-1000f, -244f, -427f)), -230f), Struct_2(Struct_1(-1259f, vec3<f32>(1097f, 2049f, 584f)), -616f), Struct_2(Struct_1(315f, vec3<f32>(727f, 1000f, 745f)), 1820f), Struct_2(Struct_1(-1106f, vec3<f32>(112f, -820f, 1000f)), -798f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), 972f))) - 293f)));
    global0 = array<Struct_2, 24>();
    var var_1 = abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(59913u, 7990u, u_input.b) | vec3<u32>(50093u, u_input.b, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.b >> (u_input.a.x % 32u), 4294967295u)), ~_wgslsmith_sub_vec3_u32(u_input.a.ywx & u_input.a.zyx, abs(vec3<u32>(u_input.a.x, 0u, 42677u)))));
    let var_2 = select(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), vec3<bool>(true, true, all(vec2<bool>(false, true))), false), select(vec3<bool>((-48894i >> (u_input.a.x % 32u)) != countOneBits(u_input.c), true, all(vec4<bool>(true, true, true, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x) != firstTrailingBit(u_input.a.x)), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))));
    return reverseBits(4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> bool {
    let var_0 = arg_2.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_2.c.b + _wgslsmith_f_op_f32(-998f + arg_1.x)), arg_0.a.b), _wgslsmith_f_op_f32(-var_0.a.x));
    var var_2 = ~_wgslsmith_add_vec2_i32(~arg_2.b, firstTrailingBit(arg_2.b)) | vec2<i32>(4879i, arg_2.b.x);
    var var_3 = vec2<bool>(!select(false, any(vec4<bool>(false, false, false, true)), true), true);
    let var_4 = 0u >> (~arg_2.a.b.x % 32u);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = !(!func_4(global0[_wgslsmith_index_u32(u_input.b, 24u)], vec2<f32>(_wgslsmith_f_op_f32(max(-431f, -417f)), -2384f), Struct_4(Struct_3(vec3<f32>(1546f, 1000f, 1000f), u_input.a.zx), -vec2<i32>(u_input.c, u_input.c), Struct_2(Struct_1(-2213f, vec3<f32>(783f, 1934f, 1214f)), 980f), func_3())));
    var var_1 = 792f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-285f, 957f)) * -958f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2577f) - -2588f), _wgslsmith_f_op_f32(395f - _wgslsmith_f_op_f32(-522f - -2084f))))), -600f);
    var var_2 = var_0;
    var var_3 = ~u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-478f)), _wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(-1414f - 2456f)))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(354f, -1000f)))), 713f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(640f, 301f)) + _wgslsmith_f_op_f32(f32(-1f) * -1124f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + -1000f)))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = (reverseBits(firstLeadingBit(vec2<i32>(u_input.c, -60197i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, u_input.c))) & _wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(6889i, u_input.c)), vec2<i32>(-26640i << (u_input.a.x % 32u), abs(31592i)))) >> (vec2<u32>(38529u, ~select(u_input.b, u_input.a.x, true) & u_input.b) % vec2<u32>(32u));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_mod_i32(-var_0.x >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u))) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(~countOneBits(-7298i), var_0.x, abs(var_0.x), u_input.c), vec4<i32>(u_input.c, var_0.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.x, -34022i), vec3<i32>(-2147483647i, -2147483647i, -1i))), countOneBits(var_0.x & var_0.x))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(arg_0.a, arg_0.b.x, 225f))))), _wgslsmith_div_vec3_f32(arg_0.b, arg_0.b))), u_input.a.wx);
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec2<u32>(1u, ~arg_1.b.x);
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -760f), 615f)), 1887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2277f - -2300f))))), vec2<u32>(4294967295u, func_3()));
    var var_2 = _wgslsmith_mult_vec4_i32(reverseBits(countOneBits(max(abs(vec4<i32>(8868i, u_input.c, -21624i, -1i)), max(vec4<i32>(u_input.c, 1i, u_input.c, 62149i), vec4<i32>(36503i, u_input.c, 15591i, -5720i))))), vec4<i32>(u_input.c, _wgslsmith_mult_i32(~5581i, u_input.c), ~u_input.c, u_input.c));
    let var_3 = -582f;
    return arg_1;
}

fn func_7(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(~34842u, _wgslsmith_add_u32(arg_0.a.b.x, u_input.a.x)) << (u_input.a.x % 32u);
    let var_1 = vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(firstLeadingBit(_wgslsmith_mod_i32(-1i, arg_2.x))), select(-1i, 1i, true)), -(~0i) >> (_wgslsmith_clamp_u32(arg_0.a.b.x, u_input.a.x, 1u) % 32u), ~arg_2.x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.a.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1263f)), _wgslsmith_f_op_f32(-arg_0.c.b))), vec3<f32>(func_6(u_input.c >= -1i, func_5(Struct_1(arg_1.a, vec3<f32>(arg_1.b.x, arg_0.a.a.x, 1316f)))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -1332f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(696f, arg_1.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1245f)), -274f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - func_6(false, arg_0.a).a.x))));
    var_0 = arg_0.a.b.x;
    let var_3 = -1821f;
    return var_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = 436f;
    return func_7(Struct_4(func_6(true, func_5(func_2())), -(~(-vec2<i32>(u_input.c, 14206i))), Struct_2(func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(230f * -1975f) * _wgslsmith_div_f32(150f, 1000f))), u_input.a.x), Struct_1(func_6(true, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2185f, 415f, 959f)), _wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(1u, u_input.a.x)))).a.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2116f, -881f) + vec3<f32>(325f, 1716f, 218f))))))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c, u_input.c, 35985i), abs(reverseBits(vec4<i32>(25901i, -32062i, -2147483647i, -13319i)))), min(-vec4<i32>(u_input.c, -22009i, u_input.c, u_input.c), ~countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 642f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1279f))));
    var var_1 = 1f;
    let var_2 = func_1();
    var var_3 = var_2.b.yx;
    var var_4 = 65697u;
    var_4 = u_input.a.x;
    let var_5 = vec4<u32>(func_6(any(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, var_0), var_0)), Struct_3(vec3<f32>(var_2.a, func_5(Struct_1(var_2.a, vec3<f32>(-1191f, var_2.b.x, var_3.x))).a.x, var_3.x), vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))).b.x, abs(5408u ^ u_input.a.x), u_input.a.x, u_input.a.x);
    let var_6 = 1072f;
    var var_7 = func_6(true, func_6(!any(vec3<bool>(true, false, false)) || any(vec4<bool>(var_0, var_0, false, var_0)), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.b)), _wgslsmith_f_op_vec3_f32(-var_2.b)), vec2<u32>(0u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, 64199u), 4294967295u), var_7.b.x);
}

