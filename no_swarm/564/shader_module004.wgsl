struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(19865u, 4294967295u, 1u, 42724u, 42624u, 49778u, 0u, 4294967295u, 46483u, 19878u, 44477u, 4294967295u, 0u, 6160u, 12102u, 15034u, 0u, 4340u);

var<private> global1: array<vec3<u32>, 32>;

var<private> global2: vec2<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    let var_0 = -(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 39262i, 2147483647i, -17572i), vec4<i32>(2147483647i, -2147483647i, -1i, -2147483647i)), 4037i) >> (abs(u_input.a.xy) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~(1u >> (1u % 32u)), 18u)], ~19423u);
    global1 = array<vec3<u32>, 32>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1653f, 765f, -385f))) - vec3<f32>(163f, -416f, -1078f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(746f, 139f, -1010f) + vec3<f32>(453f, 499f, 289f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(887f, -477f, -2907f) - vec3<f32>(382f, 1296f, -377f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(379f, -559f, -663f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2655f, 2278f, var_2.x, -547f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 654f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, -716f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(var_2.x + -665f), _wgslsmith_f_op_f32(ceil(1717f)), -1541f)))));
    return select(!(!vec2<bool>(25730i <= var_0.x, global2.x)), vec2<bool>(true, true), !vec2<bool>(global2.x, true));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = select(!func_3(), !(!select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x), false), !vec2<bool>(false, global2.x), true)), !(_wgslsmith_add_u32(u_input.a.x << (0u % 32u), 81776u & u_input.a.x) != _wgslsmith_add_u32(_wgslsmith_mult_u32(11784u, global0[_wgslsmith_index_u32(58989u, 18u)]), 1u)));
    global0 = array<u32, 18>();
    var var_0 = any(func_3());
    var var_1 = !vec2<bool>(!any(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, true))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, true, true)), !vec4<bool>(global2.x, true, global2.x, false))));
    var_1 = select(!(!(!func_3())), select(!vec2<bool>(all(vec2<bool>(true, global2.x)), all(vec4<bool>(true, true, var_1.x, global2.x))), vec2<bool>(!all(vec3<bool>(false, global2.x, true)), func_3().x), ~(~85647u) > arg_0), select(func_3(), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, global2.x), vec2<bool>(var_1.x, false))), false), all(vec4<bool>(true, true, true, !global2.x))));
    return Struct_1(false, _wgslsmith_f_op_f32(floor(1542f)), u_input.a, countOneBits(select(1u, arg_0, var_1.x)), !vec3<bool>(true, global2.x, var_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> vec3<f32> {
    let var_0 = Struct_2(func_2(select(37101u, 1u, false)), firstLeadingBit(~abs(~vec4<i32>(arg_2.x, -1i, arg_2.x, -3589i))), Struct_1(!global2.x, 479f, ~firstTrailingBit(arg_0.c), abs(firstLeadingBit(arg_0.c.x << (21653u % 32u))), arg_0.e));
    global1 = array<vec3<u32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(-652f + _wgslsmith_f_op_f32(select(-1350f, _wgslsmith_f_op_f32(max(func_2(_wgslsmith_mod_u32(arg_0.c.x, 81505u)).b, _wgslsmith_f_op_f32(-arg_0.b))), arg_3)));
    global1 = array<vec3<u32>, 32>();
    global2 = var_0.c.e.zz;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, -1000f, 1000f) - vec3<f32>(-947f, arg_0.b, var_0.c.b)))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_0.c.b, -292f), _wgslsmith_f_op_f32(select(var_1, var_0.a.b, arg_3)), _wgslsmith_f_op_f32(-arg_0.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(129f)))))), firstLeadingBit(u_input.a), 67470u, !(!vec3<bool>(true, true, all(vec4<bool>(global2.x, global2.x, true, global2.x)))));
    let var_2 = -243f;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b, 451f, var_2))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-728f, -572f, 1000f) * vec3<f32>(357f, var_2, 1000f)) * vec3<f32>(var_2, var_1.b, -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-349f, var_2, -1231f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(var_1.a, 1000f, vec4<u32>(50301u, global0[_wgslsmith_index_u32(var_1.c.x, 18u)], u_input.a.x, 0u), 1u, var_1.e), -10006i, vec3<i32>(5654i, 2147483647i, -16531i), true)))))));
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(_wgslsmith_mod_u32(43369u, 4294967295u & var_1.d), firstTrailingBit(firstLeadingBit(var_1.c.x)), select(false, global2.x, false))));
}

