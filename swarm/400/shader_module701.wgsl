struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1963i;

var<private> global1: array<Struct_1, 10>;

var<private> global2: Struct_2 = Struct_2(1067f, Struct_1(vec4<f32>(-2231f, 246f, 701f, 144f), vec4<u32>(1u, 4294967295u, 4294967295u, 7979u), vec3<u32>(47350u, 63149u, 62191u), true));

var<private> global3: i32 = 51779i;

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.b.a), ~(~(_wgslsmith_mod_vec4_u32(global2.b.b, global2.b.b) >> (firstLeadingBit(global2.b.b) % vec4<u32>(32u)))), min(max(~(global2.b.b.wxz & global2.b.c), _wgslsmith_div_vec3_u32(vec3<u32>(37685u, 0u, u_input.a), global2.b.c & global2.b.b.yww)), vec3<u32>(1u, ~1u, countOneBits(_wgslsmith_mult_u32(u_input.a, 4294967295u)))), global2.b.d);
    var var_1 = 1i;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.b.x, var_0.c.x, _wgslsmith_mod_u32(~(~49420u), 1u), var_0.c.x), _wgslsmith_sub_vec4_u32(var_0.b, var_0.b)), 16u)];
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global2.b.a.x, var_0.d & false)) - _wgslsmith_f_op_f32(-292f + -355f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * var_0.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x * global2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -937f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(322f)))))), _wgslsmith_add_vec4_u32(~global2.b.b, vec4<u32>(reverseBits(0u), firstLeadingBit(1u), var_2.c.x, var_0.c.x)), (vec3<u32>(~global2.b.b.x, var_2.c.x, u_input.a) << (var_0.b.zwx % vec3<u32>(32u))) >> (reverseBits(~firstTrailingBit(vec3<u32>(u_input.a, 1u, 2044u))) % vec3<u32>(32u)), !global2.b.d);
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, max(min(countOneBits(4294967295u), 55917u & var_3.c.x), var_2.c.x)), 0u), 16u)];
    return ~vec2<i32>(-21326i, -_wgslsmith_div_i32(-1i, -2147483647i)) << (var_2.b.xy % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = global2.b.a.x;
    var var_1 = -func_3();
    let var_2 = any(vec2<bool>(all(!vec2<bool>(false, global2.b.d)), global2.b.d));
    let var_3 = global4[_wgslsmith_index_u32(4294967295u, 16u)];
    global2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_3.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(abs(-737f)))), any(!vec4<bool>(var_3.d, true, false, global2.b.d)))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_3.a, vec4<f32>(-1415f, global2.a, 979f, -1315f))))), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 0u), ~u_input.a), ~(24169u | global2.b.c.x), abs(global2.b.b.x | 81875u), u_input.a), _wgslsmith_div_vec3_u32(global2.b.c, ~vec3<u32>(1611u, var_3.b.x, global2.b.c.x)), true));
    return Struct_2(-857f, global2.b);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = vec3<u32>(global2.b.b.x, 30974u, 0u);
    global2 = func_2();
    global4 = array<Struct_1, 16>();
    let var_1 = -1606f;
    global2 = Struct_2(_wgslsmith_f_op_f32(-924f - var_1), func_2().b);
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1f, -2041f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-global2.a), func_1(true, !(true && global2.b.d)));
    global2 = Struct_2(global2.a, Struct_1(vec4<f32>(global2.a, 337f, 613f, _wgslsmith_f_op_f32(-1074f * _wgslsmith_f_op_f32(-global2.b.a.x))), min(vec4<u32>(~var_1.b.b.x, global2.b.c.x, var_1.b.c.x, min(u_input.a, u_input.a)), var_1.b.b | (vec4<u32>(var_1.b.c.x, 4294967295u, global2.b.b.x, 4294967295u) >> (vec4<u32>(global2.b.c.x, global2.b.b.x, u_input.a, u_input.a) % vec4<u32>(32u)))), firstTrailingBit(vec3<u32>(var_1.b.b.x, 0u, ~117781u)), true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(923f * global2.b.a.x), _wgslsmith_f_op_f32(global2.b.a.x * 1229f))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-849f)), _wgslsmith_f_op_f32(ceil(-450f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.x))))) - var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~23632u, vec3<f32>(-873f, func_1(func_1(true, !var_1.b.d).d, any(vec3<bool>(false, var_1.b.d, global2.b.d)) || true).a.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1108f, var_1.a)))));
}

