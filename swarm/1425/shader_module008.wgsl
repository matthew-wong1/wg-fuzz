struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(786f, -1414f, 150f, 601f), vec4<f32>(103f, -984f, 1364f, -1643f));

var<private> global2: Struct_3 = Struct_3(vec3<bool>(false, true, false), vec4<u32>(39338u, 89132u, 0u, 4356u));

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-23075i, 3345i, -1i), vec3<i32>(-25206i, -12321i, -32665i), vec3<i32>(-20082i, -43640i, 29207i), vec3<i32>(0i, -23821i, 39605i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-33257i, -5267i, 0i), vec3<i32>(-7138i, i32(-2147483648), 2147483647i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-686f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))) - _wgslsmith_div_f32(arg_2, arg_2)), arg_2, global2.a.x, _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) * _wgslsmith_f_op_f32(step(arg_2, 583f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(643f, 753f)))));
    let var_1 = select(vec4<u32>(_wgslsmith_add_u32(max(~65293u, 4294967295u), _wgslsmith_add_u32(~global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.b.x, arg_0), global2.b.wyz))), global2.b.x, ~(~_wgslsmith_sub_u32(arg_0, global2.b.x)), ~1u), ~global2.b, global0[_wgslsmith_index_u32(arg_0, 28u)]);
    let var_2 = select(select(select(vec2<bool>(arg_1, any(vec3<bool>(true, var_0.c, true))), !select(arg_3.wx, arg_3.xy, true), _wgslsmith_f_op_f32(abs(-435f)) >= _wgslsmith_f_op_f32(min(arg_2, var_0.b))), vec2<bool>(true, true), global2.a.x), vec2<bool>(arg_3.x, var_0.c), any(select(select(vec3<bool>(true, global2.a.x, arg_3.x), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], arg_1, var_0.c), vec3<bool>(global0[_wgslsmith_index_u32(120398u, 28u)], global2.a.x, false), arg_3.x), select(arg_3.yxw, arg_3.wxx, false)), arg_3.wzx, var_0.c)));
    global1 = array<vec4<f32>, 2>();
    let var_3 = Struct_3(!global2.a, var_1);
    return u_input.c;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> f32 {
    global1 = array<vec4<f32>, 2>();
    var var_0 = ~(global2.b | _wgslsmith_div_vec4_u32(arg_1.b, vec4<u32>(4569u, u_input.a, abs(22592u), arg_1.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 239f) - vec2<f32>(-819f, -456f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(563f, -520f) + vec2<f32>(-404f, -1237f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1247f, -1033f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1349f, -1007f) + vec2<f32>(-374f, -1545f)))))));
    var var_2 = var_1.x;
    let var_3 = Struct_2(abs(vec2<i32>(-u_input.c, -38803i) ^ _wgslsmith_add_vec2_i32(~vec2<i32>(arg_0, 2147483647i), vec2<i32>(-1i, u_input.c))), Struct_1(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1640f - var_1.x))))), 248f, ~_wgslsmith_clamp_u32(56963u, u_input.b.x, 0u) > 4294967295u, _wgslsmith_f_op_f32(-var_1.x)), vec4<u32>(~(reverseBits(var_0.x) ^ 1u), ~_wgslsmith_dot_vec2_u32(var_0.wy, u_input.b), 1u << (arg_1.b.x % 32u), ~u_input.b.x), Struct_1(_wgslsmith_f_op_f32(120f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-376f, 505f), !arg_1.a.x)) + var_1.x), !(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, 0u), global2.b.wyy), 28u)]), var_1.x));
    return _wgslsmith_f_op_f32(-var_3.d.a);
}

