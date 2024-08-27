struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(true, false, false), vec3<u32>(73533u, 54616u, 22608u), Struct_1(-884f)), Struct_2(vec3<bool>(false, true, false), vec3<u32>(103099u, 1u, 0u), Struct_1(1000f)), Struct_2(vec3<bool>(false, false, true), vec3<u32>(79175u, 1u, 1u), Struct_1(1544f)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(0u, 40981u, 0u), Struct_1(-572f)), Struct_2(vec3<bool>(false, false, true), vec3<u32>(1u, 9566u, 13761u), Struct_1(1316f)), Struct_2(vec3<bool>(true, true, true), vec3<u32>(0u, 47315u, 1u), Struct_1(-723f)));

var<private> global1: f32;

var<private> global2: Struct_4 = Struct_4(Struct_1(1017f), Struct_1(1753f), 424f, Struct_1(-696f), 34358u);

var<private> global3: array<u32, 8> = array<u32, 8>(44043u, 0u, 12044u, 1u, 0u, 10767u, 0u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> vec4<bool> {
    let var_0 = -u_input.c;
    global3 = array<u32, 8>();
    var var_1 = arg_1.x;
    global3 = array<u32, 8>();
    var var_2 = global2.b;
    return !vec4<bool>(arg_1.x, any(vec3<bool>(true, true, true)), arg_3 >= ((arg_3 << (18474u % 32u)) >> (reverseBits(41111u) % 32u)), arg_1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = 1137f;
    let var_1 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~(~global2.e), u_input.b.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~29589u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.e, 8u)], 8u)], 8u)], 79135u))), min(global3[_wgslsmith_index_u32(global2.e, 8u)] | global3[_wgslsmith_index_u32(1u, 8u)], 0u)), abs(~_wgslsmith_clamp_u32(0u, 44721u, u_input.b.x))), Struct_2(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_u32(~u_input.b, vec3<u32>(global3[_wgslsmith_index_u32(global2.e, 8u)], 13024u, u_input.b.x) << (vec3<u32>(0u, 27386u, global2.e) % vec3<u32>(32u))) & select(~vec3<u32>(u_input.b.x, 0u, global2.e), vec3<u32>(20370u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1956u, 8u)], 8u)]), true), global2.d));
    let var_2 = vec4<bool>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x, any(select(vec4<bool>(var_1.b.a.x && false, any(vec4<bool>(false, false, var_1.b.a.x, true)), all(var_1.b.a), true), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c, -331f, 751f, global2.c), vec4<f32>(422f, -111f, 914f, -758f)), !var_1.b.a.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c.a, var_1.b.c.a, -534f, global2.d.a) - vec4<f32>(var_1.b.c.a, 656f, -1416f, var_1.b.c.a)), _wgslsmith_div_u32(17911u, global3[_wgslsmith_index_u32(global2.e, 8u)])), select(select(vec4<bool>(var_1.b.a.x, false, true, false), vec4<bool>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), vec4<bool>(var_1.b.a.x, var_1.b.a.x, false, true)), !vec4<bool>(true, var_1.b.a.x, false, false), func_2(vec4<f32>(623f, var_1.b.c.a, -469f, -1181f), var_1.b.a.xz, vec4<f32>(global2.d.a, -580f, var_1.b.c.a, var_1.b.c.a), 4294967295u)))));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(358f, -963f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-410f, global2.a.a))));
    let var_4 = _wgslsmith_f_op_f32(round(var_1.b.c.a));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.c.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.b.c.a)), var_1.b.c.a)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(-233f + _wgslsmith_f_op_f32(f32(-1f) * -234f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2.a, global2.d, -1580f, func_1(), u_input.b.x);
    global0 = array<Struct_2, 6>();
    global3 = array<u32, 8>();
    let var_1 = Struct_3(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~1u ^ _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yz), 8u)], 8u)], global0[_wgslsmith_index_u32(var_0.e, 6u)]);
    global1 = global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1999f + var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1345f + global2.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, Struct_4(var_1.b.c, global2.d, -1435f, var_0.d, 24012u), global0[_wgslsmith_index_u32(u_input.b.x, 6u)])))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_4(Struct_1(-1000f), global2.b, -558f, Struct_1(var_1.b.c.a), 1u), global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_f_op_f32(exp2(global2.a.a)), _wgslsmith_f_op_f32(step(var_0.c, -313f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 796f, var_1.b.c.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-989f, var_1.b.c.a, -1269f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-658f + var_0.b.a) * 644f), 12057u, -2147483647i);
}

