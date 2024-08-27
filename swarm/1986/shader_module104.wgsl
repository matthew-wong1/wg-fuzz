struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(1i, 2147483647i, 17413i), vec3<i32>(-963i, -8713i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -9445i), vec3<i32>(2147483647i, -38798i, 14427i), vec3<i32>(-21806i, 79074i, 18206i), vec3<i32>(1i, i32(-2147483648), 24621i), vec3<i32>(-52637i, -37713i, -24058i), vec3<i32>(-38522i, 1i, i32(-2147483648)), vec3<i32>(-17437i, 0i, i32(-2147483648)), vec3<i32>(-1i, -1i, 3417i), vec3<i32>(-98444i, -4444i, 0i), vec3<i32>(1i, 16244i, 2147483647i), vec3<i32>(-38930i, 12131i, 29627i), vec3<i32>(39465i, 7120i, -1i), vec3<i32>(2147483647i, -13475i, 38862i), vec3<i32>(0i, -1195i, 2147483647i), vec3<i32>(-1i, -2981i, 8026i), vec3<i32>(i32(-2147483648), 5383i, -15915i), vec3<i32>(i32(-2147483648), 42885i, 1i), vec3<i32>(-5549i, 2147483647i, 30078i), vec3<i32>(36218i, 16085i, 2147483647i), vec3<i32>(23630i, i32(-2147483648), -45665i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(-1i, 1i, -1i), vec3<i32>(1i, 1i, 0i), vec3<i32>(0i, 41662i, i32(-2147483648)), vec3<i32>(10660i, 2147483647i, 2147483647i), vec3<i32>(15308i, 47004i, 1i), vec3<i32>(-29713i, 59349i, 16714i), vec3<i32>(-10583i, 1i, -1i), vec3<i32>(-1i, 2147483647i, -14061i), vec3<i32>(22186i, -32513i, -13086i));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    global0 = array<vec3<i32>, 32>();
    var var_0 = abs(0u);
    let var_1 = ~(u_input.a.x << (u_input.c % 32u));
    let var_2 = Struct_3(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 353f, 176f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))));
    var var_3 = Struct_2(Struct_1(vec2<i32>(var_1, -1i) ^ ~(u_input.a >> (vec2<u32>(85958u, 4294967295u) % vec2<u32>(32u))), ~vec4<u32>(max(u_input.c, u_input.c), ~0u, ~0u, ~13491u), 1u, u_input.a.x, u_input.a.x));
    return _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -57025i), _wgslsmith_div_i32(u_input.a.x, var_1), -var_3.a.e, _wgslsmith_sub_i32(var_3.a.e, var_2.a)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-51696i, -2147483647i, 2147483647i, var_1) ^ vec4<i32>(u_input.a.x, u_input.a.x, var_2.a, u_input.a.x), firstLeadingBit(vec4<i32>(-6445i, var_1, var_3.a.a.x, -17119i)), !vec4<bool>(var_2.c, false, false, true)), vec4<i32>(13098i, -1i, var_1, var_2.a) << (~var_3.a.b % vec4<u32>(32u)))), abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(-35274i, var_3.a.a.x, var_2.a, var_1), vec4<i32>(-var_3.a.a.x, countOneBits(22378i), 1i, var_3.a.e))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1915f, -1513f, 113f) - vec3<f32>(-548f, 301f, -548f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, -803f, -1092f))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1113f, 607f, -589f)))))));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-410f, -1540f, var_0.x) + vec3<f32>(-604f, var_0.x, var_0.x)))), vec4<i32>(9590i, 2147483647i, ~u_input.a.x, _wgslsmith_mult_i32(countOneBits(1i), ~u_input.a.x))), ~u_input.a.x, u_input.a.x);
    var var_2 = Struct_3(_wgslsmith_mult_i32(-14448i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, select(2147483647i, u_input.a.x, false)), ~(vec2<i32>(1i, 1i) << (vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 1000f, -533f))) + vec4<f32>(var_0.x, 768f, var_0.x, 907f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - 1000f), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1095f, var_0.x)))), var_0.x)), (any(vec4<bool>(false, true, false, true)) | all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)))) | (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, 0u), _wgslsmith_mod_u32(56417u, u_input.c)) != _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u), 28238u)));
    let var_3 = !(!(!select(vec4<bool>(false, false, true, var_2.c), !vec4<bool>(true, false, true, var_2.c), var_2.c)));
    var_2 = Struct_3(-(u_input.a.x & countOneBits(_wgslsmith_mult_i32(21315i, var_1.x))), _wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(618f, 1591f, -1591f, var_2.b.x), var_2.b, vec4<bool>(var_3.x, false, var_3.x, true))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.x))))) < var_0.x);
    return Struct_3(-15671i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -606f)), -1511f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(round(-126f)))), var_0.x)), !(var_2.c | select(all(vec2<bool>(true, true)), select(var_2.c, false, var_2.c), all(var_3))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_4 {
    global0 = array<vec3<i32>, 32>();
    global0 = array<vec3<i32>, 32>();
    var var_0 = func_2();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(769f)))), _wgslsmith_f_op_f32(-595f + _wgslsmith_f_op_f32(-var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.b.x)))));
    let var_2 = 1u << (max(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, u_input.c), u_input.b), vec3<u32>(19998u, 0u, 1u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 109531u, u_input.b.x), vec3<u32>(0u, arg_2, u_input.b.x))), arg_2) % 32u);
    return Struct_4(vec2<bool>(arg_1, func_2().c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~(~u_input.a.x)) != ~2147483647i, _wgslsmith_f_op_f32(step(1308f, _wgslsmith_f_op_f32(min(149f, _wgslsmith_f_op_f32(f32(-1f) * -1785f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1033f + 1162f), -794f))), u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(select(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -28430i), u_input.a), vec2<i32>(u_input.a.x, -2147483647i), !vec2<bool>(var_0.a.x, var_0.a.x)), u_input.a), _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(70510u, 30897u, 0u, 0u))), select(~vec4<u32>(u_input.b.x, u_input.c, 4294967295u, u_input.b.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(63131u, 0u, 1u, u_input.c), firstLeadingBit(vec4<u32>(1u, 0u, 1u, u_input.b.x))), var_0.a.x)), abs(u_input.b.x), -min(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, 2147483647i)), u_input.a.x), select(firstLeadingBit(-u_input.a.x), u_input.a.x ^ ~680i, all(vec3<bool>(var_0.a.x, var_0.a.x, true)) | var_0.a.x)));
    global0 = array<vec3<i32>, 32>();
    var_0 = func_1(false, true, _wgslsmith_add_u32(4294967295u, countOneBits(u_input.c)));
    var var_2 = firstLeadingBit(var_1.a.x | -(~(-var_1.e)));
    global0 = array<vec3<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(var_1.b.x, max(~var_1.b.x, reverseBits(var_1.b.x))), _wgslsmith_sub_u32(4294967295u, abs(~u_input.b.x)), ~select(4294967295u, var_1.c, true), _wgslsmith_mult_u32(u_input.c, ~max(var_1.c, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-899f, -1925f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-167f, -1882f)))), _wgslsmith_f_op_f32(-725f - -513f)), _wgslsmith_f_op_f32(round(-1115f))), vec4<i32>(reverseBits(_wgslsmith_div_i32(0i, -16725i) | ~var_1.e), var_1.a.x, u_input.a.x, ~func_2().a), countOneBits(_wgslsmith_div_u32(4890u, 1u)), _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(~firstTrailingBit(~0u), 32u)], vec3<i32>(~(~var_1.a.x), -(i32(-1i) * -40144i), 2147483647i)));
}

