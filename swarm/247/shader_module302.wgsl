struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<u32>(0u, 33183u), vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(13659u, 40785u), vec2<u32>(17418u, 1u)), Struct_2(vec2<u32>(0u, 59908u), vec2<u32>(4294967295u, 90328u)), Struct_2(vec2<u32>(106594u, 6543u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(1u, 0u), vec2<u32>(0u, 50541u)), Struct_2(vec2<u32>(9u, 4294967295u), vec2<u32>(4294967295u, 24147u)), Struct_2(vec2<u32>(1u, 59799u), vec2<u32>(62384u, 27711u)), Struct_2(vec2<u32>(28425u, 9897u), vec2<u32>(4294967295u, 24138u)), Struct_2(vec2<u32>(103566u, 4294967295u), vec2<u32>(26834u, 1u)), Struct_2(vec2<u32>(0u, 0u), vec2<u32>(19108u, 7295u)), Struct_2(vec2<u32>(5153u, 26964u), vec2<u32>(19865u, 25898u)), Struct_2(vec2<u32>(4294967295u, 32463u), vec2<u32>(1u, 19259u)), Struct_2(vec2<u32>(55564u, 0u), vec2<u32>(4294967295u, 59347u)), Struct_2(vec2<u32>(4294967295u, 1198u), vec2<u32>(84744u, 10328u)), Struct_2(vec2<u32>(1u, 27987u), vec2<u32>(29782u, 46680u)), Struct_2(vec2<u32>(1u, 61218u), vec2<u32>(13586u, 4294967295u)), Struct_2(vec2<u32>(74897u, 90879u), vec2<u32>(0u, 4294967295u)), Struct_2(vec2<u32>(9754u, 39746u), vec2<u32>(16907u, 0u)), Struct_2(vec2<u32>(1u, 108501u), vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(43676u, 5377u), vec2<u32>(0u, 118274u)), Struct_2(vec2<u32>(4294967295u, 1u), vec2<u32>(9109u, 49381u)), Struct_2(vec2<u32>(34274u, 15147u), vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec2<u32>(87739u, 28583u), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(27895u, 1u), vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(0u, 1u), vec2<u32>(32202u, 0u)), Struct_2(vec2<u32>(11217u, 9545u), vec2<u32>(57010u, 1u)), Struct_2(vec2<u32>(18195u, 1u), vec2<u32>(1u, 921u)), Struct_2(vec2<u32>(36442u, 0u), vec2<u32>(1u, 4294967295u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.e.x, ~(-1i), firstLeadingBit(~u_input.a.x)), u_input.e.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, 4722i), select(-37354i, -2147483647i, arg_0)), min(select(vec2<i32>(-1i, 19533i), vec2<i32>(u_input.e.x, 13173i), vec2<bool>(arg_0, true)) >> (max(vec2<u32>(u_input.b, 78364u), vec2<u32>(43711u, u_input.b)) % vec2<u32>(32u)), vec2<i32>(0i, u_input.a.x))), 21064i);
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_1 = vec3<u32>(11192u, ~(~(~firstLeadingBit(u_input.d.x))), u_input.b);
    global0 = array<Struct_2, 28>();
    return Struct_1(vec4<i32>(40914i, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, -1i), var_0.zyy), abs(i32(-1i) * -1i)), arg_0, any(select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(false, true, false), !vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, false, false)), !vec3<bool>(true, arg_0, true))), -u_input.e.x);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, arg_0))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(904f)) + -483f), -833f)) * _wgslsmith_f_op_f32(ceil(arg_0)));
    let var_1 = _wgslsmith_mult_u32(select(u_input.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 9056u), u_input.d), vec3<u32>(17824u, 4294967295u, ~3437u)), !any(vec2<bool>(true, false))), _wgslsmith_sub_u32((u_input.c.x >> (firstLeadingBit(25011u) % 32u)) & (25292u ^ u_input.b), 62009u));
    var var_2 = u_input.a.x;
    let var_3 = 1056f;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), -1000f, _wgslsmith_f_op_f32(-arg_0));
    return vec3<i32>(u_input.a.x, -43025i, _wgslsmith_add_i32(2147483647i, -2147483647i));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_4(1320f, _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(88101u, u_input.b), min(0u, 63116u), 687u), vec3<u32>(u_input.d.x, ~countOneBits(u_input.c.x), ~4294967295u)), Struct_2(~u_input.d.xz, ~u_input.c.yy));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(1285u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(23356u, 59865u)), var_0.c.a), reverseBits(~var_0.b.x) >> ((var_0.c.a.x << (1u % 32u)) % 32u)), vec3<u32>(var_0.c.b.x, u_input.b, _wgslsmith_dot_vec3_u32(~u_input.c.yzy, vec3<u32>(~var_0.b.x, 1u, u_input.b))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -633f))));
    let var_3 = _wgslsmith_sub_vec2_i32(arg_3.xz, vec2<i32>(~(~(-arg_3.x)), countOneBits(~u_input.a.x)));
    var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a, -1330f))), _wgslsmith_mod_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, 29757u), u_input.c.xzx) | vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), ~(vec3<u32>(1u, var_1.x, u_input.b) ^ var_0.b), var_0.a >= _wgslsmith_f_op_f32(abs(-505f))), var_0.b), Struct_2(_wgslsmith_sub_vec2_u32(select(max(u_input.c.zz, u_input.c.ww), min(vec2<u32>(u_input.d.x, 82299u), var_1.xy), !vec2<bool>(arg_2.b, false)), ~vec2<u32>(17362u, var_0.c.a.x)), vec2<u32>(var_0.c.a.x, firstTrailingBit(_wgslsmith_mod_u32(61700u, var_0.c.b.x)))));
    return Struct_3(u_input.d.x, Struct_2(var_1.zy ^ vec2<u32>(~var_0.c.a.x, u_input.c.x), firstTrailingBit(u_input.c.zz)), func_2(all(!vec2<bool>(arg_2.c, arg_2.b))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = arg_1.c;
    global0 = array<Struct_2, 28>();
    let var_1 = arg_1;
    var var_2 = any(vec4<bool>(!(var_1.c.d >= abs(u_input.e.x)), true, !(all(vec3<bool>(var_1.c.c, false, var_1.c.b)) | (var_1.a <= u_input.b)), 768f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + arg_0), -1742f, true))));
    global0 = array<Struct_2, 28>();
    return select(!vec3<bool>(select(false, var_1.c.c, arg_1.c.c), var_1.c.b, true), select(!(!vec3<bool>(var_0.c, var_0.c, false)), select(!vec3<bool>(true, false, var_1.c.c), vec3<bool>(false, any(vec2<bool>(true, true)), false), select(select(vec3<bool>(var_0.b, var_0.c, var_1.c.c), vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.c, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.c.c), true), false)), true), select(select(vec3<bool>(!var_1.c.b, func_4(vec2<f32>(arg_0, arg_0), vec4<i32>(0i, 2147483647i, var_0.d, -2147483647i), arg_1.c, vec3<i32>(var_1.c.d, var_0.a.x, -2147483647i)).c.c, func_2(var_1.c.c).b), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_1.c.b, var_1.c.c, false), false), !vec3<bool>(arg_1.c.b, true, true)), !vec3<bool>(var_1.c.b, var_0.b, true)), vec3<bool>(var_1.c.b || (u_input.d.x == 4294967295u), var_1.c.b, select(false, all(vec3<bool>(true, false, false)), var_0.a.x <= -1i)), select(vec3<bool>(func_2(var_0.c).c, false, any(vec2<bool>(true, var_1.c.b))), !select(vec3<bool>(var_1.c.b, var_0.b, var_1.c.b), vec3<bool>(true, true, var_0.c), vec3<bool>(true, var_0.c, var_0.c)), vec3<bool>(arg_1.c.c || false, all(vec3<bool>(false, var_1.c.c, var_1.c.b)), -2147483647i <= var_0.d))));
}

