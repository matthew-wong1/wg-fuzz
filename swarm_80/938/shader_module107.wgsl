struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-317f)) * -379f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * 2083f))))));
    return u_input.a.xx & vec2<u32>(firstLeadingBit(~abs(4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(851u, u_input.c), 39555u, ~1u));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> vec2<u32> {
    var var_0 = ~(~(~arg_1.x));
    var_0 = min(u_input.d.x, ~arg_2);
    var_0 = min(63971i, 0i);
    var var_1 = true;
    var var_2 = 49821u;
    return vec2<u32>(reverseBits(~u_input.a.x), select(u_input.a.x, abs(76396u), true) << (2389u % 32u)) >> ((~(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 141741u)) & func_3()) << (vec2<u32>(~u_input.a.x, 73486u) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(func_2(countOneBits(arg_2), (_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_2, u_input.d.x, 19574i), vec4<i32>(arg_2, u_input.d.x, u_input.e.x, -2354i)) | vec4<i32>(37184i, 11051i, arg_2, arg_2)) | (vec4<i32>(-2147483647i, arg_1, -1i, 46772i) << (abs(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), u_input.d.x), vec2<u32>(u_input.c, _wgslsmith_clamp_u32(~u_input.b | u_input.a.x, 4294967295u, firstLeadingBit(u_input.a.x))));
    var var_1 = 4294967295u;
    let var_2 = Struct_1(-120f);
    global0 = array<vec4<f32>, 22>();
    var_0 = u_input.a.x;
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(countOneBits(~(vec4<i32>(u_input.e.x, u_input.d.x, u_input.d.x, 0i) & vec4<i32>(16552i, 2147483647i, u_input.e.x, u_input.d.x))) & ~reverseBits(vec4<i32>(56814i, u_input.d.x, 62750i, u_input.e.x) << (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 101737u) % vec4<u32>(32u))), abs(abs(vec4<i32>(~8848i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 2147483647i, 10446i), vec3<i32>(u_input.e.x, u_input.e.x, u_input.d.x)), u_input.d.x))));
    global0 = array<vec4<f32>, 22>();
    var_0 = vec4<i32>(u_input.e.x, _wgslsmith_clamp_i32(min(1i, -_wgslsmith_mod_i32(var_0.x, -38447i)), u_input.e.x, countOneBits(abs(firstTrailingBit(-78625i)))), var_0.x, u_input.d.x);
    var_0 = _wgslsmith_mult_vec4_i32(firstLeadingBit(min(~(~vec4<i32>(6836i, var_0.x, -1i, var_0.x)), vec4<i32>(u_input.d.x, 16866i, u_input.e.x, var_0.x))), select(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(15543i, 34511i, 0i, var_0.x), vec4<i32>(var_0.x, 0i, 49830i, var_0.x)), -vec4<i32>(var_0.x, var_0.x, 39601i, u_input.e.x)), vec4<i32>(~u_input.d.x, 529i, _wgslsmith_mult_i32(0i, 36708i), -2147483647i >> (u_input.a.x % 32u))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x) << (vec4<u32>(2303u, 10658u, 17786u, u_input.b) % vec4<u32>(32u))), -vec4<i32>(-1i, -2147483647i, 1i, 34063i), ~(-vec4<i32>(-2147483647i, u_input.d.x, 0i, u_input.d.x))), ((-1i & u_input.d.x) > u_input.d.x) != false));
    global0 = array<vec4<f32>, 22>();
    return Struct_1(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(ceil(512f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1664f))), 405f))));
    let var_1 = 1u;
    var var_2 = func_4(func_1(!vec2<bool>(true, all(vec2<bool>(true, true))), u_input.e.x, ~(-29490i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)))));
    var var_3 = true;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(sign(1671f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2125f, -834f)) - _wgslsmith_div_f32(504f, -119f))));
    let var_5 = ~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, abs(u_input.d.x)), 1i), u_input.d & u_input.d);
    var var_6 = ~select(_wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -12794i, u_input.d.x, u_input.e.x, 172i & var_5.x), min(abs(vec4<i32>(u_input.d.x, 0i, -8450i, 69112i)), vec4<i32>(-28737i, var_5.x, u_input.e.x, u_input.d.x) << (vec4<u32>(var_1, var_1, u_input.c, 1u) % vec4<u32>(32u)))), ~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -1i, var_5.x, u_input.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(1942i, 22514i, -32756i, var_5.x), vec4<i32>(var_5.x, -2147483647i, -12903i, var_5.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_5.x);
}

