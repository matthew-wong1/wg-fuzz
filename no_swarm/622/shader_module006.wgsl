struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = 1u != (_wgslsmith_sub_u32(1u, ~4294967295u) >> ((39682u >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(3738u, 22611u), 1u, 49365u) % 32u)) % 32u));
    var var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, countOneBits(4294967295u), 1u), ~(firstTrailingBit(vec3<u32>(62398u, 4294967295u, 0u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -893f))), _wgslsmith_f_op_f32(select(var_2.c.a, 993f, true)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f - arg_1.e))))));
    let var_4 = select(vec4<bool>(all(vec3<bool>(arg_2, any(vec2<bool>(arg_2, false)), all(vec3<bool>(var_0, false, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(785f * 1568f), _wgslsmith_f_op_f32(arg_1.e - -249f)) > var_3, !(true & all(vec2<bool>(false, var_0))), select(any(select(vec3<bool>(false, false, true), vec3<bool>(arg_2, var_0, true), true)), arg_2, false)), vec4<bool>(all(!(!vec3<bool>(false, false, arg_2))), var_0, !any(global0[_wgslsmith_index_u32(max(6435u, 6381u), 14u)]), arg_2), !(!all(vec3<bool>(var_0, true, var_0)) || (arg_2 & false)));
    return _wgslsmith_f_op_f32(max(426f, _wgslsmith_f_op_f32(-2737f - _wgslsmith_f_op_f32(var_2.d.a - 1000f))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 14>();
    var var_0 = arg_1.a;
    let var_1 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(round(1180f)))))), Struct_1(2013f), Struct_1(_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-arg_1.a));
    let var_2 = _wgslsmith_f_op_f32(-var_1.c.a);
    var var_3 = var_1.d;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-u_input.a.ww & abs(vec2<i32>(-39631i, 1i)), Struct_2(Struct_1(var_2), Struct_1(var_1.d.a), var_1.a, var_1.d, _wgslsmith_f_op_f32(step(var_3.a, 707f))), true)), -1020f, select(true, true, all(vec4<bool>(true, false, false, true))))), arg_1.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = min(select(4294967295u, ~reverseBits(0u), select(select(true, arg_2.x, arg_2.x), any(select(global0[_wgslsmith_index_u32(arg_0.x, 14u)], vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), global0[_wgslsmith_index_u32(arg_0.x, 14u)])), arg_2.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6301u, ~arg_0.x), arg_0 >> (max(vec3<u32>(13666u, arg_0.x, 0u), vec3<u32>(arg_0.x, arg_0.x, arg_0.x)) % vec3<u32>(32u))));
    var var_1 = !vec2<bool>(arg_2.x, _wgslsmith_f_op_f32(694f * _wgslsmith_f_op_f32(arg_1.d.a - arg_1.b.a)) <= arg_1.b.a);
    let var_2 = arg_1.b;
    global0 = array<vec4<bool>, 14>();
    let var_3 = max(vec3<i32>(max(0i, 13795i) << (~(48501u ^ arg_0.x) % 32u), _wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-16022i, u_input.b), 1613i)), u_input.a.x), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, u_input.a.x, -2147483647i), u_input.a.wxz, vec3<i32>(u_input.a.x, -1i, 1i)), _wgslsmith_sub_vec3_i32(-u_input.a.yyx << (firstLeadingBit(vec3<u32>(4294967295u, 53209u, 49477u)) % vec3<u32>(32u)), vec3<i32>(-u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.zxy, vec3<i32>(-10087i, u_input.a.x, -54473i))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~u_input.b, arg_1.b)) - 1436f)));
}

