struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(21006u, 64021u, 46529u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1048f);
    let var_1 = -select(vec2<i32>(1i, -abs(-2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), max(~vec2<i32>(44399i, -2147483647i), -vec2<i32>(2147483647i, u_input.a))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, 14373u <= global0.x), vec2<bool>(true, true)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(574f))))));
    let var_2 = arg_1;
    let var_3 = var_2;
    return ~((vec3<u32>(71228u, global0.x, 4294967295u) >> (~vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u))) & abs(~vec3<u32>(global0.x, global0.x, u_input.d))) ^ (select(vec3<u32>(global0.x, u_input.d, global0.x), ~(vec3<u32>(76038u, 1u, 7619u) ^ vec3<u32>(0u, u_input.d, 50641u)), !all(vec2<bool>(true, false))) | vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, global0.x), vec3<u32>(148u, 1u, global0.x)), abs(_wgslsmith_add_u32(u_input.d, global0.x)), u_input.d));
}

fn func_2() -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(~u_input.b, -(-2147483647i ^ -u_input.a)), _wgslsmith_mult_i32(u_input.c & u_input.a, -2147483647i), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(837f - -130f))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1399f))));
    var var_2 = var_1;
    global0 = func_3(min(var_0.x, -2147483647i), Struct_1(var_1));
    let var_3 = vec2<i32>(var_0.x, reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.xz, vec2<i32>(u_input.a, u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, u_input.b, -2147483647i) ^ vec4<i32>(var_0.x, -2147483647i, var_0.x, 0i), -vec4<i32>(u_input.a, -2147483647i, 0i, u_input.a)))));
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))))), -1755f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f - 415f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -693f), _wgslsmith_f_op_f32(sign(-466f)))))));
    var var_1 = abs(reverseBits(_wgslsmith_sub_i32(max(_wgslsmith_add_i32(u_input.c, u_input.c), 59363i), min(u_input.a, i32(-1i) * -97653i))));
    var var_2 = u_input.d;
    let var_3 = _wgslsmith_f_op_f32(trunc(1322f));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 235f, 1067f, 1404f), vec4<f32>(var_0.x, var_0.x, 1633f, 1443f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2500f, var_3, var_3, var_0.x), vec4<f32>(var_0.x, -1914f, var_3, 391f), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -2837f, 1239f, -481f) * vec4<f32>(var_3, var_0.x, var_0.x, 378f)))) + vec4<f32>(980f, var_0.x, _wgslsmith_f_op_f32(max(-719f, var_0.x)), 820f)), any(vec4<bool>(all(vec2<bool>(true, false)), false, !(u_input.a <= -16076i), !any(vec2<bool>(true, true)))), u_input.b, func_3(u_input.c, Struct_1(var_0.x)).x, -2147483647i);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = func_1();
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(func_1().d | global0.x, u_input.d, countOneBits(1u)), vec3<u32>(1u, countOneBits(global0.x), global0.x), min(firstTrailingBit(vec3<u32>(~1u, var_1.d, _wgslsmith_div_u32(global0.x, global0.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 1u), vec3<u32>(u_input.d, global0.x, 4294967295u)), abs(vec3<u32>(u_input.d, 0u, 12348u))) << ((firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.d)) ^ select(vec3<u32>(u_input.d, 36129u, var_1.d), vec3<u32>(45231u, 0u, 4294967295u), vec3<bool>(var_1.b, true, var_1.b))) % vec3<u32>(32u))));
    var_1 = Struct_2(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(select(1f, 1158f, firstTrailingBit(4294967295u) == ~24509u)), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))) * _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, var_1.b))))), 1i == _wgslsmith_clamp_i32(var_1.c, -17931i << (global0.x % 32u), _wgslsmith_sub_i32(var_1.e | 7725i, 1i)), ~var_1.c, u_input.d, abs(_wgslsmith_mult_i32(0i, var_0 >> (1u % 32u)) | firstLeadingBit(u_input.a)));
    let var_2 = vec2<u32>(_wgslsmith_add_u32(u_input.d, 3417u >> (_wgslsmith_div_u32(~var_1.d, _wgslsmith_mod_u32(var_1.d, var_1.d)) % 32u)), ~28377u);
    global0 = ~abs(select(vec3<u32>(global0.x, _wgslsmith_add_u32(var_1.d, u_input.d), global0.x), reverseBits(~vec3<u32>(u_input.d, global0.x, var_1.d)), vec3<bool>(any(vec4<bool>(false, false, var_1.b, true)), true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1400f + var_1.a.x) + _wgslsmith_f_op_f32(var_1.a.x * 624f)), -566f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.a.x)), -616f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x)) + -998f), vec2<i32>(u_input.a, abs(var_0)));
}

