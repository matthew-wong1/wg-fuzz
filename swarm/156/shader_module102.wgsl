struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(637f, -457f, 1498f), vec3<f32>(-1000f, -859f, -514f), vec3<f32>(-1970f, 875f, 537f), vec3<f32>(-868f, -1185f, 600f), vec3<f32>(-189f, -1000f, -255f), vec3<f32>(818f, -549f, -1375f), vec3<f32>(-2578f, 1041f, -2109f), vec3<f32>(-1000f, -157f, 663f), vec3<f32>(1000f, 405f, 142f), vec3<f32>(-1083f, 1313f, 736f), vec3<f32>(2406f, 2333f, 769f), vec3<f32>(408f, 418f, 1831f), vec3<f32>(296f, 957f, -1230f), vec3<f32>(-480f, 650f, -1000f), vec3<f32>(-609f, -116f, 329f), vec3<f32>(-278f, -580f, -794f), vec3<f32>(-1415f, -313f, 1071f), vec3<f32>(-1205f, 484f, -860f), vec3<f32>(-603f, 2168f, -1003f), vec3<f32>(-899f, -182f, 300f), vec3<f32>(-1347f, 457f, 927f));

var<private> global1: array<i32, 7>;

var<private> global2: array<u32, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(~(~(u_input.a.www & vec3<u32>(0u, u_input.a.x, 0u))), u_input.a.yzz), Struct_1(firstTrailingBit(vec2<i32>(1i & u_input.c, max(u_input.c, -10810i))), false, select(~vec4<u32>(u_input.b.x, u_input.a.x, 22336u, u_input.b.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, 38567u, 32039u), u_input.a), u_input.a, true), vec2<f32>(_wgslsmith_f_op_f32(ceil(-435f)), -250f), -(~(~vec3<i32>(u_input.c, 0i, -1i)))));
    global2 = array<u32, 28>();
    global0 = array<vec3<f32>, 21>();
    let var_1 = Struct_4(0u, Struct_3(abs(~(~vec3<u32>(50902u, 0u, 5653u))), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.c.x, 7u)], 1i), var_0.b.e.yy), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.a.x, var_0.b.e.x, global1[_wgslsmith_index_u32(1404u, 7u)]), var_0.b.e) != u_input.c, _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a.x, u_input.b.x, var_0.a.x, u_input.a.x), ~vec4<u32>(global2[_wgslsmith_index_u32(1u, 28u)], var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, var_0.b.d.x) - var_0.b.d), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.d.x, var_0.b.d.x), vec2<f32>(-154f, var_0.b.d.x)))), var_0.b.e & vec3<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.a.x, 28u)], 7u)], var_0.b.a.x, var_0.b.a.x))), u_input.a.zw, Struct_2(Struct_1(~(-var_0.b.e.xy), select(u_input.c <= 42868i, var_0.b.b, var_0.b.d.x >= 479f), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 73380u, 4736u, var_0.a.x), vec4<u32>(global2[_wgslsmith_index_u32(var_0.b.c.x, 28u)], 1715u, global2[_wgslsmith_index_u32(var_0.b.c.x, 28u)], 18138u)), var_0.b.d, ~(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 7u)], 0i) >> (vec3<u32>(global2[_wgslsmith_index_u32(8250u, 28u)], 1u, 1u) % vec3<u32>(32u)))), any(select(select(vec3<bool>(var_0.b.b, var_0.b.b, false), vec3<bool>(false, var_0.b.b, true), vec3<bool>(false, false, var_0.b.b)), vec3<bool>(true, true, var_0.b.b), true)), Struct_1(firstTrailingBit(vec2<i32>(-52144i, u_input.c)), var_0.b.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, var_0.b.c.x) << (var_0.b.c % vec4<u32>(32u)), u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(0u, 28u)], var_0.b.c.x, 1u, var_0.a.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.d)))), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.b.e, vec3<i32>(var_0.b.a.x, 29164i, u_input.c)), 1108i, var_0.b.a.x)), vec2<f32>(var_0.b.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.b.d.x))))), 0u));
    global1 = array<i32, 7>();
    return var_1.b.b.d;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    global2 = array<u32, 28>();
    global2 = array<u32, 28>();
    global2 = array<u32, 28>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.d.x * -1000f) + _wgslsmith_f_op_f32(arg_2.b.d.x + arg_0.b.c.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.d.x - arg_0.b.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1069f - arg_0.a.a.d.x))))), _wgslsmith_f_op_f32(-1655f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c.d.x, 2293f)))));
    let var_1 = arg_3.b.b.a;
    return !arg_2.b.b;
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    global0 = array<vec3<f32>, 21>();
    global2 = array<u32, 28>();
    var var_0 = u_input.c;
    global0 = array<vec3<f32>, 21>();
    var var_1 = func_4(Struct_5(Struct_2(Struct_1(vec2<i32>(-18487i, u_input.c), false, vec4<u32>(9106u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 7735u), vec2<f32>(-1194f, arg_1), vec3<i32>(-13661i, u_input.c, u_input.c)), false || arg_0, Struct_1(vec2<i32>(u_input.c, -15439i), true, vec4<u32>(u_input.a.x, 0u, 17295u, 39716u), vec2<f32>(arg_1, arg_1), vec3<i32>(1i, u_input.c, -2147483647i)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(-946f, -142f)), 4294967295u), Struct_2(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32130u, 28u)], 7u)], -9743i), false, u_input.a, vec2<f32>(arg_1, arg_1), vec3<i32>(global1[_wgslsmith_index_u32(1u, 7u)], -8016i, global1[_wgslsmith_index_u32(60412u, 7u)])), true, Struct_1(vec2<i32>(u_input.c, -2147483647i), true, vec4<u32>(global2[_wgslsmith_index_u32(0u, 28u)], 23437u, u_input.b.x, 48624u), vec2<f32>(arg_1, arg_1), vec3<i32>(global1[_wgslsmith_index_u32(1u, 7u)], -1i, 18358i)), vec2<f32>(157f, -1038f), 8221u), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(13824i, global1[_wgslsmith_index_u32(24729u, 7u)]), vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 7u)], u_input.c), vec2<i32>(54699i, u_input.c)), all(vec3<bool>(true, false, false)), ~vec4<u32>(74290u, u_input.b.x, u_input.a.x, 1u), _wgslsmith_f_op_vec2_f32(func_3()), vec3<i32>(u_input.c, -37749i, u_input.c)), arg_0), global1[_wgslsmith_index_u32(61831u, 7u)], Struct_3(vec3<u32>(13301u, 0u, _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 28u)], u_input.b.x)), Struct_1(vec2<i32>(u_input.c, -1i), true, u_input.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1))), vec3<i32>(2147483647i, 0i, u_input.c))), Struct_4(9294u, Struct_3(vec3<u32>(u_input.a.x, 33371u, 4294967295u), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(7722u, 7u)], -15238i), true, u_input.a, vec2<f32>(276f, arg_1), vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(14714u, 7u)], -1i))), vec2<u32>(~16190u, 4294967295u), Struct_2(Struct_1(vec2<i32>(u_input.c, 1i), true, u_input.a, vec2<f32>(arg_1, -359f), vec3<i32>(32152i, 0i, 1i)), arg_0 && arg_0, Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(19799u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), arg_0, u_input.a, vec2<f32>(-390f, arg_1), vec3<i32>(global1[_wgslsmith_index_u32(24885u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 9587i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 247f) + vec2<f32>(arg_1, arg_1)), ~15007u))) & false;
    return 0u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~97326u;
    let var_1 = abs(global2[_wgslsmith_index_u32(abs(1u), 28u)]);
    var var_2 = true;
    var var_3 = countOneBits(~var_1);
    var var_4 = firstTrailingBit(firstTrailingBit(~(~u_input.b))) & ~vec3<u32>(~select(0u, u_input.b.x, arg_0.b), _wgslsmith_mod_u32(func_2(arg_0.b, arg_0.d.x), ~u_input.a.x), 1u);
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1109f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -236f) + _wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(21547i, global1[_wgslsmith_index_u32(71184u, 7u)]), false, u_input.a, vec2<f32>(-798f, 440f), vec3<i32>(u_input.c, 10739i, u_input.c)))))))));
    var var_1 = -36605i > global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], ~u_input.b.x), select(~(~31321u), ~u_input.b.x | global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(64703u, u_input.b.x, 0u), 28u)], any(vec4<bool>(true, true, true, true)))), 28u)], 7u)];
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(~u_input.a.x, 28u)], Struct_3(~(~(~vec3<u32>(u_input.b.x, 59262u, 0u))), Struct_1(firstTrailingBit(min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.c))), true, u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-110f, 637f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, 833f))), vec3<i32>(global1[_wgslsmith_index_u32(0u, 7u)], -1i & u_input.c, u_input.c ^ u_input.c))), firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 4294967295u)), ~0u)), Struct_2(Struct_1(vec2<i32>(-1i) * -vec2<i32>(-55704i, 16981i), all(vec3<bool>(true, true, true)), ~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(154f, -611f) + vec2<f32>(201f, 743f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1571f, 1939f), vec2<f32>(-1653f, -606f), false))), vec3<i32>(u_input.c, ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 28u)], 7u)], ~u_input.c)), global1[_wgslsmith_index_u32(55951u, 7u)] >= -2147483647i, Struct_1(~vec2<i32>(global1[_wgslsmith_index_u32(1u, 7u)], 1i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(31080i, global1[_wgslsmith_index_u32(0u, 7u)]), vec2<i32>(-23707i, u_input.c), vec2<i32>(u_input.c, -2147483647i)), true, u_input.a >> (reverseBits(u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2683f, 149f)))), ~(vec3<i32>(u_input.c, -367i, u_input.c) ^ vec3<i32>(-8883i, 1i, -4342i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1847f, 2011f))), ~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(0u, 28u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 28u)], 28u)], 28u)], 28u)], 28u)], u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(-(-var_2.b.b.e.xz ^ _wgslsmith_sub_vec2_i32(vec2<i32>(6626i, 2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(19823u, 7u)], var_2.d.a.e.x))), (-var_2.d.a.a | vec2<i32>(global1[_wgslsmith_index_u32(var_2.b.a.x, 7u)], -1i)) & reverseBits(~var_2.d.c.a), ~abs(vec2<i32>(var_2.b.b.e.x, 2147483647i))), _wgslsmith_f_op_f32(func_1(var_2.d.a)), vec3<i32>(countOneBits(_wgslsmith_div_i32(var_2.d.c.a.x, 1i) >> (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1307i, u_input.c, u_input.c)), min(vec3<i32>(u_input.c, 1i, -1i), vec3<i32>(u_input.c, 0i, 0i))), -(global1[_wgslsmith_index_u32(var_2.c.x, 7u)] >> (21643u % 32u))), -24897i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, -669f, 254f, 1204f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.c.d.x, var_2.b.b.d.x, 915f, var_2.b.b.d.x))))))));
}

