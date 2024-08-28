struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(vec4<f32>(1219f, -208f, -1015f, -117f)), Struct_5(vec4<f32>(-236f, -2371f, 812f, -810f)), Struct_5(vec4<f32>(-449f, -1922f, -306f, -1300f)), Struct_5(vec4<f32>(506f, 1655f, 1000f, 851f)), Struct_5(vec4<f32>(1320f, -446f, 569f, 1302f)), Struct_5(vec4<f32>(1858f, -477f, 327f, -193f)), Struct_5(vec4<f32>(-1049f, -708f, 1987f, -373f)), Struct_5(vec4<f32>(1669f, -621f, -1000f, -471f)), Struct_5(vec4<f32>(1174f, 421f, -887f, 421f)), Struct_5(vec4<f32>(186f, 1357f, -350f, -457f)), Struct_5(vec4<f32>(625f, 1450f, 133f, 207f)), Struct_5(vec4<f32>(140f, 550f, 105f, -480f)), Struct_5(vec4<f32>(315f, 697f, -1000f, -304f)), Struct_5(vec4<f32>(411f, 408f, -220f, 982f)), Struct_5(vec4<f32>(-190f, -1130f, 160f, -126f)), Struct_5(vec4<f32>(380f, 918f, 1000f, -379f)), Struct_5(vec4<f32>(422f, 654f, 156f, -973f)), Struct_5(vec4<f32>(-350f, 1794f, 343f, -267f)), Struct_5(vec4<f32>(-1180f, 1000f, 183f, 207f)), Struct_5(vec4<f32>(114f, -1182f, 1064f, -529f)), Struct_5(vec4<f32>(543f, -1242f, -802f, 189f)), Struct_5(vec4<f32>(584f, 126f, 227f, -1920f)), Struct_5(vec4<f32>(114f, 470f, 1971f, 1976f)), Struct_5(vec4<f32>(-831f, -684f, 126f, -1000f)), Struct_5(vec4<f32>(275f, -684f, -1496f, 659f)), Struct_5(vec4<f32>(348f, -1531f, -588f, -152f)), Struct_5(vec4<f32>(841f, -387f, -530f, -1748f)), Struct_5(vec4<f32>(2131f, 582f, 981f, 656f)), Struct_5(vec4<f32>(673f, 2762f, -926f, 831f)), Struct_5(vec4<f32>(1561f, 183f, -1262f, 634f)), Struct_5(vec4<f32>(757f, -1047f, -1403f, 564f)));

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false));

var<private> global4: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(65296u, 14087u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_2 {
    global1 = ~_wgslsmith_mod_vec2_u32(firstLeadingBit(firstTrailingBit(u_input.e & vec2<u32>(u_input.e.x, global1.x))), u_input.e);
    var var_0 = 41245u | global1.x;
    let var_1 = Struct_4(!any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), true)), select(~(vec2<u32>(51664u, 0u) >> (vec2<u32>(global1.x, u_input.e.x) % vec2<u32>(32u))), u_input.e, true), true);
    global4 = array<Struct_3, 1>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 12u)];
    return global3[_wgslsmith_index_u32(global1.x, 15u)];
}

fn func_3() -> u32 {
    global3 = array<Struct_2, 15>();
    var var_0 = !(!vec4<bool>(select(all(vec3<bool>(true, false, false)), true, true), false, true, false));
    var var_1 = _wgslsmith_mult_u32(global1.x, ~_wgslsmith_dot_vec2_u32(~u_input.e, ~select(u_input.e, u_input.e, var_0.x)));
    var var_2 = max(_wgslsmith_mult_u32(u_input.e.x, abs(_wgslsmith_mult_u32(1u, ~u_input.e.x))), ~(25777u >> (~(~0u) % 32u)));
    let var_3 = 0u;
    return 7205u;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    return u_input.e;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_5 {
    var var_0 = func_2();
    var var_1 = Struct_4(select(!(!var_0.a), true, var_0.a), func_4(Struct_4(false, u_input.e, !var_0.a), global4[_wgslsmith_index_u32(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1), select(vec3<u32>(arg_3, arg_1, arg_3), vec3<u32>(67637u, 4294967295u, u_input.e.x), var_0.a)) % 32u), 1u)], _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-arg_2))), Struct_3(func_3(), 0u)), var_0.a);
    var var_2 = func_2();
    global0 = array<vec2<i32>, 12>();
    var var_3 = _wgslsmith_clamp_vec4_i32(reverseBits(-u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_add_i32(u_input.b.x, 0i) << (global1.x % 32u), arg_0.x, 1i), vec4<i32>(u_input.a.x, u_input.c, ~u_input.b.x, _wgslsmith_div_i32(u_input.d, _wgslsmith_sub_i32(1i, u_input.a.x)))), vec4<i32>(arg_0.x >> (~(~global1.x) % 32u), arg_0.x, 31719i, _wgslsmith_div_i32(arg_0.x, _wgslsmith_add_i32(30723i, 48756i))));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, global1.x, arg_1, var_1.b.x) ^ vec4<u32>(4294967295u, var_1.b.x, 1u, 15695u), vec4<u32>(37265u, 0u, 4294967295u, global1.x))), vec4<u32>(0u, 6196u, global1.x, 1u) & (vec4<u32>(~global1.x, arg_1 >> (0u % 32u), arg_3, _wgslsmith_clamp_u32(global1.x, arg_3, 3341u)) ^ ~(~vec4<u32>(1u, u_input.e.x, 5535u, arg_1)))), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    var var_1 = func_1(u_input.b, global1.x, -1823f, global1.x);
    var var_2 = var_1.a.yx;
    global3 = array<Struct_2, 15>();
    global0 = array<vec2<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, reverseBits(~1u >> (_wgslsmith_mult_u32(50986u, u_input.e.x) % 32u))), abs(global1.x), func_1(vec4<i32>(var_0, _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 6778i), vec2<i32>(-2147483647i, 0i)), -abs(1i), var_0), ~firstLeadingBit(u_input.e.x), var_2.x, 18991u).a.xx, _wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1134f)), 1000f, 617f, _wgslsmith_f_op_f32(floor(var_1.a.x)))));
}

