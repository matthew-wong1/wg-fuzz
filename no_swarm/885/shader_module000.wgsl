struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<u32>(1u, 27279u), Struct_1(vec3<bool>(false, true, false), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i)), 18819u), Struct_3(vec2<u32>(1u, 4294967295u), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-27096i, -21332i, -32063i, -88769i)), 31934u), Struct_3(vec2<u32>(0u, 216u), Struct_1(vec3<bool>(true, true, true), vec4<i32>(2147483647i, -1i, i32(-2147483648), -8833i)), 4294967295u), Struct_3(vec2<u32>(36371u, 4294967295u), Struct_1(vec3<bool>(true, false, true), vec4<i32>(0i, i32(-2147483648), -7397i, 37928i)), 1u), Struct_3(vec2<u32>(72710u, 4294967295u), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648))), 2700u), Struct_3(vec2<u32>(0u, 62182u), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-8584i, 0i, 2147483647i, -4542i)), 4294967295u));

var<private> global1: array<u32, 17> = array<u32, 17>(1u, 21512u, 65312u, 4294967295u, 1u, 1u, 0u, 1u, 4294967295u, 19195u, 1u, 26595u, 33754u, 33884u, 21234u, 100749u, 84351u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec3<bool> {
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    global0 = array<Struct_3, 6>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), true)), _wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(-749f - _wgslsmith_f_op_f32(-arg_2.x)));
    global0 = array<Struct_3, 6>();
    return !arg_1.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = select(arg_1.zzy, !vec3<bool>(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 17u)]) <= ~arg_3.c, select(true, false, false), _wgslsmith_f_op_f32(arg_2 * -1193f) <= _wgslsmith_f_op_f32(arg_2 - arg_2)), !select(!(!arg_1.wwy), !func_2(vec4<u32>(1u, 1u, arg_3.a.x, arg_3.a.x), arg_3.b, arg_0, u_input.d), false));
    let var_1 = u_input.d.yzy;
    let var_2 = arg_3.b;
    return Struct_2(arg_3.b.a.x, (306f > arg_0.x) && true, -var_2.b.x, var_2, arg_3.b);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_1(vec3<bool>(arg_2.d.a.x, arg_1 <= arg_3, true), vec4<i32>(2833i, 1i, ~abs(1i ^ u_input.d.x), arg_2.c));
    var var_1 = var_0.b.yz;
    global1 = array<u32, 17>();
    let var_2 = -1150f;
    var var_3 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.wxw, ~vec3<u32>(u_input.b.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 17u)], 17u)] % 32u), 4294967295u, _wgslsmith_div_u32(0u, 1u))));
    return arg_2.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(1u >> (global1[_wgslsmith_index_u32(~4294967295u, 17u)] % 32u), 17u)], _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(0u, 17u)], u_input.c))) >> (vec2<u32>(u_input.c, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 54094u)) % vec2<u32>(32u)));
    var var_1 = Struct_1(select(select(vec3<bool>(false, true, true), func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(265f, -410f, 690f, -1460f), vec4<f32>(847f, -1441f, -958f, 279f))), _wgslsmith_f_op_f32(-1000f - -632f), func_1(vec3<f32>(-207f, 1000f, 910f), vec4<bool>(false, true, false, true), 1150f, Struct_3(vec2<u32>(0u, 26338u), Struct_1(vec3<bool>(true, false, false), vec4<i32>(u_input.d.x, u_input.d.x, -1i, -2147483647i)), 0u)), _wgslsmith_f_op_f32(ceil(1000f))), !func_1(vec3<f32>(-365f, -1205f, -134f), vec4<bool>(false, false, false, false), -587f, Struct_3(u_input.b.wz, Struct_1(vec3<bool>(false, true, true), u_input.d), var_0.x)).d.a.x), func_3(vec4<f32>(-1000f, 195f, -614f, _wgslsmith_div_f32(-237f, 1404f)), -1000f, func_1(vec3<f32>(185f, 1000f, -250f), vec4<bool>(false, true, false, true), 795f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 34698u), vec2<u32>(0u, 25617u)), 6u)]), 1323f), _wgslsmith_clamp_i32(2147483647i, ~u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.d.yy)) != 1i), vec4<i32>(~(-(u_input.d.x << (u_input.b.x % 32u))), -1i, u_input.d.x, i32(-1i) * -16950i));
    var var_2 = func_1(vec3<f32>(877f, _wgslsmith_f_op_f32(-577f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-586f + -130f) - _wgslsmith_f_op_f32(-1263f + -504f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(358f + _wgslsmith_f_op_f32(1357f * 1622f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-204f)) + _wgslsmith_f_op_f32(1109f * 224f)))), !select(select(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, false, true), true)), select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), var_1.a.x), false || (var_1.a.x | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-494f - 729f) + _wgslsmith_f_op_f32(select(-442f, 690f, false)))))), global0[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32((var_0.x << (global1[_wgslsmith_index_u32(1u, 17u)] % 32u)) >> (44094u % 32u), 17u)]), 6u)]);
    var var_3 = vec4<bool>(var_1.a.x, true, false, false);
    var_3 = select(!(!(!(!vec4<bool>(true, var_3.x, false, var_3.x)))), vec4<bool>(-72759i == _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.b.x, -1i, -18061i), var_2.d.b.wyx), select(58769u, 4294967295u, var_2.d.a.x) <= _wgslsmith_add_u32(var_0.x | u_input.c, global1[_wgslsmith_index_u32(38024u, 17u)] ^ 71144u), true, true), var_2.a);
    var var_4 = select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(var_1.a.x, var_3.x), true)), true, false, var_3.x), vec4<bool>(var_1.a.x, var_2.b, true, true), !var_3.x);
    let var_5 = global1[_wgslsmith_index_u32(~0u, 17u)];
    var_4 = !(!select(select(vec4<bool>(true, var_2.d.a.x, false, false), select(vec4<bool>(var_2.a, var_2.b, var_1.a.x, false), vec4<bool>(false, var_1.a.x, var_3.x, var_4.x), vec4<bool>(true, var_1.a.x, true, var_3.x)), !var_2.d.a.x), vec4<bool>(!var_4.x, false, false || var_2.a, var_2.d.a.x), select(var_3.x, true, var_2.e.a.x)));
    var var_6 = Struct_3(vec2<u32>(~4294967295u, 4294967295u), var_2.d, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, ~19288u, ~var_0.x, ~1u), vec4<u32>(~1u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13246u, 17u)], 17u)], ~49462u, ~4294967295u), !vec4<bool>(var_2.a, var_4.x, true, var_3.x)), vec4<u32>(4294967295u, 71981u, _wgslsmith_clamp_u32(1u, 1u, 93170u) & ~72972u, 1944u)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(max(17765u, select(global1[_wgslsmith_index_u32(247u, 17u)], 11945u, false)), 1u), firstLeadingBit(reverseBits(vec2<u32>(23799u, 58013u)) | vec2<u32>(var_6.c, global1[_wgslsmith_index_u32(u_input.c, 17u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1151f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(318f, -655f))))), var_6.a.x);
}

