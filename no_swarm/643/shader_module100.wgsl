struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_4(vec3<u32>(31687u, 1u, 0u)), Struct_2(-444f, vec2<bool>(false, true))), Struct_5(Struct_4(vec3<u32>(4294967295u, 23039u, 0u)), Struct_2(870f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(36701u, 49921u, 1u)), Struct_2(1073f, vec2<bool>(true, false))), Struct_5(Struct_4(vec3<u32>(0u, 38449u, 88947u)), Struct_2(1390f, vec2<bool>(true, false))), Struct_5(Struct_4(vec3<u32>(0u, 38710u, 51253u)), Struct_2(515f, vec2<bool>(true, true))), Struct_5(Struct_4(vec3<u32>(33455u, 4294967295u, 39991u)), Struct_2(2437f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(1u, 90432u, 13672u)), Struct_2(338f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(28850u, 16359u, 1u)), Struct_2(1575f, vec2<bool>(false, true))), Struct_5(Struct_4(vec3<u32>(21448u, 61888u, 9632u)), Struct_2(798f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(88939u, 30277u, 1u)), Struct_2(-244f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(1u, 0u, 4294967295u)), Struct_2(1371f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(32890u, 22797u, 22005u)), Struct_2(248f, vec2<bool>(true, false))), Struct_5(Struct_4(vec3<u32>(31705u, 95296u, 30593u)), Struct_2(-1031f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(0u, 40383u, 1u)), Struct_2(-186f, vec2<bool>(false, true))), Struct_5(Struct_4(vec3<u32>(57388u, 49402u, 1u)), Struct_2(331f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(4294967295u, 0u, 1689u)), Struct_2(902f, vec2<bool>(false, true))), Struct_5(Struct_4(vec3<u32>(4294967295u, 39434u, 1u)), Struct_2(-1002f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(1u, 1u, 1u)), Struct_2(1000f, vec2<bool>(true, true))), Struct_5(Struct_4(vec3<u32>(15149u, 56949u, 1u)), Struct_2(-2168f, vec2<bool>(true, true))), Struct_5(Struct_4(vec3<u32>(4294967295u, 67118u, 4294967295u)), Struct_2(-559f, vec2<bool>(false, false))), Struct_5(Struct_4(vec3<u32>(28418u, 1u, 0u)), Struct_2(-418f, vec2<bool>(false, true))), Struct_5(Struct_4(vec3<u32>(55462u, 64197u, 0u)), Struct_2(632f, vec2<bool>(true, true))));

var<private> global1: Struct_4;

var<private> global2: vec2<f32> = vec2<f32>(-549f, 847f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global1 = Struct_4(_wgslsmith_mod_vec3_u32(firstTrailingBit(global1.a) ^ ~firstLeadingBit(vec3<u32>(3085u, 1u, global1.a.x)), global1.a | ~vec3<u32>(34420u, global1.a.x, u_input.a)));
    let var_0 = -686f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_0, -672f, global2.x), vec4<f32>(var_0, global2.x, global2.x, -863f))))));
    let var_2 = vec2<u32>(global1.a.x, select(u_input.a, _wgslsmith_mod_u32(1u, global1.a.x) | 27463u, all(vec4<bool>(select(false, false, false), all(vec4<bool>(false, true, true, true)), true, true))));
    let var_3 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1430f - -197f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(222f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1305f * _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(abs(-878f)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_4(global1.a);
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    global0 = array<Struct_5, 22>();
    var var_1 = select(~vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(54598i, -2147483647i)), _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(-37050i, -3139i)), firstTrailingBit(i32(-1i) * -1i)), countOneBits(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, 11370i, 2664i), vec3<i32>(-52108i, ~(-2147483647i), 2147483647i))), any(select(vec2<bool>(var_0, true), vec2<bool>(false, true), any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), true)))));
    var var_2 = 733f;
    return Struct_1(_wgslsmith_add_vec3_u32(countOneBits(global1.a), global1.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = arg_0;
    global1 = Struct_4(firstTrailingBit((vec3<u32>(50187u, 63579u, 22999u) | ~vec3<u32>(5768u, global1.a.x, var_0.a.x)) << (arg_0.a % vec3<u32>(32u))));
    let var_1 = all(select(vec2<bool>(true, !(arg_1.x > global1.a.x)), vec2<bool>(true, true), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1028f, arg_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, -1464f, global2.x, global2.x) + vec4<f32>(-495f, global2.x, 1601f, -138f)))))));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(_wgslsmith_sub_u32(8066u, arg_0.a.x)), _wgslsmith_div_u32(4294967295u, firstTrailingBit(min(66608u, u_input.a))), reverseBits(arg_1.x)), vec3<u32>(1u, (countOneBits(1u) << (_wgslsmith_dot_vec2_u32(global1.a.xx, arg_0.a.yz) % 32u)) >> (global1.a.x % 32u), _wgslsmith_mult_u32(max(var_0.a.x >> (24147u % 32u), abs(98308u)), _wgslsmith_mult_u32(29740u, var_0.a.x))));
    return ~vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(65233u, 0u, false), abs(1468u)), func_2(-123f).a.x), 1u, abs(global1.a.x));
}

