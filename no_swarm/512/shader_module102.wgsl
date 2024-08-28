struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 29>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2)))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -909f);
    var var_1 = Struct_1(arg_0.x, select(vec4<bool>(arg_1, arg_1, !arg_1, any(vec3<bool>(true, arg_1, arg_1))), vec4<bool>((false && arg_1) | false, true, arg_1, arg_1), arg_1));
    var var_2 = vec3<i32>(u_input.b, u_input.c.x, -2147483647i);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(110621u, u_input.a), 29u)];
    return -277f;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    global0 = array<Struct_4, 29>();
    var var_0 = Struct_3(vec3<bool>(!(all(vec3<bool>(arg_2.b.b.x, true, arg_2.b.b.x)) || any(arg_2.a.b.xyx)), any(!vec4<bool>(true, false, arg_2.b.b.x, arg_2.b.b.x)) & all(vec2<bool>(arg_2.a.b.x, arg_2.b.b.x)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, -457f)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_2.a.a), vec2<f32>(1000f, 1168f), arg_2.b.b.xy))))))), arg_2.a.b.zx, vec3<i32>(_wgslsmith_mod_i32(0i, 1i & u_input.b) & u_input.c.x, ~22013i, 0i), arg_2.a.b.xy);
    let var_1 = Struct_1(1175f, arg_2.a.b);
    let var_2 = arg_2.b;
    var var_3 = var_0.d.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) * arg_2.a.a), var_1.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = Struct_3(vec3<bool>(arg_1.b.x, true, true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(381f, -397f))))))), arg_1.b.xw, vec3<i32>(-1i) * -vec3<i32>(-2147483647i, arg_2, arg_2), arg_1.b.zw);
    var_0 = Struct_3(vec3<bool>(!select(var_0.b.x > var_0.b.x, arg_1.b.x, true), !(!(!var_0.a.x)), (_wgslsmith_div_f32(arg_1.a, var_0.b.x) != var_0.b.x) | any(!arg_1.b)), var_0.b, !func_3(699f, 0u, Struct_2(Struct_1(1637f, arg_1.b), Struct_1(852f, arg_1.b), vec4<u32>(1u, 1u, arg_0.x, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, arg_0.x, 2029u) % vec4<u32>(32u)))).b.zz, -countOneBits(vec3<i32>(-arg_2, 0i, arg_2)), var_0.a.yx);
    return var_0.a.x;
}

