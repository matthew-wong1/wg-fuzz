struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: Struct_3 = Struct_3(false, false, 4294967295u, 0i);

var<private> global2: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> bool {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-391f, -639f))))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1514f, 1110f)))));
    global0 = array<vec3<i32>, 27>();
    let var_0 = reverseBits(-max(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, 17703i), vec2<i32>(1i, 1i)), abs(arg_0.d) ^ ~(-2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f + 628f) * _wgslsmith_f_op_f32(f32(-1f) * -1510f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(943f - 649f)))))));
    var var_2 = ~14375i;
    return arg_0.b;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_3(arg_0, !global1.a, min(global1.c, min(1u, ~14500u) | _wgslsmith_sub_u32(u_input.a.x, u_input.a.x ^ u_input.a.x)), abs(_wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(arg_1.x, global1.d))), arg_1.zy)));
    var var_1 = arg_2.e;
    var var_2 = ~(~(~(~(~var_0.c))));
    global2 = _wgslsmith_f_op_f32(-var_1.a);
    return !vec3<bool>(any(select(select(vec4<bool>(var_0.a, true, var_0.a, arg_3.x), vec4<bool>(var_0.b, arg_2.d, var_1.d, false), vec4<bool>(false, false, arg_0, false)), !vec4<bool>(arg_0, arg_3.x, true, true), !vec4<bool>(var_1.c.x, false, false, false))), true, arg_0);
}

fn func_5(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = !func_4(all(vec3<bool>(func_3(Struct_3(arg_0.x, arg_0.x, u_input.b, global1.d)), arg_0.x, all(vec4<bool>(false, true, false, false)))), global0[_wgslsmith_index_u32(select(countOneBits(4294967295u), ~global1.c << (~u_input.a.x % 32u), true), 27u)], Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-837f)), func_4(true, vec3<i32>(-85152i, global1.d, global1.d), Struct_2(Struct_1(-967f, arg_0, arg_0.zx, false, false), global1.d, 1263f, arg_0.x, Struct_1(-1000f, vec3<bool>(true, false, true), vec2<bool>(false, true), true, false)), arg_0), vec2<bool>(arg_0.x, true), true, func_4(arg_0.x, vec3<i32>(global1.d, global1.d, global1.d), Struct_2(Struct_1(-207f, arg_0, arg_0.zy, false, arg_0.x), 45598i, 586f, true, Struct_1(-1027f, vec3<bool>(true, true, global1.b), arg_0.xz, global1.a, global1.b)), arg_0).x), global1.d, _wgslsmith_f_op_f32(floor(-639f)), u_input.a.x == ~61810u, Struct_1(-1398f, vec3<bool>(true, global1.b, arg_0.x), !arg_0.yy, true, true)), func_4(any(arg_0.yx), ~global0[_wgslsmith_index_u32(global1.c, 27u)] << (~vec3<u32>(4294967295u, u_input.b, 4294967295u) % vec3<u32>(32u)), Struct_2(Struct_1(-1000f, arg_0, vec2<bool>(true, true), arg_0.x, arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(5178i, -1i), vec2<i32>(-2147483647i, global1.d)), 776f, global1.d < -2147483647i, Struct_1(1102f, arg_0, vec2<bool>(global1.a, true), true, global1.a)), select(!vec3<bool>(arg_0.x, global1.a, true), vec3<bool>(global1.b, arg_0.x, arg_0.x), true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 287f))), vec3<bool>(global1.a, true, select(!arg_0.x, true, global1.d == global1.d)), var_0.yy, func_4((global1.d >= global1.d) & var_0.x, global0[_wgslsmith_index_u32(countOneBits(u_input.b), 27u)] ^ ~global0[_wgslsmith_index_u32(4294967295u, 27u)], Struct_2(Struct_1(-1124f, vec3<bool>(var_0.x, false, var_0.x), vec2<bool>(var_0.x, var_0.x), global1.b, false), -1i, -652f, false, Struct_1(-1372f, arg_0, var_0.yz, arg_0.x, false)), arg_0).x, var_0.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -1i, -2147483647i << (u_input.a.x % 32u)), -abs(vec3<i32>(0i, 1i, global1.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-430f)) + 739f), 1f), global1.a, Struct_1(-152f, !(!select(arg_0, vec3<bool>(true, false, arg_0.x), arg_0)), vec2<bool>(!arg_0.x & true, global1.b), arg_0.x, true));
    var var_2 = var_1;
    var var_3 = u_input.a;
    let var_4 = !(!vec4<bool>(!arg_0.x, ~var_1.b >= abs(var_2.b), var_1.d, true));
    return select(select(vec4<bool>(!any(vec2<bool>(var_4.x, false)), false, func_4(false, firstTrailingBit(global0[_wgslsmith_index_u32(17472u, 27u)]), var_1, func_4(true, global0[_wgslsmith_index_u32(13255u, 27u)], Struct_2(var_2.e, var_1.b, -1721f, var_1.e.d, var_2.e), arg_0)).x, (1253f > var_1.e.a) & false), vec4<bool>(_wgslsmith_f_op_f32(-1270f - 744f) >= _wgslsmith_f_op_f32(round(481f)), any(vec4<bool>(global1.b, var_1.d, global1.b, false)), !var_1.a.d & !var_4.x, false), arg_0.x), !vec4<bool>(all(!var_4.zyy), any(vec2<bool>(global1.b, var_2.e.b.x)), all(var_1.e.b.zz), true), var_4);
}

