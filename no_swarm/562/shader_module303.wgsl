struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -852f;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), vec4<i32>(1i, 33851i, 1i, 0i), -18313i, true, vec4<i32>(i32(-2147483648), 77350i, 56239i, 44977i)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(22488i, -1i, -12576i, -16855i), 37582i, false, vec4<i32>(-16585i, -1i, -24563i, -18720i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(22144i, 1i, -8725i, i32(-2147483648)), 2147483647i, false, vec4<i32>(i32(-2147483648), -1i, -1i, 1i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-25051i, 14943i, -1i, 2147483647i), 0i, true, vec4<i32>(0i, -1i, 1i, -1i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), 26170i, 48983i), -11732i, true, vec4<i32>(-36371i, -59711i, -1i, 1i)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(18513i, i32(-2147483648), 0i, 3021i), -14042i, true, vec4<i32>(24404i, 37873i, i32(-2147483648), 21949i)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(0i, 0i, -19758i, i32(-2147483648)), 9832i, true, vec4<i32>(2147483647i, i32(-2147483648), 0i, 0i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(1i, 27630i, 2147483647i, i32(-2147483648)), -42850i, false, vec4<i32>(-29846i, -1i, 0i, 1i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(10725i, 14522i, -1i, 2147483647i), 2147483647i, false, vec4<i32>(24022i, 1i, -52320i, 1i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(0i, -29821i, -52364i, 2147483647i), 0i, true, vec4<i32>(i32(-2147483648), -1i, -7375i, -40809i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(38090i, i32(-2147483648), -13330i, -1i), i32(-2147483648), false, vec4<i32>(31040i, -14456i, -1i, 18037i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(1i, 2147483647i, -1i, 49725i), -54380i, true, vec4<i32>(-19649i, -102376i, i32(-2147483648), 40784i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-1i, 1i, 0i, -1i), 0i, false, vec4<i32>(7279i, -44423i, 37137i, -20129i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(0i, -14122i, 0i, i32(-2147483648)), i32(-2147483648), true, vec4<i32>(-1i, -30679i, 39007i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, false), vec4<i32>(-12563i, -36342i, 11432i, 44129i), -1i, false, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -7335i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1i, 30659i, -9441i, 0i), 1i, false, vec4<i32>(i32(-2147483648), -4560i, i32(-2147483648), 2147483647i)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-1i, 8992i, 0i, 1526i), -1i, true, vec4<i32>(14948i, -31203i, 1i, 35439i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(96488i, -39706i, 1i, 2147483647i), -2330i, false, vec4<i32>(-39244i, 2147483647i, -1i, -1i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 5117i, 11575i, -31382i), 44184i, false, vec4<i32>(-51903i, -23286i, 7964i, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-31452i, 62393i, -1i, -26158i), 8234i, false, vec4<i32>(-1i, 18803i, 16625i, 38802i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-4952i, -1i, i32(-2147483648), -50017i), -1i, false, vec4<i32>(-19010i, 33317i, 1i, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(12187i, -36494i, 2147483647i, -1i), -18389i, false, vec4<i32>(17500i, 4187i, 2147483647i, 12922i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-49000i, 40049i, -1i, -1i), 1i, true, vec4<i32>(-27193i, 31851i, i32(-2147483648), 33916i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(23245i, -22628i, -1i, -19744i), 34708i, true, vec4<i32>(i32(-2147483648), -17732i, 1i, 2147483647i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(76106i, 0i, -20833i, 1i), -1i, false, vec4<i32>(12849i, i32(-2147483648), 1i, 1i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-24927i, 68716i, -2173i, -12975i), 12490i, true, vec4<i32>(36726i, 19810i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<bool>(false, true, true), vec4<i32>(3372i, 2147483647i, i32(-2147483648), -14839i), 2147483647i, true, vec4<i32>(2147483647i, 731i, -23448i, 21931i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-30200i, -27313i, 2147483647i, i32(-2147483648)), -11561i, true, vec4<i32>(2147483647i, -48323i, -14275i, 34882i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-32733i, 2147483647i, 13908i, -17791i), -33375i, false, vec4<i32>(2147483647i, 5206i, 3319i, 0i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(11547i, 0i, i32(-2147483648), -49678i), -1378i, false, vec4<i32>(-275i, 0i, 0i, -47974i)));

var<private> global2: Struct_5;

var<private> global3: vec4<f32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 1552f, _wgslsmith_f_op_f32(sign(global3.x)), -335f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(arg_3.c, arg_3.c))))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -792f);
    var var_2 = Struct_3(arg_0.zx, var_0.x);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1491f);
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(12331u, ~4294967295u) << (~u_input.a % 32u), 33562u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_5) -> bool {
    let var_0 = _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 29424u), vec3<u32>(global2.a, 27713u, global2.a) ^ vec3<u32>(1u, arg_1.a, global2.a)), ~(~vec3<u32>(arg_1.a, 1u, 35611u))) >> (vec3<u32>(countOneBits(func_3(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), Struct_5(0u), u_input.d != 33316u, Struct_4(false, u_input.b.x, vec4<f32>(global3.x, global3.x, -1717f, -535f), global3.x, Struct_3(arg_0, 220f)))), ~(73310u & _wgslsmith_add_u32(global2.a, arg_1.a)), 56491u) % vec3<u32>(32u));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(1533f - -185f);
    var var_3 = Struct_3(select(select(!arg_0, select(vec2<bool>(arg_0.x, true), arg_0, any(vec3<bool>(false, arg_0.x, arg_0.x))), true), vec2<bool>(!arg_0.x, all(vec2<bool>(true, arg_0.x))), arg_0.x), -542f);
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(_wgslsmith_clamp_u32(abs(40140u), arg_1.a, var_0.x), _wgslsmith_mod_u32(u_input.c, arg_1.a))));
    return false;
}

