struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(90373u, 49504u), vec2<u32>(60406u, 1u), vec2<u32>(26714u, 0u), vec2<u32>(43256u, 11498u), vec2<u32>(0u, 1u), vec2<u32>(21499u, 70006u));

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: Struct_3 = Struct_3(1u, vec2<u32>(4294967295u, 40840u), -56109i, 0i, vec3<f32>(-320f, -630f, 525f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec4<bool> {
    global1 = array<bool, 1>();
    global0 = array<vec2<u32>, 7>();
    let var_0 = -_wgslsmith_mult_i32(0i, -5577i);
    var var_1 = true;
    let var_2 = u_input.a.wxz;
    return !vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], !(!any(vec3<bool>(global1[_wgslsmith_index_u32(23543u, 1u)], true, global1[_wgslsmith_index_u32(arg_1.b.x, 1u)]))), all(vec4<bool>(!global1[_wgslsmith_index_u32(global2.b.x, 1u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b.x, 1u)])), true, any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(arg_1.a, 1u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1498f - 1168f), -1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)));
}

fn func_2() -> vec4<bool> {
    var var_0 = select(func_3(reverseBits(global2.a), Struct_3(92538u | ~global2.a, global0[_wgslsmith_index_u32(global2.a, 7u)], 23414i, min(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, 2147483647i, 10840i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.b, global2.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global2.e, global2.e)) + global2.e)), global2.e.x, 1i & _wgslsmith_clamp_i32(~global2.c, u_input.a.x, global2.c & global2.c)), !(!vec4<bool>(true, true, all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 1u)], true, true)), any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 1u)], true, true)))), false);
    global2 = Struct_3(global2.a, vec2<u32>(global2.b.x, min(_wgslsmith_add_u32(50962u, ~global2.b.x), global2.a)), i32(-1i) * -_wgslsmith_dot_vec3_i32(-u_input.a.yxy, vec3<i32>(2147483647i, 1i, global2.d)), ~(-global2.c), global2.e);
    global0 = array<vec2<u32>, 7>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(select(-1143f, _wgslsmith_f_op_f32(-global2.e.x), true))), Struct_1(!any(select(var_0.zw, vec2<bool>(true, false), var_0.yx)), select(!select(var_0.wy, var_0.yw, var_0.yz), vec2<bool>(false, 1694i < u_input.a.x), vec2<bool>(global1[_wgslsmith_index_u32(reverseBits(global2.b.x), 1u)], 84247u < global2.b.x)), ~(firstTrailingBit(vec3<u32>(global2.a, global2.a, global2.a)) & vec3<u32>(1u, 1u, 1u)), func_3(global2.b.x, Struct_3(52577u, vec2<u32>(global2.b.x, global2.a), 44193i, -58359i, global2.e), global2.e.x, firstLeadingBit(10452i)).wwz, _wgslsmith_f_op_vec3_f32(-global2.e)), all(vec4<bool>(var_0.x | global1[_wgslsmith_index_u32(77982u, 1u)], !(global2.a == global2.b.x), !(global2.e.x >= global2.e.x), true)));
    var var_2 = ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, ~global2.b.x), _wgslsmith_mult_u32(global2.a, 0u) | ~global2.b.x));
    return select(select(vec4<bool>(var_1.c, true, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(44688u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)], false), vec4<bool>(false, true, false, var_0.x), global1[_wgslsmith_index_u32(global2.b.x, 1u)])), any(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.x, true, global1[_wgslsmith_index_u32(var_1.b.c.x, 1u)], false), var_0.x))), !vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], var_1.c, global1[_wgslsmith_index_u32(var_1.b.c.x, 1u)], true)), func_3(11434u, Struct_3(global2.a, vec2<u32>(var_1.b.c.x, global2.a), 1i, -25267i, vec3<f32>(global2.e.x, -376f, -941f)), var_1.a, global2.c).x, false), !var_1.b.d.x), vec4<bool>(all(var_0.xy), true, !any(func_3(var_1.b.c.x, Struct_3(1u, global2.b, -18844i, 32398i, global2.e), global2.e.x, u_input.a.x).zw), all(func_3(_wgslsmith_clamp_u32(0u, 80268u, var_1.b.c.x), Struct_3(7157u, var_1.b.c.yz, global2.c, u_input.a.x, global2.e), _wgslsmith_div_f32(-115f, 356f), ~(-49691i)))), true);
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    let var_0 = any(func_2());
    var var_1 = false;
    let var_2 = func_2();
    var var_3 = _wgslsmith_div_u32(abs(abs(4294967295u) ^ (global2.a | global2.a)) & 31143u, global2.b.x);
    var var_4 = global2.c;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~global2.a, global2.b.x, 1u, 109319u), ~vec4<u32>(4294967295u & global2.b.x, 4294967295u, global2.b.x, 4686u), select(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, global2.a, 18452u, 55168u), ~vec4<u32>(4294967295u, 1u, global2.b.x, global2.b.x)), (vec4<u32>(global2.b.x, global2.b.x, global2.a, global2.b.x) << (vec4<u32>(global2.a, global2.a, 26703u, global2.a) % vec4<u32>(32u))) >> (vec4<u32>(1u, global2.b.x, global2.a, 0u) % vec4<u32>(32u)), vec4<bool>(var_2.x || var_2.x, global1[_wgslsmith_index_u32(39306u, 1u)], all(var_2), !var_2.x))), firstTrailingBit(vec4<u32>(~(global2.a ^ global2.a), select(global2.a, ~67087u, true), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global2.a, global2.a, global2.b.x), abs(vec4<u32>(82006u, 4294967295u, global2.b.x, 1u))), global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    global2 = Struct_3(12667u, vec2<u32>(_wgslsmith_div_u32(4294967295u, ~func_1(vec4<f32>(global2.e.x, -2966f, global2.e.x, 153f))), ~global2.b.x), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(0i, -431i, global2.d, u_input.b)) & vec4<i32>(-1i, -2147483647i, global2.c, _wgslsmith_mod_i32(u_input.a.x, -1i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-43703i, u_input.a.x, -8011i, u_input.a.x) ^ u_input.a, vec4<i32>(u_input.b, global2.d, -59969i, 15551i))), global2.d, vec3<f32>(_wgslsmith_f_op_f32(-1223f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -636f), global2.e.x)) * _wgslsmith_f_op_f32(-global2.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -380f)));
    global1 = array<bool, 1>();
    global0 = array<vec2<u32>, 7>();
    let var_0 = -1077f;
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(8110u, _wgslsmith_mult_u32(global2.b.x, global2.a)), ~_wgslsmith_sub_u32(102394u, global2.b.x)), 1u)], vec2<bool>(false, global1[_wgslsmith_index_u32(global2.b.x, 1u)]), vec3<u32>(0u, abs(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.a, 4294967295u), global2.a)), _wgslsmith_div_u32(firstLeadingBit(global2.b.x), ~(~global2.b.x))), func_3(~(~global2.a), Struct_3(global2.b.x, global2.b, -30437i, -15556i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, 1344f, global2.e.x))), var_0, -_wgslsmith_add_i32(23655i, global2.c)).wyw, global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(842f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.e.x)), _wgslsmith_f_op_f32(-global2.e.x))))), global0[_wgslsmith_index_u32(var_1.c.x, 7u)], vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(21511u, global2.a, var_1.c.x, global2.a), vec4<u32>(global2.b.x, var_1.c.x, var_1.c.x, global2.b.x)), ~vec4<u32>(var_1.c.x, var_1.c.x, 1u, 44914u)), ~0u, _wgslsmith_mod_u32(var_1.c.x, _wgslsmith_mult_u32(~var_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 608u, global2.a), var_1.c)))));
}

