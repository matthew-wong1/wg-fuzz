struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(267f, 264f);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(-267f, 856f), 0i, -1000f, Struct_1(-498f, -456f)), Struct_2(Struct_1(1162f, -336f), -1i, -402f, Struct_1(1203f, 738f)), Struct_2(Struct_1(-1708f, -1304f), 1i, -1690f, Struct_1(-764f, -1228f)), Struct_2(Struct_1(287f, 1676f), 18287i, -571f, Struct_1(-1563f, 233f)), Struct_2(Struct_1(-1000f, -105f), -54157i, 678f, Struct_1(284f, -323f)), Struct_2(Struct_1(103f, -702f), -10207i, -128f, Struct_1(-664f, 1000f)), Struct_2(Struct_1(1596f, 2411f), 42619i, -1038f, Struct_1(-858f, 2293f)), Struct_2(Struct_1(-153f, 1395f), 2147483647i, -978f, Struct_1(-1809f, 1000f)), Struct_2(Struct_1(1175f, 130f), -25596i, 293f, Struct_1(1790f, -1411f)), Struct_2(Struct_1(605f, -2267f), 15998i, -596f, Struct_1(154f, -1121f)), Struct_2(Struct_1(1000f, -965f), -19645i, 538f, Struct_1(-697f, 725f)), Struct_2(Struct_1(809f, 1000f), 28872i, -656f, Struct_1(-2443f, 357f)), Struct_2(Struct_1(-624f, 547f), i32(-2147483648), 383f, Struct_1(1358f, 608f)), Struct_2(Struct_1(1282f, 1327f), 1i, 2511f, Struct_1(1540f, -1223f)), Struct_2(Struct_1(499f, 601f), 1i, -193f, Struct_1(-733f, 1722f)), Struct_2(Struct_1(-1635f, 1696f), 1i, -385f, Struct_1(-1258f, 1776f)), Struct_2(Struct_1(-1222f, -454f), i32(-2147483648), -1165f, Struct_1(533f, 1112f)), Struct_2(Struct_1(-1383f, 339f), -28730i, -1000f, Struct_1(1891f, -854f)), Struct_2(Struct_1(1429f, -806f), -1i, 1331f, Struct_1(-1000f, 1007f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = global0.a;
    global1 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-815f, 1081f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f * arg_2.b))) - _wgslsmith_f_op_f32(983f * global0.b)) + arg_0.x);
    let var_2 = _wgslsmith_mod_u32(~select(1u, max(0u, 4294967295u), arg_1.x), ~1u);
    var var_3 = arg_3;
    return 2938f;
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1400f, -1427f)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, false)), Struct_1(global0.b, 1455f), -vec4<i32>(u_input.c.x, u_input.a, 13296i, u_input.b.x))) - 1567f)));
    global1 = array<Struct_2, 19>();
    global1 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(16363u, abs(_wgslsmith_mult_u32(arg_1, arg_1))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1, 75854u), ~vec2<u32>(arg_1, arg_1)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(arg_1, arg_1), vec2<u32>(arg_1, 1u)))) ^ ((~vec2<u32>(arg_1, arg_1) << (~vec2<u32>(1u, arg_1) % vec2<u32>(32u))) & vec2<u32>(59461u, arg_1)));
    var var_1 = global1[_wgslsmith_index_u32(40489u, 19u)];
    return countOneBits(u_input.c.x);
}

fn func_1(arg_0: f32) -> Struct_4 {
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(609f - -933f) - 1166f)));
    let var_0 = firstTrailingBit(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(6445u, 50687u, 67273u), ~abs(vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)));
    let var_1 = abs(vec3<i32>(u_input.a, ~(-5329i << (_wgslsmith_clamp_u32(1u, 44015u, var_0.x) % 32u)), func_2(select(true, true, true) && false, var_0.x)));
    var var_2 = false;
    var_2 = !any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, u_input.a < 1i), true));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 470f) - vec3<f32>(global0.b, global0.b, arg_0)) * vec3<f32>(1199f, global0.a, -853f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1231f)), _wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1042f, arg_0, true)) - _wgslsmith_div_f32(arg_0, -900f))), ~(-countOneBits(-2147483647i)), 518f, Struct_1(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + 699f))), !(!any(vec3<bool>(true, true, true))), _wgslsmith_mod_u32(var_0.x, ~abs(_wgslsmith_mod_u32(var_0.x, var_0.x))), global0.a);
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<u32> {
    global1 = array<Struct_2, 19>();
    global0 = arg_3;
    var var_0 = Struct_3(arg_3);
    var var_1 = all(!vec4<bool>(arg_0, all(vec4<bool>(arg_0, true, arg_0, true)), true, true));
    var var_2 = 1u;
    return min(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 3081u) >> (~vec3<u32>(arg_1.x, arg_1.x, 3577u) % vec3<u32>(32u)), vec3<u32>(~arg_1.x, _wgslsmith_add_u32(arg_2.d, arg_1.x), min(arg_2.d, arg_2.d)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.d, 20715u, arg_2.d), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.d, 0u, arg_1.x), vec3<u32>(arg_1.x, arg_2.d, 4294967295u)))), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(firstLeadingBit(arg_2.d), arg_1.x), ~(arg_2.d >> (arg_2.d % 32u)))) & max(abs(~(~vec3<u32>(arg_2.d, 1u, 90711u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 55453u, arg_1.x), max(vec3<u32>(4294967295u, arg_1.x, 4294967295u), vec3<u32>(arg_1.x, 1u, 0u)), select(vec3<u32>(0u, arg_2.d, 6008u), vec3<u32>(94585u, arg_1.x, 4294967295u), vec3<bool>(false, true, arg_2.c))) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.d, arg_2.d, arg_1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.d, 16971u, arg_1.x), vec3<u32>(1u, arg_2.d, 0u), vec3<u32>(0u, arg_1.x, arg_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(2084f, 880f);
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(92448u, 14920u), ~0u), ~_wgslsmith_clamp_u32(0u, 37564u, 22282u), _wgslsmith_dot_vec2_u32(vec2<u32>(7077u, 1u), vec2<u32>(0u, 4294967295u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(11789u, 88358u, 4294967295u)), func_4(all(vec2<bool>(true, false)), _wgslsmith_mod_vec2_u32(vec2<u32>(70463u, 1u), vec2<u32>(19221u, 4294967295u)), func_1(1128f), func_1(global0.a).b.a))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 22114u, 27981u), vec4<u32>(1u, 1u, 1u, 1u)) << (~max(~4294967295u, _wgslsmith_mod_u32(4294967295u, 17000u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(abs(global0.b)), true))))), select(~(~(vec3<u32>(71499u, var_0.x, var_0.x) | vec3<u32>(53195u, 53444u, 1u))), vec3<u32>(~_wgslsmith_mod_u32(var_0.x, 27719u), firstLeadingBit(~0u), var_0.x), select(vec3<bool>(true, true, select(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false), 247f < global0.b))), global0.b, func_1(global0.b).e);
}

