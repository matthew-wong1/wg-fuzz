struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
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

var<private> global0: array<bool, 5>;

var<private> global1: array<vec2<u32>, 21>;

var<private> global2: Struct_1 = Struct_1(203f, vec4<i32>(-1i, -14845i, i32(-2147483648), 55767i), false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global1 = array<vec2<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1307f), global2.b, false);
    global2 = arg_3;
    let var_1 = 0u;
    let var_2 = -_wgslsmith_mult_i32(max(_wgslsmith_mult_i32(0i, 1i), u_input.c.x), -64284i);
    return _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(0u), u_input.a), u_input.a, 1u, _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(2762u, u_input.a, 19935u), vec3<u32>(45472u, var_1, 1188u)), _wgslsmith_sub_u32(1u, 0u))), max(~min(select(vec4<u32>(var_1, 18569u, 1u, 5709u), vec4<u32>(0u, var_1, 1u, var_1), arg_3.c), abs(vec4<u32>(0u, 23696u, u_input.d, var_1))), vec4<u32>(~(var_1 | var_1), _wgslsmith_mult_u32(u_input.a, ~var_1), _wgslsmith_clamp_u32(select(0u, 37301u, false), ~u_input.d, 0u), ~(~u_input.d))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = true;
    return Struct_1(arg_1, reverseBits(vec4<i32>(global2.b.x, global2.b.x, _wgslsmith_dot_vec4_i32(global2.b, global2.b), u_input.b.x)) << (countOneBits(func_3(arg_1, _wgslsmith_f_op_f32(-arg_1), Struct_1(284f, global2.b, false), Struct_1(arg_1, global2.b, global2.c))) % vec4<u32>(32u)), (var_0 && all(vec2<bool>(global0[_wgslsmith_index_u32(14980u, 5u)], arg_0.x))) && any(!arg_0.yz));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = false;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2482f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * 168f) + 1f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-772f, -326f))))));
    var var_2 = -arg_1.b.x;
    global0 = array<bool, 5>();
    let var_3 = ~(-max(vec3<i32>(firstLeadingBit(arg_0.b.x), ~global2.b.x, arg_3.b.x), vec3<i32>(arg_3.b.x, arg_1.b.x ^ -16272i, _wgslsmith_mod_i32(1i, -1i))));
    return reverseBits(1i);
}

fn func_1(arg_0: u32) -> vec2<bool> {
    global0 = array<bool, 5>();
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(func_4(func_2(vec3<bool>(true, global2.c, global0[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_f32(trunc(489f)), 10092u), Struct_1(_wgslsmith_f_op_f32(-global2.a), global2.b, true), Struct_1(global2.a, global2.b, global0[_wgslsmith_index_u32(reverseBits(arg_0), 5u)]), func_2(vec3<bool>(global0[_wgslsmith_index_u32(91075u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global2.c), _wgslsmith_f_op_f32(global2.a + -632f), _wgslsmith_mult_u32(4405u, arg_0))), i32(-1i) * -15190i), min(-reverseBits(0i), func_2(select(vec3<bool>(false, false, global2.c), !vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, global2.c), func_2(vec3<bool>(true, true, true), -741f, 0u).c), global2.a, firstTrailingBit(arg_0 ^ 10732u)).b.x));
    var var_1 = func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2207f, global2.a))), u_input.d | 0u);
    var var_2 = vec2<bool>(!all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(0u, 5u)]);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-182f)));
    return vec2<bool>(true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(select(u_input.d, u_input.a, true), u_input.a), u_input.d), global1[_wgslsmith_index_u32(~1u, 21u)], global1[_wgslsmith_index_u32(reverseBits(4294967295u), 21u)]);
    var var_1 = func_1(~1u);
    global1 = array<vec2<u32>, 21>();
    let var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), global2.b.xx);
    var var_3 = func_2(select(select(select(select(vec3<bool>(true, global2.c, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<bool>(var_1.x, true, global2.c)), select(vec3<bool>(global2.c, false, var_1.x), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 5u)], var_1.x), vec3<bool>(global2.c, var_1.x, true)), vec3<bool>(var_1.x, global2.c, global0[_wgslsmith_index_u32(0u, 5u)])), select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], true, var_1.x), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], true), true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 5u)], global2.c, global2.c), vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, var_1.x)), true), select(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 5u)], true), !vec3<bool>(global2.c, true, true), any(vec2<bool>(global2.c, global0[_wgslsmith_index_u32(u_input.a, 5u)]))), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 5u)], false, global2.c)), global2.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 5u)]), 742f, ~_wgslsmith_sub_u32(var_0.x, abs(abs(25577u))));
    let var_4 = func_2(select(vec3<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(30203u), 5u)], !func_1(var_0.x).x, _wgslsmith_f_op_f32(-var_3.a) != var_3.a), vec3<bool>(global2.c, select(global2.c, var_3.c, global0[_wgslsmith_index_u32(82455u, 5u)]) || select(true, var_1.x, var_3.c), func_2(!vec3<bool>(var_1.x, global2.c, var_1.x), var_3.a, ~u_input.d).c), !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, var_0.x, u_input.d), 5u)]), func_2(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 5u)], var_3.c, false), !vec3<bool>(global2.c, var_3.c, global0[_wgslsmith_index_u32(u_input.a, 5u)]), true | global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_f_op_f32(-var_3.a), ~0u).a, 48283u);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.a))), global2.b, true);
    var var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, _wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * var_4.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f - var_5.a) - -1000f) + _wgslsmith_f_op_f32(ceil(-1000f)))));
    global2 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

