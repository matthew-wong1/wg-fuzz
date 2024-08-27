struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 261f;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(59661u, 4294967295u, 4294967295u, 38564u), vec2<i32>(i32(-2147483648), -19118i), vec3<f32>(275f, -732f, 1300f), vec2<i32>(-1i, 23754i), vec4<i32>(14585i, 2147483647i, -42510i, -18526i)), Struct_1(vec4<u32>(1u, 53064u, 4294967295u, 61865u), vec2<i32>(0i, 0i), vec3<f32>(1150f, -1736f, -1468f), vec2<i32>(-31394i, -49435i), vec4<i32>(0i, 41537i, -12645i, 26376i)), Struct_1(vec4<u32>(4294967295u, 0u, 31909u, 16920u), vec2<i32>(-12068i, i32(-2147483648)), vec3<f32>(1884f, 1693f, 947f), vec2<i32>(-12826i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, -1i, 1i)), Struct_1(vec4<u32>(0u, 1u, 23370u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(1613f, 2388f, -713f), vec2<i32>(30107i, 2147483647i), vec4<i32>(1i, -3587i, 1i, 1i)), Struct_1(vec4<u32>(4294967295u, 74511u, 1u, 58483u), vec2<i32>(-45525i, 26215i), vec3<f32>(793f, 1035f, -772f), vec2<i32>(1i, 0i), vec4<i32>(2147483647i, 1i, 60973i, -15963i)), Struct_1(vec4<u32>(1u, 16660u, 9068u, 0u), vec2<i32>(0i, 0i), vec3<f32>(1338f, -335f, 1318f), vec2<i32>(-10054i, 2147483647i), vec4<i32>(1i, 1i, i32(-2147483648), 2321i)), Struct_1(vec4<u32>(29539u, 40931u, 0u, 1u), vec2<i32>(i32(-2147483648), -1i), vec3<f32>(-607f, 558f, 1625f), vec2<i32>(14775i, 2147483647i), vec4<i32>(-14456i, 6994i, 0i, 11512i)), Struct_1(vec4<u32>(1u, 0u, 31331u, 1u), vec2<i32>(-30331i, 34881i), vec3<f32>(628f, -113f, 153f), vec2<i32>(-19422i, -14252i), vec4<i32>(1i, 29421i, -26132i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 12557u, 4294967295u, 68214u), vec2<i32>(-13382i, 27473i), vec3<f32>(-514f, -1660f, 514f), vec2<i32>(i32(-2147483648), 0i), vec4<i32>(994i, -6153i, 25528i, -1i)), Struct_1(vec4<u32>(1u, 13686u, 72885u, 62208u), vec2<i32>(9109i, 33160i), vec3<f32>(-485f, -138f, -302f), vec2<i32>(2147483647i, 55816i), vec4<i32>(-22657i, i32(-2147483648), 1i, 37194i)), Struct_1(vec4<u32>(0u, 49925u, 68428u, 54373u), vec2<i32>(i32(-2147483648), 15563i), vec3<f32>(-1240f, -543f, 347f), vec2<i32>(0i, 2147483647i), vec4<i32>(15471i, 1i, -9385i, -47981i)), Struct_1(vec4<u32>(1u, 1u, 545u, 40722u), vec2<i32>(46420i, -17221i), vec3<f32>(-1759f, 1559f, -729f), vec2<i32>(-8212i, 2147483647i), vec4<i32>(-43709i, 0i, -56656i, -16912i)), Struct_1(vec4<u32>(26820u, 1u, 20941u, 83159u), vec2<i32>(0i, 25664i), vec3<f32>(291f, 163f, -604f), vec2<i32>(44822i, 2147483647i), vec4<i32>(25461i, 0i, -10849i, 6585i)), Struct_1(vec4<u32>(1u, 50264u, 0u, 1012u), vec2<i32>(3882i, 50990i), vec3<f32>(-524f, 2595f, -711f), vec2<i32>(1i, 1i), vec4<i32>(27354i, -26157i, 19203i, -1i)), Struct_1(vec4<u32>(0u, 55841u, 1u, 1u), vec2<i32>(1i, 2147483647i), vec3<f32>(212f, -2425f, -927f), vec2<i32>(-35141i, 49336i), vec4<i32>(-1i, 3058i, -7713i, 2147483647i)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 1u, 14154u), vec3<u32>(1u, 42401u, 10654u), vec3<u32>(33589u, 0u, 81506u), vec3<u32>(6129u, 1u, 24829u), vec3<u32>(1u, 1u, 6903u), vec3<u32>(1u, 0u, 18984u), vec3<u32>(4294967295u, 6923u, 14742u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(53712u, 53416u, 4294967295u), vec3<u32>(64310u, 0u, 1u), vec3<u32>(7522u, 4294967295u, 105156u), vec3<u32>(4294967295u, 41255u, 3788u), vec3<u32>(4294967295u, 73312u, 48249u), vec3<u32>(0u, 30285u, 1999u), vec3<u32>(0u, 7055u, 62725u), vec3<u32>(0u, 1u, 37494u), vec3<u32>(25304u, 1u, 0u), vec3<u32>(4294967295u, 8569u, 2076u), vec3<u32>(94818u, 1u, 12177u), vec3<u32>(17945u, 25372u, 28385u), vec3<u32>(17822u, 4294967295u, 77578u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(30424u, 35595u, 16842u), vec3<u32>(0u, 4294967295u, 11393u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(~12667u, 15u)];
    let var_1 = i32(-1i) * -(abs(var_0.b.x | global2.b.x) & var_0.e.x);
    let var_2 = countOneBits((max(384u, firstTrailingBit(67122u)) >> (1570u % 32u)) << ((global2.a.x ^ firstTrailingBit(1u)) % 32u));
    global1 = array<Struct_1, 15>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.c.zx);
    return firstLeadingBit(abs(vec2<i32>(var_1, -1i)));
}

fn func_3() -> i32 {
    global4 = array<vec3<u32>, 24>();
    global1 = array<Struct_1, 15>();
    return global2.d.x;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~u_input.a, ~global2.a | (~u_input.a ^ ~u_input.a)), _wgslsmith_div_vec2_i32(global2.e.wx, vec2<i32>(0i, func_3())) & -global2.b, _wgslsmith_f_op_vec3_f32(step(global2.c, global2.c)), global2.b, min(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.e.x, 29954i, global2.b.x, global2.b.x), vec4<i32>(2147483647i, global2.b.x, global2.e.x, global2.b.x)))), ~(global2.e ^ vec4<i32>(7896i, global2.e.x, global2.e.x, global2.b.x))));
    var var_1 = _wgslsmith_mod_vec4_i32(global2.e, _wgslsmith_mod_vec4_i32(var_0.e, vec4<i32>(-global2.d.x >> (_wgslsmith_add_u32(1u, 0u) % 32u), 8159i, global2.e.x, global2.e.x)));
    var var_2 = global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(firstTrailingBit(1u), _wgslsmith_sub_u32(0u, var_0.a.x), var_0.a.x)) << (var_0.a.x % 32u), 11u)];
    let var_3 = global3[_wgslsmith_index_u32(1u, 11u)];
    let var_4 = global1[_wgslsmith_index_u32(var_0.a.x, 15u)];
    return -105f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = false;
    let var_2 = global4[_wgslsmith_index_u32((1u << (abs(max(reverseBits(global2.a.x), u_input.a.x)) % 32u)) << (u_input.a.x % 32u), 24u)];
    let var_3 = false;
    global0 = global2.c.x;
    let var_4 = 0i;
    var var_5 = 37584u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-11631i), reverseBits(~(-2147483647i)), _wgslsmith_mod_i32(1i, var_0.x) & -2147483647i), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(411f, -773f, 955f, -448f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, 480f, global2.c.x, global2.c.x) * vec4<f32>(-1000f, 1295f, global2.c.x, -272f)))))) + 430f), _wgslsmith_f_op_f32(-407f + -753f));
}

