struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(631f, 279f), vec3<u32>(10275u, 33778u, 123808u), true, vec3<f32>(1464f, -802f, 1145f));

var<private> global1: vec3<f32> = vec3<f32>(117f, -703f, 213f);

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.x, 576f)), _wgslsmith_f_op_f32(-global1.x)), vec2<f32>(_wgslsmith_div_f32(-518f, global0.d.x), -1000f))), ~global0.b, global0.c, global0.d);
    global2 = global0.b.xz;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.x * var_0.d.x))), var_0.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(-1152f + global0.d.x), -235f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) - _wgslsmith_div_f32(297f, 375f)), 243f))));
    global2 = select(~vec2<u32>(var_0.b.x, _wgslsmith_mult_u32(0u, global2.x)), var_0.b.yy, global0.c) >> ((((_wgslsmith_mod_vec2_u32(vec2<u32>(36559u, global2.x), global0.b.yz) << (max(var_0.b.yy, global0.b.xy) % vec2<u32>(32u))) ^ max(min(vec2<u32>(global0.b.x, global0.b.x), global0.b.xx), var_0.b.zx | var_0.b.yz)) ^ abs(~vec2<u32>(0u, 639u))) % vec2<u32>(32u));
    return _wgslsmith_dot_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(var_0.b.xz, var_0.b.xy, vec2<u32>(var_0.b.x, 1u)) ^ vec2<u32>(var_0.b.x, global2.x), _wgslsmith_sub_vec2_u32(vec2<u32>(7829u, 1u), ~vec2<u32>(4294967295u, 4294967295u)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), var_0.c), !vec2<bool>(var_0.c, false), vec2<bool>(true, true))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.b.x), firstTrailingBit(var_0.b.yx))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global2 = ~vec2<u32>(49341u, func_3());
    var var_0 = 0i;
    var_0 = _wgslsmith_mod_i32(-8579i, 15452i) & u_input.a.x;
    let var_1 = ~u_input.a.x;
    var var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, _wgslsmith_div_f32(-1698f, -254f), _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0.d), global0.d)));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_0.d);
    let var_1 = _wgslsmith_f_op_f32(abs(func_2(~(~vec4<u32>(arg_0.b.x, global2.x, global2.x, 81045u)), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), vec3<u32>(4294967295u, 22320u, 0u), arg_0.c, _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, var_0.x, -446f), vec3<f32>(arg_0.d.x, -590f, arg_0.d.x))), Struct_1(vec2<f32>(-100f, -911f), global0.b, any(vec2<bool>(true, arg_0.c)), global0.d), global0.d).d.x)) == var_0.x;
    let var_2 = select(!vec2<bool>(true, global0.c), !select(select(select(vec2<bool>(arg_0.c, true), vec2<bool>(false, var_1), vec2<bool>(false, var_1)), select(vec2<bool>(var_1, arg_0.c), vec2<bool>(var_1, arg_0.c), false), any(vec4<bool>(global0.c, arg_0.c, false, arg_0.c))), !vec2<bool>(false, var_1), vec2<bool>(!arg_0.c, var_1)), !vec2<bool>(!(false && global0.c), arg_0.c));
    var var_3 = arg_0;
    return !var_2;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = func_2(~firstTrailingBit(vec4<u32>(arg_0.x >> (global2.x % 32u), global0.b.x, global0.b.x, _wgslsmith_div_u32(global0.b.x, 15233u))), func_2(reverseBits(arg_0), func_2(~abs(vec4<u32>(23095u, arg_0.x, 88377u, global2.x)), arg_3, Struct_1(vec2<f32>(arg_3.d.x, 1439f), ~arg_0.zxx, true, _wgslsmith_div_vec3_f32(arg_3.d, vec3<f32>(-973f, global0.d.x, global1.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, 579f, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -915f, global1.x) * global0.d))), arg_3, vec3<f32>(global0.d.x, _wgslsmith_div_f32(-103f, _wgslsmith_f_op_f32(global1.x - -1301f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.d.x))))), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(53951u, min(48252u, 90731u), arg_0.x, _wgslsmith_mod_u32(1u, 1u)), vec4<u32>(7559u, ~47920u, 0u, ~75778u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(315f, 1323f) * _wgslsmith_div_vec2_f32(global1.zz, global0.d.xz)), arg_0.zxy, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(216f, -1546f, arg_3.d.x))))), arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.d.x, -230f, -753f), vec3<f32>(607f, global1.x, -384f), vec3<bool>(arg_3.c, false, false))) + vec3<f32>(-739f, global1.x, global1.x)) * vec3<f32>(_wgslsmith_div_f32(-740f, 594f), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-arg_3.d.x)))), global0.d);
    let var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = all(vec3<bool>(var_2.c, true, var_2.c));
    var var_4 = vec2<bool>(any(select(!vec4<bool>(true, false, var_1.c, arg_3.c), vec4<bool>(false && var_1.c, false, false || var_3, any(vec4<bool>(false, arg_3.c, arg_1, var_2.c))), true)), all(arg_2));
    return ~((max(-1i, _wgslsmith_sub_i32(-17474i, u_input.a.x)) | -21851i) ^ 2484i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<i32>(-41010i, 0i, -1i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1052f, 664f), vec2<f32>(-170f, 1097f))), _wgslsmith_f_op_vec2_f32(global1.zx + global0.d.xy))), global0.b | ~global0.b, all(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, global0.c), global0.c), select(select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, true, true), global0.c), !vec3<bool>(global0.c, true, false), select(vec3<bool>(global0.c, false, global0.c), vec3<bool>(global0.c, false, false), vec3<bool>(true, true, true))), all(!vec2<bool>(global0.c, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.d))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, -702f, global1.x)), vec3<f32>(global0.d.x, global0.a.x, global1.x)))));
    var_1 = Struct_1(var_1.a, ~vec3<u32>(~_wgslsmith_div_u32(var_1.b.x, var_1.b.x), _wgslsmith_div_u32(1u, 1073u), ~1u), global0.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(var_1.a.x, 1f), global0.d.x, global0.d.x))));
    var var_2 = select(min(u_input.a.x, func_5(vec4<u32>(abs(arg_0), _wgslsmith_sub_u32(53993u, arg_0), ~var_1.b.x, reverseBits(7848u)), true, func_4(func_2(vec4<u32>(var_1.b.x, var_1.b.x, arg_0, 1u), Struct_1(var_1.a, var_1.b, false, vec3<f32>(-856f, var_1.a.x, 1561f)), Struct_1(vec2<f32>(-593f, 736f), vec3<u32>(2505u, 0u, global0.b.x), false, var_1.d), global0.d)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1981f, -922f) * vec2<f32>(global1.x, -1000f)), vec3<u32>(var_1.b.x, 1u, 4294967295u), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.a.x, 1548f))))), var_0.x, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(950f, global0.d.x), global0.d.zy), _wgslsmith_f_op_vec2_f32(-var_1.d.yx))), firstLeadingBit(~vec3<u32>(11366u, 51139u, arg_0)), true, vec3<f32>(_wgslsmith_f_op_f32(step(-322f, 306f)), -1227f, _wgslsmith_f_op_f32(var_1.d.x * 860f)))).x);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, var_1.a.x, global1.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_3.zx), func_2(vec4<u32>(var_1.b.x, global0.b.x, 1u, global0.b.x), Struct_1(vec2<f32>(global0.a.x, global0.d.x), global0.b, true, vec3<f32>(var_3.x, var_1.a.x, var_1.a.x)), func_2(vec4<u32>(1364u, global0.b.x, var_1.b.x, 33590u), Struct_1(vec2<f32>(1123f, global0.a.x), global0.b, global0.c, vec3<f32>(var_1.d.x, 385f, var_1.a.x)), Struct_1(var_3.yx, global0.b, var_1.c, vec3<f32>(var_3.x, global1.x, global1.x)), vec3<f32>(var_3.x, 468f, 957f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -532f, -752f))).d.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1725f, _wgslsmith_f_op_f32(404f - -229f))))), var_1.b, true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global0.d, vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.d.x)), global1.x, _wgslsmith_f_op_f32(-global1.x)))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(func_3(), countOneBits(~(global2.x & ~global0.b.x)));
    let var_1 = arg_1;
    let var_2 = var_1;
    var var_3 = Struct_1(arg_1.a, var_2.b, arg_1.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))) + _wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(trunc(var_2.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(round(208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d.x, 1442f))))), -659f));
    var var_4 = arg_0;
    return var_1;
}

