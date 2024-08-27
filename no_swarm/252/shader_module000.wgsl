struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(-542f, -17815i, vec4<i32>(-44256i, i32(-2147483648), 16049i, 15763i), 72301u), Struct_3(-1000f, 0i, vec4<i32>(2147483647i, i32(-2147483648), 18823i, 0i), 0u), Struct_3(501f, 21936i, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2147483647i), 14607u), Struct_3(1519f, -2766i, vec4<i32>(21699i, 2147483647i, 2147483647i, 35053i), 4294967295u), Struct_3(-610f, 2147483647i, vec4<i32>(-25644i, 11447i, 1i, 0i), 42744u), Struct_3(530f, 0i, vec4<i32>(2147483647i, 0i, i32(-2147483648), 1239i), 4294967295u), Struct_3(-305f, 19945i, vec4<i32>(1i, 0i, 2147483647i, 0i), 0u), Struct_3(-584f, 13158i, vec4<i32>(i32(-2147483648), -24509i, 0i, 72096i), 10655u), Struct_3(277f, 2147483647i, vec4<i32>(-34738i, -1i, 0i, 22988i), 66498u), Struct_3(774f, -1i, vec4<i32>(-98289i, -4688i, -723i, 109844i), 1183u), Struct_3(1518f, 16173i, vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648)), 4294967295u), Struct_3(-1251f, -1782i, vec4<i32>(i32(-2147483648), -17015i, 13385i, 39334i), 11920u), Struct_3(194f, -1i, vec4<i32>(-1i, 32153i, 0i, 7259i), 4294967295u), Struct_3(-2084f, 2147483647i, vec4<i32>(i32(-2147483648), 27329i, 2147483647i, 2147483647i), 6894u), Struct_3(-924f, 1i, vec4<i32>(i32(-2147483648), -7386i, i32(-2147483648), 0i), 1u), Struct_3(479f, 40602i, vec4<i32>(i32(-2147483648), -17879i, -13414i, 65176i), 0u), Struct_3(1040f, 1i, vec4<i32>(i32(-2147483648), -30704i, 1i, 0i), 96614u), Struct_3(-1000f, i32(-2147483648), vec4<i32>(-6041i, -6224i, -1i, 2147483647i), 208u));

var<private> global2: array<bool, 9> = array<bool, 9>(true, false, false, false, false, true, false, false, false);

var<private> global3: array<i32, 17> = array<i32, 17>(26370i, 19404i, 1i, -1i, -8336i, 2147483647i, 1i, 29075i, 9474i, -23743i, 2147483647i, -16621i, 1i, 1i, -18041i, -1i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-183f)), _wgslsmith_f_op_f32(f32(-1f) * -466f)))));
    global0 = array<Struct_2, 14>();
    global3 = array<i32, 17>();
    global3 = array<i32, 17>();
    var var_1 = global3[_wgslsmith_index_u32(51501u, 17u)];
    return Struct_5(countOneBits(~global3[_wgslsmith_index_u32(u_input.c.x, 17u)]), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))), u_input.d.wy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * 624f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f))));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    let var_0 = vec3<bool>(true, any(select(arg_0.zz, arg_0.xx, vec2<bool>(false, arg_0.x))), any(select(arg_0, select(!arg_0, vec3<bool>(true, global2[_wgslsmith_index_u32(5372u, 9u)], true), vec3<bool>(true, false, true)), !all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 9u)], false, true)))));
    var var_1 = _wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(~4294967295u, 17u)]);
    var_1 = ~global3[_wgslsmith_index_u32(~countOneBits(67443u), 17u)];
    global3 = array<i32, 17>();
    global2 = array<bool, 9>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(true, 1i < global3[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.d.x, 9u)]);
    var var_1 = func_1();
    var var_2 = !var_0.x;
    global1 = array<Struct_3, 18>();
    var var_3 = !vec3<bool>(true, select(-34115i, var_1.a, global2[_wgslsmith_index_u32(u_input.a, 9u)] & false) >= abs(_wgslsmith_mod_i32(0i, global3[_wgslsmith_index_u32(u_input.c.x, 17u)])), false);
    var_3 = select(!vec3<bool>(any(select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_1.b.c, false, var_3.x, global2[_wgslsmith_index_u32(8321u, 9u)]), global2[_wgslsmith_index_u32(0u, 9u)])), global2[_wgslsmith_index_u32(u_input.c.x, 9u)], all(var_0.zz)), select(!vec3<bool>(false, true, func_2(vec3<bool>(var_3.x, global2[_wgslsmith_index_u32(var_1.b.b.x, 9u)], false))), vec3<bool>(false, false, var_1.b.c), false), !vec3<bool>(true, any(vec4<bool>(true, true, false, false)), false));
    global3 = array<i32, 17>();
    let var_4 = global1[_wgslsmith_index_u32(0u, 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.a));
}

