struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(59222u, 51447i, false, vec3<i32>(3214i, 2147483647i, 12256i), vec3<u32>(66203u, 4294967295u, 4294967295u));

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(19396u, -1i, true, vec3<i32>(22712i, 0i, -8526i), vec3<u32>(32420u, 1u, 1u)), Struct_1(38931u, -1i, true, vec3<i32>(2147483647i, -19837i, i32(-2147483648)), vec3<u32>(0u, 32455u, 30066u)), Struct_1(37569u, 0i, true, vec3<i32>(-1612i, 26038i, -72962i), vec3<u32>(1u, 44911u, 43169u)), Struct_1(0u, 21953i, false, vec3<i32>(-3360i, 1i, 1i), vec3<u32>(30423u, 4294967295u, 1u)), Struct_1(11550u, 45245i, false, vec3<i32>(-1i, -62403i, 0i), vec3<u32>(24686u, 1u, 1u)), Struct_1(4820u, -45415i, true, vec3<i32>(-63225i, 29817i, 2147483647i), vec3<u32>(0u, 19413u, 28228u)), Struct_1(34303u, -27523i, false, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 29501u)), Struct_1(17141u, 38088i, false, vec3<i32>(-47775i, 1i, 2147483647i), vec3<u32>(1u, 0u, 4294967295u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = all(vec4<bool>(all(!vec4<bool>(global0.c, global0.c, false, false)), true, true, false));
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(global0.d << (vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 4294967295u), global0.e.x, 36598u) % vec3<u32>(32u)), -global0.d), vec3<i32>(6126i, -36249i, -_wgslsmith_sub_i32(u_input.d.x, 2147483647i)));
    global2 = array<Struct_1, 8>();
    let var_2 = Struct_2(vec4<u32>(global0.e.x, _wgslsmith_dot_vec2_u32(global0.e.zx, vec2<u32>(1u, u_input.c.x)), _wgslsmith_clamp_u32(1u, ~4294967295u & ~u_input.c.x, 1u), ~u_input.c.x), _wgslsmith_div_u32(_wgslsmith_mult_u32((global0.a >> (4294967295u % 32u)) | ~u_input.c.x, _wgslsmith_add_u32(global0.e.x, firstLeadingBit(global0.a))), u_input.c.x));
    let var_3 = firstLeadingBit(abs(vec3<i32>(_wgslsmith_add_i32(u_input.e, 29011i), global0.b | var_1.x, global0.d.x)) << (vec3<u32>(countOneBits(firstTrailingBit(global0.e.x)), 1u, ~35532u) % vec3<u32>(32u)));
    return vec4<u32>(11434u, var_2.a.x, u_input.c.x, 1u);
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-439f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2506f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, 549f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1712f)))))));
    global2 = array<Struct_1, 8>();
    let var_1 = Struct_2(vec4<u32>(max(_wgslsmith_mult_u32(u_input.c.x, 4294967295u), ~u_input.c.x), ~_wgslsmith_mod_u32(142002u, global0.e.x), global0.e.x, ~4294967295u) & (select(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u), func_3(vec3<f32>(1163f, 291f, -2141f)), vec4<bool>(false, false, global0.c, global0.c)) >> ((~vec4<u32>(global0.a, u_input.c.x, 4494u, 30724u) ^ select(vec4<u32>(global0.e.x, 59551u, u_input.c.x, u_input.c.x), vec4<u32>(10563u, 25216u, global0.a, 1u), vec4<bool>(false, false, true, false))) % vec4<u32>(32u))), _wgslsmith_mod_u32(0u, 1u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(-452f * 883f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(406f - -2210f)) + -775f)));
    let var_3 = var_2;
    return vec4<i32>(global0.b, ~_wgslsmith_div_i32(~(-1i), _wgslsmith_clamp_i32(global0.b, ~u_input.d.x, -2147483647i)), u_input.e, u_input.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2;
    global2 = array<Struct_1, 8>();
    let var_1 = func_2();
    var var_2 = vec2<i32>(abs(-103193i), global0.d.x);
    global2 = array<Struct_1, 8>();
    return ~min(~var_0.a.x, 1u);
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    return global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.x, global0.a), 8u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<bool>) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(arg_0.e.x), _wgslsmith_mod_u32(min(global0.a, u_input.c.x), 1u) ^ ~global0.a, _wgslsmith_sub_u32(arg_2, ~(40016u >> (arg_0.e.x % 32u)))), u_input.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2654f), _wgslsmith_div_f32(-1000f, 1171f))), -1000f, func_4(~vec3<u32>(47837u, arg_0.a, u_input.c.x)).c)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1307f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-358f)))), reverseBits(u_input.a), select(~vec3<u32>(4294967295u, 1u, 19440u) & vec3<u32>(_wgslsmith_add_u32(40684u, global0.e.x), _wgslsmith_clamp_u32(21141u, 52528u, 1u), ~25862u), vec3<u32>(4294967295u, 3868u, u_input.c.x), !vec3<bool>(arg_0.c, true, true)));
    global1 = arg_3.x;
    var var_0 = max(vec4<u32>(global0.a, 4294967295u, 0u, ~select(64303u, global0.a, false)), abs(vec4<u32>(arg_2, ~(~1u), ~reverseBits(global0.a), 6715u)));
    global2 = array<Struct_1, 8>();
    var var_1 = ~var_0.x < 1u;
    return Struct_2(_wgslsmith_add_vec4_u32(~vec4<u32>(firstTrailingBit(arg_0.e.x), 4294967295u, var_0.x ^ 1u, reverseBits(var_0.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2, arg_2, arg_0.a, 35171u), ~vec4<u32>(arg_2, 0u, 1u, arg_2)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, arg_2, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 54631u, 31430u, var_0.x), vec4<u32>(0u, arg_2, 0u, 5572u))) % vec4<u32>(32u))), _wgslsmith_mod_u32(reverseBits(arg_0.a), _wgslsmith_sub_u32(~_wgslsmith_div_u32(arg_0.a, 1u), ~70532u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(firstTrailingBit(global0.a), global0.d.x, global0.c, -vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, reverseBits(u_input.e), 1i), u_input.a.x, ~u_input.a.x), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(u_input.c), global0.e) | countOneBits(vec3<u32>(u_input.c.x, 4294967295u, global0.e.x)), firstLeadingBit(vec3<u32>(~63421u, max(21776u, 0u), 38603u))));
    var var_0 = -501f;
    let var_1 = true;
    let var_2 = ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.e.x, 0u, u_input.c.x, 3441u), vec4<u32>(23434u, 1u, 32598u, u_input.c.x)), ~max(vec4<u32>(u_input.c.x, 461u, 62334u, global0.a), vec4<u32>(u_input.c.x, 0u, 0u, global0.a))));
    var var_3 = Struct_2(var_2, ~_wgslsmith_mult_u32(4294967295u, reverseBits(var_2.x)));
    global1 = !(any(select(!vec3<bool>(var_1, global0.c, false), !vec3<bool>(global0.c, false, false), vec3<bool>(global0.c, global0.c, global0.c))) | (~3065u >= var_2.x));
    let var_4 = func_5(func_4(vec3<u32>(u_input.c.x, func_1(global2[_wgslsmith_index_u32(var_2.x, 8u)], vec2<bool>(true, global0.c), Struct_2(vec4<u32>(0u, var_3.a.x, 4294967295u, var_3.b), 4294967295u)), 0u) & ~vec3<u32>(global0.a, var_3.b, global0.e.x)), !vec4<bool>(!(u_input.e <= 30998i), var_1, any(vec2<bool>(true, global0.c)), abs(var_3.b) >= func_4(var_2.xwx).a), ~_wgslsmith_add_u32(65469u, var_3.a.x), select(vec4<bool>(u_input.c.x > _wgslsmith_dot_vec2_u32(var_2.yz, global0.e.yz), true, !(!var_1), all(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, global0.c, true, global0.c), vec4<bool>(global0.c, false, true, var_1), false), !vec4<bool>(false, true, false, global0.c)), select(select(vec4<bool>(var_1, var_1, global0.c, false), vec4<bool>(false, global0.c, false, global0.c), global0.c), vec4<bool>(true, false, false, true), any(vec3<bool>(false, global0.c, var_1))), select(vec4<bool>(true, true, global0.c, var_1), !vec4<bool>(global0.c, false, global0.c, var_1), global0.c)), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, false, var_1, true)), select(select(vec4<bool>(false, global0.c, var_1, true), vec4<bool>(var_1, true, var_1, true), var_1), !vec4<bool>(global0.c, true, true, var_1), !vec4<bool>(global0.c, global0.c, false, true)), any(!vec2<bool>(true, var_1)))));
    let var_5 = ~(~reverseBits(~121u));
    let var_6 = func_5(global2[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2175f, -240f, -1412f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(114f, -1160f, 626f))), true))))).x, 8u)], select(!(!(!vec4<bool>(true, var_1, false, global0.c))), select(!(!vec4<bool>(true, var_1, false, var_1)), select(vec4<bool>(true, true, global0.c, var_1), select(vec4<bool>(global0.c, true, true, true), vec4<bool>(false, false, var_1, false), vec4<bool>(var_1, true, true, true)), var_1), vec4<bool>(global0.c, global0.c, global0.c, !var_1)), global0.c), ~var_2.x, !(!(!select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(false, global0.c, false, global0.c), vec4<bool>(global0.c, false, false, global0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(311f)));
}