fn func_7(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_sub_i32(max(-u_input.a.x, ~(-47266i)), -1111i) << (((arg_1.b.x ^ 127612u) | 35511u) % 32u);
    global0 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a - var_1.d.zy))), countOneBits(~(global0.b & abs(global0.b))), !(global0.c | (~1u < ~global0.b.x)), vec3<f32>(arg_1.d.x, var_1.d.x, 1268f));
    return -451f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~global0.b));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.xz, _wgslsmith_f_op_vec2_f32(global1.yy + global1.zy))), ~(global0.b ^ vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.yx, global0.b.xx), reverseBits(100626u), ~0u)), global0.c, vec3<f32>(_wgslsmith_f_op_f32(func_7(true, func_6(func_1(65207u), Struct_1(vec2<f32>(global1.x, global1.x), vec3<u32>(global2.x, 9810u, 22860u), true, global0.d)))), global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1953f)));
    var var_2 = func_2(select(vec4<u32>(firstLeadingBit(1u), ~min(7218u, 4294967295u), 0u, 1u), vec4<u32>(5502u, 0u, 28499u, ~21202u), !(!vec4<bool>(false, var_1.c, false, false))), func_1(var_1.b.x), func_2(vec4<u32>(~_wgslsmith_div_u32(1u, 1u), 0u, countOneBits(_wgslsmith_add_u32(2338u, global0.b.x)), max(countOneBits(0u), ~global0.b.x)), Struct_1(global0.d.xx, select(global0.b, var_1.b, vec3<bool>(false, false, global0.c)), global0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.d), global0.d, global0.c))), func_1(47030u), global0.d), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + global1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1080f + var_1.d.x) + 739f)), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + global0.d.x)));
    var_1 = Struct_1(global0.a, var_2.b, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_vec3_f32(var_2.d * vec3<f32>(-1766f, 795f, -217f)), true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1358f, -1174f, -3404f), global0.d)) - var_1.d) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.d), _wgslsmith_f_op_vec3_f32(abs(var_2.d)))))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) * global1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2374f, 974f), vec2<f32>(global0.d.x, global0.a.x), select(vec2<bool>(var_1.c, true), vec2<bool>(false, var_1.c), vec2<bool>(false, global0.c)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(464f, _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1757f * var_2.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_2.d.x), var_3.x, 1000f));
}

