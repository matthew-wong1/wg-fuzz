struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2875f, -692f, 302f, 212f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1070f, 449f, 1922f, -1261f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(554f, -361f, 109f, 1355f) + vec4<f32>(-2125f, 458f, -136f, 1544f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(520f, -664f, -1584f, 1222f)))))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-280f, 484f, -123f, -1004f), vec4<f32>(-157f, 231f, -428f, -604f)))))))));
    var var_2 = Struct_4(reverseBits(u_input.a), Struct_3(~(u_input.b ^ u_input.b) <= ~reverseBits(u_input.b)));
    var var_3 = var_2.b;
    var_2 = Struct_4(firstLeadingBit(_wgslsmith_mod_i32(7753i, -2147483647i)), Struct_3(true));
    return (-vec4<i32>(i32(-1i) * -2147483647i, abs(var_2.a), u_input.c, reverseBits(var_2.a)) & _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_2.a, -2147483647i, var_2.a, 1i)), ~(~vec4<i32>(-2147483647i, 0i, 1i, -75653i)))) | ~_wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(var_2.a, u_input.a, u_input.c, -1i)), max(~vec4<i32>(var_2.a, u_input.c, -1i, var_2.a), -vec4<i32>(-41375i, u_input.c, 7574i, 0i)));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = (arg_0.x & 4294967295u) > u_input.b;
    let var_1 = -33147i;
    let var_2 = Struct_5(Struct_3(!(!any(vec3<bool>(true, var_0, true)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(func_3(), _wgslsmith_div_vec4_i32(vec4<i32>(var_1, u_input.c, u_input.a, 0i), vec4<i32>(var_1, var_1, u_input.a, -13432i)) | -vec4<i32>(-7250i, u_input.c, var_1, 1i)), vec4<i32>(26559i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1), abs(vec2<i32>(-1i, u_input.a))), u_input.a, (23910i | u_input.a) << (u_input.b % 32u))));
    let var_3 = Struct_4(-reverseBits(~max(-1i, var_1)), Struct_3(var_0));
    var var_4 = firstLeadingBit(min(abs(vec4<i32>(countOneBits(var_3.a), ~0i, abs(0i), i32(-1i) * -2147483647i)), vec4<i32>(~(-var_2.b.x), 2147483647i, -(~u_input.a), var_3.a | -var_3.a)));
    return vec4<bool>(var_2.a.a, !all(vec4<bool>(var_3.b.a, var_0 == false, var_3.b.a, true)), true, var_0);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(!(!func_2(vec4<u32>(u_input.b, 21286u, u_input.b, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, firstTrailingBit(4294967295u), min(~0u, u_input.b), 1u), ~(~vec4<u32>(4038u, 4294967295u, u_input.b, 16167u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-1025f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-377f - -1554f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1221f), 992f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1724f, 595f))))))));
    let var_1 = select(vec2<bool>(func_2(firstTrailingBit(vec4<u32>(33801u, 46913u, var_0.b, u_input.b))).x | var_0.a.x, true), !var_0.a.zx, 4294967295u < _wgslsmith_clamp_u32(_wgslsmith_mod_u32(19550u, 4294967295u), 0u, var_0.b));
    var var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x);
    var var_4 = _wgslsmith_f_op_f32(abs(var_0.c.x));
    return Struct_1(var_0.a.xxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-18617i);
    var var_1 = vec3<f32>(213f, 742f, _wgslsmith_f_op_f32(trunc(-334f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, -161f, 1541f) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 816f, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(279f, var_1.x, var_1.x), vec3<f32>(1109f, 1126f, 580f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, var_1.x, var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 319f, var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(var_1.x * 2153f), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-var_1.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-945f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, -1670f, -687f)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-993f, -109f), _wgslsmith_f_op_f32(-250f + 1038f), func_2(vec4<u32>(u_input.b, 1u, 0u, 0u)).x)), var_1.x, var_1.x), var_0.a)));
    var var_2 = var_0.a.x;
    let var_3 = Struct_5(Struct_3(true), vec4<i32>(~_wgslsmith_mult_i32(u_input.c, 0i), -firstTrailingBit(2147483647i) & 7629i, u_input.c, ~(~(-1i) & _wgslsmith_div_i32(4872i, u_input.a))));
    let var_4 = Struct_4(var_3.b.x << ((_wgslsmith_sub_u32(~0u, ~u_input.b) << (_wgslsmith_div_u32(reverseBits(u_input.b), ~u_input.b) % 32u)) % 32u), Struct_3(true));
    let var_5 = ~(_wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, 29055u), vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(0u, 1u, u_input.b)), vec3<u32>(~u_input.b, ~u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b))) ^ _wgslsmith_add_u32(18402u, ~u_input.b));
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(-9018i));
}

