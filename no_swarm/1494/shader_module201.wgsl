struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    let var_0 = -u_input.a.x;
    global0 = array<f32, 23>();
    var var_1 = 33429i;
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return Struct_1(_wgslsmith_add_u32(arg_2.b.x, select(arg_2.c.x >> (min(4294967295u, 57344u) % 32u), 94593u, arg_0.b || arg_2.d.c.x)), vec3<u32>(51885u, _wgslsmith_clamp_u32(u_input.c.x, 1u, abs(arg_0.a.x)), 4294967295u), vec3<bool>(arg_0.b, false, any(arg_2.d.c.yz)), global0[_wgslsmith_index_u32(firstTrailingBit(~arg_2.d.b.x) >> (~firstTrailingBit(1u) % 32u), 23u)], arg_0.a.x);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    return Struct_1(_wgslsmith_add_u32(u_input.c.x, countOneBits(arg_1.x)), vec3<u32>(countOneBits(arg_1.x), u_input.c.x, ~(~_wgslsmith_sub_u32(arg_1.x, 1u))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(~(~(~arg_1.x)), 23u)], func_2(Struct_2(u_input.c & u_input.c, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true)), Struct_3(Struct_2(vec3<u32>(arg_1.x, u_input.c.x, 48650u), false), arg_1, vec3<u32>(u_input.c.x, 5347u, 1u), Struct_1(0u, arg_1, vec3<bool>(false, true, false), 1000f, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 23u)]), firstLeadingBit(55642u | arg_1.x)).d)), _wgslsmith_clamp_u32(4294967295u, ~u_input.c.x & u_input.c.x, ~(arg_1.x << ((arg_1.x << (arg_1.x % 32u)) % 32u))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_3(arg_0, countOneBits(vec3<u32>(42101u, 1u, u_input.c.x)), arg_0.a, func_2(arg_0, true || any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.b, arg_0.b), arg_0.b)), Struct_3(Struct_2(u_input.c, any(vec2<bool>(false, false))), arg_0.a, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(48534u, u_input.c.x, 12944u), arg_0.a)), Struct_1(abs(1u), vec3<u32>(u_input.c.x, 0u, 6828u), select(vec3<bool>(true, true, true), vec3<bool>(true, arg_0.b, true), arg_0.b), _wgslsmith_f_op_f32(sign(-416f)), ~arg_0.a.x), 1882f), ~(~(~u_input.c.x))), _wgslsmith_div_f32(1507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-730f, 423f))))));
    global0 = array<f32, 23>();
    let var_1 = func_2(arg_0, arg_0.b, Struct_3(var_0.a, vec3<u32>(var_0.b.x ^ min(116820u, 37237u), _wgslsmith_dot_vec3_u32(arg_0.a, ~vec3<u32>(var_0.a.a.x, 17903u, 8898u)), min(1u, arg_0.a.x)), ~var_0.a.a, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.d.d, 868f, var_0.e) - vec4<f32>(var_0.d.d, 114f, 144f, global0[_wgslsmith_index_u32(var_0.c.x, 23u)]))), arg_0.a | select(vec3<u32>(1u, 4294967295u, var_0.a.a.x), var_0.c, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1052f + -1000f))))), 0u);
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(33120i, u_input.d), true), vec2<i32>(8160i, -30411i)), 10040i, u_input.a.x), max(~(-firstLeadingBit(vec3<i32>(u_input.b, u_input.d, u_input.a.x))), vec3<i32>(min(u_input.b, ~u_input.b), abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), ~(-28960i))));
    var var_3 = 8815u << ((arg_0.a.x & _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.a.x, 0u, 1u), firstTrailingBit(vec3<u32>(var_0.d.e, arg_0.a.x, arg_0.a.x))), abs(vec3<u32>(u_input.c.x, var_1.b.x, var_0.a.a.x)))) % 32u);
    return _wgslsmith_mod_u32(50480u, 41228u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<u32>(~_wgslsmith_clamp_u32(~u_input.c.x, 1u, func_1(Struct_2(vec3<u32>(28804u, u_input.c.x, 1u), false))), _wgslsmith_dot_vec2_u32(~func_3(vec4<f32>(-1271f, -196f, global0[_wgslsmith_index_u32(98625u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<u32>(80092u, u_input.c.x, u_input.c.x)).b.yx, vec2<u32>(_wgslsmith_mult_u32(0u, u_input.c.x), 0u)), _wgslsmith_div_u32(16712u, func_1(Struct_2(u_input.c, true))), max(29360u, ~u_input.c.x) << (countOneBits(u_input.c.x) % 32u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 1657u, u_input.c.x)) & ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 63112u))), false);
    global0 = array<f32, 23>();
    var var_1 = Struct_2(countOneBits(~u_input.c), false && (~(~0u) < ~var_0.x));
    var var_2 = Struct_2(~var_1.a, true);
    var var_3 = Struct_2(var_1.a, true);
    var_2 = Struct_2(vec3<u32>(var_0.x >> (22599u % 32u), 14818u, _wgslsmith_clamp_u32(36048u, select(~4294967295u, 1085u, var_2.b), var_3.a.x)), var_1.b & any(!select(vec3<bool>(var_1.b, var_3.b, var_2.b), vec3<bool>(false, false, var_2.b), var_3.b)));
    var_1 = Struct_2(var_3.a, var_3.b);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(49616i, -1i, -61916i), vec3<i32>(36687i, u_input.b, 0i)), abs(u_input.b)), _wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(u_input.b, 28006i)), 1i, u_input.b >> (firstLeadingBit(1u) % 32u))), 0u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_3(vec4<f32>(global0[_wgslsmith_index_u32(17511u, 23u)], global0[_wgslsmith_index_u32(var_2.a.x, 23u)], 424f, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]), vec3<u32>(4294967295u, u_input.c.x, 1u)).d), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1461u, 1u), vec2<u32>(var_0.x, var_1.a.x)), 23u)], 594f, _wgslsmith_div_f32(-700f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.a.x, 23u)], global0[_wgslsmith_index_u32(var_3.a.x, 23u)], global0[_wgslsmith_index_u32(55727u, 23u)], 2059f) - vec4<f32>(global0[_wgslsmith_index_u32(var_2.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], -1952f)), vec4<f32>(global0[_wgslsmith_index_u32(abs(var_0.x), 23u)], -355f, 206f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.a.x, 23u)])), !(!var_1.b)))), ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 24120u), vec2<u32>(var_2.a.x, 2911u)))), global0[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(var_0.x, max(12962u, u_input.c.x)) | 13439u, var_2.b), 23u)]);
}

