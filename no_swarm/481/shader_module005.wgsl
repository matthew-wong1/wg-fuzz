struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> bool {
    global0 = array<Struct_2, 8>();
    let var_0 = -_wgslsmith_mult_vec3_i32(u_input.d.zyw, u_input.d.xww);
    return arg_1 | !arg_0.c;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> i32 {
    let var_0 = !(!vec4<bool>(true, false, func_2(Struct_1(7287i, -634f, arg_1.x, vec4<u32>(1u, 60636u, arg_2.x, 0u)), arg_1.x, Struct_2(arg_1.x, -1i)), !arg_1.x));
    let var_1 = _wgslsmith_f_op_f32(step(1838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f))))));
    let var_2 = true;
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    return 27622i;
}

fn func_3() -> f32 {
    var var_0 = false && ((!any(vec3<bool>(false, true, false)) & (all(vec4<bool>(false, false, true, false)) || false)) == !(u_input.b < (4294967295u ^ u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(338f, 1172f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1499f, 1972f))))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1126f + 269f), _wgslsmith_f_op_f32(min(-843f, -1125f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1677f, -595f), vec2<f32>(-1578f, 218f)))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    let var_0 = vec2<i32>(_wgslsmith_div_i32(u_input.d.x, ~u_input.d.x) ^ (u_input.d.x ^ 0i), func_1(abs(~abs(u_input.b)), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, true))), vec2<bool>(any(vec4<bool>(true, false, false, true)), false), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false))), firstLeadingBit(~vec3<u32>(u_input.a, 4294967295u, 0u))));
    global0 = array<Struct_2, 8>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -u_input.c.x), u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1101f - -1000f) + _wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(368f - 1042f))), !(!(37094u == u_input.a)), vec4<u32>(~u_input.a, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 53071u, u_input.a), vec3<u32>(0u, u_input.b, 0u))), 62502u, _wgslsmith_sub_u32(~u_input.b, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~13834u, 1u), u_input.a, abs(0u), u_input.b), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 6123u, u_input.a), vec4<u32>(33225u, u_input.a, 427u, 1u) | ~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), (~(~vec3<u32>(1u, u_input.b, u_input.b)) >> (firstTrailingBit(vec3<u32>(u_input.a, 9558u, u_input.b)) % vec3<u32>(32u))) << (abs(vec3<u32>(u_input.a, countOneBits(7196u), u_input.a)) % vec3<u32>(32u)), Struct_1(-1i, 525f, true, vec4<u32>(_wgslsmith_div_u32(~1u, abs(4689u)), 35651u, ~reverseBits(0u), u_input.a)), Struct_1(_wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(u_input.c.x, 11558i)), ~abs(14808i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(377f, 1753f))))), ~0u == u_input.b, ~(~vec4<u32>(u_input.a, 1u, 4294967295u, 12761u)) | ~(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.b) ^ vec4<u32>(1u, u_input.b, 1u, 39573u))));
    var var_2 = Struct_2(any(select(select(vec2<bool>(true, var_1.e.c), vec2<bool>(var_1.e.c, var_1.a.c), 18194u >= u_input.a), vec2<bool>(!var_1.a.c, any(vec2<bool>(var_1.e.c, var_1.d.c))), var_1.a.c)), -2147483647i);
    var var_3 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec2_i32(countOneBits(var_0), vec2<i32>(0i, 2147483647i) ^ var_0), ~firstTrailingBit(vec2<i32>(56206i, -2147483647i)), vec2<bool>(!var_2.a, true)) >> (var_3.d.wy % vec2<u32>(32u)), ~(~_wgslsmith_mult_u32(1u, ~u_input.a)), vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_2.b, var_3.a, -2147483647i, 0i))), 0i) >> (var_1.c.yy % vec2<u32>(32u)));
}

