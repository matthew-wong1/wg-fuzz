struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, false);

var<private> global1: bool;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-44061i, true), Struct_1(i32(-2147483648), true), Struct_1(23150i, true), Struct_1(-22165i, false), Struct_1(1i, true), Struct_1(33807i, false), Struct_1(0i, true), Struct_1(-40941i, true), Struct_1(-32692i, false), Struct_1(56407i, false), Struct_1(0i, true), Struct_1(-29865i, false), Struct_1(68932i, true), Struct_1(0i, false));

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-1i, true), Struct_1(2147483647i, false));

var<private> global4: array<vec2<f32>, 14>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    global4 = array<vec2<f32>, 14>();
    global2 = array<Struct_1, 14>();
    var var_0 = vec3<i32>(-1i, min(u_input.e >> (9443u % 32u), -46729i), u_input.e);
    let var_1 = global3[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xx, vec2<u32>(10845u, 1u)), _wgslsmith_add_vec2_u32(u_input.c.wz, u_input.c.zz) << (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), select(~43702u, 1u, _wgslsmith_div_u32(abs(u_input.d), _wgslsmith_mult_u32(u_input.c.x, u_input.d)) != (u_input.a ^ 7789u))), 2u)];
    var var_2 = Struct_1(_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -_wgslsmith_mult_i32(u_input.b, -34338i)), true);
    return vec2<bool>(var_1.b, all(!select(vec4<bool>(true, global0.b, arg_0.x, false), vec4<bool>(false, true, false, true), select(vec4<bool>(arg_0.x, var_1.b, true, false), vec4<bool>(true, true, false, global0.b), vec4<bool>(false, var_1.b, true, false)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(global0.a, arg_2.x & all(func_3(arg_2.zyy)));
    global4 = array<vec2<f32>, 14>();
    let var_1 = arg_0;
    global2 = array<Struct_1, 14>();
    let var_2 = _wgslsmith_f_op_f32(803f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))))))));
    return Struct_1(_wgslsmith_mod_i32(arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, -var_0.a, -arg_3.a), _wgslsmith_add_vec3_i32(var_1.xwy, min(var_1.yzy, vec3<i32>(arg_0.x, 2147483647i, global0.a))))), all(arg_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> u32 {
    global1 = arg_0.b;
    let var_0 = arg_0;
    global2 = array<Struct_1, 14>();
    var var_1 = u_input.a ^ abs(15585u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-584f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + 549f), any(!vec4<bool>(global0.b, false, arg_0.b, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(999f)) * _wgslsmith_f_op_f32(-265f - -642f)))));
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(274u, u_input.d, _wgslsmith_mod_u32(arg_1.x & arg_1.x, u_input.a)), u_input.c.xxz);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = (select(~vec4<i32>(global0.a, arg_0, 49000i, 1i), select(~vec4<i32>(35296i, 26503i, global0.a, -8277i), ~vec4<i32>(1i, -50049i, arg_0, u_input.e), true), select(select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(global0.b, true, global0.b, true), global0.b), !vec4<bool>(false, global0.b, false, global0.b), false)) ^ vec4<i32>(-24056i, _wgslsmith_mod_i32(global0.a, 15339i) >> (~4294967295u % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, global0.a), vec2<i32>(17482i, global0.a)), _wgslsmith_mult_i32(0i, -1i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0, global0.a), vec3<i32>(1i, -44732i, u_input.e)))) >> (vec4<u32>(u_input.d, 58493u, ~func_4(func_2(vec4<i32>(46685i, 37795i, 2147483647i, arg_0), vec3<f32>(-716f, 276f, 400f), vec4<bool>(global0.b, true, global0.b, global0.b), Struct_1(2147483647i, false)), u_input.c.wxw, -vec4<i32>(u_input.e, arg_0, 42109i, 0i)), 11595u) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -100f))))));
    let var_2 = vec3<i32>(1i, 64465i, 2147483647i);
    global2 = array<Struct_1, 14>();
    let var_3 = global2[_wgslsmith_index_u32(1u, 14u)];
    return 22382u | u_input.c.x;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~(arg_1.x & ~_wgslsmith_add_u32(63164u, 16115u)));
    var var_1 = u_input.c.zz >> (_wgslsmith_mult_vec2_u32(vec2<u32>(30312u, ~_wgslsmith_sub_u32(1u, u_input.a)), ~arg_1.yy) % vec2<u32>(32u));
    var var_2 = Struct_1(u_input.b, true);
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, 2147483647i, 62833i, 0i), vec4<i32>(2147483647i, var_2.a, 0i, global0.a))), vec2<i32>(0i, -2147483647i)) | -16797i, false);
    var_0 = _wgslsmith_sub_u32(arg_0 >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.zz & arg_1.zx, u_input.c.xx, arg_1.zz ^ vec2<u32>(arg_0, 0u)), arg_1.zx) % 32u), ~_wgslsmith_sub_u32(~(~4294967295u), ~_wgslsmith_dot_vec3_u32(arg_1, arg_1)));
    return func_2(~vec4<i32>(abs(-45201i) ^ global0.a, u_input.b, _wgslsmith_mult_i32(1i, -2147483647i), firstTrailingBit(global0.a ^ -36240i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, 293f, -1598f))), vec4<bool>((~39401u <= _wgslsmith_dot_vec3_u32(arg_1, arg_1)) || true, true, select(true || !global0.b, var_2.b, func_2(min(vec4<i32>(var_2.a, 3928i, 2147483647i, 8282i), vec4<i32>(global0.a, 2147483647i, 21758i, var_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(741f, 1227f, -1259f) * vec3<f32>(-581f, 1804f, -558f)), vec4<bool>(true, global0.b, var_2.b, false), func_2(vec4<i32>(global0.a, global0.a, 40690i, var_2.a), vec3<f32>(-1247f, 141f, 1607f), vec4<bool>(true, var_2.b, false, global0.b), Struct_1(-24802i, global0.b))).b), true), Struct_1(var_2.a, true || all(vec2<bool>(var_2.b, global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, u_input.e, 73650i, 69330i) >> (vec4<u32>(u_input.d, 113479u, u_input.c.x, 53399u) % vec4<u32>(32u)), vec4<i32>(~46786i, -2147483647i, global0.a ^ u_input.e, -2147483647i)), ~(-(vec4<i32>(u_input.e, u_input.b, -2147483647i, 5652i) << (u_input.c % vec4<u32>(32u))))), !all(vec3<bool>(!global0.b, false, true)));
    let var_1 = abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xw, ~abs(vec2<u32>(u_input.a, 4294967295u))), u_input.c.wy));
    let var_2 = func_5(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.c.x | 1u)), vec2<u32>(~(~4294967295u), (u_input.d & 0u) << (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) % 32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(func_1(-22152i), u_input.a, u_input.d), select(u_input.c.zyw, vec3<u32>(1u, ~u_input.d, ~u_input.d), !select(vec3<bool>(false, false, true), vec3<bool>(var_0.b, global0.b, var_0.b), true))));
    global2 = array<Struct_1, 14>();
    let var_3 = !func_2(vec4<i32>(-1i) * -vec4<i32>(-46886i, global0.a, var_2.a, global0.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1267f, -619f, -1412f) - vec3<f32>(216f, 265f, 1183f)))), vec4<bool>(var_0.b, var_2.b, var_2.b || var_2.b, var_1 >= 4294967295u), func_5(~u_input.a, vec3<u32>(20032u, 13330u, 55099u))).b || var_2.b;
    var var_4 = Struct_1(abs(_wgslsmith_div_i32(-func_2(vec4<i32>(1i, var_2.a, u_input.e, global0.a), vec3<f32>(-740f, -213f, -100f), vec4<bool>(global0.b, global0.b, true, var_2.b), Struct_1(0i, true)).a, _wgslsmith_mod_i32(countOneBits(global0.a), -u_input.b))), global0.b);
    global3 = array<Struct_1, 2>();
    var_4 = Struct_1(45239i, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f - _wgslsmith_f_op_f32(trunc(-730f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1103f, -765f)))), u_input.c.xz << (u_input.c.yx % vec2<u32>(32u)), ~_wgslsmith_mult_u32(~var_1, _wgslsmith_sub_u32(u_input.c.x, var_1) | func_1(1i)), select(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, var_4.a), _wgslsmith_clamp_i32(var_0.a, global0.a, 2147483647i)), select(var_2.a, -global0.a, 56539u < var_1), _wgslsmith_add_i32(u_input.e, global0.a) & 1i), vec3<i32>(u_input.e << (1u % 32u), -20475i, _wgslsmith_add_i32(_wgslsmith_div_i32(40650i, 1i), firstTrailingBit(0i))), vec3<bool>(global0.b, true, all(vec4<bool>(false, false, global0.b, false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1205f, 193f, 720f, -473f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1107f, 1533f, 920f, 1231f)))))));
}