fn func_1() -> bool {
    var var_0 = func_4(select(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, u_input.a)), ~(vec2<u32>(49412u, u_input.a) << (vec2<u32>(37759u, u_input.a) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(18731u, u_input.a), abs(vec2<u32>(1u, u_input.a)))), vec2<u32>(~u_input.a, 1u >> (select(4294967295u, u_input.a, true) % 32u)), !(true && any(vec4<bool>(true, true, true, true)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-512f, -481f, -959f, -1714f), vec4<f32>(279f, -1776f, -212f, 1276f)), true, 388f)) + 874f), 39616u, Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(482f)), vec4<bool>(true, false, false, false)), Struct_1(-396f, select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_mod_vec4_u32(vec4<u32>(16008u, u_input.a, 4294967295u, 0u) & vec4<u32>(39112u, 4294967295u, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u))))), -_wgslsmith_mult_i32(u_input.b, u_input.b));
    var var_1 = Struct_4(u_input.a, ~vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, firstLeadingBit(u_input.a), u_input.a)), -772f, Struct_3(!vec3<bool>(all(vec2<bool>(true, true)), true, -2147483647i > u_input.b), vec2<f32>(1f, 1f), select(!func_3(-1053f, u_input.a, Struct_2(Struct_1(386f, vec4<bool>(false, false, true, false)), Struct_1(1219f, vec4<bool>(false, false, true, true)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))).b.yw, vec2<bool>(true, true), select(func_3(-269f, 0u, Struct_2(Struct_1(-1160f, vec4<bool>(true, false, true, false)), Struct_1(1000f, vec4<bool>(true, false, false, true)), vec4<u32>(u_input.a, 1u, 1u, u_input.a))).b.yw, vec2<bool>(true, false), func_3(1186f, 1u, Struct_2(Struct_1(294f, vec4<bool>(true, true, false, false)), Struct_1(-557f, vec4<bool>(true, true, true, true)), vec4<u32>(55318u, u_input.a, 8198u, 1u))).b.yy)), ~(-(vec3<i32>(u_input.c.x, u_input.c.x, -55550i) >> (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u)))), vec2<bool>(true, select(u_input.a >= 57851u, true, any(vec2<bool>(true, true))))), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a) >> (abs(_wgslsmith_add_vec3_u32(vec3<u32>(30520u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 3206u))) % vec3<u32>(32u))));
    var_0 = false;
    let var_2 = 139f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, var_1.c, 365f)))))));
    return !any(select(var_1.d.a, var_1.d.a, var_1.d.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 29>();
    global0 = array<Struct_4, 29>();
    let var_0 = vec2<u32>(u_input.a, 33627u);
    var var_1 = Struct_3(vec3<bool>(select(func_1(), all(vec2<bool>(true, true)), true), !all(func_3(116f, u_input.a, Struct_2(Struct_1(-246f, vec4<bool>(false, false, true, false)), Struct_1(358f, vec4<bool>(true, false, true, true)), vec4<u32>(var_0.x, var_0.x, u_input.a, 144u))).b), all(func_3(-176f, ~0u, Struct_2(Struct_1(-979f, vec4<bool>(true, true, false, false)), Struct_1(1193f, vec4<bool>(true, false, true, true)), vec4<u32>(48695u, u_input.a, u_input.a, u_input.a))).b.xwx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-320f * -146f)), vec2<f32>(_wgslsmith_f_op_f32(abs(526f)), -1849f), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))))), vec2<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)), false | !(u_input.b != 1i)), -vec3<i32>(u_input.b, -1i, firstTrailingBit(0i)), select(!vec2<bool>(u_input.b == u_input.b, func_1()), vec2<bool>(u_input.c.x != (u_input.b ^ 0i), true), vec2<bool>(true, true)));
    global0 = array<Struct_4, 29>();
    let var_2 = abs(-abs(abs(vec4<i32>(14863i, u_input.c.x, var_1.d.x, 13574i) & vec4<i32>(-32572i, var_1.d.x, u_input.c.x, 2147483647i))));
    let var_3 = !vec3<bool>(var_1.c.x, false && func_4(~vec2<u32>(var_0.x, 1u), Struct_1(var_1.b.x, vec4<bool>(var_1.e.x, true, var_1.e.x, false)), _wgslsmith_clamp_i32(15627i, var_2.x, 0i)), true);
    var var_4 = func_3(1094f, u_input.a, Struct_2(func_3(_wgslsmith_f_op_f32(trunc(-998f)), var_0.x, Struct_2(func_3(var_1.b.x, var_0.x, Struct_2(Struct_1(-432f, vec4<bool>(false, var_3.x, true, true)), Struct_1(377f, vec4<bool>(false, false, false, var_3.x)), vec4<u32>(u_input.a, u_input.a, 1u, 24309u))), Struct_1(var_1.b.x, vec4<bool>(var_1.a.x, var_1.e.x, false, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 39659u)))), func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))), min(~u_input.a, _wgslsmith_div_u32(35456u, 58511u)), Struct_2(Struct_1(var_1.b.x, vec4<bool>(var_3.x, var_1.e.x, false, var_3.x)), func_3(-193f, u_input.a, Struct_2(Struct_1(var_1.b.x, vec4<bool>(var_3.x, var_3.x, var_1.a.x, true)), Struct_1(var_1.b.x, vec4<bool>(true, true, true, var_3.x)), vec4<u32>(u_input.a, 1u, var_0.x, var_0.x))), firstLeadingBit(vec4<u32>(1u, u_input.a, 0u, 34167u)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 44852u, 1u, var_0.x), vec4<u32>(u_input.a, 56005u, u_input.a, u_input.a)), ~vec4<u32>(30051u, 0u, 0u, 19008u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, u_input.a) | vec4<u32>(1u, 34915u, 1u, 1606u), vec4<u32>(var_0.x, 0u, 1u, u_input.a) << (vec4<u32>(u_input.a, var_0.x, var_0.x, 45157u) % vec4<u32>(32u))), ~min(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, 73963u, u_input.a)))));
    var var_5 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(-45037i, 2227i), _wgslsmith_mult_i32(max(1i, 0i), _wgslsmith_dot_vec2_i32(u_input.c, var_1.d.yx)), u_input.b), abs(reverseBits(-max(var_2, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(-1316f, ~min(~vec3<u32>(1u, 24488u, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 5884u, var_0.x), vec3<u32>(var_0.x, 0u, 13867u))));
}

