struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<bool, 19>;

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = ~(~(~(0u >> (0u % 32u))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(201f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21306u, 22u)] * global0[_wgslsmith_index_u32(1754u, 22u)]), -323f))) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~19118u), 22u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(18268u, 22u)] + global0[_wgslsmith_index_u32(0u, 22u)]))))));
    global3 = array<bool, 19>();
    global0 = array<f32, 22>();
    let var_2 = vec3<i32>(-2147483647i, u_input.a, (2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-13103i, -2671i, arg_0.x, arg_0.x), select(vec4<i32>(arg_0.x, arg_0.x, u_input.a, -38633i), vec4<i32>(-2346i, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(global3[_wgslsmith_index_u32(25772u, 19u)], global3[_wgslsmith_index_u32(var_0, 19u)], true, global3[_wgslsmith_index_u32(4490u, 19u)])))) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 0u, var_0), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 111109u, 15748u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, var_0, 1u)))) % 32u));
    return ~firstLeadingBit(var_0) | ~(~var_0);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mod_u32(23790u, 1u) >> (func_3(_wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, 2147483647i, -44171i, -1i), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 19u)], true, global3[_wgslsmith_index_u32(64247u, 19u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(-11642i, u_input.a, -2147483647i, -2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, 1i)))) % 32u));
    global0 = array<f32, 22>();
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_1 = global2[_wgslsmith_index_u32(42874u, 21u)];
    return global2[_wgslsmith_index_u32(func_3(~var_1.e), 21u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec3<f32> {
    let var_0 = vec4<bool>(true, all(vec3<bool>(_wgslsmith_f_op_f32(trunc(arg_1.a.c.x)) <= 1000f, !all(arg_0.a.yz), false)), !all(arg_1.a.a.xx), func_2().a.x);
    let var_1 = 4294967295u;
    global3 = array<bool, 19>();
    let var_2 = Struct_3(func_2(), arg_1.b);
    global1 = array<Struct_3, 2>();
    return arg_1.a.c.zzw;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> vec3<u32> {
    global3 = array<bool, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(-1000f))), -1737f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f + global0[_wgslsmith_index_u32(25715u, 22u)]) - -806f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(), arg_1, true, countOneBits(arg_0.x)))))));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(5931u, arg_1.b.x, ~arg_1.b.x), ~arg_1.b << ((~arg_1.b ^ arg_1.b) % vec3<u32>(32u))), arg_0.x), 26u)];
    let var_2 = var_1.a;
    global4 = array<Struct_2, 26>();
    return _wgslsmith_mod_vec3_u32(arg_1.b, _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x), 0u, _wgslsmith_mod_u32(arg_0.x, ~1u)), select(firstTrailingBit(arg_1.b), arg_1.b, func_2().a)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 19>();
    global4 = array<Struct_2, 26>();
    let var_0 = -vec4<i32>(u_input.a, ~0i, -1i, ~(~(~17010i)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~firstLeadingBit(select(3501u, 4837u, global3[_wgslsmith_index_u32(0u, 19u)])), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 22u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f) - _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 22u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1398f + global0[_wgslsmith_index_u32(4294967295u, 22u)]) - _wgslsmith_f_op_f32(-409f * 1552f)), _wgslsmith_f_op_f32(325f - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 22u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -360f) - global0[_wgslsmith_index_u32(~select(1u, 1u, global3[_wgslsmith_index_u32(35105u, 19u)]), 22u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(~8360u, 1u), 22u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]), -106f)))));
    let var_2 = 243f;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, ~172027u, abs(52567u)), 26u)];
    global1 = array<Struct_3, 2>();
    let var_4 = !(!vec4<bool>(!var_3.a.a.x, var_3.a.a.x, true, global3[_wgslsmith_index_u32(1u, 19u)]));
    var var_5 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28268u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), func_1(vec2<u32>(46858u, 51256u), global1[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_sub_u32(abs(~20630u), abs(1u))), _wgslsmith_sub_u32(1u, 0u)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~4294967295u), min(vec2<u32>(55373u, 4294967295u), vec2<u32>(39214u, 0u)) & select(vec2<u32>(49158u, 53367u), vec2<u32>(4294967295u, 0u), vec2<bool>(false, true)))), firstLeadingBit(~(~vec3<u32>(70835u, 115601u, 5928u)) << (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(14501u, 0u, 0u)), select(vec3<u32>(11686u, 0u, 61704u), vec3<u32>(1u, 0u, 1u), false)) % vec3<u32>(32u))));
}

