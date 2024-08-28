struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: array<vec2<i32>, 18>;

var<private> global1: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> bool {
    var var_0 = -371f;
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = firstLeadingBit(reverseBits(u_input.e));
    let var_3 = max(vec2<i32>(u_input.d << (_wgslsmith_dot_vec3_u32(min(u_input.a, u_input.a), firstTrailingBit(u_input.a)) % 32u), -51600i), vec2<i32>(-7744i, _wgslsmith_add_i32((1i ^ u_input.b.x) << (~u_input.c % 32u), u_input.b.x)));
    var var_4 = Struct_3(~(-vec2<i32>(reverseBits(0i), ~3717i)), Struct_1(182f, -324f), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(917f)))), -289f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(180f)))), u_input.e));
    return true;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_4(Struct_3(~(~(global0[_wgslsmith_index_u32(14789u, 18u)] << (arg_1 % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x))), Struct_2(Struct_1(647f, _wgslsmith_f_op_f32(max(global1.x, 447f))), Struct_1(_wgslsmith_f_op_f32(select(-206f, global1.x, false)), _wgslsmith_f_op_f32(min(-601f, -1336f))), Struct_1(global1.x, _wgslsmith_f_op_f32(global1.x + 1000f)), 1u)), select(vec3<bool>(any(vec2<bool>(true, false)), true, !any(vec3<bool>(false, false, true))), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x + 1045f)))), _wgslsmith_f_op_f32(-global1.x)), -arg_0 >> ((1u >> (~(arg_1.x ^ 74650u) % 32u)) % 32u), Struct_3(vec2<i32>(_wgslsmith_sub_i32(-1i, max(arg_0, arg_0)), arg_0 & _wgslsmith_mod_i32(u_input.d, arg_0)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), -648f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-520f + -1340f) - global1.x)), Struct_2(Struct_1(-582f, global1.x), Struct_1(734f, _wgslsmith_div_f32(global1.x, global1.x)), Struct_1(_wgslsmith_f_op_f32(ceil(-952f)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_u32(62034u, 24335u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))), 1281f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.c.a * 700f)));
    let var_2 = Struct_5(vec2<bool>(~var_0.e.c.d != ~abs(var_0.a.c.d), abs(_wgslsmith_sub_u32(arg_1.x, u_input.c)) <= (_wgslsmith_mod_u32(1u, 17119u) >> ((6346u >> (arg_1.x % 32u)) % 32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, var_0.e.b.a, -957f, var_1.x), vec4<f32>(-270f, 910f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.x, var_0.a.c.a.b, -2023f) * vec4<f32>(-1000f, 826f, var_0.a.b.a, var_0.c.b))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(323f)) - _wgslsmith_f_op_f32(floor(var_1.x))), -1612f, 890f, -843f)));
    var var_3 = var_0.e;
    var var_4 = global0[_wgslsmith_index_u32(var_3.c.d, 18u)];
    return ~(~_wgslsmith_add_vec4_u32(vec4<u32>(27462u, 15348u, 44195u, 11186u), firstTrailingBit(vec4<u32>(var_3.c.d, u_input.a.x, var_3.c.d, var_0.a.c.d)))) >> ((reverseBits(select(vec4<u32>(var_0.a.c.d, 1u, 4067u, u_input.e), abs(vec4<u32>(0u, 2622u, var_3.c.d, arg_1.x)), vec4<bool>(false, var_0.b.x, true, true))) << (abs(~vec4<u32>(32694u, 0u, u_input.a.x, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_3(vec2<i32>(arg_2.x, arg_2.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(290f))))), global1.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * -228f), global1.x))), Struct_1(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(481f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f + 277f) * _wgslsmith_f_op_f32(abs(global1.x))), -197f), arg_1.x));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(var_0.c.c.a + 668f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + -782f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + var_0.b.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-725f)), _wgslsmith_div_f32(var_0.b.b, 216f))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(343f, -250f) * _wgslsmith_f_op_f32(step(-994f, 664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(-1315f * var_0.b.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-864f + -1216f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.c.c.b, global1.x, true)))))) - -202f));
    let var_1 = abs(u_input.b.x);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global1.x + var_0.c.b.b), var_0.b.b, var_0.b.a))));
    return !(!(!vec2<bool>(any(vec3<bool>(false, true, true)), true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_3(vec2<i32>(-1i, -(~u_input.d) << (u_input.c % 32u)), arg_0.c.a, arg_0.c);
    var var_1 = Struct_2(var_0.b, var_0.b, arg_0.c.a, ~(~min(1u, 32016u)));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1575f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-486f, 212f, arg_2.x)) - _wgslsmith_f_op_f32(ceil(-559f)))), -1108f));
    var var_2 = vec4<bool>(all(arg_2), arg_2.x, arg_2.x, !arg_2.x);
    let var_3 = !var_2.x;
    return 31183u;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = 49682u;
    var var_1 = select(select(vec4<bool>(!select(false, true, true), any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)), true), vec4<bool>(any(vec3<bool>(false, false, false)), select(true, all(vec4<bool>(true, false, false, false)), true), true, func_2()), !(_wgslsmith_dot_vec2_i32(u_input.b, global0[_wgslsmith_index_u32(u_input.c, 18u)]) <= 1i)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true)), vec4<bool>(!any(vec2<bool>(false, true)), false, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var_0 = _wgslsmith_mult_u32(select(func_5(Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -16978i), global0[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(-283f, arg_1.a), Struct_2(Struct_1(841f, -107f), arg_1, arg_1, u_input.c)), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.d, u_input.d, -2147483647i), 45286i, 0i), func_4(vec4<u32>(u_input.e, u_input.c, 5475u, u_input.e), func_3(24326i, vec2<u32>(u_input.c, u_input.e)), vec2<i32>(u_input.b.x, -24969i))), u_input.c, func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, 4450u, 0u), vec4<u32>(5329u, u_input.c, 4517u, u_input.c)), ~(~vec4<u32>(11872u, u_input.e, 80268u, 34625u)), vec2<i32>(-u_input.b.x, _wgslsmith_sub_i32(-55033i, u_input.b.x))).x), 4294967295u);
    var var_2 = arg_1;
    var_0 = 10076u;
    return Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_f_op_f32(floor(1038f))), arg_1, firstTrailingBit(4294967295u));
}

