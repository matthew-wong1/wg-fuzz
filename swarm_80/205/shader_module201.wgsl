struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(180f, -142f, 1075f, -202f), vec4<f32>(-1000f, 548f, -762f, 386f), vec4<f32>(300f, -228f, 175f, -722f), vec4<f32>(488f, 724f, -137f, -1078f), vec4<f32>(800f, 628f, -295f, -104f), vec4<f32>(1768f, 1099f, 226f, 626f), vec4<f32>(942f, 909f, -963f, -507f), vec4<f32>(-1289f, -2077f, 455f, 303f), vec4<f32>(1333f, 1754f, 566f, -738f), vec4<f32>(-218f, 522f, 1888f, -1349f), vec4<f32>(185f, -1695f, 580f, -342f), vec4<f32>(-336f, -1150f, -1474f, 1850f), vec4<f32>(-122f, 702f, -103f, -237f), vec4<f32>(771f, -2202f, -1659f, 215f), vec4<f32>(1000f, -1286f, -866f, -145f), vec4<f32>(-308f, -781f, 1000f, 698f), vec4<f32>(855f, -365f, -186f, -1185f), vec4<f32>(-1299f, 926f, 652f, 1798f), vec4<f32>(192f, -1473f, 1000f, -474f), vec4<f32>(875f, -260f, -1964f, 415f), vec4<f32>(-1027f, -1000f, 763f, -731f), vec4<f32>(-719f, -615f, 621f, -880f), vec4<f32>(693f, -701f, 1000f, -548f), vec4<f32>(-977f, -1125f, -621f, -1332f), vec4<f32>(-167f, -804f, 1577f, -1000f), vec4<f32>(1908f, -274f, 1190f, 305f), vec4<f32>(361f, -1000f, -1132f, -214f), vec4<f32>(462f, 2206f, 214f, 1117f), vec4<f32>(465f, 525f, 797f, 372f), vec4<f32>(-269f, 1109f, -2248f, 832f), vec4<f32>(503f, 2491f, 869f, -1000f));

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(~(u_input.a.yz << (~global0.a % vec2<u32>(32u))), ~global1.a.x, _wgslsmith_mod_i32(global0.c, _wgslsmith_div_i32(global1.c, -1i)), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-2147483647i), _wgslsmith_mod_i32(global1.d, global1.c), global0.c, -16301i), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b, u_input.b, -1i), vec4<i32>(global1.d, global1.d, 0i, 1i)), vec4<i32>(global1.c, 11224i, global0.c, 11191i) >> (vec4<u32>(var_0, 1u, global1.a.x, var_0) % vec4<u32>(32u))))));
    return 4294967295u >> (global1.a.x % 32u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(min(global1.a, vec2<u32>(max(1u, func_3()), _wgslsmith_sub_u32(1u, ~4294967295u))), 1u, -global0.c, i32(-1i) * -4860i);
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = var_0;
    var var_4 = Struct_1(~select(vec2<u32>(2791u, 4294967295u), u_input.a.xy, true) ^ ~reverseBits(~global1.a), 38101u, _wgslsmith_sub_i32(var_2.c, global1.d), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-(var_3.d | var_2.d), var_2.c | ~(-9149i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(3988i, -64251i, 32418i), select(vec3<i32>(var_3.d, 1i, -14291i) ^ vec3<i32>(global1.c, global1.c, var_1.c), -vec3<i32>(0i, u_input.b, -2147483647i), var_3.d >= -3338i))));
    return var_4.c;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(global1.a, ~(abs(~u_input.a.x) << (_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, 0u), countOneBits(global1.b)) % 32u)), -2147483647i, -global1.d);
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(~global1.b, 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(22807u, 32755u), var_0.a), vec2<u32>(var_0.a.x, global1.b), vec2<u32>(4294967295u, var_0.b)), _wgslsmith_div_vec2_u32(vec2<u32>(62634u, global0.b), var_0.a))), u_input.a.x, -global1.d, func_2());
    var var_1 = min(reverseBits(vec3<i32>(max(2147483647i, 0i), global0.d, global1.c >> (u_input.a.x % 32u))), ~vec3<i32>(u_input.b, -23201i, arg_0) ^ max(~vec3<i32>(-27314i, var_0.c, -1i), abs(vec3<i32>(5380i, var_0.d, arg_0)))) >> (u_input.a % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1592f, 317f));
    var var_3 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(34018u, u_input.a.x), vec2<u32>(4294967295u, countOneBits(1u))), ~0u << (_wgslsmith_sub_u32(4294967295u, ~_wgslsmith_mult_u32(global0.b, 0u)) % 32u), max(~(-16261i), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-30729i, global0.d, 2147483647i, var_1.x)), vec4<i32>(1i, -14841i, -46391i, 1i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0.c, global0.d), var_1.yx), ((var_1.x >> (41984u % 32u)) >> (~var_0.b % 32u)) ^ abs(~(-36973i))));
    return Struct_1(vec2<u32>(global0.b, 1u), global1.b, -1i, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~abs(_wgslsmith_mult_i32(~u_input.b, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-648f + 409f), _wgslsmith_div_f32(-358f, -1000f))) - -728f)));
    global0 = var_0;
    var var_1 = select(~func_1(-var_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-310f))))).b, func_1(-17835i, _wgslsmith_f_op_f32(-1104f - -553f)).b, false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-666f))));
    var var_3 = countOneBits(vec2<i32>(-48672i, 45586i));
    var var_4 = Struct_1(global0.a, ~(~83617u), func_2(), global0.d);
    var var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, -1i)), -vec2<i32>(i32(-1i) * -58277i, _wgslsmith_div_i32(var_0.d, 1i))));
}