fn func_1() -> vec4<bool> {
    global0 = array<Struct_5, 22>();
    global0 = array<Struct_5, 22>();
    let var_0 = Struct_4(func_4(func_2(_wgslsmith_f_op_f32(sign(global2.x))), vec2<u32>(4153u, u_input.a & ~12965u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1705f, -1266f))));
    global1 = Struct_4(select(global1.a & min(firstTrailingBit(var_0.a), var_0.a << (global1.a % vec3<u32>(32u))), var_0.a, !vec3<bool>(868f == global2.x, false, true)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(global2.x).a.x, global1.a.x, ~(~u_input.a)), 22u)];
    return vec4<bool>(!var_1.b.b.x, any(vec4<bool>(var_1.b.b.x, true & all(vec2<bool>(var_1.b.b.x, true)), var_1.b.b.x, var_1.b.b.x)), false, select(true, !var_1.b.b.x & var_1.b.b.x, var_1.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = max(vec2<i32>(1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(91988u, 4294967295u, 1u)) % 32u), 25144i) >> ((~global1.a.yy >> (_wgslsmith_mult_vec2_u32(vec2<u32>(87331u, 4294967295u), ~global1.a.yy) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(27366i, -1i), abs(vec2<i32>(1i, 1i)), vec2<i32>(-27604i, 21001i)), _wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, 1i), abs(vec2<i32>(1i, 1i)))));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-59016i, firstTrailingBit(var_1.x), _wgslsmith_clamp_i32(-25479i, 0i, 0i), abs(-12508i)) | -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.x, -2147483647i, var_1.x), vec4<i32>(-34656i, 45322i, var_1.x, -1i)), ~abs(-vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x))), -10194i, -2147483647i << (_wgslsmith_dot_vec2_u32(global1.a.xz, vec2<u32>(12014u, u_input.a) >> (global1.a.zy % vec2<u32>(32u))) % 32u));
    let var_3 = Struct_4(select(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 12526u, u_input.a), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, u_input.a, global1.a.x), global1.a), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(global1.a.x, 4294967295u, 1u)))), (_wgslsmith_add_vec3_u32(global1.a, global1.a) ^ vec3<u32>(0u, 4294967295u, 16404u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 7679u), _wgslsmith_sub_vec3_u32(vec3<u32>(14586u, 42017u, 0u), global1.a)) % vec3<u32>(32u)), select(any(var_0.zy), false, true || any(vec3<bool>(true, var_0.x, true)))));
    var var_4 = Struct_3(true, vec3<i32>(~(i32(-1i) * -11897i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -1i, var_1.x), vec3<i32>(var_2, var_1.x, var_2)), var_2), _wgslsmith_div_i32(2147483647i, var_2)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - global2.x), -1000f, -204f, _wgslsmith_div_f32(_wgslsmith_div_f32(136f, -312f), _wgslsmith_div_f32(-203f, -688f))))), 2064f);
    var_0 = func_1();
    global0 = array<Struct_5, 22>();
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.c.zx)), vec2<f32>(780f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, var_4.d) + var_4.c.x)), !(!select(vec2<bool>(false, false), select(vec2<bool>(false, var_0.x), vec2<bool>(var_4.a, false), var_0.x), var_0.x))));
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.d + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1007f)))))), 0i, _wgslsmith_f_op_f32(select(-1187f, global2.x, false)), max(vec3<i32>(firstLeadingBit(1i), var_4.b.x, _wgslsmith_mod_i32(var_4.b.x << (4294967295u % 32u), _wgslsmith_add_i32(var_4.b.x, var_2))), var_4.b), vec3<i32>(-7116i, ~var_4.b.x, var_1.x));
}

