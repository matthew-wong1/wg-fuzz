struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(48077u, 0u, 61755u), vec3<u32>(91492u, 20434u, 23069u));

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(1784f);

var<private> global3: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(309f, 100f, -1060f), vec3<f32>(999f, -833f, -292f), vec3<f32>(-166f, -1053f, -398f), vec3<f32>(-1116f, -356f, -574f), vec3<f32>(728f, 1501f, 171f), vec3<f32>(-1307f, -1986f, -758f), vec3<f32>(-536f, 161f, 1078f), vec3<f32>(-994f, -895f, 147f), vec3<f32>(1540f, 415f, -1951f), vec3<f32>(915f, 1835f, -1000f), vec3<f32>(-769f, 937f, -1356f), vec3<f32>(-498f, -1314f, 190f), vec3<f32>(-145f, -469f, -588f), vec3<f32>(-778f, 982f, 127f), vec3<f32>(-399f, -137f, -1732f), vec3<f32>(-457f, 218f, 1290f), vec3<f32>(972f, 389f, 1000f), vec3<f32>(-295f, 1379f, -934f), vec3<f32>(1265f, -364f, -642f), vec3<f32>(-1704f, 202f, -1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(~u_input.b.zz, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * global2.a)))), u_input.b.yz, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(global2.a))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.a, -1347f))))));
    global0 = array<vec3<u32>, 2>();
    var var_1 = Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f * 125f)), 1f))), var_0.a, Struct_1(_wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(-1064f - -459f))));
    let var_2 = Struct_3(vec3<bool>(any(!vec4<bool>(global1.x, global1.x, false, true)), true, select(true, !global1.x, select(true, true, global1.x)) | !(!global1.x)), var_1.d.a);
    let var_3 = !global1.ww;
    return ~(_wgslsmith_mult_u32(~(~var_0.a.x), ~var_0.a.x ^ ~14424u) >> (select(~abs(u_input.b.x), countOneBits(var_1.a.x), true) % 32u));
}

fn func_3() -> bool {
    var var_0 = Struct_2(~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), min(~0u, ~u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 211f))))), u_input.b.xy, Struct_1(292f));
    var var_1 = !select(global1.xz, vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(global1.x, true)), select(u_input.b.x > u_input.b.x, select(true, global1.x, true), true)));
    let var_2 = Struct_2(max((~vec2<u32>(var_0.a.x, 1u) | ~u_input.b.xx) << (abs(u_input.b.zx ^ vec2<u32>(var_0.c.x, 61595u)) % vec2<u32>(32u)), vec2<u32>(select(u_input.b.x, var_0.a.x, true) | ~98308u, 4294967295u)), var_0.b, u_input.b.zz, Struct_1(_wgslsmith_f_op_f32(-var_0.d.a)));
    global2 = Struct_1(global2.a);
    return !all(vec2<bool>(all(select(global1.zxx, vec3<bool>(false, true, global1.x), global1.wyw)), all(!vec4<bool>(global1.x, true, global1.x, global1.x))));
}

fn func_1() -> StorageBuffer {
    global0 = array<vec3<u32>, 2>();
    var var_0 = Struct_3(select(vec3<bool>(global1.x, all(select(vec2<bool>(global1.x, global1.x), global1.xw, true)), any(vec4<bool>(global1.x, true, global1.x, true))), !vec3<bool>(global1.x, global1.x, true), !global1.xww), _wgslsmith_f_op_f32(-1318f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, global2.a)) - 1187f)));
    let var_1 = vec4<bool>(true, !any(!global1.yy) & false, select(~u_input.b.x != func_2(), global1.x, var_0.a.x), func_3());
    var var_2 = Struct_2(vec2<u32>(abs(19093u), 0u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, -1000f))))), ~abs(~vec2<u32>(u_input.b.x, 32928u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(floor(1591f)))));
    global3 = array<vec3<f32>, 20>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(), u_input.b.x), 20u)] + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1043f, global2.a, _wgslsmith_f_op_f32(step(-1422f, 500f)))))), vec4<u32>(_wgslsmith_add_u32(u_input.b.x, abs(countOneBits(u_input.b.x))), ~24265u, select(4294967295u, ~min(4402u, 15593u), true), abs(_wgslsmith_add_u32(u_input.b.x, ~u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

