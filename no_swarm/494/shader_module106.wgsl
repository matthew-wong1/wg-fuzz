struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-9701i, 34741i, 22841i, 47784i), vec4<f32>(-485f, -267f, 1600f, -1000f), Struct_2(vec4<f32>(-623f, -2326f, 1000f, 923f), Struct_1(i32(-2147483648), 1u)), vec2<f32>(-2580f, -647f), 40079i);

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(i32(-2147483648), 1u), Struct_1(1339i, 1u), Struct_1(29441i, 0u), Struct_1(0i, 1u), Struct_1(23464i, 1u), Struct_1(-1i, 28829u), Struct_1(i32(-2147483648), 4294967295u), Struct_1(0i, 8518u), Struct_1(-62223i, 42338u), Struct_1(-1i, 38661u), Struct_1(2147483647i, 1u), Struct_1(-46831i, 20701u), Struct_1(-48881i, 1u), Struct_1(-26015i, 8009u), Struct_1(523i, 5687u), Struct_1(-25497i, 92151u), Struct_1(7423i, 1u), Struct_1(38409i, 4294967295u), Struct_1(-2267i, 1u), Struct_1(25306i, 4294967295u), Struct_1(i32(-2147483648), 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_add_vec2_i32(~(-global0.a.yz), _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(global0.a.wx, -vec2<i32>(0i, u_input.b)), global0.a.xw));
    var_0 = global0.a.wx;
    global1 = array<Struct_2, 28>();
    var var_1 = firstLeadingBit(global0.c.b.b);
    let var_2 = global1[_wgslsmith_index_u32(1u, 28u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1017f)), 1989f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = global0.e;
    return ~vec2<i32>(arg_1.a, max(_wgslsmith_sub_i32(u_input.c, global0.c.b.a), u_input.a)) >> (_wgslsmith_add_vec2_u32(~(firstTrailingBit(vec2<u32>(arg_3.c.b.b, 39545u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(7417u, arg_3.c.b.b), vec2<u32>(global0.c.b.b, arg_1.b))), reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.c.b.b, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(global0.c.b.b, 1u))) & countOneBits(~vec2<u32>(32473u, global0.c.b.b))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global2 = array<Struct_1, 21>();
    var var_0 = func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(arg_0.x)), vec2<f32>(1615f, global0.c.a.x))) >= -586f, global0.c.b, !vec3<bool>(true, select(true, false, false), true), Struct_3(firstLeadingBit(vec4<i32>(1i, 2147483647i, 42233i, 0i)), arg_0, global0.c, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.d.x, global0.d.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.c.b.a, global0.a.x, global0.a.x), _wgslsmith_mod_vec4_i32(global0.a, global0.a)))) & (global0.a.zy >> ((vec2<u32>(1u, global0.c.b.b >> (global0.c.b.b % 32u)) >> (~firstTrailingBit(vec2<u32>(global0.c.b.b, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = global1[_wgslsmith_index_u32(~global0.c.b.b, 28u)];
    var var_2 = _wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-343f)), global0.c.a.x)));
    let var_3 = Struct_1(1i, ~global0.c.b.b);
    return 824f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(407f - global0.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-156f - -115f), -567f, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))));
    global2 = array<Struct_1, 21>();
    global1 = array<Struct_2, 28>();
    global0 = Struct_3(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.a.x << (global0.c.b.b % 32u), ~60025i), u_input.a, _wgslsmith_add_i32(~global0.a.x, u_input.b << (global0.c.b.b % 32u))), _wgslsmith_add_i32(~(i32(-1i) * -12165i), 32525i), ~_wgslsmith_div_i32(global0.c.b.a | u_input.b, -u_input.a), u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec4<f32>(var_0.x, 875f, var_0.x, 361f))), _wgslsmith_f_op_f32(f32(-1f) * -1417f))), -149f)), global0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2463f, 464f, -156f, global0.c.a.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1419f, -652f, -115f, var_0.x), vec4<f32>(global0.c.a.x, var_0.x, global0.c.a.x, var_0.x), vec4<bool>(false, true, true, false))))), global0.c.b), global0.d, _wgslsmith_clamp_i32(u_input.c, -2147483647i, u_input.c) | u_input.a);
    global2 = array<Struct_1, 21>();
    return Struct_1(global0.c.b.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~43824u, ~global0.c.b.b, 0u, reverseBits(4294967295u)), ~select(vec4<u32>(global0.c.b.b, 18370u, global0.c.b.b, 4294967295u), vec4<u32>(0u, global0.c.b.b, 0u, global0.c.b.b), true)), global0.c.b.b));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(-vec4<i32>(arg_0.a, firstLeadingBit(-2147483647i), ~u_input.c, -abs(2147483647i)), arg_3, global1[_wgslsmith_index_u32(max(arg_0.b, 6952u), 28u)], _wgslsmith_f_op_vec2_f32(global0.c.a.zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -1205f), _wgslsmith_f_op_vec2_f32(ceil(arg_2.a.zw))))), -13761i);
    let var_1 = Struct_1(-31738i, global0.c.b.b);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(2147483647i) >> (global0.c.b.b % 32u), 1u);
    var var_1 = func_5(func_1(), global0.c.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(global0.c.a - global0.b), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global0.a, global0.a), -global0.e, 3260i), firstTrailingBit(var_0.b | var_0.b))), global0.b);
    let var_2 = select(true || ((_wgslsmith_mult_i32(var_1.a, -1i) ^ _wgslsmith_clamp_i32(-11590i, -28363i, -1i)) != -1i), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true)), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true))));
    let var_3 = global1[_wgslsmith_index_u32(52931u, 28u)];
    let var_4 = global1[_wgslsmith_index_u32(34478u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, countOneBits(var_1.a), max(_wgslsmith_clamp_i32(abs(var_3.b.a), ~var_4.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-38158i, 1i), vec2<i32>(var_1.a, global0.e))), u_input.c), i32(-1i) * -(~var_1.a)), ~(~24417u), global0.b.yxy, vec2<u32>(0u, _wgslsmith_div_u32(abs(var_3.b.b), ~func_5(var_3.b, var_3.a.x, global1[_wgslsmith_index_u32(global0.c.b.b, 28u)], global0.b).b)), ~abs(min(_wgslsmith_mult_vec2_u32(vec2<u32>(114001u, 29694u), vec2<u32>(0u, global0.c.b.b)), _wgslsmith_add_vec2_u32(vec2<u32>(global0.c.b.b, 4294967295u), vec2<u32>(var_1.b, 1u)))));
}

