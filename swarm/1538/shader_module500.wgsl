struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 21>;

var<private> global4: i32 = 1i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_5(!all(!(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x))), ~(i32(-1i) * -abs(-2147483647i)), Struct_4(Struct_1(!select(vec3<bool>(global1.x, arg_1.x, true), arg_1, true), _wgslsmith_mult_u32(1u, 1u)), !vec4<bool>(true, all(arg_1), true, global0[_wgslsmith_index_u32(0u, 28u)] > -28731i), Struct_1(!(!vec3<bool>(arg_1.x, arg_1.x, false)), ~max(global2.x, global2.x))));
    var var_1 = -40851i;
    var var_2 = 4294967295u;
    var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6146u, 0u, 1u), vec3<u32>(19885u, 12165u, arg_0)), 28u)]), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(13574u, 0u), 28u)]), vec2<i32>(~18128i, _wgslsmith_sub_i32(~(28418i << (global2.x % 32u)), countOneBits(var_0.b) & var_0.b)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1408f + -968f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(997f, 1872f)) - _wgslsmith_f_op_f32(step(-1000f, 1336f))), _wgslsmith_f_op_f32(-467f * _wgslsmith_f_op_f32(ceil(-711f)))))));
    return arg_0 & 21150u;
}

fn func_2() -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(global2.x & ~(~(~0u) ^ select(7618u & global2.x, func_3(55218u, vec3<bool>(global1.x, global1.x, false)), true)), 21u)];
    let var_1 = global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~(global2.x | reverseBits(u_input.b)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u ^ var_0.a), 23844u)), u_input.b, global1.x), 21u)];
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(var_1.a >> (4294967295u % 32u), u_input.b), min(global2.x, 4294967295u << (var_1.a % 32u)) & global2.x), 21u)];
    var var_3 = firstLeadingBit(u_input.a.x);
    global1 = !(!select(vec4<bool>(true, all(vec3<bool>(true, global1.x, global1.x)), global1.x & false, global1.x), select(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), global1.x), vec4<bool>(true, true, true, true), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, false, global1.x, false))), 0u < global2.x));
    return ~(~reverseBits(vec4<i32>(-3789i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 0u), vec3<u32>(var_2.a, 8867u, 4294967295u)), 28u)], global0[_wgslsmith_index_u32(var_1.a, 28u)] & global0[_wgslsmith_index_u32(25750u, 28u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_0.a, 28u)], global0[_wgslsmith_index_u32(var_0.a, 28u)]))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_3 {
    global0 = array<i32, 28>();
    var var_0 = vec2<i32>(-arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, min(arg_0, arg_0)));
    var_0 = vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -1i, arg_0.x);
    var var_1 = ~arg_1.x;
    var_0 = arg_0.wy | vec2<i32>(0i, func_2().x);
    return Struct_3(u_input.a, 17826u, ~vec4<i32>(firstLeadingBit(0i), var_0.x, -1i, func_2().x), arg_1.x, Struct_2(~select(global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(27681u, 4294967295u, 1u, 47739u), vec4<u32>(0u, global2.x, global2.x, 72948u)), !global1.x)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 0i, global0[_wgslsmith_index_u32(global2.x, 28u)], 50783i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(66690u, 28u)]), vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 28u)], global0[_wgslsmith_index_u32(61310u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], -19171i)), vec4<i32>(~global0[_wgslsmith_index_u32(83365u, 28u)], -75424i, global0[_wgslsmith_index_u32(30156u, 28u)] << (global2.x % 32u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 37868u), 28u)])) | -func_2(), vec3<i32>(-1i) * -select(firstTrailingBit(vec3<i32>(-13191i, global0[_wgslsmith_index_u32(arg_0.a, 28u)], global0[_wgslsmith_index_u32(27860u, 28u)])), ~vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_0.a, 28u)], -56041i), any(vec4<bool>(global1.x, true, true, global1.x))));
    global0 = array<i32, 28>();
    let var_1 = Struct_1(vec3<bool>(false, !any(select(vec2<bool>(arg_1, global1.x), global1.wx, vec2<bool>(global1.x, true))), !(firstLeadingBit(1i) > (var_0.c.x << (0u % 32u)))), _wgslsmith_dot_vec2_u32(var_0.a, ~_wgslsmith_mod_vec2_u32(global2.yx, ~vec2<u32>(9785u, 0u))));
    var_0 = func_4(min(reverseBits(vec4<i32>(var_0.d, var_0.c.x, global0[_wgslsmith_index_u32(38060u, 28u)], global0[_wgslsmith_index_u32(global2.x, 28u)])), func_4(var_0.c << (vec4<u32>(1u, var_0.a.x, 54648u, var_1.b) % vec4<u32>(32u)), vec3<i32>(26687i, var_0.c.x, global0[_wgslsmith_index_u32(6617u, 28u)])).c) << ((((vec4<u32>(4294967295u, 40084u, global2.x, var_0.e.a) | vec4<u32>(var_1.b, var_0.b, 4294967295u, 1u)) >> (min(vec4<u32>(45562u, var_1.b, arg_0.a, 0u), vec4<u32>(4294967295u, global2.x, 0u, global2.x)) % vec4<u32>(32u))) >> (((vec4<u32>(u_input.b, 9941u, 99507u, 5228u) ^ vec4<u32>(arg_0.a, 84762u, var_1.b, 71870u)) | vec4<u32>(u_input.a.x, global2.x, 1u, 19205u)) % vec4<u32>(32u))) % vec4<u32>(32u)), select(-var_0.c.xyw & (_wgslsmith_div_vec3_i32(var_0.c.zww, var_0.c.xzy) >> (~vec3<u32>(arg_0.a, u_input.b, 30697u) % vec3<u32>(32u))), var_0.c.xww, var_1.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1903f, _wgslsmith_f_op_f32(trunc(-1000f)), -642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(arg_2 - arg_2))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2))))));
    return func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-var_0.c), vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(arg_0.a, 28u)]), _wgslsmith_mod_i32(-36016i, -2147483647i), countOneBits(-44618i), ~(-2147483647i)), countOneBits(reverseBits(vec4<i32>(85508i, global0[_wgslsmith_index_u32(18810u, 28u)], 0i, 0i)))), ~func_4(-var_0.c, var_0.c.wyx).c), vec3<i32>(_wgslsmith_mult_i32(select(var_0.c.x, -7506i, false) ^ abs(-2147483647i), i32(-1i) * -2147483647i), countOneBits(-global0[_wgslsmith_index_u32(4294967295u, 28u)]) << (~4294967295u % 32u), firstTrailingBit(global0[_wgslsmith_index_u32(func_3(63130u, global1.wyz), 28u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(global2.x), true | !(!any(global1.yw)), 1f);
    global4 = ~(-8061i);
    global3 = array<Struct_2, 21>();
    var var_1 = select(vec3<bool>(!any(global1.zw), any(global1.zzy), u_input.b == var_0.a.x), global1.zww, !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, global1.x, true), false), select(select(global1.zxw, global1.yxw, global1.x), global1.yxy, select(vec3<bool>(global1.x, false, false), vec3<bool>(false, true, global1.x), global1.x)), global1.zxx));
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -1000f), vec3<f32>(308f, 1169f, 2117f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, -963f, 197f)) * vec3<f32>(1361f, -1268f, -1855f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(665f, -1053f, 1263f, -428f) * vec4<f32>(-103f, -696f, -563f, 103f))))) - vec4<f32>(-1000f, -228f, 1247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(640f))))));
}

