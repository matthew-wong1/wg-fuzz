struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-386f, 2204f);

var<private> global1: f32 = -1063f;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(1244f, 28858u), Struct_1(-1964f, 0u), Struct_1(-722f, 4294967295u), Struct_1(930f, 44372u), Struct_1(1891f, 49116u), Struct_1(1000f, 0u), Struct_1(-1041f, 4294967295u), Struct_1(-346f, 1u), Struct_1(-1514f, 56572u), Struct_1(-255f, 61650u), Struct_1(1014f, 13797u), Struct_1(-1000f, 15630u), Struct_1(399f, 70364u), Struct_1(1000f, 40219u), Struct_1(557f, 20228u), Struct_1(286f, 1u), Struct_1(1583f, 3501u), Struct_1(-738f, 1u), Struct_1(612f, 0u), Struct_1(-665f, 4294967295u), Struct_1(-242f, 4294967295u), Struct_1(219f, 0u), Struct_1(1109f, 10066u), Struct_1(-1000f, 75113u), Struct_1(2520f, 4294967295u), Struct_1(-756f, 57634u), Struct_1(170f, 1u), Struct_1(-898f, 3051u), Struct_1(-1000f, 23648u), Struct_1(258f, 0u));

var<private> global3: array<f32, 12> = array<f32, 12>(112f, 531f, 415f, 241f, 309f, -2147f, 564f, -353f, -780f, 986f, 853f, 953f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> bool {
    global1 = -1000f;
    let var_0 = u_input.b;
    var var_1 = ~select(select(min(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 70913u) << (vec4<u32>(u_input.c, arg_0.b, arg_0.b, u_input.c) % vec4<u32>(32u)), ~vec4<u32>(arg_0.b, 0u, arg_0.b, 68409u)), ~(~vec4<u32>(4294967295u, 56253u, 0u, 1u)), !(arg_1 != arg_0.a)), vec4<u32>(71922u, arg_0.b, arg_0.b, ~_wgslsmith_mod_u32(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.a, 275f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 12u)]))) <= arg_1);
    global3 = array<f32, 12>();
    global2 = array<Struct_1, 30>();
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0.x), 331f, -510f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, global0.x, global3[_wgslsmith_index_u32(4294967295u, 12u)]) + vec4<f32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(arg_1, 12u)], global0.x, global3[_wgslsmith_index_u32(arg_1, 12u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1327f, 121f, -978f, global3[_wgslsmith_index_u32(35216u, 12u)]) + vec4<f32>(global0.x, global0.x, global0.x, -1305f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(117f, -723f, global0.x, -571f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-382f, global3[_wgslsmith_index_u32(842u, 12u)], global3[_wgslsmith_index_u32(arg_1, 12u)], global3[_wgslsmith_index_u32(u_input.c, 12u)]))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global3[_wgslsmith_index_u32(arg_1, 12u)], global0.x, global3[_wgslsmith_index_u32(arg_1, 12u)])), vec4<f32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], global0.x, -592f, global3[_wgslsmith_index_u32(u_input.c, 12u)])))));
    let var_1 = any(vec2<bool>(arg_0.x, func_3(global2[_wgslsmith_index_u32(60971u, 30u)], global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(23436u, arg_1), 12u)], false)));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~firstTrailingBit(arg_1), u_input.c), firstTrailingBit(_wgslsmith_add_u32(arg_1, ~_wgslsmith_clamp_u32(4294967295u, u_input.c, 85802u))));
    let var_3 = 488f;
    let var_4 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, _wgslsmith_f_op_f32(var_3 - var_3), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-202f + var_0.a.x))), vec4<f32>(var_3, var_3, 388f, 1000f)));
    return arg_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, global3[_wgslsmith_index_u32(0u, 12u)], -426f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-883f, -726f, 1280f), vec3<f32>(-208f, global3[_wgslsmith_index_u32(u_input.c, 12u)], global3[_wgslsmith_index_u32(21002u, 12u)]))), true)))), func_2(vec4<bool>(true, !(arg_0.x || arg_0.x), true, arg_0.x), 52366u, select(!select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), !vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x || true)), select(!(!vec3<bool>(true, arg_0.x, arg_0.x)), vec3<bool>(!arg_0.x, true, arg_0.x), !arg_0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(327f, -1466f, -104f, global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<f32>(global0.x, -1014f, global0.x, 981f), arg_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, 545f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 638f), 128f), arg_0.x))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.a.xxy) - _wgslsmith_f_op_vec3_f32(var_0.c.a.wxx * vec3<f32>(876f, var_0.c.a.x, global3[_wgslsmith_index_u32(u_input.c, 12u)])))))), Struct_3(var_0.c.a), vec4<u32>(27937u, _wgslsmith_clamp_u32(0u, u_input.c ^ (u_input.c | u_input.c), select(u_input.c & 4294967295u, 52848u, var_0.b.x)), u_input.c, ~(~min(u_input.c, u_input.c))));
    var var_2 = arg_1.x;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(1301f, global0.x), 715f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.c.x, 12u)])), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - -796f), _wgslsmith_f_op_f32(-1088f - global3[_wgslsmith_index_u32(47671u, 12u)]), _wgslsmith_f_op_f32(386f * var_1.a.x), _wgslsmith_f_op_f32(-var_0.a.x))))));
    var var_4 = ~vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(var_1.c.xxx, vec3<u32>(u_input.c, 1u, var_1.c.x))), u_input.c), firstLeadingBit(~var_1.c.x), ~firstLeadingBit(var_1.c.x), var_1.c.x);
    return var_3.a.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 30>();
    global0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c | u_input.c, 12u)], _wgslsmith_f_op_f32(-1f))));
    global3 = array<f32, 12>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, false), vec3<i32>(u_input.b, 0i, u_input.a))) + vec3<f32>(-1000f, 1005f, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1425f, 584f, 762f)))) - _wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(true, true), ~vec3<i32>(-1i, 1068i, -26257i))))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-771f, -1000f, 759f, global3[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)], -733f, global0.x))))))), abs(vec4<u32>(33963u, select(1u, u_input.c, true), 43329u, 1u)) ^ _wgslsmith_clamp_vec4_u32(reverseBits(abs(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<u32>(4294967295u, u_input.c, 34231u, u_input.c), any(vec2<bool>(false, false))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 1u, 91322u), vec4<u32>(u_input.c, 0u, u_input.c, 30061u) | vec4<u32>(0u, u_input.c, 0u, u_input.c))));
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_add_u32(max(67091u, 39421u), u_input.c), 47403u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(44316u, 12u)], -1233f, global0.x)) + var_0.b.a.xwx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(8789u, 12u)], -199f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))))), var_0.c.wy);
}

