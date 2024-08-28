struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: array<f32, 29> = array<f32, 29>(800f, -195f, -1460f, 649f, 143f, -1000f, -453f, -514f, 221f, 1000f, -600f, -722f, 583f, 503f, 656f, -346f, -183f, -1345f, -771f, -518f, -320f, 901f, -2860f, 1766f, -230f, 923f, -1979f, -1270f, -152f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, 0u);
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(firstTrailingBit(62674u), 29u)], _wgslsmith_f_op_f32(max(-113f, _wgslsmith_f_op_f32(ceil(-404f)))), 124f));
    return _wgslsmith_mult_u32(countOneBits(abs(1u)), 1u);
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool) -> vec3<i32> {
    var var_0 = vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 6690u), 1u) | abs(firstTrailingBit(~0u)), firstTrailingBit(~1u << (0u % 32u)), 1u, select(~1u, 4294967295u, true) & ~3656u);
    let var_1 = global1[_wgslsmith_index_u32(~(~reverseBits(_wgslsmith_div_u32(var_0.x, ~7624u))), 29u)];
    let var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_3 = Struct_1(vec4<u32>(1u, ~abs(9059u), 10026u, 4294967295u), _wgslsmith_div_i32(23694i, -12830i), !vec4<bool>(true, 37704u >= func_3(vec2<f32>(782f, global1[_wgslsmith_index_u32(var_0.x, 29u)])), arg_0.x, false), 0i);
    let var_4 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(select(var_3.d, u_input.b, false), -1i), 0i, var_3.b), u_input.c.zwz), vec3<i32>(~(-56728i), 13820i, -2968i));
    return var_4;
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = 49449i;
    global1 = array<f32, 29>();
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, ~max(0i, countOneBits(-9376i))), vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(u_input.c.x), countOneBits(-15879i)), 68637i) | u_input.c.xx);
    let var_1 = _wgslsmith_mult_vec3_i32(u_input.c.wxw, _wgslsmith_sub_vec3_i32(u_input.c.yzx, select(func_2(vec2<bool>(false, true), false, true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, 23864i), vec3<i32>(u_input.b, -68792i, -2147483647i)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))) << (_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(87159u, 1u, 0u)), vec3<u32>(4294967295u, 0u, 27726u)) % vec3<u32>(32u))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true))), !vec2<bool>(any(global0[_wgslsmith_index_u32(18488u, 6u)]), -2147483647i < var_1.x)));
    return ~vec4<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(13545u, 56225u, 25930u), vec3<u32>(0u, 15791u, 4294967295u), vec3<bool>(true, false, var_2.x)), ~vec3<u32>(44732u, 26474u, 60705u)), _wgslsmith_dot_vec2_u32(~min(vec2<u32>(1u, 58788u), vec2<u32>(55011u, 62668u)), reverseBits(vec2<u32>(1u, 1u))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 62233u)), firstLeadingBit(vec2<u32>(1u, 1u))), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 21255u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 4431u, 18780u)), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(vec4<u32>(max(abs(15744u), ~82775u), 86754u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 44261u))), vec4<u32>(~0u, _wgslsmith_add_u32(countOneBits(121570u), abs(0u)), _wgslsmith_mult_u32(~21503u, abs(0u)), 1u)), _wgslsmith_sub_i32(abs(0i), ~u_input.a), !select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], 1552f, -489f)), vec4<u32>(59600u, 22651u, 43779u, 1069u)), 6u)], !(!global0[_wgslsmith_index_u32(2176u, 6u)]), true), i32(-1i) * -1i);
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 3185u, 18329u, abs(_wgslsmith_mult_u32(var_0.a.x, 108340u))), vec4<u32>(4294967295u, ~(~var_0.a.x), _wgslsmith_dot_vec4_u32(~var_0.a, ~vec4<u32>(59071u, 7530u, 2537u, var_0.a.x)), 0u)), _wgslsmith_mult_i32(~u_input.c.x, -u_input.c.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, var_0.a.x), 6u)], -15081i);
    global1 = array<f32, 29>();
    global0 = array<vec4<bool>, 6>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~(~6889u)), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-369f))))));
    let x = u_input.a;
    s_output = StorageBuffer(55783u, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x << (var_1.a.x % 32u), var_0.a.x, var_1.a.x >> (4294967295u % 32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.a.wzz, var_0.a.zwy), 46841u, _wgslsmith_div_u32(6412u, var_1.a.x)), vec3<u32>(_wgslsmith_mult_u32(0u, var_0.a.x), 0u, var_1.a.x))));
}

