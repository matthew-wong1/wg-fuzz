struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: array<i32, 17> = array<i32, 17>(2147483647i, 2147483647i, -1i, 26444i, 2147483647i, 10560i, 56018i, 2147483647i, 0i, -1i, i32(-2147483648), 1i, 58218i, 2428i, 1i, 3873i, -14772i);

var<private> global2: Struct_3;

var<private> global3: array<vec3<i32>, 28>;

var<private> global4: array<Struct_3, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a), ~vec3<u32>(u_input.b, u_input.c, 4294967295u)), 14577u)), 22786u);
    var var_1 = ~var_0 << (_wgslsmith_clamp_u32(u_input.b, var_0, u_input.b << (var_0 % 32u)) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2335f, -277f)))));
}

fn func_3() -> bool {
    return !any(select(select(vec2<bool>(global2.a.x, true), !vec2<bool>(global2.e.b.x, true), global2.a), !vec2<bool>(global2.e.b.x, false), global2.c.yx));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))));
    let var_1 = Struct_4(arg_3);
    var var_2 = !select(select(vec4<bool>(all(vec4<bool>(true, var_1.a.a.x, global2.e.b.x, arg_3.b)), true, true, true == arg_0.x), vec4<bool>(any(var_1.a.c), global2.c.x, any(vec3<bool>(arg_0.x, true, var_1.a.c.x)), true), func_3()), select(vec4<bool>(any(arg_3.e.b), any(vec3<bool>(false, global2.b, true)), select(arg_3.e.b.x, arg_0.x, var_1.a.e.b.x), false), !arg_3.c, !var_1.a.c), !(!select(arg_3.c, var_1.a.c, false)));
    var var_3 = firstTrailingBit(~(~46198u));
    var_3 = u_input.c;
    return -39794i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global2.a, all(!select(vec3<bool>(true, global2.b, global2.e.b.x), select(vec3<bool>(false, global2.a.x, global2.b), vec3<bool>(true, global2.b, global2.e.b.x), global2.c.wyy), false)), global2.c, func_1(global2.c.wz, vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-127f, 462f))), _wgslsmith_f_op_f32(f32(-1f) * -912f), -1410f), global3[_wgslsmith_index_u32(0u, 28u)], global4[_wgslsmith_index_u32(3708u, 12u)]), Struct_2(global2.e.a, vec3<bool>(false, true, true)));
    global0 = Struct_1(global1[_wgslsmith_index_u32(u_input.b << (max(~(~u_input.a), _wgslsmith_div_u32(u_input.c, 95545u)) % 32u), 17u)]);
    global1 = array<i32, 17>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 698f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f)));
    global4 = array<Struct_3, 12>();
    var var_2 = Struct_3(global2.a, false, select(global2.c, var_0.c, global2.e.b.x || true), -global0.a, var_0.e);
    let var_3 = 1693f;
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, var_3))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) + _wgslsmith_f_op_f32(f32(-1f) * -1250f)))), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4, var_4), vec2<u32>(u_input.c, var_4)), ~u_input.c) | (vec2<u32>(0u, 29711u) << (vec2<u32>(60668u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(sign(1355f)));
}

