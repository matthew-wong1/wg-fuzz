struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1318f, 1360f, 960f, 394f, -416f, -620f, -327f, 871f, -1000f, 667f, 1592f, -1000f, -1068f, -1269f, 868f, -513f, -110f, 953f, -262f, -493f, 1326f, 1475f, -203f);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(-665f, -1472f);

var<private> global3: f32;

var<private> global4: array<u32, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    global4 = array<u32, 4>();
    var var_0 = Struct_3(Struct_2(Struct_1(arg_1, arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1081f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1030f, 535f)) + _wgslsmith_f_op_f32(-arg_1))), arg_0.a.c), arg_0.b);
    return var_0.a;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = any(!vec3<bool>(select(select(false, true, arg_0), false, true), any(select(global1.zxz, global1.zww, vec3<bool>(arg_2.x, false, false))), true));
    let var_1 = func_2(Struct_3(func_2(Struct_3(arg_3, func_2(Struct_3(arg_3, Struct_1(arg_1.x, arg_1.x)), -412f).a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(889f + global0[_wgslsmith_index_u32(1u, 23u)]), _wgslsmith_f_op_f32(1030f - global2.b)))), arg_3.a), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1300f, 1543f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(-1000f - arg_3.a.a)))), !(!(!arg_2.x))))).a;
    let var_2 = Struct_1(-473f, arg_3.a.b);
    var var_3 = var_1;
    var var_4 = u_input.b;
    return global0[_wgslsmith_index_u32(countOneBits(~1u), 23u)];
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = func_2(Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(arg_0.a, 661f), global0[_wgslsmith_index_u32(1u, 23u)], -34582i), arg_0), _wgslsmith_f_op_f32(round(arg_0.b))).a, -293f, select(i32(-1i) * -33324i, 1i, select(global1.x, false, true))), Struct_1(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~1360u, 23u)], 674f, any(global1.yz))), -1621f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(max(arg_0.a, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 4u)], 4u)], 23u)]))))))))).a;
    global2 = Struct_1(arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-762f * global2.a))));
    var var_1 = Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 23u)], arg_0.b), 123f, -10558i), Struct_1(var_0.a, -940f)), _wgslsmith_f_op_f32(step(333f, arg_0.b))), Struct_1(-662f, _wgslsmith_f_op_f32(f32(-1f) * -396f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(min(u_input.b.x, 28156u), 4u)], firstLeadingBit(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 4u)], 4u)])), 23u)])), func_2(Struct_3(Struct_2(Struct_1(-684f, arg_0.a), _wgslsmith_div_f32(-1317f, 1213f), -2147483647i), Struct_1(global2.b, global0[_wgslsmith_index_u32(~30857u, 23u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-435f)))).a);
    var var_2 = u_input.b;
    var var_3 = global1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~var_2.x, 4u)], 23u)]));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    global2 = arg_0.b;
    global4 = array<u32, 4>();
    var var_0 = -arg_0.a.c;
    global4 = array<u32, 4>();
    global3 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2246f, 1230f))) - _wgslsmith_f_op_f32(-607f * -152f)), _wgslsmith_f_op_f32(func_3(global1.x || true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global2.b, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 23u)]))), vec3<bool>(false, any(vec4<bool>(global1.x, global1.x, global1.x, true)), true), func_2(Struct_3(arg_0.a, arg_0.a.a), _wgslsmith_f_op_f32(-global2.a)))))));
    return vec3<bool>(all(select(!select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, global1.x, true, global1.x), false), !vec4<bool>(global1.x, global1.x, global1.x, false), select(!vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec3<bool>(any(func_1(Struct_3(Struct_2(Struct_1(196f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 23u)]), global2.a, 0i), Struct_1(global0[_wgslsmith_index_u32(0u, 23u)], -1149f)))), true, global1.x), vec3<bool>(!global1.x, true || (all(vec4<bool>(true, true, global1.x, false)) | false), all(!(!vec3<bool>(global1.x, true, true)))), true);
    let var_1 = 831f;
    var var_2 = !vec4<bool>(true, all(var_0.xx), var_0.x, func_1(Struct_3(Struct_2(Struct_1(1522f, -908f), 407f, -1i), func_2(Struct_3(Struct_2(Struct_1(global2.a, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3075u, 4u)], 23u)]), -1105f, 1i), Struct_1(var_1, var_1)), global0[_wgslsmith_index_u32(u_input.a, 23u)]).a)).x);
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(Struct_2(Struct_1(-1060f, 704f), -2394f, 25391i), Struct_1(444f, 1893f)), -1000f).a)) + 874f), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, vec3<f32>(global2.a, global2.b, 249f), vec3<bool>(global1.x, var_2.x, var_0.x), Struct_2(Struct_1(-1293f, 346f), var_1, 35i))), _wgslsmith_f_op_f32(884f - global0[_wgslsmith_index_u32(23987u, 23u)])))));
    var var_3 = Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3915u, 4u)], 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)], 93409i), func_2(Struct_3(Struct_2(Struct_1(-193f, 513f), global2.b, 7374i), Struct_1(var_1, 161f)), global0[_wgslsmith_index_u32(u_input.a, 23u)]).a), _wgslsmith_f_op_f32(ceil(global2.b))).a, -885f, 23558i), func_2(Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(-1000f, global2.a), global2.a, 2147483647i), Struct_1(global2.b, global2.a)), global0[_wgslsmith_index_u32(4294967295u, 23u)]).a, 1106f, -6968i), func_2(Struct_3(Struct_2(Struct_1(1000f, 630f), -445f, 2147483647i), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 23u)], var_1)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 23u)]))).a), global2.b).a);
    var var_4 = var_3.a.c;
    var_3 = Struct_3(func_2(Struct_3(var_3.a, var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.b - var_3.a.a.b))), var_3.a.a);
    var var_5 = Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_2(Struct_1(888f, 857f), var_3.a.b, var_3.a.c), Struct_1(-1257f, 1392f)), _wgslsmith_f_op_f32(global2.b - -1000f)), var_3.b), _wgslsmith_f_op_f32(154f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(false, vec3<f32>(-1773f, var_1, -140f), vec3<bool>(var_2.x, global1.x, var_2.x), var_3.a)))))), var_3.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2578f) - 416f), select(~max(~62266i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.a.c, var_3.a.c, var_3.a.c, 0i), vec4<i32>(-38864i, 2147483647i, 0i, var_5.a.c))), _wgslsmith_div_i32(func_2(Struct_3(Struct_2(Struct_1(-467f, 1037f), -218f, var_3.a.c), Struct_1(-962f, var_1)), _wgslsmith_f_op_f32(min(499f, 1897f))).c, abs(min(69607i, 51718i))), all(func_1(Struct_3(Struct_2(var_3.a.a, global2.b, var_5.a.c), var_5.a.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1355f)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 4u)]), 4u)], 23u)]) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, 221f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 537f), vec2<f32>(var_1, global0[_wgslsmith_index_u32(u_input.a, 23u)])))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.b, 1160f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, var_3.a.a.b))))))), var_5.b.b);
}

