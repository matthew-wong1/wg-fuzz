struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_2(true, Struct_1(1i, -1465f, ~49766u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(288f))))), -_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), abs(vec3<i32>(0i, 13334i, u_input.a))), _wgslsmith_sub_vec3_i32(select(vec3<i32>(-39538i, u_input.b, u_input.a), vec3<i32>(u_input.b, 2147483647i, 1i), vec3<bool>(true, true, true)), vec3<i32>(u_input.b, u_input.a, u_input.b) ^ vec3<i32>(u_input.a, -15570i, -1891i))), 9243i, _wgslsmith_f_op_f32(-773f + 573f));
    let var_1 = Struct_2(true, var_0.b, select(var_0.c, ~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.a, u_input.b, -1319i), vec3<i32>(u_input.a, 0i, -2147483647i))), var_0.a), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(var_0.e * 390f))))));
    var_0 = var_1;
    var var_2 = false;
    let var_3 = !(!select(vec2<bool>(true, var_0.a | var_0.a), select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), any(vec3<bool>(true, false, false))), false));
    return var_0.e;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f - 505f) + _wgslsmith_f_op_f32(func_3(vec4<u32>(63852u, 4294967295u, 7327u, 1u)))) * _wgslsmith_f_op_f32(func_3(~vec4<u32>(23769u, 248u, 272u, 7734u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1457f), _wgslsmith_div_f32(795f, -470f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1015f - _wgslsmith_f_op_f32(f32(-1f) * -461f))), _wgslsmith_div_f32(-1469f, -641f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -824f, 1860f) - vec4<f32>(524f, var_0.x, var_0.x, -1000f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1170f, var_0.x, 905f, var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -889f, var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(step(439f, -661f)), _wgslsmith_f_op_f32(sign(var_0.x)), 1360f, _wgslsmith_f_op_f32(var_0.x * var_0.x)))));
    let var_1 = 54526i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~(~vec4<u32>(51007u, 41557u, 4294967295u, 1u))))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, var_0.x, var_0.x, var_2), vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(f32(-1f) * -671f), var_0.x))))));
    return -1129f;
}

fn func_1(arg_0: vec3<u32>) -> StorageBuffer {
    var var_0 = Struct_1(~(u_input.b << (min(abs(arg_0.x), 43101u) % 32u)), 1718f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, arg_0.x, 50257u, 20u))) + -1890f)))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-firstLeadingBit(36603i), countOneBits(var_0.a ^ u_input.a), -(~(-47508i)), _wgslsmith_div_i32(~1i, 19694i << (arg_0.x % 32u))), ~(-(~vec4<i32>(31879i, u_input.a, 18215i, var_0.a)))), 153f, ~_wgslsmith_add_u32(~arg_0.x >> (4294967295u % 32u), ~var_0.c), var_0.d);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))) * _wgslsmith_f_op_f32(func_3(vec4<u32>(arg_0.x, var_0.c, ~var_0.c, 1295u)))), ~abs(countOneBits(38843u)), var_0.b);
    var var_1 = Struct_1(1i, -1000f, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-814f, _wgslsmith_f_op_f32(f32(-1f) * -219f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-824f, var_0.b) + -304f), var_0.b))));
    return StorageBuffer(-select(vec4<i32>(_wgslsmith_mult_i32(var_1.a, 45056i), _wgslsmith_div_i32(var_0.a, -1i), _wgslsmith_add_i32(2147483647i, -21876i), countOneBits(-46833i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, var_1.a, 26651i), vec4<i32>(-8343i, -1i, u_input.a, 2147483647i), -vec4<i32>(9430i, 42880i, 39101i, -17354i)), vec4<bool>(true, true, true, true)), ~(~abs(40321u)), ~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, var_0.a), vec2<i32>(u_input.b, var_1.a)), _wgslsmith_div_i32(-1i, -53183i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_0.b, var_1.b) - vec3<f32>(-552f, var_1.d, 1019f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -590f, 912f) * vec3<f32>(var_0.d, var_0.b, 1806f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1041f + var_0.d), _wgslsmith_f_op_f32(select(1915f, -348f, false)), _wgslsmith_f_op_f32(func_2())))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(~vec3<u32>(abs(4294967295u), 1u, abs(4294967295u))));
}

