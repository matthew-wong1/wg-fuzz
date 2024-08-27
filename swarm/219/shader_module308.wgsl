struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(1094f, -941f), Struct_2(-1060f, 1381f), Struct_2(-422f, 267f), Struct_2(570f, 113f), Struct_2(1532f, 389f), Struct_2(231f, 1947f), Struct_2(1678f, 703f), Struct_2(662f, 607f), Struct_2(1315f, -458f), Struct_2(974f, -1136f), Struct_2(920f, -501f), Struct_2(-1000f, 695f), Struct_2(408f, -1096f), Struct_2(1000f, -1805f), Struct_2(1000f, 1091f), Struct_2(716f, -1988f), Struct_2(881f, -263f), Struct_2(-1473f, 123f), Struct_2(760f, 870f), Struct_2(2054f, -837f), Struct_2(-105f, -232f), Struct_2(-1307f, 434f), Struct_2(150f, 1429f), Struct_2(345f, -681f), Struct_2(950f, -101f), Struct_2(195f, 1476f), Struct_2(-1425f, -155f), Struct_2(-494f, 554f), Struct_2(417f, 2695f), Struct_2(1068f, 155f), Struct_2(-1473f, -1000f), Struct_2(1131f, 944f));

var<private> global3: Struct_2 = Struct_2(1000f, 1093f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 20>();
    global2 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-240f, -1281f))));
    let var_1 = u_input.b.x;
    global3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(~countOneBits(u_input.d.wz)), ~_wgslsmith_sub_vec2_u32(u_input.e.xx, select(u_input.d.yx, u_input.e.yy, true))), 32u)];
    return global3.a;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    global2 = array<Struct_2, 32>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(529f, global3.a))))));
    global1 = array<Struct_3, 12>();
    return Struct_1(true, max(u_input.d.x, ~(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.e.x) >> (4294967295u % 32u))), select(vec2<bool>(!arg_1.x, !all(arg_1.wy)), !select(select(arg_1.zy, vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_1.x)), select(vec2<bool>(true, arg_1.x), vec2<bool>(true, false), arg_1.zx), all(arg_1)), !(!arg_1.yx)), ~select(1i, u_input.c & _wgslsmith_add_i32(u_input.c, u_input.c), arg_1.x & (310f == global3.a)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    global0 = array<Struct_2, 20>();
    global1 = array<Struct_3, 12>();
    global0 = array<Struct_2, 20>();
    var var_0 = countOneBits(arg_0.b);
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2, 4294967295u), 32u)], reverseBits(vec2<i32>(_wgslsmith_add_i32(31809i & arg_0.d, 0i), arg_0.d)), Struct_1(true, _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_mult_u32(arg_0.b, u_input.a), arg_2), vec3<u32>(12965u, 20057u, 23823u)), select(select(arg_0.c, select(vec2<bool>(arg_0.a, arg_0.c.x), vec2<bool>(true, arg_0.c.x), arg_0.a), true), !select(vec2<bool>(arg_0.c.x, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.c), vec2<bool>(true, false && arg_0.a)), ~0i), u_input.c, Struct_1(false, ~u_input.d.x, arg_0.c, -1i));
    return select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.e.c.x, true, all(var_1.c.c)), vec3<bool>(arg_0.a, !func_2(-665f, vec4<bool>(arg_0.c.x, arg_0.c.x, true, var_1.c.a)).c.x, true), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.e.a, true), vec3<bool>(arg_0.c.x, var_1.c.c.x, false)), !vec3<bool>(true, arg_0.a, var_1.e.c.x), vec3<bool>(false, false, arg_0.a)))), select(vec3<bool>(var_1.c.c.x, true, arg_0.a || true), vec3<bool>(false, var_1.c.a, arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b, global3.b) * _wgslsmith_f_op_f32(func_3())) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.a * arg_1.a)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    return select(vec3<bool>(select(~arg_0 >= _wgslsmith_mult_u32(25027u, u_input.a), !all(vec4<bool>(false, false, true, true)), ~1u < u_input.a), all(vec2<bool>(u_input.b.x == u_input.c, true)), !(!(u_input.b.x < u_input.c))), func_4(func_2(-310f, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))), Struct_2(_wgslsmith_f_op_f32(-1277f * arg_1.b), _wgslsmith_f_op_f32(2313f + -591f)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)) | select(u_input.e, vec3<u32>(arg_0, 58736u, 19520u), vec3<bool>(false, true, false)), vec3<u32>(countOneBits(22504u), 13409u ^ arg_0, ~arg_0))), select(all(vec3<bool>(true, func_2(612f, vec4<bool>(false, false, true, false)).c.x, true)), any(func_2(-1438f, vec4<bool>(false, false, false, true)).c), any(func_4(Struct_1(false, 6124u, vec2<bool>(false, true), u_input.c), Struct_2(arg_1.a, arg_1.b), ~arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global3.a, -1169f);
    let var_1 = !select(vec3<bool>(all(vec2<bool>(false, true)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(true, true, false) & all(vec3<bool>(true, false, false))), func_1(~(30186u & u_input.d.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.e, vec3<u32>(0u, 41240u, 19530u)), 20u)]));
    var var_2 = Struct_3(Struct_2(global3.a, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.xy) << (u_input.d.wx % vec2<u32>(32u)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, global3.b) + _wgslsmith_f_op_f32(round(-1000f)))), select(select(!vec4<bool>(true, false, var_1.x, true), !vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(var_1.x || var_1.x, true, true, 3152i < u_input.c), !(!vec4<bool>(var_1.x, false, true, var_1.x)))), -1i, func_2(197f, select(vec4<bool>(true, all(vec3<bool>(true, var_1.x, true)), !var_1.x, u_input.d.x > 0u), select(vec4<bool>(true, var_1.x, true, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, false), true), var_1.x), true)));
    let var_3 = u_input.b.x;
    let var_4 = var_2.e;
    var var_5 = global1[_wgslsmith_index_u32(~1u, 12u)];
    let var_6 = any(!(!select(!var_4.c, vec2<bool>(var_2.e.c.x, false), var_4.b >= u_input.a)));
    let var_7 = Struct_2(-242f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.b)), -882f));
    let var_8 = Struct_1(var_4.b > ~firstTrailingBit(1u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(var_2.e.b)), _wgslsmith_add_vec2_u32(u_input.e.xz, u_input.d.xx) ^ ~vec2<u32>(var_2.e.b, u_input.d.x))), vec2<bool>(true, !var_4.c.x), ~select(_wgslsmith_sub_i32(~var_5.c.d, 19771i), var_2.c.d >> (~20115u % 32u), var_6));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(-38716i, reverseBits(~u_input.c), 105455i), firstTrailingBit(vec3<i32>(-u_input.c, _wgslsmith_mod_i32(var_4.d, u_input.c), firstLeadingBit(var_2.c.d)))), _wgslsmith_dot_vec4_u32(firstTrailingBit(min(u_input.d ^ u_input.d, vec4<u32>(4294967295u, var_8.b, 7154u, u_input.e.x) & vec4<u32>(993u, 42703u, u_input.a, var_8.b))), _wgslsmith_add_vec4_u32(firstTrailingBit(u_input.d) & (u_input.d << (vec4<u32>(var_2.e.b, var_2.e.b, var_5.c.b, var_5.e.b) % vec4<u32>(32u))), ~(~u_input.d))), (select(_wgslsmith_sub_u32(var_4.b, 0u), u_input.e.x << (var_8.b % 32u), true) | 0u) & ~var_2.c.b, u_input.b, ~var_8.b);
}

