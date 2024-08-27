struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(116630u, 27486u), vec4<u32>(1u, 44879u, 97659u, 1385u), vec4<i32>(i32(-2147483648), -30346i, -35589i, i32(-2147483648)), false, true), Struct_1(vec2<u32>(57475u, 31009u), vec4<u32>(0u, 125662u, 4294967295u, 36907u), vec4<i32>(1i, -55250i, -22104i, i32(-2147483648)), false, true), Struct_1(vec2<u32>(1u, 39564u), vec4<u32>(4422u, 33090u, 0u, 15109u), vec4<i32>(1i, -1i, -2684i, -17388i), true, true), Struct_1(vec2<u32>(4294967295u, 18989u), vec4<u32>(4294967295u, 47420u, 1u, 1u), vec4<i32>(-43115i, 0i, 2147483647i, -5258i), false, false), Struct_1(vec2<u32>(7081u, 14957u), vec4<u32>(1u, 29370u, 31269u, 42835u), vec4<i32>(0i, 2147483647i, i32(-2147483648), -36781i), true, false), Struct_1(vec2<u32>(1116u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i), false, true), Struct_1(vec2<u32>(44403u, 1u), vec4<u32>(4294967295u, 52508u, 61846u, 4294967295u), vec4<i32>(-46195i, 7297i, -1i, -12070i), false, true), Struct_1(vec2<u32>(1774u, 1u), vec4<u32>(84793u, 0u, 4294967295u, 46237u), vec4<i32>(2147483647i, 13553i, 2147483647i, 54150i), true, false), Struct_1(vec2<u32>(56823u, 62291u), vec4<u32>(0u, 0u, 62113u, 56457u), vec4<i32>(0i, 21035i, 69217i, 15766i), true, true), Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(24281u, 4294967295u, 70130u, 1u), vec4<i32>(i32(-2147483648), 45187i, -7620i, -49448i), false, false), Struct_1(vec2<u32>(67708u, 744u), vec4<u32>(1u, 7082u, 1u, 1u), vec4<i32>(-1i, 15109i, -40093i, i32(-2147483648)), true, true), Struct_1(vec2<u32>(0u, 17686u), vec4<u32>(75785u, 4595u, 0u, 7375u), vec4<i32>(-6956i, 13965i, -28656i, -1i), false, false), Struct_1(vec2<u32>(17161u, 0u), vec4<u32>(29794u, 27744u, 0u, 22150u), vec4<i32>(10048i, 6390i, 38326i, -1i), false, true), Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(9658u, 68747u, 49731u, 1u), vec4<i32>(2147483647i, 20967i, 2147483647i, i32(-2147483648)), false, true), Struct_1(vec2<u32>(4294967295u, 0u), vec4<u32>(22608u, 0u, 15637u, 18324u), vec4<i32>(2613i, 16021i, -21953i, 791i), true, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(11206u, 53738u, 0u, 9485u), vec4<i32>(-14416i, 1i, 49578i, -47509i), false, false), Struct_1(vec2<u32>(20922u, 1u), vec4<u32>(4294967295u, 68511u, 4294967295u, 58555u), vec4<i32>(i32(-2147483648), 24195i, -1i, 35278i), false, false), Struct_1(vec2<u32>(41353u, 0u), vec4<u32>(14202u, 4294967295u, 20135u, 34884u), vec4<i32>(-40241i, -10774i, -1i, 0i), false, false), Struct_1(vec2<u32>(9703u, 4294967295u), vec4<u32>(4294967295u, 16714u, 53328u, 63745u), vec4<i32>(-70865i, -1i, 0i, i32(-2147483648)), false, false), Struct_1(vec2<u32>(47036u, 1264u), vec4<u32>(4294967295u, 4294967295u, 25517u, 65530u), vec4<i32>(37232i, -1i, 30217i, -1i), false, true), Struct_1(vec2<u32>(486u, 1u), vec4<u32>(0u, 62337u, 75156u, 1u), vec4<i32>(-27022i, -1i, 2147483647i, -17093i), false, false), Struct_1(vec2<u32>(15383u, 4294967295u), vec4<u32>(0u, 21554u, 0u, 0u), vec4<i32>(-28410i, -1i, -106056i, -38542i), true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_div_u32(~firstTrailingBit(4294967295u & u_input.c), 0u));
    global2 = array<Struct_1, 22>();
    var var_1 = arg_2.b.xy;
    let var_2 = select(arg_1, select(vec3<bool>(!(arg_2.e | arg_1.x), true, true), !select(!arg_1, arg_1, arg_2.e), !(!(arg_1.x | arg_1.x))), any(vec4<bool>(u_input.a.x > 4931i, arg_1.x, true, all(vec3<bool>(false, true, false)) & !arg_2.e)));
    var var_3 = _wgslsmith_clamp_u32(u_input.b.x, arg_2.b.x, _wgslsmith_div_u32(firstLeadingBit(0u), min(var_1.x, ~4294967295u)));
    return ~var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = arg_0;
    return abs(arg_2.c.b.x);
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(-331f, ~func_4(Struct_2(722f, func_3(1i, vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(u_input.b.x, 9u)]), global2[_wgslsmith_index_u32(u_input.b.x, 22u)], Struct_1(u_input.b, vec4<u32>(1u, u_input.b.x, u_input.c, 4294967295u), vec4<i32>(u_input.a.x, -10179i, -55426i, u_input.a.x), false, false), abs(u_input.a.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 36728u, u_input.b.x), vec3<u32>(u_input.c, u_input.c, 23055u) ^ vec3<u32>(4294967295u, u_input.c, 20803u)), Struct_2(_wgslsmith_f_op_f32(-global0.x), ~u_input.b.x, Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(0u, 16046u, 44821u, u_input.b.x), vec4<i32>(1i, u_input.a.x, 2147483647i, -37729i), true, false), global1[_wgslsmith_index_u32(u_input.b.x, 9u)], _wgslsmith_clamp_i32(-35472i, -2147483647i, u_input.a.x)), 1050f), Struct_1(vec2<u32>(u_input.b.x, 27587u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 0u) & vec2<u32>(u_input.b.x, u_input.c), ~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), ~(~vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.c)) ^ abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 18926u, u_input.c, u_input.c), vec4<u32>(u_input.b.x, 4294967295u, 1u, 39732u), vec4<u32>(64065u, u_input.b.x, u_input.b.x, u_input.b.x))), -select(vec4<i32>(u_input.a.x, -2147483647i, 26777i, u_input.a.x) & vec4<i32>(-1i, 1i, 56492i, -63131i), vec4<i32>(2519i, u_input.a.x, -2147483647i, -19388i), select(true, true, false)), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), true)), !any(vec3<bool>(true, true, true))), global1[_wgslsmith_index_u32(u_input.c, 9u)], 51336i);
    let var_1 = vec3<i32>(abs(~var_0.c.c.x), ~(-u_input.a.x), -u_input.a.x);
    var var_2 = ~0u != var_0.c.b.x;
    global1 = array<Struct_1, 9>();
    var var_3 = Struct_1(~countOneBits(_wgslsmith_sub_vec2_u32(~u_input.b, max(var_0.c.b.ww, var_0.c.a))), vec4<u32>(~firstLeadingBit(~u_input.c), 0u, _wgslsmith_add_u32(1u, ~_wgslsmith_div_u32(64922u, u_input.b.x)), 0u), var_0.d.c, true, var_0.c.d);
    return firstLeadingBit(countOneBits(~var_0.c.b));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = func_3(i32(-1i) * -u_input.a.x, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(global0.x > -535f, false, true))), Struct_1(vec2<u32>(1u, u_input.c), abs(countOneBits(arg_0)), firstLeadingBit(firstTrailingBit(abs(vec4<i32>(arg_1.x, -80743i, u_input.a.x, arg_1.x)))), false, any(vec4<bool>(true, true, true, true))));
    var var_1 = any(vec3<bool>(true, true, true));
    var var_2 = ~((_wgslsmith_dot_vec2_u32(arg_0.yw, ~vec2<u32>(u_input.c, 4294967295u)) << (25565u % 32u)) >> (~66816u % 32u));
    var var_3 = _wgslsmith_sub_u32(max(50643u, abs(abs(u_input.b.x))), u_input.b.x);
    let var_4 = Struct_1(u_input.b, vec4<u32>(u_input.c, 35853u, ~1u, ~min(u_input.c, ~arg_0.x)), vec4<i32>(_wgslsmith_sub_i32(-(arg_1.x | 11072i), _wgslsmith_dot_vec3_i32(arg_1, arg_1)), -1i, -arg_1.x >> (((arg_0.x ^ 14101u) & (0u | arg_0.x)) % 32u), -2147483647i), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), any(vec3<bool>(true, true, true)));
    return Struct_1(vec2<u32>(1u, ~1u), ~vec4<u32>(0u, 1u, 4294967295u, reverseBits(arg_0.x)), abs(min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(9593i, u_input.a.x)), -var_4.c.x, firstTrailingBit(-7193i), arg_1.x), var_4.c)), false, all(vec3<bool>(any(!vec4<bool>(false, var_4.e, false, false)), var_4.e, var_4.d & var_4.d)));
}

