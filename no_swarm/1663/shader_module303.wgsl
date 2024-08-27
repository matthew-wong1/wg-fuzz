struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> i32 {
    var var_0 = firstLeadingBit(max(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 58253u, 32958u), vec4<u32>(u_input.d, 0u, u_input.b.x, u_input.b.x)), u_input.b), u_input.d));
    let var_1 = false;
    var_0 = countOneBits(~(~countOneBits(~10143u)));
    let var_2 = ~(~15942u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, 564f)))));
    return firstTrailingBit(1i) >> (reverseBits(u_input.d) % 32u);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_4(u_input.c.zz, min(firstLeadingBit(firstTrailingBit(u_input.c.x & 21602i)), u_input.a.x), abs(17090u));
    let var_1 = u_input.b.yx;
    let var_2 = -396f;
    let var_3 = !vec4<bool>(!(arg_0 || true), _wgslsmith_f_op_f32(var_2 * -986f) != -162f, !arg_0, true);
    let var_4 = var_3;
    return _wgslsmith_mult_i32(func_3(0i, -(~(~vec4<i32>(1i, 0i, u_input.a.x, 1i)))), abs(~1i));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_5 {
    let var_0 = ~firstLeadingBit(1u);
    var var_1 = !vec4<bool>(all(!vec2<bool>(arg_1.x, arg_1.x)), !all(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, false), arg_1.x)), all(select(!vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, true, true), !arg_1.x)), true);
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-771f, 1083f, -1877f), vec3<f32>(1438f, -561f, 1389f)))))));
    var var_4 = Struct_3(!select(all(vec4<bool>(var_1.x, arg_1.x, var_1.x, false)) && false, arg_1.x, true));
    return Struct_5(_wgslsmith_f_op_f32(sign(var_3.x)));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = true;
    var var_1 = func_4(reverseBits(firstTrailingBit(vec2<i32>(reverseBits(u_input.c.x), func_2(true)))), select(select(!select(vec2<bool>(arg_0, var_0), vec2<bool>(true, false), arg_0), !(!vec2<bool>(true, arg_0)), select(select(vec2<bool>(arg_0, var_0), vec2<bool>(true, var_0), true), vec2<bool>(arg_0, true), select(vec2<bool>(var_0, false), vec2<bool>(false, arg_0), arg_0))), vec2<bool>(all(select(vec4<bool>(var_0, arg_0, false, var_0), vec4<bool>(var_0, arg_0, arg_0, var_0), true)), !(u_input.b.x <= 76311u)), select(!(!vec2<bool>(false, arg_0)), vec2<bool>(any(vec2<bool>(arg_0, false)), true), 34302u >= u_input.b.x)));
    var_1 = func_4(u_input.c.zx, vec2<bool>(false, any(vec4<bool>(true, any(vec3<bool>(var_0, arg_0, true)), u_input.d >= 0u, !arg_0))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -911f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(299f, var_1.a)) * func_4(-vec2<i32>(u_input.a.x, 50053i), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(arg_0, true))).a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1149f - _wgslsmith_f_op_f32(var_1.a - 930f)))))));
    let var_3 = Struct_3(true);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec2<i32>(i32(-1i) * -(i32(-1i) * -35863i), 1i), select(-abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -8090i)), firstTrailingBit(-func_1(true)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false)))), u_input.d);
    var var_1 = Struct_2(10559u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~abs(u_input.b.xzz), countOneBits(vec3<u32>(var_0.c, u_input.d, var_0.c) >> (u_input.b.xxx % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, 43124u, var_0.c), u_input.b.xxz)), !(true | (var_0.c < 0u)));
    var_1 = Struct_2(reverseBits(4294967295u), max(_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(99826u, u_input.b.x)) & _wgslsmith_mod_u32(abs(1u), var_0.c), 24078u), var_1.c & var_1.c);
    var var_2 = Struct_2(_wgslsmith_dot_vec3_u32(min(u_input.b.xwz, _wgslsmith_mult_vec3_u32(u_input.b.wwz, vec3<u32>(u_input.d, var_1.b, 4294967295u))) << (vec3<u32>(0u, u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) % vec3<u32>(32u)), u_input.b.xxz), _wgslsmith_add_u32(52960u, var_0.c | (u_input.d >> (var_0.c % 32u))), true);
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(-1i, u_input.a.x) << (u_input.b.wy % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1150f, _wgslsmith_f_op_f32(round(-444f)))) + _wgslsmith_f_op_f32(sign(-270f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), -2288f, 894f)), i32(-1i) * -1i, ~(-var_0.b));
}

