struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0i, false, vec4<bool>(true, true, false, false), vec3<u32>(8593u, 77480u, 1u)), Struct_1(1i, false, vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(1i, false, vec4<bool>(true, false, false, false), vec3<u32>(3029u, 55447u, 1u)), Struct_1(-2126i, true, vec4<bool>(false, false, true, true), vec3<u32>(41673u, 62953u, 0u)), Struct_1(2147483647i, false, vec4<bool>(true, true, false, true), vec3<u32>(0u, 4294967295u, 61501u)), Struct_1(31239i, true, vec4<bool>(true, false, true, false), vec3<u32>(0u, 62308u, 1u)), Struct_1(1i, false, vec4<bool>(false, true, true, false), vec3<u32>(11927u, 23636u, 10707u)), Struct_1(-18672i, true, vec4<bool>(false, false, true, true), vec3<u32>(0u, 56142u, 0u)), Struct_1(5605i, true, vec4<bool>(true, false, false, false), vec3<u32>(9461u, 0u, 4294967295u)), Struct_1(0i, false, vec4<bool>(false, false, true, false), vec3<u32>(1u, 4294967295u, 8863u)), Struct_1(28958i, true, vec4<bool>(false, false, true, true), vec3<u32>(1u, 21017u, 25431u)), Struct_1(i32(-2147483648), false, vec4<bool>(false, false, true, false), vec3<u32>(0u, 10055u, 38146u)), Struct_1(-1i, true, vec4<bool>(true, true, true, true), vec3<u32>(42344u, 60490u, 1u)), Struct_1(14534i, true, vec4<bool>(true, true, true, true), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(15060i, true, vec4<bool>(false, false, true, false), vec3<u32>(12084u, 1u, 4294967295u)));

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: f32 = -794f;

var<private> global3: array<f32, 4> = array<f32, 4>(2603f, -834f, 1000f, 185f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(10641u, arg_1, arg_1) | _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.d.x, 1u), vec3<u32>(arg_1, 1257u, 3833u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, 2725u), vec3<u32>(arg_0.d.x, 0u, arg_0.d.x)))) ^ arg_0.d;
    let var_1 = arg_0.c.wx;
    var var_2 = 4294967295u;
    var_2 = var_0.x;
    var var_3 = firstTrailingBit(reverseBits(vec3<i32>(0i, ~(~u_input.a), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.a, -44084i, u_input.a), u_input.a))));
    return arg_0.d.x;
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = -515f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1200f));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(33938u, _wgslsmith_add_u32(func_2(global0[_wgslsmith_index_u32(16990u, 15u)], 45214u), min(4294967295u, 1u)), ~(~32133u)), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(4294967295u, max(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(50269u, 43480u), 15u)], select(74685u, 54579u, false)), 1u), 7996u)), 15u)];
    var var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_f32(max(var_0, 1646f))), var_0);
    let var_4 = global0[_wgslsmith_index_u32(~(~var_2.d.x), 15u)];
    return all(select(!select(vec3<bool>(true, true, true), var_4.c.wzw, var_2.d.x != 10460u), vec3<bool>(!all(var_4.c.xyx), -27364i < ~var_4.a, !(!arg_0)), select(select(vec3<bool>(true, true, true), select(var_4.c.wxz, vec3<bool>(var_4.c.x, false, false), var_4.b), var_2.c.zzy), !(!vec3<bool>(var_4.c.x, false, false)), var_2.d.x == 4294967295u)));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec4<u32>, 23>();
    global0 = array<Struct_1, 15>();
    var var_0 = true;
    var_0 = false;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(select(func_2(Struct_1(u_input.a, false, vec4<bool>(false, false, true, true), vec3<u32>(53949u, 4294967295u, 0u)), ~4294967295u), ~1u, func_3(true) || select(false, false, true)), abs(10462u)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 64646u, 0u), true))));
    return _wgslsmith_sub_vec2_u32(countOneBits(select(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 142043u), 1i == u_input.a) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), min(_wgslsmith_div_vec2_u32(~select(vec2<u32>(2379u, 4294967295u), vec2<u32>(111262u, 33330u), vec2<bool>(false, false)), vec2<u32>(_wgslsmith_mod_u32(90412u, 4294967295u), 3266u)), min(vec2<u32>(1u, 1u), vec2<u32>(23552u, 1u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<vec4<u32>, 23>();
    return select(select(!select(vec4<bool>(arg_1.x, true, false, true), !arg_2.c, vec4<bool>(true, arg_1.x, true, false)), arg_2.c, true), arg_2.c, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 23>();
    let var_0 = Struct_1(-2147483647i, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, all(vec2<bool>(true, false))), vec3<bool>(true, true, true))), func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(16178u >> (0u % 32u), 1u), ~func_1(), ~vec2<u32>(1u, 1u)), vec3<bool>(!func_3(false), all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true), global0[_wgslsmith_index_u32(firstLeadingBit(min(~13100u, 1u)), 15u)]), firstLeadingBit(vec3<u32>(0u, 12475u, ~31637u)) << (vec3<u32>(firstTrailingBit(~45970u), 1u, ~14460u) % vec3<u32>(32u)));
    let var_1 = firstTrailingBit(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.a, 2334i, 1i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, var_0.a, var_0.a, 2147483647i)), vec4<i32>(var_0.a, u_input.a, var_0.a, var_0.a))) | -vec4<i32>(-var_0.a, var_0.a, var_0.a >> (4294967295u % 32u), var_0.a));
    var var_2 = global0[_wgslsmith_index_u32(func_2(Struct_1(select(-11601i, var_0.a, true), func_3(any(vec2<bool>(false, false))), !(!select(vec4<bool>(false, false, var_0.b, var_0.b), var_0.c, vec4<bool>(true, var_0.b, var_0.b, true))), var_0.d), var_0.d.x), 15u)];
    var_2 = global0[_wgslsmith_index_u32(var_2.d.x, 15u)];
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(-2091f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.d.x, 4294967295u), 4u)])) <= global3[_wgslsmith_index_u32(abs(var_2.d.x), 4u)], var_2.b & true, all(!select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.c.x, var_0.c.x, true), select(vec3<bool>(true, false, true), vec3<bool>(false, var_0.c.x, var_2.b), vec3<bool>(var_0.b, true, var_2.c.x)))), any(vec4<bool>(var_0.c.x | true, var_2.c.x, func_3(any(var_0.c)), func_4(var_0.d.xy, vec3<bool>(var_2.c.x, var_0.c.x, true), Struct_1(var_0.a, false, vec4<bool>(false, false, false, false), vec3<u32>(var_0.d.x, 4294967295u, var_2.d.x))).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, -2061f, 539f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_2.d.x, 4u)], -176f, -381f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(14730u, 4u)], 355f, -2668f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-138f, global3[_wgslsmith_index_u32(71403u, 4u)], global3[_wgslsmith_index_u32(var_0.d.x, 4u)]))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1071f, global3[_wgslsmith_index_u32(var_2.d.x, 4u)]), 1337f, 739f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, global3[_wgslsmith_index_u32(32711u, 4u)], global3[_wgslsmith_index_u32(var_0.d.x, 4u)]))), var_0.b)))), var_0.d, _wgslsmith_f_op_f32(143f + -1000f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(var_2.d.x), 2423u) << (select(~max(0u, var_2.d.x), 4294967295u, all(select(vec4<bool>(true, var_3.x, var_0.c.x, false), vec4<bool>(false, var_2.c.x, var_2.c.x, false), var_2.c))) % 32u), 23u)]);
}

