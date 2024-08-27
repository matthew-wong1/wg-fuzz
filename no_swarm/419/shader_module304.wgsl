struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 1> = array<u32, 1>(55185u);

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<bool>(true, true), vec3<f32>(-795f, 684f, 262f), vec3<bool>(false, true, false), vec2<i32>(20939i, 42709i), 40262u), Struct_1(vec2<bool>(true, true), vec3<f32>(1314f, 1322f, 1950f), vec3<bool>(true, false, true), vec2<i32>(2147483647i, -2357i), 61307u), Struct_1(vec2<bool>(false, false), vec3<f32>(-631f, 561f, -113f), vec3<bool>(false, false, true), vec2<i32>(2147483647i, 33173i), 110419u), Struct_1(vec2<bool>(false, true), vec3<f32>(-110f, 407f, -2419f), vec3<bool>(false, true, false), vec2<i32>(4944i, -10918i), 9102u), Struct_1(vec2<bool>(false, true), vec3<f32>(337f, -226f, 1053f), vec3<bool>(true, false, true), vec2<i32>(0i, i32(-2147483648)), 43041u), Struct_1(vec2<bool>(true, false), vec3<f32>(521f, -1191f, -1000f), vec3<bool>(true, false, true), vec2<i32>(0i, -1i), 55565u), Struct_1(vec2<bool>(false, true), vec3<f32>(-1243f, 124f, 558f), vec3<bool>(true, false, false), vec2<i32>(1i, i32(-2147483648)), 1u), Struct_1(vec2<bool>(true, false), vec3<f32>(242f, -2415f, 1223f), vec3<bool>(true, true, false), vec2<i32>(23115i, 64433i), 4294967295u), Struct_1(vec2<bool>(false, false), vec3<f32>(670f, -264f, 647f), vec3<bool>(true, false, true), vec2<i32>(-5976i, 1i), 4294967295u), Struct_1(vec2<bool>(false, true), vec3<f32>(1000f, -986f, 2563f), vec3<bool>(true, false, true), vec2<i32>(i32(-2147483648), -48726i), 32764u), Struct_1(vec2<bool>(false, true), vec3<f32>(-1000f, 1806f, -544f), vec3<bool>(false, false, false), vec2<i32>(1i, 45208i), 62078u), Struct_1(vec2<bool>(true, true), vec3<f32>(-566f, -970f, -1000f), vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 1i), 76u), Struct_1(vec2<bool>(true, true), vec3<f32>(1000f, -1093f, 1281f), vec3<bool>(false, false, false), vec2<i32>(-52747i, 1i), 0u), Struct_1(vec2<bool>(false, true), vec3<f32>(1000f, 557f, 416f), vec3<bool>(true, true, true), vec2<i32>(2147483647i, 25865i), 1u), Struct_1(vec2<bool>(false, false), vec3<f32>(-204f, 227f, 161f), vec3<bool>(false, true, false), vec2<i32>(0i, -1i), 20842u), Struct_1(vec2<bool>(true, true), vec3<f32>(1657f, -117f, 283f), vec3<bool>(false, true, true), vec2<i32>(-1i, 0i), 0u));

var<private> global3: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    return ~30935u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global1 = array<u32, 1>();
    let var_0 = vec3<u32>(u_input.e.x, func_3(arg_1.zw), 33716u);
    let var_1 = _wgslsmith_mod_i32(-(arg_2.d.x & 1i), arg_2.d.x | (-u_input.b & 1i)) != abs(-1448i);
    var var_2 = ~(~_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_0.d.x), vec2<i32>(-34257i, u_input.a))), arg_2.d << (~vec2<u32>(u_input.d, var_0.x) % vec2<u32>(32u))));
    let var_3 = 8549u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -246f)), 520f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<bool>(false, false), vec3<f32>(-627f, global0.x, global0.x), vec3<bool>(true, true, true), u_input.c, 0u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.e.x, 1u)], 0u, 4294967295u, global1[_wgslsmith_index_u32(u_input.e.x, 1u)]), global2[_wgslsmith_index_u32(79022u, 16u)]))))));
    global2 = array<Struct_1, 16>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(select(global0.x, global0.x, u_input.c.x < u_input.b)), global0.x, 1f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 286f, global0.x, 1000f) * vec4<f32>(global0.x, -1000f, -702f, -580f)) - vec4<f32>(var_0.x, 1026f, 470f, 319f)), vec4<f32>(-571f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(114f, 1102f)), _wgslsmith_f_op_f32(-389f + global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1088f))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(396f, var_0.x, _wgslsmith_f_op_f32(floor(global0.x))) * _wgslsmith_f_op_vec3_f32(var_0.wxz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1440f, var_0.x)))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -562f, var_0.x) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.xzx * vec3<f32>(-1858f, 518f, -406f)))))));
    let var_1 = vec4<bool>(all(global3.yx), global3.x, global3.x, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    var var_0 = Struct_1(!vec2<bool>(select(true, any(global3.zy), global3.x), global3.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + 830f), _wgslsmith_f_op_f32(sign(517f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1255f * -1381f))) * global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x))))), !vec3<bool>(global3.x, false, ~u_input.e.x >= ~u_input.d), -abs(abs(u_input.c)) & u_input.c, ~u_input.e.x);
    global3 = var_0.c;
    global0 = _wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.b.x, -1618f, var_0.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2663f, var_0.b.x)), var_0.b.x, _wgslsmith_f_op_f32(func_1())), var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))))));
}

