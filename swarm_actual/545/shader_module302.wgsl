struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec4<f32> {
    return arg_0.e.a;
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = !select((_wgslsmith_mult_u32(1u, u_input.c.x) ^ (u_input.c.x ^ 53696u)) >= ~(~80986u), false, all(vec3<bool>(true, true, true)));
    var var_1 = Struct_3(3925i, u_input.c.xwy, u_input.d.wx, !vec3<bool>(false, true, any(vec4<bool>(true, false, false, true))), _wgslsmith_clamp_i32(-reverseBits(u_input.b & u_input.d.x), -2147483647i, _wgslsmith_dot_vec4_i32(u_input.d ^ u_input.d, ~u_input.d)));
    let var_2 = Struct_3(~9363i, u_input.c.www, u_input.d.yx, select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.d.x && var_1.d.x, all(vec3<bool>(var_1.d.x, true, true))), var_1.d, var_1.d), any(!vec4<bool>(true, var_1.d.x, false, var_1.d.x))), u_input.d.x);
    var var_3 = var_2.d;
    return select(!vec4<bool>(var_2.d.x, true, !var_2.d.x, true), vec4<bool>(var_2.d.x, var_1.d.x, all(select(var_1.d, var_2.d, vec3<bool>(true, var_3.x, var_1.d.x))) || (901f < arg_0), all(select(vec4<bool>(var_1.d.x, true, false, var_1.d.x), vec4<bool>(true, var_3.x, true, false), vec4<bool>(var_1.d.x, true, false, var_3.x)))), !(!vec4<bool>(true, select(true, true, var_2.d.x), var_2.d.x, any(vec4<bool>(false, var_2.d.x, var_1.d.x, var_1.d.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -1000f, 1000f, -216f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 146f, 346f, -1689f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(577f, -1054f, 1352f, -1456f))))))));
    var var_2 = u_input.c.yzw;
    let var_3 = u_input.c.xwz;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-471f - _wgslsmith_f_op_f32(-var_1.a.x)))));
    return Struct_2(_wgslsmith_f_op_f32(select(-380f, -576f, any(func_3(_wgslsmith_div_f32(611f, 1000f))))), ~79541u, -2147483647i, true, Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(912f)) - _wgslsmith_f_op_f32(-442f * -1980f)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - -416f) + _wgslsmith_f_op_f32(var_1.a.x * 964f)))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(2147483647i, vec3<u32>(_wgslsmith_div_u32(arg_1.x, ~arg_2.b) >> (arg_1.x % 32u), _wgslsmith_mult_u32(_wgslsmith_div_u32(~arg_2.b, ~4294967295u), abs(1u)), 94431u), u_input.d.yy, select(select(!(!vec3<bool>(false, arg_2.d, arg_2.d)), func_3(arg_0).yxx, func_2().d), vec3<bool>(true, true, func_3(-427f).x), select(select(vec3<bool>(arg_2.d, arg_2.d, arg_2.d), !vec3<bool>(arg_2.d, arg_2.d, true), select(vec3<bool>(arg_2.d, arg_2.d, arg_2.d), vec3<bool>(false, arg_2.d, false), false)), !vec3<bool>(false, arg_2.d, true), select(select(vec3<bool>(arg_2.d, arg_2.d, true), vec3<bool>(arg_2.d, true, arg_2.d), vec3<bool>(arg_2.d, true, arg_2.d)), select(vec3<bool>(true, arg_2.d, arg_2.d), vec3<bool>(true, true, arg_2.d), vec3<bool>(arg_2.d, false, arg_2.d)), select(vec3<bool>(arg_2.d, false, true), vec3<bool>(arg_2.d, false, arg_2.d), false)))), arg_2.c | arg_2.c);
    var var_1 = arg_2;
    var_0 = Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(-250i, 1i), -(~(-2147483647i))), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 15987u), arg_1), _wgslsmith_div_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, var_1.b, 39777u)), vec3<u32>(arg_2.b, arg_2.b, arg_1.x))), min(-((u_input.d.zw << (vec2<u32>(var_1.b, arg_1.x) % vec2<u32>(32u))) << (u_input.c.zw % vec2<u32>(32u))), var_0.c), !vec3<bool>((i32(-1i) * -865i) < -var_1.c, -arg_2.c >= 0i, !any(var_0.d.zy)), arg_2.c);
    return Struct_3(-(select(_wgslsmith_sub_i32(-12396i, arg_2.c), _wgslsmith_dot_vec3_i32(vec3<i32>(23912i, u_input.b, 0i), u_input.d.wxy), var_1.d) ^ 15234i), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(arg_1), select(u_input.c.zxz, vec3<u32>(arg_1.x, arg_1.x, 1u), 1u == arg_2.b)), ~arg_1, vec3<u32>(~arg_1.x & 22062u, 0u, var_1.b)), -select(-(vec2<i32>(690i, 2123i) ^ u_input.d.zy), u_input.d.xz, vec2<bool>(func_3(arg_0).x, arg_2.d)), var_0.d, -15976i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f), -2627f), 183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1044f)) - _wgslsmith_f_op_f32(ceil(351f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1540f - 1339f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(924f, -705f, -942f, 128f))))), vec4<bool>(true, all(vec3<bool>(false, false, true)) & true, all(vec2<bool>(true, true)), any(vec2<bool>(true, true))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(129f, 33719u, 15340i, false, Struct_1(vec4<f32>(1122f, -228f, var_0.x, var_0.x))), u_input.c.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1488f, -503f, -799f, var_0.x)), vec4<f32>(674f, -323f, var_0.x, var_0.x)))))));
    let var_2 = var_0.x;
    var var_3 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(-786f, var_0.x))) - 1433f) + 373f), u_input.c.www, func_2());
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zx, _wgslsmith_mult_u32(var_3.b.x, ~var_3.b.x), firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, u_input.d) & vec4<i32>(var_3.e, var_3.a, var_3.c.x, 2147483647i))), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_3.b.x, _wgslsmith_sub_u32(var_3.b.x, ~u_input.c.x), _wgslsmith_add_u32(var_3.b.x, 10401u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(26824u, 21553u, var_3.b.x), u_input.c.wxz), ~u_input.c.xwz))), select(vec4<u32>(countOneBits(_wgslsmith_add_u32(38053u, 38903u)), min(_wgslsmith_mult_u32(0u, 6214u), ~4294967295u), _wgslsmith_sub_u32(var_3.b.x, abs(7664u)), _wgslsmith_dot_vec2_u32(var_3.b.yx, select(var_3.b.xz, u_input.c.wz, true))), u_input.c, !(!(!vec4<bool>(false, false, var_3.d.x, true)))));
}

