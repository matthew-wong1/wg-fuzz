struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-55867i, 1i, -1682i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 23592i), vec3<i32>(8432i, 38173i, 2147483647i), vec3<i32>(-6888i, i32(-2147483648), -18885i), vec3<i32>(0i, -14979i, -1i), vec3<i32>(35081i, 2147483647i, 5880i), vec3<i32>(12261i, 26019i, 36929i), vec3<i32>(0i, 30469i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, -51053i), vec3<i32>(2147483647i, 35593i, 2147483647i), vec3<i32>(-22659i, 16278i, -8244i), vec3<i32>(i32(-2147483648), 1i, -11752i), vec3<i32>(-33208i, -1i, -15305i), vec3<i32>(-67734i, 1i, i32(-2147483648)), vec3<i32>(61337i, -12830i, -30550i), vec3<i32>(11132i, -1231i, 0i), vec3<i32>(-1i, 2147483647i, 36640i), vec3<i32>(-1i, -39258i, -1i), vec3<i32>(0i, 0i, 0i), vec3<i32>(-18909i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(-2985i, -21628i, 1i));

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec2<u32>(28538u, 0u)), Struct_4(vec2<u32>(11002u, 56832u)), Struct_4(vec2<u32>(48267u, 70747u)), Struct_4(vec2<u32>(105146u, 4294967295u)), Struct_4(vec2<u32>(4294967295u, 1u)), Struct_4(vec2<u32>(1u, 0u)), Struct_4(vec2<u32>(60819u, 11788u)), Struct_4(vec2<u32>(0u, 48067u)), Struct_4(vec2<u32>(15163u, 4294967295u)), Struct_4(vec2<u32>(74674u, 4294967295u)), Struct_4(vec2<u32>(1u, 0u)), Struct_4(vec2<u32>(97357u, 4294967295u)), Struct_4(vec2<u32>(1u, 29758u)));

var<private> global2: Struct_3;

var<private> global3: array<Struct_3, 5>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<u32>) -> vec3<bool> {
    return arg_0;
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    var var_0 = all(select(arg_2.xz, vec2<bool>(all(select(arg_2.zzz, arg_2.yyx, arg_2.x)), arg_3), select(vec2<bool>(false, arg_2.x), func_1(!arg_2.wwy, _wgslsmith_f_op_f32(max(1473f, 286f)), ~vec2<u32>(global2.b.x, u_input.a.x)).zy, arg_2.xx)));
    var var_1 = Struct_1(1u, -max(u_input.c.x, -(~arg_1)), _wgslsmith_div_f32(531f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(260f - -643f), _wgslsmith_f_op_f32(floor(-554f)))), global2.c.b.d, arg_1);
    var var_2 = ~var_1.b;
    let var_3 = !(!func_1(arg_2.zzz, _wgslsmith_f_op_f32(floor(global2.d.c)), firstLeadingBit(firstLeadingBit(vec2<u32>(41392u, 69666u)))));
    let var_4 = global3[_wgslsmith_index_u32(global2.d.a, 5u)];
    return _wgslsmith_div_f32(global2.c.d.c, var_1.c);
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global0 = array<vec3<i32>, 23>();
    global1 = array<Struct_4, 13>();
    global2 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~74876u, ~(~max(36415u, global2.c.d.a)))), 5u)];
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, true))));
    let var_1 = global2.c;
    return var_1.b.d.x;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(global2.c.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.d.c - global2.c.d.c))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.b.c), 676f))));
    global0 = array<vec3<i32>, 23>();
    let var_1 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b.c, _wgslsmith_f_op_f32(func_3(vec3<u32>(global2.d.d.x, 46447u, 0u), ~u_input.b.x, vec4<bool>(global2.c.a, false, global2.c.a, true), !global2.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.d.c)), _wgslsmith_f_op_f32(min(-1521f, _wgslsmith_f_op_f32(-global2.c.b.c)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.d.c, 683f, -594f, global2.d.c))), vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, 2147483647i, vec4<bool>(true, false, true, global2.c.a), true)), _wgslsmith_f_op_f32(-global2.d.c), 1121f, _wgslsmith_div_f32(global2.d.c, 1296f))))), 5u)];
    let var_2 = 1i;
    var var_3 = global2.c;
    return var_1.c.d.a;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> vec2<bool> {
    var var_0 = global2.c.b;
    let var_1 = global2.c.a;
    global1 = array<Struct_4, 13>();
    return !(!(!vec2<bool>(false | global2.c.a, global2.c.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    var var_0 = Struct_5(all(select(vec3<bool>(false & global2.c.a, u_input.b.x > -1i, false), vec3<bool>(global2.c.a, true, false | global2.c.a), select(func_1(vec3<bool>(global2.c.a, true, global2.c.a), global2.c.c.x, u_input.a.yz), vec3<bool>(true, true, true), func_1(vec3<bool>(false, global2.c.a, true), 1027f, vec2<u32>(65202u, 4294967295u)).x))));
    let var_1 = ~_wgslsmith_clamp_i32(abs(global2.a.x >> (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.e, -4978i, 2147483647i), u_input.c), 1i);
    let var_2 = !func_5(global1[_wgslsmith_index_u32(~func_2(), 13u)], global2.c.b.c);
    var var_3 = all(vec3<bool>(var_2.x, !var_0.a, true)) | all(select(func_1(func_1(vec3<bool>(var_0.a, global2.c.a, global2.c.a), global2.d.c, vec2<u32>(69867u, global2.b.x)), global2.d.c, min(vec2<u32>(1u, 0u), global2.b)), !func_1(vec3<bool>(var_0.a, true, var_0.a), global2.c.c.x, vec2<u32>(0u, 0u)), !vec3<bool>(var_2.x, global2.c.a, false)));
    let var_4 = select(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~650u, u_input.d.x | 1u, ~u_input.d.x), vec3<u32>(global2.c.d.a, 56552u, u_input.a.x)), abs(~vec3<u32>(0u, 1u, 59336u))), false);
    global1 = array<Struct_4, 13>();
    let var_5 = func_5(global1[_wgslsmith_index_u32(var_4, 13u)], global2.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-628f, global2.c.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b.c, -1000f) * global2.c.c.yy))))), 0u, _wgslsmith_div_vec4_u32(max(select(abs(vec4<u32>(global2.b.x, 30573u, 14625u, global2.b.x)), ~u_input.d, true), _wgslsmith_sub_vec4_u32(u_input.d << (u_input.d % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(148129u, var_4, u_input.a.x, u_input.d.x)))), u_input.d));
}

