struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 4> = array<i32, 4>(-1i, 0i, 0i, 258i);

var<private> global2: Struct_1;

var<private> global3: array<i32, 30> = array<i32, 30>(1i, 2147483647i, 1i, -1i, 15029i, 1i, -1i, 2147483647i, 0i, -47316i, 0i, 1i, i32(-2147483648), 8864i, 31780i, 53257i, -13483i, 1i, -6738i, -36175i, 1i, 0i, -1i, i32(-2147483648), i32(-2147483648), 11679i, 2147483647i, i32(-2147483648), -1i, 20456i);

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_2.a, vec2<f32>(_wgslsmith_div_f32(407f, 763f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f + -243f)), _wgslsmith_f_op_f32(-arg_2.c))), select(arg_0.c, arg_0.c, !vec4<bool>(u_input.a > 2147483647i, any(arg_0.c), any(arg_0.c.xzx), true)), Struct_1(-global2.a, 58757u, _wgslsmith_f_op_f32(540f + arg_2.c), firstLeadingBit(firstTrailingBit(arg_1)), ~(-(arg_0.d.e ^ vec2<i32>(1i, 0i)))), arg_2);
    global4 = array<Struct_1, 27>();
    global2 = arg_0.e;
    global1 = array<i32, 4>();
    global2 = Struct_1(firstLeadingBit(var_0.e.a), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.e.c))), vec3<i32>(-1i) * -abs(vec3<i32>(global2.a.x, var_0.e.a.x, 5050i) | global2.a.wzw), ~_wgslsmith_mult_vec2_i32(arg_2.d.zy, arg_2.e));
    return 50351u;
}

