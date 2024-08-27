struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(6195u, 51246u);

var<private> global1: array<Struct_2, 25>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global1 = array<Struct_2, 25>();
    global0 = vec2<u32>(_wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(global0.x, 1u)), u_input.b.x), 1u);
    global1 = array<Struct_2, 25>();
    let var_0 = Struct_4(4294967295u, global1[_wgslsmith_index_u32(~36745u, 25u)]);
    global0 = ~(~var_0.b.a.xz);
    return var_0.b.b;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_4(36023u, global1[_wgslsmith_index_u32(~arg_2, 25u)]);
    var_0 = Struct_4(_wgslsmith_mod_u32(countOneBits(arg_2), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_0.b.a, vec4<u32>(var_0.b.a.x, arg_2, u_input.b.x, global0.x)))), Struct_2(reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.b.a, vec4<u32>(26510u, var_0.b.a.x, 55082u, 24926u), vec4<u32>(u_input.b.x, var_0.a, 46277u, var_0.b.a.x)), ~var_0.b.a)), func_2(vec2<f32>(_wgslsmith_f_op_f32(-2690f * var_0.b.b.a.x), var_0.b.b.a.x), vec3<f32>(_wgslsmith_f_op_f32(557f - -930f), _wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_div_f32(var_0.b.b.a.x, var_0.b.b.a.x)), vec2<f32>(-954f, _wgslsmith_f_op_f32(172f * -2492f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = var_0.b.b.b;
    var var_2 = -443f;
    var_1 = var_0.b.b.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.b.a.x, var_0.b.b.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b.b.a.x * var_0.b.b.b), var_0.b.b.a.x, arg_1.e && true)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -913f)) * var_0.b.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.a.x)), arg_0, true, arg_1.d & any(vec4<bool>(var_0.b.b.e, all(vec4<bool>(var_0.b.b.e, false, var_0.b.b.e, arg_1.e)), var_0.b.a.x == global0.x, all(vec3<bool>(true, true, false)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = i32(-1i) * -1i;
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_mod_i32(arg_0.x, arg_0.x), -73623i | arg_2.c, -arg_2.c, _wgslsmith_clamp_i32(-15339i, -2147483647i, arg_3.c.c)), select(vec4<i32>(-31265i, 5053i, -329i, 0i) >> (~vec4<u32>(u_input.b.x, arg_3.b.a.x, global0.x, 46488u) % vec4<u32>(32u)), countOneBits(reverseBits(arg_0)), !arg_3.c.d)));
    let var_2 = 35079u >> (firstLeadingBit(arg_3.b.a.x) % 32u);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.c.a.x)) - func_3(u_input.a, arg_2, 1u).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - arg_3.c.a.x)))), Struct_2(arg_3.b.a & (_wgslsmith_clamp_vec4_u32(arg_3.b.a, arg_3.b.a, vec4<u32>(9363u, 4294967295u, 0u, 39004u)) & arg_3.b.a), func_3(arg_2.c, arg_3.b.b, global0.x)), arg_3.b.b, !arg_3.c.e, ~(-(~var_1.x)));
    var var_4 = func_3(arg_3.e, Struct_1(vec4<f32>(-1669f, var_3.a, var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-852f, -1254f)) + arg_2.b)), _wgslsmith_f_op_f32(207f - _wgslsmith_f_op_f32(1496f - -708f)), _wgslsmith_add_i32(var_1.x, arg_3.e), !(!(!arg_2.e)), var_3.c.e), u_input.b.x);
    return vec2<bool>(true, true);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    global1 = array<Struct_2, 25>();
    let var_0 = arg_1.a;
    global0 = countOneBits(~u_input.b.zy);
    var var_1 = _wgslsmith_f_op_f32(trunc(541f));
    let var_2 = select(select(vec2<bool>(arg_0, !all(vec4<bool>(true, false, true, arg_0))), func_4(abs(vec4<i32>(-21032i, 1i, arg_2.x, arg_1.b.c)), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 12155i, 2147483647i, -27602i), arg_2), vec4<i32>(-2147483647i, 5533i, arg_1.b.c, u_input.c.x), !vec4<bool>(false, true, false, arg_0)), func_3(-arg_1.b.c, func_2(arg_1.b.a.ww, arg_1.b.a.zyw, arg_1.b.a.xy, arg_1.b.a.x), var_0.x), Struct_3(_wgslsmith_f_op_f32(min(-2425f, -302f)), arg_1, Struct_1(vec4<f32>(-105f, arg_1.b.b, arg_1.b.a.x, 316f), -263f, arg_2.x, arg_0, true), true, ~arg_2.x)), !vec2<bool>(func_3(9207i, arg_1.b, 100606u).d, arg_1.b.d)), !(!(!(!vec2<bool>(true, arg_1.b.e)))), vec2<bool>(arg_1.b.e && !(true & arg_1.b.d), false));
    return ~firstTrailingBit(countOneBits(~4294967295u)) ^ ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2462u;
    var var_1 = Struct_2(vec4<u32>(~_wgslsmith_mod_u32(1u, func_1(true, Struct_2(vec4<u32>(44298u, 1u, 11672u, global0.x), Struct_1(vec4<f32>(2191f, 223f, 653f, -568f), 1617f, 38746i, false, true)), vec4<i32>(2147483647i, -16403i, -2147483647i, 1i))), _wgslsmith_clamp_u32(var_0, _wgslsmith_div_u32(~4294967295u, 39791u), _wgslsmith_add_u32(var_0, u_input.b.x) >> (~29881u % 32u)), abs(_wgslsmith_add_u32(global0.x, global0.x)) >> (32793u % 32u), 80489u), func_3(~(u_input.c.x | ~(-17804i)), func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(671f)), -2037f), func_3(_wgslsmith_mult_i32(-2147483647i, u_input.a), func_2(vec2<f32>(-413f, 670f), vec3<f32>(-391f, -1792f, 293f), vec2<f32>(-660f, 392f), -1635f), var_0).a.xyy, vec2<f32>(_wgslsmith_f_op_f32(-889f * 468f), -258f), _wgslsmith_f_op_f32(abs(-1101f))), _wgslsmith_dot_vec4_u32(countOneBits(min(vec4<u32>(global0.x, u_input.b.x, 13767u, u_input.b.x), vec4<u32>(u_input.b.x, var_0, global0.x, var_0))), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(30236u, global0.x), _wgslsmith_mult_u32(var_0, u_input.b.x), 20463u >> (u_input.b.x % 32u)))));
    let var_2 = ~(~(~(~(~6850u))));
    var_1 = Struct_2(countOneBits(var_1.a) | firstLeadingBit(vec4<u32>(1u, 10503u ^ global0.x, ~0u, _wgslsmith_sub_u32(var_2, u_input.b.x))), var_1.b);
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var_3 = Struct_2(~((var_3.a | select(var_3.a, vec4<u32>(var_2, 4294967295u, u_input.b.x, var_2), var_1.b.e)) >> (~_wgslsmith_div_vec4_u32(var_1.a, var_1.a) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, var_1.b.a.x, -608f, var_1.b.a.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(1049f, -478f, var_1.b.b, var_1.b.a.x), var_3.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1043f)), 1222f), -var_3.b.c, var_3.b.e, all(vec2<bool>(true, var_2 > var_2))));
    var var_4 = !select(select(!vec2<bool>(var_3.b.d, var_3.b.d), vec2<bool>(var_3.b.d, !var_1.b.e), select(vec2<bool>(true, var_1.b.d), vec2<bool>(var_3.b.e, var_3.b.e), !vec2<bool>(var_1.b.e, var_3.b.e))), !(!vec2<bool>(var_3.b.d, false)), var_3.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(42583u, ~select(vec2<i32>(2147483647i, _wgslsmith_add_i32(-1i, var_1.b.c)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.b.c, 27542i), vec2<i32>(1028i, u_input.c.x)), any(vec3<bool>(true, var_1.b.d, true))));
}

