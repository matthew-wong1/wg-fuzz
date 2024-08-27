struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-100f, -1029f, -353f, -509f), vec4<f32>(-1226f, -2373f, 665f, 527f), vec4<f32>(-168f, -372f, -368f, 2005f), vec4<f32>(709f, 446f, -1839f, 1937f), vec4<f32>(-318f, 1746f, 1000f, 1003f), vec4<f32>(646f, -1306f, -169f, -1903f), vec4<f32>(-196f, -1734f, -2881f, -695f), vec4<f32>(1479f, 249f, -1231f, 1663f), vec4<f32>(-604f, 344f, -477f, 995f), vec4<f32>(3570f, -642f, 294f, 2025f), vec4<f32>(825f, -125f, -1460f, 692f), vec4<f32>(796f, -1245f, 188f, -1749f), vec4<f32>(743f, 791f, 1756f, -492f), vec4<f32>(1519f, 1326f, -1457f, 1109f), vec4<f32>(303f, -1325f, -315f, 135f), vec4<f32>(-1000f, -569f, -1000f, 611f), vec4<f32>(-882f, 1631f, 185f, 1686f), vec4<f32>(-1808f, 913f, -1296f, -328f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, true, true, true, false, true, true, false, false, false, true, true, true, true, true, false, false, true, false, false, false, true, true, true, false, false, true);

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(18001u), Struct_1(0u), Struct_1(68602u), Struct_1(10939u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(24916u), Struct_1(0u), Struct_1(49469u), Struct_1(0u), Struct_1(46404u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(42109u), Struct_1(2478u), Struct_1(73937u), Struct_1(4294967295u), Struct_1(1u), Struct_1(26205u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = Struct_1(~u_input.c);
    global0 = array<vec4<f32>, 18>();
    global0 = array<vec4<f32>, 18>();
    let var_0 = any(select(vec2<bool>(_wgslsmith_mult_u32(global1.a, 6560u) > global1.a, ~u_input.d.x != u_input.d.x), select(vec2<bool>(arg_0, true || global3[_wgslsmith_index_u32(u_input.e, 32u)]), !vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 32u)], global3[_wgslsmith_index_u32(global1.a, 32u)]), vec2<bool>(true, any(vec4<bool>(arg_0, global3[_wgslsmith_index_u32(60663u, 32u)], true, arg_0)))), !select(select(vec2<bool>(global3[_wgslsmith_index_u32(global1.a, 32u)], arg_0), vec2<bool>(false, false), true), select(vec2<bool>(global3[_wgslsmith_index_u32(4288u, 32u)], true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), !vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 32u)]))));
    global1 = global4[_wgslsmith_index_u32((76718u & _wgslsmith_mod_u32(~u_input.a.x, ~29282u)) & (firstTrailingBit(0u) << (global1.a % 32u)), 21u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f + 306f) - _wgslsmith_f_op_f32(-1000f + 391f))) - _wgslsmith_f_op_f32(-1000f * -354f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2445f, -413f), -684f)), _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(sign(-1702f)))), -1142f)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3((u_input.d.x <= arg_0.x) && true)) + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-778f + -2124f) * _wgslsmith_f_op_f32(max(-1228f, -429f))))))));
    let var_2 = u_input.a;
    let var_3 = Struct_1(select(var_2.x, 1u, true));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, var_1, 951f));
    return Struct_1(firstTrailingBit(~(~var_3.a << (_wgslsmith_sub_u32(var_2.x, u_input.c) % 32u))));
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    let var_0 = vec4<u32>(1u, u_input.e, ~4294967295u, firstLeadingBit(1u));
    var var_1 = func_2(countOneBits(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ vec3<i32>(u_input.b | u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(23802i, u_input.d.x, u_input.b, 1i), vec4<i32>(-21477i, u_input.b, 1i, u_input.b)), 21597i)));
    var var_2 = func_2(vec3<i32>(reverseBits(u_input.b) ^ (i32(-1i) * -37027i), u_input.d.x, u_input.b & reverseBits(-468i)) << ((vec3<u32>(~var_0.x, min(45613u, 1u), var_1.a) | vec3<u32>(1u, 4294967295u, _wgslsmith_sub_u32(4294967295u, 4294967295u))) % vec3<u32>(32u)));
    return StorageBuffer(1u, _wgslsmith_add_vec2_u32(var_0.ww, _wgslsmith_sub_vec2_u32(var_0.zx >> (u_input.a.xy % vec2<u32>(32u)), u_input.a.zx << (vec2<u32>(var_2.a, u_input.a.x) % vec2<u32>(32u))) & vec2<u32>(33649u, ~u_input.e)), _wgslsmith_f_op_vec2_f32(-arg_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 21>();
    global0 = array<vec4<f32>, 18>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(global1.a, 18u)]);
}

