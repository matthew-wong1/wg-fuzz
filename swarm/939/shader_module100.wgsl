struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 70708u;

var<private> global1: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-u_input.c >> (_wgslsmith_mod_vec3_u32(vec3<u32>(56607u, 0u, 0u), reverseBits(vec3<u32>(4294967295u, 15275u, 5583u))) % vec3<u32>(32u)))));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(max(u_input.b, u_input.c.yz), -vec2<i32>(u_input.b.x, u_input.a)), vec2<i32>(-u_input.b.x, 0i ^ ~u_input.a), vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.c ^ u_input.c, u_input.c ^ u_input.c))));
    let var_4 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_add_i32(u_input.c.x, -34841i)), -30202i, -5482i, -2147483647i);
    return Struct_1(u_input.c.zx);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = vec4<f32>(arg_3.x, arg_3.x, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.c.a.x, arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -50107i, 1i, 9018i), arg_1.d)), ~77109i));
    let var_2 = 4294967295u;
    global0 = _wgslsmith_div_u32(~min(_wgslsmith_sub_u32(reverseBits(var_2), ~1u), var_2 ^ 4294967295u), _wgslsmith_div_u32(~select(var_2, var_2, -1i > var_1.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 0u), firstTrailingBit(vec3<u32>(var_2, 75420u, var_2))), vec3<u32>(max(var_2, 8064u), var_2 & 1u, var_2))));
    var var_3 = arg_1.b;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_3(func_1(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), true)), Struct_3(true, Struct_2(func_1(vec3<bool>(true, false, true))), func_1(vec3<bool>(true, true, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.a), vec4<i32>(-27406i, -2147483647i, -13708i, -1i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, -8707i, -1i), vec4<i32>(u_input.c.x, 32628i, u_input.c.x, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(671f, -224f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1852f))) + vec2<f32>(_wgslsmith_f_op_f32(-136f + -1203f), -2422f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, 1000f, 1851f)))))));
    global1 = i32(-1i) * -11447i;
    global1 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, -1033f) * -1066f);
    var var_2 = var_0;
    var var_3 = var_0;
    var_3 = Struct_2(Struct_1(abs(-var_2.a.a)));
    let var_4 = vec3<f32>(_wgslsmith_div_f32(-576f, 1000f), _wgslsmith_f_op_f32(func_2(vec3<i32>(_wgslsmith_div_i32(~var_3.a.a.x, -22414i), firstLeadingBit(var_0.a.a.x), func_1(vec3<bool>(true, true, true)).a.x ^ (var_0.a.a.x & u_input.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-263f)), _wgslsmith_f_op_f32(f32(-1f) * -997f), true)), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(-724f, _wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(abs(var_4.x))))), var_4.x, _wgslsmith_f_op_f32(sign(267f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-108f)) * -652f) + _wgslsmith_f_op_f32(-203f - 225f))), var_2.a.a, _wgslsmith_f_op_f32(func_2(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.a.x, 1i, var_0.a.a.x) & vec3<i32>(var_3.a.a.x, var_3.a.a.x, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, -11133i), vec3<i32>(15225i, u_input.b.x, u_input.b.x))))));
}

