struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, false), -14303i, vec3<u32>(0u, 24103u, 109826u), vec3<bool>(true, true, true), vec2<f32>(-1759f, -1000f));

var<private> global3: u32;

var<private> global4: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(-1125f, -332f, 1016f)), Struct_4(vec3<f32>(1000f, -1000f, 428f)), Struct_4(vec3<f32>(1739f, -1000f, -819f)), Struct_4(vec3<f32>(-377f, 787f, 582f)), Struct_4(vec3<f32>(184f, -950f, -1000f)), Struct_4(vec3<f32>(-1363f, 1344f, 468f)), Struct_4(vec3<f32>(-1385f, -166f, 1280f)), Struct_4(vec3<f32>(-585f, -128f, -178f)), Struct_4(vec3<f32>(738f, -950f, -544f)), Struct_4(vec3<f32>(490f, -167f, 404f)), Struct_4(vec3<f32>(-197f, 547f, -1000f)), Struct_4(vec3<f32>(-590f, -740f, -988f)), Struct_4(vec3<f32>(1521f, -687f, 779f)), Struct_4(vec3<f32>(-1144f, 973f, 1000f)), Struct_4(vec3<f32>(620f, 821f, -906f)), Struct_4(vec3<f32>(-2171f, 112f, -128f)), Struct_4(vec3<f32>(-295f, -477f, -1050f)), Struct_4(vec3<f32>(362f, 631f, -704f)), Struct_4(vec3<f32>(-1510f, -992f, 154f)), Struct_4(vec3<f32>(-519f, -1000f, 961f)), Struct_4(vec3<f32>(895f, 207f, 1000f)), Struct_4(vec3<f32>(-431f, -1245f, -1150f)), Struct_4(vec3<f32>(-1531f, 261f, 881f)), Struct_4(vec3<f32>(-2683f, 1000f, 1059f)), Struct_4(vec3<f32>(1000f, 151f, -206f)), Struct_4(vec3<f32>(253f, 834f, -782f)), Struct_4(vec3<f32>(-998f, -476f, -127f)), Struct_4(vec3<f32>(-994f, 1164f, -389f)), Struct_4(vec3<f32>(-1165f, -832f, 180f)), Struct_4(vec3<f32>(-332f, 2187f, 626f)), Struct_4(vec3<f32>(161f, 531f, -544f)), Struct_4(vec3<f32>(574f, -291f, 356f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global1 = array<vec2<i32>, 24>();
    var var_0 = false;
    global4 = array<Struct_4, 32>();
    var var_1 = global4[_wgslsmith_index_u32(max(arg_0.c, 28162u), 32u)];
    let var_2 = Struct_3(countOneBits(countOneBits(~global2.c.x) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(8498u, 0u, arg_0.c, arg_0.c), vec4<u32>(4294967295u, global2.c.x, 1u, global2.c.x)), abs(vec4<u32>(17533u, 51038u, global2.c.x, 47164u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(round(-1549f)), _wgslsmith_f_op_f32(floor(-222f)), global2.e.x);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> u32 {
    global1 = array<vec2<i32>, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(505f * global2.e.x), _wgslsmith_f_op_f32(trunc(882f)), -1096f, _wgslsmith_f_op_f32(sign(1002f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(!vec3<bool>(global2.d.x, arg_2, false), _wgslsmith_f_op_f32(floor(-796f)), 1u))) - vec4<f32>(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) * arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1910f)), false));
    let var_1 = u_input.a.x;
    global0 = array<vec3<u32>, 9>();
    let var_2 = global2.d.x;
    return 1u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> vec4<bool> {
    global4 = array<Struct_4, 32>();
    global0 = array<vec3<u32>, 9>();
    let var_0 = any(select(!vec4<bool>(all(vec4<bool>(global2.a.x, global2.d.x, global2.d.x, false)), any(global2.d.xz), false, false), !select(!vec4<bool>(false, true, false, global2.a.x), select(vec4<bool>(true, false, arg_3, false), vec4<bool>(false, true, true, true), vec4<bool>(true, global2.d.x, false, global2.a.x)), all(global2.a)), arg_3));
    global0 = array<vec3<u32>, 9>();
    let var_1 = global2.c.xy & global2.c.xz;
    return !vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.a.x, arg_3, var_0, false), true)), any(global2.a), any(!global2.a) && all(select(vec3<bool>(arg_3, global2.d.x, true), global2.d, vec3<bool>(true, arg_3, var_0))));
}

