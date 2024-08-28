struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30>;

var<private> global1: vec4<u32> = vec4<u32>(69679u, 1u, 65708u, 48468u);

var<private> global2: array<u32, 4>;

var<private> global3: Struct_1 = Struct_1(261f, false, true, false);

var<private> global4: Struct_2 = Struct_2(vec3<i32>(2147483647i, 2147483647i, 40186i), vec2<f32>(625f, -223f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2) -> bool {
    let var_0 = arg_2;
    global0 = array<vec2<f32>, 30>();
    let var_1 = 1u;
    global0 = array<vec2<f32>, 30>();
    global1 = abs(vec4<u32>(_wgslsmith_div_u32(abs(global2[_wgslsmith_index_u32(var_1, 4u)]), u_input.b.x), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_1, u_input.b.x, u_input.b.x)), vec3<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 11332u), ~693u, ~75373u)), ~50182u, ~(1u & var_1)));
    return true;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = !vec3<bool>(func_3(global4.a.zy, min(select(vec4<i32>(global4.a.x, 15859i, 0i, 53821i), vec4<i32>(global4.a.x, global4.a.x, -3833i, global4.a.x), false), _wgslsmith_mod_vec4_i32(vec4<i32>(global4.a.x, global4.a.x, global4.a.x, global4.a.x), vec4<i32>(global4.a.x, 3242i, global4.a.x, 0i))), Struct_2(global4.a, _wgslsmith_f_op_vec2_f32(min(global4.b, vec2<f32>(global4.b.x, global4.b.x))))), false, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global4.b.x)), global4.b.x)))), !var_0.x, any(!select(!vec4<bool>(var_0.x, false, global3.c, true), vec4<bool>(false, false, true, global3.b), global3.c)), true && !var_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1641f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-993f, -1000f, global3.b)) * global3.a) * 1000f), true)), all(vec4<bool>(false, !(!var_1.b), all(vec2<bool>(false, var_0.x)), all(vec4<bool>(true, var_1.b, false, true)) && select(var_0.x, false, false))), false, any(vec4<bool>(func_3(reverseBits(vec2<i32>(global4.a.x, global4.a.x)), vec4<i32>(1244i, global4.a.x, global4.a.x, global4.a.x) & vec4<i32>(8543i, global4.a.x, global4.a.x, 22604i), Struct_2(global4.a, global0[_wgslsmith_index_u32(arg_0, 30u)])), any(vec2<bool>(var_0.x, true)), select(global3.d, global3.d & var_1.b, 1u == global2[_wgslsmith_index_u32(1u, 4u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_1.b, global3.d))))));
    var_2 = Struct_1(1000f, false, true, true);
    global0 = array<vec2<f32>, 30>();
    return Struct_2(global4.a, global4.b);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, _wgslsmith_add_u32(1u, global1.x), 4294967295u, _wgslsmith_div_u32(4294967295u, 107694u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), u_input.a) & abs(countOneBits(~abs(vec4<u32>(0u, global1.x, u_input.a.x, 25391u))));
    global3 = Struct_1(arg_0.b.x, ~abs(~var_0.x) <= ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]), 4u)], 4u)]), global3.c, false);
    var var_1 = _wgslsmith_add_u32(u_input.b.x, global1.x);
    var_1 = countOneBits(u_input.b.x);
    var var_2 = Struct_1(global3.a, false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) * global3.a) < arg_0.b.x);
    return Struct_2(vec3<i32>(global4.a.x, arg_0.a.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, global4.a.x << (4294967295u % 32u)), arg_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)), vec2<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(894f - 169f)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = 8745u;
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_sub_u32(275u, u_input.a.x)));
    let var_1 = !(!arg_2.d);
    let var_2 = func_4(func_2(4294967295u >> (~countOneBits(u_input.b.x) % 32u)));
    var_0 = _wgslsmith_mod_u32(~u_input.a.x, global1.x);
    return -var_2.a.x;
}

fn func_5(arg_0: Struct_2) -> vec2<u32> {
    global2 = array<u32, 4>();
    global1 = u_input.a;
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    global2 = array<u32, 4>();
    return vec2<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.a.x, 0u, global2[_wgslsmith_index_u32(global1.x, 4u)]), vec4<u32>(80473u, u_input.b.x, u_input.b.x, u_input.b.x), global3.c), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(5438u, 0u, global1.x, global1.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 5849u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(72265u, 4u)], global1.x, 0u), u_input.b))) ^ countOneBits(abs(vec2<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.a.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 30>();
    let var_0 = _wgslsmith_add_vec2_u32(func_5(Struct_2(vec3<i32>(global4.a.x, reverseBits(global4.a.x), func_1(-2147483647i, u_input.b.x, Struct_1(2736f, true, true, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, global4.b.x)))), ~_wgslsmith_sub_vec2_u32(global1.wx, _wgslsmith_mult_vec2_u32(u_input.a.wy, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28023u, 4u)], 4u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]))));
    let var_1 = func_4(Struct_2(global4.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(994f, global3.a)), _wgslsmith_div_f32(900f, global4.b.x))))).a.x;
    let var_2 = (_wgslsmith_mod_vec2_u32(u_input.b.zx, func_5(Struct_2(vec3<i32>(var_1, 38096i, 38230i), vec2<f32>(-953f, global4.b.x)))) & ~vec2<u32>(global1.x & u_input.a.x, u_input.a.x)) | u_input.b.xx;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2672f, _wgslsmith_f_op_f32(floor(global4.b.x)), !global3.d))) - global3.a);
    global4 = Struct_2(~global4.a, global0[_wgslsmith_index_u32(~(~(~(var_0.x ^ 4294967295u))), 30u)]);
    var var_4 = global4.a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-32665i), firstTrailingBit(var_1), _wgslsmith_f_op_f32(-global4.b.x));
}

