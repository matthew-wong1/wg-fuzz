struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: f32 = -882f;

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    global0 = array<vec3<bool>, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(ceil(-365f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -857f))))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_0.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), 0u), arg_0 | ~(arg_0 ^ u_input.c)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -698f))))), var_0.b);
    global0 = array<vec3<bool>, 11>();
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    return vec4<bool>(!select(true, true, true) || (abs(u_input.a.x) == 2147483647i), any(select(global0[_wgslsmith_index_u32(29023u & arg_0.b.x, 11u)], select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(arg_1, 11u)], global0[_wgslsmith_index_u32(7129u, 11u)])), true)), (select(any(vec3<bool>(false, true, false)), select(false, false, true), true) == !(arg_1 <= arg_1)) && !(_wgslsmith_add_i32(7908i, -1i) > u_input.a.x), (_wgslsmith_add_u32(_wgslsmith_div_u32(15038u, 80128u), ~u_input.b.x) << (16023u % 32u)) < ~(firstTrailingBit(arg_0.b.x) & arg_1));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global2 = arg_0.b.x;
    global2 = 19781u;
    var var_0 = Struct_1(-1000f, firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c.x, arg_0.b.x | 0u, 1u)));
    let var_1 = Struct_1(arg_0.a, ~(~vec4<u32>(var_0.b.x, u_input.c.x, 1u, 49945u << (u_input.b.x % 32u))));
    var var_2 = -725f;
    return func_4(var_1, ~(~(51252u ^ func_3(vec4<u32>(u_input.b.x, arg_0.b.x, arg_0.b.x, 4294967295u), u_input.a, var_0.a))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = reverseBits(vec2<i32>(u_input.a.x, 1i));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    global2 = _wgslsmith_dot_vec4_u32(~countOneBits(u_input.c), vec4<u32>(u_input.c.x, 29074u, u_input.c.x, u_input.d));
    var var_0 = ~u_input.c.x;
    return func_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(74064u, ~u_input.d), 11u)], Struct_1(-291f, vec4<u32>(~1u, ~(~4294967295u), u_input.b.x, ~(~u_input.c.x))), select(select(arg_3, select(arg_3, vec4<bool>(false, false, arg_0, arg_0), arg_3.x), arg_0), !arg_3, func_2(Struct_1(_wgslsmith_f_op_f32(-arg_1), u_input.c >> (u_input.c % vec4<u32>(32u))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global2 = func_3(_wgslsmith_mod_vec4_u32(max(vec4<u32>(~arg_1.b.x, ~42012u, _wgslsmith_mult_u32(arg_0.b.x, 4294967295u), u_input.d), arg_1.b), vec4<u32>(~1u, u_input.b.x, _wgslsmith_add_u32(u_input.c.x, arg_0.b.x), ~59910u)), select(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(12930i, u_input.a.x)), 41712i, u_input.a.x)), u_input.a, !all(vec4<bool>(false, true, true, true))), 848f);
    var var_0 = true;
    var var_1 = Struct_1(-1131f, vec4<u32>(abs(_wgslsmith_add_u32(arg_0.b.x, 4294967295u) | arg_1.b.x), func_5(func_2(Struct_1(arg_1.a, vec4<u32>(17923u, arg_1.b.x, 116577u, arg_1.b.x))).wxy, Struct_1(1422f, vec4<u32>(u_input.c.x, arg_1.b.x, arg_0.b.x, u_input.c.x)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))).b.x, ~18207u, func_5(select(func_4(Struct_1(arg_1.a, vec4<u32>(arg_1.b.x, arg_0.b.x, 0u, arg_1.b.x)), arg_0.b.x).xyy, func_4(arg_0, 0u).zxx, global0[_wgslsmith_index_u32(abs(arg_0.b.x), 11u)]), func_1(true, 1185f, max(-16792i, 3810i), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))).b.x));
    var var_2 = arg_1.a;
    var var_3 = firstLeadingBit(u_input.a);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~19745u;
    var var_0 = Struct_1(-326f, vec4<u32>(_wgslsmith_mod_u32(~(~0u), reverseBits(~u_input.c.x)), ~_wgslsmith_sub_u32(~0u, u_input.d), func_6(Struct_1(-1836f, u_input.c), func_1(false, 1451f, 0i, vec4<bool>(false, true, true, false))) & _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 62721u), 0u), u_input.d));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0.a * -1000f), -1293f, 140f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(1631f, _wgslsmith_f_op_f32(max(908f, _wgslsmith_f_op_f32(-var_1.x))), false)), vec4<u32>(func_3(~(vec4<u32>(var_0.b.x, 1u, u_input.d, u_input.d) & var_0.b), vec3<i32>(u_input.a.x, reverseBits(u_input.a.x), firstLeadingBit(u_input.a.x)), -1000f), _wgslsmith_mod_u32(19249u, 1u >> (_wgslsmith_div_u32(4294967295u, u_input.b.x) % 32u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_3(vec4<u32>(2190u, var_0.b.x, var_0.b.x, var_0.b.x), u_input.a, var_0.a), 3765u), 4294967295u), ~func_3(u_input.c, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a, 1046f)));
    global2 = _wgslsmith_div_u32(~(~(firstLeadingBit(var_0.b.x) ^ var_0.b.x)), ~firstTrailingBit(~(~var_2.b.x)));
    global2 = var_0.b.x;
    var var_3 = max(vec4<i32>(-10301i | u_input.a.x, u_input.a.x, ~u_input.a.x, 36596i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, ~11662i));
    global2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f), 593f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec2_f32(var_1.xx * var_1.zz)), 2055f, _wgslsmith_f_op_f32(-var_2.a));
}

