struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    global0 = array<vec4<f32>, 4>();
    var var_0 = 1i;
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    var var_1 = all(select(select(vec3<bool>(u_input.b < 46183u, true, any(vec4<bool>(true, false, arg_1.x, arg_1.x))), vec3<bool>(!arg_1.x, true, !arg_1.x), select(!arg_1, select(arg_1, arg_1, arg_1), arg_1)), vec3<bool>(select(false, arg_1.x, all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), true, true), arg_1));
    return u_input.c;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec2<i32> {
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    let var_0 = Struct_2(Struct_1(-262f, firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1098f, 849f, -641f)))), -1000f, countOneBits(~(~vec3<u32>(u_input.a, arg_2, 4294967295u)))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2135f)) - _wgslsmith_f_op_f32(round(1596f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f * _wgslsmith_f_op_f32(max(-469f, 844f))) - 1000f), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1750f, 718f, 622f) + vec3<f32>(2352f, -1391f, 1187f))))), 960f, ~(vec3<u32>(0u, 78852u, 19204u) >> (vec3<u32>(25115u, arg_2, u_input.b) % vec3<u32>(32u))) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 14381u, u_input.b), vec3<u32>(11226u, u_input.a, 0u))), 0u << (~4294967295u % 32u));
    global0 = array<vec4<f32>, 4>();
    return vec2<i32>(-(~(-_wgslsmith_mult_i32(-71392i, 24133i))), _wgslsmith_add_i32(arg_1.a.x, -_wgslsmith_mod_i32(arg_1.a.x, -1i) << (4294967295u % 32u)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> Struct_3 {
    global0 = array<vec4<f32>, 4>();
    let var_0 = Struct_4(Struct_3(-(arg_0.xz & vec2<i32>(arg_0.x, arg_1.b.b))), Struct_1(-228f, arg_1.b.b, arg_1.b.c, 175f, arg_1.b.e), Struct_3(~arg_1.a.a & ((vec2<i32>(arg_1.c.a.x, arg_0.x) >> (vec2<u32>(94077u, arg_2) % vec2<u32>(32u))) | (arg_0.xw & vec2<i32>(arg_0.x, -2147483647i)))));
    var var_1 = Struct_3(reverseBits(firstLeadingBit(firstTrailingBit(vec2<i32>(1i, u_input.c)))) ^ _wgslsmith_div_vec2_i32(-arg_0.xy >> (_wgslsmith_div_vec2_u32(var_0.b.e.xx, vec2<u32>(2690u, var_0.b.e.x)) % vec2<u32>(32u)), min(~arg_1.a.a, vec2<i32>(1i, u_input.c))));
    let var_2 = countOneBits(~(~firstLeadingBit(-1i))) | _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, -3433i)), -vec2<i32>(arg_1.a.a.x, -42240i)), var_1.a), ~_wgslsmith_mod_vec2_i32(reverseBits(var_0.c.a), -vec2<i32>(-2147483647i, u_input.c)));
    let var_3 = vec2<bool>(false, true);
    return Struct_3(var_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_3) -> Struct_5 {
    var var_0 = arg_1.x;
    let var_1 = any(vec4<bool>(arg_2, any(!(!vec4<bool>(false, false, arg_2, false))), all(select(vec2<bool>(false, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2), vec2<bool>(false, arg_2))), all(!select(vec2<bool>(arg_2, true), vec2<bool>(true, arg_2), arg_2))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.c.x), -(~u_input.c), arg_0.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + 1331f)), -843f)), abs(arg_0.e)), ~max(_wgslsmith_div_u32(arg_0.e.x, ~u_input.b), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(50702u, 0u, arg_0.e.x), arg_0.e))), arg_1.x, arg_0, countOneBits(_wgslsmith_div_u32(arg_0.e.x, u_input.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.x, arg_0.c.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -1784f, 159f, -256f), global0[_wgslsmith_index_u32(arg_0.e.x, 4u)])) + _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(83413u, 4u)] - global0[_wgslsmith_index_u32(1u, 4u)]))))));
    var var_4 = Struct_2(arg_0, arg_0.e.x, _wgslsmith_f_op_f32(-var_3.x), var_2.d, select(4294967295u, ~12552u, all(vec2<bool>(true, true))));
    return Struct_5(arg_0.e, vec4<bool>(true | (var_4.a.e.x != (1u | var_2.a.e.x)), arg_2, var_1, false), select(~var_2.d.e, abs(vec3<u32>(min(var_2.e, arg_0.e.x), var_2.b, ~61082u)), true), select(select(!select(vec3<bool>(true, false, var_1), vec3<bool>(arg_2, var_1, true), arg_2), !(!vec3<bool>(arg_2, arg_2, true)), vec3<bool>(arg_2, true, true)), vec3<bool>(var_1, true, !any(vec3<bool>(false, false, true))), all(!vec4<bool>(true, arg_2, arg_2, var_1))), !all(select(vec4<bool>(true, arg_2, true, false), vec4<bool>(arg_2, arg_2, true, arg_2), false)) & arg_2);
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = vec4<i32>(-2147483647i, (u_input.c >> (8968u % 32u)) | _wgslsmith_mult_i32(-11787i, u_input.c), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, 2147483647i, u_input.c)), vec3<i32>(7830i, 30563i, u_input.c) | vec3<i32>(u_input.c, u_input.c, u_input.c)), 1i, u_input.c | 1i), u_input.c);
    let var_1 = ~var_0.x;
    global0 = array<vec4<f32>, 4>();
    let var_2 = true;
    var var_3 = func_5(Struct_1(1f, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.c), reverseBits(var_0.zz)), vec2<i32>(_wgslsmith_mod_i32(var_1, var_1), var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 618f)) - _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(arg_0.x, 1053f, 655f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1466f)) + _wgslsmith_f_op_f32(ceil(-130f)))), firstLeadingBit(vec3<u32>(u_input.a, reverseBits(u_input.a), 4294967295u))), arg_0.yx, false, func_4(vec4<i32>(_wgslsmith_div_i32(-u_input.c, ~0i), var_0.x, abs(1i), ~func_2(arg_0.x, vec3<bool>(var_2, var_2, true))), Struct_4(Struct_3(func_3(vec3<bool>(false, false, var_2), Struct_3(vec2<i32>(var_1, 20225i)), 8744u)), Struct_1(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), 1i, vec3<f32>(arg_0.x, arg_0.x, -2627f), arg_0.x, vec3<u32>(u_input.b, 54667u, u_input.b)), Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(var_1, -17684i)))), abs(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 10261u), vec2<u32>(82343u, 4294967295u)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(-128f, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(817f)) * _wgslsmith_div_f32(1000f, 464f))))));
    return func_5(Struct_1(arg_0.x, u_input.c, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(622f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -529f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(ceil(arg_0.x))))), _wgslsmith_mult_vec3_u32(var_3.c, var_3.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.xx)))), any(vec3<bool>(all(vec2<bool>(var_2, true)), true, var_2)), Struct_3(vec2<i32>(~(-36238i), 18695i)));
}

