struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(88732u, 4294967295u), vec2<u32>(90034u, 4294967295u), vec2<u32>(1u, 2210u), vec2<u32>(48534u, 4294967295u), vec2<u32>(4294967295u, 50415u), vec2<u32>(40907u, 4294967295u), vec2<u32>(60554u, 4294967295u), vec2<u32>(4294967295u, 88227u), vec2<u32>(0u, 101154u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(50842u, 4294967295u), vec2<u32>(14589u, 16650u), vec2<u32>(198u, 4294967295u), vec2<u32>(27109u, 62201u), vec2<u32>(28153u, 1u), vec2<u32>(1462u, 6861u), vec2<u32>(22144u, 38855u), vec2<u32>(34609u, 4294967295u), vec2<u32>(19690u, 5342u), vec2<u32>(6223u, 4294967295u));

var<private> global2: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    global0 = ~1i;
    global2 = array<vec4<bool>, 1>();
    var var_0 = Struct_2(u_input.b.x);
    var var_1 = true;
    var var_2 = Struct_2(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, ~(-633i), u_input.b.x), vec3<i32>(-1i) * -vec3<i32>(28407i, var_0.a, -1i)));
    return select(firstTrailingBit(~vec3<u32>(select(arg_0.x, 44889u, true), countOneBits(1u), 99457u ^ arg_0.x)), ~(~(~vec3<u32>(arg_0.x, arg_0.x, arg_0.x))) << (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(arg_0.x, arg_0.x)), _wgslsmith_add_u32(1u & arg_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), 0u) % vec3<u32>(32u)), all(select(global2[_wgslsmith_index_u32(~(~arg_0.x), 1u)], global2[_wgslsmith_index_u32(countOneBits(~35599u), 1u)], select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 1u)], select(global2[_wgslsmith_index_u32(arg_0.x, 1u)], vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true))));
}

fn func_2() -> u32 {
    global2 = array<vec4<bool>, 1>();
    global2 = array<vec4<bool>, 1>();
    global1 = array<vec2<u32>, 21>();
    global0 = _wgslsmith_sub_i32(-u_input.a, min(~(-27177i), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(1i, u_input.a, 187i), vec3<i32>(u_input.a, u_input.b.x, 1i), true), -vec3<i32>(1i, -28866i, u_input.a) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -16676i, u_input.a), vec3<i32>(-2147483647i, 30570i, -2147483647i), vec3<i32>(u_input.b.x, -1i, -1i)))));
    global1 = array<vec2<u32>, 21>();
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~113499u, abs(25666u), _wgslsmith_clamp_u32(0u, 4294967295u, 1u)), select(min(vec3<u32>(4294967295u, 15533u, 8115u), vec3<u32>(91845u, 4294967295u, 59581u)), func_3(vec2<u32>(22242u, 59797u)), false)), select(vec3<u32>(~56788u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]), ~0u), vec3<u32>(1u, 1u, 1u), all(vec2<bool>(true, false)) & any(vec3<bool>(true, true, true)))), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(0u), ~4294967295u), 1u, 76644u));
}

fn func_1() -> u32 {
    var var_0 = 1u;
    var var_1 = Struct_1(u_input.b);
    var var_2 = select(vec3<bool>(true, all(global2[_wgslsmith_index_u32(func_2(), 1u)]), !(~(-4050i) <= abs(var_1.a.x))), vec3<bool>(true, true, true), select(select((var_1.a.x <= u_input.a) && all(global2[_wgslsmith_index_u32(1u, 1u)]), true, true), false, true));
    var var_3 = Struct_1(_wgslsmith_mod_vec2_i32(abs(~(~var_1.a)), (~var_1.a >> (_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(103491u, 21u)], global1[_wgslsmith_index_u32(46773u, 21u)]) % vec2<u32>(32u))) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))));
    var_3 = Struct_1(~vec2<i32>(u_input.b.x, -(~2147483647i)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 1>();
    let var_0 = _wgslsmith_clamp_u32(1u, 0u, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(30935u, 51595u, 15031u), vec3<u32>(42716u, 1u, 11902u)), vec3<u32>(_wgslsmith_clamp_u32(0u, 72769u, 13560u), func_1(), 1u))));
    let var_1 = Struct_2(u_input.a);
    let var_2 = Struct_2(var_1.a);
    var var_3 = _wgslsmith_f_op_f32(step(-211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f * _wgslsmith_div_f32(-763f, _wgslsmith_f_op_f32(trunc(778f)))))));
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -931f);
    let var_4 = (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(16163u, 17594u, var_0), vec3<u32>(var_0, 14174u, var_0))) | vec3<u32>(~(var_0 & 46905u), _wgslsmith_clamp_u32(~68308u, ~21430u, ~var_0), var_0)) << (vec3<u32>(reverseBits(countOneBits(0u) ^ _wgslsmith_mult_u32(var_0, var_0)), firstTrailingBit(min(~var_0, var_0)), _wgslsmith_sub_u32(~1u, var_0)) % vec3<u32>(32u));
    let var_5 = -u_input.b;
    var_3 = -581f;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b ^ var_5, 4294967295u);
}

