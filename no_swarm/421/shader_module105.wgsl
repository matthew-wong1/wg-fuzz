struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = abs(vec3<i32>(1i, 50179i, u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, 2156f, 1164f, _wgslsmith_div_f32(-590f, -450f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 595f, -1735f, -235f))) + vec4<f32>(-1046f, 1000f, 824f, 1003f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(991f + 549f), _wgslsmith_div_f32(979f, 1000f), _wgslsmith_f_op_f32(trunc(-320f)))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))) - _wgslsmith_f_op_f32(trunc(var_1.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), arg_0.x), vec3<bool>(all(vec4<bool>(any(vec3<bool>(false, true, false)), var_1.x != var_1.x, any(vec3<bool>(false, true, true)), true)), false, false), _wgslsmith_mult_i32(abs(abs(countOneBits(u_input.a.x))), 0i));
    var var_3 = 2147483647i;
    var var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.a, var_2.a.a, true)) + -589f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-681f, 1000f)))))), select(select(var_2.a.b, !var_2.a.b, var_2.a.b.x), var_2.a.b, var_2.b.x), _wgslsmith_div_u32(arg_0.x, min(96982u ^ ~arg_0.x, max(var_2.a.c, arg_0.x) >> (~0u % 32u))));
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(365f)))) - _wgslsmith_f_op_f32(1154f - _wgslsmith_f_op_f32(-var_2.a.a))), false, var_4.b.x, any(var_2.b) || false);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(526f, _wgslsmith_f_op_f32(trunc(1228f)))), select(func_3(~vec4<u32>(27661u, 0u, 4294967295u, 0u)), vec4<bool>(arg_3.x, 4294967295u == arg_0.x, arg_3.x, select(arg_3.x, arg_3.x, arg_3.x)), !all(arg_3.zx)), 19388u), vec3<bool>(true, true, true), _wgslsmith_div_i32(i32(-1i) * -(~u_input.a.x), 1i));
    var var_1 = Struct_2(Struct_1(2124f, func_3(vec4<u32>(1u, min(3844u, 1u), var_0.a.c, arg_0.x)), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, reverseBits(0u)))), !vec3<bool>(true, -52023i > var_0.c, false), -1i);
    var_0 = Struct_2(var_1.a, arg_3, _wgslsmith_clamp_i32(var_0.c, -arg_2 | arg_2, var_0.c));
    var var_2 = var_1.b.x;
    var var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(38665u, arg_1, reverseBits(~27120u), var_1.a.c), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_0.a.c, ~arg_1, 1u)), reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 60038u, arg_1, arg_0.x))) >> (abs(vec4<u32>(var_0.a.c, 0u, arg_0.x, var_1.a.c) >> (vec4<u32>(var_0.a.c, arg_0.x, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return Struct_1(-1106f, !(!select(select(var_0.a.b, var_1.a.b, false), vec4<bool>(var_0.b.x, var_1.b.x, arg_3.x, var_0.a.b.x), var_1.a.b.x)), _wgslsmith_div_u32(arg_0.x, ~_wgslsmith_sub_u32(arg_0.x, arg_1)) ^ ~(~firstLeadingBit(var_0.a.c)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = vec2<i32>(2147483647i, -16407i & _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x));
    var_0 = -vec2<i32>(u_input.a.x, max(~(-u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, -var_0.x)));
    var var_1 = max(22151i, -var_0.x);
    let var_2 = func_2(_wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, 54283u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~(~vec2<u32>(4294967295u, 0u)), ~(~vec2<u32>(8476u, 4294967295u)))), 1u, -19606i, vec3<bool>(u_input.a.x <= 16549i, true | all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false)), true != !all(vec4<bool>(false, true, true, false))));
    var_0 = -(vec2<i32>(-1i) * -(~_wgslsmith_div_vec2_i32(u_input.a.yz, u_input.a.xz)));
    return StorageBuffer(~abs(~12891u ^ ~var_2.c), _wgslsmith_mult_i32(select(2147483647i, -1i, any(!vec4<bool>(var_2.b.x, false, false, var_2.b.x))), -(i32(-1i) * -23575i)), ~u_input.a.zx | _wgslsmith_clamp_vec2_i32(u_input.a.zx, ~u_input.a.wy, reverseBits(u_input.a.yx) << (vec2<u32>(24399u, var_2.c) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(1102f - 102f), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), 4294967295u);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_div_f32(-1598f, var_0.a));
}

