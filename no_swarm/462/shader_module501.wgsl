struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: Struct_1 = Struct_1(341f, vec2<u32>(33039u, 1u));

var<private> global2: array<vec4<u32>, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_sub_i32(45002i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~global0[_wgslsmith_index_u32(u_input.a, 4u)], _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(global1.b.x, 4u)], vec3<i32>(2147483647i, u_input.b, 1i))), -1i, 1i)) != u_input.b;
    global1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-406f)))), vec2<u32>(_wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u)));
    global2 = array<vec4<u32>, 7>();
    var var_1 = Struct_1(global1.a, global1.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, global1.a))))), _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.x, 38900u) >> (var_1.b % vec2<u32>(32u)), vec2<u32>(var_1.b.x, global1.b.x)));
    return _wgslsmith_mod_i32(~(u_input.b & -(u_input.b & u_input.b)), u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = select(59303i, func_3(), all(vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(true, true, false, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32((vec2<u32>(arg_0.b.x, arg_0.b.x) & arg_0.b) | abs(arg_0.b), select(vec2<u32>(1u, 4294967295u), global1.b, true)), _wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(0u), ~arg_0.b.x), global1.b)));
    var var_1 = global2[_wgslsmith_index_u32(1u, 7u)];
    var var_2 = select(arg_0.b.x, _wgslsmith_mod_u32(var_1.x >> (arg_0.b.x % 32u), ~global1.b.x), var_0 == arg_1.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(306f * _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_mult_vec2_u32(var_1.xy, _wgslsmith_add_vec2_u32(select(vec2<u32>(var_1.x, 4294967295u), ~vec2<u32>(53086u, 26558u), vec2<bool>(true, true)), ~var_1.wx)));
    return Struct_1(_wgslsmith_f_op_f32(floor(var_3.a)), ~(~firstTrailingBit(firstTrailingBit(arg_0.b))));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    return vec4<u32>(arg_0.b.x, 38801u, 0u, ~(arg_0.b.x ^ _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(arg_0.b.x, 69166u, 82927u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, 0u, global1.b.x), vec3<u32>(38889u, u_input.a, u_input.a)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(arg_0.x, u_input.a < ~(~26829u));
    global2 = array<vec4<u32>, 7>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.b, vec2<u32>(4294967295u, 1u)), ~vec2<u32>(70585u, arg_1.x))), ~32434u));
    let var_1 = vec3<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(-global1.a)))) + -1350f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2(func_2(Struct_1(718f, global1.b), arg_3), arg_3).a))));
    let var_2 = select(select(!vec2<bool>(false | var_0.x, !var_0.x), arg_0, all(!(!arg_0))), !vec2<bool>(arg_0.x, all(vec2<bool>(arg_0.x, var_0.x))), vec2<bool>(true, false));
    return Struct_1(global1.a, global1.b);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    global2 = array<vec4<u32>, 7>();
    global0 = array<vec3<i32>, 4>();
    global1 = func_2(arg_1, -(min(vec4<i32>(-1i, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, -14311i, -2147483647i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -47052i, 2147483647i, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    var var_0 = ~arg_1.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(809f)), ~vec2<u32>(u_input.a, abs(_wgslsmith_div_u32(global1.b.x, 46692u))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1359f, 2165f) + vec2<f32>(205f, 1125f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-129f, global1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1008f, var_1.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, -532f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 664f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, -715f) - vec2<f32>(304f, var_1.a)), vec2<f32>(339f, global1.a))))));
}

