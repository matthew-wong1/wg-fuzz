struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec4<u32>(_wgslsmith_clamp_u32(select(abs(71212u) >> (~4294967295u % 32u), _wgslsmith_mod_u32(select(1u, 114250u, false), 4294967295u >> (0u % 32u)), false), ~(~(~4294967295u)), firstTrailingBit(1u)), abs(1u), ~reverseBits(1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(25743u, 0u, 25687u)), ~vec3<u32>(21182u, 144145u, 525u))), 4294967295u));
    global0 = array<i32, 15>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, _wgslsmith_mod_u32(1u, var_0.x)), var_0.x), countOneBits(~var_0.x) << ((_wgslsmith_mod_u32(~var_0.x, 1u) << (~28255u % 32u)) % 32u));
    let var_2 = global1[_wgslsmith_index_u32(34545u, 10u)];
    let var_3 = global1[_wgslsmith_index_u32(106964u, 10u)];
    return (~abs(_wgslsmith_add_vec4_u32(vec4<u32>(41895u, 1u, var_3.c, 4294967295u), vec4<u32>(13951u, 35313u, 32340u, 18588u))) & (vec4<u32>(var_3.c, var_0.x, var_2.c & var_2.c, select(var_0.x, var_0.x, false)) << (select(~vec4<u32>(1u, var_0.x, var_3.c, var_3.c), ~vec4<u32>(42307u, var_0.x, var_3.c, var_3.c), true) % vec4<u32>(32u)))) | ~(~(~(vec4<u32>(var_3.c, 12199u, 48357u, 146470u) & vec4<u32>(59128u, 0u, 1u, var_2.c))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> vec4<u32> {
    return firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(max(arg_3.x, 11596u), countOneBits(arg_3.x), ~arg_3.x, 1u | arg_3.x), vec4<u32>(countOneBits(arg_3.x), _wgslsmith_add_u32(0u, arg_3.x), ~arg_3.x, ~arg_3.x)), func_3()));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<i32> {
    global1 = array<Struct_1, 10>();
    let var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec4_u32((countOneBits(func_2(false, var_0.b, var_0.b, vec3<u32>(19375u, arg_0, arg_0))) & ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c, 0u, 48547u, arg_0), vec4<u32>(4294967295u, 3365u, 4294967295u, arg_2.c))) >> (vec4<u32>(abs(~arg_0), 1u | var_0.c, 0u, ~(~58341u)) % vec4<u32>(32u)), vec4<u32>(1u, ~arg_0, _wgslsmith_sub_u32(var_0.c, var_0.c), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6794u), vec2<u32>(arg_2.c, 0u))) | arg_0));
    var var_2 = Struct_1(arg_2.a, _wgslsmith_f_op_f32(floor(arg_2.a.x)), ~(~(~4294967295u)), _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(0i, i32(-1i) * -1i)), -1i));
    let var_3 = select(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), countOneBits(var_0.c) > ~arg_0), all(global2[_wgslsmith_index_u32(arg_0, 17u)])), false);
    return ~arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global2 = array<vec3<bool>, 17>();
    global1 = array<Struct_1, 10>();
    global0 = array<i32, 15>();
    let var_0 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(23378u, 15u)], 0i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(88493u, 15u)], 0i), 20574i) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 1u, 14559u), vec4<u32>(13891u, 1908u, 4294967295u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -13920i, global0[_wgslsmith_index_u32(24467u, 15u)], -10656i), max(vec4<i32>(global0[_wgslsmith_index_u32(47641u, 15u)], u_input.a.x, -15298i, 26645i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], -2147483647i, global0[_wgslsmith_index_u32(51199u, 15u)], 1i))) ^ (vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(2606u, 15u)], u_input.a.x, global0[_wgslsmith_index_u32(82546u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(-global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])), firstTrailingBit(11430i) & _wgslsmith_div_i32(u_input.a.x, -32649i), _wgslsmith_div_i32(-u_input.a.x, ~u_input.a.x))), ~(firstTrailingBit(func_1(4294967295u, 254f, global1[_wgslsmith_index_u32(0u, 10u)], vec4<i32>(26338i, global0[_wgslsmith_index_u32(86444u, 15u)], -2147483647i, -29155i))) ^ vec4<i32>(global0[_wgslsmith_index_u32(0u, 15u)] | 45053i, 1i, ~306i, i32(-1i) * -1i)), vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), all(vec4<bool>(false, true, false, false)) && any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(-156f)) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(-562f, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -397f)), !all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(84604u, 4294967295u)), 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1703f + -254f), ~vec2<u32>(firstTrailingBit(1u), 1u), 0u, _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(-21722i, -5977i), i32(-1i) * -2147483647i), vec2<i32>(-u_input.a.x | ~8602i, _wgslsmith_dot_vec2_i32(~vec2<i32>(30349i, u_input.a.x), select(u_input.a, u_input.a, vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1101f * 1000f) - _wgslsmith_f_op_f32(1000f * 969f)), -453f)));
}

