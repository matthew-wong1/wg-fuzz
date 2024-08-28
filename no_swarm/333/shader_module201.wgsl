struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<i32> {
    return vec2<i32>(u_input.a.x, firstLeadingBit(arg_1.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = vec4<u32>(max(global0.b, select(arg_2.x, firstTrailingBit(~global0.b), true)), 24810u, reverseBits((global0.b & 19750u) << (0u % 32u)), ~abs(68040u));
    global0 = Struct_2(global0.e.a.yx, ~max(var_0.x, arg_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_1.x, global0.e.b.x)), vec3<f32>(-876f, 1115f, arg_1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(global0.e.b.zxy, vec3<f32>(global0.c.x, 472f, -751f))))))), vec3<f32>(_wgslsmith_f_op_f32(abs(global0.d.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1045f, arg_1.x, global0.e.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.x))))), Struct_1(global0.e.a, _wgslsmith_f_op_vec4_f32(select(global0.e.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.d.b))), firstLeadingBit(1i) > _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(1i, 1i)))), !(!(global0.a.x && global0.e.c))), global0.d);
    global0 = Struct_2(vec2<bool>(global0.d.c, any(vec3<bool>(global0.d.c, global0.d.a.x, true))), (51520u << (_wgslsmith_mod_u32(~2244u, var_0.x) % 32u)) ^ global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.b.x, global0.d.b.x, -779f) * vec3<f32>(747f, 1714f, -103f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, -684f, -200f)))))), global0.d, Struct_1(select(select(vec4<bool>(global0.d.c, global0.a.x, global0.e.c, global0.d.c), !global0.d.a, vec4<bool>(true, global0.e.a.x, true, global0.a.x)), !select(vec4<bool>(global0.e.a.x, global0.d.c, global0.a.x, true), vec4<bool>(true, global0.e.a.x, global0.d.c, global0.d.a.x), global0.d.a), all(select(vec2<bool>(global0.d.c, global0.d.a.x), global0.e.a.yy, false))), vec4<f32>(2215f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-192f - global0.d.b.x), _wgslsmith_f_op_f32(-global0.e.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, 785f)) - _wgslsmith_f_op_f32(round(-1263f))), _wgslsmith_f_op_f32(select(-193f, _wgslsmith_f_op_f32(-global0.e.b.x), global0.a.x))), any(select(global0.d.a.wxy, vec3<bool>(global0.e.c, global0.a.x, false), global0.e.c)) && (global0.b != _wgslsmith_mult_u32(68318u, 1u))));
    global0 = Struct_2(global0.d.a.xz, ~(~max(arg_2.x ^ 0u, global0.b)), global0.e.b.yzz, Struct_1(global0.d.a, global0.d.b, global0.a.x), global0.d);
    let var_1 = Struct_4(-538f);
    return _wgslsmith_clamp_u32(_wgslsmith_div_u32(max(~global0.b, 0u), ~(~arg_2.x)), arg_2.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, 4294967295u) ^ 1u, global0.b)) >> (_wgslsmith_dot_vec3_u32(var_0.zwx, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, var_0.x, var_0.x), ~var_0.zzz, vec3<u32>(4294967295u, arg_2.x, arg_2.x))) % 32u);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = countOneBits(1u) & global0.b;
    var var_1 = Struct_5(vec4<i32>(1i, _wgslsmith_add_i32(abs(arg_3) << (~5694u % 32u), 2147483647i), -23763i, i32(-1i) * -4777i));
    var_1 = Struct_5(var_1.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.d.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(step(-667f, -1309f)));
    return Struct_1(!(!global0.e.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1776f, -731f, global0.c.x, 985f), vec4<f32>(var_2, global0.e.b.x, global0.e.b.x, -229f), false))))), !(!(!all(global0.d.a.xyw))));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = global0.d;
    var var_1 = abs(1u);
    global0 = Struct_2(global0.d.a.yy, 0u, global0.e.b.zxz, func_4(func_3(-func_2(vec2<u32>(global0.b, global0.b), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), global0.c, ~(~vec2<u32>(113722u, 4294967295u))), u_input.a.x ^ u_input.a.x, select(global0.d.a.wwz, !select(vec3<bool>(global0.d.c, var_0.c, global0.a.x), vec3<bool>(global0.a.x, false, true), global0.a.x), var_0.c), min(abs(u_input.a.x), -2147483647i)), Struct_1(func_4(~global0.b, -13575i, func_4(global0.b, ~u_input.a.x, select(var_0.a.xxw, var_0.a.xzz, true), u_input.a.x).a.wzx, -2147483647i).a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d.b)))), false));
    var var_2 = -(~(-2147483647i));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(abs(497f)));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(-124f));
    global0 = Struct_2(select(!(!(!global0.e.a.wy)), func_4(global0.b, func_2(vec2<u32>(global0.b, global0.b), u_input.a).x ^ ~(-2147483647i), vec3<bool>(true, true, false), -38270i).a.wz, global0.d.a.xx), global0.b, global0.d.b.wyz, func_4(_wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(global0.b), ~4294967295u, 4294967295u), global0.b), -37390i, global0.d.a.zzy, func_2(~firstTrailingBit(vec2<u32>(1u, global0.b)), ~vec3<i32>(-2147483647i, 1i, u_input.a.x)).x), global0.d);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_1(-1012f)));
    var var_2 = Struct_3(u_input.a.x & -2147483647i, global0.e.a.yx, 0u, ~0u);
    var var_3 = _wgslsmith_f_op_vec3_f32(-func_4((~global0.b | global0.b) | ~var_2.d, u_input.a.x, !vec3<bool>(any(vec2<bool>(false, global0.a.x)), true, true), _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, var_2.a), vec2<i32>(u_input.a.x, var_2.a)), var_2.a)).b.xwy);
    var var_4 = Struct_2(var_2.b, 1u, global0.d.b.zyy, Struct_1(!select(func_4(0u, u_input.a.x, global0.d.a.ywx, 18018i).a, !vec4<bool>(true, var_2.b.x, false, false), var_2.a < -28151i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(global0.d.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.a, var_3.x, var_0)), vec4<bool>(var_2.b.x, true, global0.d.a.x, false)))), global0.b < ~1u), Struct_1(func_4(abs(1u), -52081i, vec3<bool>(var_2.b.x, any(global0.e.a), select(var_2.b.x, var_2.b.x, false)), -2147483647i ^ var_2.a).a, vec4<f32>(-821f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))), var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0)))), true && !global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(func_3(min(abs(u_input.a.zy), u_input.a.zy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1392f, var_0)) + var_4.e.b.zxx), vec2<u32>(1u, ~var_2.c)), 85282u), u_input.a.x, func_3(_wgslsmith_sub_vec2_i32(~u_input.a.zy, u_input.a.yz), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -823f)), var_1.a, _wgslsmith_div_f32(915f, _wgslsmith_f_op_f32(step(var_3.x, var_0)))), vec2<u32>(~var_4.b, _wgslsmith_mod_u32(global0.b, var_4.b)) ^ ~(~vec2<u32>(global0.b, var_2.d))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.b.x, 212f, 276f) - var_4.d.b.zyz)), _wgslsmith_f_op_vec3_f32(exp2(func_4(4294967295u, u_input.a.x, vec3<bool>(var_2.b.x, true, global0.a.x), -39073i).b.xzw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_4.e.b.xwx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.a, global0.c.x) + vec3<f32>(410f, -904f, var_1.a))))))));
}

