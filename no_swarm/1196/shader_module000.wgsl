struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(203f, -194f), vec4<f32>(1000f, -328f, 1940f, 491f), 0u, 1617u, vec2<i32>(1i, -28526i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(~vec2<i32>(48527i, u_input.b), (vec2<i32>(u_input.b, u_input.b) | vec2<i32>(1i, u_input.b)) & max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), vec2<i32>(15617i, u_input.b));
    var var_1 = arg_0;
    var_1 = Struct_2(select(vec2<u32>(_wgslsmith_mult_u32(arg_2, 37335u), _wgslsmith_add_u32(select(arg_0.a.x, 1u, arg_3), min(4294967295u, 32559u))), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 59689u), vec2<u32>(130152u, 4294967295u))), true));
    var_1 = arg_0;
    global0 = array<Struct_1, 1>();
    return ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(30323u, 49488u, 7080u, arg_2), vec4<u32>(9046u, arg_1, arg_2, 4294967295u) ^ vec4<u32>(var_1.a.x, u_input.a, 2839u, u_input.c))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a ^ func_3(Struct_2(vec2<u32>(u_input.a, u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(26130u, u_input.c, u_input.c)), _wgslsmith_sub_u32(u_input.a, 9141u), any(vec4<bool>(false, false, true, false))), ~u_input.c), ~u_input.c);
    var var_1 = countOneBits(vec2<u32>(u_input.a, 1u) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(37372u, 89389u), vec2<u32>(u_input.a, 0u), vec2<bool>(false, false)), ~vec2<u32>(u_input.a, 27602u)) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), abs(~(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(u_input.a, u_input.c)))) % vec2<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(389f + -690f), _wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-261f, -771f))) + vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1000f)), _wgslsmith_f_op_f32(trunc(-2328f)), 1114f, -271f) - vec4<f32>(1f, 1f, 1f, 1f)), abs(var_1.x), ~4294967295u, ~select(select(vec2<i32>(14749i, 0i) | vec2<i32>(u_input.b, 34457i), min(vec2<i32>(24108i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, true)), vec2<i32>(-1i) * -vec2<i32>(u_input.b, -2147483647i), vec2<bool>(true, true)));
    var_2 = global0[_wgslsmith_index_u32(23496u, 1u)];
    let var_3 = true;
    return ~(~vec2<u32>(4294967295u, 1u) >> (~_wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, var_1.x), vec2<u32>(27318u, var_2.d), var_3), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(1u, var_2.c))) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = arg_3;
    global0 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(ceil(1f));
    var var_2 = u_input.b;
    var var_3 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(0u, arg_3.a.x)), vec2<u32>(u_input.c, 10038u)), vec2<u32>(arg_1.a.x, ~0u)), func_2()));
    return ~vec2<u32>(var_0.a.x, ~73967u) & vec2<u32>(select(23945u, abs(39721u) << (reverseBits(u_input.a) % 32u), false), arg_2.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(441f, 1000f))))), 807f));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(-var_0.x)), 1663f, var_0.x, _wgslsmith_f_op_f32(-1366f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(933f, -702f, var_0.x, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -1000f, 1000f, var_0.x))))));
    global0 = array<Struct_1, 1>();
    let var_2 = 4294967295u;
    var var_3 = arg_1;
    return StorageBuffer(~vec3<u32>(arg_0.x, ~countOneBits(arg_1.a.x), _wgslsmith_dot_vec2_u32(~arg_0, vec2<u32>(u_input.a, arg_0.x))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(countOneBits(u_input.c) == _wgslsmith_add_u32(u_input.c, u_input.c), select(true, any(vec4<bool>(false, false, true, true)), true)), vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)), false), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), true)));
    let var_1 = !(~u_input.c >= (u_input.a | ~_wgslsmith_mult_u32(u_input.c, u_input.a)));
    let x = u_input.a;
    s_output = func_4(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 30733u)) ^ _wgslsmith_sub_vec2_u32(func_1(false, Struct_2(vec2<u32>(u_input.a, u_input.a)), Struct_2(vec2<u32>(u_input.a, u_input.c)), Struct_2(vec2<u32>(u_input.a, u_input.a))), vec2<u32>(4294967295u, 34731u))), Struct_2(firstLeadingBit(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 5273u), vec2<u32>(23880u, 84094u))))));
}

