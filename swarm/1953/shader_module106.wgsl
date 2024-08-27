struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: i32) -> vec3<i32> {
    let var_0 = false;
    return abs(-abs(vec3<i32>(arg_2, 26696i ^ arg_1, u_input.a)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(func_1(1f, -1i, -1i), firstLeadingBit(u_input.b.wzw));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(arg_2.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u | var_0.b.x, 0u, u_input.b.x), ~vec3<u32>(u_input.b.x, var_0.b.x, u_input.b.x), arg_0.b)), true, select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true && any(vec2<bool>(false, false)), !all(vec4<bool>(false, false, true, true)), false), true != (true != (u_input.b.x <= 111991u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(689f, -1344f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f), _wgslsmith_f_op_f32(f32(-1f) * -483f)))), -786f));
    var var_2 = vec4<f32>(var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1728f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)) - _wgslsmith_f_op_f32(f32(-1f) * -997f)));
    var var_3 = vec3<bool>(var_1.b, false, !(!(var_1.d.x < -1539f) & any(select(var_1.c.zyx, var_1.c.yzz, var_1.c.x))));
    var var_4 = var_0;
    return var_1.a != ~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.b.x, 27706u, var_0.b.x), 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_u32(~u_input.b.x, ~24720u), false, select(!vec4<bool>(true, any(vec3<bool>(false, true, true)), true, any(vec4<bool>(false, true, true, false))), vec4<bool>(func_3(Struct_2(vec3<i32>(37701i, u_input.c, 1i), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), u_input.c, Struct_2(vec3<i32>(-11609i, 1i, -1i), u_input.b.wyz), Struct_2(vec3<i32>(u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), !all(vec4<bool>(true, false, false, false)), select(false, true, any(vec3<bool>(true, false, false))), true), func_1(_wgslsmith_f_op_f32(round(arg_1)), reverseBits(u_input.c), -15620i).x <= 2147483647i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(530f, arg_1, 1000f), vec3<f32>(arg_0.x, -236f, -1047f)))) * vec3<f32>(363f, 1996f, _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_1 = abs(-23579i);
    let var_2 = Struct_2(~(-(~(-vec3<i32>(u_input.a, 0i, var_1)))), vec3<u32>(~countOneBits(~u_input.b.x), _wgslsmith_mod_u32(27507u, 26887u), var_0.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, 305f, arg_1, arg_1)))))));
    let var_4 = Struct_2(vec3<i32>(var_1, firstLeadingBit(~27880i) >> (~_wgslsmith_dot_vec2_u32(var_2.b.yy, u_input.b.yy) % 32u), 1i), var_2.b ^ ~(~(~vec3<u32>(4294967295u, u_input.b.x, 18855u))));
    return var_0.c.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = vec3<i32>(0i, -1i, -12180i);
    let var_1 = _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(_wgslsmith_div_i32(u_input.a, var_0.x), abs(-1i), u_input.a) << (abs(countOneBits(arg_3.b) ^ _wgslsmith_add_vec3_u32(u_input.b.yxz, vec3<u32>(0u, 78856u, u_input.b.x))) % vec3<u32>(32u)));
    return StorageBuffer(-2147483647i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true || (all(vec2<bool>(select(false, true, true), true)) | (((u_input.b.x & u_input.b.x) >> (1u % 32u)) >= _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 0u)));
    var var_1 = 1f;
    let var_2 = Struct_2(-func_1(_wgslsmith_f_op_f32(-1264f + -225f), u_input.a, 2147483647i), ~(~(~(vec3<u32>(34799u, 4294967295u, u_input.b.x) | u_input.b.zxz))));
    var_0 = !((true || (true | select(false, true, false))) || false);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1284f, 503f)) * 163f);
    let x = u_input.a;
    s_output = func_4(-((i32(-1i) * -var_2.a.x) << (u_input.b.x % 32u)), ~_wgslsmith_sub_u32(~8248u, var_2.b.x) < _wgslsmith_mod_u32(u_input.b.x, var_2.b.x), select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), all(vec3<bool>(true, false, true))), vec4<bool>(!all(vec2<bool>(false, true)), true, func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1520f, -676f, -1436f), vec3<f32>(988f, 350f, 1675f))), 1000f), 13692i > _wgslsmith_clamp_i32(1i, 1i, 2147483647i)), all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)))), Struct_2(vec3<i32>(firstLeadingBit(i32(-1i) * -2147483647i), u_input.a, -13190i), u_input.b.zwy));
}