fn func_1() -> bool {
    let var_0 = func_4(vec3<u32>((select(1u, 0u, false) >> (~52608u % 32u)) ^ 1u, ~(~0u), 10228u), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1814f * 245f) - _wgslsmith_f_op_f32(228f - 514f))), Struct_1(_wgslsmith_f_op_f32(ceil(1f))), Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(182f, -1311f))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(u_input.b, Struct_1(116f)))))), -351f), !vec2<bool>(any(vec2<bool>(true, true)) & true, any(vec3<bool>(true, true, true))));
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    let var_1 = Struct_2(var_0, func_4(vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(var_0.a), var_0, func_4(vec3<u32>(1u, 0u, 41435u), Struct_2(var_0, Struct_1(var_0.a), Struct_1(var_0.a), Struct_1(var_0.a), 482f), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(min(784f, var_0.a))), var_0.a), vec2<bool>(all(vec3<bool>(true, false, false)) & select(true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(func_2(min(u_input.a.x, u_input.b), Struct_1(-779f)))), func_4(_wgslsmith_mod_vec3_u32(countOneBits(max(vec3<u32>(0u, 127722u, 95068u), vec3<u32>(37569u, 4294967295u, 4294967295u))), vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(var_0.a), Struct_1(_wgslsmith_f_op_f32(-var_0.a)), var_0, func_4(vec3<u32>(81467u, 14289u, 4294967295u), Struct_2(var_0, var_0, var_0, var_0, 1167f), vec2<bool>(true, true)), var_0.a), vec2<bool>(!all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0i, var_0))));
    return select(select(all(select(select(vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(73134u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(true, true, true, false), var_1.e == -921f)), true, select(all(vec4<bool>(false, true, true, false)), _wgslsmith_div_i32(32879i, u_input.a.x) <= countOneBits(-16024i), false)), any(vec2<bool>(true, true)), all(vec2<bool>(all(vec3<bool>(false, false, true)) || true, select(true, all(vec3<bool>(true, false, false)), all(global0[_wgslsmith_index_u32(4294967295u, 14u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(~4294967295u, min(31042u, 4294967295u))), 14u)], select(vec4<bool>(true, true, false, !(u_input.b <= 1i)), select(vec4<bool>(true, false, func_1(), any(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(28430u, 14u)], vec4<bool>(true, true, true, true)), all(vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, false)), false))), true);
    var var_1 = vec4<bool>(max(0i, ~u_input.b) < -39774i, any(global0[_wgslsmith_index_u32(select(firstTrailingBit(1u), ~0u, true), 14u)]) && true, var_0.x, var_0.x == true);
    var var_2 = func_4(~vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(-989f), func_4(vec3<u32>(1u, 1u, 1u), Struct_2(Struct_1(1523f), func_4(vec3<u32>(4294967295u, 64107u, 1u), Struct_2(Struct_1(309f), Struct_1(1199f), Struct_1(-841f), Struct_1(1109f), 457f), vec2<bool>(true, true)), func_4(vec3<u32>(0u, 19680u, 44142u), Struct_2(Struct_1(976f), Struct_1(302f), Struct_1(-1079f), Struct_1(590f), 254f), vec2<bool>(false, var_0.x)), Struct_1(666f), _wgslsmith_f_op_f32(-884f + -539f)), select(!var_0.ww, var_0.xx, select(var_1.yy, vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x)))), Struct_1(-675f), func_4(abs(vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(426f), Struct_1(-529f), func_4(vec3<u32>(45086u, 27633u, 0u), Struct_2(Struct_1(-861f), Struct_1(-1239f), Struct_1(2040f), Struct_1(1038f), 1113f), var_1.zw), func_4(vec3<u32>(1u, 118112u, 1u), Struct_2(Struct_1(-418f), Struct_1(917f), Struct_1(-481f), Struct_1(820f), 749f), var_0.ww), _wgslsmith_div_f32(-1216f, -2409f)), select(!vec2<bool>(var_1.x, var_1.x), var_1.zy, var_1.x || false)), -750f), vec2<bool>((any(var_1.yz) & true) || !(!var_0.x), true));
    var var_3 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(46762u, 12952u), 13399u), ~1u)), vec2<u32>(4582u, abs(1u)));
    let var_4 = var_0.x;
    let var_5 = func_4(abs(~vec3<u32>(1u, 0u, 61023u)), Struct_2(Struct_1(var_2.a), func_4(vec3<u32>(~8615u, ~34403u, 4294967295u), Struct_2(func_4(vec3<u32>(0u, 13881u, 4294967295u), Struct_2(Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(-1009f), Struct_1(var_2.a), var_2.a), vec2<bool>(var_1.x, var_1.x)), Struct_1(-103f), func_4(vec3<u32>(3182u, 23852u, 4294967295u), Struct_2(Struct_1(232f), Struct_1(var_2.a), Struct_1(1270f), Struct_1(var_2.a), var_2.a), var_0.xy), func_4(vec3<u32>(0u, 1u, 68653u), Struct_2(Struct_1(-392f), Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(var_2.a), var_2.a), vec2<bool>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(step(-310f, -1000f))), var_0.xz), func_4(abs(vec3<u32>(55089u, 4294967295u, 1u)), Struct_2(Struct_1(var_2.a), Struct_1(var_2.a), func_4(vec3<u32>(1u, 4294967295u, 1224u), Struct_2(Struct_1(var_2.a), Struct_1(330f), Struct_1(var_2.a), Struct_1(1616f), var_2.a), var_1.zx), func_4(vec3<u32>(19424u, 16610u, 4294967295u), Struct_2(Struct_1(var_2.a), Struct_1(-486f), Struct_1(-250f), Struct_1(var_2.a), -1037f), vec2<bool>(var_0.x, true)), var_2.a), select(select(var_0.ww, var_1.zy, vec2<bool>(var_1.x, var_0.x)), var_1.wy, true)), func_4(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(23995u, 0u, 4294967295u)), Struct_2(Struct_1(-433f), func_4(vec3<u32>(0u, 31264u, 46231u), Struct_2(Struct_1(-2181f), Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(var_2.a), -260f), vec2<bool>(var_1.x, true)), Struct_1(570f), func_4(vec3<u32>(52542u, 4294967295u, 37858u), Struct_2(Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(-468f), var_2.a), vec2<bool>(true, var_0.x)), _wgslsmith_f_op_f32(-var_2.a)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(func_3(vec2<i32>(-36876i, abs(3788i)), Struct_2(func_4(vec3<u32>(0u, 10458u, 60773u), Struct_2(Struct_1(var_2.a), Struct_1(var_2.a), Struct_1(486f), Struct_1(376f), var_2.a), var_0.zx), Struct_1(var_2.a), func_4(vec3<u32>(0u, 1u, 46372u), Struct_2(Struct_1(569f), Struct_1(-912f), Struct_1(-861f), Struct_1(-1651f), -1000f), var_1.zy), func_4(vec3<u32>(1877u, 1u, 56323u), Struct_2(Struct_1(-508f), Struct_1(1000f), Struct_1(-221f), Struct_1(var_2.a), -1618f), vec2<bool>(var_1.x, var_0.x)), -1177f), all(select(var_0.xxz, vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_1.x, var_1.x)))))), vec2<bool>(true, var_1.x));
    var var_6 = Struct_2(var_5, var_5, func_4(max(min(~vec3<u32>(4294967295u, 0u, 39967u), firstTrailingBit(vec3<u32>(0u, 0u, 120406u))), ~vec3<u32>(41928u, 0u, 594u)), Struct_2(Struct_1(-1771f), var_5, func_4(~vec3<u32>(1u, 28224u, 4294967295u), Struct_2(var_5, var_5, Struct_1(272f), var_5, var_2.a), select(var_0.xy, var_0.xy, vec2<bool>(var_0.x, false))), var_5, func_4(countOneBits(vec3<u32>(25768u, 28809u, 130333u)), Struct_2(Struct_1(var_5.a), Struct_1(-1208f), Struct_1(-1342f), Struct_1(1045f), var_5.a), vec2<bool>(false, false)).a), select(select(!var_0.wz, select(var_0.yx, vec2<bool>(false, true), var_0.x), vec2<bool>(var_0.x, var_1.x)), vec2<bool>(false, var_0.x && true), select(vec2<bool>(var_1.x, var_0.x), var_1.zy, vec2<bool>(true, var_0.x)))), var_5, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(317f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.a, -1739f) * 585f))) + _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)))));
    var var_7 = vec4<u32>(abs(~abs(~4147u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(52447u, 14241u), vec2<u32>(0u, 0u)), firstTrailingBit(1u)) ^ firstLeadingBit(0u), _wgslsmith_mod_u32(58026u, ~49565u)), 5182u, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(min(-1i, u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(23015u, var_7.x, var_7.x, 1u), vec4<u32>(99441u, var_7.x, 96059u, 21498u)), _wgslsmith_add_vec4_u32(vec4<u32>(16652u, var_7.x, var_7.x, var_7.x), vec4<u32>(28761u, var_7.x, 26069u, var_7.x))), reverseBits(vec4<u32>(4455u, 33521u, var_7.x, var_7.x) >> (vec4<u32>(14539u, var_7.x, var_7.x, 0u) % vec4<u32>(32u)))), vec4<u32>(firstTrailingBit(var_7.x), 1u, 18772u, firstTrailingBit(var_7.x))));
}