fn func_2() -> vec2<u32> {
    var var_0 = global4[_wgslsmith_index_u32(24963u, 27u)];
    global1 = array<i32, 4>();
    var var_1 = global4[_wgslsmith_index_u32(countOneBits(~(50258u ^ func_3(Struct_2(global2.a, vec2<f32>(var_0.c, 1000f), vec4<bool>(false, false, true, false), Struct_1(var_0.a, 4294967295u, -1602f, vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(23999u, 4u)], 6404i), vec2<i32>(u_input.a, var_0.a.x)), global4[_wgslsmith_index_u32(4294967295u, 27u)]), global2.d, Struct_1(vec4<i32>(var_0.e.x, global3[_wgslsmith_index_u32(98107u, 30u)], 2147483647i, 2147483647i), global2.b, global2.c, vec3<i32>(var_0.d.x, u_input.a, -18483i), var_0.e)))), 27u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-233f))) * _wgslsmith_div_f32(1214f, var_1.c)) * 1059f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-318f)) * var_0.c))))), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f)), -102f, any(vec3<bool>(true, true, false)) != true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(439f)))));
    global4 = array<Struct_1, 27>();
    return vec2<u32>(0u, reverseBits(global2.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(47082i << (func_2().x % 32u), global2.a.x, _wgslsmith_sub_i32(-1i, max(global2.a.x << (1u % 32u), -global2.a.x)), ~global3[_wgslsmith_index_u32(0u | global2.b, 30u)] & ~(global1[_wgslsmith_index_u32(arg_2.b, 4u)] >> (arg_2.b % 32u))) | -global2.a;
    var_0 = _wgslsmith_sub_vec4_i32(reverseBits(reverseBits(global2.a) & ~firstTrailingBit(vec4<i32>(-41174i, var_0.x, 0i, u_input.a))), vec4<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(48485u, 1u), 30u)] << (~arg_2.b % 32u), ~global1[_wgslsmith_index_u32(~arg_2.b, 4u)], global3[_wgslsmith_index_u32(abs(reverseBits(20828u)), 30u)], ~(~592i)) >> (_wgslsmith_div_vec4_u32(~u_input.c, vec4<u32>(_wgslsmith_div_u32(68501u, global2.b), ~1u, ~global2.b, _wgslsmith_div_u32(4294967295u, 30058u))) % vec4<u32>(32u)));
    let var_1 = any(select(!vec2<bool>(u_input.b < 0u, false), vec2<bool>(!(global2.c <= global2.c), select(any(vec4<bool>(false, true, true, false)), true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_2 = all(vec2<bool>(true, false));
    global3 = array<i32, 30>();
    return Struct_2((global2.a | _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -43419i, 3539i, -14461i), _wgslsmith_mult_vec4_i32(global2.a, vec4<i32>(-2147483647i, -2147483647i, -2147483647i, var_0.x)), vec4<i32>(41532i, -1i, arg_0.x, arg_0.x))) & select(vec4<i32>(-1i, ~arg_1.x, global3[_wgslsmith_index_u32(45681u, 30u)], -12431i | global1[_wgslsmith_index_u32(0u, 4u)]), arg_2.a, !(!vec4<bool>(var_1, false, true, var_1))), vec2<f32>(388f, arg_2.c), select(!vec4<bool>(true, var_1, var_2, !var_2), vec4<bool>(var_1 || select(var_1, var_1, false), true, var_1, var_2), select(select(vec4<bool>(true, var_2, var_1, var_2), vec4<bool>(var_1, var_2, var_2, var_2), false), !(!vec4<bool>(var_1, true, var_2, true)), !vec4<bool>(false, var_1, true, false))), Struct_1(vec4<i32>(24505i, ~(-36774i), -_wgslsmith_mod_i32(2147483647i, global3[_wgslsmith_index_u32(801u, 30u)]), i32(-1i) * -u_input.a), global2.b << ((~arg_2.b >> (364u % 32u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c - 241f))) * -1000f), vec3<i32>(reverseBits(-17868i), 2673i, var_0.x), var_0.xw), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_2.d.x, -40053i, arg_0.x) | _wgslsmith_mult_vec4_i32(arg_2.a, global2.a), global2.a), global2.b ^ (u_input.b >> (u_input.c.x % 32u)), -1255f, vec3<i32>(-2147483647i, countOneBits(_wgslsmith_div_i32(arg_1.x, 25097i)), i32(-1i) * -37464i), vec2<i32>(4718i, -27851i)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = Struct_1(firstTrailingBit(vec4<i32>(firstTrailingBit(i32(-1i) * -2147483647i), ~global3[_wgslsmith_index_u32(~1u, 30u)], 1i, 1i)), reverseBits(92161u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.e.c, _wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_mult_vec3_i32(vec3<i32>(min(u_input.a, ~global1[_wgslsmith_index_u32(86865u, 4u)]), -16175i & countOneBits(arg_2.d.d.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2.d.b, 1u), 30u)]), abs(vec3<i32>(global1[_wgslsmith_index_u32(53579u, 4u)] & global3[_wgslsmith_index_u32(global2.b, 30u)], -arg_2.d.e.x, global1[_wgslsmith_index_u32(arg_2.e.b, 4u)]))), _wgslsmith_mult_vec2_i32(countOneBits(countOneBits(vec2<i32>(arg_2.d.d.x, arg_1))), reverseBits(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.a.x, arg_2.e.e.x), vec2<i32>(arg_2.a.x, arg_2.a.x)))));
    var var_2 = func_4(firstTrailingBit(min(select(vec2<i32>(2533i, var_1.a.x), arg_2.d.e, vec2<bool>(true, arg_2.c.x)), reverseBits(arg_2.a.zz))), vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, min(1u, 41478u)) << (~(~u_input.b) % 32u), 30u)], global2.a.x), Struct_1(var_0.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_0.e.b), func_2()), firstLeadingBit(~6283u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-200f - -508f))), vec3<i32>(-2147483647i, 8295i << (_wgslsmith_mult_u32(arg_2.d.b, 0u) % 32u), -1i), var_0.d.d.zz));
    var_2 = func_4(-firstTrailingBit(~firstLeadingBit(vec2<i32>(-5965i, -2147483647i))), global2.e, var_1);
    var var_3 = 13392i;
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_1.e.a;
    var var_1 = 50527u;
    var var_2 = global2.a.xww & vec3<i32>(min(1i, global3[_wgslsmith_index_u32(~1u, 30u)]), arg_0.d.a.x, -2147483647i);
    let var_3 = func_1(-578f, 5567i, func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_f_op_f32(f32(-1f) * -769f))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(73928u, 4294967295u), 4u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 481f)), global3[_wgslsmith_index_u32(u_input.c.x, 30u)], arg_0)));
    let var_4 = select(u_input.a, 61317i, var_3.c.x);
    return arg_0.b.x;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(1286f - _wgslsmith_f_op_f32(ceil(arg_1.b.x)));
    let var_1 = -14343i;
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1172f) + -933f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-3116f, 701f) * 591f))), -1i >> ((u_input.c.x | 20128u) % 32u), arg_1);
    global4 = array<Struct_1, 27>();
    var var_3 = Struct_2(vec4<i32>(arg_0.e.d.x, global2.d.x, -3742i, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(71358u, global2.b, 0u, 1u), select(vec4<u32>(0u, 22210u, 44694u, arg_1.d.b), u_input.c, arg_2)), 30u)]), arg_1.b, vec4<bool>(true, select(all(arg_1.c.xw), true, false), var_2.c.x || arg_2.x, all(!func_4(vec2<i32>(20985i, arg_3), var_2.e.e, Struct_1(arg_0.d.a, 97221u, var_2.b.x, vec3<i32>(var_1, arg_1.e.a.x, 30014i), vec2<i32>(0i, global2.e.x))).c.wzy)), func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(var_2.d.a, firstLeadingBit(arg_0.d.a)), global3[_wgslsmith_index_u32(~0u, 30u)] << (select(global2.b, 4294967295u, arg_1.c.x) % 32u)), ~vec2<i32>(_wgslsmith_dot_vec4_i32(arg_0.a, vec4<i32>(arg_3, 51330i, 1i, arg_3)), _wgslsmith_sub_i32(23573i, 0i)), global4[_wgslsmith_index_u32(25112u, 27u)]).e, Struct_1(arg_1.d.a, (~arg_0.d.b & max(arg_1.e.b, 130583u)) & firstLeadingBit(max(0u, 34123u)), _wgslsmith_f_op_f32(abs(893f)), vec3<i32>(-_wgslsmith_add_i32(arg_1.e.a.x, arg_0.d.d.x), -19102i & ~var_2.e.e.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, -1i)), var_2.a.yy));
    return StorageBuffer(min((min(-13968i, 2147483647i) << (_wgslsmith_mod_u32(arg_1.d.b, 753u) % 32u)) & 9704i, ~2147483647i), -976f, select(u_input.c.yzy, min(~(~u_input.c.ywy), abs(u_input.c.wxx) ^ u_input.c.ywz), arg_1.c.yxx), ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.wx, u_input.c.zz), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, 53235u)), countOneBits(select(u_input.c.wy, vec2<u32>(u_input.b, 93879u), true)), ~(~u_input.c.ww))));
    let x = u_input.a;
    s_output = func_6(Struct_2(-vec4<i32>(-30814i, -global3[_wgslsmith_index_u32(u_input.c.x, 30u)], -1i, ~global3[_wgslsmith_index_u32(u_input.c.x, 30u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.c, global2.c), vec2<f32>(1000f, global2.c))))), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.c > global2.c, true, true, false), vec4<bool>(true, true, true, true)), Struct_1(global2.a, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + -1582f) + 1000f), global2.a.zxw, -global2.e), global4[_wgslsmith_index_u32(var_0, 27u)]), Struct_2(vec4<i32>(-1i) * -abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -43414i, -50336i, u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_2(global2.a, vec2<f32>(1000f, 238f), vec4<bool>(true, true, false, false), global4[_wgslsmith_index_u32(global2.b, 27u)], global4[_wgslsmith_index_u32(1u, 27u)]), func_1(global2.c, u_input.a, Struct_2(vec4<i32>(2147483647i, 1508i, 83121i, global1[_wgslsmith_index_u32(global2.b, 4u)]), vec2<f32>(global2.c, 1108f), vec4<bool>(true, false, false, true), global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(var_0, 27u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c, global2.c, global2.c, global2.c))))), global2.c), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), func_4(global2.d.xy, global2.d.zz, Struct_1(vec4<i32>(6773i, u_input.a, global2.e.x, -12614i), 11415u, global2.c, vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 30u)], global2.a.x, -2147483647i), vec2<i32>(2147483647i, -23269i))).c), !func_4(global2.d.zx, vec2<i32>(-2147483647i, -1i), global4[_wgslsmith_index_u32(var_0, 27u)]).c, any(vec2<bool>(true, true))), func_4(~(-global2.e), (vec2<i32>(global3[_wgslsmith_index_u32(var_0, 30u)], 10528i) << (vec2<u32>(var_0, 3524u) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(global2.e, global2.d.xz, vec2<i32>(0i, u_input.a)), func_4(global2.a.zx, global2.d.xx, func_1(1000f, global2.d.x, Struct_2(global2.a, vec2<f32>(1000f, 455f), vec4<bool>(false, false, false, true), Struct_1(vec4<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(24901u, 30u)], global3[_wgslsmith_index_u32(global2.b, 30u)]), 4486u, -557f, vec3<i32>(global1[_wgslsmith_index_u32(var_0, 4u)], 2147483647i, u_input.a), vec2<i32>(global1[_wgslsmith_index_u32(32744u, 4u)], -29637i)), global4[_wgslsmith_index_u32(var_0, 27u)])).d).d).e, func_4(vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(global2.b, 4u)] << (u_input.c.x % 32u)), _wgslsmith_mult_vec2_i32(global2.d.xx, global2.e), func_4(_wgslsmith_add_vec2_i32(global2.a.ww, global2.a.yz), func_4(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], u_input.a), vec2<i32>(global3[_wgslsmith_index_u32(1u, 30u)], u_input.a), global4[_wgslsmith_index_u32(var_0, 27u)]).d.a.ww, func_1(995f, global3[_wgslsmith_index_u32(1u, 30u)], Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(global2.b, 30u)], -1i, -1i), vec2<f32>(global2.c, 682f), vec4<bool>(true, true, false, false), global4[_wgslsmith_index_u32(global2.b, 27u)], Struct_1(global2.a, 3341u, 527f, vec3<i32>(0i, -38269i, global2.e.x), global2.a.yz))).e).e).e), vec4<bool>(func_1(global2.c, -(~global2.a.x), Struct_2(~global2.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-148f, global2.c))), func_1(global2.c, global2.a.x, Struct_2(global2.a, vec2<f32>(1451f, global2.c), vec4<bool>(true, true, true, true), global4[_wgslsmith_index_u32(4294967295u, 27u)], Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(var_0, 30u)], global1[_wgslsmith_index_u32(43665u, 4u)], global2.a.x, -2147483647i), global2.b, -677f, vec3<i32>(-53115i, -45916i, global3[_wgslsmith_index_u32(global2.b, 30u)]), vec2<i32>(global3[_wgslsmith_index_u32(15332u, 30u)], 1i)))).c, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, global2.b), 27u)], func_4(vec2<i32>(2147483647i, global2.a.x), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(1u, 4u)]), Struct_1(vec4<i32>(-17045i, -1i, -14005i, -2147483647i), 53684u, 1191f, vec3<i32>(2147483647i, global2.d.x, 11686i), vec2<i32>(global2.a.x, global3[_wgslsmith_index_u32(1u, 30u)]))).d)).c.x, _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(global2.c - 1506f)) > _wgslsmith_f_op_f32(sign(global2.c)), (~u_input.a & global3[_wgslsmith_index_u32(50041u, 30u)]) != ~0i, true), firstTrailingBit(-9793i));
}

