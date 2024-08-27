struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(39362i, Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), 2399f, 9972i, false, 2147483647i)), vec2<f32>(1129f, 1836f), Struct_1(vec3<i32>(1i, 28283i, 20045i), 1567f, i32(-2147483648), true, 43794i), -1000f), Struct_3(0i, Struct_2(Struct_1(vec3<i32>(18975i, 18818i, 13248i), 496f, 36037i, true, -10208i)), vec2<f32>(-667f, 364f), Struct_1(vec3<i32>(0i, -15323i, -27791i), -774f, -35220i, false, -95265i), -1663f), Struct_3(2147483647i, Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 22340i, 24495i), -433f, -1i, true, i32(-2147483648))), vec2<f32>(-455f, -294f), Struct_1(vec3<i32>(-1i, i32(-2147483648), -13817i), 621f, -24039i, true, 48721i), -1762f), Struct_3(26061i, Struct_2(Struct_1(vec3<i32>(-20538i, 0i, 1i), -698f, 37528i, true, 0i)), vec2<f32>(879f, 440f), Struct_1(vec3<i32>(36721i, -24103i, -30527i), -387f, i32(-2147483648), true, 56887i), -830f), Struct_3(38036i, Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -11500i, 24775i), 642f, -54374i, false, -8401i)), vec2<f32>(-190f, 529f), Struct_1(vec3<i32>(-67868i, -1i, -1i), 959f, 1i, true, 1i), -706f), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<i32>(-66397i, i32(-2147483648), -26182i), 853f, -18288i, false, 38199i)), vec2<f32>(949f, -1000f), Struct_1(vec3<i32>(-1i, -1i, 24922i), -1666f, 0i, false, -39663i), -430f), Struct_3(14776i, Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), -128i), -436f, 0i, false, 80202i)), vec2<f32>(714f, 348f), Struct_1(vec3<i32>(14075i, 2147483647i, 51i), 136f, 19489i, true, -1i), -861f), Struct_3(2147483647i, Struct_2(Struct_1(vec3<i32>(1i, 21490i, 1i), 852f, 37360i, false, 2147483647i)), vec2<f32>(-271f, -1000f), Struct_1(vec3<i32>(-21043i, -29968i, i32(-2147483648)), 765f, -31296i, false, 49738i), 1083f), Struct_3(-81694i, Struct_2(Struct_1(vec3<i32>(2147483647i, -51345i, 2147483647i), 754f, -1i, true, i32(-2147483648))), vec2<f32>(-428f, -1354f), Struct_1(vec3<i32>(-69691i, i32(-2147483648), 1i), 1837f, 51662i, false, 2147483647i), 133f), Struct_3(85504i, Struct_2(Struct_1(vec3<i32>(55981i, 0i, 0i), -524f, 2147483647i, false, -3492i)), vec2<f32>(402f, -791f), Struct_1(vec3<i32>(0i, i32(-2147483648), 8769i), -731f, -12730i, true, 7127i), 288f));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(0i, 7236i), vec2<i32>(i32(-2147483648), 16845i), vec2<i32>(30349i, 24292i), vec2<i32>(6715i, -1i), vec2<i32>(-20243i, 13366i), vec2<i32>(1i, 0i), vec2<i32>(1i, -20381i), vec2<i32>(i32(-2147483648), -13613i), vec2<i32>(1i, 1i), vec2<i32>(-57131i, 6745i), vec2<i32>(-8757i, 31636i), vec2<i32>(-28892i, 0i), vec2<i32>(1i, -100i), vec2<i32>(3735i, 38109i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2342i, 2147483647i), vec2<i32>(7728i, 19701i));

var<private> global4: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> f32 {
    global2 = array<Struct_3, 10>();
    global0 = countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~global1.x), _wgslsmith_mod_u32(global1.x << (50066u % 32u), 4294967295u)), global1.x));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2114f) * 605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(185f - 700f) + _wgslsmith_f_op_f32(ceil(1765f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1207f));
    return -731f;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = 1928f;
    let var_1 = !select(arg_0, !arg_0, false);
    global2 = array<Struct_3, 10>();
    let var_2 = (!arg_0.x || any(select(!vec4<bool>(var_1.x, arg_0.x, arg_0.x, var_1.x), !vec4<bool>(arg_0.x, true, true, false), vec4<bool>(false, true, arg_0.x, true)))) != ((arg_1 == select(_wgslsmith_mod_i32(2147483647i, -21597i), _wgslsmith_dot_vec3_i32(vec3<i32>(-19253i, arg_1, arg_1), vec3<i32>(arg_1, -8673i, arg_1)), var_1.x)) && !(!(var_1.x || true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(arg_2.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 2273f) - vec2<f32>(-921f, var_0)) * vec2<f32>(var_0, -507f)) * arg_2.xx) + vec2<f32>(-1000f, var_0))));
    return (0i & ~(max(9007i, arg_1) | arg_1)) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, ~4294967295u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(65714u, global1.x, 20099u)) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(42126u, 37652u, global1.x), vec3<u32>(51598u, 4294967295u, 0u))) % 32u);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f - _wgslsmith_f_op_f32(max(-825f, -670f))))));
    let var_1 = 4294967295u << (global1.x % 32u);
    var var_2 = _wgslsmith_div_vec2_i32((_wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(~40595u, 17u)], global3[_wgslsmith_index_u32(var_1 << (u_input.a.x % 32u), 17u)]) << (~_wgslsmith_mult_vec2_u32(global1.yz, u_input.a) % vec2<u32>(32u))) ^ -vec2<i32>(select(-32363i, 1835i, false), _wgslsmith_sub_i32(5655i, -1i)), min(-(~vec2<i32>(-2147483647i, -2147483647i)), global3[_wgslsmith_index_u32(~(var_1 >> (~1u % 32u)), 17u)]));
    let var_3 = Struct_1(vec3<i32>(2147483647i, func_3(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), abs(var_2.x & var_2.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-215f + var_0), _wgslsmith_f_op_f32(select(-1000f, 1294f, false)))), -2147483647i), 1000f, ~(-(~var_2.x)) | (_wgslsmith_mult_i32(var_2.x, ~(-2147483647i)) >> (select(~global1.x, ~var_1, true) % 32u)), !(all(vec4<bool>(true, true, true, true)) || true), ~(-firstLeadingBit(func_3(vec3<bool>(true, true, true), var_2.x, vec3<f32>(var_0, 306f, 529f)))));
    global4 = true;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u | func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(-18377i), -(~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, 0i), vec3<i32>(46843i, -11341i, 1i)), vec3<i32>(-3933i, 68104i, 0i), vec3<i32>(-12873i, 0i, -60067i))));
}

