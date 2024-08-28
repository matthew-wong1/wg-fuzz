struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global0 = array<Struct_4, 3>();
    let var_0 = select(vec3<bool>(any(vec3<bool>(false, true, true)), !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true), !select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, false, false, false))), false);
    global0 = array<Struct_4, 3>();
    var var_1 = ~vec2<u32>(~26784u, arg_0) | select(vec2<u32>(~u_input.c.x, ~u_input.c.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(26597u, u_input.c.x), vec2<u32>(15558u, 47231u)) & _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, arg_0)), vec2<u32>(u_input.c.x, u_input.c.x ^ 1u)), select(!(!vec2<bool>(false, var_0.x)), var_0.xy, select(select(var_0.x, true, var_0.x), !var_0.x, !var_0.x)));
    var_1 = u_input.c;
    return vec2<bool>(var_0.x, var_0.x);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    var var_0 = Struct_3(vec2<bool>(true, true), Struct_1(~min(u_input.c ^ u_input.c, vec2<u32>(659u, 21772u)), all(func_3(1u)), ~countOneBits(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = Struct_3(vec2<bool>(true, true), var_0.b);
    return u_input.b;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = Struct_4(_wgslsmith_mult_vec2_u32(~arg_0.a, ~(select(arg_0.a, u_input.c, vec2<bool>(arg_0.b, arg_0.b)) >> (_wgslsmith_mod_vec2_u32(arg_0.a, vec2<u32>(1u, 0u)) % vec2<u32>(32u)))), true);
    global0 = array<Struct_4, 3>();
    let var_1 = Struct_1(~arg_0.a, arg_0.b, vec2<i32>(~func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3182f, arg_3, arg_3, 2072f) - vec4<f32>(-270f, 101f, 747f, 892f))), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(871f)) + arg_3));
    var var_2 = Struct_4(~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(var_0.a, vec2<u32>(4294967295u, var_0.a.x)))), var_0.b);
    global0 = array<Struct_4, 3>();
    return _wgslsmith_div_vec4_u32(vec4<u32>(16898u, firstLeadingBit(~var_1.a.x), 1u, ~6330u), max(abs(vec4<u32>(~var_0.a.x, 61311u, 90327u, 54705u)), firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(arg_0.a.x, 33441u)), ~var_1.a.x, var_0.a.x | 37097u, ~51467u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_1(vec2<u32>(~(~(61043u << (u_input.c.x % 32u))), u_input.c.x), false, u_input.a.wx << (u_input.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1061f * arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - 543f)))));
    var var_1 = -u_input.a.xxx | u_input.a.xxx;
    let var_2 = Struct_1(firstLeadingBit(reverseBits(vec2<u32>(_wgslsmith_add_u32(var_0.a.x, 0u), _wgslsmith_add_u32(u_input.c.x, var_0.a.x)))), !(!(108164u < var_0.a.x)), select(u_input.a.xw, countOneBits(-vec2<i32>(var_0.c.x, var_1.x)), true) ^ abs(_wgslsmith_sub_vec2_i32(var_1.yx, var_0.c) | vec2<i32>(u_input.a.x, var_0.c.x)), var_0.d);
    let var_3 = !((false || !(!var_2.b)) || false);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.d, 698f, arg_0.x, var_2.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1372f, var_2.d, arg_0.x, 303f))), vec4<f32>(-624f, var_2.d, var_2.d, -531f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1964f, var_0.d) - _wgslsmith_f_op_f32(f32(-1f) * -169f)), -268f, var_0.d, _wgslsmith_f_op_f32(min(1388f, arg_0.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1792f, 284f, 1104f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.d, -776f, -1199f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.d, arg_0.x, 737f, var_2.d)))), vec4<f32>(var_0.d, _wgslsmith_f_op_f32(193f + arg_0.x), _wgslsmith_f_op_f32(ceil(424f)), -1056f), true && (1u <= var_2.a.x)))));
    return global0[_wgslsmith_index_u32(0u, 3u)];
}

fn func_5(arg_0: Struct_4) -> bool {
    global0 = array<Struct_4, 3>();
    let var_0 = !vec3<bool>(-u_input.b > 0i, ((arg_0.b & true) | arg_0.b) && any(select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b), false)), arg_0.b);
    let var_1 = Struct_1(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x >> (arg_0.a.x % 32u), _wgslsmith_mod_u32(25543u, 4294967295u)), max(vec2<u32>(0u, u_input.c.x), arg_0.a))), !arg_0.b, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, u_input.a.x), u_input.a.xxz) << (firstLeadingBit(u_input.c.x) % 32u), ~u_input.b), u_input.a.zy), _wgslsmith_f_op_f32(198f * 462f));
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    return !(!(!(func_4(vec2<f32>(var_1.d, var_1.d), vec4<u32>(3038u, arg_0.a.x, arg_0.a.x, var_1.a.x), true, arg_0.a.x).a.x <= ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(func_5(func_4(vec2<f32>(-565f, 225f), func_1(Struct_4(vec2<u32>(u_input.c.x, 46147u), true), 2147483647i, -1i, -1511f), true, select(u_input.c.x, 1u, true))), min(u_input.c.x, ~u_input.c.x) <= ~_wgslsmith_mult_u32(0u, 42561u));
    var var_1 = Struct_1(~u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1346f, _wgslsmith_f_op_f32(172f * -1844f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(f32(-1f) * -1670f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(343f - 838f)))), countOneBits(max(~vec2<i32>(u_input.b, u_input.a.x), -u_input.a.xw)) | _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(-4113i, u_input.a.x)), u_input.a.zw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(f32(-1f) * -798f)));
    global0 = array<Struct_4, 3>();
    var var_2 = Struct_1(u_input.c, false, u_input.a.zx, var_1.d);
    var_2 = Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(var_2.a.x), _wgslsmith_div_u32(47457u, var_2.a.x)), u_input.c), true, countOneBits(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(-var_1.c, vec2<i32>(22425i, var_1.c.x)), vec2<i32>(1i >> (u_input.c.x % 32u), -var_2.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(sign(var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1625f - -708f) * _wgslsmith_f_op_f32(718f - var_2.d)))));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~5122u, 0u, min(~var_1.a.x, 0u), ~var_2.a.x), select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a.x, var_1.a.x, u_input.c.x, var_2.a.x), ~vec4<u32>(u_input.c.x, var_1.a.x, 71628u, 14444u)), vec4<u32>(_wgslsmith_mult_u32(var_1.a.x, var_2.a.x), u_input.c.x, func_1(Struct_4(var_1.a, true), var_2.c.x, -5133i, 1000f).x, firstLeadingBit(var_1.a.x)), vec4<bool>(var_0.x & var_1.b, true, var_2.b, all(vec2<bool>(true, false))))), 3u)];
    var var_4 = firstTrailingBit(~_wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_mod_u32(33666u | var_3.a.x, _wgslsmith_mod_u32(41145u, 80752u)), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, 78236u))));
    var var_5 = 0u;
    let var_6 = global0[_wgslsmith_index_u32(var_3.a.x, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.yyy), 1f, vec2<u32>(~(~(~17724u)), var_2.a.x | func_4(vec2<f32>(2184f, var_1.d), ~vec4<u32>(var_2.a.x, u_input.c.x, 4294967295u, var_6.a.x), !var_1.b, _wgslsmith_div_u32(4294967295u, 4294967295u)).a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d, var_1.d, var_1.d, var_2.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, var_2.d, var_1.d, -481f) - vec4<f32>(-564f, var_1.d, var_1.d, -840f))))), var_3.a.x);
}