fn func_2() -> Struct_2 {
    global2 = 2057f;
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    var var_0 = !func_5(func_4(func_3(Struct_3(false, global1.b, 1u, global1.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.d, 21372i, global1.d), ~global0[_wgslsmith_index_u32(0u, 27u)]), Struct_2(Struct_1(-267f, vec3<bool>(false, true, true), vec2<bool>(true, false), false, global1.b), -10172i, _wgslsmith_f_op_f32(max(-240f, -230f)), global1.a != true, Struct_1(163f, vec3<bool>(global1.a, global1.a, false), vec2<bool>(global1.a, true), false, false)), select(select(vec3<bool>(true, global1.a, global1.a), vec3<bool>(global1.b, true, global1.a), vec3<bool>(false, true, false)), !vec3<bool>(false, global1.a, global1.b), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(false, false, global1.a), true))));
    global1 = Struct_3(all(!(!select(vec4<bool>(true, false, true, global1.b), vec4<bool>(true, var_0.x, true, global1.b), true))), true, u_input.a.x, 15388i);
    return Struct_2(Struct_1(-1220f, vec3<bool>(func_4(false, vec3<i32>(global1.d, -28223i, -1i) | global0[_wgslsmith_index_u32(global1.c, 27u)], Struct_2(Struct_1(-241f, vec3<bool>(var_0.x, true, true), var_0.zw, global1.b, var_0.x), global1.d, -378f, false, Struct_1(-1591f, var_0.yzx, var_0.zx, global1.b, true)), vec3<bool>(var_0.x, false, true)).x, true, ~global1.d >= countOneBits(global1.d)), !var_0.zx, global1.b, true), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1794f, 292f)), _wgslsmith_f_op_f32(f32(-1f) * -1317f))))), global1.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 1976f), var_0.xwy, !func_5(!vec3<bool>(global1.a, global1.a, global1.b)).xz, func_5(vec3<bool>(true, var_0.x && false, global1.d <= -6937i)).x, false || !func_4(var_0.x, vec3<i32>(global1.d, 1i, 2147483647i), Struct_2(Struct_1(-411f, vec3<bool>(global1.a, global1.b, global1.a), var_0.ww, global1.b, false), -1i, 1000f, false, Struct_1(-450f, vec3<bool>(var_0.x, global1.a, true), var_0.zy, var_0.x, var_0.x)), var_0.zwy).x));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = func_2();
    global1 = Struct_3(!all(vec2<bool>(true, arg_0.b)), !(!arg_0.a), 1u, -arg_2);
    var var_1 = false;
    var var_2 = ~(arg_0.d << (~_wgslsmith_add_u32(4294967295u, arg_1) % 32u));
    var var_3 = -318f;
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(abs(func_1(Struct_3(true, false, 34397u, global1.d), _wgslsmith_sub_u32(u_input.a.x, 1u), global1.d) << (13596u % 32u)), -38696i, global1.d);
    global0 = array<vec3<i32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1375f)) - -647f), 779f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1616f)) * -328f))));
    let var_2 = func_3(Struct_3(any(!select(vec3<bool>(true, global1.b, global1.a), vec3<bool>(global1.b, false, global1.a), vec3<bool>(global1.a, false, false))), select(true, true, true), u_input.b, (i32(-1i) * -9461i) ^ min(global1.d, 1i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(892f)), select(vec3<bool>(global1.a, global1.b, var_2), vec3<bool>(var_2, any(vec3<bool>(var_2, true, global1.b)), global1.a), !func_4(var_2, _wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(17763u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), func_2(), select(vec3<bool>(false, global1.b, true), vec3<bool>(var_2, true, var_2), vec3<bool>(global1.a, global1.b, false)))), select(select(select(vec2<bool>(var_2, false), !vec2<bool>(var_2, var_2), true), !vec2<bool>(var_2, global1.a), !func_4(global1.a, vec3<i32>(0i, -45533i, -2147483647i), Struct_2(Struct_1(447f, vec3<bool>(false, var_2, var_2), vec2<bool>(global1.a, true), false, global1.a), 1i, 1003f, true, Struct_1(-1280f, vec3<bool>(global1.a, true, true), vec2<bool>(false, false), global1.a, true)), vec3<bool>(global1.a, false, var_2)).zy), select(select(!vec2<bool>(global1.b, true), select(vec2<bool>(global1.a, global1.b), vec2<bool>(global1.a, global1.b), true), true), vec2<bool>(var_0.x <= -10286i, all(vec3<bool>(true, true, true))), false), true || ((0u >= u_input.b) & func_3(Struct_3(true, true, u_input.b, global1.d)))), global1.c != (global1.c >> (1u % 32u)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.a, 1720f, var_3.a, 1f), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.d, global1.d << (global1.c % 32u), var_0.x << (global1.c % 32u), var_0.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 18992i, var_0.x, var_0.x), vec4<i32>(-10411i, var_0.x, 871i, var_0.x)), vec4<i32>(var_0.x, global1.d, -2147483647i, 15430i) << (vec4<u32>(1u, u_input.b, 33076u, global1.c) % vec4<u32>(32u))))));
}

