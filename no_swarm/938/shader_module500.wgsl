struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-8532i, 2147483647i, -60914i, i32(-2147483648)), vec4<i32>(1i, 52618i, 2349i, -1420i), vec4<i32>(i32(-2147483648), i32(-2147483648), 24747i, 16903i), vec4<i32>(-50488i, 3012i, -12131i, 7921i), vec4<i32>(-19089i, 1i, 1i, -21352i), vec4<i32>(i32(-2147483648), -18217i, -1i, 11639i), vec4<i32>(2147483647i, -40833i, 39434i, 2147483647i), vec4<i32>(0i, 13382i, 1i, i32(-2147483648)), vec4<i32>(60762i, i32(-2147483648), -1i, 32463i), vec4<i32>(0i, 0i, -27979i, -1i), vec4<i32>(i32(-2147483648), -20659i, 0i, -12983i), vec4<i32>(-3842i, 0i, -7669i, -63466i), vec4<i32>(-4923i, 1i, 0i, 0i), vec4<i32>(-8598i, -5348i, 2147483647i, -37525i), vec4<i32>(-1i, 2147483647i, -2387i, -41509i), vec4<i32>(i32(-2147483648), 1i, 1i, 6432i), vec4<i32>(-57298i, 9023i, 38455i, 27988i), vec4<i32>(2147483647i, -18803i, 0i, -27819i), vec4<i32>(0i, 44942i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -65227i, 2147483647i, i32(-2147483648)), vec4<i32>(38135i, 0i, 20293i, 2147483647i), vec4<i32>(-1i, 0i, 37552i, 2147483647i), vec4<i32>(44315i, -1i, -7872i, 2147483647i), vec4<i32>(-10873i, -48643i, -26332i, 2147483647i), vec4<i32>(-35358i, 1i, -3095i, 40905i), vec4<i32>(10316i, -39964i, -1i, 2147483647i), vec4<i32>(1i, 5495i, 29900i, 9855i), vec4<i32>(i32(-2147483648), i32(-2147483648), 16929i, 27981i), vec4<i32>(-1i, 10252i, 51007i, -9360i), vec4<i32>(i32(-2147483648), i32(-2147483648), -70697i, -30758i));

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn func_3() -> bool {
    let var_0 = select(u_input.c, vec3<u32>(6958u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, u_input.d), ~u_input.d)), ~(~reverseBits(u_input.d))), any(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, false))));
    var var_1 = u_input.a.x << (firstTrailingBit(firstLeadingBit(59105u)) % 32u);
    let var_2 = true;
    var var_3 = global2[_wgslsmith_index_u32(~select(~(~u_input.c.x << (var_0.x % 32u)), u_input.c.x, all(vec4<bool>(var_2, var_2, false, all(vec2<bool>(var_2, var_2))))), 7u)];
    let var_4 = select(~vec3<u32>(u_input.d, ~0u, var_3.c.x) ^ vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_3.c.x, 796u), 4294967295u), var_0.x, ~1u), vec3<u32>(0u, ~(~0u >> (u_input.d % 32u)), 76483u), !select(select(vec3<bool>(false, false, true), !var_3.d.wxw, vec3<bool>(false, var_2, var_2)), !var_3.d.ywy, false));
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> bool {
    global1 = array<vec4<i32>, 30>();
    global0 = !(any(!(!vec4<bool>(false, arg_1, arg_1, arg_1))) || arg_1);
    global0 = false;
    global2 = array<Struct_1, 7>();
    let var_0 = any(select(vec2<bool>(!(u_input.c.x < u_input.c.x), false), !(!vec2<bool>(true, arg_1)), func_3()));
    return false;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> vec4<u32> {
    global0 = !arg_2.x;
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    global1 = array<vec4<i32>, 30>();
    global2 = array<Struct_1, 7>();
    return ~select(_wgslsmith_add_vec4_u32(select(vec4<u32>(23381u, 1u, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, u_input.d, arg_0, 0u), true) ^ ~vec4<u32>(arg_0, 16262u, arg_0, arg_0), firstLeadingBit(vec4<u32>(0u, u_input.c.x, arg_0, u_input.c.x) | vec4<u32>(0u, 1u, arg_0, arg_0))), countOneBits(vec4<u32>(u_input.c.x, arg_0, arg_0, 1u)) & firstTrailingBit(vec4<u32>(arg_0, 0u, 75111u, u_input.d) << (vec4<u32>(4294967295u, arg_0, 4294967295u, 0u) % vec4<u32>(32u))), func_2(all(vec4<bool>(true, false, true, false)), !arg_2.x, _wgslsmith_div_vec3_i32(u_input.a.www, _wgslsmith_div_vec3_i32(u_input.a.zzw, u_input.a.yyw))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.d, countOneBits(~u_input.b), vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    global2 = array<Struct_1, 7>();
    let var_1 = ~u_input.a.zyw;
    let var_2 = global2[_wgslsmith_index_u32(~(~34983u), 7u)];
    global0 = any(var_2.d);
    global0 = true;
    global0 = !all(select(vec3<bool>(var_2.d.x, true, true), vec3<bool>(false, true, var_2.d.x), !vec3<bool>(var_2.d.x, var_2.d.x, false))) != !var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.x, firstTrailingBit(select(countOneBits(var_2.c.x), u_input.c.x, var_2.d.x)), var_2.d.x), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-35993i, ~u_input.b), ~(-1i)));
}

