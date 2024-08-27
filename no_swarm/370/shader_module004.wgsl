struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, 0u, vec4<bool>(false, true, false, false), vec3<u32>(1u, 20759u, 14896u));

var<private> global1: vec4<u32> = vec4<u32>(0u, 1876u, 42609u, 29021u);

var<private> global2: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-1i, 27234i, 0i, 2147483647i), vec4<i32>(48947i, -43502i, 1i, 0i), vec4<i32>(21698i, 0i, -1i, -22501i), vec4<i32>(-1i, 15092i, 2147483647i, i32(-2147483648)), vec4<i32>(0i, -16871i, 9230i, 0i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -41983i), vec4<i32>(0i, -35047i, 0i, -10839i), vec4<i32>(-13239i, i32(-2147483648), -35282i, i32(-2147483648)), vec4<i32>(2147483647i, 26775i, -14917i, 0i), vec4<i32>(22903i, -26802i, 31478i, 0i), vec4<i32>(1i, -25909i, 19639i, 70846i), vec4<i32>(-1i, -54922i, -31547i, 18180i), vec4<i32>(25342i, -14407i, -4164i, -28139i), vec4<i32>(i32(-2147483648), 5974i, -4355i, 0i), vec4<i32>(37278i, 13397i, 1i, -16520i), vec4<i32>(-50279i, 1i, -1i, 2147483647i), vec4<i32>(14926i, -1i, -31448i, 0i), vec4<i32>(0i, -47203i, -39528i, 32951i), vec4<i32>(-1i, i32(-2147483648), -1i, -1998i), vec4<i32>(1i, i32(-2147483648), -16644i, 10793i), vec4<i32>(i32(-2147483648), -47974i, -1i, -3879i), vec4<i32>(0i, 84001i, 38730i, 1i), vec4<i32>(-40934i, 15828i, -1i, -13450i), vec4<i32>(22006i, -21584i, 1i, -19381i), vec4<i32>(-1i, 0i, 1i, -21380i), vec4<i32>(25946i, 51346i, i32(-2147483648), 2147483647i), vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec4<i32>(-49018i, 0i, i32(-2147483648), 19589i), vec4<i32>(-21999i, 0i, -30947i, -15515i), vec4<i32>(2147483647i, -35292i, -1i, 1i));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(2147483647i, 30445u, vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(i32(-2147483648), 4294967295u, vec4<bool>(true, false, false, false), vec3<u32>(47329u, 141522u, 0u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = global1.yzz;
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(10921i, -10521i, u_input.c), u_input.a), abs(_wgslsmith_mult_u32(~global0.d.x, max(global0.b, global1.x))), select(!(!global0.c), !vec4<bool>(false, false, global3.x, false), !vec4<bool>(false, global3.x, true, false)), vec3<u32>(max(global1.x, 1u), ~(~21705u), abs(~34569u))), _wgslsmith_div_vec3_i32(u_input.a, -(~(-vec3<i32>(3840i, global0.a, u_input.a.x)))));
    let var_2 = 0i;
    let var_3 = var_1.a;
    return global3.x;
}

