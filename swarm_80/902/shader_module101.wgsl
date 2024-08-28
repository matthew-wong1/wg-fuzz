struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    var var_0 = vec2<i32>(arg_2, arg_2);
    global0 = 25725u;
    global0 = u_input.a.x;
    return Struct_2(-1i, arg_1, arg_1);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    global0 = 67693u;
    let var_0 = 1f;
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(arg_1.x, u_input.b.x, 1i, arg_1.x)), reverseBits(vec4<i32>(arg_1.x, u_input.b.x, 58907i, arg_1.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, arg_1.x, arg_1.x), reverseBits(vec4<i32>(arg_1.x, 0i, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, 1i, 1i), vec4<i32>(arg_1.x, u_input.b.x, arg_1.x, -93859i)))), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1, arg_1), -arg_1.x), arg_1.x)), abs(_wgslsmith_sub_vec2_i32(~u_input.b, u_input.b)));
    let var_2 = u_input.a;
    let var_3 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -1030f))))), var_0, _wgslsmith_f_op_f32(-var_0));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) + 1191f), -558f)));
    var var_2 = func_2(~(~u_input.a.zw), func_3(true, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, arg_2.x), ~arg_2.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 20457u), arg_2.xz, vec2<u32>(u_input.a.x, 0u)))), _wgslsmith_sub_i32(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7602i, 64710i, arg_0.a.a), vec4<i32>(-36432i, 29945i, u_input.b.x, u_input.b.x))), firstTrailingBit(-max(71867i, arg_0.a.a)))).b;
    var_0 = ~43698i;
    var_0 = ~select(-2147483647i, -u_input.b.x, false);
    return arg_1;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = u_input.a.xz;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_2 = func_4(Struct_3(func_2(~vec2<u32>(84149u, u_input.a.x), Struct_1(674f, var_1.x, 1f), u_input.b.x), reverseBits(u_input.b.x)), func_2(u_input.a.yw, func_3(true, _wgslsmith_div_vec2_i32(u_input.b & vec2<i32>(u_input.b.x, -2147483647i), u_input.b << (vec2<u32>(var_0.x, 18508u) % vec2<u32>(32u))), reverseBits(1u)), 2138i).b, vec4<u32>(25022u & ((var_0.x << (u_input.a.x % 32u)) | ~4294967295u), ~(~(u_input.a.x & var_0.x)), abs(firstTrailingBit(firstLeadingBit(var_0.x))), 1u));
    global0 = u_input.a.x;
    global0 = ~(~_wgslsmith_sub_u32(~reverseBits(u_input.a.x), firstTrailingBit(u_input.a.x)));
    return ~abs(vec2<u32>(4294967295u, u_input.a.x << (var_0.x % 32u)) << (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, u_input.a.x), vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(0u);
    let var_0 = u_input.b.x;
    var var_1 = u_input.a.xw;
    var_1 = _wgslsmith_add_vec2_u32(reverseBits(func_1(all(vec3<bool>(false, true, false)))), ~(~(u_input.a.wz & max(u_input.a.zy, u_input.a.wx))));
    global0 = 1u;
    var var_2 = vec2<u32>(~var_1.x, countOneBits(var_1.x ^ ~var_1.x) >> (20529u % 32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(759f, 1000f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_2(min(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, 1u, 40569u)), u_input.a.x), vec2<u32>(21346u, 1u)), func_4(Struct_3(func_2(u_input.a.ww, Struct_1(-656f, -892f, -1152f), -22028i), var_0), func_3(true, firstLeadingBit(u_input.b), 12065u), firstLeadingBit(u_input.a)), u_input.b.x).b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f + -297f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(0i, reverseBits(min(reverseBits(var_0), i32(-1i) * -7229i))), vec3<f32>(var_3.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.b)), _wgslsmith_f_op_f32(select(var_3.c, var_3.c, false))), var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1530f, -597f)))), _wgslsmith_div_i32(-17382i, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-7568i, var_0), firstLeadingBit(u_input.b.x)), 1i)));
}

