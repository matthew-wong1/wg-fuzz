struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec4<f32> = vec4<f32>(-1525f, 1000f, 849f, -2314f);

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -186f), -359f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-global1.a)), 704f, _wgslsmith_f_op_f32(-362f + _wgslsmith_f_op_f32(floor(arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global1.a, global1.d.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(263f, -886f, arg_2.x, 1480f))), -18248i == u_input.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0.x, arg_0, arg_0) * _wgslsmith_div_vec4_f32(vec4<f32>(1635f, global0.x, global1.d.x, global0.x), vec4<f32>(global0.x, arg_0, -405f, -1151f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, global1.a, 446f, -301f), vec4<f32>(global1.d.x, 1694f, -1648f, -1072f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, -544f, arg_0, global1.d.x))))), !(!(!vec4<bool>(true, true, global1.c.x, global1.c.x)))));
    let var_0 = Struct_1(46204u, !vec2<bool>(!global1.c.x, _wgslsmith_f_op_f32(ceil(-988f)) == _wgslsmith_f_op_f32(f32(-1f) * -1784f)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0)), arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f + arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-824f)) * _wgslsmith_f_op_f32(f32(-1f) * -439f)) - _wgslsmith_f_op_f32(-450f + _wgslsmith_f_op_f32(arg_2.x + arg_2.x))), 291f));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * 1789f)));
    global1 = Struct_2(_wgslsmith_f_op_f32(floor(-1656f)), 39874u, vec2<bool>(var_0.d, var_0.d), _wgslsmith_f_op_vec2_f32(-global1.d), u_input.a.zy);
    return _wgslsmith_f_op_f32(702f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), global0.x), -1092f)))));
}

