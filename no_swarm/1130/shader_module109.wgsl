struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    return select(!(!vec4<bool>(true, all(vec3<bool>(false, false, false)), false, all(vec3<bool>(false, true, false)))), select(!vec4<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, true))), vec4<bool>(true, firstTrailingBit(u_input.a.x) <= -u_input.a.x, all(vec2<bool>(true, true)), true), all(vec4<bool>(true, true, true, true)) && true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_4 {
    var var_0 = Struct_4(vec4<bool>(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), func_3(), vec4<bool>(true, true, true, true))), true, !(false || any(vec2<bool>(false, true))), true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(189f, arg_1))), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - arg_1)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-452f)))), _wgslsmith_f_op_f32(-1626f * -995f)), arg_1);
    var_0 = Struct_4(!var_0.a);
    let var_2 = Struct_1(all(select(var_0.a, var_0.a, var_0.a.x)));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_1.x))));
    return Struct_4(!vec4<bool>(false, !(!var_2.a), true, any(var_0.a.wwy)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = func_2(arg_3 << (~(~(arg_3 << (arg_3 % 32u))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = _wgslsmith_div_i32(select(u_input.a.x >> (arg_3 % 32u), u_input.a.x, !var_0.a.x), i32(-1i) * -(~_wgslsmith_sub_i32(-31429i, arg_2.x)));
    var var_2 = vec4<u32>(arg_3 ^ ~max(countOneBits(1u), 9254u), (arg_3 << (arg_3 % 32u)) & ((~arg_3 | arg_3) >> (arg_3 % 32u)), ~arg_3, abs(reverseBits(arg_3 >> (_wgslsmith_div_u32(1u, 1u) % 32u))));
    var var_3 = Struct_2(Struct_1(false));
    let var_4 = Struct_5(vec3<f32>(-919f, _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), 531f, Struct_1(4294967295u > _wgslsmith_clamp_u32(abs(121074u), arg_3, ~4294967295u)), ~arg_2.x, func_2(_wgslsmith_dot_vec3_u32(var_2.xzw, vec3<u32>(1u, var_2.x, var_2.x) << (~var_2.wyx % vec3<u32>(32u))), arg_1));
    return Struct_2(var_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<f32>) -> bool {
    let var_0 = func_2(1u, _wgslsmith_f_op_f32(ceil(arg_3.x)));
    let var_1 = 9062i;
    var var_2 = var_0.a.x;
    var var_3 = 4294967295u;
    var var_4 = Struct_3(arg_2.a.zzy, arg_0.a, !arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))) * -627f), arg_1.a);
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var_0 = -2507f;
    var var_1 = func_4(func_1(u_input.a.x << (1u % 32u), _wgslsmith_f_op_f32(trunc(262f)), ~select(~u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)), 39601u), func_1(0i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -106f))), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -1i, u_input.a.x), u_input.a.zyy), abs(vec3<i32>(2147483647i, -16301i, 2147483647i))), -firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(-2147483647i, 1i)), 4294967295u), Struct_4(vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(385f, -1602f, false)))) + _wgslsmith_f_op_f32(step(-688f, 685f))), _wgslsmith_f_op_f32(-1149f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(152f, -731f)), -1052f)))));
    let var_2 = func_1(-3148i, -655f, u_input.a, max(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(16455u, 39287u, 54283u, 0u)), firstTrailingBit(min(vec4<u32>(28638u, 48044u, 8726u, 48883u), vec4<u32>(59481u, 15220u, 12932u, 1u)))), 45306u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)) - 1022f);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(countOneBits(u_input.a.x)), -618f, abs(_wgslsmith_div_vec4_i32(max(max(u_input.a, vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i)), -u_input.a), -(u_input.a ^ vec4<i32>(23607i, 4837i, -1i, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(245f * -194f), -171f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -411f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2254f - 1673f)))), ~firstLeadingBit(1130u));
}

