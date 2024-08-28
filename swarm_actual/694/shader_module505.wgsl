struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(1487f, -515f, -730f, -121f), vec4<f32>(-325f, 554f, -1744f, -268f), vec4<f32>(-213f, 1000f, -285f, 971f), vec4<f32>(-208f, -128f, 173f, -1279f), vec4<f32>(1442f, -241f, 732f, 442f), vec4<f32>(1575f, -1000f, -1000f, 642f), vec4<f32>(462f, -1431f, 141f, 1546f), vec4<f32>(-969f, -646f, 2130f, 889f), vec4<f32>(115f, -743f, 1000f, -594f), vec4<f32>(-1398f, 1638f, 2133f, -1233f), vec4<f32>(-524f, -502f, 907f, -643f), vec4<f32>(1258f, -908f, -137f, 472f), vec4<f32>(1703f, 908f, -286f, 355f), vec4<f32>(1000f, -1632f, 759f, 1884f), vec4<f32>(1412f, 1475f, -634f, -302f), vec4<f32>(1037f, -737f, 416f, 1139f), vec4<f32>(-295f, -269f, -1258f, 1000f), vec4<f32>(2466f, 1410f, 1311f, -678f), vec4<f32>(-375f, 1159f, -1171f, -1356f), vec4<f32>(1250f, -370f, 1315f, -2122f), vec4<f32>(1062f, 1000f, 700f, -538f), vec4<f32>(352f, 1602f, 1000f, 175f), vec4<f32>(-237f, 1363f, -996f, 890f), vec4<f32>(-1258f, -1069f, 921f, 425f), vec4<f32>(-600f, 2026f, 278f, 412f), vec4<f32>(-2414f, 143f, 659f, -576f), vec4<f32>(-570f, -978f, -663f, 459f));

var<private> global1: array<u32, 1>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    let var_0 = arg_1;
    global0 = array<vec4<f32>, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(trunc(-246f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) - var_0.a.x), var_0.a.x, 745f, _wgslsmith_div_f32(var_0.a.x, 716f))));
    global1 = array<u32, 1>();
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a.x))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = vec3<bool>(true, arg_0.x, any(!arg_0.yw));
    var var_1 = arg_1;
    global1 = array<u32, 1>();
    var_0 = select(!arg_0.yxx, vec3<bool>(false, any(arg_0), true), select(!arg_0.yzy, arg_0.wzx, arg_0.yzx));
    global0 = array<vec4<f32>, 27>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x))) * 216f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, 1846f, _wgslsmith_f_op_f32(-598f + -416f)) - vec3<f32>(_wgslsmith_f_op_f32(908f + 482f), 1346f, _wgslsmith_f_op_f32(-197f * 595f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f + _wgslsmith_f_op_f32(-529f * 853f))), _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1157f, -533f, 113f)), vec3<u32>(u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27455u, 1u)], 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-843f, -689f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(359f)), -159f))));
    global0 = array<vec4<f32>, 27>();
    var var_1 = ~1i;
    var var_2 = vec4<u32>(7017u >> (_wgslsmith_sub_u32(~6026u, u_input.d.x) % 32u), u_input.b.x, ~u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(~(~u_input.e.x), ~(~4294967295u), u_input.b.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0), var_0)) * var_0), var_0, true)), abs(var_2.xxy));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = array<vec4<f32>, 27>();
    var var_0 = arg_1;
    global1 = array<u32, 1>();
    global0 = array<vec4<f32>, 27>();
    let var_1 = !vec2<bool>(~_wgslsmith_clamp_u32(1u, u_input.a.x, 37070u) > ~23912u, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), true)));
    return any(select(select(select(select(vec2<bool>(var_1.x, var_1.x), var_1, var_1.x), var_1, select(var_1, var_1, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, var_1.x), var_1, var_1.x), var_1), any(select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)))), select(var_1, !(!vec2<bool>(var_1.x, true)), true), vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(1u, Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2501f, -1000f, -1097f), vec3<f32>(1099f, -357f, -397f))), ~u_input.e.yzy), firstLeadingBit(vec4<i32>(1i, -1190i, 1i, u_input.c)) << (_wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(22585u, u_input.e.x, 111430u, 1u)) % vec4<u32>(32u)), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(399f - _wgslsmith_f_op_f32(ceil(-668f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, _wgslsmith_f_op_f32(f32(-1f) * -845f)))));
    global1 = array<u32, 1>();
    var var_1 = 1155f;
    var var_2 = vec2<i32>(u_input.c ^ -8534i, -38835i);
    let var_3 = vec3<bool>(u_input.a.x >= u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, -2147483647i), -20321i) == countOneBits(reverseBits(1i)), func_4(func_2(), func_2(), u_input.d.x));
    var var_4 = Struct_1(vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))), firstTrailingBit(~vec3<u32>(13317u, u_input.a.x, 28316u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a.x, 4294967295u, ~u_input.e.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]), u_input.d), vec3<u32>(1u, u_input.b.x << (u_input.e.x % 32u), global1[_wgslsmith_index_u32(~1u, 1u)])));
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -1268f)) + -688f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-387f, -1721f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1904f - 613f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(var_0.x)))))), vec4<i32>(~(-14745i), _wgslsmith_add_i32(var_2.x, -26676i), 42163i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(-21833i, var_2.x)), -u_input.c)), u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(reverseBits(var_4.b.x), 27u)] + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.x, 246f, var_4.a.x, var_4.a.x), vec4<f32>(-1623f, var_4.a.x, var_0.x, var_4.a.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, var_4.a.x, -1130f, 556f)))))));
}

