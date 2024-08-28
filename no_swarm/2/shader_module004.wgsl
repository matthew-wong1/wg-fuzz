struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 1000f;

var<private> global2: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(i32(-2147483648), 44288i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 20231i), vec2<i32>(35965i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, 19754i), vec2<i32>(-6484i, 71790i), vec2<i32>(-48024i, -1i), vec2<i32>(-4995i, i32(-2147483648)), vec2<i32>(35525i, -1i));

var<private> global3: array<Struct_1, 12>;

var<private> global4: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2315f)) * _wgslsmith_f_op_f32(-1994f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)))));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    global4 = 1u;
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(min(56198u, 102093u) ^ arg_2.b, ~_wgslsmith_sub_u32(arg_0.b, arg_2.b)) << (abs(4294967295u) % 32u), arg_0.b, _wgslsmith_div_u32(u_input.b.x, ~19825u));
    return Struct_1(vec2<bool>(arg_2.a.c < arg_2.a.c, false), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(arg_2.a.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.c * -919f)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_4) -> f32 {
    let var_0 = u_input.b.x;
    var var_1 = any(vec3<bool>(firstLeadingBit(arg_2.d.x) >= _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(~var_0, 11u)], vec2<i32>(38242i, -7564i)), true, all(!arg_2.c) & false));
    var var_2 = Struct_4(arg_2.a, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, arg_2.b), reverseBits(1u), ~arg_2.b, 37237u)), vec4<bool>(!arg_1.x, _wgslsmith_add_u32(var_0, 5276u) > max(55809u ^ var_0, u_input.b.x), all(select(select(vec4<bool>(false, arg_2.c.x, arg_2.a.b, false), arg_2.c, arg_2.c), arg_2.c, arg_2.c)), !(!arg_1.x) | arg_1.x), u_input.a.xwx);
    global3 = array<Struct_1, 12>();
    var var_3 = !(select(u_input.c ^ arg_2.d.x, 135i, !arg_2.a.a.x) > u_input.c);
    return _wgslsmith_f_op_f32(var_2.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_add_u32(~1u, _wgslsmith_add_u32(~func_1(Struct_2(1305f, Struct_1(vec2<bool>(true, false), false, 265f), -1105f, u_input.b.x)), ~u_input.b.x));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1685f)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1376f, 652f, 550f, 355f) - vec4<f32>(546f, -219f, 744f, -205f)), vec4<f32>(1f, 1f, 1f, 1f)))), vec2<bool>(true, true), Struct_4(func_2(Struct_4(Struct_1(vec2<bool>(true, false), true, 785f), 0u, vec4<bool>(true, true, false, false), vec3<i32>(-1i, u_input.a.x, -55423i)), ~(-1i), Struct_4(Struct_1(vec2<bool>(false, true), true, -875f), 4294967295u, vec4<bool>(false, false, true, true), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), -16236i), u_input.b.x | 109461u, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), (vec3<i32>(u_input.c, -71528i, 30011i) ^ u_input.a.xwz) | vec3<i32>(u_input.a.x, -48293i, u_input.a.x)))));
    let var_1 = firstTrailingBit(27113u);
    var var_2 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(vec4<bool>(true, false, var_0.x < var_0.x, true)), true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -264f);
    let var_4 = ~u_input.b.wx;
    let var_5 = Struct_4(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~min(var_4.x, u_input.b.x), var_1 | abs(33463u), var_4.x), 12u)], abs(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)), vec4<bool>(func_2(Struct_4(func_2(Struct_4(Struct_1(vec2<bool>(false, false), true, 751f), var_4.x, vec4<bool>(var_2.x, false, var_2.x, true), vec3<i32>(0i, 29033i, u_input.a.x)), -1i, Struct_4(Struct_1(vec2<bool>(true, false), var_2.x, -1036f), 4294967295u, vec4<bool>(var_2.x, false, false, var_2.x), u_input.a.yzw), -13768i), 0u, vec4<bool>(var_2.x, false, true, var_2.x), ~vec3<i32>(u_input.c, u_input.c, u_input.a.x)), u_input.c | ~2147483647i, Struct_4(Struct_1(var_2.zy, true, 435f), 15935u << (var_1 % 32u), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), reverseBits(u_input.a.wyz)), u_input.a.x << (4294967295u % 32u)).b, any(vec3<bool>(true, var_2.x & false, var_2.x | var_2.x)), !(!var_2.x) & (-2147483647i > u_input.c), true), ~vec3<i32>(_wgslsmith_add_i32(-2147483647i, -u_input.c), 2147483647i, u_input.a.x));
    global3 = array<Struct_1, 12>();
    let var_6 = Struct_1(!func_2(Struct_4(var_5.a, ~var_5.b, vec4<bool>(var_5.c.x, var_5.c.x, var_5.c.x, false), vec3<i32>(-29058i, 2147483647i, -2747i)), abs(-1i), Struct_4(global3[_wgslsmith_index_u32(~0u, 12u)], 4294967295u, var_5.c, var_5.d), 1i).a, var_5.a.a.x, _wgslsmith_f_op_f32(-1246f - 660f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.wzy), 1208f, var_5.d.zy, var_0.x);
}

