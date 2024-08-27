struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(273f, -703f, 1063f), vec3<f32>(479f, 414f, -1246f), vec3<f32>(2037f, -361f, -1111f), vec3<f32>(309f, 443f, 1291f), vec3<f32>(1219f, 1234f, -934f), vec3<f32>(123f, 263f, 1041f), vec3<f32>(-1000f, -164f, -532f), vec3<f32>(-2491f, -936f, 1856f), vec3<f32>(397f, -1385f, -1399f), vec3<f32>(-202f, 1000f, -112f), vec3<f32>(1220f, -759f, 784f), vec3<f32>(320f, -409f, -379f), vec3<f32>(680f, -2201f, 1376f), vec3<f32>(-1352f, 2015f, -449f), vec3<f32>(1612f, 795f, 695f), vec3<f32>(1253f, -911f, 462f), vec3<f32>(-733f, -372f, -962f), vec3<f32>(-990f, 1000f, -694f), vec3<f32>(-112f, -977f, 327f), vec3<f32>(-984f, 1775f, 611f), vec3<f32>(-506f, -688f, -807f), vec3<f32>(-1377f, -1575f, 281f), vec3<f32>(1881f, -781f, 815f), vec3<f32>(-3258f, -476f, 549f), vec3<f32>(-181f, 916f, 1000f), vec3<f32>(399f, 225f, -589f));

var<private> global2: array<i32, 3>;

var<private> global3: Struct_1 = Struct_1(581f, vec3<f32>(1287f, -1488f, 1402f), vec4<f32>(-257f, -937f, 334f, -494f));

var<private> global4: Struct_1 = Struct_1(1573f, vec3<f32>(-1656f, 240f, 428f), vec4<f32>(915f, 452f, 1425f, -125f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    var var_0 = 1u;
    var var_1 = select(!vec4<bool>(true | all(vec2<bool>(true, true)), (global3.c.x == global0.a) || true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), false), vec4<bool>(true, true, true, select(true, all(vec4<bool>(false, true, false, false)), true) & (any(vec4<bool>(true, true, true, false)) && true)), all(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(-803f - -794f), u_input.d <= u_input.d))) - global3.c.x), global1[_wgslsmith_index_u32(select(u_input.d, u_input.d, true), 26u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a, global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -791f), global3.b.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(953f, -613f, -436f, global4.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, -689f, global0.a, 1183f)))))));
    global3 = Struct_1(global4.b.x, vec3<f32>(_wgslsmith_f_op_f32(-1340f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * 185f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-233f)))), _wgslsmith_f_op_f32(max(-1527f, _wgslsmith_f_op_f32(max(1520f, _wgslsmith_f_op_f32(trunc(global4.c.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c + _wgslsmith_div_vec4_f32(global4.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -1000f, var_2.c.x, -737f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.c)))));
    return global4.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> bool {
    global0 = Struct_1(-1591f, global3.c.zzz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.b.x, global3.c.x, -511f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(-global3.c))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.b.x, global0.a, _wgslsmith_f_op_f32(1124f - global4.c.x), 1263f)))));
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    let var_0 = firstLeadingBit(-u_input.b);
    var var_1 = _wgslsmith_div_f32(global4.a, _wgslsmith_div_f32(global0.a, 427f));
    return true;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = select(vec4<bool>(true, func_2(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_f_op_f32(max(2109f, 103f)) >= _wgslsmith_f_op_f32(min(arg_0.c.x, global4.b.x)), true, true, any(vec3<bool>(true, true, true))), !all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), !(all(vec4<bool>(false, true, false, false)) && all(vec3<bool>(true, true, true))));
    return global2[_wgslsmith_index_u32(u_input.d, 3u)];
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(global0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c.yxy) - global3.c.yzx), global4.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1660f, -533f, true))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-309f, -1818f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(sign(global0.b)))) * vec3<f32>(_wgslsmith_div_f32(-1154f, 852f), _wgslsmith_f_op_f32(sign(var_0.c.x)), global0.a)) + global4.c.ywz), vec4<f32>(-485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global4.c.x)), _wgslsmith_f_op_f32(floor(-261f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x - global4.a))), _wgslsmith_f_op_f32(-640f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-876f)))), -286f));
    let var_2 = Struct_1(var_1.b.x, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - global4.a)), global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(218f, global4.a, false)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -542f), global4.b.x, _wgslsmith_f_op_f32(1000f + -2001f))))), global4.c);
    let var_3 = var_2.b.yy;
    let var_4 = var_0;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(~_wgslsmith_mod_i32(func_1(Struct_1(-1614f, vec3<f32>(844f, global3.b.x, global3.b.x), vec4<f32>(-376f, 433f, 377f, -1000f))), max(reverseBits(u_input.c), global2[_wgslsmith_index_u32(35881u, 3u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)));
    global0 = Struct_1(-328f, _wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-741f, global3.a, global4.c.x, global4.b.x))))), global3.c))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global4.b.x)), vec3<f32>(global0.c.x, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1594f)), -355f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(global4.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) * _wgslsmith_f_op_vec4_f32(max(global3.c, vec4<f32>(-1097f, 841f, 1593f, global0.a)))))), global3.c, !all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c.x)));
    let var_2 = -2573f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -797f), -523f)) + _wgslsmith_f_op_f32(2053f - -274f))));
    global4 = var_0;
    global4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.c.x + 135f), -1495f)), var_0.c.wzx, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, 1222f, -266f, -728f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1506f, global0.c.x, global4.b.x, 323f), vec4<f32>(global3.b.x, var_1, -762f, global4.a), vec4<bool>(var_2, true, false, var_2))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1438f, var_1, var_1, var_1))) - _wgslsmith_f_op_vec4_f32(func_3())))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1461f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1026f)), _wgslsmith_f_op_f32(-315f - var_1)))), 1591f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global4.c, _wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_f_op_vec4_f32(min(global3.c, global3.c)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global4.c)))), global3.a);
}

