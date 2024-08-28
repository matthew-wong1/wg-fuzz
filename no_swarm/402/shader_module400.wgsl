struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 23>;

var<private> global3: Struct_3 = Struct_3(Struct_2(false, false, Struct_1(1006f, vec3<bool>(true, true, true), -629f, 24416u), -12404i, Struct_1(-900f, vec3<bool>(false, false, false), -1000f, 1u)), 398f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-308f * global1.b);
    let var_1 = Struct_5(global3.a.a || !(_wgslsmith_f_op_f32(-709f * 552f) != _wgslsmith_f_op_f32(-1078f - global1.a.c.c)));
    var var_2 = ~0u;
    let var_3 = max(global1.a.d, 21081i);
    var var_4 = Struct_5(any(!vec4<bool>(global3.a.c.b.x, global3.a.e.b.x, global0.b.x, global3.a.a)) | !(-u_input.c.x == 1i));
    return Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 40463u, countOneBits(14860u)), 23u)], -739f);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = arg_3.d;
    let var_1 = ~(~func_2().a.c.d >> (arg_3.d % 32u));
    global0 = func_2().a.e;
    var var_2 = u_input.c;
    let var_3 = arg_1;
    return !(!select(select(!vec4<bool>(false, arg_3.b.x, global1.a.e.b.x, false), vec4<bool>(global3.a.b, global0.b.x, false, true), !arg_3.b.x), !select(vec4<bool>(true, global1.a.b, global3.a.c.b.x, arg_3.b.x), vec4<bool>(false, global3.a.e.b.x, global3.a.b, false), false), vec4<bool>(true, true, true, true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = ~(i32(-1i) * -30816i);
    var var_1 = global0.c;
    var_0 = (i32(-1i) * -firstLeadingBit(u_input.a)) >> (~0u % 32u);
    global1 = func_2();
    global3 = Struct_3(func_2().a, global1.b);
    return func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1417f, -571f, global0.a, global0.c)))))), ~(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.e.d, u_input.b, global0.d), vec3<u32>(6734u, global0.d, global1.a.c.d)))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, ~(global1.a.e.d << (global1.a.e.d % 32u)), ~18750u), ~abs(vec3<u32>(u_input.b, 42351u, global0.d) << (vec3<u32>(global0.d, 26404u, global3.a.c.d) % vec3<u32>(32u)))), global3.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.a.b, false | !global1.a.c.b.x);
    var var_1 = abs(26288i);
    global2 = array<Struct_2, 23>();
    var var_2 = Struct_2(all(func_1()), var_0.x, Struct_1(global3.a.e.c, global1.a.e.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(197f - 1000f))))), global1.a.e.d), -19116i, func_2().a.e);
    var var_3 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1.a.c.d, global3.a.e.d, var_2.c.d)), vec3<u32>(var_2.e.d, global0.d, 7499u)), func_2().a.e.d), 1u);
    global0 = func_2().a.c;
    var var_4 = func_2().a.e;
    global3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zzy, _wgslsmith_f_op_f32(812f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a.c.a), 441f, !var_2.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.a - 978f)))), -_wgslsmith_mod_vec4_i32(u_input.c, u_input.c), ~(~(-vec3<i32>(global1.a.d, u_input.c.x, 0i)) << (~vec3<u32>(u_input.b, global1.a.c.d, 0u) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), func_2().a.c.a));
}

