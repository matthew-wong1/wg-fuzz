struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, false, false, true, true, true, false, true, false, true, true, false, false, false, false, true, false, false, true, false, false, false, true, true, true, true);

var<private> global1: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1u, vec4<f32>(279f, 163f, 696f, 1567f)), Struct_2(1907u, vec4<f32>(-450f, 581f, -505f, 2279f)), Struct_2(39527u, vec4<f32>(964f, -599f, -1025f, -1000f)), Struct_2(4294967295u, vec4<f32>(-1564f, 791f, 1000f, -252f)), Struct_2(24544u, vec4<f32>(-329f, 384f, 238f, -1000f)), Struct_2(11177u, vec4<f32>(286f, 617f, 255f, -1327f)), Struct_2(4294967295u, vec4<f32>(-223f, 562f, 1000f, -791f)));

var<private> global3: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(4294967295u, 121936u, 0u, 46364u), vec4<u32>(51026u, 4294967295u, 0u, 63839u), vec4<u32>(0u, 1u, 1u, 21627u), vec4<u32>(0u, 1u, 41018u, 0u), vec4<u32>(14263u, 1u, 36498u, 0u), vec4<u32>(1u, 11776u, 0u, 1u), vec4<u32>(7563u, 69143u, 46323u, 23090u), vec4<u32>(38752u, 53492u, 0u, 12318u), vec4<u32>(0u, 20495u, 1u, 1u), vec4<u32>(4294967295u, 16514u, 4294967295u, 4294967295u), vec4<u32>(20095u, 0u, 33495u, 0u), vec4<u32>(65742u, 96235u, 1u, 1u), vec4<u32>(19382u, 113769u, 33381u, 0u), vec4<u32>(13430u, 1u, 0u, 1u), vec4<u32>(44910u, 70612u, 60189u, 2758u), vec4<u32>(10162u, 0u, 0u, 61283u));

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(0u, vec4<f32>(-432f, -1188f, 150f, -1625f)), Struct_2(0u, vec4<f32>(1000f, -1203f, -1000f, -1000f)), Struct_2(32111u, vec4<f32>(1476f, 748f, 695f, 417f)), Struct_2(58418u, vec4<f32>(-251f, 351f, -667f, -1139f)), Struct_2(4294967295u, vec4<f32>(387f, 116f, 701f, 689f)), Struct_2(30106u, vec4<f32>(-180f, -169f, 697f, -1147f)), Struct_2(32905u, vec4<f32>(586f, -1000f, -121f, 1000f)), Struct_2(631u, vec4<f32>(333f, -624f, 2130f, -515f)), Struct_2(10086u, vec4<f32>(-1447f, -1000f, -244f, -2386f)), Struct_2(66148u, vec4<f32>(1665f, -492f, -678f, 1144f)), Struct_2(0u, vec4<f32>(-1360f, -1000f, 507f, 1462f)), Struct_2(24283u, vec4<f32>(561f, 694f, -1000f, 1000f)), Struct_2(0u, vec4<f32>(147f, -959f, -1000f, 895f)), Struct_2(4294967295u, vec4<f32>(-482f, 1303f, 2147f, 702f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global1 = array<vec2<bool>, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(762f * arg_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1019f)), _wgslsmith_f_op_f32(arg_1.b.b.x - -396f))))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.c.b.x * 1046f), _wgslsmith_f_op_f32(step(arg_1.c.b.x, 408f))), false))));
    var var_1 = select(arg_1.a, vec3<bool>(global0[_wgslsmith_index_u32(~0u, 28u)], any(!vec2<bool>(arg_0, true)), !(!(arg_2.b.x < 31801i))), !arg_1.a);
    global2 = array<Struct_2, 7>();
    global0 = array<bool, 28>();
    return _wgslsmith_f_op_f32(ceil(var_0.x));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<bool>(true, (true && global0[_wgslsmith_index_u32(~1u, 28u)]) || true, false, abs(firstLeadingBit(156u) << (reverseBits(0u) % 32u)) == select(_wgslsmith_clamp_u32(1u >> (0u % 32u), ~u_input.b.x, abs(4294967295u)), ~21916u, any(vec3<bool>(false, true, false))));
    var var_1 = u_input.c.x;
    global3 = array<vec4<u32>, 16>();
    global1 = array<vec2<bool>, 16>();
    global0 = array<bool, 28>();
    return abs(-1i);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    var var_1 = ~u_input.c.x <= _wgslsmith_add_u32(1u, ~firstLeadingBit(1u >> (u_input.c.x % 32u)));
    global3 = array<vec4<u32>, 16>();
    let var_2 = vec4<bool>(all(!select(vec2<bool>(false, true), select(vec2<bool>(false, arg_3), global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(57787u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * 648f), -1000f, false)), -166f, global0[_wgslsmith_index_u32(abs(1463u) ^ (u_input.a | 1u), 28u)])) == -618f, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], (u_input.c.x >= u_input.c.x) && false)), all(vec3<bool>(all(vec4<bool>(true, false, false, true)) && true, false, any(vec4<bool>(arg_3, arg_3, arg_3, global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))));
    let var_3 = ~u_input.a;
    return (~(~(~(-1i))) ^ func_3(-177f)) ^ 7550i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) - 301f) + _wgslsmith_f_op_f32(f32(-1f) * -607f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(249f + 906f) * -1126f) + _wgslsmith_f_op_f32(trunc(-1000f)))) * 258f);
    let var_1 = true;
    let var_2 = vec4<u32>(84322u, (_wgslsmith_add_u32(u_input.c.x, u_input.a) ^ ~(u_input.a | 4294967295u)) >> (_wgslsmith_div_u32(~u_input.a, ~(u_input.c.x << (4294967295u % 32u))) % 32u), 1u, min(~u_input.a, ~(~u_input.c.x)));
    var var_3 = var_2.zz;
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f) - _wgslsmith_f_op_f32(f32(-1f) * -2881f)), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(true, Struct_3(vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_3.x, 28u)]), global4[_wgslsmith_index_u32(u_input.b.x, 14u)], Struct_2(var_2.x, vec4<f32>(604f, -721f, var_0, var_0))), Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], vec2<i32>(-41108i, -40490i), -1i), vec3<f32>(1000f, 596f, 426f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(948f - -1000f), _wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_f_op_f32(-var_0))), all(global1[_wgslsmith_index_u32(var_2.x, 16u)]));
    var var_5 = Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, _wgslsmith_f_op_f32(f32(-1f) * -1432f), 1000f, _wgslsmith_f_op_f32(var_0 * -131f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 414f, var_0, _wgslsmith_f_op_f32(-var_0)))), select(!vec4<bool>(var_1, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_3.x, 28u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), !var_1, true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], false, false, false), vec4<bool>(var_1, true, false, var_1), true), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], var_1, true, global0[_wgslsmith_index_u32(52642u, 28u)]), any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], var_1)))))));
    var var_6 = 991f;
    var_6 = 556f;
    let var_7 = Struct_3(select(!select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_5.a, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(19185u, 28u)], true, false), false), !vec3<bool>(global0[_wgslsmith_index_u32(85545u, 28u)], var_1, true), true), vec3<bool>(false, false, true && var_1), select(!(!var_1), false, true)), Struct_2(~64286u, vec4<f32>(_wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(ceil(var_5.b.x))), var_5.b.x, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(427f + 672f))), Struct_2(~(~var_5.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-528f, -1230f, _wgslsmith_f_op_f32(456f + -1054f), 293f), _wgslsmith_f_op_vec4_f32(-var_5.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(74184u);
}

