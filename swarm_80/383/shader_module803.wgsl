struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(23549u, 5356u), false), 65933u));

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-863f, 129f), vec2<f32>(1020f, -476f), vec2<f32>(291f, -1085f), vec2<f32>(1584f, -172f), vec2<f32>(-1000f, -1032f), vec2<f32>(-250f, -440f), vec2<f32>(294f, 1777f), vec2<f32>(-430f, 310f), vec2<f32>(923f, 453f), vec2<f32>(587f, -286f), vec2<f32>(1392f, -743f), vec2<f32>(-266f, -332f), vec2<f32>(408f, 565f), vec2<f32>(994f, 668f));

var<private> global3: array<u32, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_u32(abs(reverseBits(u_input.e.x)), _wgslsmith_mod_u32(28685u, global3[_wgslsmith_index_u32(~1u, 2u)]), max(68401u, u_input.d) & reverseBits(56210u));
    global2 = array<vec2<f32>, 14>();
    var var_1 = Struct_3(Struct_2(global0.a.a, firstLeadingBit(firstTrailingBit(23903u) << (~23016u % 32u))));
    global0 = Struct_3(var_1.a);
    global3 = array<u32, 2>();
    return u_input.c.xzz;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(reverseBits(~u_input.b), u_input.a, min(countOneBits(firstTrailingBit(1i)), _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.a, u_input.b)))));
    var var_1 = Struct_3(Struct_2(global0.a.a, ~arg_1.x));
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = min(func_4(func_3(vec4<i32>(abs(-2507i), u_input.a >> (u_input.e.x % 32u), -u_input.b, u_input.a ^ u_input.a), ~(u_input.b & 69264i)), ~firstTrailingBit(u_input.c.wzx)), arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = global0.a;
    global0 = Struct_3(arg_0);
    var var_3 = arg_0;
    return Struct_3(arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> vec3<bool> {
    global1 = vec3<bool>(true, true, arg_1.b);
    var var_0 = func_2(Struct_2(Struct_1(abs(u_input.c.ww), (true & global0.a.a.b) && global1.x), 44261u), arg_2.a).a.a;
    var_0 = func_2(global0.a, func_2(Struct_2(global0.a.a, var_0.a.x), Struct_2(Struct_1(vec2<u32>(25136u, u_input.d), any(global1.zy)), ~max(0u, 1u))).a).a.a;
    global1 = select(!select(vec3<bool>(any(global1.xx), global1.x, true), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.a.a.b, false, var_0.b), false), !vec3<bool>(arg_1.b, true, arg_1.b), var_0.b), false), !select(!select(vec3<bool>(true, global1.x, arg_2.a.a.b), vec3<bool>(var_0.b, arg_2.a.a.b, var_0.b), vec3<bool>(false, false, arg_1.b)), vec3<bool>(!arg_2.a.a.b, 22405u == arg_1.a.x, true), vec3<bool>(global1.x, all(vec3<bool>(arg_2.a.a.b, false, global1.x)), any(vec4<bool>(arg_2.a.a.b, global1.x, true, global1.x)))), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.b, global1.x, arg_1.b), vec3<bool>(true, false, var_0.b)), vec3<bool>(false, false, arg_1.b), select(vec3<bool>(true, var_0.b, false), vec3<bool>(false, arg_1.b, true), false)), !vec3<bool>(arg_1.b, false, false), any(!vec4<bool>(arg_2.a.a.b, var_0.b, false, arg_1.b))));
    let var_1 = func_2(func_2(func_2(func_2(func_2(Struct_2(arg_1, 1u), Struct_2(Struct_1(var_0.a, false), arg_1.a.x)).a, global0.a).a, func_2(arg_2.a, func_2(Struct_2(Struct_1(vec2<u32>(arg_1.a.x, global0.a.a.a.x), false), 7859u), Struct_2(Struct_1(vec2<u32>(arg_2.a.a.a.x, 4127u), true), arg_0)).a).a).a, func_2(func_2(func_2(global0.a, Struct_2(arg_1, 37607u)).a, func_2(global0.a, global0.a).a).a, Struct_2(func_2(arg_2.a, Struct_2(Struct_1(arg_2.a.a.a, global1.x), 1u)).a.a, 84451u)).a).a, Struct_2(global0.a.a, _wgslsmith_sub_u32(func_3(reverseBits(vec4<i32>(u_input.a, u_input.b, u_input.b, 1i)), 0i).x, func_2(func_2(arg_2.a, global0.a).a, func_2(global0.a, arg_2.a).a).a.a.a.x)));
    return select(vec3<bool>(global1.x, true && ((arg_1.b == true) || (0u == arg_0)), !var_1.a.a.b), select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, global0.a.a.b), vec3<bool>(false, global0.a.a.b, global0.a.a.b), true), false), !vec3<bool>(true, arg_1.b, true), !select(vec3<bool>(var_1.a.a.b, true, false), vec3<bool>(false, false, false), vec3<bool>(var_1.a.a.b, var_0.b, false))), select(select(select(vec3<bool>(var_1.a.a.b, arg_2.a.a.b, global0.a.a.b), vec3<bool>(var_0.b, var_0.b, var_1.a.a.b), vec3<bool>(arg_1.b, true, false)), vec3<bool>(global1.x, var_1.a.a.b, false), !vec3<bool>(arg_1.b, var_0.b, arg_1.b)), vec3<bool>(any(vec2<bool>(true, true)), func_2(Struct_2(arg_1, 64597u), arg_2.a).a.a.b, any(vec3<bool>(arg_1.b, false, var_1.a.a.b))), vec3<bool>(false, true, !global1.x)), !select(!vec3<bool>(false, global0.a.a.b, true), vec3<bool>(true, true, true), vec3<bool>(true, global0.a.a.b, var_0.b))), _wgslsmith_sub_u32(1u, abs(~global3[_wgslsmith_index_u32(4423u, 2u)])) < _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(global0.a.a.a.x, 1u)), var_0.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    global1 = select(func_5(4294967295u, Struct_1(arg_1.wy, true), func_2(arg_2.a, Struct_2(Struct_1(arg_1.ww, true), ~19212u))), vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(468f, -431f) * _wgslsmith_f_op_f32(-595f - -860f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(990f)) + _wgslsmith_f_op_f32(sign(-402f))), any(func_5(30602u, Struct_1(arg_2.a.a.a, arg_0.a.b), func_2(arg_0, arg_0)).xz)), vec3<bool>(global1.x, true, true));
    let var_0 = Struct_3(Struct_2(global0.a.a, arg_0.b));
    var var_1 = 1u;
    let var_2 = select(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(~_wgslsmith_mult_u32(4294967295u, 0u), ~global3[_wgslsmith_index_u32(firstLeadingBit(var_0.a.b), 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], var_0.a.a.a.x)), 0u, !(!global0.a.a.b));
    let var_3 = func_2(global0.a, func_2(global0.a, arg_2.a).a).a;
    return 424i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = global0.a.a;
    var var_2 = _wgslsmith_add_i32(u_input.a, abs(~(func_1(global0.a, u_input.c, Struct_3(Struct_2(Struct_1(u_input.c.xw, global1.x), global0.a.a.a.x))) | reverseBits(u_input.b))));
    var var_3 = func_2(Struct_2(func_2(func_2(Struct_2(Struct_1(vec2<u32>(51980u, 20948u), var_1.b), global0.a.a.a.x), global0.a).a, global0.a).a.a, 43372u), func_2(global0.a, Struct_2(func_2(Struct_2(global0.a.a, 20227u), func_2(global0.a, global0.a).a).a.a, func_3(~vec4<i32>(-5224i, u_input.b, u_input.b, u_input.b), func_1(Struct_2(Struct_1(vec2<u32>(1u, 0u), true), 4294967295u), u_input.c, Struct_3(global0.a))).x)).a).a;
    var_0 = _wgslsmith_f_op_f32(max(211f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -214f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1085f))), !var_3.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-2196f, 390f), _wgslsmith_f_op_f32(trunc(1655f)), 537f, 1f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, 626f, -1387f, -1227f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(611f, -1236f, 1665f, 1229f), vec4<f32>(672f, 109f, 715f, 620f))), select(vec4<bool>(var_3.a.b, global0.a.a.b, global1.x, var_3.a.b), vec4<bool>(var_3.a.b, global1.x, var_1.b, true), var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-469f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 495f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1164f, -165f) - _wgslsmith_f_op_f32(round(-425f))), -1000f)));
}