fn func_2() -> f32 {
    let var_0 = global1.c.x;
    let var_1 = Struct_1(abs(~4683u), global1.c, _wgslsmith_f_op_vec2_f32(-global1.d), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.x, global1.b, vec2<f32>(global1.a, 427f))), global0.x, global1.d.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, global1.d.x, var_1.c.x, global0.x))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, -141f, global1.d.x) + vec4<f32>(-117f, 635f, global1.d.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, global1.a, -228f, global1.a) + vec4<f32>(global1.a, global0.x, global1.d.x, 1473f)), select(vec4<bool>(false, global1.c.x, true, false), vec4<bool>(global1.c.x, true, true, true), vec4<bool>(global1.c.x, global1.c.x, true, false))))))));
    global1 = Struct_2(_wgslsmith_f_op_f32(max(global1.d.x, -610f)), var_1.a, !var_1.b, _wgslsmith_f_op_vec2_f32(step(global1.d, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), 1355f), _wgslsmith_f_op_vec2_f32(select(global1.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(408f, global0.x), global0.yw, true)), select(global1.c, vec2<bool>(var_1.d, false), true))))))), vec2<i32>(42495i, 0i));
    var var_2 = ~abs(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.b, var_1.a, var_1.a), firstLeadingBit(~vec3<u32>(8408u, global1.b, var_1.a))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1350f, 0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, global0.x) + var_1.e.yy))) * _wgslsmith_f_op_f32(104f + _wgslsmith_f_op_f32(global0.x * 728f))) + global1.d.x)));
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_1(0u, global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1007f + 307f))))), true, global0.ywx);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -1345f, global1.d.x, 649f), vec4<f32>(global1.a, global1.a, -1305f, 297f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1523f, 822f, -1000f)))), select(!(!vec4<bool>(global1.c.x, false, false, false)), vec4<bool>(false, false, var_0.d, true), !(!vec4<bool>(var_0.d, false, global1.c.x, global1.c.x))))), var_0, _wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(80478u, 4294967295u, arg_0))), ~vec3<u32>(arg_0, 1u, global1.b)) ^ abs(global1.b), _wgslsmith_div_vec3_i32(-vec3<i32>(-1i, global1.e.x, 35603i), u_input.a.ywz) >> (abs(~(~vec3<u32>(1u, 14039u, var_0.a))) % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1911f * -1979f)) + global0.x), _wgslsmith_f_op_f32(-global1.d.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, 1000f, -242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d.x, global0.x)))) + var_1.a));
    let var_2 = min(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), var_1.d.x);
    let var_3 = vec4<bool>(any(!select(!vec4<bool>(global1.c.x, true, false, var_1.b.d), !vec4<bool>(false, false, var_0.d, var_1.b.b.x), true)), true, all(vec3<bool>(var_0.d, var_1.b.d, var_0.d)), !all(vec3<bool>(any(vec3<bool>(false, global1.c.x, var_0.d)), true, select(false, var_0.d, true))));
    return -(countOneBits(select(global1.e.x, 1i, var_3.x)) >> (_wgslsmith_div_u32(var_1.c, _wgslsmith_add_u32(global1.b, var_0.a)) % 32u)) << (global1.b % 32u);
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.e.x), -1000f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global1.d.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-651f, -642f, arg_2.a, global0.x) - vec4<f32>(arg_3.c.x, global0.x, arg_3.e.x, global1.d.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2147f, arg_3.c.x, global1.a, -634f), vec4<f32>(global1.a, 506f, global1.a, 929f))))), select(select(!arg_0, !vec4<bool>(arg_3.b.x, arg_2.c.x, global1.c.x, false), !arg_0), vec4<bool>(arg_0.x, all(vec2<bool>(arg_3.d, true)), any(global1.c), global1.c.x), !(!arg_0)))), Struct_1(30191u, arg_3.b, _wgslsmith_f_op_vec2_f32(round(arg_2.d)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.e) * arg_3.e))), global1.b, _wgslsmith_clamp_vec3_i32(countOneBits(u_input.a.xzy), vec3<i32>(global1.e.x, _wgslsmith_mod_i32(global1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2.e.x, 2147483647i, -19355i), vec4<i32>(-2147483647i, -2147483647i, arg_1, -36990i))), -1i), vec3<i32>(-1i, 2147483647i, arg_2.e.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a))), arg_3.d)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-425f, -791f, _wgslsmith_f_op_f32(239f * -1000f), _wgslsmith_f_op_f32(-490f * arg_3.e.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.x, _wgslsmith_f_op_f32(arg_3.c.x + arg_3.e.x), _wgslsmith_f_op_f32(-arg_3.c.x)))) * _wgslsmith_f_op_vec4_f32(floor(var_0.a))));
    var var_2 = Struct_1(4702u, arg_3.b, _wgslsmith_f_op_vec2_f32(select(arg_3.e.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_2.d.x) * global1.d)))), arg_0.xx)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-445f, 968f, arg_2.a) * var_1.zyy) - vec3<f32>(_wgslsmith_f_op_f32(sign(-118f)), -745f, _wgslsmith_f_op_f32(var_1.x * 814f))) - vec3<f32>(-1559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(437f, 4294967295u, vec2<f32>(global1.d.x, -467f))) + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a.x, global0.x)))))));
    global2 = array<Struct_3, 14>();
    return !(!var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(49301u, 14u)];
    global0 = var_0.a;
    let var_1 = global2[_wgslsmith_index_u32(~46657u, 14u)];
    global1 = Struct_2(_wgslsmith_f_op_f32(210f * -661f), ~0u, func_4(!(!select(vec4<bool>(var_1.b.b.x, true, false, false), vec4<bool>(var_1.b.b.x, false, global1.c.x, var_0.b.d), vec4<bool>(false, true, var_0.b.b.x, global1.c.x))), func_1(1u), Struct_2(_wgslsmith_f_op_f32(func_2()), var_0.c, select(vec2<bool>(false, var_1.b.b.x), vec2<bool>(true, var_1.b.d), !global1.c.x), var_0.b.c, global1.e), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zw)), -(countOneBits(vec2<i32>(16835i, global1.e.x)) | ~(-vec2<i32>(-32681i, var_0.d.x))));
    var var_2 = var_1.e;
    let var_3 = var_0.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.e.x, _wgslsmith_f_op_f32(1293f + 272f), _wgslsmith_div_f32(285f, 2435f), _wgslsmith_f_op_f32(min(var_0.e, var_0.a.x))))), vec4<bool>(any(!vec2<bool>(global1.c.x, var_0.b.d)), true, -u_input.a.x <= -_wgslsmith_div_i32(0i, -31257i), !(!all(vec3<bool>(true, var_1.b.d, var_0.b.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, var_0.a);
}

