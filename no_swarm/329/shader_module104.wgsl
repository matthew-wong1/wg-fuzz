struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: u32) -> u32 {
    let var_0 = vec2<f32>(arg_1.x, arg_1.x);
    var var_1 = firstTrailingBit(vec2<u32>(0u, ~u_input.d.x));
    var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d, abs(vec2<u32>(arg_2, var_1.x)), _wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(0u, 32039u))) >> (u_input.c.xy % vec2<u32>(32u)), u_input.d, vec2<u32>(u_input.c.x, select(1u << (1u % 32u), _wgslsmith_mult_u32(var_1.x, arg_2), any(arg_0.a.yxy))));
    var var_2 = vec2<bool>(select(true, any(vec3<bool>(true, true, true)), any(vec3<bool>(arg_0.a.x, true, true))), arg_0.a.x);
    let var_3 = Struct_3(vec4<bool>(!(true && (-1064f < arg_1.x)), true, true, true));
    return _wgslsmith_mult_u32(u_input.c.x, 32638u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = Struct_2(arg_0, ~(~(~u_input.c.x)), arg_0);
    let var_3 = Struct_2(var_0, u_input.c.x, var_0);
    var_2 = var_3;
    return reverseBits(_wgslsmith_mult_u32(0u, func_3(Struct_3(select(vec4<bool>(false, true, var_2.c.e, arg_0.c), vec4<bool>(var_1, arg_0.a.x, false, var_0.a.x), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, 241f, -2243f, 1134f)), 4294967295u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = select(min(4294967295u, _wgslsmith_mult_u32(func_2(Struct_1(vec3<bool>(arg_1, true, true), u_input.b.x, arg_0.x, -2147483647i, true)), 97932u)), 7871u, all(!(!select(arg_3.a, arg_2.a.xzx, arg_2.a.xwz))));
    let var_1 = ~countOneBits(~(~(~u_input.c)));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(-1024f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1071f, -1745f) - -1995f), _wgslsmith_f_op_f32(sign(-865f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(421f, -471f, arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 611f)))))), -2819f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-448f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.x, -178f, -832f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-421f, var_2.x, var_2.x, -616f), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(2227f, var_2.x)), _wgslsmith_f_op_f32(-var_2.x)))))), var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(677f, var_2.x)), var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(var_2.x + 1000f)) * var_2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * 243f), -540f)), _wgslsmith_f_op_f32(sign(var_2.x))))));
    return countOneBits(select(u_input.e, u_input.e, select(var_2.x >= 665f, false, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(_wgslsmith_mod_i32(4461i, firstLeadingBit(u_input.a.x)) <= u_input.b.x));
    var var_1 = abs(vec4<i32>(u_input.a.x, u_input.e.x, max(_wgslsmith_dot_vec3_i32(func_1(vec3<bool>(false, true, true), false, Struct_3(vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, true), u_input.e.x, false, u_input.e.x, false)), max(vec3<i32>(u_input.a.x, u_input.a.x, -1i), vec3<i32>(u_input.b.x, 1i, u_input.a.x))), 2147483647i), -(u_input.a.x & ~u_input.e.x)));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, 26192u), firstTrailingBit(abs(~50798u)));
    let var_3 = Struct_3(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, true)))), (reverseBits(u_input.d.x) >> (select(u_input.c.x, var_2, false) % 32u)) < ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), !all(vec4<bool>(true, true, true, true)), !any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true))));
    let var_4 = Struct_3(!select(vec4<bool>(true, true, var_3.a.x, true), select(vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), var_3.a, vec4<bool>(true, var_3.a.x, var_3.a.x, false)), var_3.a));
    var var_5 = Struct_2(Struct_1(vec3<bool>(u_input.c.x > var_2, any(var_4.a.wxw), all(select(var_3.a, vec4<bool>(var_4.a.x, var_3.a.x, var_3.a.x, var_3.a.x), var_3.a.x))), 0i, false, 2147483647i, var_3.a.x), u_input.c.x, Struct_1(vec3<bool>(true & var_3.a.x, true, all(vec4<bool>(var_4.a.x, var_4.a.x, false, var_4.a.x))), var_1.x, (4294967295u | var_2) <= _wgslsmith_add_u32(countOneBits(46181u), 1u), -(~u_input.e.x), any(var_3.a.wxz)));
    var_5 = Struct_2(Struct_1(vec3<bool>(var_5.a.e, u_input.c.x > var_5.b, false), -5230i, true, var_1.x, -countOneBits(var_1.x) <= -3923i), ~countOneBits(u_input.d.x << (~var_2 % 32u)), Struct_1(!(!(!vec3<bool>(var_3.a.x, var_4.a.x, true))), min(3856i, var_1.x), true == !(!var_4.a.x), _wgslsmith_div_i32(-2147483647i, var_1.x >> (var_5.b % 32u)), firstTrailingBit(firstTrailingBit(119634u)) <= 1u));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx, vec4<u32>(firstLeadingBit(~func_3(var_3, vec4<f32>(-414f, -642f, 878f, -814f), var_2)), _wgslsmith_sub_u32(0u, countOneBits(42902u ^ var_5.b)), min(abs(func_2(Struct_1(var_4.a.zww, var_1.x, false, 6137i, true))), abs(1u)), ~4294967295u), -(u_input.b ^ _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, -10938i, -2147483647i), vec4<i32>(-1i, var_5.c.b, 2147483647i, -2147483647i)))));
}

