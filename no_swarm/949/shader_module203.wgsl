struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), abs(arg_2) >= 0u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1000f - arg_1))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-535f, 676f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1287f, arg_1)), select(vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a), var_0.a)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)));
    let var_3 = Struct_1(var_0.a);
    let var_4 = Struct_2(4294967295u);
    return vec3<i32>(arg_0.x, 1i, _wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(-10017i | (arg_0.x | 0i), 1i, select(arg_0.x, arg_0.x, false))));
}

fn func_2() -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(select(vec3<i32>(19937i, -1i, u_input.c), vec3<i32>(u_input.c, u_input.c, 21568i), vec3<bool>(false, false, true)), select(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, -31632i), true), false), vec3<i32>(-1i) * -vec3<i32>(-9393i, u_input.c, 102018i)), func_3(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 1956i), vec2<i32>(-15890i, u_input.c)), -111f, abs(_wgslsmith_add_u32(u_input.b.x, u_input.a.x)))));
    var var_1 = Struct_1(true);
    let var_2 = Struct_1(5579i >= _wgslsmith_dot_vec2_i32(~var_0.yx, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -2147483647i), var_0.xz & vec2<i32>(1i, 25841i))));
    let var_3 = Struct_2(4294967295u);
    var var_4 = var_1.a;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_mult_u32(1u, ~(~4294967295u)));
    let var_1 = any(vec2<bool>(true, !any(select(vec4<bool>(true, false, true, arg_0.a), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), arg_0.a))));
    var var_2 = _wgslsmith_f_op_f32(472f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1347f)), -189f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1494f, -761f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f - _wgslsmith_f_op_f32(f32(-1f) * -1609f))));
    let var_3 = -_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_div_i32(u_input.c, u_input.c), 1i);
    return _wgslsmith_add_i32(u_input.c, _wgslsmith_add_i32(i32(-1i) * -1i, var_3));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_4(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-844f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(trunc(-440f))) + 957f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-651f, 1295f, true)))) * 1427f), -456f)));
    let var_2 = countOneBits(select(func_3(countOneBits(~vec2<i32>(2147483647i, var_0)), var_1.x, min(~arg_0.a, 9754u | u_input.b.x)), countOneBits(-max(vec3<i32>(0i, -3096i, var_0), vec3<i32>(-14963i, 48720i, u_input.c))), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), all(vec4<bool>(false, true, false, false)) || false, all(vec2<bool>(true, false)))));
    var var_3 = Struct_2(max(~select(~arg_0.a, 1u, true), select(~(arg_0.a & 2440u), _wgslsmith_add_u32(1u, 1u), !select(false, false, true))));
    var_3 = Struct_2(firstLeadingBit(reverseBits(firstTrailingBit(_wgslsmith_div_u32(arg_0.a, 4294967295u)))));
    return func_2();
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(!arg_1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_2.x)))), arg_2.x, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_2.wwz)) * arg_2.wyx);
    var var_2 = Struct_2(~arg_0.x);
    var_1 = vec3<f32>(948f, var_1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -228f)), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), 1000f)))), all(vec2<bool>(true, all(vec3<bool>(false, arg_1.a, var_0.a)))))));
    return vec3<i32>(~(min(~(-41146i), _wgslsmith_div_i32(u_input.c, u_input.c)) >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(21265u, 0u), 24768u, var_2.a | var_2.a) % 32u)), ~_wgslsmith_mult_i32(u_input.c, func_3(reverseBits(vec2<i32>(5505i, 26279i)), _wgslsmith_f_op_f32(min(1945f, arg_2.x)), ~4294967295u).x), min(-abs(u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, ~1i, 2147483647i), vec3<i32>(~u_input.c, ~u_input.c, -32216i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_5(vec3<u32>(countOneBits(1u), ~4294967295u << (~u_input.a.x % 32u), u_input.b.x), func_1(Struct_2(1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-336f, 941f, -561f, -715f)))));
    let var_1 = any(vec4<bool>(any(vec4<bool>(u_input.c <= u_input.c, false, false, true)), (max(var_0.x, var_0.x) & (29192i | var_0.x)) < _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, u_input.c, 2147483647i), var_0.x), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), !(reverseBits(37121u) != u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(118605u, ~11016u, 0u);
}

