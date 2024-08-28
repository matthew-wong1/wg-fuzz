struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false);

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-1568f, -453f, -900f), vec3<f32>(-1593f, 1437f, -1000f), vec3<f32>(1074f, -675f, 475f), vec3<f32>(708f, -538f, 142f), vec3<f32>(-587f, 656f, 876f), vec3<f32>(107f, -126f, 1783f), vec3<f32>(-264f, 1688f, 220f), vec3<f32>(-2746f, 647f, 1414f), vec3<f32>(-2285f, 1456f, -2334f), vec3<f32>(-530f, -1000f, -1315f), vec3<f32>(1000f, 185f, -1000f), vec3<f32>(207f, 140f, -205f), vec3<f32>(809f, 221f, -1106f), vec3<f32>(1193f, 553f, 889f), vec3<f32>(-290f, -375f, -634f), vec3<f32>(-1466f, 142f, -1677f), vec3<f32>(1347f, 334f, 637f), vec3<f32>(-1000f, 668f, -154f), vec3<f32>(-1016f, -391f, 378f), vec3<f32>(-194f, 1240f, -1260f), vec3<f32>(483f, -342f, 651f), vec3<f32>(-1000f, 2141f, -1140f), vec3<f32>(-1000f, -2002f, 417f), vec3<f32>(-1123f, 665f, -1703f), vec3<f32>(-1098f, -1000f, 1845f), vec3<f32>(-929f, 1536f, -1771f));

var<private> global2: array<vec3<bool>, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.c.x, u_input.c.x), ~u_input.a.wyz)) | max(vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), u_input.a.x & 4294967295u), _wgslsmith_mod_vec3_u32(~vec3<u32>(35359u, u_input.a.x, 2020u), vec3<u32>(4294967295u, u_input.a.x, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(-1487f))) - 1883f)), u_input.a);
    global0 = Struct_3(any(vec4<bool>(false, all(vec4<bool>(true, false, true, global0.a)), all(!vec4<bool>(true, global0.a, global0.a, global0.a)), !global0.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b) + _wgslsmith_f_op_f32(f32(-1f) * -209f))), _wgslsmith_div_f32(-570f, var_0.b), 1463f, _wgslsmith_f_op_f32(round(-603f)))));
    let var_2 = all(vec4<bool>(global0.a, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.b - 1017f), _wgslsmith_f_op_f32(-var_0.b), false)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), !global0.a));
    var var_3 = ~var_0.a.x;
    return ~u_input.b.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(16410i, 2147483647i, func_3());
    let var_1 = vec4<bool>(any(!(!(!vec3<bool>(false, false, arg_1.x)))), any(vec2<bool>(true, true)) & true, all(select(arg_1.yy, vec2<bool>(true, true), vec2<bool>(true, false))) | true, true);
    return Struct_1(abs(i32(-1i) * -1i), _wgslsmith_f_op_f32(ceil(-1000f)), ~u_input.a.wyy, var_0.x, !arg_0.x);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = Struct_4(vec3<u32>(arg_1, _wgslsmith_sub_u32(u_input.c.x, max(0u, ~36172u)), ~58683u), _wgslsmith_f_op_f32(ceil(1000f)), u_input.a >> (~(~(vec4<u32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 0u) >> (vec4<u32>(8691u, arg_2.c.x, u_input.c.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b - arg_2.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -326f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-588f, var_0.b)))))));
    let var_2 = arg_2.e || arg_2.e;
    var var_3 = var_1.x;
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(759f - -1575f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -219f), _wgslsmith_f_op_f32(-arg_2.b)))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(!global2[_wgslsmith_index_u32(~19932u, 32u)], !select(global2[_wgslsmith_index_u32(arg_1, 32u)], vec3<bool>(false, global0.a, arg_0), vec3<bool>(false, arg_0, false))).b, var_0.b));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 953f))), arg_3.a.yw)), vec2<f32>(-246f, -241f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(110f + var_0.x));
    global1 = array<vec3<f32>, 26>();
    let var_2 = countOneBits(7489i);
    return Struct_3(!(!global0.a));
}

fn func_1(arg_0: Struct_3) -> vec2<f32> {
    global1 = array<vec3<f32>, 26>();
    global0 = func_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_4(true, u_input.c.x, func_2(vec3<bool>(global0.a, arg_0.a, false), !global2[_wgslsmith_index_u32(u_input.c.x, 32u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(517f, 1241f), vec2<f32>(-1000f, -1908f))))))), select(!(!select(global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(1u, 32u)], arg_0.a)), select(vec3<bool>(true && global0.a, false, global0.a), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, 4294967295u), 32u)], all(!global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), global0.a), ~(~1u), Struct_5(!(!(!vec4<bool>(true, global0.a, arg_0.a, global0.a)))));
    let var_0 = firstTrailingBit(~u_input.d.x << (~reverseBits(max(67534u, 52236u)) % 32u));
    let var_1 = arg_0.a;
    global0 = Struct_3(var_1);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(658f)), -945f)), -240f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-326f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-366f, -765f)))), vec2<bool>(arg_0.a, any(vec3<bool>(var_1, arg_0.a, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1476f, -172f) + _wgslsmith_f_op_f32(select(-121f, 983f, global0.a))))), 1451f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(2306f, 1000f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(global0.a))), vec2<f32>(2105f, 1249f)))))), select(!(!(!vec2<bool>(global0.a, global0.a))), vec2<bool>(global0.a, !global0.a & global0.a), select(vec2<bool>(true, true), select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), true), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global0.a), vec2<bool>(false, true)), true), vec2<bool>(global0.a, global0.a || global0.a)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(1993f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_0.x, var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), -1449f))));
    var var_2 = ~u_input.d.x;
    var var_3 = -1388f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f * -1692f)) - 1928f))));
    global2 = array<vec3<bool>, 32>();
    let var_5 = global0.a;
    var var_6 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(36816u, ~(u_input.c.x | ~(~0u))), 26u)];
    var var_7 = vec2<u32>(~0u, ~func_2(global2[_wgslsmith_index_u32(3546u, 32u)], vec3<bool>(func_2(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(39923u, 32u)]).e, global0.a, 179f > var_6.x)).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(244f, _wgslsmith_f_op_f32(trunc(var_6.x)))) * vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1337f - 1000f))), ~vec3<i32>(~countOneBits(-1i), i32(-1i) * -2147483647i, 17283i), 15257u, _wgslsmith_f_op_f32(var_6.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6.x, 215f)))));
}

