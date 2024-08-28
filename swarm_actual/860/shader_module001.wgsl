struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 27106u, 1u), 751f, vec3<f32>(2469f, 910f, -565f), vec3<u32>(0u, 20908u, 1u));

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_1 = Struct_1(var_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f - var_0.c.x)))))), _wgslsmith_f_op_vec3_f32(exp2(var_0.c)), u_input.a);
    var_0 = Struct_1(min(_wgslsmith_clamp_vec3_u32(~var_0.d, vec3<u32>(var_0.d.x, 41982u, var_0.d.x), vec3<u32>(var_1.a.x, global0.d.x, var_1.d.x) & vec3<u32>(global0.d.x, 91950u, 4294967295u)), select(u_input.a & var_0.d, global0.d, select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))) >> (min(var_1.d, ~max(vec3<u32>(u_input.a.x, 0u, 3643u), u_input.a)) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2032f + -1004f) * global0.c.x)), vec3<f32>(-942f, _wgslsmith_f_op_f32(abs(-792f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.c.x)), global0.b))), vec3<u32>(4566u, global0.a.x, ~u_input.a.x));
    global1 = array<Struct_1, 8>();
    global0 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(0u, var_1.a.x, 67037u, var_1.a.x), vec4<u32>(var_0.a.x, var_0.d.x, var_1.d.x, 4294967295u))), vec4<u32>(var_1.a.x, var_0.d.x | 0u, select(0u, var_1.d.x, true), u_input.a.x))) | countOneBits(u_input.a.x >> (reverseBits(abs(u_input.a.x)) % 32u)), 8u)];
    return var_0.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec3<u32>(0u, ~global0.d.x, _wgslsmith_mult_u32(reverseBits(36811u), func_3()));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-201f * _wgslsmith_f_op_f32(-233f * 285f)), 784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)), -1649f))))));
    let var_2 = !select(vec2<bool>(false, true), vec2<bool>(any(vec3<bool>(false, true, true)) & all(vec3<bool>(false, true, false)), global0.c.x >= arg_1.b), vec2<bool>(false, _wgslsmith_f_op_f32(-arg_1.c.x) > arg_1.b));
    var var_3 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(7697i, arg_0.x, arg_0.x), vec3<i32>(2147483647i, arg_0.x, arg_0.x)), _wgslsmith_mod_i32(-54262i, arg_0.x), min(arg_0.x, arg_0.x)) & vec3<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 13617i, arg_0.x), vec4<i32>(-2147483647i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 0i)), firstLeadingBit(vec4<i32>(-1i, arg_0.x, 8284i, arg_0.x))), -34092i ^ max(arg_0.x, arg_0.x)), vec3<i32>(-1i) * -vec3<i32>(~2147483647i, arg_0.x, abs(arg_0.x)), vec3<i32>(0i, reverseBits(-48763i), _wgslsmith_add_i32(-2147483647i ^ _wgslsmith_div_i32(0i, arg_0.x), reverseBits(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(-1i, 9396i))))));
    var var_4 = vec2<bool>(var_2.x, var_2.x);
    return vec2<bool>(var_2.x, !var_2.x);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_0 = select(!vec2<bool>(any(func_2(vec2<i32>(1587i, -18605i), Struct_1(vec3<u32>(0u, 1u, 28249u), -352f, vec3<f32>(982f, global0.c.x, 981f), vec3<u32>(58012u, global0.a.x, 12525u)), global1[_wgslsmith_index_u32(global0.a.x, 8u)], global1[_wgslsmith_index_u32(global0.a.x, 8u)])), true | (414f >= global0.c.x)), select(vec2<bool>(true, true), vec2<bool>(!func_2(vec2<i32>(11282i, -10730i), Struct_1(u_input.a, -2028f, global0.c, vec3<u32>(25626u, 0u, 12102u)), Struct_1(global0.a, global0.b, global0.c, vec3<u32>(global0.a.x, 7914u, 4294967295u)), global1[_wgslsmith_index_u32(global0.d.x, 8u)]).x, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true), vec2<bool>(214f < global0.b, false));
    global1 = array<Struct_1, 8>();
    return global1[_wgslsmith_index_u32(92883u, 8u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = array<Struct_1, 8>();
    global0 = Struct_1(~u_input.a, func_1().b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(arg_1.c.x, 546f, 705f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -1031f, -596f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, arg_1.b, 707f) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_1.c)))))), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 4294967295u, 4294967295u), ~vec3<u32>(26838u, global0.a.x, global0.d.x)), 1u, arg_1.a.x), vec3<u32>(arg_1.a.x, 31336u, abs(~4294967295u)), !(!(!vec3<bool>(false, true, arg_0)))));
    let var_0 = -countOneBits(max(~vec2<i32>(0i, 1i), firstTrailingBit(vec2<i32>(1i, 1i))));
    let var_1 = max(firstTrailingBit(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.a.x, 0u, global0.a.x), vec4<u32>(u_input.a.x, 84282u, u_input.a.x, 1u)))), vec4<u32>(global0.d.x, 44907u, ~u_input.a.x, 4294967295u));
    let var_2 = func_1().c.x;
    return _wgslsmith_f_op_f32(exp2(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 7810u << (_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(u_input.a.x | u_input.a.x, ~1u, global0.d.x)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-159f, _wgslsmith_f_op_f32(func_4(select(false, true, true), func_1(), _wgslsmith_f_op_f32(sign(global0.b))))))));
    var var_2 = _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-28726i, 2147483647i, 2147483647i, 1i)), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 1i, -2147483647i)), vec3<i32>(1i, 1i, 1i)), -2147483647i, -8754i)) <= ~0i;
    let var_3 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, abs(var_3), _wgslsmith_sub_u32(global0.d.x | global0.d.x, u_input.a.x), 0u), vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 4294967295u, countOneBits(func_1().a.x), func_1().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -688f)))));
}

