struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(0u, 0u, 1u, 13869u, 0u, 57428u, 14568u, 1u, 23115u, 24002u, 1u, 18454u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> vec2<bool> {
    global0 = array<u32, 12>();
    var var_0 = Struct_3(arg_0);
    let var_1 = Struct_1(var_0.a.a, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(arg_2, global0[_wgslsmith_index_u32(27130u, 12u)], 0u, 4294967295u)), 4294967295u & u_input.c.x) >> (0u % 32u), 12u)], vec2<bool>(arg_0.e >= _wgslsmith_f_op_f32(f32(-1f) * -374f), var_0.a.c.x), _wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.d, arg_0.d))))))));
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return vec2<bool>(select(any(vec3<bool>(var_0.a.c.x, arg_0.c.x, true)), true, any(select(var_0.a.c, select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c, var_1.c), !var_0.a.c))), true);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = !(!vec3<bool>(arg_0, arg_0, _wgslsmith_add_i32(0i, u_input.a.x) >= (i32(-1i) * -29458i)));
    var var_1 = u_input.e | 0i;
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, -1i, u_input.d), vec4<i32>(u_input.b.x, u_input.d, -2147483647i, select(max(i32(-1i) * -8925i, 0i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.e), firstTrailingBit(u_input.e)), all(func_3(Struct_1(vec2<f32>(141f, 682f), 4294967295u, vec2<bool>(var_0.x, arg_0), -275f, -357f), 46525i, 80026u)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * _wgslsmith_div_f32(2235f, -1361f)))))), 276f);
    let var_3 = !(!vec3<bool>(select(!arg_0, true, false), arg_0, true));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1266f, 473f), vec2<f32>(1747f, 2475f))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1479f)))), 1u, vec2<bool>(var_3.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-822f, 176f)), _wgslsmith_f_op_f32(step(246f, -951f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_div_f32(568f, -1844f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~vec2<u32>((abs(20045u) ^ arg_2.a.b) & reverseBits(u_input.c.x), 0u);
    let var_1 = true || all(!vec3<bool>(arg_2.a.c.x, !arg_2.a.c.x, any(vec2<bool>(false, arg_2.a.c.x))));
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    var var_2 = arg_1;
    return Struct_3(arg_2.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(arg_0.a.c.x);
    var var_1 = func_2(false).a;
    var var_2 = select(arg_1, select(select(!(!arg_1), !arg_1, !select(var_0.a.c.x, arg_0.a.c.x, false)), vec3<bool>(!var_0.a.c.x != var_1.c.x, arg_0.a.c.x, true), !arg_1), true);
    var_0 = func_4(select(~countOneBits(~96502u), ~_wgslsmith_dot_vec3_u32(select(u_input.c.wxy, u_input.c.yzx, vec3<bool>(true, false, var_2.x)), vec3<u32>(arg_0.a.b, var_0.a.b, global0[_wgslsmith_index_u32(50726u, 12u)])), var_1.c.x), var_0.a, Struct_3(func_4(reverseBits(~u_input.c.x), func_2(false).a, arg_0).a));
    var var_3 = -1i;
    return var_0.a;
}

fn func_1(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(-567f));
    var var_1 = func_5(func_4(10396u, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1047f, 278f) - vec2<f32>(396f, 1359f))), ~global0[_wgslsmith_index_u32(20510u, 12u)], vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(121f)) * _wgslsmith_f_op_f32(-2309f - -1158f)), _wgslsmith_f_op_f32(abs(-1073f))), func_2(true)), !(!vec3<bool>(select(true, true, true), true, func_2(true).a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-591f, func_4(_wgslsmith_dot_vec3_u32(u_input.c.xwy, u_input.c.wxz), Struct_1(vec2<f32>(263f, -247f), 31779u, vec2<bool>(false, false), -948f, 346f), func_4(u_input.c.x, Struct_1(vec2<f32>(1000f, 221f), 4294967295u, vec2<bool>(true, false), -1000f, 600f), Struct_3(Struct_1(vec2<f32>(-1168f, 924f), u_input.c.x, vec2<bool>(false, true), -954f, 1615f)))).a.e) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, 2338f, false)))) + -1000f)));
    let var_2 = 4294967295u;
    let var_3 = var_1.b;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d));
    return ~u_input.c.xw;
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> vec4<f32> {
    global0 = array<u32, 12>();
    let var_0 = Struct_4(func_4(5502u, arg_0.a, func_2(true)).a, func_4(79757u, func_2(arg_0.a.c.x).a, arg_0).a.d, true, func_2(arg_0.a.c.x).a);
    global0 = array<u32, 12>();
    var var_1 = min(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xyx, u_input.c.wxz << (u_input.c.wyx % vec3<u32>(32u))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(56296u, u_input.c.x), _wgslsmith_sub_u32(4294967295u, 4294967295u))), u_input.c.wzw), ~abs(~vec3<u32>(arg_1, 4294967295u, global0[_wgslsmith_index_u32(arg_1, 12u)])));
    global0 = array<u32, 12>();
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(-1995f)), var_0.b, _wgslsmith_f_op_f32(select(429f, func_5(Struct_3(var_0.d), vec3<bool>(arg_0.a.c.x, false, false), var_0.a.e).d, var_0.d.c.x)), _wgslsmith_f_op_f32(-func_4(var_1.x, Struct_1(var_0.a.a, arg_0.a.b, arg_0.a.c, arg_0.a.e, var_0.a.d), arg_0).a.d)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.e))), func_2(!var_0.d.c.x).a.e, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))))), !select(!vec4<bool>(false, var_0.d.c.x, false, false), !(!vec4<bool>(var_0.d.c.x, false, false, var_0.c)), !(!vec4<bool>(arg_0.a.c.x, false, true, arg_0.a.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_6(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1454f, -521f)), 10467u, vec2<bool>(true, true), _wgslsmith_div_f32(657f, 1129f), -1626f)), _wgslsmith_dot_vec2_u32(select(u_input.c.zy, func_1(-6273i), vec2<bool>(false, false)), u_input.c.xx)))));
    global0 = array<u32, 12>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-942f * var_0.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(-1182f)))));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-712f, 139f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.wz))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -301f))), vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), u_input.c.x, !func_2(select(true, false, true)).a.c, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f), var_0.x), var_0.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a)))), 0u, var_2.c, var_0.x, -1159f);
    global0 = array<u32, 12>();
    var_2 = func_4(abs(46882u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(select(-784f, var_0.x, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, -753f), vec2<f32>(var_3.d, 1341f))))), max(23876u, 0u), var_2.c, 1093f, _wgslsmith_f_op_f32(trunc(430f))), Struct_3(func_2(false).a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, global0[_wgslsmith_index_u32(abs(firstLeadingBit(firstLeadingBit(1u))), 12u)], var_3.b), var_0, abs(u_input.a.x));
}