fn func_1() -> Struct_4 {
    var var_0 = 419f;
    var var_1 = func_5(2822f, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, -221f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, -394f))), vec2<f32>(1f, 1f)), countOneBits(u_input.a), func_2(u_input.a.x > _wgslsmith_mod_i32(u_input.e.x, u_input.a.x)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f + -1072f) * _wgslsmith_f_op_f32(-160f - 840f)))));
    var var_2 = select(!select(!vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(func_4(vec2<f32>(-647f, -289f), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, -3674i), Struct_1(vec4<i32>(1i, 0i, 2147483647i, u_input.e.x), var_1.x, var_1.x, 0i), vec3<i32>(-20179i, u_input.a.x, 12709i)).c.c, any(var_1.xx), false, -57470i < u_input.e.x), vec4<bool>(var_1.x | false, var_1.x, func_5(1000f, Struct_3(79802u, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], Struct_1(u_input.a, false, var_1.x, u_input.a.x))).x, !var_1.x)), select(select(!vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, true, true, true), !func_4(vec2<f32>(-1238f, 1027f), vec4<i32>(25030i, u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<i32>(u_input.a.x, -43461i, -10602i, -29929i), var_1.x, var_1.x, u_input.a.x), vec3<i32>(32854i, 2147483647i, 1i)).c.b), vec4<bool>(true, true, false, var_1.x), !select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x))), vec4<bool>(var_1.x, true, all(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x)), var_1.x));
    var var_3 = 902f;
    var var_4 = ~_wgslsmith_clamp_vec2_u32(u_input.d.xy, min(vec2<u32>(1u, 68894u), _wgslsmith_add_vec2_u32(~u_input.c.yx, vec2<u32>(u_input.b, 1u) & u_input.c.zz)), abs(~vec2<u32>(u_input.c.x, u_input.c.x)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1048f, _wgslsmith_f_op_f32(2018f + -628f)))), vec3<u32>(var_4.x, u_input.b, _wgslsmith_mod_u32(u_input.c.x, 4294967295u)), global0[_wgslsmith_index_u32(u_input.d.x ^ 1u, 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    let var_0 = func_1();
    var var_1 = u_input.c;
    global0 = array<Struct_2, 28>();
    let var_2 = _wgslsmith_dot_vec2_u32(func_1().b.zz, var_0.c.b);
    let var_3 = var_0.c.b.x;
    var var_4 = select(!vec3<bool>(false, u_input.a.x <= _wgslsmith_clamp_i32(2147483647i, u_input.e.x, -51966i), all(vec2<bool>(true, false))), vec3<bool>(true, !any(vec3<bool>(true, true, true)), !(!func_4(vec2<f32>(669f, -599f), u_input.a, Struct_1(u_input.a, true, false, -2147483647i), u_input.a.zwx).c.c)), true);
    global0 = array<Struct_2, 28>();
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f * var_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-159f + -545f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2285f, var_0.a), var_0.a, true)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(181f, var_0.a), var_0.a)))), reverseBits(-2147483647i), ~_wgslsmith_div_vec4_u32(abs(abs(u_input.c)), vec4<u32>(func_4(vec2<f32>(var_0.a, -629f), vec4<i32>(-1i, u_input.a.x, 14753i, u_input.e.x), Struct_1(vec4<i32>(u_input.e.x, 2147483647i, -67108i, 15399i), false, false, 54872i), vec3<i32>(2147483647i, u_input.e.x, u_input.a.x)).b.a.x, 1101u, u_input.d.x, firstLeadingBit(var_2))), 187f);
}