fn func_2() -> Struct_2 {
    var var_0 = !func_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1797f))), _wgslsmith_div_f32(-1299f, 531f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f))));
    let var_1 = global0.d.x;
    let var_2 = Struct_5(Struct_2(Struct_1(-global0.a, abs(select(global1.x, global1.x, false)), global0.c, abs(global1.wwx) << (~vec3<u32>(4294967295u, 24915u, global0.d.x) % vec3<u32>(32u))), ~u_input.a), -(~_wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(global0.b, 30u)], global2[_wgslsmith_index_u32(global0.b, 30u)]) | global2[_wgslsmith_index_u32(global1.x, 30u)]), 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1625f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1698f), _wgslsmith_f_op_f32(trunc(558f)))), -290f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1728f)), -1283f, -2033f))), vec2<bool>(select(!all(global3.yx), select(global0.c.x != true, global3.x, true || global3.x), 7314i >= ~global0.a), any(!global3.xz)));
    global4 = array<Struct_1, 2>();
    let var_3 = ~(~(_wgslsmith_mult_vec3_u32(global0.d, ~global1.wxx) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(var_2.a.a.d.zz, vec2<u32>(10381u, global0.d.x)), global1.x, ~global0.d.x)));
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> Struct_5 {
    global1 = ~(~(~vec4<u32>(global0.d.x, reverseBits(global1.x), global0.b, global0.d.x)));
    let var_0 = func_2();
    global2 = array<vec4<i32>, 30>();
    global3 = func_2().a.c;
    var var_1 = var_0.b;
    return Struct_5(Struct_2(Struct_1(var_1.x, global1.x, !(!var_0.a.c), ~vec3<u32>(var_0.a.b, 0u, 68562u)), vec3<i32>(global0.a, -2147483647i, ~global0.a & 1i)), select(abs(~vec4<i32>(arg_0, -1i, global0.a, -2147483647i)), countOneBits(vec4<i32>(firstTrailingBit(27384i), ~(-1i), 1i, arg_0)), all(vec4<bool>(!global0.c.x, all(vec3<bool>(true, global0.c.x, global3.x)), true == arg_2.x, !arg_2.x))), global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(round(1423f)), _wgslsmith_f_op_f32(f32(-1f) * -345f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1131f, -722f, -903f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-321f, 740f, 1000f))), vec3<bool>(true, false, false))))), !select(select(vec2<bool>(arg_1, true), !vec2<bool>(var_0.a.c.x, arg_2.x), true), func_2().a.c.xw, !select(global0.c.zy, global0.c.yy, global0.c.yz)));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> i32 {
    let var_0 = func_2().a.a >= arg_0;
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-676f * _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(floor(arg_1.d.x))))));
    let var_3 = func_1(~firstTrailingBit(u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, arg_0), _wgslsmith_mod_i32(arg_0, global0.a), ~(-9913i), arg_0), _wgslsmith_clamp_vec4_i32(global2[_wgslsmith_index_u32(~global1.x, 30u)], _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0, -1i, var_1.a.a), global2[_wgslsmith_index_u32(arg_1.a.a.d.x, 30u)]), ~global2[_wgslsmith_index_u32(1u, 30u)])) > arg_1.b.x, func_1(0i, !var_0, !(!(!arg_1.a.a.c.wyw))).a.a.c.xzx);
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -119f);
    return 1i;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(arg_0.c.zxy);
    let var_1 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -abs(u_input.a)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(reverseBits(u_input.a)), firstLeadingBit(vec3<i32>(-1i, -15078i, arg_0.a))), ~(reverseBits(u_input.a) ^ firstTrailingBit(u_input.a))));
    global0 = global4[_wgslsmith_index_u32(1u, 2u)];
    global4 = array<Struct_1, 2>();
    let var_2 = vec4<bool>(arg_0.c.x, var_0, true, 2147483647i >= abs(~global0.a >> (_wgslsmith_div_u32(1u, 12031u) % 32u)));
    return func_1(-var_1, any(global3.ww), vec3<bool>(arg_0.c.x, true, arg_0.c.x)).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 3177i;
    var var_1 = vec3<i32>(u_input.c, select(1i, _wgslsmith_dot_vec2_i32(u_input.a.zy, (u_input.a.zx | vec2<i32>(22149i, -1i)) << (vec2<u32>(global0.b, 36654u) % vec2<u32>(32u))), all(vec4<bool>(false, select(true, true, global3.x), true, true))), u_input.c);
    var var_2 = select(global0.d, global1.xww << (select(global0.d, global1.xxw, !global0.c.x) % vec3<u32>(32u)), vec3<bool>(global0.c.x, (_wgslsmith_mod_i32(2147483647i, global0.a) & u_input.a.x) == _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -28084i, var_1.x)), _wgslsmith_clamp_i32(u_input.d, u_input.c, 2147483647i)), !global3.x));
    let var_3 = func_5(Struct_1(~func_4(~u_input.c, func_1(var_0, global3.x, global3.yzx)), firstLeadingBit(~(~global0.d.x)), !vec4<bool>(!global0.c.x, any(global0.c.yz), true, !global0.c.x), min(_wgslsmith_mod_vec3_u32(global0.d, global1.wzx) | select(vec3<u32>(3452u, 4294967295u, 35414u), global0.d, false), vec3<u32>(_wgslsmith_div_u32(global1.x, 4294967295u), abs(global0.b), _wgslsmith_mult_u32(1u, global1.x)))));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1126f + _wgslsmith_f_op_f32(floor(-230f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(828f - -1036f), 359f, true))))), 0u);
    let var_5 = any(!vec2<bool>(true, var_4.a <= _wgslsmith_f_op_f32(f32(-1f) * -254f)));
    var var_6 = global3.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1((u_input.d >> (global0.b % 32u)) >> (~0u % 32u), !(26972i > var_1.x), vec3<bool>(true, var_4.a < 1588f, var_3.c.x)).d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(~var_4.b), global1.x, reverseBits(~global1.x), min(_wgslsmith_clamp_u32(59781u, 7508u, var_4.b), 4294967295u)), vec4<u32>(~var_3.b, ~reverseBits(82457u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 9623u, 11749u), vec3<u32>(var_4.b, global1.x, global1.x)), countOneBits(vec3<u32>(var_2.x, var_4.b, 4294967295u))), func_5(func_1(0i, var_6.x, global3.wzy).a.a).d.x)), abs((vec4<u32>(var_4.b, global1.x, var_2.x, 10453u) >> (vec4<u32>(var_2.x, 1u, global1.x, 6139u) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(var_2.x, 1u, var_2.x, global0.b) | vec4<u32>(10544u, var_2.x, 4294967295u, var_4.b)) % vec4<u32>(32u))), ~func_5(global4[_wgslsmith_index_u32(~var_4.b, 2u)]).d);
}

