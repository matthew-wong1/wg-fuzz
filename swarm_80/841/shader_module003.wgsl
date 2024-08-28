struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-84978i), Struct_1(43047i), Struct_1(i32(-2147483648)), Struct_1(1i));

var<private> global1: array<f32, 27> = array<f32, 27>(-780f, -1924f, 1000f, 383f, 965f, -871f, -763f, -1892f, 692f, 767f, -171f, 174f, 512f, 381f, 1152f, 430f, 1021f, -1821f, 1399f, 1000f, -449f, 2186f, -632f, -1527f, 1012f, 291f, 302f);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1i), Struct_1(1i));

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_1 = vec4<i32>(-(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -74171i), vec2<i32>(arg_3.a, arg_0.a))), arg_0.a, -1i, -1i);
    global0 = array<Struct_1, 10>();
    global3 = array<Struct_1, 14>();
    let var_2 = all(vec2<bool>(true, true)) && !(!all(vec4<bool>(true, true, true, true)));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 2>();
    var var_0 = ~(~(~max(1044u, u_input.a.x) | _wgslsmith_clamp_u32(~0u, u_input.a.x, 32933u)));
    let var_1 = arg_0.a;
    global1 = array<f32, 27>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2611f) + 859f);
    return Struct_1(-4916i);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_3(arg_0, vec4<bool>(all(vec2<bool>(true, select(false, true, false))), ~(~u_input.a.x) >= u_input.a.x, all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), true))), Struct_1(~_wgslsmith_sub_i32(arg_0.a, min(arg_0.a, 3853i))));
    let var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) | !(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), 40616u, select(u_input.a.x, 0u, false)) <= _wgslsmith_mult_u32(_wgslsmith_div_u32(6571u, 24166u), ~0u));
    global3 = array<Struct_1, 14>();
    global2 = array<Struct_1, 2>();
    var var_2 = false;
    return func_3(Struct_1(-50728i), vec4<bool>(true, false, var_1, select(func_2(Struct_1(var_0.a), vec2<f32>(-1000f, 414f), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 17163u, 4294967295u), u_input.a), func_3(global2[_wgslsmith_index_u32(18635u, 2u)], vec4<bool>(var_1, var_1, false, var_1), global0[_wgslsmith_index_u32(56374u, 10u)])), !var_1 | (var_1 & var_1), !(!var_1))), Struct_1(2147483647i));
}

fn func_1() -> u32 {
    let var_0 = func_4(func_3(Struct_1(_wgslsmith_div_i32(i32(-1i) * -35911i, 1i)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, func_2(Struct_1(2147483647i), vec2<f32>(global1[_wgslsmith_index_u32(48222u, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), u_input.a, Struct_1(0i)), global1[_wgslsmith_index_u32(6870u, 27u)] != global1[_wgslsmith_index_u32(1u, 27u)]), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), u_input.a.x >= u_input.a.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 10484u, u_input.a.x)), firstLeadingBit(u_input.a)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, ~0u)), 10u)]));
    global1 = array<f32, 27>();
    let var_1 = ~((_wgslsmith_clamp_vec4_i32(vec4<i32>(-32256i, var_0.a, -1i, 36483i), vec4<i32>(var_0.a, -1i, 1813i, 9928i), vec4<i32>(var_0.a, -10273i, 2147483647i, var_0.a)) >> (((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(20572u, 1u, 8487u, 0u) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)));
    var var_2 = func_4(Struct_1(-23821i));
    global2 = array<Struct_1, 2>();
    return ~firstLeadingBit(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zwx >> (vec3<u32>(u_input.a.x, reverseBits(func_1()), u_input.a.x) % vec3<u32>(32u));
    let var_1 = any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, true, true))));
    let var_2 = Struct_1(_wgslsmith_mult_i32(-(~_wgslsmith_add_i32(7989i, -11288i)), -1i));
    global2 = array<Struct_1, 2>();
    let var_3 = vec3<u32>(abs(_wgslsmith_mod_u32(var_0.x, firstTrailingBit(1u))), ~(~u_input.a.x), var_0.x) << (vec3<u32>(_wgslsmith_mod_u32(1u, u_input.a.x << (func_1() % 32u)), var_0.x, 47665u) % vec3<u32>(32u));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~_wgslsmith_add_u32(~42594u, var_3.x)), u_input.a.x), 27u)];
    var var_5 = _wgslsmith_mod_i32(-1i, var_2.a);
    global3 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, select(_wgslsmith_sub_u32(1u, var_0.x), _wgslsmith_mult_u32(4294967295u, var_3.x), abs(var_2.a) < var_2.a) ^ var_3.x, global1[_wgslsmith_index_u32(~(~(~(46296u << (u_input.a.x % 32u)))), 27u)], ~var_0.x);
}

