struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<u32, 22> = array<u32, 22>(11015u, 4294967295u, 0u, 1u, 0u, 109537u, 51927u, 4294967295u, 1u, 1u, 1u, 11022u, 4294967295u, 0u, 23016u, 0u, 1u, 54242u, 72017u, 55714u, 106463u, 36784u);

var<private> global2: Struct_1;

var<private> global3: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = global2.e.yz;
    var var_1 = _wgslsmith_dot_vec4_i32(global2.c, _wgslsmith_mult_vec4_i32(vec4<i32>(global2.c.x, _wgslsmith_add_i32(0i, arg_0.a.a.c.x) | -20519i, -1i, arg_0.a.a.c.x), -(~vec4<i32>(-11671i, 1i, u_input.d, 14282i))));
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(~abs(1u), 22u)]), 22u)] == ~4294967295u;
    let var_3 = arg_1.b;
    global3 = (u_input.c.x | firstLeadingBit(56583u)) | 27302u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(arg_0, 115f, u_input.a, 111f, global2.e), vec3<f32>(1420f, -203f, -1000f), vec4<f32>(arg_0.x, -1000f, global2.b, -1226f)), Struct_1(vec2<f32>(arg_1.x, arg_0.x), arg_0.x, vec4<i32>(global2.c.x, global2.c.x, -28065i, 2147483647i), 855f, global2.e)), Struct_3(Struct_2(Struct_1(global2.a, 1114f, vec4<i32>(global2.c.x, 2147483647i, u_input.d, -1i), arg_1.x, vec3<bool>(true, true, false)), vec3<f32>(arg_0.x, 2462f, global2.b), vec4<f32>(arg_1.x, global2.d, 1947f, 408f)), Struct_1(vec2<f32>(global2.d, arg_1.x), arg_1.x, global2.c, 602f, vec3<bool>(global2.e.x, global2.e.x, global2.e.x))), Struct_2(Struct_1(arg_0, global2.d, u_input.a, arg_1.x, vec3<bool>(global2.e.x, true, false)), vec3<f32>(-1274f, global2.a.x, arg_1.x), vec4<f32>(2002f, 1994f, -540f, -360f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1133f + arg_0.x)))), -410f, vec4<i32>(-49159i, -global2.c.x, _wgslsmith_clamp_i32(global2.c.x, i32(-1i) * -26779i, abs(global2.c.x)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -195f, global2.e.x)))), select(global2.e, select(global2.e, global2.e, true), global2.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, _wgslsmith_f_op_f32(2344f * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d + global2.b) * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(global2.a.x, -117f), global2.b, vec4<i32>(global2.c.x, 0i, global2.c.x, 7660i), -818f, vec3<bool>(global0.x, global2.e.x, global2.e.x)), vec3<f32>(1174f, -530f, global2.b), vec4<f32>(1000f, global2.b, 473f, -1527f)), Struct_1(vec2<f32>(-708f, arg_1.x), global2.d, vec4<i32>(-1i, -2147483647i, -31372i, 0i), 317f, vec3<bool>(global2.e.x, global0.x, true))), Struct_3(Struct_2(Struct_1(global2.a, -292f, u_input.a, arg_0.x, global2.e), vec3<f32>(global2.b, global2.a.x, 1175f), vec4<f32>(-306f, -1188f, 1000f, -105f)), Struct_1(global2.a, arg_1.x, global2.c, 837f, vec3<bool>(true, true, global2.e.x))), Struct_2(Struct_1(arg_0, 735f, u_input.a, -2066f, vec3<bool>(false, global0.x, global2.e.x)), vec3<f32>(arg_1.x, 460f, global2.d), vec4<f32>(arg_0.x, -1416f, -1713f, -810f))))))), vec4<f32>(296f, -574f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -1362f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(680f - arg_0.x), -1481f)))));
    var var_1 = ~var_0.a.c.x;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_0.c, var_0.c)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_0.a, var_0.c.xwz, var_0.c), Struct_1(var_0.c.xx, -1112f, u_input.a, global2.b, vec3<bool>(false, true, global2.e.x))), Struct_3(Struct_2(Struct_1(var_0.a.a, -1086f, vec4<i32>(-40488i, var_0.a.c.x, global2.c.x, global2.c.x), global2.b, vec3<bool>(global0.x, false, true)), var_0.b, var_0.c), var_0.a), Struct_2(var_0.a, vec3<f32>(367f, 2124f, -1606f), vec4<f32>(arg_0.x, -231f, 1377f, 357f)))) - arg_0.x), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-1153f - -1267f))), _wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(var_0.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.a.a.x, -665f, var_0.a.b) * vec4<f32>(1073f, arg_1.x, 1173f, 1000f)), var_0.c))))));
    global2 = var_0.a;
    var var_3 = u_input.a.xww;
    return vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1707f));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_3 {
    global1 = array<u32, 22>();
    var var_0 = u_input.a.zy ^ global2.c.yw;
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - global2.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -1000f), vec2<f32>(arg_1.x, -2230f)))), _wgslsmith_f_op_vec2_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), global2.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yz)), countOneBits(32688u)))), 807f, u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -808f) * global2.a.x))), vec3<bool>(any(vec3<bool>(true, true, true)), false, true));
    var var_1 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(229f, -260f))), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(global2.a, 202f, global2.c, global2.a.x, global2.e), arg_1, vec4<f32>(1000f, arg_1.x, 1464f, arg_1.x)), Struct_1(global2.a, 114f, vec4<i32>(0i, arg_0.x, u_input.d, arg_0.x), global2.b, vec3<bool>(global0.x, global0.x, global2.e.x))), Struct_3(Struct_2(Struct_1(global2.a, arg_1.x, global2.c, arg_1.x, vec3<bool>(global0.x, global2.e.x, false)), arg_1, vec4<f32>(global2.d, 823f, -599f, arg_1.x)), Struct_1(vec2<f32>(447f, global2.d), -1000f, global2.c, -434f, vec3<bool>(global2.e.x, global0.x, true))), Struct_2(Struct_1(vec2<f32>(2174f, -1535f), -1153f, u_input.a, arg_1.x, vec3<bool>(false, global2.e.x, global0.x)), vec3<f32>(arg_1.x, arg_1.x, 220f), vec4<f32>(-1648f, global2.b, global2.b, 939f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)), firstLeadingBit(-firstTrailingBit(vec4<i32>(global2.c.x, -2147483647i, -18097i, global2.c.x))), _wgslsmith_div_f32(-1031f, arg_1.x), global2.e), _wgslsmith_f_op_vec3_f32(round(arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1201f + -366f), -1000f, arg_1.x, _wgslsmith_f_op_f32(round(-1382f)))))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, -818f, _wgslsmith_f_op_f32(arg_1.x * 1687f))) * vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_1.a, var_1.b, var_1.c), Struct_1(var_1.c.yz, 957f, vec4<i32>(-2147483647i, 1i, -7543i, -2147483647i), -280f, vec3<bool>(false, var_1.a.e.x, global0.x))), Struct_3(Struct_2(var_1.a, vec3<f32>(345f, -1361f, arg_1.x), vec4<f32>(var_1.a.b, -1000f, -1990f, -822f)), Struct_1(vec2<f32>(global2.b, -1350f), global2.b, u_input.a, var_1.c.x, vec3<bool>(false, false, global2.e.x))), Struct_2(var_1.a, var_1.b, var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_div_f32(global2.d, 647f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.a.x, global2.d, -685f))))))));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a.a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, arg_1.x))), -930f, firstLeadingBit(vec4<i32>(arg_0.x, 2147483647i, 1i, u_input.e.x)) << (vec4<u32>(u_input.c.x, global1[_wgslsmith_index_u32(1u, 22u)], 7654u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(var_1.c.x + 729f)), !vec3<bool>(true, global2.e.x, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.d, 744f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.xxz * var_1.b) - vec3<f32>(177f, arg_1.x, var_1.a.d))), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(var_1.a, var_1.b, var_1.c), Struct_1(arg_1.yy, var_1.c.x, vec4<i32>(-2147483647i, arg_0.x, 1i, var_0.x), global2.a.x, var_1.a.e)), Struct_3(Struct_2(Struct_1(global2.a, arg_1.x, global2.c, 1402f, var_1.a.e), var_1.b, vec4<f32>(500f, var_1.b.x, -688f, var_1.b.x)), Struct_1(arg_1.yz, var_1.c.x, u_input.a, -865f, var_1.a.e)), Struct_2(var_1.a, vec3<f32>(-210f, var_1.c.x, 551f), vec4<f32>(1000f, 895f, var_1.a.d, arg_1.x)))), _wgslsmith_f_op_f32(step(-806f, _wgslsmith_f_op_f32(global2.b - -1139f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f + arg_1.x)), _wgslsmith_f_op_f32(-var_1.c.x))), var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = func_1(abs((abs(vec3<i32>(63463i, 12699i, u_input.e.x)) & vec3<i32>(1i, -43051i, -34306i)) << (firstLeadingBit(vec3<u32>(1u, 6201u, arg_1.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(arg_2.b.c.wxx, arg_0.a.b).a.c.xxy - _wgslsmith_f_op_vec3_f32(-arg_0.a.c.yyx))) * arg_0.a.b)).a;
    global2 = func_1(vec3<i32>(~arg_0.a.a.c.x, select(-(i32(-1i) * -2147483647i), countOneBits(_wgslsmith_dot_vec3_i32(arg_2.b.c.wzw, vec3<i32>(global2.c.x, -17466i, 1i))), arg_3.e.x), 1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.b, arg_2.a.b)) + vec3<f32>(arg_0.a.c.x, 817f, var_0.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.c.wzy))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.yzy) * arg_2.a.b), vec3<f32>(-295f, _wgslsmith_f_op_f32(arg_3.d * arg_2.a.b.x), arg_3.d))))).a.a;
    global3 = ~abs(arg_1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_0.a.a, arg_3.a, var_0.a.e.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.a.c.wx)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, arg_3.d) - vec2<f32>(230f, 2073f)), vec2<f32>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(252f, arg_3.b) * _wgslsmith_f_op_vec2_f32(min(arg_2.a.b.zy, arg_2.b.a))))), -1000f, vec4<i32>(arg_0.b.c.x, var_0.a.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(47727i << (u_input.c.x % 32u), -1i << (arg_1.x % 32u)), global2.c.xx), -min(~(-19050i), -19545i)), _wgslsmith_f_op_f32(abs(global2.b)), global2.e);
    var var_2 = u_input.c.zz;
    return StorageBuffer(var_2.x >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.c.xzz)), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(-arg_2.b.b), _wgslsmith_f_op_f32(select(var_0.c.x, arg_3.a.x, arg_3.e.x))))), 33417u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 22>();
    global3 = u_input.c.x;
    var var_0 = -(~(global2.c.yyy & -firstTrailingBit(global2.c.zxw)));
    var_0 = ~min(vec3<i32>(955i, global2.c.x, -27263i) ^ global2.c.zxx, global2.c.xww) & u_input.a.zyx;
    let var_1 = _wgslsmith_f_op_f32(step(263f, global2.b));
    let var_2 = true;
    var var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), -249f);
    let x = u_input.a;
    s_output = func_4(func_1(global2.c.yww, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))), -238f, var_1)), u_input.c.yyw, func_1(vec3<i32>(2147483647i, 1i, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, global2.a.x, -1389f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-803f, 812f, 1000f)))))), Struct_1(func_1(vec3<i32>(u_input.e.x, _wgslsmith_mod_i32(global2.c.x, 27117i), var_0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, global2.b, -808f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(282f, -517f, -1978f)), any(vec4<bool>(false, false, true, var_2))))).a.b.yy, 284f, firstLeadingBit(global2.c), 281f, !global2.e));
}

