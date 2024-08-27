struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-730f, 560f, -306f, -1809f, -526f, -502f, -210f, 959f, -699f, -700f, 1294f, 752f);

var<private> global1: array<Struct_2, 20>;

var<private> global2: Struct_1 = Struct_1(1u, -203f);

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec4<bool> {
    global0 = array<f32, 12>();
    global1 = array<Struct_2, 20>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -405f, 1000f))));
    global2 = Struct_1(1u >> (1u % 32u), _wgslsmith_f_op_f32(-608f + 1466f));
    let var_1 = false & (~(max(global2.a, global2.a) & abs(global2.a)) <= ~reverseBits(global2.a));
    return !vec4<bool>(!(all(vec3<bool>(var_1, var_1, var_1)) && all(vec2<bool>(false, true))), !all(!vec4<bool>(var_1, true, true, false)), any(vec3<bool>(true, true, true)), true);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global3 = array<Struct_2, 2>();
    var var_0 = arg_1.a.x != -2597f;
    global3 = array<Struct_2, 2>();
    var var_1 = arg_0.wyw;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(50121u, 18577u), 20u)];
    return 37368u;
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = -1537f;
    global3 = array<Struct_2, 2>();
    var var_1 = 2176f;
    global3 = array<Struct_2, 2>();
    let var_2 = ~(~(arg_0 | vec2<u32>(4294967295u >> (global2.a % 32u), abs(arg_0.x))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 12u)], global0[_wgslsmith_index_u32(var_2.x, 12u)], 574f)) * vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 12u)], global2.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1578f, -1000f, global0[_wgslsmith_index_u32(global2.a, 12u)]), vec3<f32>(1000f, 181f, global2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 583f, global2.b) * vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(2780u, 12u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-643f, global2.b, global0[_wgslsmith_index_u32(global2.a, 12u)])))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, -965f)), vec3<f32>(-625f, 1000f, _wgslsmith_f_op_f32(max(-1099f, global0[_wgslsmith_index_u32(var_2.x, 12u)]))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 259f, 184f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, global0[_wgslsmith_index_u32(4294967295u, 12u)], 501f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(global2.a, 0u), global2.a), 20u)];
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a, select(vec3<bool>(any(vec4<bool>(false, false, false, true)), global2.a >= global2.a, false), vec3<bool>(true, true, true), all(func_1())))));
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a, 12u)] + -205f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-525f * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -164f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
    var var_3 = vec4<u32>(1u, ~1u, global2.a, global2.a);
    let var_4 = _wgslsmith_div_vec2_u32((select(vec2<u32>(var_3.x, global2.a), vec2<u32>(global2.a, 55385u) >> (var_3.wx % vec2<u32>(32u)), vec2<bool>(true, true)) ^ vec2<u32>(_wgslsmith_add_u32(var_3.x, var_3.x), _wgslsmith_dot_vec2_u32(var_3.yw, vec2<u32>(var_3.x, 81137u)))) << ((var_3.yx | vec2<u32>(var_3.x, func_2(vec4<bool>(true, true, true, false), Struct_2(var_1.a), var_3.x))) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_div_u32(min(31473u, 20289u), var_3.x), 1u));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 484f) - -1132f);
    global1 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(global2.a, var_3.x) | (var_4 << (vec2<u32>(var_4.x, 1u) % vec2<u32>(32u))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(553f, -143f, -284f), vec3<f32>(-2437f, 1265f, global0[_wgslsmith_index_u32(var_4.x, 12u)])) + _wgslsmith_f_op_vec3_f32(func_3(var_3.zy))) - vec3<f32>(-1813f, _wgslsmith_f_op_f32(-var_2.x), var_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))));
}