fn func_6(arg_0: f32, arg_1: Struct_5) -> Struct_5 {
    let var_0 = -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, -2147483647i)), select(func_4(_wgslsmith_add_vec4_i32(vec4<i32>(33336i, -3519i, -4273i, u_input.c), vec4<i32>(u_input.c, -28285i, 40673i, u_input.c)), Struct_4(Struct_3(vec2<i32>(0i, 27882i)), Struct_1(arg_0, 1i, vec3<f32>(719f, -1282f, 1000f), arg_0, vec3<u32>(1u, arg_1.c.x, arg_1.a.x)), Struct_3(vec2<i32>(u_input.c, u_input.c))), ~8403u, -1842f).a, (vec2<i32>(u_input.c, u_input.c) >> (arg_1.a.xx % vec2<u32>(32u))) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), !select(vec2<bool>(true, arg_1.d.x), arg_1.d.zy, vec2<bool>(true, arg_1.e))));
    let var_1 = var_0;
    let var_2 = arg_0;
    var var_3 = vec2<bool>(true, (func_3(arg_1.d, func_4(vec4<i32>(20308i, u_input.c, 2147483647i, 1i), Struct_4(Struct_3(vec2<i32>(-31379i, 8053i)), Struct_1(-1518f, 1i, vec3<f32>(var_2, 1000f, 180f), -1000f, arg_1.a), Struct_3(vec2<i32>(0i, var_0))), 4294967295u, -1517f), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.x, u_input.b, 1u), arg_1.a)).x ^ u_input.c) <= 0i);
    var_3 = select(arg_1.b.xz, func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2666f)), ~u_input.c | func_2(1242f, arg_1.b.xxz), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, arg_0, 1000f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-455f, var_2, -1717f)))), -1000f, ~_wgslsmith_sub_vec3_u32(arg_1.c, vec3<u32>(arg_1.c.x, u_input.b, 0u))), vec2<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-681f + var_2), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(arg_0 + var_2))), (_wgslsmith_f_op_f32(-var_2) >= _wgslsmith_f_op_f32(-var_2)) || arg_1.b.x, Struct_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, var_0), vec2<i32>(-15506i, -33922i)))).b.ww, select(var_3.x, !(true || any(arg_1.b)), !all(!vec4<bool>(var_3.x, false, false, true))));
    return func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1350f, var_2, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1428f - _wgslsmith_f_op_f32(f32(-1f) * -1416f)) + _wgslsmith_f_op_f32(439f - 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(abs(-118f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-488f, 1261f)), -1315f);
    var var_1 = func_6(_wgslsmith_f_op_f32(-var_0.x), func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1942f * -320f)), 350f, var_0.x)));
    var_1 = func_1(_wgslsmith_div_vec3_f32(var_0.www, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yyx))));
    let var_2 = Struct_4(Struct_3(min(vec2<i32>(-27325i, abs(u_input.c)), -vec2<i32>(u_input.c, -63232i))), Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), (22519i ^ (u_input.c << (u_input.b % 32u))) | u_input.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1040f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-350f + var_0.x))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), true))), -103f, ~((vec3<u32>(0u, 61518u, var_1.c.x) ^ vec3<u32>(var_1.c.x, u_input.b, 4294967295u)) << (~vec3<u32>(var_1.a.x, 11859u, var_1.c.x) % vec3<u32>(32u)))), func_4(firstLeadingBit(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(1i, u_input.c, -23182i, u_input.c)))), Struct_4(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(41483i, -23375i, u_input.c, u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), Struct_4(Struct_3(vec2<i32>(2147483647i, 3461i)), Struct_1(564f, u_input.c, var_0.yxx, var_0.x, vec3<u32>(u_input.b, 0u, 1u)), Struct_3(vec2<i32>(-11324i, -35658i))), ~u_input.b, _wgslsmith_f_op_f32(ceil(-220f))), Struct_1(var_0.x, ~(-3279i), vec3<f32>(var_0.x, 1479f, var_0.x), 1144f, var_1.a), func_4(firstTrailingBit(vec4<i32>(-1i, u_input.c, 1i, u_input.c)), Struct_4(Struct_3(vec2<i32>(2147483647i, 0i)), Struct_1(-1027f, u_input.c, vec3<f32>(527f, var_0.x, var_0.x), var_0.x, vec3<u32>(55715u, u_input.a, u_input.b)), Struct_3(vec2<i32>(u_input.c, -6244i))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(46976u, 29301u)), -151f)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_2.b.e.x, 4u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0, global0[_wgslsmith_index_u32(4294967295u, 4u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_1.c.x, 4u)])))));
    var var_4 = vec3<i32>(var_2.c.a.x, u_input.c, -firstLeadingBit(var_2.a.a.x));
    let var_5 = -(~(~var_4.x));
    var var_6 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, var_4.x, var_5), vec4<i32>(2147483647i, var_5, -2147483647i, var_2.a.a.x)), reverseBits(vec4<i32>(u_input.c, var_5, -1i, var_2.b.b)), func_5(Struct_1(var_3.x, -4617i, var_2.b.c, var_3.x, vec3<u32>(var_2.b.e.x, var_1.a.x, var_1.a.x)), var_2.b.c.yz, true, Struct_3(var_4.yy)).b), ~(~vec4<i32>(1i, 20773i, 1i, -7422i))), vec4<i32>(var_2.a.a.x, min(~1i, -24158i), _wgslsmith_mult_i32(-36703i >> (var_2.b.e.x % 32u), _wgslsmith_add_i32(-38471i, var_4.x)), var_4.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(37208i, var_2.b.b, var_5, var_2.b.b), vec4<i32>(var_2.a.a.x, u_input.c, u_input.c, 35178i), vec4<i32>(var_4.x, var_5, var_2.c.a.x, -74632i)) ^ -(~vec4<i32>(var_4.x, u_input.c, -15199i, -13705i))), firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-170i, -74328i, 52460i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -665i, var_4.x, 6141i), vec4<i32>(var_5, u_input.c, var_5, -14468i), vec4<i32>(0i, 1i, 1i, u_input.c))), max(vec4<i32>(var_2.a.a.x, 31314i, -47455i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_4.x, -1i, -2147483647i), vec4<i32>(var_5, 29802i, 1i, var_2.c.a.x))))), min(-reverseBits(abs(vec4<i32>(var_2.c.a.x, -2147483647i, var_2.c.a.x, var_2.a.a.x))), ~max(-vec4<i32>(-14594i, -36167i, -3645i, var_5), ~vec4<i32>(var_2.b.b, -13121i, 36135i, var_4.x))));
    var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(var_2.b.e.x, 4u)], vec4<f32>(1048f, -114f, var_0.x, -204f)))), vec4<f32>(_wgslsmith_f_op_f32(var_3.x - var_0.x), _wgslsmith_f_op_f32(sign(870f)), _wgslsmith_f_op_f32(select(var_2.b.c.x, var_2.b.c.x, false)), _wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_2.b.d, -1000f, 374f), var_0), global0[_wgslsmith_index_u32(~u_input.a, 4u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, var_3.x, _wgslsmith_f_op_f32(-var_0.x), 936f)))), ~(vec3<i32>(_wgslsmith_sub_i32(23580i, 1i), _wgslsmith_add_i32(var_2.a.a.x, 28918i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_6.x, var_4.x, u_input.c, 0i), vec4<i32>(-33729i, -14200i, 0i, -2525i))) & select(~vec3<i32>(var_6.x, var_6.x, u_input.c), vec3<i32>(-1i, var_5, -10342i), select(vec3<bool>(var_1.e, var_1.e, false), vec3<bool>(true, var_1.b.x, true), var_1.d))), select(min(select(vec2<u32>(var_1.c.x, var_2.b.e.x), var_1.a.xz, var_1.d.x), var_2.b.e.yy >> (vec2<u32>(var_1.a.x, 17035u) % vec2<u32>(32u))), var_2.b.e.yy, !all(var_1.b)) ^ vec2<u32>(func_5(var_2.b, vec2<f32>(-1000f, var_3.x), all(var_1.b), var_2.c).c.x, 1u), _wgslsmith_f_op_f32(var_0.x * var_3.x), var_4.x);
}

