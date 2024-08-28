struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: u32) -> vec3<bool> {
    var var_0 = 1u;
    var_0 = arg_1;
    var_0 = ~4294967295u;
    var var_1 = Struct_2(Struct_1(-23767i, ~vec2<i32>(min(u_input.a.x, -2237i), _wgslsmith_clamp_i32(-48385i, u_input.c, -26110i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)))), !arg_0.a && any(select(vec4<bool>(false, arg_0.a, true, false), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)))), Struct_1(-_wgslsmith_dot_vec4_i32(reverseBits(u_input.a), -u_input.a), firstTrailingBit(min(u_input.a.yz, vec2<i32>(4345i, u_input.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1477f))), !(all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)) | !arg_0.a)), Struct_1(-35891i, vec2<i32>(u_input.a.x, -25529i), _wgslsmith_f_op_f32(-439f * _wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(-473f + -2561f))), any(!vec3<bool>(true, arg_0.a, false)) | false));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2772f), var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(669f, _wgslsmith_f_op_f32(step(881f, 1118f)), -244f) - vec3<f32>(479f, -434f, _wgslsmith_f_op_f32(567f - -293f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.c)), _wgslsmith_f_op_f32(exp2(var_1.a.c)), _wgslsmith_f_op_f32(-141f - var_1.b.c)))))));
    return !select(select(select(!vec3<bool>(var_1.b.d, arg_0.a, var_1.b.d), select(vec3<bool>(var_1.c.d, var_1.a.d, false), vec3<bool>(true, true, true), false), vec3<bool>(arg_0.a, var_1.a.d, arg_0.a)), vec3<bool>(select(arg_0.a, arg_0.a, true), all(vec4<bool>(var_1.b.d, var_1.c.d, true, false)), true), all(!vec2<bool>(var_1.b.d, var_1.a.d))), !vec3<bool>(arg_0.a, false, true), arg_0.a);
}

