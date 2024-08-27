struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, true, true, true, false, true, false, true, true, true, true, false, true, true, false, true, false, true, false, false, true, true);

var<private> global1: array<vec2<i32>, 14>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, true, true, true, true, false, false, false, true, false, true, false, true);

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(true, Struct_1(true, -349f, 0i, 338f, 11726i), Struct_1(true, 2060f, -30188i, -923f, -46360i), vec3<u32>(125005u, 4294967295u, 37627u)), vec4<u32>(78072u, 4294967295u, 67211u, 27476u)), Struct_4(Struct_3(false, Struct_1(false, 756f, 0i, -1873f, -32313i), Struct_1(true, 500f, -1i, 627f, 30163i), vec3<u32>(14336u, 1u, 21875u)), vec4<u32>(33875u, 4294967295u, 1u, 9524u)), Struct_4(Struct_3(false, Struct_1(true, 294f, -4967i, -520f, 16329i), Struct_1(true, 1578f, -28037i, -814f, 0i), vec3<u32>(4294967295u, 0u, 36036u)), vec4<u32>(38191u, 1u, 23674u, 1u)), Struct_4(Struct_3(false, Struct_1(true, 448f, 3962i, 1000f, -13086i), Struct_1(false, -310f, 39269i, 923f, -18679i), vec3<u32>(15272u, 74262u, 20677u)), vec4<u32>(7006u, 35502u, 55379u, 21007u)), Struct_4(Struct_3(false, Struct_1(false, -311f, 0i, 1000f, 0i), Struct_1(false, -112f, 2147483647i, -1139f, -34427i), vec3<u32>(0u, 41792u, 44689u)), vec4<u32>(88295u, 18540u, 33885u, 1u)), Struct_4(Struct_3(true, Struct_1(true, 1000f, -13441i, -129f, 2147483647i), Struct_1(false, 1066f, -1i, -1040f, 2147483647i), vec3<u32>(62314u, 0u, 63668u)), vec4<u32>(1u, 61110u, 68244u, 1u)), Struct_4(Struct_3(false, Struct_1(false, 257f, -40048i, -718f, i32(-2147483648)), Struct_1(false, -162f, 87250i, -210f, 0i), vec3<u32>(19435u, 0u, 50786u)), vec4<u32>(46235u, 38404u, 1u, 1u)), Struct_4(Struct_3(true, Struct_1(true, 443f, -1i, 1000f, -1009i), Struct_1(false, -859f, 21198i, -659f, 1i), vec3<u32>(28167u, 33459u, 15580u)), vec4<u32>(7029u, 0u, 0u, 34663u)), Struct_4(Struct_3(true, Struct_1(true, 1330f, -1i, -714f, 23i), Struct_1(false, -451f, 2891i, 693f, 1i), vec3<u32>(4795u, 14134u, 8650u)), vec4<u32>(0u, 37257u, 18950u, 0u)));

