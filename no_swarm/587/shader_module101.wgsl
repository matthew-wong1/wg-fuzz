struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 0i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = ~vec2<u32>(~(~0u), 4294967295u);
    var var_1 = u_input.e.wyy;
    var_1 = ~vec3<i32>(-2147483647i, -71104i, 9448i);
    let var_2 = vec3<bool>(true, !arg_0, arg_0);
    var var_3 = _wgslsmith_sub_i32(var_1.x, global0.b << (u_input.d.x % 32u));
    return u_input.d.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = Struct_1(~global0.c, global0.b, vec3<u32>(_wgslsmith_sub_u32(func_3(45675u > global0.a.x, Struct_1(global0.c, u_input.e.x, global0.c, vec2<f32>(412f, -1472f), vec4<f32>(-785f, global0.e.x, -1256f, global0.d.x)), min(global0.b, u_input.c.x)), ~u_input.b.x), u_input.d.x, 84430u), global0.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-258f, 1f, -558f, _wgslsmith_f_op_f32(global0.e.x + -228f)), global0.e, !(global0.d.x > global0.d.x))))));
    global1 = (i32(-1i) * -1i) << (~(~(_wgslsmith_mod_u32(global0.c.x, 4294967295u) & 4294967295u)) % 32u);
    global1 = ~select(-35975i, reverseBits(1i), !(!arg_0.x));
    global1 = -abs(abs(min(-29049i, _wgslsmith_dot_vec2_i32(vec2<i32>(-97452i, u_input.e.x), vec2<i32>(global0.b, global0.b)))));
    global1 = global0.b;
    return Struct_1(global0.c, i32(-1i) * -max(2147483647i & global0.b, u_input.c.x), _wgslsmith_mult_vec3_u32(abs(~select(vec3<u32>(44103u, global0.a.x, u_input.a), global0.a, arg_0.x)), _wgslsmith_mod_vec3_u32(global0.c, global0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1491f, global0.e.x), _wgslsmith_div_vec2_f32(global0.e.wz, vec2<f32>(-1552f, global0.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-591f, 368f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, global0.d.x))) * _wgslsmith_div_vec2_f32(global0.d, _wgslsmith_div_vec2_f32(global0.e.zx, vec2<f32>(367f, -3170f))))), global0.e);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = func_2(!vec3<bool>(select(all(vec4<bool>(true, false, true, true)), true, true), 223f <= _wgslsmith_f_op_f32(max(arg_2, arg_1.e.x)), abs(arg_1.a.x) != _wgslsmith_sub_u32(2911u, u_input.b.x)));
    let var_1 = Struct_1(firstLeadingBit(vec3<u32>(71582u, var_0.a.x, arg_1.c.x)), ~min(arg_1.b, ~min(u_input.c.x, 0i)), ~arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1261f, global0.d.x), global0.e.wy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.e.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 1881f, 1138f, -701f))));
    let var_2 = false;
    var var_3 = var_0.b;
    var_3 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> StorageBuffer {
    let var_0 = Struct_1(select(~global0.c, ~global0.c, vec3<bool>(u_input.d.x != _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(5484u, u_input.a)), false, u_input.c.x != (i32(-1i) * -2147483647i))), 1i, global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1021f, 656f) * _wgslsmith_f_op_vec2_f32(-global0.e.yz)))), _wgslsmith_f_op_vec4_f32(-global0.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(var_0.e.zyy));
    global0 = Struct_1(global0.a, var_0.b, ~var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d * global0.d)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2594f, -1217f)), global0.d)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1237f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 145f, -220f, 317f)), _wgslsmith_f_op_vec4_f32(select(global0.e, global0.e, true))) + _wgslsmith_f_op_vec4_f32(-global0.e)), _wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(-685f, func_2(vec3<bool>(false, false, true)).d.x, _wgslsmith_f_op_f32(ceil(global0.d.x)), _wgslsmith_f_op_f32(abs(var_0.e.x)))))));
    let var_2 = vec2<i32>(arg_1.x ^ _wgslsmith_mult_i32(abs(global0.b), u_input.c.x >> (global0.a.x % 32u)), -var_0.b) ^ arg_1.ww;
    global1 = ~_wgslsmith_sub_i32(firstLeadingBit(2147483647i), ~(~_wgslsmith_clamp_i32(1i, -2147483647i, var_2.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(540f, func_2(vec3<bool>(false, true, false)).e.x)), global0.e.x)))), u_input.e.wyx & _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, 0i, var_2.x) >> (global0.c % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(30518i, -1i, global0.b), arg_1.zxz, arg_1.wxz), vec3<i32>(~(-31675i), 0i, 1i)), _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~1u), ~reverseBits(1859u)), select(1u, var_0.a.x, true)), firstLeadingBit(~_wgslsmith_clamp_vec2_u32(~global0.c.zz, var_0.a.zz, global0.a.xy ^ vec2<u32>(u_input.a, 175u))), var_0.c.zz | var_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = countOneBits(-_wgslsmith_sub_i32(_wgslsmith_add_i32(min(8634i, global0.b), u_input.e.x), _wgslsmith_add_i32(global0.b, u_input.e.x)));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(global0.c, u_input.e.x, global0.c, global0.d, global0.e), _wgslsmith_div_f32(-487f, global0.e.x))), 1000f), global0.e.x)), u_input.e);
}