fn func_1() -> vec2<u32> {
    let var_0 = func_4(~firstLeadingBit(~4294967295u), 0i >> ((_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, global2.c.x), func_2(global2.e.x, vec3<bool>(global2.a.x, global2.d.x, global2.a.x), false)) | (global2.c.x << (firstLeadingBit(global2.c.x) % 32u))) % 32u), Struct_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.x, -889f, global2.e.x))))), global2.a.x);
    var var_1 = global2.c.x;
    let var_2 = global2.c.x;
    global2 = Struct_1(select(!func_4(1u, u_input.b, Struct_4(vec3<f32>(global2.e.x, -2142f, global2.e.x)), any(global2.a.yz)).zxx, var_0.yzx, select(vec3<bool>(!var_0.x, !var_0.x, global2.d.x), func_4(~59992u, 2147483647i, global4[_wgslsmith_index_u32(global2.c.x, 32u)], var_0.x).zyz, !global2.a)), _wgslsmith_dot_vec4_i32(select(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -32096i, global2.b), u_input.a ^ vec4<i32>(2147483647i, -43688i, 2147483647i, 77521i), ~u_input.a), vec4<bool>(var_0.x, any(global2.a), global2.a.x, global2.a.x)), vec4<i32>(global2.b >> ((global2.c.x & global2.c.x) % 32u), u_input.b, abs(global2.b), _wgslsmith_mult_i32(u_input.a.x, global2.b))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global2.c.x, countOneBits(global2.c.x)), ~vec3<u32>(1u, 1u, 1u), countOneBits(global0[_wgslsmith_index_u32(~global2.c.x, 9u)])) >> (firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(88091u, 9u)], global0[_wgslsmith_index_u32(global2.c.x, 9u)]), ~global2.c, ~vec3<u32>(global2.c.x, global2.c.x, global2.c.x))) % vec3<u32>(32u)), !select(global2.d, func_4(_wgslsmith_mod_u32(global2.c.x, 4294967295u), firstTrailingBit(20236i), global4[_wgslsmith_index_u32(global2.c.x, 32u)], true).yyy, firstLeadingBit(global2.c.x) > ~44263u), vec2<f32>(global2.e.x, _wgslsmith_f_op_f32(-1529f + _wgslsmith_f_op_f32(round(global2.e.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1018f)))), 1196f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1148f))));
    return ~vec2<u32>(1u | (min(4294967295u, 1u) | (4294967295u >> (global2.c.x % 32u))), 9925u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_dot_vec2_u32(global2.c.xx & firstLeadingBit(_wgslsmith_div_vec2_u32(global2.c.zy, global2.c.yy) | global2.c.yy), func_1());
    var var_0 = Struct_1(vec3<bool>(global2.a.x, !global2.d.x, (!global2.d.x & (global2.e.x < global2.e.x)) & global2.a.x), _wgslsmith_sub_i32(global2.b, firstLeadingBit(1i)) & ~(~(-46283i)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.c.x, ~global2.c.x) & _wgslsmith_add_u32(abs(global2.c.x), 0u), 9u)], global2.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-678f, global2.e.x, !global2.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -3405f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.e.x, 714f, global2.e.x), vec3<f32>(835f, global2.e.x, global2.e.x)))) + vec3<f32>(391f, _wgslsmith_f_op_f32(-1799f - -578f), _wgslsmith_f_op_f32(var_0.e.x - 437f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.e.x, 1f, _wgslsmith_f_op_f32(global2.e.x * 167f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.x, global2.e.x, -574f) - vec3<f32>(-214f, global2.e.x, 1652f))))), !global2.d));
    global4 = array<Struct_4, 32>();
    var var_2 = Struct_1(vec3<bool>(all(var_0.a), !(!var_0.d.x), var_0.d.x), 0i, vec3<u32>(abs(firstTrailingBit(~var_0.c.x)), firstTrailingBit(69488u >> (_wgslsmith_mod_u32(global2.c.x, var_0.c.x) % 32u)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8139u, global2.c.x, 126681u), vec4<u32>(4294967295u, 4294967295u, var_0.c.x, 97107u)), ~(~global2.c.x))), vec3<bool>(var_0.a.x, false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global2.d, -2070f, var_0.c.x))).x, var_1.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