fn func_6(arg_0: Struct_2) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(274f * global1.x)), -452f, 1247f))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1438f) - -179f))));
    global0 = array<vec2<i32>, 18>();
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_div_f32(-1223f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(-global1.x)))), arg_0.b.b);
    return Struct_4(Struct_3(abs(vec2<i32>(u_input.b.x, -1i) << (vec2<u32>(arg_0.d, arg_0.d) % vec2<u32>(32u))), var_1, arg_0), vec3<bool>(any(vec4<bool>(true, true, true, true)), abs(arg_0.d) <= max(1u, arg_0.d), false), arg_0.c, _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, u_input.b), countOneBits(u_input.b)), u_input.d), Struct_3(u_input.b, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.b)), _wgslsmith_f_op_f32(arg_0.c.b + arg_0.c.b))), -702f), Struct_2(Struct_1(arg_0.b.b, 1000f), var_1, var_1, _wgslsmith_add_u32(~arg_0.d, arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    let var_0 = vec3<i32>(reverseBits(u_input.b.x), 0i, i32(-1i) * -((u_input.d & u_input.b.x) | _wgslsmith_mod_i32(u_input.d, -23550i)));
    let var_1 = func_6(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -692f) - vec2<f32>(global1.x, -269f))), Struct_1(-1042f, 218f)));
    let var_2 = var_1.e;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1562f, 649f, !any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true)))) + _wgslsmith_f_op_f32(-var_2.b.b)));
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_f32(func_6(Struct_2(var_1.e.c.b, var_1.a.c.b, Struct_1(920f, -288f), var_1.e.c.d)).a.b.b, 307f), func_6(func_1(global1.yy, func_6(Struct_2(var_1.e.c.b, Struct_1(var_1.c.a, var_2.c.b.a), Struct_1(var_2.c.c.a, global1.x), 0u)).c)).c.a), var_2.b, func_6(func_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b.a), _wgslsmith_f_op_f32(global1.x - 2136f)), Struct_1(_wgslsmith_f_op_f32(step(-501f, 287f)), _wgslsmith_f_op_f32(-var_3.x)))).e.b, 1u);
    var var_5 = func_6(func_1(_wgslsmith_f_op_vec2_f32(-var_3.zx), Struct_1(_wgslsmith_f_op_f32(sign(var_1.c.b)), -523f))).e;
    let var_6 = vec2<bool>(!func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(7081u, var_1.a.c.d, var_5.c.d, 4294967295u) | vec4<u32>(1u, 0u, 1u, var_1.a.c.d), vec4<u32>(28005u, 4294967295u, u_input.e, 16719u), vec4<u32>(var_4.d, u_input.c, var_4.d, u_input.e) << (vec4<u32>(5571u, var_1.a.c.d, var_1.a.c.d, var_4.d) % vec4<u32>(32u))), abs(vec4<u32>(24879u, var_1.e.c.d, var_4.d, 36815u)), select(vec2<i32>(38777i, u_input.b.x), global0[_wgslsmith_index_u32(85836u, 18u)], var_1.b.yy) | (global0[_wgslsmith_index_u32(0u, 18u)] & u_input.b)).x, var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f + var_4.b.b) * _wgslsmith_f_op_f32(493f + -351f))) + _wgslsmith_f_op_f32(-var_1.a.c.a.b)));
}

