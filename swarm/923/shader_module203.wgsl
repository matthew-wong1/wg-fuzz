struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 40924u);

var<private> global2: vec2<i32> = vec2<i32>(38396i, i32(-2147483648));

var<private> global3: i32;

var<private> global4: array<i32, 11>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<i32> {
    global4 = array<i32, 11>();
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(min(~_wgslsmith_sub_u32(arg_1.d, 14144u), ~u_input.e), ~4294967295u), min(global1.zx, ~firstTrailingBit(vec2<u32>(u_input.e, global0.x))), ~select(vec2<u32>(~global1.x, ~1u), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(58171u, arg_1.d), vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.e, 20506u)), !arg_1.c.x));
    global2 = -arg_1.a;
    let var_1 = arg_1;
    var var_2 = Struct_2(var_1, -_wgslsmith_mult_i32(abs(arg_1.a.x), global2.x));
    return u_input.c;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> Struct_3 {
    global3 = 39032i;
    var var_0 = Struct_2(Struct_1(firstLeadingBit(-func_3(vec2<bool>(true, true), Struct_1(arg_1.wx, global1.x, vec2<bool>(true, false), u_input.e))), _wgslsmith_sub_u32(~global1.x, u_input.e), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), 21889u), -global2.x);
    global1 = ~_wgslsmith_mult_vec3_u32(~global0.xwx, ~vec3<u32>(1u, arg_0, ~1u));
    var var_1 = firstTrailingBit(vec3<i32>(u_input.b << (_wgslsmith_mod_u32(global1.x, arg_0) % 32u), -1i, ~(~var_0.b)) | _wgslsmith_sub_vec3_i32(arg_1.wzy, vec3<i32>(arg_1.x & 16829i, abs(arg_1.x), 2147483647i)));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, ~u_input.e, global1.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.e, 0u), global1.x) >> (4294967295u % 32u)), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 1u, global0.x)), ~(vec4<u32>(0u, global1.x, global0.x, 7246u) & vec4<u32>(global0.x, 19430u, var_0.a.b, 1u))));
    return Struct_3(var_0.a.c.x, Struct_2(var_0.a, u_input.a), var_0.a, Struct_2(var_0.a, _wgslsmith_add_i32(min(_wgslsmith_add_i32(-33348i, 3706i), -2147483647i), -var_0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = ~firstLeadingBit(~(~vec2<u32>(global1.x, 4294967295u)) ^ (select(vec2<u32>(29340u, var_0.a.b), vec2<u32>(0u, arg_0.c.d), var_0.a.c.x) | global1.zx));
    return arg_2.a;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_sub_u32(11359u, firstLeadingBit(74487u));
    let var_2 = -(~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(min(arg_0.a.a, vec2<i32>(global2.x, -20389i)), ~vec2<i32>(global4[_wgslsmith_index_u32(0u, 11u)], u_input.a)), vec2<i32>(arg_0.a.a.x, 17949i) << (~vec2<u32>(0u, arg_0.a.b) % vec2<u32>(32u))));
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), 36859u, ~(~4294967295u)), abs(firstTrailingBit(vec3<u32>(arg_0.a.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, u_input.e), global0.xxz), 1u))));
    let var_3 = all(vec4<bool>(arg_0.a.c.x, false, true, !arg_0.a.c.x)) | false;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(~30808u, 11u)], -956i, arg_0.a.a.x), vec3<i32>(~(arg_0.a.a.x << (0u % 32u)), ~36002i, ~global4[_wgslsmith_index_u32(~u_input.e, 11u)])) ^ _wgslsmith_add_i32(-(i32(-1i) * -u_input.d), abs(abs(_wgslsmith_sub_i32(42728i, 26813i))));
}