fn func_1() -> Struct_4 {
    global2 = Struct_5(global2.a);
    let var_0 = ~(~(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-1i, -2147483647i, 4134i) ^ vec3<i32>(26967i, u_input.b.x, u_input.b.x)) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), min(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(26533i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 22649i)))));
    global1 = array<Struct_1, 30>();
    let var_1 = Struct_1(vec3<bool>(true, true, false), vec4<i32>(u_input.b.x, -u_input.b.x, select(-13448i, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(13228i, var_0.x, u_input.b.x, u_input.b.x), vec4<i32>(var_0.x, -43275i, 27080i, var_0.x))), true), firstTrailingBit(abs(reverseBits(u_input.b.x)))), var_0.x, !(!func_2(vec2<bool>(true, false), Struct_5(global2.a))), ~select(vec4<i32>(var_0.x, countOneBits(u_input.b.x), i32(-1i) * -2147483647i, var_0.x), firstLeadingBit(~vec4<i32>(2147483647i, 2147483647i, -2147483647i, var_0.x)), any(vec4<bool>(false, false, true, true))));
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1094f, 454f)))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(f32(-1f) * -788f)));
    return Struct_4(2147483647i != -(u_input.b.x ^ var_1.c), 21639i >> (~(~1u) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x * global3.x), 1614f)), _wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(select(global3.x, global3.x, var_1.a.x)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(392f + 790f), global3.x))), Struct_3(vec2<bool>(_wgslsmith_mult_u32(70406u, global2.a) > (34007u ^ global2.a), -48188i > min(0i, var_1.c)), global3.x));
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-520f * -2639f)));
    let var_0 = Struct_4(all(arg_0.e.a), -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-908f, _wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(-667f - global3.x), func_1().e.b))) * arg_0.c), func_1().c.x, Struct_3(!(!arg_0.e.a), global3.x));
    global2 = Struct_5(~2737u);
    return Struct_5(~abs(u_input.d) ^ u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(func_1());
    var var_0 = 1f;
    var var_1 = 1851i;
    global1 = array<Struct_1, 30>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-global3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.b, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, u_input.b.x) | vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-2147483647i, -1769i), vec2<i32>(countOneBits(u_input.b.x), ~1i)), vec2<i32>(-1i) * -vec2<i32>(0i, u_input.b.x)), vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(209f))), global3.x));
}

