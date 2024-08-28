struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-1i, -1i, 0i, 2147483647i, 1i, 9185i, i32(-2147483648), i32(-2147483648), 10922i, -53750i, 46724i, 0i, 1i, 54174i, 1i, -1i, -1i, -11105i, 29315i, 2147483647i, -7812i, -15138i, 2147483647i, -25520i, 1i, i32(-2147483648), 1i);

var<private> global1: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<i32, 27>();
    let var_0 = -1i;
    var var_1 = !(!select(select(vec4<bool>(true, true, true, false), !vec4<bool>(arg_2.b.x, global1.x, false, global1.x), all(arg_2.b.yy)), !(!vec4<bool>(false, false, arg_2.b.x, true)), any(!vec4<bool>(global1.x, true, global1.x, false))));
    global0 = array<i32, 27>();
    var var_2 = Struct_2(countOneBits(u_input.b.x) | (global0[_wgslsmith_index_u32(firstLeadingBit(26444u), 27u)] & var_0), select(vec2<bool>(global1.x, all(arg_2.b.xz)), !arg_2.b.zy, !global1.x), !select(!select(vec4<bool>(true, true, arg_2.b.x, true), vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, true, false, arg_2.b.x)), select(vec4<bool>(global1.x, true, global1.x, true), !vec4<bool>(arg_2.b.x, global1.x, false, var_1.x), any(vec4<bool>(false, false, false, global1.x))), any(select(vec4<bool>(false, global1.x, true, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_2.b.x, true, arg_2.b.x), vec4<bool>(global1.x, arg_2.b.x, true, false)))), u_input.b.wx);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, arg_0, _wgslsmith_f_op_f32(max(-2138f, -670f)), _wgslsmith_f_op_f32(1056f + -1109f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1165f, arg_0, arg_0, 100f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.x, arg_2.a.x, -1218f, arg_2.a.x), vec4<f32>(arg_0, 653f, -271f, arg_2.a.x))), vec4<f32>(arg_0, arg_0, arg_2.a.x, arg_0)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, _wgslsmith_div_f32(arg_0, -1000f), arg_2.a.x, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 685f, -1533f, arg_2.a.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<bool> {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1)), _wgslsmith_f_op_vec4_f32(func_3(1096f, u_input.a, Struct_1(vec3<f32>(arg_1.x, arg_1.x, -641f), vec3<bool>(false, true, global1.x), vec2<u32>(0u, 4294967295u)))))))), arg_1);
    return arg_0.c.yzw;
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 27>();
    global1 = func_2(Struct_2(firstLeadingBit(-reverseBits(global0[_wgslsmith_index_u32(u_input.e, 27u)])), !(!select(vec2<bool>(global1.x, global1.x), global1.zy, global1.x)), vec4<bool>(!(u_input.d.x < 47293u), global1.x, any(global1.yx), global1.x), vec2<i32>(1i & _wgslsmith_clamp_i32(-2147483647i, -38537i, global0[_wgslsmith_index_u32(15158u, 27u)]), global0[_wgslsmith_index_u32(u_input.d.x, 27u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, _wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(min(2177f, -1297f)), _wgslsmith_div_f32(-1031f, -952f)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1590f * 501f) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-256f))), ~(~36628u), Struct_1(vec3<f32>(-1000f, -1000f, 931f), !vec3<bool>(false, global1.x, global1.x), vec2<u32>(u_input.a, u_input.d.x)))).x) == -311f;
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 27u)]) ^ 43751i, -(i32(-1i) * -2147483647i), u_input.b.x) & ~(~vec3<i32>(u_input.b.x, 0i, global0[_wgslsmith_index_u32(u_input.a, 27u)]) ^ ~u_input.b.wzx));
    global0 = array<i32, 27>();
    return Struct_2(-30575i, !vec2<bool>(all(!global1.xz), any(func_2(Struct_2(-1i, vec2<bool>(var_0, var_0), vec4<bool>(global1.x, global1.x, false, var_0), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 27u)], 0i)), vec4<f32>(1000f, -991f, 723f, 373f)))), !select(!(!vec4<bool>(true, global1.x, false, var_0)), !select(vec4<bool>(global1.x, true, false, true), vec4<bool>(false, var_0, false, true), vec4<bool>(global1.x, global1.x, true, global1.x)), select(!vec4<bool>(var_0, global1.x, false, var_0), select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, global1.x, false, false), true), all(global1.xx))), -var_1.a.yy);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1065f, 1982f, 185f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(841f, -843f, 400f), vec3<f32>(1494f, -475f, -726f)))))), !vec3<bool>(all(arg_0.c.wxy), global1.x && arg_0.b.x, global1.x), vec2<u32>(9591u, u_input.d.x)), -2147483647i << (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.d), abs(u_input.d), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(u_input.a, u_input.d.x, 58932u, 0u))), (vec4<u32>(0u, u_input.e, 0u, u_input.a) | vec4<u32>(1u, 46803u, 1u, u_input.a)) >> (vec4<u32>(u_input.e, 8738u, 1u, 4294967295u) % vec4<u32>(32u))) % 32u), !(all(vec2<bool>(global1.x, false)) == global1.x), vec4<u32>(u_input.e, abs(_wgslsmith_mod_u32(u_input.e << (0u % 32u), ~4294967295u)), u_input.d.x, 9282u));
    let var_1 = vec4<u32>(u_input.a, ~(~min(0u, reverseBits(u_input.a))), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.zx, ~vec2<u32>(var_0.d.x, u_input.e)), 17798u), ~var_0.d.x), var_0.d.x);
    let var_2 = any(!select(func_1().b, select(var_0.a.b.xz, func_1().b, global1.yz), arg_0.b));
    var_0 = Struct_4(Struct_1(var_0.a.a, func_1().c.xxy, u_input.d.zx), u_input.b.x & select(2147483647i, -_wgslsmith_sub_i32(var_0.b, 1i), (var_0.b << (33442u % 32u)) >= u_input.b.x), true, ~(~(~vec4<u32>(4294967295u, 4294967295u, 44765u, 35283u))));
    global0 = array<i32, 27>();
    return any(func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(func_4(func_1()), true, global1.x));
    global1 = !func_1().c.yzw;
    let var_1 = u_input.b;
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1586f, -834f, -211f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1029f, 404f, 454f)), all(vec3<bool>(false, global1.x, global1.x)) == var_0.x)), !func_1().c.xwx, select(~firstTrailingBit(vec2<u32>(u_input.d.x, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 40283u) & u_input.d.wx, vec2<u32>(u_input.d.x, 106403u)), var_0.x)), _wgslsmith_mult_i32(26759i, 6144i) >> (_wgslsmith_sub_u32(_wgslsmith_div_u32(abs(u_input.e), 0u), reverseBits(~91785u)) % 32u), false && (_wgslsmith_sub_i32(var_1.x, global0[_wgslsmith_index_u32(0u, 27u)] >> (u_input.e % 32u)) >= 19019i), vec4<u32>(reverseBits(~u_input.d.x), 1u, u_input.a, _wgslsmith_dot_vec2_u32(~u_input.d.yz, vec2<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.a), _wgslsmith_div_u32(u_input.e, 0u)))));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(var_2.d.xwy, ~u_input.d.wxw), _wgslsmith_div_vec3_u32(var_2.d.yxz ^ vec3<u32>(4294967295u, 4294967295u, 37178u), max(var_2.d.xwy, u_input.d.zzw))), countOneBits(reverseBits(var_2.d.yzz | vec3<u32>(var_2.a.c.x, 18013u, 13450u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.a.a.x, -299f, -972f)), vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.a.a.x, -711f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(928f, var_2.a.a.x, var_2.a.a.x, 741f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(835f, -1000f, 606f, var_2.a.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)), var_2.a.a.x, 1941f))), u_input.c, var_2.d.zwz);
}

