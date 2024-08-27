struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~u_input.c;
    global1 = !select(!select(!vec4<bool>(true, true, global0.a, global0.a), vec4<bool>(true, true, global1.x, true), !vec4<bool>(true, global1.x, true, global0.a)), select(select(select(vec4<bool>(false, global1.x, global0.a, true), vec4<bool>(global1.x, false, true, true), vec4<bool>(false, global1.x, global1.x, global0.a)), select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(global1.x, global0.a, false, global0.a)), vec4<bool>(global1.x, global0.a, false, global0.a)), select(vec4<bool>(true, true, global0.a, global1.x), !vec4<bool>(false, global1.x, true, global1.x), !vec4<bool>(true, global1.x, true, false)), global0.a), select(!select(vec4<bool>(false, false, global0.a, global1.x), vec4<bool>(true, global0.a, false, global1.x), true), vec4<bool>(any(vec4<bool>(global1.x, true, false, global1.x)), false, false, true), true));
    let var_1 = Struct_3(u_input.e, Struct_1(!select(!global1.zw, vec2<bool>(true, global0.a), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) - _wgslsmith_f_op_f32(step(-761f, -1053f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, -1658f, -956f) - vec3<f32>(-2065f, -647f, 708f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, -1231f, -378f)))), vec4<i32>(-2147483647i, u_input.c, -35791i, -35917i)), Struct_2(vec4<bool>(select(global0.a, !global0.a, true), any(global1.wwy), global1.x, _wgslsmith_mod_i32(var_0, 71029i) != min(u_input.a, 19521i)), (-2147483647i << ((u_input.d >> (4294967295u % 32u)) % 32u)) ^ var_0, vec3<i32>(~35579i, ~(i32(-1i) * -1i), 777i)), vec3<i32>(abs(-(u_input.a ^ u_input.a)), -abs(-1i), 2147483647i));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = arg_1.d.x;
    var var_1 = arg_1.b.x;
    let var_2 = Struct_4(func_3());
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.b.x * arg_1.c.x))) + arg_1.b.x));
    let var_4 = var_2;
    return global1.wzz;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(select(select(vec4<bool>(all(global1.yx), func_3(), func_3(), all(vec3<bool>(arg_3.a.x, true, false))), vec4<bool>(func_2(true, Struct_1(arg_3.a.xw, vec2<f32>(-977f, -955f), vec3<f32>(-136f, 658f, 1886f), vec4<i32>(1i, -2147483647i, arg_3.b, 54759i)), u_input.e).x, !arg_3.a.x, all(arg_3.a), global0.a), !arg_3.a.x), !vec4<bool>(-105i < u_input.c, global0.a, arg_3.a.x & arg_3.a.x, arg_2.a.x), global1.x), _wgslsmith_dot_vec3_i32(select(select(reverseBits(arg_3.c), vec3<i32>(u_input.a, u_input.c, u_input.a), arg_3.a.x), vec3<i32>(arg_2.c.x, 1i, arg_2.b), true), select(vec3<i32>(~(-11854i), -64603i, arg_0 ^ 29569i), vec3<i32>(-9081i, arg_2.c.x, 49789i), !arg_3.a.xyx)), -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-37387i, -55i), arg_0, 1i), -arg_2.c ^ (vec3<i32>(-28737i, -2147483647i, 14966i) ^ arg_3.c)));
    let var_1 = var_0.c.xy;
    global0 = Struct_4(abs(33022i) > arg_2.b);
    global0 = Struct_4(false);
    var var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(reverseBits(u_input.e.yz), ~u_input.e.xx), _wgslsmith_mod_u32(~u_input.b, u_input.d)), _wgslsmith_add_vec3_u32(u_input.e, u_input.e), firstTrailingBit(~abs(u_input.e))), Struct_1(func_2(global0.a, Struct_1(!arg_2.a.xy, _wgslsmith_div_vec2_f32(vec2<f32>(210f, -354f), vec2<f32>(-231f, 555f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, -434f, 2120f)), ~vec4<i32>(-41202i, arg_3.b, -1i, u_input.a)), _wgslsmith_mult_vec3_u32(u_input.e, vec3<u32>(16040u, 1u, u_input.b))).xy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(544f, 1011f) * vec2<f32>(389f, -151f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, 972f, -611f)), vec4<i32>(arg_0, 61934i, 1i, 2147483647i) | ~select(vec4<i32>(-27942i, var_0.c.x, arg_2.c.x, var_1.x), vec4<i32>(var_0.c.x, -15637i, 16597i, arg_2.b), global1.x)), Struct_2(var_0.a, arg_0, vec3<i32>(1i, countOneBits(_wgslsmith_add_i32(2147483647i, 0i)), u_input.c | -16148i)), firstTrailingBit(vec3<i32>(abs(u_input.c ^ 2147483647i), firstLeadingBit(-32188i) & var_0.b, _wgslsmith_mult_i32(-1i, firstTrailingBit(-2147483647i)))));
    return Struct_1(arg_2.a.xy, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x)), var_2.b.c.x), 906f), vec3<f32>(var_2.b.c.x, var_2.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.c.x)) * _wgslsmith_f_op_f32(-1000f * var_2.b.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.b.x))))), vec4<i32>(-u_input.c, 2147483647i, min(24092i, ~_wgslsmith_mod_i32(var_2.c.b, -3569i)), max(abs(-1i) ^ arg_2.b, -8371i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = Struct_2(!select(!vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, true, true, !arg_1.x), all(vec3<bool>(true, global0.a, false)) == false), u_input.a, vec3<i32>(u_input.a, -27470i, _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 2147483647i), vec3<i32>(u_input.a, u_input.a, 0i))), vec3<i32>(1i, 1i, u_input.c))));
    var var_1 = func_4(_wgslsmith_mult_i32(u_input.c, -2147483647i >> (u_input.e.x % 32u)) << (~u_input.d % 32u), !(!any(func_2(global0.a, Struct_1(global1.zw, vec2<f32>(-1072f, -134f), arg_0, vec4<i32>(var_0.b, var_0.c.x, -27678i, u_input.a)), vec3<u32>(u_input.b, 0u, 39449u)))), var_0, Struct_2(!var_0.a, abs(-_wgslsmith_sub_i32(-1i, var_0.b)), var_0.c));
    return u_input.d;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.e.x, max(2335u, 0u)), 4294967295u), firstLeadingBit(~(~firstLeadingBit(arg_1))));
    global0 = Struct_4(any(select(select(vec4<bool>(global0.a, global1.x, false, global1.x), !vec4<bool>(false, false, global0.a, true), false), select(vec4<bool>(global0.a, true, global1.x, false), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, global0.a, true, false), vec4<bool>(false, true, global0.a, global1.x)), global1.x), vec4<bool>(global0.a, all(vec2<bool>(global0.a, true)), !global0.a, global1.x))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.d, arg_1, _wgslsmith_mult_u32(u_input.e.x & 4294967295u, _wgslsmith_mult_u32(14381u, u_input.d)), arg_1), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(select(vec4<u32>(arg_1, 4294967295u, arg_1, u_input.d), vec4<u32>(arg_1, 88835u, u_input.e.x, arg_1), global1.x)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_1, 28339u, 32597u, arg_1), vec4<u32>(arg_1, u_input.b, 35034u, arg_1)), ~vec4<u32>(62694u, 4294967295u, 40655u, u_input.b)), (vec4<u32>(u_input.e.x, 13318u, arg_1, u_input.d) | vec4<u32>(u_input.d, 1u, 74142u, 47749u)) << ((vec4<u32>(0u, 4294967295u, 1u, arg_1) << (vec4<u32>(0u, 1u, 1u, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, arg_1), arg_1, _wgslsmith_mult_u32(1u, arg_1), arg_1) << (vec4<u32>(u_input.d, _wgslsmith_div_u32(1u, arg_1), 1u, ~u_input.e.x) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(3049u, u_input.e.x, arg_1, u_input.e.x)), vec4<u32>(0u, 27426u, u_input.b, 64858u)) << (~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.d, arg_1, u_input.d), vec4<u32>(arg_1, 0u, 87719u, arg_1), vec4<u32>(6992u, 0u, u_input.e.x, 33443u)), vec4<u32>(u_input.d, 34199u, 1u, 78641u) ^ vec4<u32>(28893u, arg_1, arg_1, 32038u)) % vec4<u32>(32u)));
    let var_2 = global1.yy;
    var var_3 = global1.x;
    return arg_0;
}

