struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-677f, 1000f, 1001f, 1386f, 708f, -426f, -543f, -987f, 2094f, 392f, 568f, -1457f, 617f, -617f, -1007f, -2003f, -2383f);

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, false, true, true, false, false, false, true, false, false, false, true, false, true, true, true, true, true, false, true, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = Struct_1(true || any(select(vec2<bool>(true, arg_2.a), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b, 24u)], arg_2.a), arg_2.a), arg_2.a)), 1u);
    let var_1 = reverseBits(arg_1);
    let var_2 = ~(~vec4<u32>(u_input.c, ~_wgslsmith_div_u32(4294967295u, var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, 64882u, 45481u), ~vec4<u32>(u_input.c, u_input.a, 16145u, 30901u)), ~_wgslsmith_mod_u32(4294967295u, 18816u)));
    var var_3 = -108f;
    global0 = array<f32, 17>();
    return ~(-7380i);
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = vec2<bool>(global1[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(u_input.c, u_input.a) ^ (~u_input.a | ~u_input.a)), 24u)], global1[_wgslsmith_index_u32(34284u, 24u)]);
    var var_1 = false;
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(61100u, u_input.a, 1u), _wgslsmith_add_vec3_u32(~vec3<u32>(65949u, 4294967295u, 26523u), vec3<u32>(u_input.a, u_input.c, u_input.c))), u_input.a);
    let var_3 = u_input.c;
    global1 = array<bool, 24>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 74388u, var_3) ^ vec3<u32>(var_3, u_input.a, 4294967295u), vec3<u32>(u_input.c, u_input.c, var_3)), countOneBits(vec3<u32>(u_input.c, abs(40314u), ~0u))), ~abs(reverseBits(~vec3<u32>(4294967295u, 1u, var_3))));
}

fn func_2() -> bool {
    global0 = array<f32, 17>();
    let var_0 = Struct_1(all(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(34085u, 24u)])), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b, 6059i), _wgslsmith_div_i32(-4089i, u_input.b)), vec2<i32>(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.c, 24u)], u_input.a), vec2<i32>(u_input.b, 34864i), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 24u)], u_input.c), -900f), 48412i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(571f, 644f, global0[_wgslsmith_index_u32(1668u, 17u)], 983f)) + vec4<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(44125u, 17u)], 1553f, 711f)))), vec3<f32>(-912f, global0[_wgslsmith_index_u32(~u_input.c, 17u)], _wgslsmith_f_op_f32(1f - -1216f))));
    return any(select(select(!select(vec4<bool>(var_0.a, true, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, true, global1[_wgslsmith_index_u32(79792u, 24u)], false)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 24u)], var_0.a, global1[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(true, var_0.a, global1[_wgslsmith_index_u32(1u, 24u)], false), vec4<bool>(global1[_wgslsmith_index_u32(9084u, 24u)], false, var_0.a, var_0.a)), vec4<bool>(!var_0.a, global0[_wgslsmith_index_u32(4294967295u, 17u)] >= global0[_wgslsmith_index_u32(0u, 17u)], -1i >= u_input.b, global1[_wgslsmith_index_u32(4294967295u, 24u)])), vec4<bool>(all(!vec2<bool>(true, var_0.a)), any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 24u)], true)), false, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 20713u, _wgslsmith_sub_u32(35783u, var_0.b)), 24u)]), select(select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 24u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 24u)], false, false, global1[_wgslsmith_index_u32(1u, 24u)]), true), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 24u)], var_0.a, global1[_wgslsmith_index_u32(u_input.a, 24u)], false), vec4<bool>(var_0.a, var_0.a, true, global1[_wgslsmith_index_u32(u_input.a, 24u)]), false), global1[_wgslsmith_index_u32(~1u, 24u)]), vec4<bool>(6962u < u_input.a, false, true, any(vec4<bool>(false, var_0.a, var_0.a, var_0.a))), vec4<bool>(var_0.a, true, false, global1[_wgslsmith_index_u32(88064u, 24u)] | global1[_wgslsmith_index_u32(4294967295u, 24u)]))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(func_2(), ~select(select(u_input.c, u_input.c >> (u_input.c % 32u), all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 24u)]))), 1u, global1[_wgslsmith_index_u32(countOneBits(72464u), 24u)]));
    let var_1 = ~vec3<u32>(abs(1u), ~(~_wgslsmith_mod_u32(76712u, u_input.c)), 0u);
    global0 = array<f32, 17>();
    var var_2 = Struct_1(~u_input.b == (select(-u_input.b, -2147483647i, true) & u_input.b), 1u);
    global1 = array<bool, 24>();
    return !vec2<bool>(!any(!vec3<bool>(true, var_0.a, true)), _wgslsmith_f_op_f32(-1539f - global0[_wgslsmith_index_u32(4294967295u, 17u)]) > 405f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 24>();
    var var_0 = select(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 24u)])), vec2<bool>(!global1[_wgslsmith_index_u32(~(~u_input.c), 24u)], false || global1[_wgslsmith_index_u32(u_input.a, 24u)]), select(select(vec2<bool>(false, false), vec2<bool>(false, -51484i < u_input.b), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 24u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(u_input.c, 24u)])), func_1(), false)), vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, u_input.a), 24u)], true), !(!(global0[_wgslsmith_index_u32(47047u, 17u)] != 431f))));
    global0 = array<f32, 17>();
    var var_1 = ~(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.c, 1u)) << (~vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, u_input.a), ~vec2<u32>(u_input.a, u_input.a))) << (firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(66859u, 353u))) % vec2<u32>(32u)));
    let var_2 = Struct_1(!(!var_0.x), ~(~4294967295u));
    var var_3 = var_2;
    var_0 = !vec2<bool>(!var_0.x, !var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 17u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-416f)) + _wgslsmith_f_op_f32(836f + global0[_wgslsmith_index_u32(25681u, 17u)]))))));
}

