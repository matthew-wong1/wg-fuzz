struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: f32 = 1744f;

var<private> global2: array<bool, 7> = array<bool, 7>(true, false, true, false, true, false, false);

var<private> global3: i32;

var<private> global4: array<Struct_2, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = 1185f;
    global2 = array<bool, 7>();
    return -1494f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(~(~(~54660u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(1300f - -1327f), -754f)), vec3<f32>(-1332f, _wgslsmith_div_f32(-1564f, 246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(-151f + -1716f))), ~(~0u)), vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, -147f, -905f) - vec3<f32>(1308f, -541f, 149f)))), !global2[_wgslsmith_index_u32(79473u, 7u)]);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.b) * _wgslsmith_f_op_vec4_f32(-var_0.a.b)))), var_0.a.b);
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_mult_u32(~1u, var_0.a.a);
    var var_4 = select(var_3, countOneBits(~_wgslsmith_add_u32(~16312u, ~4294967295u)), !all(vec4<bool>(global2[_wgslsmith_index_u32(2035u, 7u)], global2[_wgslsmith_index_u32(var_3, 7u)], any(vec2<bool>(true, var_0.d)), false)));
    return var_0.a;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(-1000f, -932f)), Struct_2(func_2(), func_2()), Struct_2(Struct_1(_wgslsmith_div_u32(~24062u, ~0u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1414f, 1000f, -914f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(493f, 1334f, 555f, -1197f), vec4<f32>(-105f, 341f, -668f, -1000f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1782f, 187f, -810f), vec3<f32>(268f, 375f, 370f), vec3<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(14751u, 7u)], global2[_wgslsmith_index_u32(36701u, 7u)]))))), _wgslsmith_mod_u32(~12334u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 18358u), vec3<u32>(1u, 48153u, 1u)))), Struct_1(99946u, vec4<f32>(_wgslsmith_f_op_f32(min(-1488f, -2703f)), _wgslsmith_f_op_f32(round(-790f)), -763f, _wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -208f, 1000f)), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), max(82419u, 28216u)))), true, func_2());
    let var_1 = _wgslsmith_f_op_f32(step(var_0.e.b.x, -1150f));
    global0 = array<Struct_2, 17>();
    global4 = array<Struct_2, 6>();
    var var_2 = ~select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.b.a, 17169u) & max(vec2<u32>(var_0.c.b.a, var_0.b.b.d), vec2<u32>(var_0.e.d, 1u)), vec2<u32>(1211u, 0u)), vec2<u32>(_wgslsmith_add_u32(~var_0.e.d, ~var_0.b.a.d), 10896u), !global2[_wgslsmith_index_u32(var_0.c.b.a, 7u)] || !var_0.d);
    return Struct_3(func_2(), vec2<u32>(abs(4294967295u), 10049u), _wgslsmith_f_op_vec3_f32(max(func_2().c, var_0.b.a.c)), global2[_wgslsmith_index_u32(var_0.b.b.d, 7u)]);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    global3 = u_input.c.x;
    var var_0 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.c.x - arg_0.c.b.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(180f * arg_2.c.x)), -1000f)))));
    let var_1 = arg_3.a;
    return arg_3.b.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = func_1();
    let var_1 = Struct_3(func_2(), vec2<u32>(var_0.b.x, 0u), var_0.c, 803f <= arg_2);
    var var_2 = _wgslsmith_f_op_f32(-arg_2);
    global2 = array<bool, 7>();
    var var_3 = var_1.a.b.x >= 1228f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1705f)) - -1438f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec3<u32>(1u, 1u, 1u), func_4(Struct_4(451f, Struct_2(Struct_1(4294967295u, vec4<f32>(-766f, 485f, -196f, 1000f), vec3<f32>(-1157f, 573f, -381f), 4294967295u), Struct_1(20226u, vec4<f32>(1081f, 1521f, -1635f, -1799f), vec3<f32>(-487f, -1629f, -542f), 0u)), global0[_wgslsmith_index_u32(60572u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(1u, vec4<f32>(944f, 1037f, 375f, -160f), vec3<f32>(-1000f, 970f, -1000f), 0u)), -585f, Struct_3(Struct_1(47u, vec4<f32>(1000f, -835f, -627f, 617f), vec3<f32>(-250f, -857f, 381f), 4294967295u), vec2<u32>(0u, 69092u), vec3<f32>(887f, -100f, 1000f), false), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1896f)))))) * _wgslsmith_f_op_f32(f32(-1f) * -548f));
    var var_1 = Struct_1(firstTrailingBit(~1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<u32>(18032u, 4294967295u, 4294967295u), 23160u, 1000f)) * -959f)), _wgslsmith_f_op_f32(-826f * -1000f), _wgslsmith_f_op_f32(-1553f * -1483f), -799f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, -718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1105f, -154f, -1801f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, -1280f, -1168f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2778f, 1759f, 988f)))))), 1u);
    let var_2 = u_input.c;
    let var_3 = select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.a, 7u)] | global2[_wgslsmith_index_u32(20759u, 7u)], !global2[_wgslsmith_index_u32(var_1.a, 7u)], true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)], true, true), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(83001u, 7u)], global2[_wgslsmith_index_u32(var_1.d, 7u)], false), select(vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.a, 7u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(30778u, 7u)], global2[_wgslsmith_index_u32(31562u, 7u)], global2[_wgslsmith_index_u32(2391u, 7u)], global2[_wgslsmith_index_u32(var_1.a, 7u)]), false)), !(var_1.d >= var_1.d)), vec4<bool>(any(vec4<bool>(all(vec3<bool>(true, true, true)), true, select(false, global2[_wgslsmith_index_u32(7249u, 7u)], global2[_wgslsmith_index_u32(24537u, 7u)]), global2[_wgslsmith_index_u32(4294967295u, 7u)])), true, global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, 47081u)), ~vec2<u32>(4294967295u, var_1.a))), 7u)], global2[_wgslsmith_index_u32(~(~36799u), 7u)]), all(vec2<bool>(true, global2[_wgslsmith_index_u32(min(firstTrailingBit(var_1.a), _wgslsmith_add_u32(4294967295u, var_1.a)), 7u)])));
    var var_4 = func_1();
    var var_5 = _wgslsmith_dot_vec3_u32(~vec3<u32>(min(26370u, var_4.a.d) | 11459u, 19453u, 12221u), vec3<u32>(var_1.d, var_1.d, 1u));
    let var_6 = Struct_4(_wgslsmith_f_op_f32(var_1.c.x + var_4.c.x), global4[_wgslsmith_index_u32(var_4.b.x, 6u)], global4[_wgslsmith_index_u32(firstTrailingBit(0u), 6u)], true, Struct_1(~var_1.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.x)), 1f, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-339f - -1047f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, var_4.a.b.x) - _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.b.x, 198f, -1623f)), var_1.c))), 17566u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(var_6.c.a.a), var_1.d, 0u, 4294967295u), u_input.c.x, u_input.a);
}