fn func_6(arg_0: vec4<i32>) -> Struct_4 {
    global0 = Struct_4(global1.x);
    global0 = Struct_4(global0.a);
    global0 = Struct_4(func_2(any(!(!vec4<bool>(global1.x, global0.a, true, global0.a))), Struct_1(global1.xw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-272f, 1157f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 449f))), vec3<f32>(1f, 1f, 1f), -vec4<i32>(arg_0.x, -62545i, -56138i, 1i)), vec3<u32>(firstTrailingBit(1u), 9313u, 1u)).x);
    global1 = !(!(!(!(!vec4<bool>(global0.a, global0.a, global0.a, false)))));
    global1 = !(!vec4<bool>(global1.x, !global0.a, abs(arg_0.x) != 1i, global0.a));
    return Struct_4(global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_clamp_vec4_i32(func_5(abs(reverseBits(vec4<i32>(u_input.c, -2147483647i, u_input.a, 432i))), func_1(vec3<f32>(-1669f, -668f, 182f), vec3<bool>(global0.a, true, global0.a))), vec4<i32>(1i, -5413i, _wgslsmith_sub_i32(-1i, u_input.c), u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(4762i, u_input.a, u_input.c, -58720i), vec4<i32>(firstTrailingBit(2147483647i), 2147483647i, -1i, ~u_input.c))));
    global1 = select(vec4<bool>(true & !(!global1.x), false, global1.x, all(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)) | true), vec4<bool>(!all(select(global1.zxx, vec3<bool>(true, var_0.a, var_0.a), global1.yyw)), true, 59683u >= u_input.d, any(select(vec4<bool>(global1.x, var_0.a, false, true), !vec4<bool>(true, global0.a, true, var_0.a), var_0.a | global1.x))), var_0.a && true);
    var var_1 = 1i;
    var_1 = -(~(i32(-1i) * -14764i)) << (~(2355u << (_wgslsmith_dot_vec4_u32(vec4<u32>(14177u, u_input.e.x, u_input.b, u_input.e.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, 57074u, 1u), vec4<u32>(u_input.b, u_input.d, 26355u, 0u))) % 32u)) % 32u);
    let var_2 = Struct_3(~select(min(u_input.e, vec3<u32>(u_input.b, 4294967295u, 52166u)) ^ ~vec3<u32>(0u, u_input.d, 4294967295u), ~(~vec3<u32>(u_input.d, 0u, u_input.e.x)), select(global1.wwz, vec3<bool>(false, global1.x, false), true)), func_4(u_input.c, false, Struct_2(!vec4<bool>(true, var_0.a, true, var_0.a), -57058i ^ u_input.c, ~(~vec3<i32>(-7881i, -13530i, 0i))), Struct_2(!(!vec4<bool>(global0.a, true, var_0.a, var_0.a)), u_input.c, -(vec3<i32>(1i, 22428i, u_input.a) & vec3<i32>(u_input.a, 2147483647i, -50089i)))), Struct_2(!vec4<bool>(global1.x, any(vec4<bool>(global0.a, var_0.a, true, true)), global0.a, false != var_0.a), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.c), -u_input.a), ~(vec3<i32>(-3195i, 1i, u_input.a) ^ ~vec3<i32>(-29035i, -5977i, u_input.a))), ~(func_5(vec4<i32>(u_input.c, 23990i, -1i, u_input.c) ^ vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c), _wgslsmith_mod_u32(31912u, u_input.b)).xzy >> (abs(u_input.e | u_input.e) % vec3<u32>(32u))));
    let var_3 = func_4(~u_input.a, false, var_2.c, var_2.c).a;
    let var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, u_input.e.x, u_input.d, u_input.d) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, 4294967295u, u_input.d, var_2.a.x), vec4<u32>(var_2.a.x, u_input.d, 66595u, var_2.a.x), vec4<u32>(var_2.a.x, 1048u, var_2.a.x, 4294967295u)) % vec4<u32>(32u))), reverseBits(abs(vec4<u32>(1u, 0u, var_2.a.x, 44046u)))), vec4<u32>(_wgslsmith_mult_u32(var_2.a.x | ~var_2.a.x, ~u_input.e.x ^ 23002u), var_2.a.x, 0u, max(~1u, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.d.wwy);
}

