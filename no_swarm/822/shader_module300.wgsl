struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 4> = array<i32, 4>(2147483647i, i32(-2147483648), 0i, 12260i);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1354f, 486f, -1000f), -1000f);

var<private> global3: u32 = 31141u;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global2 = Struct_1(vec4<bool>(any(!select(vec3<bool>(global4.a.x, false, global2.a.x), arg_0.a.zww, true)), true, false, global4.a.x), arg_0.b, 1265f);
    let var_0 = Struct_1(select(vec4<bool>(global4.a.x, all(!global4.a.yyx), global4.a.x, all(!vec4<bool>(global4.a.x, global2.a.x, false, true))), !vec4<bool>(false, arg_0.a.x, false, false), global4.a.x), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(-arg_1)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.c))))) * arg_1);
    var var_2 = global4.a.yyz;
    let var_3 = arg_0;
    return 426f;
}

fn func_2() -> vec4<f32> {
    let var_0 = global0.x;
    global1 = array<i32, 4>();
    global0 = global4.a.yxz;
    var var_1 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, global4.a.x, global0.x, true), vec3<f32>(global2.c, global2.b.x, global4.c), global4.b.x), global2.b.x))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, true, true, global4.a.x), vec3<f32>(2247f, 821f, -731f), global4.c), global4.c)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, true, false, global2.a.x), global4.b, 1102f), 1954f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global4.c)) + global2.b.x));
    let var_2 = !(global4.a.x == any(vec2<bool>(false, false)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(811f, -1434f, global2.b.x, -504f) - vec4<f32>(-239f, -379f, -2334f, 142f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, -772f, global2.c) * vec4<f32>(global2.b.x, 2310f, var_1.c, 688f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-820f, -349f, global2.c, -669f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-423f, 129f, 1240f, global2.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, -1074f, 799f, -339f))))), !((u_input.a <= global1[_wgslsmith_index_u32(4294967295u, 4u)]) && any(vec3<bool>(var_2, var_2, global4.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(306f)), 491f, -405f, -1559f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(756f, 361f, -535f, global4.c) + vec4<f32>(1025f, global4.c, -460f, -479f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.x, -2066f, global4.c, -572f), vec4<f32>(var_1.c, global4.b.x, -1147f, -429f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2107f, -660f, global4.b.x, 1351f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global4.c, global4.c, var_1.b.x) * vec4<f32>(global4.c, -933f, -730f, -1201f)), false))), false))));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<f32> {
    global1 = array<i32, 4>();
    var var_0 = !(!(global2.a.x | select(false, true, select(global4.a.x, true, global4.a.x))));
    global1 = array<i32, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(208f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-890f)), _wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(max(global4.b.x, global2.c))), _wgslsmith_f_op_f32(-global2.c), arg_0, -1529f) - _wgslsmith_f_op_vec4_f32(func_2())), any(select(vec3<bool>(false, any(global2.a.zw), global4.a.x), vec3<bool>(global4.a.x, all(vec3<bool>(global0.x, global4.a.x, global2.a.x)), true), global2.a.wyx))));
    var var_2 = Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(step(var_1.yzz, vec3<f32>(arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.c)))), -1456f))), _wgslsmith_f_op_f32(-global2.b.x));
    return _wgslsmith_f_op_vec3_f32(exp2(global4.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(!vec4<bool>(!arg_1.a.x, false, global2.a.x, any(!vec2<bool>(arg_1.a.x, false))), _wgslsmith_f_op_vec3_f32(global4.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b.x, 288f, global2.c), _wgslsmith_f_op_vec3_f32(-global2.b), !global0.x)))), arg_1.c);
    var_0 = Struct_1(!global2.a, vec3<f32>(-1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x))), -146f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))), var_0.b.x));
    var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = 4294967295u;
    return Struct_1(select(global4.a, arg_1.a, vec4<bool>(arg_2.a.x, !global0.x, arg_2.a.x, global2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.c))), false)), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x + global4.c) * _wgslsmith_f_op_f32(-var_0.b.x)))), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(!(!global2.a.x), 1i < _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(1u, 4u)], -8366i), vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(69809u, 4u)])), vec2<i32>(15912i, -2147483647i))), Struct_1(!global4.a, _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(1757f - 577f), 997f)), _wgslsmith_f_op_f32(min(global2.b.x, global2.b.x))), Struct_1(global4.a, global4.b, -1659f));
    global3 = _wgslsmith_mod_u32(81019u, _wgslsmith_div_u32(18179u, abs(0u) << (_wgslsmith_clamp_u32(1u, 35372u, 53307u) % 32u)) & 26175u);
    global1 = array<i32, 4>();
    global0 = func_4(var_0.a.xx, Struct_1(!select(vec4<bool>(true, global4.a.x, global4.a.x, false), select(vec4<bool>(global4.a.x, true, global0.x, global4.a.x), vec4<bool>(false, true, global4.a.x, true), vec4<bool>(true, global2.a.x, global2.a.x, true)), global0.x), vec3<f32>(-1030f, var_0.b.x, _wgslsmith_f_op_vec3_f32(func_1(global2.c, _wgslsmith_f_op_f32(abs(631f)))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c))), func_4(vec2<bool>(all(select(vec2<bool>(false, var_0.a.x), vec2<bool>(true, true), vec2<bool>(global2.a.x, false))), func_4(var_0.a.xx, Struct_1(global4.a, vec3<f32>(global2.b.x, global2.c, 489f), global2.b.x), Struct_1(var_0.a, vec3<f32>(1000f, global4.b.x, 173f), -1321f)).a.x), func_4(global2.a.yx, func_4(global0.xx, var_0, Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1435f, global4.b.x, 1104f), global4.c)), func_4(var_0.a.wz, var_0, func_4(vec2<bool>(true, false), Struct_1(var_0.a, vec3<f32>(2301f, 152f, global4.b.x), global4.c), Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, global0.x, false), global4.b, global4.c)))), Struct_1(var_0.a, global4.b, -393f))).a.xwy;
    global3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(i32(-1i) * -u_input.a), _wgslsmith_clamp_i32(0i, select(~global1[_wgslsmith_index_u32(25455u, 4u)], -22737i, func_4(var_0.a.xy, Struct_1(var_0.a, vec3<f32>(-2296f, var_0.c, 1289f), global4.c), Struct_1(vec4<bool>(true, false, var_0.a.x, global0.x), vec3<f32>(-1590f, 454f, 199f), 1749f)).a.x), 0i), -(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 4u)], u_input.b) | (global1[_wgslsmith_index_u32(0u, 4u)] ^ global1[_wgslsmith_index_u32(45793u, 4u)]))), select(select(vec2<u32>(1u, 1u), ~firstTrailingBit(vec2<u32>(56277u, 8049u)), vec2<bool>(global2.a.x, var_0.a.x)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(64214u, 0u), vec2<u32>(4294967295u, 4294967295u)), true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.c, _wgslsmith_f_op_vec4_f32(func_2()).x, 2248f))));
}

