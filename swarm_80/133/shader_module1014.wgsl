struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-36993i, -42461i), vec2<i32>(-1i, -38327i), vec2<i32>(-1i, -11818i), vec2<i32>(1i, -81042i), vec2<i32>(19257i, 17093i), vec2<i32>(i32(-2147483648), -3609i), vec2<i32>(-26145i, 0i), vec2<i32>(0i, 53930i), vec2<i32>(49733i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, -54892i), vec2<i32>(-10702i, 2147483647i), vec2<i32>(17754i, 0i), vec2<i32>(0i, 0i));

var<private> global1: array<Struct_5, 3>;

var<private> global2: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_0;
    global1 = array<Struct_5, 3>();
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = !vec3<bool>(any(select(vec4<bool>(global2.x, global2.x, true, global2.x), !vec4<bool>(true, true, global2.x, false), global2.x)), global2.x, global2.x);
    global2 = var_0.yz;
    let var_1 = Struct_3(reverseBits(~(~func_3(vec3<f32>(322f, -524f, -518f), false, u_input.a.xww))));
    var var_2 = -u_input.a.yzy;
    let var_3 = _wgslsmith_f_op_f32(step(-135f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(f32(-1f) * -1252f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1001f - -1180f) + _wgslsmith_f_op_f32(-1115f + -525f))) - _wgslsmith_f_op_f32(-1632f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1839f), _wgslsmith_f_op_f32(-496f - -394f)))))));
    return Struct_2(global0[_wgslsmith_index_u32(abs(1u), 14u)], _wgslsmith_add_u32(reverseBits(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1384u, var_1.a, 19188u), vec3<u32>(1u, 30895u, var_1.a)), _wgslsmith_mult_u32(var_1.a, 38463u))), _wgslsmith_div_u32(0u, 4294967295u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = 2018f;
    global2 = !select(select(!(!vec2<bool>(global2.x, false)), vec2<bool>(arg_1.x && global2.x, false), arg_1.x), arg_1, true);
    var var_1 = Struct_4(963f, Struct_3(4294967295u), vec4<i32>(_wgslsmith_sub_i32(~u_input.a.x, arg_0.a.x), ~max(firstLeadingBit(2147483647i), -2147483647i), u_input.a.x, 2147483647i << (select(_wgslsmith_add_u32(arg_2, 1u), 8922u, true) % 32u)), !(~abs(37496u) <= ~_wgslsmith_mult_u32(arg_2, 1u)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -209f, 651f) - vec3<f32>(-678f, var_0, -1713f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(219f, -298f, 580f), vec3<f32>(-1599f, 380f, -377f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -1183f) - vec3<f32>(var_0, var_0, 665f))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, global2.x, false)))))));
    global2 = arg_1;
    var var_2 = var_1.b.a;
    return var_1.e;
}

fn func_1() -> f32 {
    global0 = array<vec2<i32>, 14>();
    let var_0 = func_4(func_2(), vec2<bool>(any(vec4<bool>(true, all(vec3<bool>(false, global2.x, false)), true, !global2.x)), true), _wgslsmith_div_u32(firstTrailingBit(0u) | countOneBits(func_3(vec3<f32>(-2281f, -474f, -1783f), global2.x, u_input.a.yyz)), ~(~abs(1u))));
    global0 = array<vec2<i32>, 14>();
    var var_1 = all(vec3<bool>(true | (max(u_input.a.x, u_input.a.x) >= u_input.a.x), global2.x, !global2.x | !any(vec4<bool>(false, global2.x, false, global2.x))));
    var var_2 = vec3<bool>(all(!select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), vec2<bool>(global2.x, true)), false)), any(select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(false, global2.x), vec2<bool>(false, true), global2.x), !global2.x)) != (~u_input.a.x < ~1i), firstTrailingBit(-1i) < u_input.a.x);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.x, -592f))) - 144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_5) -> vec2<u32> {
    var var_0 = vec3<bool>(all(select(vec4<bool>(true, false, global2.x, all(vec3<bool>(true, true, false))), vec4<bool>(true, any(vec4<bool>(global2.x, false, global2.x, global2.x)), all(vec3<bool>(global2.x, global2.x, global2.x)), any(vec3<bool>(global2.x, false, global2.x))), !(!vec4<bool>(global2.x, true, global2.x, global2.x)))), global2.x, _wgslsmith_add_i32(i32(-1i) * -1i, countOneBits(2147483647i)) >= u_input.a.x);
    global1 = array<Struct_5, 3>();
    let var_1 = ~vec4<u32>(27076u, countOneBits(~select(8214u, arg_3.b, false)), ~arg_3.b, arg_3.a.x);
    let var_2 = _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x);
    var var_3 = 4294967295u;
    return ~(~var_1.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7410u, ~1u), func_5(Struct_1(vec3<f32>(-874f, -843f, -1220f)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(func_1()), global1[_wgslsmith_index_u32(0u, 3u)])), ~1u, _wgslsmith_clamp_u32(min(1u, 4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30124u), vec4<u32>(5881u, 16283u, 1u, 4294967295u)), 30328u), ~1u));
    let var_1 = ~(-(~u_input.a));
    var var_2 = true;
    global0 = array<vec2<i32>, 14>();
    var var_3 = func_2();
    let var_4 = ~(~func_5(func_4(Struct_2(var_1.yw, var_0.x), select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), global2.x), select(4294967295u, 68728u, global2.x)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1862f), Struct_5(~vec2<u32>(var_0.x, 1811u), var_0.x)).x);
    let var_5 = reverseBits(_wgslsmith_div_u32(abs(~(~var_4)), _wgslsmith_add_u32(0u, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, 446f, -314f)), true, var_1.xxw))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -891f, -342f, -288f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1613f, 232f, 1608f, -464f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-122f, -231f, -670f, -417f))))))), countOneBits(vec2<i32>(0i, -33218i)), vec4<f32>(482f, 1302f, -1392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(243f)) - _wgslsmith_f_op_f32(f32(-1f) * -404f)))), u_input.a.x);
}

