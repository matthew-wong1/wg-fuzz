struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1266f, 1137f);

var<private> global1: i32;

var<private> global2: array<vec4<bool>, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(vec4<f32>(-303f, -274f, global0.b, global0.a));
    let var_1 = Struct_4(Struct_3(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_f32(min(-628f, global0.a)), vec3<u32>(u_input.a, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), u_input.a), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -364f), 1000f)), _wgslsmith_f_op_f32(abs(var_0.a.x)), Struct_3(vec3<bool>(all(vec2<bool>(true, true)), select(true, any(global2[_wgslsmith_index_u32(u_input.a, 10u)]), true), all(vec3<bool>(true, false, false)) != true), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1100f, _wgslsmith_f_op_f32(596f + var_0.a.x)), _wgslsmith_f_op_f32(sign(global0.a)))), vec3<u32>(u_input.a, ~(46469u | u_input.a), ~1u), Struct_2(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1250f, 1521f)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(var_0.a.x, global0.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-360f, _wgslsmith_f_op_f32(select(1034f, 1112f, true)))))));
    var var_2 = -2147483647i;
    let var_3 = Struct_1(var_0.a);
    global2 = array<vec4<bool>, 10>();
    return ~firstLeadingBit(vec4<u32>(~0u, u_input.a >> (u_input.a % 32u), 58652u, 47372u)) << (vec4<u32>(49025u, ~30232u, u_input.a, _wgslsmith_mult_u32(437u, u_input.a)) % vec4<u32>(32u));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, global0.a, -1012f, 701f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1425f, global0.b, -1321f, -592f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, global0.a, 274f) - vec4<f32>(global0.b, 1551f, global0.a, 667f))))));
    var var_1 = func_3();
    global2 = array<vec4<bool>, 10>();
    var var_2 = 734f;
    return ~u_input.a;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(498f)) + global0.a) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b)) - global0.b));
    var var_1 = u_input.b.x;
    let var_2 = Struct_2(-252f, -1202f);
    var var_3 = func_2() ^ ~u_input.a;
    let var_4 = Struct_4(Struct_3(vec3<bool>(false, true, true), _wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(ceil(-1069f))), ~firstLeadingBit(vec3<u32>(u_input.a, 1u, u_input.a)), var_2), _wgslsmith_f_op_f32(sign(var_2.b)), Struct_3(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.b) + var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -540f), false)), ~vec3<u32>(_wgslsmith_mod_u32(u_input.a, 85875u), _wgslsmith_add_u32(u_input.a, 27388u), func_2()), Struct_2(215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(sign(-1473f))))), var_2);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, ~u_input.a), 0u), 1u);
    let var_1 = func_1();
    global1 = (2147483647i >> (~var_0 % 32u)) >> (var_0 % 32u);
    global2 = array<vec4<bool>, 10>();
    var var_2 = 743f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1831f, global0.a, -383f, var_1.a.d.a), vec4<f32>(859f, -1744f, global0.a, global0.a), global2[_wgslsmith_index_u32(var_1.c.c.x, 10u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, global0.a, var_1.a.d.b, 727f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-497f, var_1.b, 394f, -624f), vec4<f32>(var_1.a.d.a, var_1.d.b, var_1.d.a, 1636f)))))));
}

