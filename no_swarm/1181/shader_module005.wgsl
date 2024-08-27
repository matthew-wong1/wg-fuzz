struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(62330u, -2091i, -1000f), vec3<i32>(49341i, 29673i, -21330i), 33795u, vec2<bool>(true, true), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(14510u, 2147483647i, -1699f), vec3<i32>(i32(-2147483648), -6724i, -23238i), 0u, vec2<bool>(true, false), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(0u, -1i, 987f), vec3<i32>(1i, 3023i, -11548i), 1u, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(0u, 20773i, -553f), vec3<i32>(i32(-2147483648), 2147483647i, 16635i), 4294967295u, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(36890u, -10655i, -364f), vec3<i32>(i32(-2147483648), 51477i, -29409i), 0u, vec2<bool>(false, true), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(17447u, 2147483647i, 1165f), vec3<i32>(-1i, -17678i, 0i), 3459u, vec2<bool>(false, true), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(17130u, -1i, -163f), vec3<i32>(-1i, i32(-2147483648), -15350i), 4294967295u, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), Struct_2(Struct_1(17890u, 1i, 1029f), vec3<i32>(45667i, i32(-2147483648), i32(-2147483648)), 1u, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(97607u, 26572i, -633f), vec3<i32>(-3095i, -23941i, 2147483647i), 13987u, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(4294967295u, 1i, -797f), vec3<i32>(-17547i, -52544i, 1i), 15370u, vec2<bool>(true, false), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(42867u, 3067i, 923f), vec3<i32>(-45345i, i32(-2147483648), -18961i), 26927u, vec2<bool>(true, true), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(1u, 1i, 498f), vec3<i32>(2147483647i, 225i, 52332i), 1u, vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(1u, i32(-2147483648), -1699f), vec3<i32>(-98935i, -41356i, -23494i), 4294967295u, vec2<bool>(true, true), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(0u, 0i, -216f), vec3<i32>(1i, -1i, 38648i), 4294967295u, vec2<bool>(false, false), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(114154u, 2147483647i, -463f), vec3<i32>(i32(-2147483648), 2147483647i, -1i), 32747u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(1u, 1i, 627f), vec3<i32>(10535i, 2147483647i, -29212i), 4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(70577u, 15185i, -1885f), vec3<i32>(-1i, 1i, -15362i), 1u, vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_2(Struct_1(1u, -10554i, -2504f), vec3<i32>(-1i, 0i, 1i), 5303u, vec2<bool>(false, false), vec4<bool>(true, false, true, true)), Struct_2(Struct_1(4294967295u, 54112i, 634f), vec3<i32>(-36884i, 0i, -6664i), 1u, vec2<bool>(true, false), vec4<bool>(true, false, false, false)), Struct_2(Struct_1(18976u, 1i, -211f), vec3<i32>(35098i, -1i, 22856i), 4294967295u, vec2<bool>(true, true), vec4<bool>(false, false, true, false)), Struct_2(Struct_1(17055u, -12497i, 826f), vec3<i32>(i32(-2147483648), 49846i, 64145i), 59802u, vec2<bool>(false, false), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(1u, -41253i, -1574f), vec3<i32>(22009i, 6070i, -16064i), 4294967295u, vec2<bool>(true, true), vec4<bool>(true, true, false, true)), Struct_2(Struct_1(4294967295u, 2745i, -172f), vec3<i32>(67812i, i32(-2147483648), 2147483647i), 0u, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(0u, -26882i, 1000f), vec3<i32>(-1i, i32(-2147483648), 4168i), 4294967295u, vec2<bool>(true, false), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(1u, 1i, 1000f), vec3<i32>(30410i, 1i, 0i), 0u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_2(Struct_1(14522u, -31244i, -1043f), vec3<i32>(-23346i, -1i, i32(-2147483648)), 0u, vec2<bool>(true, false), vec4<bool>(false, true, true, true)), Struct_2(Struct_1(2265u, -32677i, -1022f), vec3<i32>(-1i, i32(-2147483648), -1i), 4294967295u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)));

var<private> global1: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(48557u, -11783i, -758f), vec3<i32>(i32(-2147483648), 16751i, -284i), 64041u, vec2<bool>(true, true), vec4<bool>(false, true, false, true));

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-20754i, 1i, 18186i, -92931i), vec4<i32>(i32(-2147483648), -2224i, -14110i, -1i), vec4<i32>(47461i, -44893i, 1i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global3 = array<vec4<i32>, 3>();
    var var_0 = 54180u;
    return _wgslsmith_mult_i32(-21702i, global2.a.b) == reverseBits(global2.a.b);
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    global3 = array<vec4<i32>, 3>();
    global1 = array<bool, 4>();
    global0 = array<Struct_2, 27>();
    global3 = array<vec4<i32>, 3>();
    global0 = array<Struct_2, 27>();
    return reverseBits(vec2<i32>(firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 29420i, -2147483647i), u_input.c)), -1i));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> i32 {
    global1 = array<bool, 4>();
    global2 = global0[_wgslsmith_index_u32(81022u, 27u)];
    var var_0 = vec4<bool>(any(!global2.e.xx), true, false, arg_2.c == arg_2.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(arg_3.a.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(290f * global2.a.c), _wgslsmith_f_op_f32(min(587f, -141f))) - -421f)));
    var var_2 = arg_2;
    return firstTrailingBit(var_2.a | _wgslsmith_div_i32(global2.b.x, _wgslsmith_mult_i32(select(-1i, u_input.c.x, var_2.d), 1i << (var_2.b % 32u))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = true;
    var var_1 = Struct_4(global2.a.b, 4294967295u, ~u_input.c.x, firstTrailingBit(firstLeadingBit(1i)) <= 61207i);
    let var_2 = global2.a.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1780f * _wgslsmith_div_f32(global2.a.c, global2.a.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f + -554f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.c, -969f, global2.a.c, global2.a.c), vec4<f32>(750f, global2.a.c, global2.a.c, -2098f)) + vec4<f32>(-204f, global2.a.c, global2.a.c, global2.a.c))))));
    var var_4 = -firstLeadingBit(global2.b);
    return 0i > abs(func_4(reverseBits(func_3(Struct_4(51229i, arg_0.x, -81662i, true))), ~(1u ^ arg_0.x), Struct_4(6424i << (1u % 32u), _wgslsmith_mod_u32(4294967295u, 29106u), var_1.a, any(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 4u)], global2.d.x, global2.d.x))), Struct_2(Struct_1(0u, global2.a.b, 985f), u_input.c.yyx >> (arg_0 % vec3<u32>(32u)), var_1.b, !global2.e.xz, !global2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !select(vec4<bool>(true, func_1(-vec4<i32>(global2.b.x, u_input.c.x, 1i, global2.a.b), ~global2.b.yx, Struct_3(global2.a.c), Struct_3(740f)), func_2(u_input.b.wwz | u_input.b.yzz), true), select(global2.e, vec4<bool>(global2.b.x <= u_input.d.x, !global2.d.x, !global1[_wgslsmith_index_u32(global2.a.a, 4u)], global1[_wgslsmith_index_u32(global2.c, 4u)] == global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec4<bool>(global2.a.c >= global2.a.c, false, true, false)), vec4<bool>(global2.d.x, _wgslsmith_f_op_f32(trunc(226f)) < -104f, global2.d.x, all(!global2.e.www)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(global2.a.c)));
    let var_3 = -595f;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-846f);
}

