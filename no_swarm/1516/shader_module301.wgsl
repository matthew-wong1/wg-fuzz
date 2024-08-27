struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(-1000f, -1000f, true)) > _wgslsmith_f_op_f32(ceil(3170f));
    let var_1 = Struct_4(reverseBits(u_input.d.x), 341f, u_input.b << (min(vec2<u32>(_wgslsmith_mod_u32(arg_1.d.a.x, 27480u), 1u), arg_1.d.a) % vec2<u32>(32u)));
    let var_2 = Struct_3(1u > u_input.c, arg_1.b, 190f, arg_1.d, arg_1.e);
    var var_3 = arg_1;
    var var_4 = var_2.d.a;
    return arg_2.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_i32(arg_1.x, u_input.d.x), -1324f, u_input.b);
    var_0 = Struct_4(-1i, _wgslsmith_f_op_f32(func_3(arg_0.x, Struct_3(arg_0.x, 447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), u_input.e.yx)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, u_input.d.x, -30321i), vec3<i32>(u_input.d.x, -34692i, 2147483647i)), _wgslsmith_f_op_f32(floor(var_0.b)), arg_1.x >> (var_0.c.x % 32u), ~1i, 448f)), Struct_3(arg_0.x, -1238f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(454f * var_0.b))), Struct_2(abs(u_input.e.xz)), Struct_1(u_input.d ^ u_input.d, _wgslsmith_f_op_f32(abs(2268f)), 92087i << (u_input.e.x % 32u), _wgslsmith_div_i32(42928i, 5778i), _wgslsmith_f_op_f32(select(-520f, var_0.b, arg_0.x)))))), var_0.c & reverseBits(select(max(u_input.b, var_0.c), vec2<u32>(1u, 3462u), !arg_0)));
    var_0 = Struct_4(var_0.a >> ((~(~0u) >> (firstLeadingBit(firstTrailingBit(var_0.c.x)) % 32u)) % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-569f)))), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(-var_0.b), any(!vec2<bool>(arg_0.x, true)))))), min(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, ~u_input.b.x), select(abs(vec2<u32>(0u, var_0.c.x)), ~vec2<u32>(u_input.c, 0u), select(vec2<bool>(arg_0.x, arg_0.x), arg_0, false))), vec2<u32>(~(u_input.e.x >> (var_0.c.x % 32u)), firstTrailingBit(var_0.c.x) ^ reverseBits(var_0.c.x))));
    var_0 = Struct_4(countOneBits(17140i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))) * -177f), -370f, arg_0.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), ~u_input.b)), var_0.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(trunc(-512f))));
    return abs(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(u_input.e, _wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(8996u, 0u, 0u)))), _wgslsmith_mod_vec3_u32(u_input.e, u_input.e)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, arg_0.d, abs(~select(-2147483647i, -1i, arg_1))), -vec3<i32>(1i, _wgslsmith_sub_i32(arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(7189i, u_input.d.x, u_input.d.x, arg_0.d), vec4<i32>(-2147483647i, arg_0.a.x, 2147483647i, u_input.d.x))), 69834i));
    var var_1 = Struct_2(countOneBits(u_input.b));
    var_1 = Struct_2(u_input.b);
    var var_2 = u_input.b.x;
    var_1 = Struct_2(vec2<u32>(_wgslsmith_add_u32(var_1.a.x, func_2(!arg_2.yx, reverseBits(arg_0.a))), countOneBits(u_input.a) | u_input.b.x));
    return -1351f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), false));
    var var_1 = Struct_4(u_input.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(firstTrailingBit(u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 0i, -u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1127f)), true, var_0.wzz, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1215f), 1270f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-439f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1139f)))))), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, u_input.b), u_input.b));
    var var_2 = var_1.b;
    var var_3 = Struct_3(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b - var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-108f, var_1.b) + _wgslsmith_f_op_f32(476f * var_1.b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(428f, -1838f))))), Struct_2(var_1.c), Struct_1(select(u_input.d, vec3<i32>(1i, i32(-1i) * -2147483647i, ~var_1.a), select(!vec3<bool>(true, var_0.x, true), select(var_0.yzy, var_0.xww, vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + -235f)), var_1.a, -_wgslsmith_clamp_i32(-50845i, -15451i | u_input.d.x, _wgslsmith_div_i32(-29560i, var_1.a)), 1660f));
    let var_4 = var_3.d;
    let var_5 = Struct_3(!(!select(false, !var_0.x, var_0.x & var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(u_input.d.x, -14253i, -15125i), -693f, u_input.d.x, var_1.a, var_3.b), var_3.e.b <= -131f, var_0.wyy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1279f, -1000f), vec2<f32>(var_3.e.b, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(656f)) * 443f)))), var_3.c, Struct_2(vec2<u32>(1u, var_1.c.x) >> (countOneBits(~vec2<u32>(46602u, 14262u)) % vec2<u32>(32u))), Struct_1(max(_wgslsmith_mult_vec3_i32(u_input.d, -u_input.d), -_wgslsmith_add_vec3_i32(var_3.e.a, u_input.d)), var_3.e.b, u_input.d.x, _wgslsmith_mult_i32(var_3.e.d, var_3.e.d), var_1.b));
    var var_6 = Struct_4(~firstLeadingBit(i32(-1i) * -41023i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.e.e), _wgslsmith_f_op_f32(f32(-1f) * -411f), true)))) * var_5.e.b), var_4.a | vec2<u32>(var_5.d.a.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_3.d.a.x, 36158u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), u_input.e, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.c);
}

