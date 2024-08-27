struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(1i, 37487i, 1i), vec3<i32>(-1i, 2147483647i, -2157i), vec3<i32>(-41732i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -14798i, 0i), vec3<i32>(28965i, 1i, i32(-2147483648)), vec3<i32>(1i, -6592i, -49699i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-32356i, -3836i, -1i), vec3<i32>(11841i, -21833i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global0 = array<vec3<bool>, 18>();
    var var_0 = Struct_2(-2147483647i, Struct_1(arg_0.b, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, 0u, arg_3.b.x)), reverseBits(vec3<u32>(90912u, 0u, 23374u)))), 31724u, arg_2.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1847f + 2038f))));
    global0 = array<vec3<bool>, 18>();
    let var_1 = 995f;
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x, 51043u), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_0.b.x, 4294967295u, 0u, arg_3.a.x)), vec4<u32>(var_0.c, 4294967295u, arg_3.a.x, 4294967295u) >> (vec4<u32>(u_input.a.x, 1u, arg_0.b.x, arg_3.b.x) % vec4<u32>(32u))), vec4<u32>(10406u, 1u, ~var_0.b.b.x, ~70571u)), vec4<u32>(20659u, arg_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4979u, 1u, 4294967295u), ~vec4<u32>(u_input.a.x, arg_0.a.x, var_0.c, 4294967295u)), reverseBits(~var_0.b.b.x))), select(~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.b.x, u_input.a.x, arg_3.a.x, 4294967295u), vec4<u32>(26238u, 20039u, 161u, 1u)), ~vec4<u32>(u_input.a.x, 4294967295u, 23822u, 1u)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_0.a.x, 4294967295u, var_0.b.a.x, arg_0.a.x)), select(~vec4<u32>(54813u, 4294967295u, 7653u, u_input.a.x), vec4<u32>(51751u, 9694u, arg_3.a.x, 0u) | vec4<u32>(arg_0.b.x, 1u, arg_0.a.x, var_0.b.b.x), vec4<bool>(false, false, true, true))), vec4<bool>(any(vec2<bool>(true, true)), select(arg_2.x > arg_1, true, true), any(select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(arg_3.b.x, 18u)], vec3<bool>(true, true, true))), 1f >= _wgslsmith_f_op_f32(round(var_0.e)))));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(0i, ~countOneBits(-var_0.d.x)), countOneBits(select(vec2<i32>(-35668i, 2147483647i), var_0.d, false) ^ ~vec2<i32>(arg_2.x, var_0.a)) << (min(~u_input.a.xy | ~arg_3.b.xy, ~arg_0.a.xz) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    let var_0 = vec3<i32>((i32(-1i) * -1i) | (-55963i | ~func_3(Struct_1(vec3<u32>(98756u, 4294967295u, arg_0.x), vec3<u32>(u_input.a.x, 27487u, 1u)), -2147483647i, global1[_wgslsmith_index_u32(41669u, 9u)], Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 25277u), u_input.a))), _wgslsmith_dot_vec3_i32(firstTrailingBit(global1[_wgslsmith_index_u32(arg_0.x, 9u)]), max(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 9u)] >> (~arg_0 % vec3<u32>(32u)), ~(-global1[_wgslsmith_index_u32(4294967295u, 9u)]))), 2147483647i);
    global0 = array<vec3<bool>, 18>();
    let var_1 = Struct_1(reverseBits(vec3<u32>(4294967295u, ~(97339u | u_input.a.x), u_input.a.x | ~arg_0.x)), u_input.a);
    global1 = array<vec3<i32>, 9>();
    let var_2 = Struct_2(_wgslsmith_mult_i32(-25275i, -_wgslsmith_sub_i32(var_0.x, i32(-1i) * -17780i)), var_1, var_1.a.x, select(var_0.xz, vec2<i32>(1i, abs(var_0.x)), select(vec2<bool>(false, -2147483647i == var_0.x), vec2<bool>(arg_0.x != var_1.b.x, u_input.a.x >= arg_0.x), true)), _wgslsmith_f_op_f32(1159f + 212f));
    return reverseBits(_wgslsmith_div_vec4_u32(~(~(~vec4<u32>(var_2.c, var_1.a.x, arg_0.x, arg_0.x))), vec4<u32>(arg_0.x, _wgslsmith_mult_u32(var_1.a.x | 28290u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), arg_0)), 0u, ~22108u)));
}

fn func_1() -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(func_2(firstLeadingBit(u_input.a)), ~(~vec4<u32>(16754u, 11637u, u_input.a.x, u_input.a.x))), vec4<u32>(20058u, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 18885u, 21587u))), ~43005u ^ ~u_input.a.x, func_2(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, u_input.a.x))).x)), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.a.x, u_input.a.x, 26426u, 63703u), vec4<u32>(1u, 93368u, 70336u, u_input.a.x), false) | min(abs(vec4<u32>(u_input.a.x, u_input.a.x, 46168u, u_input.a.x)), select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), vec4<u32>(12275u, u_input.a.x, 1u, u_input.a.x), vec4<bool>(true, false, false, true))), vec4<u32>(u_input.a.x, ~(~u_input.a.x), u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 9>();
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    global1 = array<vec3<i32>, 9>();
    global1 = array<vec3<i32>, 9>();
    global1 = array<vec3<i32>, 9>();
    let var_0 = 1i;
    global0 = array<vec3<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-282f, var_0, _wgslsmith_div_vec4_u32(abs(func_1()) & select(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, 45583u, u_input.a.x), func_2(vec3<u32>(1u, u_input.a.x, u_input.a.x)), all(vec2<bool>(false, true))), ~vec4<u32>(68410u, 4294967295u, u_input.a.x, 27927u) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(64074u, 1u, 0u, 1u), firstLeadingBit(vec4<u32>(u_input.a.x, 0u, 5797u, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, 39426u, 3489u))));
}