fn func_2() -> u32 {
    var var_0 = global2.b.yw;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(815f)), _wgslsmith_f_op_f32(func_4(func_3(~global2.b.x, global2.a.x & global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1102f), select(vec4<bool>(global2.a.x, global2.a.x, true, global0[_wgslsmith_index_u32(var_0.x, 28u)]), vec4<bool>(true, global2.a.x, false, global2.a.x), global2.a.x)), Struct_3(vec3<bool>(true, true, global0[_wgslsmith_index_u32(39859u, 28u)]), vec4<u32>(var_0.x, 1u, u_input.b.x, u_input.b.x)))))));
    let var_2 = _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.c & -1i, _wgslsmith_mod_i32(-2147483647i, -7647i), -7354i), vec3<i32>(~u_input.c, u_input.c, ~25732i), true) & global3[_wgslsmith_index_u32(global2.b.x, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)]);
    let var_3 = Struct_2(-(-var_2.zx >> (global2.b.yw % vec2<u32>(32u))), Struct_1(var_1.x, _wgslsmith_f_op_f32(-var_1.x), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.x, 557f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))))), vec4<u32>(1u, max(_wgslsmith_dot_vec3_u32(global2.b.wzw, vec3<u32>(4294967295u, u_input.a, 25097u)), ~75041u), _wgslsmith_div_u32(global2.b.x ^ var_0.x, var_0.x), ~(0u >> (global2.b.x % 32u))) ^ global2.b, Struct_1(-1000f, _wgslsmith_f_op_f32(-var_1.x), global0[_wgslsmith_index_u32(max(global2.b.x, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(2979u, 8878u, 10354u, u_input.a), vec4<u32>(var_0.x, 22480u, 4294967295u, u_input.a)), var_0.x >> (u_input.b.x % 32u))), 28u)], _wgslsmith_f_op_f32(627f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-836f, -2724f))))));
    let var_4 = countOneBits(select(u_input.b, firstLeadingBit(_wgslsmith_mod_vec2_u32(var_3.c.yx, vec2<u32>(var_0.x, 17518u)) >> (max(var_3.c.wz, vec2<u32>(var_0.x, var_3.c.x)) % vec2<u32>(32u))), -2147483647i <= -_wgslsmith_add_i32(var_2.x, var_2.x)));
    return var_3.c.x;
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(arg_1 * arg_1);
    let var_1 = Struct_3(global2.a, vec4<u32>(global2.b.x, firstTrailingBit(global2.b.x), u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.b.xyx, ~vec3<u32>(0u, u_input.b.x, u_input.b.x)), ~(vec3<u32>(1u, 1u, u_input.a) ^ vec3<u32>(global2.b.x, global2.b.x, 29430u)))));
    var var_2 = any(var_1.a) && (-2147483647i > -(~_wgslsmith_mult_i32(u_input.c, u_input.c)));
    global3 = array<vec3<i32>, 7>();
    let var_3 = vec2<i32>(abs(max(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 2366i)), firstTrailingBit(0i) | -27757i)), countOneBits(u_input.c));
    return Struct_2(_wgslsmith_add_vec2_i32(var_3 ^ ((vec2<i32>(u_input.c, -49729i) >> (vec2<u32>(18035u, u_input.b.x) % vec2<u32>(32u))) & vec2<i32>(var_3.x, var_3.x)), _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.c, u_input.c), var_3, global2.a.yx), vec2<i32>(var_3.x, -30262i)) ^ (var_3 ^ abs(vec2<i32>(-46039i, -16121i)))), Struct_1(arg_1, 861f, global2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(1532f))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), !var_1.a.x))))), ~reverseBits(var_1.b), Struct_1(919f, _wgslsmith_f_op_f32(-arg_1), !global2.a.x, -848f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_5(!(!global2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))), -1845f, 12016u < firstLeadingBit(func_2()))));
    var var_1 = global2.b.x;
    let var_2 = ~(u_input.b.x | global2.b.x);
    var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(func_2(), ~firstTrailingBit(~global2.b.x), ~(~12445u)), 4294967295u);
    global2 = Struct_3(!global2.a, _wgslsmith_div_vec4_u32(vec4<u32>(~var_0.c.x, ~4294967295u, min(101174u, var_0.c.x), _wgslsmith_div_u32(var_0.c.x, var_2)) & var_0.c, global2.b));
    return Struct_3(select(select(!select(vec3<bool>(false, false, false), global2.a, var_0.d.c), vec3<bool>(false, select(false, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(global2.b.x, 28u)]), global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(~var_0.c.x, 28u)], !global0[_wgslsmith_index_u32(0u, 28u)], all(vec4<bool>(var_0.b.c, false, global0[_wgslsmith_index_u32(47795u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))), select(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_2, 28u)], var_0.b.c), select(vec3<bool>(global2.a.x, global0[_wgslsmith_index_u32(global2.b.x, 28u)], true), global2.a, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false)), true), !(!vec3<bool>(false, true, global2.a.x)), global2.a), !global2.a.x), ~(~min(_wgslsmith_mult_vec4_u32(global2.b, global2.b), ~global2.b)));
}

fn func_6(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_u32(global2.b.x, u_input.b.x, 24190u);
    global1 = array<vec4<f32>, 2>();
    let var_1 = abs(~(~abs(global2.b))) & abs(func_5(!global2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_f_op_f32(710f * -357f)))).c);
    global1 = array<vec4<f32>, 2>();
    global1 = array<vec4<f32>, 2>();
    return Struct_2(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(20315i, 2147483647i)), vec2<i32>(~_wgslsmith_div_i32(2147483647i, -2147483647i), select(-1i, u_input.c & u_input.c, true))), Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1619f, 598f)))), any(select(vec2<bool>(arg_0, global2.a.x), vec2<bool>(true, false), select(global2.a.zx, global2.a.xz, vec2<bool>(true, arg_1.a.x)))), func_5(global2.a, 697f).b.a), global2.b, func_5(!arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(603f * _wgslsmith_f_op_f32(-614f + 695f)) * _wgslsmith_f_op_f32(-func_5(vec3<bool>(arg_1.a.x, false, arg_1.a.x), -1392f).b.d))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_6(any(global2.a), func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-200f, 383f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, -139f) + vec2<f32>(984f, -605f)) - vec2<f32>(313f, 960f))))));
    let var_2 = var_1.b.b;
    let var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(var_1.c.x, var_1.c.x)), 7u)];
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 209f), vec2<f32>(334f, 1392f), vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], var_1.b.c))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d.b, var_2), vec2<f32>(-1569f, 269f)))) * vec2<f32>(1f, 1f))));
}

