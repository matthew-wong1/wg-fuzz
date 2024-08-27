struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 28> = array<i32, 28>(71479i, 31515i, -33847i, 11232i, 18517i, -16702i, -7833i, 40494i, 3734i, 1i, -25512i, 2147483647i, -22007i, -1i, i32(-2147483648), 0i, -19607i, 2147483647i, 1i, 9780i, i32(-2147483648), -31946i, i32(-2147483648), -37928i, -47144i, -33776i, -3299i, 7837i);

var<private> global2: array<Struct_2, 10>;

var<private> global3: vec4<i32> = vec4<i32>(-3598i, 2147483647i, -34174i, 9573i);

var<private> global4: array<u32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u >> (1u % 32u), 28u)], _wgslsmith_div_i32(~u_input.c, global3.x), -71296i, -(~(-53335i))), vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -global3.x), _wgslsmith_mult_i32(~(~(-86i)), -19576i >> (global4[_wgslsmith_index_u32(14921u >> (1u % 32u), 18u)] % 32u)), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(0i, -39867i)), 1i), u_input.b.x));
    global3 = firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec4_i32(~(vec4<i32>(global3.x, var_0, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 28u)], global3.x) << (vec4<u32>(global4[_wgslsmith_index_u32(90381u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9580u, 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12215u, 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(0u, 18u)]) % vec4<u32>(32u))), -(~vec4<i32>(37171i, u_input.b.x, -2147483647i, -6812i)))));
    global3 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(-16322i, u_input.a & var_0, ~1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 28u)], -1i)), -select(max(vec4<i32>(1i, 13709i, u_input.c, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6881u, 18u)], 28u)]), vec4<i32>(-2147483647i, global3.x, global3.x, var_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14153u, 18u)], 18u)], 28u)], 2047i), vec4<i32>(u_input.c, 1i, -33514i, -1i)), arg_1));
    global2 = array<Struct_2, 10>();
    global2 = array<Struct_2, 10>();
    return arg_0.a;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec4<f32> {
    global1 = array<i32, 28>();
    var var_0 = vec3<f32>(-852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2061f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-234f, arg_0.c.b.x))) + _wgslsmith_f_op_f32(max(arg_0.c.b.x, _wgslsmith_div_f32(-1352f, arg_2.b.x))))), 1000f);
    global1 = array<i32, 28>();
    let var_1 = Struct_4(vec4<bool>(true, all(vec4<bool>(false, !arg_3.x, false, 2147483647i <= global1[_wgslsmith_index_u32(arg_1, 28u)])), !(!arg_0.c.a), (0i != _wgslsmith_mult_i32(-1i, u_input.b.x)) & false), u_input.b.x > u_input.a);
    global0 = true;
    return arg_2.b;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f * _wgslsmith_f_op_f32(-816f + 717f))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f))))));
    global4 = array<u32, 18>();
    var var_1 = Struct_1(!all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 10u)], global4[_wgslsmith_index_u32(1u, 18u)], func_2(Struct_3(Struct_1(true, vec4<f32>(-197f, -546f, -696f, var_0), true)), vec4<bool>(false, true, false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), false))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -327f, var_0, 1000f)))))), 1u == ~_wgslsmith_sub_u32(75057u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)]), 18u)]));
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(global3.yy), u_input.b | vec2<i32>(u_input.c, -29865i)), -2147483647i, ~countOneBits(-16277i), u_input.b.x), vec4<i32>(_wgslsmith_add_i32(min(-2147483647i, -28469i), 19993i), 1i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-23163i, global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, global3.x)), ~(-17038i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 40584u, 0u, 25927u), min(vec4<u32>(13579u, 0u, 11532u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)]), vec4<u32>(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(26055u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(1u, 18u)]))) % 32u), -_wgslsmith_sub_i32(abs(u_input.b.x), countOneBits(global3.x))), vec4<i32>(~global3.x, u_input.a, firstLeadingBit(~u_input.c), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~73343u, 28u)], ~(-1i), u_input.b.x)) | max(vec4<i32>(~global3.x, ~(-44897i), 2147483647i, _wgslsmith_mult_i32(-2147483647i, global3.x)), vec4<i32>(~33690i, 0i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 28u)] << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] % 32u), u_input.b.x)));
    var var_3 = Struct_5(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(global4[_wgslsmith_index_u32(~874u & (global4[_wgslsmith_index_u32(64540u, 18u)] & 31922u), 18u)], abs(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33156u, 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)])), var_1.c), 4294967295u), 18u)], !(!(!vec3<bool>(var_1.c, true, var_1.c))), Struct_3(Struct_1(!var_1.a, var_1.b, true)), _wgslsmith_f_op_f32(-var_1.b.x), vec2<i32>(var_2.x, 1i));
    return vec4<u32>(global4[_wgslsmith_index_u32(min(4294967295u, global4[_wgslsmith_index_u32(var_3.a, 18u)]) >> (95655u % 32u), 18u)] ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 0u), reverseBits(vec4<u32>(var_3.a, global4[_wgslsmith_index_u32(var_3.a, 18u)], 17435u, 80925u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, var_3.a, global4[_wgslsmith_index_u32(68115u, 18u)], global4[_wgslsmith_index_u32(var_3.a, 18u)]), vec4<u32>(var_3.a, 132057u, 57254u, global4[_wgslsmith_index_u32(41979u, 18u)]))), ~(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 0u, 39050u, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, _wgslsmith_add_u32(var_3.a, ~4294967295u), 0u, ~abs(8365u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(6042u, 1u, 19328u, var_3.a) ^ vec4<u32>(22330u, global4[_wgslsmith_index_u32(var_3.a, 18u)], 15111u, 24299u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.a, var_3.a, var_3.a, 4294967295u), vec4<u32>(var_3.a, 24012u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20536u, 18u)], 18u)], 18u)], 18u)], 53710u))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, var_3.a, var_3.a, var_3.a), vec4<u32>(global4[_wgslsmith_index_u32(var_3.a, 18u)], 36242u, 3363u, 55443u)) | (vec4<u32>(6582u, 0u, 43263u, 56478u) >> (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 48345u, 85924u, global4[_wgslsmith_index_u32(var_3.a, 18u)]) % vec4<u32>(32u))))), ~(4294967295u & (1u << (var_3.a % 32u))) | ~1u, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)], 28u)], 2147483647i, global3.x, 0i), vec4<i32>(global3.x, global3.x, 17717i, u_input.b.x)) << (func_1() % vec4<u32>(32u))));
    global3 = ~firstTrailingBit(~(-min(vec4<i32>(global3.x, global1[_wgslsmith_index_u32(1u, 28u)], u_input.b.x, -1i), vec4<i32>(global1[_wgslsmith_index_u32(48753u, 28u)], 0i, -60958i, -39281i))));
    let var_0 = func_2(Struct_3(func_2(Struct_3(Struct_1(false, vec4<f32>(113f, -669f, 199f, 1034f), true)), vec4<bool>(true, true, true, true))), !vec4<bool>(false, !any(vec2<bool>(true, true)), true, func_2(Struct_3(Struct_1(true, vec4<f32>(1949f, -953f, -1000f, -1714f), true)), vec4<bool>(true, false, false, false)).a));
    global1 = array<i32, 28>();
    var var_1 = Struct_5(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18755u, global4[_wgslsmith_index_u32(1u, 18u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(47252u, global4[_wgslsmith_index_u32(10342u, 18u)]), vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(45721u, 18u)])), 31155u), 18u)], ~(32967u ^ (global4[_wgslsmith_index_u32(9638u, 18u)] << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62472u, 18u)], 18u)], 18u)], 18u)], 18u)] % 32u)))), !select(vec3<bool>(var_0.c, !var_0.c, global1[_wgslsmith_index_u32(4294967295u, 28u)] != -29035i), vec3<bool>(any(vec4<bool>(true, var_0.c, true, var_0.c)), true, global3.x >= -18581i), var_0.c), Struct_3(Struct_1(var_0.a, var_0.b, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f + 2757f)), abs(global3.yw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, 45282u, 48401u, 4294967295u)) | abs(vec4<u32>(var_1.a, 16617u, 4294967295u, 4294967295u) & vec4<u32>(4294967295u, 70300u, global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)])), vec4<u32>(abs(var_1.a), ~var_1.a & 1u, select(func_1().x, func_1().x, all(var_1.b)), ~var_1.a)), -1715f, select(select(abs(vec4<u32>(44805u, var_1.a, 1u, 50918u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(40796u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(10289u, 18u)], 18u)], 18u)], var_1.a), vec4<u32>(103u, 4294967295u, 0u, global4[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(15040u, global4[_wgslsmith_index_u32(var_1.a, 18u)], global4[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u)) % vec4<u32>(32u)), vec4<u32>(countOneBits(global4[_wgslsmith_index_u32(16630u, 18u)]), 67607u, 0u, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(0u, 18u)], 16667u)), vec4<bool>(!var_1.c.a.a, true, any(vec2<bool>(true, var_0.a)), true)), ~(vec4<u32>(global4[_wgslsmith_index_u32(var_1.a, 18u)], var_1.a, 4294967295u, var_1.a) >> (vec4<u32>(12253u, 117671u, var_1.a, 0u) % vec4<u32>(32u))) << (~vec4<u32>(49185u, 89852u, global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11620u, 18u)], 18u)], 18u)]) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1918f, -1446f))) > var_0.b.x), vec4<i32>(-reverseBits(17547i << (var_1.a % 32u)), ~(-global3.x), ~countOneBits(-23836i), global3.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.c.a.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(892f, var_0.b.x, var_1.c.a.b.x, -559f)))))));
}

