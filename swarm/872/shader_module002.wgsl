struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: f32 = -1508f;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(false, true), Struct_2(Struct_1(vec4<i32>(1i, 6047i, 23449i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -35564i, 0i))), Struct_2(Struct_1(vec4<i32>(-17509i, 2147483647i, 0i, -1i)), Struct_1(vec4<i32>(0i, 22441i, -46440i, 8890i))), 0u);

var<private> global3: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(false, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(false, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(true, false)), Struct_5(vec2<bool>(true, true)), Struct_5(vec2<bool>(true, true)));

var<private> global4: array<i32, 5> = array<i32, 5>(0i, 1i, -1i, -11571i, 1i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, u_input.a), 15u)], 14u)];
    global3 = array<Struct_5, 14>();
    var var_1 = global2.c;
    var var_2 = firstLeadingBit(vec2<u32>(firstLeadingBit(~(~0u)), 27493u));
    let var_3 = _wgslsmith_f_op_f32(min(642f, 1808f));
    return !(!(!(!global2.a)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    global4 = array<i32, 5>();
    let var_0 = Struct_3(select(!(!(!vec2<bool>(global2.a.x, global2.a.x))), select(func_3(countOneBits(vec3<u32>(global2.d, 0u, 4294967295u))), !func_3(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 3100u)), global2.a.x), select(select(vec2<bool>(false, true), vec2<bool>(global2.a.x, arg_0), global2.a), global2.a, select(!global2.a, !vec2<bool>(arg_0, arg_0), select(vec2<bool>(global2.a.x, true), global2.a, vec2<bool>(global2.a.x, true))))), global2.c, global2.c, u_input.a);
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global4 = array<i32, 5>();
    return Struct_1(vec4<i32>(-global2.b.b.a.x, ~var_0.b.b.a.x, global4[_wgslsmith_index_u32(u_input.a, 5u)], -(~(-var_0.b.b.a.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = ~(vec3<u32>(4294967295u | ~global2.d, 36545u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(54421u, global2.d, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30136u, 15u)], 15u)], 4294967295u)))) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 15u)], u_input.a, 5102u), vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    var var_1 = Struct_3(global2.a, global2.b, Struct_2(arg_1, func_2(_wgslsmith_f_op_f32(min(arg_0, -836f)) >= _wgslsmith_f_op_f32(arg_0 * -660f), _wgslsmith_div_vec3_f32(vec3<f32>(-1755f, -326f, arg_0), vec3<f32>(arg_0, 1106f, arg_0)))), global2.d);
    let var_2 = _wgslsmith_clamp_vec4_i32(min(arg_1.a, -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, arg_1.a.x, -2147483647i, 4585i) | vec4<i32>(21149i, global4[_wgslsmith_index_u32(80554u, 5u)], -6461i, -27723i), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global4[_wgslsmith_index_u32(4294967295u, 5u)], 1i, arg_1.a.x), arg_1.a))), func_2(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 781f, arg_0))))))).a, global2.b.a.a);
    let var_3 = var_1.a.x;
    var var_4 = ~(~_wgslsmith_dot_vec4_i32(~(-global2.b.a.a), vec4<i32>(firstTrailingBit(arg_1.a.x), countOneBits(global2.c.a.a.x), 51714i, arg_1.a.x)));
    return Struct_3(vec2<bool>(any(!(!vec4<bool>(global2.a.x, global2.a.x, false, true))), true), global2.b, var_1.b, _wgslsmith_div_u32(var_0.x, firstLeadingBit(_wgslsmith_mod_u32(28421u, 4294967295u))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, -1990f)), vec2<f32>(-1509f, -1967f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1388f, -276f), vec2<f32>(1582f, -1663f))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1320f, 609f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-327f, -909f))), false)))))));
    var var_1 = global2.c;
    global2 = func_4(var_0.x, func_2(-166f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(1632f - -406f), var_0.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, -506f), vec3<f32>(572f, var_0.x, 790f))))))), -38475i);
    let var_2 = 23762u;
    let var_3 = func_4(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -507f)), Struct_1(-global2.c.a.a), select(28411i, 0i, true));
    return func_4(184f, var_3.b.a, 1i).c;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 5>();
    global2 = Struct_3(vec2<bool>(any(select(select(vec3<bool>(true, global2.a.x, false), vec3<bool>(false, false, global2.a.x), true), vec3<bool>(global2.a.x, global2.a.x, global2.a.x), select(vec3<bool>(false, global2.a.x, false), vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(true, global2.a.x, false)))), false), func_1(), func_1(), 87044u);
    let var_0 = -1629f;
    global3 = array<Struct_5, 14>();
    var var_1 = global2.c;
    var var_2 = global2.a.x;
    global2 = func_4(_wgslsmith_f_op_f32(-var_0), Struct_1(func_1().a.a), var_1.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<u32>(~(~(~22509u)), firstLeadingBit(max(global2.d, global0[_wgslsmith_index_u32(~10522u, 15u)])), ~max(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 15u)]), 4294967295u), abs(_wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)])) & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, reverseBits(u_input.a), countOneBits(5136u)), 15u)]), countOneBits(_wgslsmith_mod_u32(~38947u, 55059u)), _wgslsmith_mult_u32(1u, u_input.a), 683f);
}

