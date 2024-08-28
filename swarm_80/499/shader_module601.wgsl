struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = Struct_3(510f, ~vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, ~1671u), 37437u, _wgslsmith_clamp_u32(8182u, 21455u, u_input.a) ^ _wgslsmith_clamp_u32(1u, 52158u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f - 1598f)));
    let var_1 = _wgslsmith_f_op_f32(max(-314f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f))));
    let var_2 = u_input.d.yyx;
    var var_3 = select(select(vec3<bool>(arg_1, true || all(vec2<bool>(arg_1, arg_1)), any(vec2<bool>(false, arg_1))), !select(select(vec3<bool>(true, false, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(true, arg_1, arg_1)), vec3<bool>(arg_1, false, arg_1), arg_1), !arg_1), select(vec3<bool>(true, u_input.c.x > ~4294967295u, false), vec3<bool>(arg_1, true, !(arg_1 | arg_1)), all(select(!vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(false, arg_1, arg_1, arg_1), arg_1))), select(arg_1, true, all(select(vec3<bool>(false, arg_1, true), vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, arg_1, false)))));
    var_3 = vec3<bool>(true, false, all(!vec3<bool>(all(vec4<bool>(arg_1, false, var_3.x, arg_1)), false, arg_1)));
    return -1023f;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = vec2<bool>(true, true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(2983f, -1790f, -1381f)), var_0.x))))), u_input.b.yyy, -1406f);
    var_1 = Struct_3(var_1.c, firstLeadingBit(u_input.b.ywz), 1516f);
    let var_2 = !(!vec4<bool>(!any(vec4<bool>(true, true, false, true)), true, !all(vec4<bool>(var_0.x, true, true, false)), false));
    var_0 = var_2.wy;
    return _wgslsmith_add_vec3_i32(~(-vec3<i32>(u_input.d.x, 1i, u_input.d.x) & -(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) >> (vec3<u32>(4294967295u, arg_1.x, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(-1i) * -select(-vec3<i32>(u_input.d.x, 2147483647i, 0i), u_input.d.yxw, select(vec3<bool>(false, var_0.x, var_2.x), var_2.xxy, vec3<bool>(true, var_0.x, true))));
}

fn func_1() -> Struct_3 {
    var var_0 = reverseBits(-vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(46335i, u_input.d.x), 17112i)) ^ _wgslsmith_mult_vec3_i32(u_input.d.ywz, vec3<i32>(-u_input.d.x, u_input.d.x, ~u_input.d.x));
    var_0 = -_wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, var_0.x, -21509i), vec3<i32>(u_input.d.x, 1i, var_0.x)), func_2(firstTrailingBit(u_input.b.x), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x))) & countOneBits(u_input.d.yyx);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-492f, 498f, -1074f)), true)))))), ~max(abs(u_input.b.xzw | vec3<u32>(u_input.a, u_input.b.x, u_input.a)), select(u_input.b.xzw, vec3<u32>(u_input.b.x, 0u, 4440u), vec3<bool>(true, true, false)) & max(vec3<u32>(u_input.c.x, u_input.a, 85663u), u_input.b.zwz)), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(-1000f, 1214f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true)));
    let var_2 = any(!vec2<bool>(true && select(false, false, true), true || all(vec2<bool>(false, false))));
    var var_3 = 4627u;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-398f * 781f), _wgslsmith_f_op_f32(min(-1668f, 461f))), vec3<u32>(var_1.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-354f, var_1.a)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = select(~(~_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.b.wy), vec2<u32>(65151u, 26983u))), ~u_input.b.wx >> (~u_input.c % vec2<u32>(32u)), !select(vec2<bool>(any(vec2<bool>(false, arg_1)), any(vec3<bool>(arg_1, true, true))), select(vec2<bool>(false, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), true), any(vec3<bool>(arg_1, false, arg_1))), arg_1));
    var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, abs(arg_0.b.x)), ~(~arg_0.b.yz)), u_input.b.yz), ~u_input.c.x);
    var_0 = vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(32604u, arg_0.b.x, arg_0.b.x), u_input.b.xyx) & 1609u), _wgslsmith_mult_u32(firstTrailingBit(2288u >> (1u % 32u)), 1u)) & ~u_input.b.xw;
    var var_1 = _wgslsmith_f_op_f32(round(-856f));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(328f, arg_0.a, 910f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -2559f, -136f) * vec3<f32>(-1508f, arg_0.a, -399f))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.c), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -853f))))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-539f, min(vec3<u32>(~u_input.c.x, abs(u_input.c.x), u_input.b.x), abs(u_input.b.xyx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(), true, func_2(0u, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)).x))) - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(-418f)))));
    let var_1 = vec4<bool>(!(!(var_0.c >= -380f)), !all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, true))), !all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19393i, u_input.d.x), u_input.d.xz), 1i, -1i) >> (_wgslsmith_div_vec3_u32(u_input.b.wwx & vec3<u32>(1u, 91467u, 1u), var_0.b >> (u_input.b.yzz % vec3<u32>(32u))) % vec3<u32>(32u))));
}

