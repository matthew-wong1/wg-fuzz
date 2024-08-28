struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(4294967295u, 89670u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 16269u), vec2<u32>(32135u, 46112u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(46522u, 0u), vec2<u32>(49364u, 7148u), vec2<u32>(62066u, 0u), vec2<u32>(4715u, 0u), vec2<u32>(8487u, 38969u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 25016u), vec2<u32>(1u, 10330u), vec2<u32>(22302u, 40977u), vec2<u32>(6880u, 68339u), vec2<u32>(72825u, 29048u), vec2<u32>(50657u, 17071u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1855u, 1u), vec2<u32>(1u, 0u), vec2<u32>(39020u, 21513u), vec2<u32>(52665u, 21760u), vec2<u32>(22573u, 47986u));

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(39181i, 65403i)), Struct_1(vec2<i32>(-24959i, 2147483647i)), Struct_1(vec2<i32>(0i, 862i)), Struct_1(vec2<i32>(20549i, -21341i)), Struct_1(vec2<i32>(-22656i, 1i)), Struct_1(vec2<i32>(-40334i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(2147483647i, -3573i)), Struct_1(vec2<i32>(i32(-2147483648), 8326i)), Struct_1(vec2<i32>(-56832i, 1i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(-1i, 3295i)), Struct_1(vec2<i32>(1i, -6851i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -30468i)), Struct_1(vec2<i32>(19438i, i32(-2147483648))), Struct_1(vec2<i32>(26848i, 0i)), Struct_1(vec2<i32>(-41566i, 5604i)), Struct_1(vec2<i32>(1791i, -17711i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(-21515i, 16816i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 22>();
    var var_0 = global2[_wgslsmith_index_u32(23686u, 15u)];
    let var_1 = _wgslsmith_add_u32((_wgslsmith_sub_u32(~70556u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] ^ 26898u) ^ 1u) << (firstLeadingBit(_wgslsmith_add_u32(63061u, 7869u)) % 32u), ~min(1u, ~max(global2[_wgslsmith_index_u32(2480u, 15u)], 0u)));
    global1 = array<vec2<u32>, 27>();
    let var_2 = any(vec2<bool>(true, true));
    return global0.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1421f), -197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1387f, 589f, all(vec2<bool>(false, true))))), 418f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1427f, 1013f, 356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global0.x))), vec4<f32>(1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - 2389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0.a.x, 49978i, arg_0.a.x, u_input.b), Struct_1(arg_0.a))) * -390f), _wgslsmith_f_op_f32(f32(-1f) * -964f)))));
    global3 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x | u_input.d.x, ~global2[_wgslsmith_index_u32(53259u, 15u)], 4294967295u), 15u)], _wgslsmith_clamp_u32(~u_input.d.x, abs(1u), ~(~u_input.d.x))), u_input.d.zy);
    let var_1 = ~vec2<u32>(4294967295u, 0u);
    var var_2 = Struct_1(firstLeadingBit(arg_0.a));
    return all(!(!vec3<bool>(any(vec2<bool>(true, true)), u_input.d.x != 62389u, false)));
}

fn func_1() -> vec2<bool> {
    var var_0 = select(vec3<bool>(true, func_2(Struct_1(-u_input.c), ~(i32(-1i) * -48147i)), any(vec4<bool>(true, true, true, true))), vec3<bool>(!all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(51466u, 15u)], u_input.d.x, 1u, 4294967295u) >> (u_input.d % vec4<u32>(32u)), vec4<u32>(14094u, u_input.d.x, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)])) <= 42582u, 67434u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 4294967295u) >> (u_input.d.wyy % vec3<u32>(32u)), u_input.d.yxw)), any(vec2<bool>(false, !all(vec4<bool>(false, true, false, false)))));
    let var_1 = Struct_1(u_input.c);
    let var_2 = global0.x;
    let var_3 = vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, -17402i), vec3<i32>(u_input.b, u_input.b, u_input.c.x), vec3<i32>(-1i, -14800i, 36250i))), ~(vec3<i32>(u_input.c.x, var_1.a.x, var_1.a.x) & vec3<i32>(u_input.c.x, u_input.c.x, 0i))) | firstLeadingBit(_wgslsmith_sub_i32(-var_1.a.x, 1i)), 6407i, ~var_1.a.x);
    let var_4 = Struct_1(vec2<i32>(var_1.a.x, _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_mod_i32(-31052i, 1i)))));
    return select(vec2<bool>(any(select(vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true)), any(var_0.zy))), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(all(var_0.xx), !var_0.x)), select(var_0.zy, !var_0.yz, select(select(var_0.zy, vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, true), false & var_0.x)), all(vec4<bool>(var_0.x, false, true, true))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-506f + global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(-1000f, global0.x)), global0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(396f, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) - _wgslsmith_f_op_f32(select(1334f, global0.x, var_0.x))), global0.x, global0.x)) * vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.x)), global0.x, false)), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(min(-1430f, 1316f))));
    var var_1 = -1795f;
    global1 = array<vec2<u32>, 27>();
    let var_2 = Struct_1(vec2<i32>(abs(_wgslsmith_div_i32(u_input.a, u_input.a)), -(~1i)) << (u_input.d.zy % vec2<u32>(32u)));
    global1 = array<vec2<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.d.xx, abs(u_input.d.xy)));
}

