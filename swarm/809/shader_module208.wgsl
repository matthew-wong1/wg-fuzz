struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_4(1u, Struct_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 1u), u_input.a)), (min(abs(vec3<i32>(u_input.e, u_input.d.x, 11510i)), -vec3<i32>(0i, u_input.e, u_input.d.x)) ^ reverseBits(u_input.d)) ^ -countOneBits(select(vec3<i32>(u_input.c, u_input.e, 1i), vec3<i32>(u_input.e, -2147483647i, u_input.d.x), true)), Struct_2(~1u));
    let var_1 = u_input.c;
    var var_2 = Struct_2(u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2227f, 508f, -107f))))))))));
    var var_4 = Struct_4(~(~(~(~4294967295u))), var_0.d, firstLeadingBit(vec3<i32>(47344i, _wgslsmith_sub_i32(var_1, -26668i), max(11346i, -2147483647i))) >> (~(~u_input.b) % vec3<u32>(32u)), Struct_2(~(~_wgslsmith_mult_u32(0u, 0u))));
    return arg_0.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(~(~30355u), Struct_2(min(1u, 1u)), u_input.d, Struct_2(~(u_input.b.x >> (27316u % 32u)) << (1u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(select(-1159f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2028f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * -2136f)) + _wgslsmith_f_op_f32(f32(-1f) * -1455f)))), all(vec3<bool>(true, true, false)) & func_3(vec2<bool>(true, true))));
    var var_2 = ~_wgslsmith_mult_u32(~(_wgslsmith_div_u32(u_input.a, u_input.b.x) & u_input.a), ~u_input.a);
    var_2 = ~var_0.d.a | ~(~firstLeadingBit(u_input.b.x));
    var_2 = 21735u;
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_4(u_input.b.x >> (u_input.b.x % 32u), Struct_2(~u_input.a), min(-select(_wgslsmith_sub_vec3_i32(u_input.d, u_input.d), ~u_input.d, arg_1.wzx), firstTrailingBit(_wgslsmith_add_vec3_i32(abs(u_input.d), firstLeadingBit(u_input.d)))), Struct_2(0u));
    let var_1 = arg_0.a;
    let var_2 = Struct_4(var_0.b.a, Struct_2(1u), vec3<i32>(arg_2, arg_2, u_input.e), var_0.b);
    let var_3 = arg_0.e;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, var_1, var_1, arg_0.d.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(378f, arg_0.a, 1597f, arg_0.a), vec4<f32>(702f, 129f, var_1, var_1)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(345f, arg_0.d.x, 383f, arg_0.a), vec4<f32>(1532f, 854f, arg_0.a, arg_0.d.x)))))), vec4<f32>(arg_0.d.x, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)), var_1), true | any(select(arg_1.wxw, arg_1.xwz, arg_3)))) + vec4<f32>(-503f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 244f)), 2010f)));
    return _wgslsmith_f_op_vec2_f32(-var_4.ww);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_f32(func_2()), Struct_1(vec3<u32>(~22251u, arg_0, max(arg_0, 0u)), ~11357u, firstTrailingBit(reverseBits(vec3<u32>(4294967295u, 11032u, 11097u)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(min(vec2<i32>(6351i, u_input.d.x), vec2<i32>(50494i, u_input.d.x))), vec2<i32>(1i, firstTrailingBit(u_input.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_1(u_input.b, u_input.b.x, u_input.b)), vec4<bool>(all(select(select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(arg_2.x, false, arg_2.x), false), select(vec3<bool>(false, false, arg_1.x), vec3<bool>(false, false, true), vec3<bool>(arg_1.x, false, true)), arg_1.x && arg_3)), select(all(arg_1), 45539i >= ~u_input.d.x, func_3(arg_1)), (-1368f != _wgslsmith_f_op_f32(sign(-1759f))) || arg_1.x, (arg_3 || arg_3) || arg_3), u_input.e, select(_wgslsmith_dot_vec2_i32(u_input.d.xz & u_input.d.yx, u_input.d.zx), _wgslsmith_add_i32(firstLeadingBit(u_input.e), u_input.e), false) >= ~_wgslsmith_sub_i32(u_input.c, reverseBits(u_input.c))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(var_0.x * var_0.x))));
    var var_2 = Struct_2(5398u);
    var var_3 = 0u;
    var_2 = Struct_2(reverseBits(4294967295u));
    return Struct_3(var_0.x, Struct_1(vec3<u32>(_wgslsmith_mod_u32(~u_input.a, abs(arg_0)), _wgslsmith_sub_u32(var_2.a, var_2.a) | u_input.a, var_2.a), abs(~u_input.b.x) ^ 0u, select(firstTrailingBit(vec3<u32>(var_2.a, 4294967295u, 9946u) | vec3<u32>(var_2.a, arg_0, 15688u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, 0u, 30212u), countOneBits(vec3<u32>(u_input.a, 49003u, 21378u))), !select(vec3<bool>(false, false, arg_3), vec3<bool>(true, false, arg_2.x), arg_3))), -1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) - var_1), _wgslsmith_f_op_f32(step(-1841f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(f32(-1f) * -256f)))), -730f), Struct_1(u_input.b, ~arg_0, firstLeadingBit(u_input.b)));
}

fn func_5(arg_0: Struct_3) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(183f, arg_0.d.x), _wgslsmith_f_op_f32(-121f + 1950f), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), 1f, true)), _wgslsmith_div_f32(arg_0.a, arg_0.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-661f, _wgslsmith_f_op_f32(-arg_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f + -999f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_5(func_1(1u, vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, true, false)), true), true))));
}

