struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    let var_0 = ~_wgslsmith_add_i32(-_wgslsmith_div_i32(arg_1.x, 0i), -2147483647i) & ~abs(arg_0.x);
    var var_1 = !vec3<bool>(true, !(!(arg_3.x >= 782f)), true);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1750f, _wgslsmith_f_op_f32(-arg_3.x)))), abs(reverseBits(max(u_input.b, u_input.b))) ^ u_input.b, false);
    let var_3 = Struct_3(var_2.b, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(264i, reverseBits(68224i), 27271i, 0i), -vec4<i32>(arg_0.x, 38018i, arg_1.x, 1i)), ~(~(~vec4<i32>(arg_0.x, arg_0.x, var_0, arg_1.x)))));
    let var_4 = _wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(0i, 1i, arg_0.x))), arg_1.yx << (~u_input.d % vec2<u32>(32u)));
    return ~(i32(-1i) * -(~1i));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    var var_0 = firstLeadingBit(countOneBits(vec2<i32>(_wgslsmith_add_i32(func_3(vec3<i32>(12684i, -67900i, -3787i), vec3<i32>(arg_1, arg_1, arg_1), arg_0.x, vec3<f32>(1170f, 1223f, -2492f)), -2147483647i), 1950i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-240f, 676f) - -1236f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-164f)), _wgslsmith_f_op_f32(-1767f + 506f))))));
    var_0 = ~_wgslsmith_add_vec2_i32(-abs(abs(vec2<i32>(4672i, var_0.x))), -(~(vec2<i32>(-5511i, arg_1) << (vec2<u32>(4396u, 21212u) % vec2<u32>(32u)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1050f - _wgslsmith_f_op_f32(1038f + var_1.x)) * _wgslsmith_f_op_f32(sign(878f)))), abs(countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, arg_1), vec3<i32>(var_0.x, arg_1, arg_1)))), vec2<bool>(true, true));
    var var_3 = Struct_1(var_2.a, -var_2.b, select(!var_2.c, vec2<bool>(any(!vec4<bool>(false, var_2.c.x, false, var_2.c.x)), !all(vec3<bool>(false, var_2.c.x, false))), var_2.c));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, -2147483647i, var_2.b.x, var_3.b.x), vec4<i32>(0i, arg_1, var_2.b.x, var_2.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 27195i, 12766i, var_0.x), vec4<i32>(1i, 2147483647i, arg_1, 5814i))), var_0.x, func_3(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.b.x, 2147483647i, -2147483647i), vec3<i32>(var_2.b.x, var_2.b.x, var_0.x)), _wgslsmith_clamp_vec3_i32(var_3.b, var_2.b, vec3<i32>(-1i, 1i, var_2.b.x)), _wgslsmith_mult_u32(u_input.a.x, 0u), vec3<f32>(-684f, var_2.a, 149f)), _wgslsmith_clamp_i32(abs(arg_1), 0i, i32(-1i) * -6169i)), max(firstLeadingBit(abs(vec4<i32>(-14038i, arg_1, var_2.b.x, -1i))), max(firstLeadingBit(vec4<i32>(var_3.b.x, var_2.b.x, var_3.b.x, var_3.b.x)), firstTrailingBit(vec4<i32>(46196i, var_0.x, 53208i, var_2.b.x))))), ~reverseBits(-vec4<i32>(var_0.x, 0i, arg_1, var_3.b.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = -firstTrailingBit(2147483647i);
    var var_1 = ~vec4<u32>(~(~_wgslsmith_div_u32(0u, 24890u)), ~(~(~53276u)), u_input.e.x, u_input.b.x);
    let var_2 = false;
    return Struct_3(~firstLeadingBit(select(~vec3<u32>(70409u, var_1.x, 1u), select(vec3<u32>(u_input.d.x, 29432u, 4294967295u), vec3<u32>(var_1.x, var_1.x, var_1.x), true), var_2)), vec4<i32>(-1i, -37391i, ~(-func_2(u_input.a, -26751i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(vec2<bool>(true, u_input.e.x >= var_0.a.x));
    var_1 = true;
    var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(414f - -407f), _wgslsmith_f_op_f32(f32(-1f) * -955f))), var_0.b.wyw, vec2<bool>(all(vec2<bool>(true, true)), select(true, all(vec2<bool>(true, true)), any(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~13882u, var_0.a.x, 0u, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.b.zxz, var_0.b.ywx, _wgslsmith_mult_vec3_i32(var_2.b, vec3<i32>(-39137i, 0i, -10582i))), vec3<i32>(-8627i, ~var_0.b.x, -2495i)) & var_2.b.x, _wgslsmith_f_op_f32(round(-836f)));
}

