struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(8664u, 45472u), vec2<u32>(32983u, 0u), vec2<u32>(330u, 10784u), vec2<u32>(21719u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(44304u, 0u), vec2<u32>(0u, 63911u));

var<private> global2: Struct_1 = Struct_1(4294967295u, 1u, -1i, 657f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.d, global2.d)));
    var var_1 = 64607u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), 618f) + 1164f) - -769f));
    var_1 = firstLeadingBit(20772u);
    var_1 = select(~(~(~global2.b) & _wgslsmith_div_u32(min(1u, 1u), 1u)), ~select(0u, 24029u << (global2.b % 32u), true) >> (u_input.c % 32u), any(vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true, true, true)));
    return global2.d;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(957f - 1844f), -1229f, _wgslsmith_f_op_f32(func_3()))) - vec3<f32>(global2.d, _wgslsmith_f_op_f32(exp2(arg_0.c.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.d), _wgslsmith_f_op_f32(1028f * 1000f)) * arg_0.c.d)));
    let var_1 = arg_0;
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(arg_1) ^ 1u, 38680u & max(min(global2.a, arg_0.c.a), ~17163u)), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(min(4294967295u, 36537u), u_input.c), 7u)], reverseBits(vec2<u32>(~u_input.c, 81702u))));
    let var_4 = -2147483647i;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    var var_0 = arg_0.c;
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(594f, arg_1.d, -574f, var_0.d) - _wgslsmith_f_op_vec4_f32(-arg_0.a))), _wgslsmith_mult_i32(countOneBits(0i), max(-1i, _wgslsmith_div_i32(arg_0.c.c, arg_0.c.c))), func_2(Struct_2(vec4<f32>(416f, 927f, 516f, -896f), global2.c, func_2(arg_0, 1u).c), 1u).c), ~u_input.c | arg_1.a);
    let var_2 = var_1.c.d;
    return select(vec3<bool>(any(select(select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, true, true), vec3<bool>(true, arg_2, arg_2)), !vec3<bool>(arg_2, true, true), true)), false, !(!arg_2)), vec3<bool>(true, true, true), arg_2);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_2 {
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    var var_0 = select(any(func_4(func_2(Struct_2(vec4<f32>(arg_0.d, 219f, global2.d, -634f), -5532i, arg_0), firstTrailingBit(14982u)), arg_0, !all(vec2<bool>(false, false)), vec2<i32>(~global2.c, -1i))), true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = false;
    global1 = array<vec2<u32>, 7>();
    return Struct_2(vec4<f32>(func_2(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-595f, 924f, 494f, global2.d), vec4<f32>(global2.d, -2029f, arg_0.d, 787f)), ~global2.c, arg_0), ~func_2(Struct_2(vec4<f32>(737f, 138f, -316f, arg_0.d), 1i, arg_0), 63322u).c.a).c.d, _wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-func_2(Struct_2(vec4<f32>(global2.d, global2.d, 383f, global2.d), u_input.a.x, Struct_1(global2.a, global2.b, u_input.b.x, global2.d)), 1u).a.x))), _wgslsmith_f_op_f32(ceil(global2.d))), select(43668i, u_input.d, any(vec4<bool>(all(vec3<bool>(var_1, var_1, var_1)), true, var_1, all(vec3<bool>(true, var_1, false))))), Struct_1(0u, _wgslsmith_mod_u32(~4294967295u, 9616u), ~(~(~2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-373f - _wgslsmith_f_op_f32(-180f + arg_0.d)), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(-global2.d);
    var var_1 = func_1(Struct_1(global2.a, ~(~3245u), global2.c, global2.d), ~global2.b, _wgslsmith_clamp_u32(global2.a, u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(9772u, 3702u, 1u, u_input.c), vec4<u32>(global2.b, 0u, 1u, 1u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1769f)) + _wgslsmith_f_op_f32(abs(var_1.c.d)))))) - var_1.a.x);
    let var_3 = var_1.c;
    var_1 = Struct_2(vec4<f32>(-975f, -533f, -1445f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) + func_1(var_1.c, u_input.c, u_input.c).a.x)))), 2147483647i, Struct_1(3322u, var_3.b, u_input.d, -1122f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 8u)])) * _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(var_1.c.b, 8u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(Struct_2(vec4<f32>(326f, 494f, 627f, -709f), var_1.c.c, var_1.c), 32717u).a.wzy)))), var_1.c.c, vec4<i32>(_wgslsmith_clamp_i32(global2.c, 1i, _wgslsmith_add_i32(var_3.c, 1i)), _wgslsmith_clamp_i32(max(u_input.d, -2173i), var_1.c.c, 1i), global2.c, global2.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, var_3.d)), _wgslsmith_f_op_f32(var_3.d * var_0))), _wgslsmith_f_op_f32(step(-514f, var_0)), _wgslsmith_f_op_f32(-var_1.c.d), -1000f), _wgslsmith_add_u32(var_3.a, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_1.c.b), reverseBits(4468u), _wgslsmith_add_u32(4294967295u, var_3.b)), abs(~vec3<u32>(global2.b, global2.b, global2.b)))));
}

