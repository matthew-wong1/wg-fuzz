struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, vec4<bool>(false, true, true, false)), 0i);

var<private> global1: f32 = -1769f;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0i, vec4<bool>(false, true, false, false)), Struct_1(36791i, vec4<bool>(true, true, true, false)), Struct_1(4897i, vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec4<bool>(false, true, false, true)), Struct_1(0i, vec4<bool>(false, false, false, false)), Struct_1(-41756i, vec4<bool>(true, false, false, true)), Struct_1(-5104i, vec4<bool>(false, false, true, true)));

var<private> global3: array<bool, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -301f);
    var var_1 = vec2<bool>(all(select(vec4<bool>(global3[_wgslsmith_index_u32(min(u_input.e.x, u_input.a), 21u)], select(arg_0.b.x, global0.a.b.x, arg_0.b.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, u_input.a), 21u)], arg_0.b.x), global0.a.b, !arg_0.b)), false);
    var var_2 = Struct_2(global0.a, 5249i);
    var var_3 = vec3<bool>(false, any(!arg_0.b.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))) != _wgslsmith_f_op_f32(select(451f, var_0, true)));
    return var_0;
}

fn func_3() -> i32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1054f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1761f) + 1f))));
    var var_0 = vec3<f32>(-1198f, _wgslsmith_f_op_f32(-890f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-187f - _wgslsmith_div_f32(-705f, 734f))))), _wgslsmith_f_op_f32(round(1655f)));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_div_i32(u_input.b, global0.a.a), vec4<bool>(all(select(global0.a.b.ywx, global0.a.b.zyw, true)), true, !(global3[_wgslsmith_index_u32(u_input.e.x, 21u)] != global3[_wgslsmith_index_u32(34237u, 21u)]), any(!global0.a.b))), global0.b);
    let var_2 = global0.b;
    global1 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) + -714f)));
    return 1i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = Struct_2(global2[_wgslsmith_index_u32(reverseBits(u_input.a >> (firstLeadingBit(_wgslsmith_add_u32(u_input.e.x, u_input.e.x)) % 32u)), 7u)], func_3());
    var var_0 = ~_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a, 30511u, 40499u, 3042u))), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), vec4<u32>(0u, 59256u, 109537u, u_input.e.x))));
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(-(global0.a.a >> (_wgslsmith_mult_u32(var_0.x, 0u) % 32u)), vec4<bool>(arg_0.b.x, arg_0.b.x, global0.a.b.x, any(vec4<bool>(true, var_1.b.x, global0.a.b.x, false)))), -4776i);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -403f, -576f, 285f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(756f, -1956f, -1034f, 1000f) - vec4<f32>(1044f, 198f, 155f, -302f)))) * vec4<f32>(_wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) - 478f))), _wgslsmith_div_f32(1185f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(410f + -322f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    return _wgslsmith_sub_i32(global0.b, _wgslsmith_div_i32(-14505i, reverseBits(27021i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-753f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-745f)))))))));
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(42283u, 7u)]));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2350f);
    let var_2 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, u_input.b, -u_input.d)), global0.a.b), func_2(global0.a));
    let var_3 = var_2.a.b.x;
    var var_4 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 43377u)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(11496u, u_input.e.x, 1u)), ~vec3<u32>(u_input.e.x, u_input.e.x, 0u), ~vec3<u32>(44766u, u_input.e.x, u_input.e.x))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.e.x, 4294967295u), vec3<u32>(u_input.e.x, u_input.a, 4294967295u))), _wgslsmith_div_u32(~(~0u), ~10626u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mod_u32(~1u, var_4.x & 0u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~63604u, 0u), select(_wgslsmith_mod_u32(69392u, u_input.a), ~u_input.a, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1323f - _wgslsmith_f_op_f32(f32(-1f) * -589f)))), vec4<i32>(~(var_2.a.a & _wgslsmith_clamp_i32(u_input.c.x, -1i, global0.a.a)), 0i, global0.b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 0i, 0i, 1i), vec4<i32>(global0.a.a, var_2.b, var_2.a.a, u_input.b)), countOneBits(vec4<i32>(u_input.b, global0.b, u_input.b, -1i)))), _wgslsmith_sub_vec4_i32(~countOneBits(abs(vec4<i32>(u_input.c.x, u_input.b, var_2.b, var_2.b))), vec4<i32>(11808i, 1i, -(global0.a.a | u_input.b), var_2.b)));
}

