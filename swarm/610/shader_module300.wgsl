struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(Struct_1(12414u, vec2<f32>(184f, 1709f), vec2<bool>(false, false)), vec4<bool>(false, true, true, true));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(3979u, vec2<f32>(-1000f, 1052f), vec2<bool>(true, true)), Struct_1(57095u, vec2<f32>(-1000f, -2088f), vec2<bool>(false, false)), Struct_1(0u, vec2<f32>(516f, 2189f), vec2<bool>(false, false)), Struct_1(70212u, vec2<f32>(-1156f, 1477f), vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(173f, -1280f), vec2<bool>(true, false)), Struct_1(105303u, vec2<f32>(1762f, 537f), vec2<bool>(false, false)), Struct_1(1u, vec2<f32>(-466f, -1999f), vec2<bool>(false, true)), Struct_1(1u, vec2<f32>(-1488f, -464f), vec2<bool>(false, true)), Struct_1(4294967295u, vec2<f32>(-1201f, 280f), vec2<bool>(true, false)), Struct_1(4294967295u, vec2<f32>(1634f, 1583f), vec2<bool>(false, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    var var_0 = vec3<i32>(-u_input.b.x, -select(u_input.e.x, ~max(u_input.d.x, -2147483647i), !global0.c.x), 1i);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(207f, -242f)), _wgslsmith_f_op_f32(-global2.a.b.x))), global0.b.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.a.b))))), _wgslsmith_f_op_vec2_f32(-global3.b)));
}

fn func_2() -> Struct_1 {
    let var_0 = global2.a;
    var var_1 = Struct_1(_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.a)))), !select(global3.c, vec2<bool>(true, true), select(global2.a.c, global3.c, !var_0.c)));
    let var_2 = ~1865u;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1115f, global0.b.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_0.b.x))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b.x, 1695f) * vec2<f32>(1179f, 1136f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global2.a.b.x, var_1.b.x), var_0.b.x) + global0.b)), vec2<bool>(abs(global0.a) >= ~(1u << (1u % 32u)), any(global2.b.wyz)));
    global4 = array<Struct_1, 10>();
    return var_3;
}

fn func_1() -> StorageBuffer {
    var var_0 = global0.b.x;
    let var_1 = Struct_1(6569u, _wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(516f, 1418f))) * _wgslsmith_f_op_vec2_f32(global3.b + global2.a.b)) + _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(abs(global2.a.b))))), !(!global0.c));
    var_0 = _wgslsmith_f_op_f32(trunc(638f));
    global2 = Struct_2(global4[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(~global0.a, ~16880u)), 10u)], select(!vec4<bool>(all(global2.b), true, !global2.b.x, true), select(select(global2.b, global2.b, vec4<bool>(true, var_1.c.x, global2.a.c.x, global3.c.x)), !global2.b, all(global2.b)), (-1644f == global0.b.x) || !var_1.c.x));
    var var_2 = Struct_2(func_2(), vec4<bool>(!(!global3.c.x) & global3.c.x, false, _wgslsmith_f_op_f32(ceil(func_2().b.x)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1961f)))), all(!var_1.c) || all(!vec3<bool>(true, var_1.c.x, true))));
    return StorageBuffer(var_1.b.x, u_input.e.zx, ~4294967295u, ~vec3<u32>(~var_1.a, ~_wgslsmith_add_u32(41128u, u_input.c), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), vec2<u32>(global2.a.a, var_1.a) ^ vec2<u32>(global0.a, var_2.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4[_wgslsmith_index_u32(10053u, 10u)];
    var var_0 = global2.a.b.x;
    var var_1 = global2.a;
    var_1 = Struct_1(~(~(~(~global2.a.a))), var_1.b, vec2<bool>(false, false));
    var var_2 = _wgslsmith_div_u32((4294967295u | global3.a) | global2.a.a, _wgslsmith_clamp_u32(global0.a, 0u, select(firstTrailingBit(0u), u_input.c, true)));
    let x = u_input.a;
    s_output = func_1();
}

