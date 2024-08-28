struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_3 = Struct_3(vec4<f32>(1000f, 790f, -1032f, 133f), vec4<bool>(true, true, true, false), 1i, vec2<f32>(958f, 774f));

var<private> global1: u32;

var<private> global2: array<u32, 16> = array<u32, 16>(94698u, 4294967295u, 22992u, 4294967295u, 1u, 0u, 42295u, 39097u, 4294967295u, 1u, 1u, 4294967295u, 1u, 1u, 0u, 10833u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    var var_0 = global0.a.yyz;
    let var_1 = ~vec3<u32>(~(~(~1u)), _wgslsmith_mod_u32(~u_input.b, ~1u), ~(~(0u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46544u, 16u)], 16u)], 16u)] % 32u))));
    let var_2 = _wgslsmith_f_op_f32(max(-800f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_0.x, true))));
    var var_3 = Struct_2(62497i, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-589f + -627f) * -304f), _wgslsmith_f_op_f32(step(-849f, global0.d.x)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(f32(-1f) * -282f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-256f, 165f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(-1f)) + 1000f));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_3 {
    var var_0 = vec2<bool>(false, global0.b.x);
    var var_1 = u_input.b >> (_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(58079u, global2[_wgslsmith_index_u32(u_input.b, 16u)]) & vec2<u32>(19130u, 24258u)), vec2<u32>(select(global2[_wgslsmith_index_u32(~4294967295u, 16u)], _wgslsmith_mod_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 16u)]), false), countOneBits(abs(u_input.b)))) % 32u);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.a), !select(select(vec4<bool>(global0.b.x, global0.b.x, var_0.x, global0.b.x), vec4<bool>(var_0.x, false, var_0.x, true), global0.b.x), select(select(vec4<bool>(false, global0.b.x, false, global0.b.x), global0.b, global0.b.x), select(vec4<bool>(var_0.x, global0.b.x, var_0.x, var_0.x), global0.b, global0.b), any(global0.b)), vec4<bool>(var_0.x, global0.b.x || true, !var_0.x, all(global0.b.www))), ~_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_sub_i32(global0.c, global0.c)), _wgslsmith_mult_i32(countOneBits(arg_1.a), _wgslsmith_clamp_i32(12315i, global0.c, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-441f + -1046f))), -1432f)));
    global2 = array<u32, 16>();
    let var_3 = !vec4<bool>(!(_wgslsmith_f_op_f32(sign(arg_0)) <= _wgslsmith_f_op_f32(-var_2.a.x)), all(!(!vec3<bool>(global0.b.x, var_0.x, global0.b.x))), (_wgslsmith_add_i32(63176i, global0.c) | _wgslsmith_mult_i32(u_input.a, -2147483647i)) <= firstLeadingBit(countOneBits(var_2.c)), !(~var_2.c == global0.c));
    return Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(arg_1.b)), global0.a)), select(global0.b, var_2.b, global0.b), -23330i, var_2.a.yx);
}

fn func_1() -> Struct_3 {
    return func_3(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 469f))), Struct_2(_wgslsmith_div_i32(global0.c & global0.c, 3988i << (1u % 32u)), global0.a), -1780f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x)))), global0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(81502u, 16u)]), abs(vec2<u32>(6947u, u_input.b)))));
    global0 = func_1();
    global0 = func_3(_wgslsmith_f_op_f32(round(1490f)), Struct_2(global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), -624f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(func_2()), true)))) + -174f));
    let var_1 = func_1().b.x;
    var var_2 = Struct_1(~var_0.a);
    let var_3 = global0.b.x;
    let var_4 = max(vec4<i32>(~u_input.a, 2147483647i, -global0.c, _wgslsmith_div_i32(u_input.a, -23063i)), select(-select(vec4<i32>(-1i, global0.c, 2147483647i, u_input.a), vec4<i32>(102463i, u_input.a, 23928i, u_input.a), false), -countOneBits(vec4<i32>(1i, u_input.a, -24087i, 2147483647i)), select(!global0.b, vec4<bool>(false, var_1, true, true), vec4<bool>(var_1, global0.b.x, var_1, false)))) ^ _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c, -2147483647i, 25200i, global0.c), vec4<i32>(1i, 15778i, 2147483647i, u_input.a)) & vec4<i32>(-u_input.a, 45726i, reverseBits(8796i), global0.c >> (u_input.b % 32u)), vec4<i32>(func_1().c, min(-u_input.a, u_input.a ^ global0.c), ~min(global0.c, global0.c), -7499i));
    let var_5 = vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(~global2[_wgslsmith_index_u32(var_0.a.x, 16u)], ~1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b, 16u)], 24683u)), vec3<u32>(reverseBits(~global2[_wgslsmith_index_u32(4294967295u, 16u)]), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.b, u_input.b, u_input.b), vec4<u32>(var_2.a.x, var_0.a.x, u_input.b, 4294967295u))), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_0.a.x ^ 0u, 16u)], abs(global2[_wgslsmith_index_u32(66440u, 16u)])))), 0u << (abs(~4294967295u) % 32u), (_wgslsmith_mod_u32(abs(1u), 65679u) >> ((var_0.a.x ^ var_0.a.x) % 32u)) << (_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_2.a.x)) ^ vec2<u32>(1u, var_0.a.x), reverseBits(vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.b, 16u)]) << (vec2<u32>(66077u, u_input.b) % vec2<u32>(32u)))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) * _wgslsmith_div_f32(global0.d.x, global0.d.x))))));
}

