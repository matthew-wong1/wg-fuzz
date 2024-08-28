struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32> = vec2<i32>(39824i, 56690i);

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: array<Struct_2, 28>;

var<private> global4: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = min(~vec4<u32>(u_input.c.x, 15328u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(56753u, u_input.d), u_input.c, vec2<u32>(29512u, u_input.d)), ~u_input.c), 18591u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(35837u, u_input.d, 1u, 0u), vec4<u32>(71849u, 4294967295u, 1u, u_input.d)) & (vec4<u32>(global0.b.a, u_input.c.x, 36939u, 25485u) ^ vec4<u32>(global0.b.a, 1u, 41653u, global0.b.a)), ~(~vec4<u32>(5574u, 0u, u_input.d, u_input.d)), vec4<u32>(_wgslsmith_sub_u32(global0.b.a, 38759u), ~u_input.c.x, 1u, global0.c))));
    let var_1 = _wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(step(global0.a.x, -612f)));
    var var_2 = vec2<bool>(!all(vec3<bool>(select(false, false, true), !global0.b.d.x, !global0.b.d.x)), all(global0.b.d) || (!global0.b.d.x && all(!global0.b.d)));
    let var_3 = Struct_2(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-54725i, u_input.e, global1.x, 0i), vec4<i32>(u_input.a.x, global1.x, global1.x, -1651i)), global1.x) ^ 5577i, 165f, global0.a, ~0u);
    let var_4 = 1i;
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    global1 = global2[_wgslsmith_index_u32(func_3() & min(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, global0.c), vec2<u32>(10486u, u_input.c.x)), countOneBits(vec2<u32>(u_input.c.x, u_input.c.x))) | u_input.d), 10u)];
    var var_0 = global3[_wgslsmith_index_u32(select(1u, global0.b.a, select(!global0.b.d.x, global0.b.c, any(!vec4<bool>(global0.b.c, false, global0.b.c, false)) & global0.b.d.x)), 28u)];
    let var_1 = 1242f;
    return Struct_1(0u, var_1, !any(!(!vec4<bool>(global0.b.d.x, global0.b.d.x, true, false))), select(select(vec3<bool>(global0.b.d.x, !global0.b.d.x, global0.b.c & true), select(global0.b.d, vec3<bool>(true, false, false), !global0.b.d), global0.b.d.x), vec3<bool>(all(!vec4<bool>(true, global0.b.d.x, global0.b.d.x, global0.b.d.x)), all(!vec2<bool>(global0.b.d.x, global0.b.c)), all(vec2<bool>(true, true))), vec3<bool>(global0.b.c, global0.b.d.x, true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = global3[_wgslsmith_index_u32(63321u, 28u)];
    let var_1 = global0.b;
    global2 = array<vec2<i32>, 10>();
    global4 = array<vec2<bool>, 18>();
    var var_2 = Struct_2(max(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, arg_0.x) >> (vec3<u32>(var_1.a, 17654u, 0u) % vec3<u32>(32u)), u_input.a)), _wgslsmith_div_i32(i32(-1i) * -26685i, 40812i)), arg_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(988f, -956f)))))), min(min(0u, ~arg_2.x), abs(_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.a, u_input.d), 28121u))));
    return !arg_1.d;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(global0.b.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-948f)), _wgslsmith_f_op_f32(1947f + arg_1))))) + global0.b.b);
    var var_1 = vec2<bool>(false, false);
    var var_2 = -1i;
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-447f, _wgslsmith_f_op_f32(trunc(-1260f)))), arg_1), global0.b, countOneBits(global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2082f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(240f, arg_1) + _wgslsmith_f_op_f32(select(486f, -1779f, true))))));
    global1 = u_input.a.yy;
    return global3[_wgslsmith_index_u32(var_3.c >> (_wgslsmith_div_u32(func_3(), 1u) % 32u), 28u)];
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec2<f32>) -> vec3<i32> {
    global2 = array<vec2<i32>, 10>();
    var var_0 = 4294967295u;
    let var_1 = Struct_2(0i, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(arg_3, global0.a))))), global0.a)), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2262u, u_input.c.x), u_input.c), global0.c), ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, u_input.c), min(u_input.c, u_input.c))));
    global3 = array<Struct_2, 28>();
    var var_2 = func_5(select(select(vec3<bool>(any(global0.b.d), global0.b.d.x, global0.b.c), global0.b.d, func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(5077i, var_1.a, u_input.b), u_input.a), func_2(), ~vec3<u32>(0u, global0.b.a, arg_0))), vec3<bool>(global0.b.c, global0.b.c, true), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + -121f) + -1836f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(223f, arg_3.x, 1024f, arg_1) - vec4<f32>(var_1.c.x, global0.b.b, global0.d, -1509f))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(sign(2147f)), 1000f, _wgslsmith_f_op_f32(-global0.d)), !select(vec4<bool>(global0.b.d.x, global0.b.d.x, true, false), vec4<bool>(true, true, global0.b.d.x, global0.b.d.x), vec4<bool>(global0.b.d.x, global0.b.d.x, global0.b.c, false)))))));
    return -_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a, max(var_2.a, _wgslsmith_mult_i32(var_2.a, 23785i)), min(-52125i, _wgslsmith_sub_i32(-2147483647i, -34671i))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = func_1(var_0.a, _wgslsmith_f_op_f32(-global0.a.x), 1f, vec2<f32>(-1393f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -368f), global0.a.x))));
    let var_2 = func_5(select(var_0.d, !select(var_0.d, func_4(vec3<i32>(var_1.x, -1i, var_1.x), global0.b, vec3<u32>(5941u, 26344u, var_0.a)), select(vec3<bool>(false, global0.b.d.x, var_0.d.x), var_0.d, var_0.d.x)), all(var_0.d.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1309f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(366f, global0.d, -1000f, 327f), vec4<f32>(var_0.b, global0.a.x, 1922f, global0.a.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global0.b.b, -1568f, 1000f) * vec4<f32>(364f, 999f, -603f, 661f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, var_0.b, -1117f, 944f)), global0.b.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c - var_2.c)));
}