fn func_1() -> i32 {
    var var_0 = -1004f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global1.a - global1.a), ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(29251u, u_input.a), vec2<u32>(global1.b.x, 11587u))));
    var var_2 = Struct_1(global1.a, vec2<u32>(u_input.a, _wgslsmith_div_u32(var_1.b.x, countOneBits(countOneBits(global1.b.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_6(select(vec3<bool>(_wgslsmith_f_op_f32(var_1.a * global1.a) < _wgslsmith_f_op_f32(770f + var_1.a), _wgslsmith_f_op_f32(abs(469f)) > _wgslsmith_f_op_f32(-1609f - var_1.a), _wgslsmith_div_f32(var_1.a, 1680f) > _wgslsmith_f_op_f32(-global1.a)), vec3<bool>(true, select(true, all(vec4<bool>(true, false, false, true)), u_input.b > -2147483647i), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), Struct_1(-734f, countOneBits(vec2<u32>(~var_2.b.x, ~global1.b.x))), global1.b.x, func_5(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(global2[_wgslsmith_index_u32(61866u, 7u)]), vec4<u32>(var_1.b.x, var_1.b.x, var_2.b.x, global1.b.x)), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(43947u, 7u)], global2[_wgslsmith_index_u32(global1.b.x, 7u)]), 7u)]), vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -1985i, abs(u_input.b)), 1i), firstTrailingBit(vec4<i32>(-1i, 883i, -901i, u_input.b)) << (func_4(func_2(var_1, vec4<i32>(u_input.b, u_input.b, 1i, -7117i))) % vec4<u32>(32u)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(global1.a, -1833f)), vec2<u32>(45970u, 5032u));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 7>();
    var var_0 = func_1();
    var_0 = _wgslsmith_dot_vec2_i32(select(~(vec2<i32>(u_input.b, u_input.b) << (global1.b % vec2<u32>(32u))), ~vec2<i32>(u_input.b, u_input.b), true), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b))) >> ((_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global1.b.x, abs(11531u)), _wgslsmith_div_u32(~u_input.a, 4294967295u | global1.b.x), 4294967295u) & (_wgslsmith_div_u32(global1.b.x, ~1u) ^ ~1u)) % 32u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f - 741f)))) - global1.a), global1.b);
    var var_2 = ~(~u_input.a);
    var var_3 = func_5(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(false, true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec4<u32>(~func_5(vec2<bool>(true, false), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 23911u), global2[_wgslsmith_index_u32(global1.b.x, 7u)]), vec2<i32>(23449i, -1i), select(vec4<i32>(38568i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<bool>(false, true, false, true))).b.x, var_1.b.x, 0u << (~(~u_input.a) % 32u), global1.b.x), ~(((vec2<i32>(0i, 9079i) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) & vec2<i32>(u_input.b, 44277i)) << (((vec2<u32>(u_input.a, 23063u) >> (vec2<u32>(4294967295u, global1.b.x) % vec2<u32>(32u))) << (var_1.b % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, -1i, -22605i), abs(vec4<i32>(u_input.b, u_input.b, -1i, 15180i))), vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), max(u_input.b, 17922i), firstLeadingBit(u_input.b), -u_input.b)), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), select(vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -72747i, 2147483647i), vec4<bool>(true, true, false, false)))));
    var var_4 = _wgslsmith_f_op_f32(-global1.a);
    var var_5 = select(select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), false, 414f > var_1.a), !vec4<bool>(any(vec2<bool>(true, false)), false, true, all(vec2<bool>(false, true))), true), select(vec4<bool>(true, true, select(true, false, any(vec4<bool>(true, false, true, false))), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(select(false, false, true), all(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, false, false), true))), select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, false), !(-40442i == u_input.b)), vec4<bool>(true, true, true, true)));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(996f - var_3.a), true))))), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -763f), 336f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, select(var_1.b.x, var_3.b.x, any(vec4<bool>(var_5.x, false, true, var_5.x))), _wgslsmith_mod_u32(42498u, func_5(var_5.yy, vec4<u32>(var_3.b.x, 4294967295u, u_input.a, var_1.b.x), vec2<i32>(1i, 27291i), vec4<i32>(-2147483647i, -40845i, 698i, u_input.b)).b.x), global1.b.x) >> (~global2[_wgslsmith_index_u32(~var_3.b.x, 7u)] % vec4<u32>(32u)), ~4608i, ~(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), global0[_wgslsmith_index_u32(var_3.b.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]))));
}