fn func_1() -> vec2<bool> {
    global3 = func_5(Struct_2(func_4(func_2(global0.x, vec4<i32>(-4897i, u_input.c.x, -1i, u_input.c.x), _wgslsmith_f_op_f32(-1000f * 1324f), 1205f), Struct_2(func_2(global1.x, vec4<i32>(global2.x, global2.x, 9802i, -14155i), -267f, -1000f).d.a, global4[_wgslsmith_index_u32(0u, 11u)]), Struct_2(Struct_1(vec2<i32>(2147483647i, -1i), 4294967295u, vec2<bool>(true, true), 47637u), 2929i & global4[_wgslsmith_index_u32(global0.x, 11u)]), func_2(func_2(u_input.e, vec4<i32>(1i, global2.x, u_input.c.x, -2147483647i), 2517f, 624f).c.b, select(vec4<i32>(-34559i, -17953i, global2.x, global2.x), vec4<i32>(u_input.b, 0i, u_input.c.x, -41962i), false), -801f, _wgslsmith_f_op_f32(226f * -2228f)).d.a), countOneBits(u_input.c.x)));
    var var_0 = ~_wgslsmith_mult_u32(39381u, _wgslsmith_add_u32(global1.x, u_input.e));
    let var_1 = ~global1.x;
    var_0 = 70193u ^ ((global1.x >> ((func_4(Struct_3(false, Struct_2(Struct_1(vec2<i32>(global2.x, -15351i), global1.x, vec2<bool>(false, true), 72600u), -1i), Struct_1(u_input.c, global1.x, vec2<bool>(false, true), global1.x), Struct_2(Struct_1(vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(4294967295u, 11u)]), 23003u, vec2<bool>(true, true), var_1), global2.x)), Struct_2(Struct_1(u_input.c, global0.x, vec2<bool>(false, false), 10721u), -1i), Struct_2(Struct_1(u_input.c, 1u, vec2<bool>(true, true), global0.x), 0i), Struct_1(u_input.c, 0u, vec2<bool>(true, true), 4294967295u)).b & min(var_1, 13271u)) % 32u)) & u_input.e);
    var_0 = countOneBits(abs(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.e, 47161u)), ~(~u_input.e))));
    return vec2<bool>(any(vec2<bool>(true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1000f - -495f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, -665f, -137f, 916f)), all(vec3<bool>(true, true, false)))), vec4<f32>(_wgslsmith_f_op_f32(select(621f, -359f, false)), _wgslsmith_f_op_f32(-423f - -864f), -787f, _wgslsmith_div_f32(-736f, -472f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-510f, _wgslsmith_f_op_f32(f32(-1f) * -1126f), -740f, -1293f)))));
    global3 = -global2.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1);
    let var_3 = Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(-17928i, -17529i), 1u, func_1(), global1.x), -global2.x);
    let var_4 = func_3(var_3.a.c, func_2(u_input.e >> (u_input.e % 32u), vec4<i32>(var_3.b ^ u_input.b, func_5(Struct_2(var_3.a, 44856i)), -global2.x, global4[_wgslsmith_index_u32(global1.x, 11u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, 104f), var_1.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x))))), -1050f).c);
    let var_5 = Struct_3(!func_4(Struct_3(true, Struct_2(var_3.a, var_3.a.a.x), func_2(u_input.e, vec4<i32>(1i, -2147483647i, -27201i, global4[_wgslsmith_index_u32(u_input.e, 11u)]), -502f, 2093f).b.a, Struct_2(var_3.a, 0i)), func_2(global1.x, firstTrailingBit(vec4<i32>(-2587i, -2147483647i, 1i, -1i)), _wgslsmith_f_op_f32(abs(1087f)), var_1.x).d, Struct_2(func_2(global0.x, vec4<i32>(var_3.a.a.x, global4[_wgslsmith_index_u32(4294967295u, 11u)], 2147483647i, var_4.x), 959f, var_2.x).c, global4[_wgslsmith_index_u32(global1.x, 11u)] >> (global0.x % 32u)), Struct_1(var_4 & u_input.c, 32949u, vec2<bool>(var_3.a.c.x, var_3.a.c.x), global1.x)).c.x, func_2(firstTrailingBit(global0.x), ~firstLeadingBit(~vec4<i32>(27817i, var_3.a.a.x, -37658i, 10476i)), _wgslsmith_f_op_f32(-867f - _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(var_2.x, -162f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - var_2.x)))).d, var_3.a, func_2(_wgslsmith_div_u32(abs(0u), ~u_input.e) & ~_wgslsmith_mod_u32(u_input.e, var_3.a.b), vec4<i32>(1i, -49003i, ~(i32(-1i) * -36371i), (-2147483647i | u_input.d) | abs(-8397i)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f - -136f)))).b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(38893u << (~var_5.d.a.d % 32u), ~51202u, firstTrailingBit(~1u), var_3.a.b), ~global2.x);
}