fn func_1() -> vec4<bool> {
    global2 = array<Struct_1, 22>();
    var var_0 = func_5(func_2(), vec3<i32>(u_input.a.x, 39376i, u_input.a.x));
    let var_1 = vec2<bool>(true, var_0.e);
    let var_2 = select(firstTrailingBit(var_0.c), reverseBits(abs(-vec4<i32>(u_input.a.x, -31381i, -9647i, 43987i)) | ~(vec4<i32>(u_input.a.x, -2147483647i, -17625i, var_0.c.x) ^ var_0.c)), select(vec4<bool>(true || !var_0.d, var_0.e, any(vec4<bool>(var_1.x, var_0.d, false, false)), !any(vec4<bool>(false, true, false, true))), !select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, true, false, false), var_0.d || var_1.x), var_1.x));
    let var_3 = 0u;
    return vec4<bool>(!var_1.x && !(!var_0.e), !(!(func_5(var_0.b, vec3<i32>(-1i, u_input.a.x, u_input.a.x)).d && any(vec3<bool>(var_0.e, var_0.d, false)))), true, var_0.d);
}

fn func_6(arg_0: vec4<bool>) -> i32 {
    return firstLeadingBit((i32(-1i) * -28350i) << (u_input.b.x % 32u));
}

fn func_7(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(~6785u, arg_1.x, 45909u, _wgslsmith_sub_u32(u_input.b.x, arg_1.x)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(20713u, 1u, arg_1.x, 4294967295u), vec4<u32>(u_input.c, arg_1.x, 5959u, 0u)))) >> (vec4<u32>(~(~arg_1.x), _wgslsmith_div_u32(countOneBits(u_input.b.x), ~4294967295u), ~46552u << (u_input.b.x % 32u), firstTrailingBit(~arg_1.x)) % vec4<u32>(32u)), -(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1411i, -2147483647i, arg_0, 0i), vec4<i32>(-2147483647i, -2147483647i, -40179i, -15303i)), firstTrailingBit(arg_3), ~1i) & abs(abs(vec3<i32>(1i, 2147483647i, 0i)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(-2529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(520f + -1266f) * global0.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(sign(global0.x)))))), abs(firstTrailingBit(~arg_1.x)) | u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(-32222i, !select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(arg_2, true, false), var_0.e), global2[_wgslsmith_index_u32(~(u_input.c & var_0.b.x), 22u)]), 1u), 9u)], Struct_1(~vec2<u32>(arg_1.x, ~var_0.b.x), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.yzz, ~vec3<u32>(var_0.b.x, u_input.c, 1u)), ~_wgslsmith_add_u32(var_0.b.x, u_input.b.x), ~(~31696u), u_input.b.x), var_0.c, false, var_0.e), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_3, -15867i, arg_3), min(80633i, u_input.a.x), i32(-1i) * -9089i), arg_0, 2147483647i), vec4<i32>(arg_3, firstTrailingBit(-2147483647i), arg_3, abs(~0i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-302f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_2)), _wgslsmith_f_op_f32(var_1.a + 163f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -269f) + _wgslsmith_f_op_f32(-468f - 357f)))));
    let var_3 = abs(-firstTrailingBit(-u_input.a.x << (93948u % 32u)));
    global2 = array<Struct_1, 22>();
    return Struct_2(var_2, (_wgslsmith_dot_vec4_u32(arg_1, var_1.c.b) ^ abs(46660u)) | _wgslsmith_div_u32(var_1.b, _wgslsmith_mod_u32(var_1.d.b.x, abs(21885u))), global1[_wgslsmith_index_u32(~(37208u | ~_wgslsmith_mult_u32(var_0.a.x, 0u)), 9u)], func_5(var_0.b, vec3<i32>(var_0.c.x, 81475i, arg_3 & firstLeadingBit(arg_3))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(arg_0, -2147483647i, -1i, var_1.d.c.x)), vec4<i32>(arg_0, arg_0, -18406i, -1i) << (var_0.b % vec4<u32>(32u))), var_1.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_7(~func_6(select(vec4<bool>(true, true, true, false), func_1(), vec4<bool>(true, false, true, true))), ~vec4<u32>(~u_input.c & u_input.b.x, ~3584u & _wgslsmith_mod_u32(u_input.b.x, 67762u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31472u, u_input.b.x, 50787u), vec3<u32>(u_input.b.x, 4294967295u, u_input.c)), ~u_input.b.x), 23320u), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), func_1().yyy, false)), var_0.x | ~(-28657i));
    global1 = array<Struct_1, 9>();
    var var_2 = 2347f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(999f, -2400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -506f))), 540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_add_vec3_u32(var_1.d.b.wzx, ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 58597u), u_input.b), u_input.c, _wgslsmith_dot_vec4_u32(var_1.c.b, var_1.c.b))));
}

