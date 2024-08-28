struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_4, 26>;

var<private> global2: f32 = -1194f;

var<private> global3: array<f32, 15> = array<f32, 15>(2058f, 462f, -968f, -1162f, 2174f, 1189f, -1534f, -712f, 210f, -1412f, -656f, 795f, 850f, -1674f, -717f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> i32 {
    let var_0 = true;
    let var_1 = max(firstTrailingBit(~select(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) ^ vec4<i32>(u_input.a, -1i, u_input.a, -53466i), false)), ~(vec4<i32>(1i, _wgslsmith_mod_i32(u_input.a, -1i), reverseBits(u_input.a), u_input.a) & (_wgslsmith_add_vec4_i32(vec4<i32>(16205i, 27375i, 6392i, -2147483647i), vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i)) << (vec4<u32>(82296u, arg_0.d, 724u, 1u) % vec4<u32>(32u)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-652f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 326f))), _wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(var_1.xz, vec2<i32>(-56632i, var_1.x)) >> (firstTrailingBit(min(vec2<u32>(0u, 66412u), vec2<u32>(60986u, 9720u))) % vec2<u32>(32u)), var_1.zw), !(!(!vec2<bool>(arg_1, arg_0.b.x))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1417f) * global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(arg_0.d, 4828u)), 15u)]);
    global1 = array<Struct_4, 26>();
    return i32(-1i) * -u_input.a;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> bool {
    var var_0 = arg_0.d.d;
    var var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 15u)]);
    var var_2 = ~arg_0.d.d;
    let var_3 = arg_0.d.b;
    var var_4 = min(arg_0.c, _wgslsmith_mod_vec4_i32(arg_0.c, firstLeadingBit(arg_0.c)));
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, 32282i), vec3<i32>(u_input.a, 0i, u_input.a)), ~vec3<i32>(-2147483647i, arg_1.b.x, arg_1.b.x))), -vec2<i32>(-14096i, _wgslsmith_mod_i32(-2147483647i, 2147483647i))), true, vec2<i32>(reverseBits((i32(-1i) * -2147483647i) << (arg_2.x % 32u)), func_2(Struct_1(false, !arg_1.c, !arg_1.c.x, arg_0.x), select(any(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)), all(vec4<bool>(arg_1.c.x, false, arg_1.c.x, true)), arg_1.c.x), arg_1.c.x)), 1099f, Struct_2(global3[_wgslsmith_index_u32(~arg_2.x, 15u)], _wgslsmith_mod_vec2_i32(abs(~arg_1.b), -arg_1.b), select(vec2<bool>(select(true, arg_1.c.x, arg_1.c.x), false | arg_1.c.x), vec2<bool>(all(vec3<bool>(true, arg_1.c.x, true)), !arg_1.c.x), func_3(Struct_4(Struct_2(-1021f, arg_1.b, vec2<bool>(arg_1.c.x, true)), 1000f, vec4<i32>(2147483647i, -1i, -5376i, 12094i), Struct_1(false, vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c.x, arg_2.x), Struct_3(vec2<i32>(u_input.a, -14940i), arg_1.c.x, vec2<i32>(0i, u_input.a), global0.x, arg_1)), arg_1.c))));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, arg_3) + vec2<f32>(-1120f, _wgslsmith_f_op_f32(623f + arg_1.a)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-594f, global0.x)) + -1000f), global3[_wgslsmith_index_u32(arg_2.x, 15u)])), -3458f);
    global3 = array<f32, 15>();
    let var_1 = vec2<u32>(~(~arg_0.x), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(343u, arg_0.x, 25404u) >> ((vec3<u32>(4294967295u, arg_2.x, arg_2.x) << (vec3<u32>(arg_0.x, 3310u, 10177u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(arg_2.x | arg_0.x, ~0u, arg_2.x >> (arg_2.x % 32u))), min(~vec3<u32>(arg_2.x, arg_0.x, 33195u), select(~vec3<u32>(0u, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, 38789u), any(vec2<bool>(false, arg_1.c.x))))));
    return Struct_1(abs(0u) <= arg_0.x, select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c.x, true), var_0.e.c, !all(vec4<bool>(true, true, false, var_0.b))), all(select(vec4<bool>(var_0.e.c.x, true, arg_1.c.x, false), !vec4<bool>(true, arg_1.c.x, true, var_0.e.c.x), var_0.e.c.x | arg_1.c.x))), arg_1.c.x, _wgslsmith_mult_u32(37213u, var_1.x));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(abs(0u ^ arg_0.d), 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 15u)] + global3[_wgslsmith_index_u32(15800u, 15u)]) - 1000f)), -1110f, !(reverseBits(10538u) >= arg_0.d))));
    let var_0 = firstLeadingBit(max(-108309i ^ abs(u_input.a), u_input.a)) ^ u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(485f, _wgslsmith_f_op_f32(150f + global0.x), global3[_wgslsmith_index_u32(~80231u, 15u)]) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3[_wgslsmith_index_u32(9597u, 15u)], 1000f, global3[_wgslsmith_index_u32(7744u, 15u)])))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1489f, global3[_wgslsmith_index_u32(arg_0.d, 15u)]) - vec3<f32>(global3[_wgslsmith_index_u32(arg_0.d, 15u)], global3[_wgslsmith_index_u32(arg_0.d, 15u)], global3[_wgslsmith_index_u32(arg_0.d, 15u)]))), vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(12579u, 15u)]), 1264f, _wgslsmith_f_op_f32(515f * 1185f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(1u, 15u)]))))), !(!arg_0.c || (0u >= (arg_0.d | arg_0.d)))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1436f))) - 1304f))), -992f, -759f);
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0.d, 15u)], _wgslsmith_f_op_f32(1302f - 1462f), _wgslsmith_f_op_f32(-global0.x), var_1.x))))));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 26>();
    global2 = -1009f;
    global2 = -826f;
    global1 = array<Struct_4, 26>();
    global3 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~func_4(func_1(vec2<u32>(13773u, 4294967295u), Struct_2(global0.x, vec2<i32>(10706i, u_input.a), vec2<bool>(false, true)), vec2<u32>(29675u, 75190u), global3[_wgslsmith_index_u32(4294967295u, 15u)])) >> (~1u % 32u), 15u)], vec3<u32>(_wgslsmith_mod_u32(1u, firstLeadingBit(1u)), 1u, ~firstTrailingBit(abs(31636u))), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(16684u, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1048f, global3[_wgslsmith_index_u32(4294967295u, 15u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(115f, global0.x)) >= -1683f)));
}

