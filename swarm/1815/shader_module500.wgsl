struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-1010f, 184f, -2106f, -375f), Struct_1(8167u, true, 412f), vec4<bool>(false, true, true, true), Struct_1(25304u, false, 169f), 286f);

var<private> global1: vec4<u32>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-1000f, 2730f, -858f, 1258f), vec4<f32>(417f, 360f, 861f, -301f), vec4<f32>(728f, 502f, -325f, 206f), vec4<f32>(-649f, -269f, -467f, 401f), vec4<f32>(-1000f, -778f, -898f, -168f), vec4<f32>(-1368f, -1000f, 992f, -156f), vec4<f32>(2019f, 551f, 295f, -1000f), vec4<f32>(-603f, -1000f, -166f, 880f), vec4<f32>(1435f, -2249f, 798f, 1200f), vec4<f32>(-213f, -519f, -1245f, -1536f), vec4<f32>(116f, -425f, -1030f, -1786f), vec4<f32>(1461f, -1468f, -270f, -1319f), vec4<f32>(1213f, 1000f, 182f, 400f), vec4<f32>(-993f, 277f, 1000f, 559f), vec4<f32>(125f, -832f, 528f, -108f), vec4<f32>(-1996f, 1181f, -471f, -734f), vec4<f32>(135f, -479f, 199f, 1831f), vec4<f32>(1000f, -1447f, 1355f, 1482f), vec4<f32>(-395f, 1000f, 829f, 177f), vec4<f32>(-807f, -1000f, 289f, 774f), vec4<f32>(-537f, 576f, 774f, 1219f), vec4<f32>(-735f, -891f, 232f, -825f), vec4<f32>(-919f, -851f, -2102f, -924f), vec4<f32>(778f, -954f, -369f, -173f), vec4<f32>(1000f, 201f, 1000f, 248f), vec4<f32>(-1120f, 736f, -954f, -1988f), vec4<f32>(1972f, 1143f, -1000f, -1130f), vec4<f32>(-142f, 1759f, -831f, 638f));

var<private> global4: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = Struct_4(countOneBits(arg_2.yx), global0.d, Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a))), Struct_1(u_input.a.x, !all(global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f * 338f) * _wgslsmith_f_op_f32(-global2.x))), global0.c, global0.d, _wgslsmith_f_op_f32(-arg_1)), -756f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-399f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(ceil(var_0.b.c)), arg_0))), -1401f, 244f);
    var var_2 = 51810i;
    var var_3 = reverseBits(~(abs(u_input.b.xz & u_input.a.yx) ^ vec2<u32>(1u, global0.d.a)));
    var_3 = vec2<u32>(var_0.b.a, 236u);
    return vec2<u32>(global0.b.a, u_input.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c))) + _wgslsmith_f_op_f32(-1886f * global0.b.c))) * arg_0.c);
    var var_1 = Struct_3(select(vec2<u32>(select(~6750u, abs(4294967295u), var_0 <= var_0), arg_0.a), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(global1.wz, func_3(arg_0.b, 1732f, vec3<i32>(u_input.d, u_input.d, 14615i))), select(abs(vec2<u32>(u_input.c, u_input.a.x)), ~vec2<u32>(1u, global1.x), global0.c.wy)), global0.b.b), ~_wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-2147483647i, u_input.d) | -2147483647i), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(round(arg_0.c))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -606f);
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1430f, -261f))) - global0.a.xx))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global2.x, var_1.c)), -941f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - 340f), _wgslsmith_f_op_f32(trunc(var_2))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -634f, _wgslsmith_f_op_f32(trunc(-425f))))), arg_0, select(!(!vec4<bool>(true, arg_0.b, true, arg_0.b)), !global0.c, global0.b.b), Struct_1(_wgslsmith_add_u32(global1.x, ~var_1.a.x) & global0.d.a, arg_0.b, 1635f), _wgslsmith_f_op_f32(-var_1.c));
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = vec3<i32>(13755i, ~u_input.d, -(~(u_input.d ^ 2147483647i)) << (_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(abs(45944u), abs(global1.x))) % 32u));
    var var_1 = global0.d.c;
    global0 = func_2(global0.d);
    global0 = Struct_2(global0.a, Struct_1(u_input.b.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(487f * 757f))))), vec4<bool>(func_2(global0.d).b.b, true, _wgslsmith_f_op_f32(f32(-1f) * -224f) < global0.e, all(vec4<bool>(any(global0.c), true, -11170i < var_0.x, global0.b.b))), Struct_1(_wgslsmith_dot_vec3_u32(global1.zxz, select(vec3<u32>(1u, 1u, 53212u), ~vec3<u32>(4294967295u, global1.x, global1.x), vec3<bool>(global0.c.x, false, global0.c.x))), any(select(global0.c.yx, !vec2<bool>(global0.c.x, false), global0.c.yz)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -711f));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.c * 303f)) > _wgslsmith_f_op_f32(floor(880f));
    return global0.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.yx + global0.a.xw) + global0.a.zx), global0.a.yw, global0.d.b)), _wgslsmith_f_op_vec2_f32(func_1(u_input.b)));
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(global1.xz, ~global1.wy, abs(~vec2<u32>(0u, u_input.c) << (u_input.b.zw % vec2<u32>(32u)))), (u_input.d | (i32(-1i) * -u_input.d)) | ~(~u_input.d), _wgslsmith_f_op_f32(-795f - -1380f));
    global3 = array<vec4<f32>, 28>();
    global0 = func_2(func_2(Struct_1(abs(max(1u, 6394u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * _wgslsmith_f_op_f32(-var_0.c)))).b);
    var var_1 = -_wgslsmith_mod_vec3_i32(-vec3<i32>(_wgslsmith_mod_i32(-1i, 50112i), -1i, ~(-9640i)), -firstLeadingBit(max(vec3<i32>(var_0.b, var_0.b, -1i), vec3<i32>(var_0.b, u_input.d, -11685i))));
    let var_2 = any(!select(select(select(global0.c.zz, global0.c.yx, false), !global0.c.yx, select(vec2<bool>(global0.d.b, global0.d.b), vec2<bool>(global0.d.b, global0.c.x), vec2<bool>(true, global0.b.b))), !global0.c.zw, global0.c.xy));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 59081i, ~global1.x, global0.a);
}

