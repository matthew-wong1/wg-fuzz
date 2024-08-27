struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(235f, true);

var<private> global1: array<Struct_2, 2>;

var<private> global2: vec4<f32>;

var<private> global3: vec3<f32> = vec3<f32>(-247f, -735f, -479f);

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, false, 1897f, 1i), Struct_1(false, true, -2444f, 1i), Struct_1(false, false, 1278f, -1i), Struct_1(true, true, -491f, 1i), Struct_1(false, true, -413f, -15948i), Struct_1(false, false, 2002f, 11839i), Struct_1(false, false, -1784f, i32(-2147483648)), Struct_1(false, true, -1514f, -1i), Struct_1(false, false, -816f, 2147483647i), Struct_1(false, false, -475f, -1i), Struct_1(false, true, 233f, -14275i), Struct_1(true, true, -354f, 0i), Struct_1(false, true, 571f, 1i), Struct_1(false, true, -1014f, -45215i), Struct_1(true, false, -1000f, -1i), Struct_1(true, true, 1000f, -1i), Struct_1(true, false, 197f, -14755i), Struct_1(true, true, 1594f, -4677i), Struct_1(false, true, -873f, 2147483647i), Struct_1(false, false, -1029f, 35300i), Struct_1(true, false, -2310f, i32(-2147483648)), Struct_1(false, false, -368f, 0i), Struct_1(true, false, 377f, -51600i), Struct_1(false, true, -508f, 1i), Struct_1(false, true, 152f, -50285i), Struct_1(false, false, -815f, i32(-2147483648)), Struct_1(true, false, -2270f, 28260i), Struct_1(true, false, -1209f, 9213i), Struct_1(true, false, -906f, 1i), Struct_1(false, true, 1442f, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(global0.b, any(vec3<bool>(arg_0.b & global0.b, global0.b, false)) & arg_0.b, -1000f, ~abs(-1i));
    let var_1 = global1[_wgslsmith_index_u32(arg_1.x, 2u)];
    var var_2 = select(!(!vec2<bool>(select(true, global0.b, true), true)), select(!(!select(vec2<bool>(var_1.b, arg_0.b), vec2<bool>(true, var_0.b), arg_0.b)), select(select(vec2<bool>(var_0.a, true), !vec2<bool>(var_0.a, true), vec2<bool>(var_1.b, false)), select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b), select(vec2<bool>(false, var_1.b), vec2<bool>(true, var_1.b), true)), var_1.b), true & (!var_1.b || !var_0.a)), !select(vec2<bool>(!var_0.a, var_1.b), select(!vec2<bool>(var_1.b, arg_0.b), !vec2<bool>(false, arg_0.b), !var_0.a), ~arg_2 > arg_2));
    let var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global3.x)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global2.yyz))))), _wgslsmith_f_op_vec3_f32(-global2.xyx));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> i32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(9287u, 2u)], vec2<u32>(0u, u_input.a.x), -2147483647i)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -1244f, global3.x))) + _wgslsmith_f_op_vec3_f32(global2.wxz * vec3<f32>(global0.a, 1000f, global3.x)))));
    let var_0 = 1u;
    let var_1 = any(select(vec4<bool>(all(vec2<bool>(true, false)), false, any(vec4<bool>(true, true, arg_3.a, true)), true), select(vec4<bool>(arg_0.a, true, false, false), !vec4<bool>(global0.b, arg_3.a, arg_0.a, true), arg_0.a), !select(vec4<bool>(arg_3.a, false, arg_0.b, false), vec4<bool>(true, arg_0.b, arg_3.b, arg_3.a), true))) && all(!select(select(vec2<bool>(arg_3.b, arg_0.a), vec2<bool>(global0.b, true), vec2<bool>(global0.b, true)), select(vec2<bool>(global0.b, arg_3.b), vec2<bool>(global0.b, false), vec2<bool>(global0.b, false)), !vec2<bool>(false, arg_0.b)));
    let var_2 = ~(~14178u);
    let var_3 = vec3<bool>(~_wgslsmith_mod_i32(~arg_3.d, arg_2 >> (15046u % 32u)) == arg_1, true, false);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(~arg_0.d, -2147483647i), arg_2), vec2<i32>(-2147483647i, ~(-arg_0.d))), vec2<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(arg_1, arg_1, 53435i)), vec3<i32>(-1i) * -vec3<i32>(arg_1, arg_0.d, 55572i)), 0i));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(global0.b, _wgslsmith_mod_i32(firstTrailingBit(-2147483647i) >> (u_input.a.x % 32u), ~countOneBits(2147483647i)) < _wgslsmith_sub_i32(abs(~(-1i)), func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9478u, 13467u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 30u)], -23101i, 2147483647i, global4[_wgslsmith_index_u32(~0u, 30u)])), 1000f, -52195i);
    let var_1 = !select(!vec3<bool>(global0.b, u_input.a.x <= u_input.a.x, false), vec3<bool>(var_0.b, !var_0.b, min(13633u, u_input.a.x) < ~38117u), vec3<bool>(true, true, true));
    let var_2 = true;
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -557f, 1000f, global2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-731f, -482f, var_0.c, -981f) + vec4<f32>(var_0.c, var_0.c, -968f, var_0.c))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)))), -962f)));
    return _wgslsmith_mod_i32(var_0.d, -20062i);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = global1[_wgslsmith_index_u32(34937u, 2u)];
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 2u)];
    var var_1 = vec2<i32>(arg_0, -20924i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.yy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global2.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2183f, 202f)), -855f != global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(553f, -1039f), global2.yy)))));
    var var_3 = _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -920f) * global2.x)))));
    return max(vec2<i32>(max(0i, arg_0), -countOneBits(1i)), vec2<i32>(-_wgslsmith_sub_i32(46958i, -arg_0), abs(27751i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(-(vec2<i32>(_wgslsmith_mod_i32(11099i, 1i), 1i) >> (max(vec2<u32>(1u, u_input.a.x), ~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), func_4(_wgslsmith_clamp_i32(_wgslsmith_add_i32(0i, 1i), func_1(), i32(-1i) * -1i) << (u_input.a.x % 32u), all(!select(vec2<bool>(global0.b, false), vec2<bool>(true, global0.b), false)), select(select(!vec3<bool>(global0.b, global0.b, global0.b), !vec3<bool>(global0.b, false, global0.b), global0.b), !select(vec3<bool>(false, global0.b, global0.b), vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, false, global0.b)), ~(-13623i) == select(11301i, 0i, global0.b))));
    var var_1 = global4[_wgslsmith_index_u32(4294967295u, 30u)];
    global3 = vec3<f32>(-941f, _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * 1847f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-116f, 1011f)))) + -883f))));
    var var_2 = u_input.a.yx;
    let var_3 = ~_wgslsmith_add_i32(43794i, _wgslsmith_mod_i32(-var_1.d, _wgslsmith_mult_i32(-1i, 42050i)) & _wgslsmith_mod_i32(var_1.d, 4827i));
    global0 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(44240u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_2.x, 57128u, 56662u), vec4<u32>(0u, 29872u, var_2.x, var_2.x)), abs(vec4<u32>(63692u, var_2.x, u_input.a.x, var_2.x) | vec4<u32>(u_input.a.x, 93267u, u_input.a.x, 30483u))), ~42057u)), 2u)];
    var var_4 = global1[_wgslsmith_index_u32(~var_2.x, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(146f + global3.x), _wgslsmith_f_op_f32(f32(-1f) * -696f))), 1000f), ~max(var_3, var_0.x), firstLeadingBit(~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -212f));
}