fn func_2() -> i32 {
    var var_0 = select(vec2<i32>(-u_input.a.x | -35507i, ~_wgslsmith_mod_i32(u_input.c, 2147483647i)), vec2<i32>(~abs(-50823i), -_wgslsmith_mult_i32(u_input.c, u_input.c)), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), true)) ^ u_input.a.zx;
    var_0 = ~u_input.a.zw;
    var_0 = u_input.a.xw;
    var var_1 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(func_3(Struct_5(true), 1u), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true)), true));
    let var_2 = ~vec2<u32>(_wgslsmith_div_u32(57016u, 45633u), u_input.b);
    return u_input.c;
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2();
    return Struct_3(Struct_2(Struct_1(~_wgslsmith_mod_i32(u_input.a.x, 0i), ~(~vec2<i32>(-1i, u_input.c)), -1000f, all(vec4<bool>(false, false, false, true)) && true), Struct_1(u_input.a.x, _wgslsmith_clamp_vec2_i32(u_input.a.wz, u_input.a.xx, _wgslsmith_sub_vec2_i32(u_input.a.yx, u_input.a.xw)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-525f, -101f)), !all(vec4<bool>(false, false, true, false))), Struct_1(-(var_0 | -21486i), vec2<i32>(-u_input.c, 23153i), -1000f, any(vec3<bool>(true, false, false)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 0u), vec4<u32>(40800u, u_input.b, 9945u, 20116u))), u_input.b >> (1u % 32u), 1u) & _wgslsmith_sub_vec3_u32(countOneBits(~(~vec3<u32>(u_input.b, 4294967295u, u_input.b))), vec3<u32>(1u ^ abs(u_input.b), ~0u | u_input.b, 44978u));
    var_0 = vec3<u32>(~u_input.b, ~_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(34559u, 56879u)), 4294967295u);
    var_0 = abs(countOneBits(vec3<u32>(max(4294967295u, 85022u), 17444u, 1839u) ^ ~vec3<u32>(4294967295u, 5464u, var_0.x)));
    let var_1 = func_1(var_0.x).a;
    let var_2 = all(vec2<bool>(all(select(select(vec3<bool>(arg_0.a.c.d, true, false), vec3<bool>(true, var_1.a.d, false), vec3<bool>(arg_1.d, arg_1.d, arg_0.a.b.d)), vec3<bool>(arg_0.a.c.d, false, arg_0.a.a.d), func_1(var_0.x).a.b.d)), arg_0.a.b.d));
    return Struct_1(abs(var_1.c.b.x), vec2<i32>(var_1.b.b.x, -_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.a.b.a, u_input.c, var_1.c.a, arg_0.a.a.b.x), -vec4<i32>(arg_1.b.x, 33315i, 1i, 22834i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + arg_1.c)), arg_0.a.c.d)) - -2197f), any(vec4<bool>(_wgslsmith_f_op_f32(-697f - arg_0.a.b.c) < arg_1.c, true, func_3(Struct_5(false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 55043u), vec3<u32>(var_0.x, u_input.b, var_0.x))).x, select(false, -66340i >= arg_1.b.x, !var_2))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = ~1u;
    var_0 = abs(47653u);
    let var_1 = 1i;
    let var_2 = 48073u;
    var var_3 = Struct_3(Struct_2(Struct_1(-1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 15341u, 0u), vec4<u32>(var_2, 24449u, var_2, 0u)) % 32u), ~reverseBits(vec2<i32>(40590i, 2147483647i)), _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(min(1684f, arg_0.c))), (0u != var_2) != all(arg_2.xy)), func_1(var_2).a.a, arg_0));
    return func_4(Struct_3(var_3.a), func_1(reverseBits(~71143u | var_2)).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(min(0u, u_input.b | 29534u)), Struct_1(-25764i, vec2<i32>(1i, u_input.c ^ u_input.c), _wgslsmith_f_op_f32(-1662f * _wgslsmith_f_op_f32(ceil(-220f))), func_3(Struct_5(true), 79352u).x)), u_input.a.wyy, !select(select(vec3<bool>(false, false, false), func_3(Struct_5(false), 4294967295u), true), func_3(Struct_5(false), 0u), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, all(vec2<bool>(false, false)))));
    var_0 = Struct_1(0i, var_0.b, _wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(438f + 1000f)))))), all(vec4<bool>(true & var_0.d, -1070f > _wgslsmith_f_op_f32(max(-619f, var_0.c)), var_0.d, true)));
    var_0 = func_4(func_1(1u), func_4(func_1(reverseBits(firstLeadingBit(25185u))), func_5(func_4(func_1(20989u), func_5(Struct_1(2883i, vec2<i32>(u_input.a.x, var_0.a), -1126f, false), u_input.a.xzx, vec3<bool>(false, var_0.d, var_0.d))), countOneBits(_wgslsmith_div_vec3_i32(u_input.a.zyx, u_input.a.wxx)), vec3<bool>(true, true, true))));
    var_0 = Struct_1(~(-1i), func_1(~4294967295u).a.c.b, var_0.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(1u, u_input.b, u_input.b)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 15539u) & vec4<u32>(u_input.b, 79144u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(51295u, u_input.b, u_input.b, u_input.b), vec4<u32>(131347u, u_input.b, 6798u, 73868u))), u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b)), vec4<u32>(u_input.b, u_input.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 8151u), ~(~0u), _wgslsmith_mod_u32(~u_input.b, ~u_input.b)), min(~(~4294967295u), 2323u)), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(0i, u_input.a.x)), u_input.a.yx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_0.c)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(725f, var_0.c, var_0.c), vec3<f32>(-347f, 1164f, -1312f), var_0.d)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -1278f)) - _wgslsmith_f_op_f32(f32(-1f) * -154f)), var_0.c, -272f, var_0.c));
}