var<private> global4: array<f32, 5> = array<f32, 5>(951f, 1612f, 253f, -327f, 996f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    let var_0 = arg_0;
    global1 = array<vec2<i32>, 14>();
    let var_1 = Struct_4(Struct_3(global2[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(var_0, arg_0) >> (u_input.b % 32u), 2860u), 13u)], Struct_1(true, -589f, firstTrailingBit(select(-1i, 1i, false)), global4[_wgslsmith_index_u32(4294967295u, 5u)], -2147483647i), Struct_1(any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(arg_0, 24u)], false), vec3<bool>(false, global2[_wgslsmith_index_u32(var_0, 13u)], global2[_wgslsmith_index_u32(var_0, 13u)]))), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0, _wgslsmith_div_u32(u_input.a, 14799u), abs(var_0)), 5u)], countOneBits(-11492i >> (var_0 % 32u)), global4[_wgslsmith_index_u32(1u, 5u)], -11950i), ~vec3<u32>(29497u, arg_0, ~46059u)), vec4<u32>(var_0, arg_0, u_input.c.x, 1u));
    var var_2 = var_1.a.b;
    global4 = array<f32, 5>();
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4[_wgslsmith_index_u32(32781u, 5u)], var_1.a.b.d, -846f, -140f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1159f, var_1.a.c.b, global4[_wgslsmith_index_u32(arg_0, 5u)], global4[_wgslsmith_index_u32(var_0, 5u)]))))))))));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global0 = array<bool, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(arg_0.x));
    var var_1 = !select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x | 89379u, 24u)], false, all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(arg_0.x, 13u)]))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(6201u, 24u)], true)), vec3<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 24u)])), true, global2[_wgslsmith_index_u32(arg_0.x, 13u)])), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, global0[_wgslsmith_index_u32(58846u, 24u)], true, true))), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(25486u, 24u)], true, global2[_wgslsmith_index_u32(arg_0.x, 13u)])), vec3<bool>(global2[_wgslsmith_index_u32(~4294967295u, 13u)], true, false), false));
    var var_2 = Struct_2(40557i, arg_0.xy);
    let var_3 = select(any(!(!select(var_1.zx, vec2<bool>(global2[_wgslsmith_index_u32(var_2.b.x, 13u)], false), global0[_wgslsmith_index_u32(43750u, 24u)]))), all(vec4<bool>(all(var_1.zz), global2[_wgslsmith_index_u32(4294967295u, 13u)], var_1.x, any(!vec4<bool>(true, global0[_wgslsmith_index_u32(22875u, 24u)], global2[_wgslsmith_index_u32(var_2.b.x, 13u)], var_1.x)))), true);
    return firstLeadingBit(0u);
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_4, 9>();
    var var_0 = Struct_2(-9291i, vec2<u32>(~91535u, func_2(u_input.c)) & _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u & u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(12128u, u_input.a, 1u, u_input.d.x), vec4<u32>(35349u, 15123u, u_input.a, u_input.c.x))), ~_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.b, 4294967295u))));
    let var_1 = Struct_2(-24877i, vec2<u32>(64617u, reverseBits(_wgslsmith_mod_u32(1u, ~var_0.b.x))));
    global3 = array<Struct_4, 9>();
    var var_2 = global2[_wgslsmith_index_u32(u_input.d.x, 13u)];
    return Struct_3(true, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 13u)] || any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(40051u, 13u)], global2[_wgslsmith_index_u32(57005u, 13u)], global0[_wgslsmith_index_u32(31140u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(996u, 13u)], true, false, false), false)), _wgslsmith_f_op_f32(-881f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-306f * global4[_wgslsmith_index_u32(var_0.b.x, 5u)])))), firstTrailingBit(var_1.a) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 2147483647i, var_0.a, -6691i), vec4<i32>(-72367i, var_1.a, var_1.a, 15090i) | vec4<i32>(2147483647i, var_1.a, 0i, var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1578f * -1817f)), ~var_1.a), Struct_1(global2[_wgslsmith_index_u32(var_0.b.x, 13u)], 1725f, min(var_0.a | 0i, _wgslsmith_div_i32(91340i, 2147483647i)) ^ var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(20390u, 5u)] + global4[_wgslsmith_index_u32(32136u, 5u)]) - -395f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(233f - -1549f) * global4[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_clamp_i32(abs(-5336i), firstTrailingBit(-var_0.a), select(_wgslsmith_sub_i32(-1i, -2147483647i), var_1.a, var_1.b.x == u_input.d.x))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0;
    global3 = array<Struct_4, 9>();
    global4 = array<f32, 5>();
    let var_2 = Struct_2(_wgslsmith_mult_i32(~(~select(var_0.b.c, var_0.c.e, false)), ~2147483647i), ~_wgslsmith_sub_vec2_u32(var_0.d.yz, ~var_0.d.yy >> (~vec2<u32>(28801u, 1u) % vec2<u32>(32u))));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(72413u, _wgslsmith_div_u32(~var_1.d.x, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.d, vec3<u32>(0u, var_0.d.x, 1u)), vec3<u32>(var_2.b.x, u_input.b, 29286u)) ^ (var_0.d.x << ((var_1.d.x & 4787u) % 32u))) >> (4294967295u % 32u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(233f, -1410f, var_0.b.d) - vec3<f32>(var_1.b.b, var_0.c.b, var_1.c.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, 143f, -835f) - vec3<f32>(var_1.c.b, var_3.a.c.d, 1560f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, 2340f, var_0.b.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-961f, var_1.c.b, var_0.c.d)))))));
}

