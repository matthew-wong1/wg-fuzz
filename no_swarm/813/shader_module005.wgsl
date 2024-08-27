struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 14>;

var<private> global2: f32 = 119f;

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> i32 {
    global0 = ~_wgslsmith_div_u32(arg_0.a, ~(~1608u));
    var var_0 = ~(abs(vec2<u32>(1u, 1u)) & vec2<u32>(~_wgslsmith_clamp_u32(arg_0.a, arg_0.a, 21362u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, 0u, arg_0.a, arg_0.a), vec4<u32>(8021u, arg_0.a, arg_0.a, 24417u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(-848f, -2018f)), _wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(trunc(259f)));
    var var_2 = Struct_1(_wgslsmith_mod_i32(39396i, reverseBits(~select(u_input.a.x, u_input.a.x, true))), -499f);
    var_2 = Struct_1(_wgslsmith_mod_i32(0i, _wgslsmith_div_i32(-var_2.a, ~(-3531i))), 1769f);
    return min(-19789i, reverseBits(select(firstTrailingBit(u_input.a.x), i32(-1i) * -29042i, all(vec2<bool>(arg_2, arg_1.a))) << (firstLeadingBit(0u) % 32u)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x, 505i), func_3(Struct_4(0u), Struct_2(true), true), 0i), firstLeadingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a.x, 102729i, -2147483647i), vec4<i32>(-40115i, -40680i, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1159f - 394f), -793f)), 965f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -821f), -213f, _wgslsmith_f_op_f32(f32(-1f) * -1820f)), vec4<f32>(_wgslsmith_div_f32(var_0.b, var_0.b), var_0.b, _wgslsmith_f_op_f32(-981f + -1000f), _wgslsmith_f_op_f32(var_0.b - 1156f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-825f, var_0.b, var_0.b, var_0.b) * vec4<f32>(var_0.b, -512f, var_0.b, 1895f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -694f, var_0.b, 833f), vec4<f32>(-776f, var_0.b, var_0.b, var_0.b)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 434f, 1149f, 198f))), vec4<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_div_f32(var_0.b, 1735f), _wgslsmith_f_op_f32(ceil(1270f)), _wgslsmith_f_op_f32(-var_0.b))))));
    let var_2 = Struct_4(firstTrailingBit(_wgslsmith_mult_u32(1u, ~_wgslsmith_mult_u32(7771u, 0u))));
    global2 = var_0.b;
    let var_3 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-reverseBits(-23094i), ~(i32(-1i) * -9677i), 25201i), reverseBits(vec3<i32>(u_input.a.x, var_0.a, 9300i) ^ vec3<i32>(2147483647i, 2147483647i, -2147483647i)) | -firstTrailingBit(vec3<i32>(var_0.a, 52961i, -1i)), min(~vec3<i32>(-11272i, 18346i, var_0.a), -vec3<i32>(-57748i, var_0.a, var_0.a)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(17984i, var_0.a, 1i), max(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(0i, var_0.a, var_0.a)))));
    return vec2<i32>(firstLeadingBit(~u_input.a.x), 1i);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(func_2(), select(countOneBits(u_input.a), u_input.a, select(false, true, true))), 0i, -4373i), _wgslsmith_f_op_f32(abs(1064f)));
    let var_1 = _wgslsmith_f_op_f32(var_0.b + 294f);
    let var_2 = 1009f;
    global0 = _wgslsmith_dot_vec3_u32(max(abs(countOneBits(vec3<u32>(10042u, 0u, 0u))), vec3<u32>(1u, 1u, 1u)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(73285u, 1u, 30449u), ~vec3<u32>(43325u, 4294967295u, 26837u), vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)));
    global1 = array<Struct_2, 14>();
    return Struct_1(9472i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -625f)) - var_1));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> StorageBuffer {
    global3 = array<Struct_3, 4>();
    var var_0 = func_1();
    let var_1 = var_0.b;
    var var_2 = u_input.a;
    let var_3 = global3[_wgslsmith_index_u32(~arg_2.x, 4u)];
    return StorageBuffer(select(_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 4294967295u, arg_2.x)), vec3<u32>(~0u, firstTrailingBit(0u), 4294967295u)), vec3<u32>(arg_2.x, min(reverseBits(arg_2.x), 28707u), abs(~1u)), select(vec3<bool>(var_3.a, 4294967295u <= arg_2.x, false), !vec3<bool>(true, var_3.a, false), any(select(vec4<bool>(var_3.a, var_3.a, false, var_3.a), vec4<bool>(true, var_3.a, false, var_3.a), var_3.a)))), vec4<i32>(_wgslsmith_dot_vec2_i32(~(-u_input.a), -(~u_input.a)), 19047i, ~(~(-2147483647i)), var_0.a), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.x, arg_2.x, 10049u, 36806u) >> (vec4<u32>(78314u, 24440u, arg_2.x, 37457u) % vec4<u32>(32u)), countOneBits(vec4<u32>(0u, 0u, arg_2.x, arg_2.x)), select(vec4<bool>(var_3.a, var_3.a, false, var_3.a), vec4<bool>(var_3.a, true, var_3.a, var_3.a), true)), vec4<u32>(4294967295u, 27240u, ~arg_2.x, ~arg_2.x)) & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x & arg_2.x, _wgslsmith_clamp_u32(arg_2.x, arg_2.x, arg_2.x)), vec3<u32>(arg_2.x, ~0u, ~arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), 1f, 1f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, -765f, 498f)) - vec3<f32>(960f, _wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(2206f - -343f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-147f, -1870f, 212f) - vec3<f32>(-1643f, 588f, -1515f)) - vec3<f32>(1014f, -541f, 229f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(245f, -1000f, false)), _wgslsmith_f_op_f32(min(740f, 586f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 494f, 1410f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-935f, var_0.x, var_0.x) * vec3<f32>(-821f, 120f, var_0.x)), vec3<f32>(-967f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-788f, var_0.x, 911f) + vec3<f32>(-1346f, -1377f, -809f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2130f, 489f, 1000f) + vec3<f32>(var_0.x, 110f, -1338f)) * vec3<f32>(var_0.x, var_0.x, -1612f)))))));
    var var_1 = Struct_4(_wgslsmith_add_u32(45249u, 1u));
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 205f, var_0.x)))))))), vec2<u32>(93223u, _wgslsmith_sub_u32(35613u & ~var_1.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 0u), vec2<u32>(60277u, 1u)))), func_1());
}

