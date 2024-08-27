struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<bool>(false, false), 1221f, Struct_1(vec2<i32>(22092i, 0i), 1000f, 1000f), Struct_1(vec2<i32>(5268i, -21818i), 326f, 115f), 1u), Struct_2(vec2<bool>(false, false), -1525f, Struct_1(vec2<i32>(44839i, -1i), -1482f, 383f), Struct_1(vec2<i32>(i32(-2147483648), 0i), 100f, 842f), 0u), Struct_2(vec2<bool>(false, false), -1069f, Struct_1(vec2<i32>(17092i, i32(-2147483648)), -692f, -1684f), Struct_1(vec2<i32>(2147483647i, -1i), -278f, -1000f), 109528u), Struct_2(vec2<bool>(true, false), -714f, Struct_1(vec2<i32>(-14131i, 40665i), -503f, -1000f), Struct_1(vec2<i32>(21870i, 2338i), 116f, 285f), 1u), Struct_2(vec2<bool>(false, true), -300f, Struct_1(vec2<i32>(1i, -1013i), -821f, 344f), Struct_1(vec2<i32>(-14790i, 0i), -2251f, -728f), 1u), Struct_2(vec2<bool>(false, false), 859f, Struct_1(vec2<i32>(-40696i, 2147483647i), 118f, -1157f), Struct_1(vec2<i32>(-1097i, -14027i), 906f, -362f), 0u), Struct_2(vec2<bool>(true, true), -593f, Struct_1(vec2<i32>(25766i, -23702i), 237f, 1000f), Struct_1(vec2<i32>(3933i, 19749i), 2069f, 1255f), 141976u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = !select(false, !all(arg_0.a), arg_1.b.a.x);
    var var_1 = arg_1.e;
    global0 = array<Struct_2, 7>();
    let var_2 = firstLeadingBit(u_input.b);
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, arg_0.e), arg_1.a), vec2<u32>(u_input.c, 28336u) & vec2<u32>(u_input.d, arg_0.e)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(33467u, u_input.c), vec2<u32>(23274u, 0u)))) ^ abs(arg_1.a), firstTrailingBit(~arg_1.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(arg_1.a.x, arg_1.a.x), -268f, arg_1.d, arg_1.c, 0u), Struct_4(arg_0.zx, Struct_2(vec2<bool>(false, true), arg_1.d.b, arg_1.c, arg_1.c, u_input.c), Struct_3(u_input.b.x), vec4<f32>(282f, 870f, arg_1.c.b, -1299f), global0[_wgslsmith_index_u32(arg_1.e, 7u)]), 4294967295u, Struct_1(arg_1.c.a, arg_1.c.c, -496f))) * arg_1.b), _wgslsmith_f_op_f32(arg_1.d.c + _wgslsmith_f_op_f32(-104f + 1846f)), 1f, arg_1.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.c, arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -377f), -1065f)))));
    var var_1 = vec4<i32>(u_input.b.x, -(~71760i), (~1i >> ((_wgslsmith_div_u32(84161u, u_input.e) ^ _wgslsmith_mod_u32(arg_0.x, arg_1.e)) % 32u)) >> (max(~u_input.d, _wgslsmith_mult_u32(arg_1.e, 33622u) & ~arg_1.e) % 32u), abs(-8873i));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_1.c.b, arg_1.c.c, arg_1.b), vec4<f32>(var_0.x, 1536f, -277f, var_0.x), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -370f, var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, arg_1.c.b, var_0.x, var_0.x), vec4<f32>(arg_1.b, -119f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-606f, 803f, var_0.x, 806f), vec4<f32>(var_0.x, arg_1.d.c, 525f, 857f))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(arg_1.a.x, true), _wgslsmith_f_op_f32(min(arg_1.b, arg_1.c.c)), Struct_1(var_1.zy, 1350f, arg_1.b), arg_1.c, ~38550u), Struct_4(arg_0.zx, Struct_2(vec2<bool>(false, false), -2050f, Struct_1(var_1.yw, var_0.x, arg_1.c.b), arg_1.d, 9348u), Struct_3(1i), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-445f, -127f, -2375f, -1689f))), Struct_2(arg_1.a, 256f, Struct_1(arg_1.d.a, 1000f, -210f), arg_1.d, 0u)), arg_1.e, arg_1.d))), arg_1.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1253f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.b), 1096f)))), _wgslsmith_f_op_f32(f32(-1f) * -2049f));
    var_1 = u_input.a;
    return vec4<i32>(u_input.b.x, firstTrailingBit(var_1.x), -var_1.x, reverseBits(var_1.x & _wgslsmith_sub_i32(-2147483647i, var_1.x))) >> (_wgslsmith_mod_vec4_u32(arg_0 | (min(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(arg_1.e, 4294967295u, 49224u, 4294967295u)) << (firstLeadingBit(vec4<u32>(37102u, 0u, u_input.d, arg_1.e)) % vec4<u32>(32u))), ~(~vec4<u32>(arg_0.x, u_input.e, arg_1.e, 1u))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = abs(_wgslsmith_mult_i32(firstLeadingBit(-9094i), 0i));
    var var_1 = u_input.a;
    var_1 = func_2(~vec4<u32>(u_input.c, u_input.e, ~u_input.e, 4294967295u), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(u_input.e, u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(22753u, u_input.e, u_input.d))), 7u)]);
    var var_2 = u_input.e;
    var var_3 = vec3<bool>(arg_0, select(!all(!vec2<bool>(true, arg_0)), arg_0, !(u_input.d < u_input.e) && arg_0), arg_0);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 7>();
    let var_0 = vec3<u32>(~(~_wgslsmith_add_u32(~u_input.e, u_input.c)), ~_wgslsmith_mod_u32(func_1(true, _wgslsmith_f_op_f32(select(-287f, -1604f, false))), max(abs(38415u), 43886u)), u_input.c);
    let var_1 = min(vec2<i32>(-15146i, u_input.a.x), vec2<i32>(2147483647i, -14808i));
    global0 = array<Struct_2, 7>();
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, _wgslsmith_dot_vec2_u32(var_0.xz, var_0.xy)), var_0.xy));
    global0 = array<Struct_2, 7>();
    let var_3 = _wgslsmith_div_vec4_i32(~(~abs(u_input.a)), func_2(vec4<u32>(1u, 1u, 1u, u_input.e) | ~vec4<u32>(u_input.d, var_0.x, var_0.x, u_input.c), Struct_2(vec2<bool>(false, true), 553f, Struct_1(vec2<i32>(var_1.x, -8683i), 354f, 821f), Struct_1(vec2<i32>(1i, 23840i), 1000f, 302f), ~24844u))) | vec4<i32>(24807i, u_input.b.x >> (u_input.e % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, var_1.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(27659i, 2147483647i, var_1.x, 2147483647i), vec4<i32>(-20251i, u_input.a.x, 4461i, 6614i))), u_input.a.x), ~max(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.x, 0i), u_input.b), -14888i));
    let x = u_input.a;
    s_output = StorageBuffer(52464u, 20110i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-125f)), -394f)), -var_1.x);
}

