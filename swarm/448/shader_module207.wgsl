struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(-842f, 1324f, 868f, -2202f, 1170f, 1176f);

var<private> global1: array<i32, 25> = array<i32, 25>(-19942i, -44506i, 48429i, i32(-2147483648), 2147483647i, 1i, 2147483647i, -25494i, 6992i, 0i, 2147483647i, i32(-2147483648), -1i, 25941i, -14196i, 1i, -1i, 2147483647i, 9973i, -33293i, i32(-2147483648), 45977i, 22098i, 67479i, -1i);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = -2147483647i;
    let var_1 = u_input.b & reverseBits(0u);
    global0 = array<f32, 6>();
    let var_2 = Struct_2(Struct_1(abs(~_wgslsmith_sub_i32(2147483647i, 4914i)), global2.b), u_input.c.xwz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31339u, 6u)] * _wgslsmith_f_op_f32(select(629f, -484f, true))) * 1000f), _wgslsmith_div_f32(-560f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 6u)] - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(391f + global0[_wgslsmith_index_u32(4294967295u, 6u)]))))), 8404i);
    var var_3 = _wgslsmith_f_op_f32(sign(var_2.d));
    return _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u & var_1, var_1, reverseBits(~1u)), vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(countOneBits(~var_2.b.yy), ~(var_2.b.xz | var_2.b.yx)), 56771u), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 39679u, var_2.b.x) | vec3<u32>(1u, 41409u, 43388u), firstLeadingBit(vec3<u32>(u_input.b, 56497u, u_input.e.x))) << (countOneBits(vec3<u32>(countOneBits(var_1), var_1, ~var_2.b.x)) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-1418f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f - global0[_wgslsmith_index_u32(arg_0.b.x, 6u)]) + 1065f));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(10682u), firstTrailingBit(~(~0u))), 25u)], vec4<bool>(all(vec3<bool>(true, true, true)), all(select(select(vec4<bool>(global2.b.x, true, arg_0.a.b.x, global2.b.x), vec4<bool>(false, global2.b.x, false, global2.b.x), vec4<bool>(false, true, false, global2.b.x)), arg_0.a.b, global2.b.x)), true, global2.b.x && !(true || global2.b.x)));
    var var_2 = Struct_2(arg_0.a, u_input.c.xzz, arg_0.d, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~u_input.d.x, 6u)], arg_0.c)), ~_wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(-2147483647i, 1881i, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(global2.a, 2147483647i, global2.a), vec3<i32>(global2.a, 1i, var_1.a)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(global2.a, u_input.a.x, arg_0.e), vec3<i32>(global2.a, -1i, global1[_wgslsmith_index_u32(u_input.b, 25u)]))));
    var_2 = arg_0;
    var var_3 = select(vec2<u32>(4294967295u, arg_0.b.x), ~u_input.e.zy, -1i <= ((i32(-1i) * -24908i) >> (firstTrailingBit(var_2.b.x) % 32u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(20552u, 6u)], arg_1, global0[_wgslsmith_index_u32(1u, 6u)]), vec3<f32>(global0[_wgslsmith_index_u32(53656u, 6u)], -730f, 803f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(442f, -563f, arg_0.d) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -811f, global0[_wgslsmith_index_u32(36860u, 6u)])))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1486f, -1360f, global0[_wgslsmith_index_u32(arg_0.b.x, 6u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~0u), 6u)]), _wgslsmith_div_f32(var_2.d, 1333f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c), arg_1, false))));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 6>();
    var var_0 = _wgslsmith_sub_i32(-69695i, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(1u, 25u)], -48127i, global2.a), vec4<i32>(39567i, 2147483647i, 2140i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 25u)], u_input.a.x, global2.a, global2.a))), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.e.x, 25u)], global2.a) << (u_input.c.x % 32u)), ((global2.a << (u_input.c.x % 32u)) & -global2.a) ^ 1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1208f, -1308f, 1299f) - vec3<f32>(-707f, 241f, 551f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-978f, global0[_wgslsmith_index_u32(1u, 6u)], 514f)))) + _wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(-2147483647i, global2.b), func_3(global2.b.x), _wgslsmith_f_op_f32(sign(-481f)), -645f, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -75245i), u_input.a)), 2515f))));
    global2 = Struct_1(-2147483647i, global2.b);
    let var_2 = any(select(vec3<bool>(!global2.b.x, select(global2.b.x, all(global2.b.wy), false), false), vec3<bool>(global2.b.x, -1149f != var_1.x, any(global2.b.zz)), vec3<bool>(global2.b.x, true, any(global2.b.zw))));
    return Struct_1((_wgslsmith_dot_vec2_i32(~u_input.a, ~u_input.a) >> (1u % 32u)) & (reverseBits(-global2.a) ^ ~1i), global2.b);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    return Struct_2(func_2(), firstLeadingBit(max(select(_wgslsmith_mult_vec3_u32(u_input.e.zww, vec3<u32>(4294967295u, 63344u, arg_2.x)), arg_2.zyw << (arg_2.ywz % vec3<u32>(32u)), !global2.b.zzw), u_input.c.wxw)), global0[_wgslsmith_index_u32(arg_2.x, 6u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(0i, vec4<bool>(global2.b.x, false, false, false)), arg_2.wxy, 1144f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], -2147483647i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))).x * global0[_wgslsmith_index_u32(~(~1u), 6u)]), _wgslsmith_f_op_f32(-764f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(429f)) + -1888f))), min(i32(-1i) * -2147483647i, 18316i));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(func_1(arg_0.a.b.x, false, ~u_input.c & _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(arg_0.b.x, arg_0.b.x, 35910u, u_input.e.x))).d, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~13419u, 6u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.b.x, 6u)], arg_0.d), global0[_wgslsmith_index_u32(~1u, 6u)])));
    let var_1 = select(u_input.a, vec2<i32>(-1i, -11660i), vec2<bool>(global2.b.x, true));
    var var_2 = u_input.d;
    var var_3 = arg_0.a.b.x;
    let var_4 = 0u;
    return Struct_2(arg_0.a, arg_0.b, var_0.x, -1896f, _wgslsmith_mod_i32(abs(global2.a), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(u_input.e.wwx, u_input.c.xyw, !vec3<bool>(false, global2.b.x, false)));
    global0 = array<f32, 6>();
    var var_1 = false;
    var var_2 = func_5(func_1(!(global0[_wgslsmith_index_u32(u_input.e.x, 6u)] != _wgslsmith_f_op_f32(round(149f))), true, ~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 55371u))));
    var_2 = Struct_2(func_1(select(true, false, any(var_2.a.b.xw)), false, u_input.e).a, _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(min(u_input.c.wyz, ~vec3<u32>(24949u, 15644u, var_2.b.x)), ~u_input.c.xxx), u_input.c.zwz, (vec3<u32>(var_0.x, var_2.b.x, 1u) >> (var_2.b % vec3<u32>(32u))) | vec3<u32>(var_0.x, var_0.x, ~var_2.b.x)), -603f, -1931f, select(var_2.a.a ^ ~var_2.a.a, -26861i, !(!var_2.a.b.x) | false));
    var_1 = var_2.a.b.x;
    let var_3 = Struct_2(func_2(), ~(~abs(var_2.b) >> (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, var_0.x, var_2.b.x)), vec3<u32>(u_input.d.x, 17739u, u_input.c.x), u_input.e.wzz) % vec3<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(54547u, 6u)], 885f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(29986u, 6u)]))))), var_2.c, _wgslsmith_dot_vec4_i32(firstLeadingBit(-select(vec4<i32>(global2.a, global1[_wgslsmith_index_u32(u_input.b, 25u)], -10896i, 38059i), vec4<i32>(var_2.a.a, u_input.a.x, global2.a, global1[_wgslsmith_index_u32(u_input.b, 25u)]), var_2.a.b)), vec4<i32>(func_5(Struct_2(Struct_1(13070i, vec4<bool>(false, var_2.a.b.x, false, var_2.a.b.x)), vec3<u32>(var_0.x, 60554u, var_2.b.x), global0[_wgslsmith_index_u32(4294967295u, 6u)], var_2.c, global1[_wgslsmith_index_u32(13845u, 25u)])).e, -1i >> (0u % 32u), 1i, global1[_wgslsmith_index_u32(9348u, 25u)])));
    global1 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(func_3(global2.b.x).zy & var_3.b.xx, (-u_input.a.x << (_wgslsmith_dot_vec4_u32(min(u_input.e, vec4<u32>(u_input.b, var_0.x, var_2.b.x, 17927u)), vec4<u32>(var_2.b.x, 1u, 91662u, 4294967295u)) % 32u)) >> (4294967295u % 32u));
}

