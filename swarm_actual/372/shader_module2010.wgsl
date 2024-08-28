struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(18967i, Struct_1(vec2<bool>(true, false), vec4<f32>(-1000f, 1000f, -734f, 1000f))), Struct_5(64529i, Struct_1(vec2<bool>(false, false), vec4<f32>(-286f, -309f, 831f, 243f))), Struct_5(-1i, Struct_1(vec2<bool>(true, true), vec4<f32>(1373f, 534f, -585f, 1445f))), Struct_5(0i, Struct_1(vec2<bool>(true, false), vec4<f32>(1520f, -939f, -2210f, 960f))), Struct_5(2147483647i, Struct_1(vec2<bool>(false, true), vec4<f32>(711f, -1414f, -1000f, 481f))), Struct_5(5261i, Struct_1(vec2<bool>(true, false), vec4<f32>(1370f, -833f, -1300f, -956f))), Struct_5(1i, Struct_1(vec2<bool>(false, false), vec4<f32>(-692f, -229f, 421f, 1000f))), Struct_5(12608i, Struct_1(vec2<bool>(true, false), vec4<f32>(-1041f, 1000f, 316f, 566f))), Struct_5(30366i, Struct_1(vec2<bool>(true, true), vec4<f32>(1000f, 1000f, 1136f, 918f))), Struct_5(i32(-2147483648), Struct_1(vec2<bool>(false, false), vec4<f32>(-152f, 985f, -956f, -1265f))), Struct_5(0i, Struct_1(vec2<bool>(true, true), vec4<f32>(-360f, 149f, 1164f, 844f))), Struct_5(-31905i, Struct_1(vec2<bool>(false, true), vec4<f32>(-1037f, -272f, 329f, -1501f))), Struct_5(i32(-2147483648), Struct_1(vec2<bool>(true, true), vec4<f32>(252f, 1631f, -1768f, 2247f))), Struct_5(2147483647i, Struct_1(vec2<bool>(false, true), vec4<f32>(184f, 360f, -691f, 2920f))), Struct_5(1i, Struct_1(vec2<bool>(true, false), vec4<f32>(491f, 1100f, -1068f, -688f))), Struct_5(-10124i, Struct_1(vec2<bool>(true, false), vec4<f32>(-1000f, 580f, 995f, 830f))), Struct_5(2147483647i, Struct_1(vec2<bool>(true, true), vec4<f32>(834f, -1815f, 1776f, 427f))), Struct_5(-42701i, Struct_1(vec2<bool>(false, true), vec4<f32>(-983f, -1689f, 439f, 181f))), Struct_5(2147483647i, Struct_1(vec2<bool>(false, true), vec4<f32>(-1805f, 1199f, 1918f, -491f))), Struct_5(65522i, Struct_1(vec2<bool>(false, true), vec4<f32>(802f, -2075f, -1763f, 1252f))), Struct_5(0i, Struct_1(vec2<bool>(false, true), vec4<f32>(-355f, 415f, 1000f, 266f))), Struct_5(1i, Struct_1(vec2<bool>(true, true), vec4<f32>(669f, 173f, 2130f, -1208f))), Struct_5(i32(-2147483648), Struct_1(vec2<bool>(true, true), vec4<f32>(-1106f, -497f, -294f, 484f))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> vec4<f32> {
    global1 = array<Struct_5, 23>();
    global1 = array<Struct_5, 23>();
    var var_0 = Struct_2(arg_0.b.b.wzz, _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(arg_0.a, u_input.a, -27136i, u_input.a)), firstTrailingBit(vec4<i32>(arg_1.x, arg_0.a, arg_1.x, -2147483647i) ^ vec4<i32>(arg_1.x, u_input.a, -39350i, -2147483647i))) >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_0.b.b.zxy * var_0.a);
    let var_2 = arg_0.b.a;
    return _wgslsmith_f_op_vec4_f32(-arg_0.b.b);
}

fn func_2() -> i32 {
    global1 = array<Struct_5, 23>();
    var var_0 = _wgslsmith_f_op_f32(trunc(-1193f));
    global0 = ~(~vec2<u32>(firstLeadingBit(global0.x), 1u)) << (~(~abs(~vec2<u32>(global0.x, global0.x))) % vec2<u32>(32u));
    var var_1 = Struct_5(-u_input.a, Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(global0.x, 23u)], vec2<i32>(u_input.a, 64489i), 72404u, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1195f, 480f, 665f, 1516f)))), vec4<f32>(_wgslsmith_f_op_f32(-1062f - 722f), _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(min(1431f, -616f)), _wgslsmith_f_op_f32(abs(1208f))), vec4<bool>(false, true, true, all(vec2<bool>(false, false)))))));
    var_0 = _wgslsmith_f_op_f32(exp2(var_1.b.b.x));
    return ~u_input.a ^ _wgslsmith_mod_i32(u_input.a, abs(-3714i));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = u_input.a != func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(928f, -107f, -878f, 1306f)))))));
    let var_2 = -(((vec3<i32>(21307i, u_input.a, u_input.a) | (vec3<i32>(1i, 0i, u_input.a) ^ vec3<i32>(3652i, u_input.a, u_input.a))) | countOneBits(~vec3<i32>(-1925i, -17035i, u_input.a))) | (_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 14604i, -2147483647i), vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(u_input.a, 2147483647i, -24854i)) ^ firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, -19971i, u_input.a)))));
    global0 = ~((select(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, 46261u), true) ^ vec2<u32>(4294967295u, global0.x)) | ~countOneBits(vec2<u32>(global0.x, global0.x))) | ~_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(global0.x, 1u)), select(vec2<u32>(global0.x, global0.x), ~vec2<u32>(global0.x, global0.x), global0.x > 0u));
    var var_3 = arg_0.x;
    return _wgslsmith_mult_i32(~(-(8726i << (~4294967295u % 32u))), -14694i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = (-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-10409i, 1i), vec2<i32>(var_0, u_input.a)), func_1(vec4<bool>(false, true, true, false))) ^ vec2<i32>(1i >> (~4294967295u % 32u), ~min(50056i, -21801i))) | vec2<i32>((_wgslsmith_sub_i32(var_0, 1i) & u_input.a) << (global0.x % 32u), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(-2147483647i ^ var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-22087i, var_0), vec2<i32>(4049i, u_input.a)))));
    var var_2 = !(!(!all(vec2<bool>(false, false))));
    let var_3 = vec4<u32>(global0.x, ~0u, global0.x, 4294967295u);
    var_2 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec2<bool>(true, false)))), vec2<bool>(-1000f == _wgslsmith_f_op_f32(trunc(1741f)), true)));
    var_2 = !(~var_3.x >= 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

