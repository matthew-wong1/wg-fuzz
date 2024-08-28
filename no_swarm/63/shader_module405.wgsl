struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1218f, 1343f, -605f, 1201f), Struct_1(-1205f, -1252f, 634f, 2489f));

var<private> global2: array<Struct_2, 5>;

var<private> global3: array<i32, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 2>();
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2003f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b - -314f), _wgslsmith_f_op_f32(-arg_0.d), arg_1.x | arg_1.x)))));
    global3 = array<i32, 4>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.a, vec2<bool>(true, true))));
    global3 = array<i32, 4>();
    return ~((firstTrailingBit(~98204u) | 1u) | 75627u);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = vec2<u32>(~102450u, arg_0.b);
    global3 = array<i32, 4>();
    var var_1 = arg_1;
    let var_2 = select(!global0[_wgslsmith_index_u32(~func_3(Struct_1(961f, arg_1, arg_1, arg_0.a.a), vec4<bool>(true, true, false, true), Struct_1(arg_1, arg_1, arg_0.a.d, arg_1)), 4u)], vec3<bool>(9105u != ~_wgslsmith_add_u32(var_0.x, 47900u), true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false))), false);
    var var_3 = _wgslsmith_f_op_f32(-arg_0.d);
    return arg_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(arg_1.x, 2u)], abs(func_2(Struct_3(Struct_1(arg_0.b, arg_2.b, arg_0.d, arg_2.d), 4294967295u, 1u, arg_2.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b), -473f), u_input.a.x)), ~(~arg_1.x ^ arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - arg_0.a)))));
    var var_1 = _wgslsmith_mod_vec2_i32(-abs(~vec2<i32>(u_input.a.x, -1i)), min(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global3[_wgslsmith_index_u32(arg_1.x, 4u)]), u_input.a, vec2<i32>(25449i, -16548i))), u_input.a));
    global0 = array<vec3<bool>, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c, -535f, -563f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-841f, -917f, arg_2.a)))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1671f, arg_0.c, 1000f)))));
    let var_3 = -(select(u_input.a.x, -(global3[_wgslsmith_index_u32(arg_1.x, 4u)] << (72637u % 32u)), arg_1.x >= countOneBits(arg_1.x)) | -var_1.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(0u, 2u)], ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(50444u, 1u, 0u), vec3<u32>(1u, 1u, 0u)) << (1u % 32u), _wgslsmith_mult_u32(1u, reverseBits(41673u)), ~countOneBits(0u), ~_wgslsmith_div_u32(23889u, 57557u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 44269u), vec2<u32>(1u, ~0u)), 2u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.a), var_0.a.b, _wgslsmith_f_op_f32(-func_1(func_1(func_1(Struct_1(-202f, 312f, -1400f, var_0.a.c), vec4<u32>(20534u, 0u, var_0.b, var_0.c), global1[_wgslsmith_index_u32(var_0.b, 2u)]).a, _wgslsmith_add_vec4_u32(vec4<u32>(1553u, var_0.b, 0u, 4294967295u), vec4<u32>(4294967295u, 77192u, 1u, 1u)), var_0.a).a, firstLeadingBit(vec4<u32>(0u, var_0.b, 0u, var_0.c)) ^ (vec4<u32>(4294967295u, 71941u, 1u, var_0.c) & vec4<u32>(4294967295u, var_0.c, 0u, 21476u)), Struct_1(-816f, _wgslsmith_f_op_f32(var_0.a.d - -1217f), _wgslsmith_f_op_f32(f32(-1f) * -641f), var_0.a.c)).d), -199f);
    var var_2 = -(~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 4u)], select(_wgslsmith_sub_i32(u_input.a.x, global3[_wgslsmith_index_u32(var_0.b, 4u)]), 10074i, all(vec2<bool>(true, false)))));
    let var_3 = Struct_1(var_0.d, var_1.c, -648f, var_0.a.a);
    var var_4 = firstTrailingBit(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b, 0u, var_0.b), vec3<u32>(var_0.c, var_0.b, 0u)), _wgslsmith_clamp_vec3_u32(max(abs(vec3<u32>(56765u, 56083u, var_0.c)), vec3<u32>(10228u, var_0.c, 17589u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, 23840u, var_0.b), vec3<u32>(var_0.b, 30742u, var_0.b))), countOneBits(firstLeadingBit(vec3<u32>(123316u, 66634u, 10566u))))));
    let var_5 = global0[_wgslsmith_index_u32(55312u >> ((var_4.x & max(firstLeadingBit(~63190u), ~var_4.x)) % 32u), 4u)];
    global2 = array<Struct_2, 5>();
    global1 = array<Struct_1, 2>();
    var_2 = abs(_wgslsmith_dot_vec3_i32(max(abs(~vec3<i32>(global3[_wgslsmith_index_u32(var_4.x, 4u)], u_input.a.x, global3[_wgslsmith_index_u32(0u, 4u)])), firstLeadingBit(vec3<i32>(16264i, u_input.a.x, -5963i))), vec3<i32>(-2147483647i, min(-16390i << (var_0.b % 32u), u_input.a.x), u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(select(vec3<i32>(-1i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 6849i, -68629i) | vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<bool>(true, var_5.x, var_5.x))), -_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.a.x, 73813i, u_input.a.x)), vec4<i32>(abs(-60382i), global3[_wgslsmith_index_u32(0u & var_4.x, 4u)], 1i, -1i), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, -1i, 17443i, -2147483647i)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 72382i, -1i)))), var_0.a.d, _wgslsmith_f_op_f32(-1210f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) * _wgslsmith_f_op_f32(var_1.b * 213f))))), vec4<u32>(_wgslsmith_sub_u32(var_0.b ^ firstLeadingBit(var_0.b), 43930u), abs(1u), ~var_4.x, _wgslsmith_mult_u32(select(select(33783u, var_4.x, true), select(0u, 53855u, true), true), var_0.b)));
}

