struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.c, 30u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a, ~(~var_0.a) & ~var_0.a), 30u)];
    global1 = array<vec4<bool>, 19>();
    global1 = array<vec4<bool>, 19>();
    global1 = array<vec4<bool>, 19>();
    return Struct_1(max(var_1.a, ~vec3<u32>(1u, var_1.a.x, 27672u)) & var_1.a, var_0.b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a.x;
    let var_1 = firstLeadingBit(vec2<u32>(u_input.b, ~countOneBits(_wgslsmith_dot_vec2_u32(arg_0.a.yz, arg_3.a.zx))));
    global0 = array<Struct_1, 30>();
    var var_2 = select(vec4<bool>(true, arg_1, (arg_1 & arg_1) & !(!arg_1), true), global1[_wgslsmith_index_u32(3560u, 19u)], any(select(select(vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), arg_1), 4294967295u > var_0), vec3<bool>(true, arg_1, false), true)));
    global1 = array<vec4<bool>, 19>();
    return Struct_1(select(~abs(~vec3<u32>(4294967295u, u_input.b, 1u)), arg_0.a, arg_1), arg_2.b);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 30>();
    global1 = array<vec4<bool>, 19>();
    var var_0 = func_3(Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(min(arg_0.b, arg_0.b))), !all(vec2<bool>(true, true)), func_2(_wgslsmith_mod_u32(24748u, u_input.c)), global0[_wgslsmith_index_u32(abs(select(4294967295u, ~53998u, true)), 30u)]);
    let var_1 = all(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), select(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(arg_0.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)])), vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true), select(true, var_0.b.x > arg_0.b.x, true))) && select(false, all(vec4<bool>(true, true, true, true)), !any(select(global1[_wgslsmith_index_u32(u_input.b, 19u)], vec4<bool>(true, false, false, true), false)));
    var var_2 = var_0.b;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 30>();
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-17543i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) & _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -28466i, u_input.a), vec3<i32>(46893i, u_input.a, u_input.a)), ~vec3<i32>(-11082i, 29419i, u_input.a)), min(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 20980i, u_input.a), vec3<i32>(-35951i, 0i, u_input.a))), min(-vec3<i32>(u_input.a, 0i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, u_input.a, 2147483647i)))), -2143i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a.x, u_input.c) & min(u_input.c, arg_0.a.x), ~min(arg_0.a.x, u_input.c)) % 32u));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_0.a.x, u_input.c), 1u, abs(arg_0.a.x)) ^ vec3<u32>(u_input.c, 4294967295u, u_input.c), ~vec3<u32>(max(6581u, 4294967295u), arg_0.a.x, min(0u, u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -533f), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f)), -1278f) + arg_0.b));
    global1 = array<vec4<bool>, 19>();
    return all(select(vec2<bool>(true, true), vec2<bool>(true, !(var_2.a.x > 1u)), true));
}

fn func_5(arg_0: bool, arg_1: bool) -> i32 {
    global1 = array<vec4<bool>, 19>();
    var var_0 = !(!arg_0);
    var_0 = func_4(func_2(_wgslsmith_add_u32(1u, firstTrailingBit(u_input.b))));
    global1 = array<vec4<bool>, 19>();
    global0 = array<Struct_1, 30>();
    return 12341i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(countOneBits(u_input.a), min(firstLeadingBit(u_input.a), func_5(func_4(func_1(global0[_wgslsmith_index_u32(u_input.b, 30u)])), false)), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2076f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-879f + 747f), _wgslsmith_f_op_f32(floor(1122f)))), true), u_input.a);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1215f))))));
    var_0 = vec4<i32>(0i, ~(_wgslsmith_div_i32(-u_input.a, -37821i) ^ u_input.a), min(func_5(true, any(global1[_wgslsmith_index_u32(1u, 19u)]) || true), -(~(u_input.a & u_input.a))), 80594i);
    global0 = array<Struct_1, 30>();
    var var_2 = !func_4(Struct_1(~(~vec3<u32>(u_input.b, u_input.c, u_input.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1045f, -1341f, -918f, 1770f)))));
    var_0 = ~(vec4<i32>(-1i) * -abs(select(vec4<i32>(u_input.a, 29796i, 37883i, u_input.a), vec4<i32>(var_0.x, 27684i, var_0.x, 31380i), true)));
    var var_3 = !(!all(vec3<bool>(select(false, true, true), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

