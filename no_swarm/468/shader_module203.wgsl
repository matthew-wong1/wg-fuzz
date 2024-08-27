struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 9>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_4) -> f32 {
    global0 = Struct_3(~0u);
    return arg_0.c.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(90589u, firstLeadingBit(global0.a)), 0u), 9u)];
    var var_1 = _wgslsmith_f_op_f32(sign(-815f));
    var_1 = var_0.c.x;
    let var_2 = 1305f;
    var_1 = var_0.c.x;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(375f)))), var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.x))) + 1662f)) + _wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c * var_0.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(310f, var_2), true))))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = Struct_3(32813u);
    var var_0 = vec4<f32>(-351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-613f)) * _wgslsmith_f_op_f32(arg_0 + arg_0)))), -134f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1246f)), _wgslsmith_f_op_f32(-arg_0)));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1304f, arg_0, -1266f, var_0.x)))))));
    var var_1 = Struct_4(-1i, u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.xz))), _wgslsmith_mult_i32(arg_1.a.b.x, min(~(-2500i), -47800i)));
    let var_2 = _wgslsmith_f_op_f32(abs(var_1.c.x));
    return -arg_1.a.b.x << ((_wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(arg_1.a.d.x, global0.a)), 49600u) | 1u) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    global1 = array<Struct_4, 9>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(207f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f * 325f) + _wgslsmith_f_op_f32(f32(-1f) * -997f)))))));
    var var_1 = Struct_3(_wgslsmith_mult_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u)), max(0u, _wgslsmith_add_u32(14333u, 78779u & u_input.a))));
    var_1 = Struct_3(abs(~13905u));
    let var_2 = Struct_2(Struct_1(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, true)), firstTrailingBit(~abs(vec4<i32>(arg_1.x, arg_1.x, -7225i, arg_1.x))), 43902u, ~(~vec4<u32>(arg_0, 6096u, var_1.a, global0.a) ^ countOneBits(vec4<u32>(var_1.a, var_1.a, 33539u, var_1.a)))));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(~_wgslsmith_dot_vec4_u32(var_2.a.d, vec4<u32>(var_1.a, var_2.a.d.x, 18000u, var_1.a)), global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), _wgslsmith_add_vec2_u32(vec2<u32>(41123u, 2704u), var_2.a.d.ww)), firstTrailingBit(0u)), var_2.a.d);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = Struct_1(select(vec4<bool>(arg_1.c.x > _wgslsmith_f_op_vec2_f32(func_2()).x, arg_1.b > ~u_input.a, false || any(vec4<bool>(false, false, false, true)), any(vec2<bool>(false, false))), vec4<bool>(true, !any(vec3<bool>(true, false, false)), true, all(vec2<bool>(true, true))), vec4<bool>(arg_1.c.x == _wgslsmith_f_op_f32(-arg_1.c.x), true, (1i >> (global0.a % 32u)) < -1165i, !all(vec2<bool>(false, true)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-38026i, 0i, -2147483647i, arg_1.d), firstTrailingBit(vec4<i32>(arg_1.a, 41621i, -11369i, -16131i))) & vec4<i32>(-40171i, ~arg_1.a, firstTrailingBit(arg_1.d), -3152i), abs(vec4<i32>(countOneBits(arg_1.a), func_3(-1090f, Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(arg_1.a, 0i, 0i, arg_1.d), 9444u, vec4<u32>(4553u, global0.a, 86042u, 0u))), 1u), arg_1.d, max(arg_1.a, 12983i))), vec4<i32>(arg_1.a, -firstLeadingBit(-30756i), 1i, 71134i)), global0.a, vec4<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), vec2<u32>(global0.a, 0u) ^ u_input.c)), 1u, ~u_input.a));
    var var_1 = Struct_4(arg_1.a, (u_input.b ^ firstTrailingBit(_wgslsmith_add_u32(global0.a, 15375u))) & 22372u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_1.c.x) - arg_1.c), arg_1.c)) - arg_1.c), -1i);
    global1 = array<Struct_4, 9>();
    global0 = Struct_3(21269u);
    let var_2 = abs(var_0.d.ww);
    return Struct_2(Struct_1(select(vec4<bool>(false, true, all(var_0.a.wzy), 2147483647i < var_0.b.x), select(var_0.a, !vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.a.x), select(select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, true)), !vec4<bool>(false, true, var_0.a.x, var_0.a.x), !var_0.a)), var_0.b, u_input.b & _wgslsmith_clamp_u32(global0.a, global0.a, var_1.b), ~vec4<u32>(var_2.x, _wgslsmith_clamp_u32(var_0.c, 4294967295u, u_input.b), arg_1.b, ~var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(5821u, 4873u)) ^ ~u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 4294967295u), firstTrailingBit(u_input.c))), 9u)])), _wgslsmith_f_op_f32(step(-891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -552f)))))));
    var var_1 = var_0.x;
    var var_2 = true && (true && !(!all(vec3<bool>(false, false, false))));
    var var_3 = 12833i;
    let var_4 = func_5(_wgslsmith_f_op_vec2_f32(func_2()), global1[_wgslsmith_index_u32(func_4(global0.a, -vec3<i32>(func_3(-189f, Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-1i, 72399i, 58121i, -1i), global0.a, vec4<u32>(global0.a, u_input.c.x, u_input.a, 1u))), 20378u), 1i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 39094i, 46191i), vec4<i32>(2147483647i, -6447i, -2147483647i, -11130i)))), 9u)]);
    var var_5 = u_input.b;
    global0 = Struct_3(~(~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * -119f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), var_0.x, !var_4.a.a.x))));
}

