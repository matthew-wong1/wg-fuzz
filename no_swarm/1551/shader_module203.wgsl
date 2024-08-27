struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(81822u, 0u);

var<private> global1: array<vec3<bool>, 30>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(25425u, 4294967295u, 6267u), vec3<u32>(4294967295u, 31514u, 1u), vec3<u32>(0u, 36746u, 105958u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 75737u), vec3<u32>(1494u, 0u, 0u), vec3<u32>(9329u, 1u, 44694u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global2 = array<vec3<u32>, 7>();
    global0 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e, 4294967295u, 9300u), vec4<u32>(u_input.e, u_input.b, 0u, 10416u)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 51375u, u_input.e), vec4<u32>(u_input.b, u_input.b, u_input.e, u_input.b) & vec4<u32>(4294967295u, global0.x, global0.x, 0u))), _wgslsmith_mod_u32(reverseBits(u_input.e), 0u));
    var var_0 = Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -1i, -2147483647i, -2147483647i, 1i), _wgslsmith_mod_vec4_i32(firstLeadingBit(u_input.d), vec4<i32>(-42690i, 1086i, -41911i, -44340i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1417f, 1000f, 973f, -488f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(363f, -707f, 2422f, -246f), vec4<f32>(-1367f, -202f, -418f, 743f), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)))))));
    let var_1 = Struct_2(vec4<i32>(~arg_0.x, min(var_0.a.x, -20452i), 0i, var_0.a.x ^ 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.b.x, 787f))))) - 1507f), 1u);
    let var_2 = Struct_5(-_wgslsmith_dot_vec4_i32(var_0.a, u_input.d));
    return _wgslsmith_dot_vec3_i32(select(-var_0.a.yxx, ~(~vec3<i32>(38282i, -1i, var_0.a.x)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), u_input.d.yyz);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<bool>) -> Struct_5 {
    return Struct_5(func_3(vec3<i32>(~u_input.a.x, -1i, ~(-u_input.c.x))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_2.d.b.wyz);
    let var_1 = Struct_4(vec2<i32>(arg_2.d.a.x, ~u_input.d.x));
    var var_2 = (false && !select(var_1.a.x > 6380i, !arg_2.a.x, u_input.e >= 0u)) && false;
    var var_3 = func_2(!(!vec3<bool>(115f >= var_0.x, false, all(vec3<bool>(false, arg_2.a.x, arg_2.a.x)))), arg_2, !global1[_wgslsmith_index_u32(1u, 30u)]);
    let var_4 = ~(~(abs(vec2<i32>(var_1.a.x, arg_1)) >> ((vec2<u32>(global0.x, 31199u) ^ arg_2.c) % vec2<u32>(32u))) >> (~vec2<u32>(7342u, global0.x) % vec2<u32>(32u)));
    return select(vec4<i32>(var_1.a.x, _wgslsmith_div_i32(var_3.a, abs(-2147483647i)), var_3.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1, 5120i, var_1.a.x, arg_1)), u_input.d)), -(~vec4<i32>(var_3.a, arg_1, -981i, arg_1)) ^ arg_2.d.a, !(!arg_2.a.x || true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_2(u_input.d, 367f, 73390u);
    let var_2 = abs(_wgslsmith_clamp_vec4_i32(-func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(322f, var_1.b))), 0i, Struct_3(vec4<bool>(true, false, true, false), 138f, vec2<u32>(37112u, u_input.e), Struct_1(vec4<i32>(var_1.a.x, u_input.a.x, -1i, -59283i), vec4<f32>(var_1.b, var_1.b, -532f, var_1.b)))), vec4<i32>(var_1.a.x, u_input.c.x, ~75650i, var_1.a.x), ~abs(u_input.d << (vec4<u32>(global0.x, var_1.c, 4294967295u, u_input.b) % vec4<u32>(32u)))));
    let var_3 = 0u;
    let var_4 = Struct_3(vec4<bool>(true, false, true, !any(select(global1[_wgslsmith_index_u32(var_1.c, 30u)], global1[_wgslsmith_index_u32(70299u, 30u)], true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f + _wgslsmith_f_op_f32(-1650f - var_1.b))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(54550u, 14957u)), ~vec2<u32>(97834u, global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.c, var_3), vec2<u32>(var_3, var_3)), reverseBits(~vec2<u32>(global0.x, 4294967295u))), Struct_1(~var_2, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.b + var_1.b), _wgslsmith_f_op_f32(411f * var_1.b), var_1.b, 1357f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, var_1.b, var_1.b, -643f)), false))));
    global2 = array<vec3<u32>, 7>();
    global1 = array<vec3<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(var_4.d.b.www)))))), reverseBits(countOneBits(select(var_1.a, reverseBits(var_2), select(var_4.a, var_4.a, var_4.a)))), var_4.d.b.yz, var_1.a.ywz);
}

