struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(46853u, 1u), -510f, vec4<bool>(false, false, false, true), vec3<u32>(31652u, 1u, 1u), 867u);

var<private> global1: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1736f);
    var var_1 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(global0.a.x, u_input.b, arg_1.x) | firstTrailingBit(vec3<u32>(34763u, arg_1.x, 101683u)))), vec3<u32>(12977u, 0u, arg_1.x));
    let var_2 = ~_wgslsmith_div_i32(~u_input.a.x, -u_input.a.x) & max(u_input.a.x, _wgslsmith_div_i32(-16370i, select(u_input.a.x, u_input.a.x, global0.c.x) ^ firstLeadingBit(41464i)));
    var_0 = _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-760f - 1000f))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(abs(global0.b)), any(vec2<bool>(true, true))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1812f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + global0.b), global0.b)))), !(!(!all(global0.c.xz)))));
    return max(firstTrailingBit(abs(abs(arg_1))), ~arg_1) | _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_1.x, 4294967295u, 4294967295u, global0.d.x) | arg_1), max(arg_1, arg_1), vec4<u32>(countOneBits(~0u), reverseBits(0u), u_input.b, ~1u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    global0 = arg_0;
    let var_0 = global0.c.yz;
    let var_1 = countOneBits(_wgslsmith_sub_vec4_u32(~min(vec4<u32>(47126u, arg_0.e, 1u, u_input.b), vec4<u32>(arg_2.e, 0u, u_input.b, 1u)) | ~(~vec4<u32>(u_input.b, arg_0.a.x, u_input.b, arg_2.a.x)), max(func_3(vec3<u32>(arg_2.e, u_input.b, 10794u), vec4<u32>(0u, u_input.b, arg_2.e, 0u)), ~vec4<u32>(43121u, 16254u, 49861u, 64112u)) >> (~(~vec4<u32>(arg_0.e, arg_0.e, arg_2.e, 0u)) % vec4<u32>(32u))));
    let var_2 = select(global0.c.xx, vec2<bool>(all(arg_0.c.xz), var_0.x), any(arg_0.c.wy) | all(arg_1.a));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1348f, arg_2.b), arg_0.b)))) + arg_2.b);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = global0.c.xw;
    global0 = Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b | 14790u, _wgslsmith_mult_u32(1u, u_input.b)), ~min(arg_0.zx, ~global0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(arg_0.x, 0u), global0.b, !global0.c, countOneBits(vec3<u32>(u_input.b, global0.d.x, 0u)), 19343u), Struct_1(!global0.c.wxy), Struct_2(firstTrailingBit(global0.d.zx), _wgslsmith_f_op_f32(ceil(841f)), vec4<bool>(global0.c.x, false, false, global0.c.x), firstTrailingBit(vec3<u32>(arg_0.x, u_input.b, u_input.b)), 1u), -vec2<i32>(u_input.a.x, 1i))))), global0.c, select(max(max(vec3<u32>(global0.a.x, 1u, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 0u)), ~reverseBits(arg_0.zzw)), vec3<u32>(global0.e | countOneBits(u_input.b), min(_wgslsmith_clamp_u32(arg_0.x, u_input.b, u_input.b), abs(13266u)), ~_wgslsmith_div_u32(arg_0.x, u_input.b)), var_0.x), max(_wgslsmith_dot_vec3_u32(~global0.d, func_3(vec3<u32>(global0.a.x, u_input.b, arg_0.x), arg_0).www >> (global0.d % vec3<u32>(32u))), 1u));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + _wgslsmith_f_op_f32(global0.b + 1000f)) - _wgslsmith_f_op_f32(-global0.b))), global0.b));
    let var_2 = u_input.a ^ vec3<i32>(u_input.a.x << (40779u % 32u), i32(-1i) * -firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(-40884i, 0i, _wgslsmith_sub_i32(~u_input.a.x, u_input.a.x)));
    var var_3 = 4294967295u & (u_input.b | global0.a.x);
    return !(!select(global0.c.wzw, !(!vec3<bool>(false, var_0.x, true)), select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, true), !global0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(func_1(abs(vec4<u32>(u_input.b, u_input.b, 1u, 22239u) << (vec4<u32>(u_input.b, u_input.b, 22693u, u_input.b) % vec4<u32>(32u))))), (vec3<u32>(1u, global0.e, abs(46892u)) & ~(~global0.d)) ^ select(vec3<u32>(u_input.b, _wgslsmith_mult_u32(34126u, global0.d.x), ~u_input.b), _wgslsmith_clamp_vec3_u32(global0.d, global0.d, vec3<u32>(u_input.b, u_input.b, 4294967295u)), (u_input.a.x | 51615i) < u_input.a.x), Struct_2(~global0.a, global0.b, vec4<bool>(false, _wgslsmith_f_op_f32(min(212f, global0.b)) > _wgslsmith_f_op_f32(f32(-1f) * -537f), all(vec2<bool>(true, false)) || !global0.c.x, !func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)).x), min(_wgslsmith_sub_vec3_u32(global0.d, select(global0.d, vec3<u32>(global0.e, 75443u, u_input.b), global0.c.zyz)), min(vec3<u32>(u_input.b, global0.a.x, 4294967295u), reverseBits(vec3<u32>(52787u, global0.a.x, global0.e)))), ~_wgslsmith_mult_u32(36775u, 49430u)));
    global1 = _wgslsmith_f_op_f32(-var_0.c.b);
    let var_1 = _wgslsmith_sub_u32(var_0.c.e >> (0u % 32u), ~(~global0.e));
    global0 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(91808u, 0u), vec2<u32>(4294967295u, 0u)) ^ ~u_input.b), func_3(global0.d, vec4<u32>(22826u ^ global0.e, ~u_input.b, var_0.c.a.x, ~var_1)).x), _wgslsmith_f_op_f32(func_2(var_0.c, var_0.a, var_0.c, ~(~vec2<i32>(3101i, -2147483647i)))), vec4<bool>(!(false || global0.c.x), false, !any(func_1(vec4<u32>(56998u, 0u, 40228u, 14821u)).xz), var_0.c.c.x), vec3<u32>(global0.d.x, global0.a.x << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_0.c.a.x, u_input.b, 22913u), vec4<u32>(var_0.c.a.x, 1u, 1u, global0.a.x)) % 32u), ~var_1), _wgslsmith_add_u32(abs(19119u), 19313u & (func_3(vec3<u32>(var_1, 4294967295u, 0u), vec4<u32>(u_input.b, 103477u, var_0.c.e, var_0.c.a.x)).x | var_0.b.x)));
    global0 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-463f, global0.b, global0.b), vec3<f32>(global0.b, global0.b, var_0.c.b)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(106f, 1000f, -376f), vec3<f32>(-219f, global0.b, -192f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1000f, global0.b)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.b, var_0.c.b, -427f)))))), countOneBits(u_input.a.zy));
}

