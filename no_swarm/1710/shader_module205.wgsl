struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: f32 = 1000f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = Struct_1(abs(vec3<i32>(~1i, arg_2.x, ~countOneBits(arg_2.x))), true, _wgslsmith_dot_vec2_i32(select(reverseBits(_wgslsmith_sub_vec2_i32(arg_0, arg_0)), max(~vec2<i32>(-2147483647i, u_input.a), -arg_2), all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))), countOneBits(arg_0)), ((_wgslsmith_add_i32(0i, -5322i) ^ u_input.a) < -28358i) || true);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 17u)], false, vec3<f32>(576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2267f, -1037f)) * -547f), _wgslsmith_f_op_f32(414f * _wgslsmith_f_op_f32(ceil(1315f)))));
    let var_2 = Struct_2(vec2<u32>(u_input.b.x, ~min(67953u, 4294967295u)), arg_1.x, Struct_1(vec3<i32>(~(~global0[_wgslsmith_index_u32(42244u, 17u)]), -abs(u_input.a), -(~(-29352i))), all(select(!vec4<bool>(var_0.b, arg_1.x, var_0.b, arg_1.x), vec4<bool>(false, true, var_1.b, false), select(vec4<bool>(arg_1.x, var_0.d, true, true), vec4<bool>(var_0.d, arg_1.x, false, false), vec4<bool>(arg_1.x, true, arg_1.x, true)))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_0.a.x, -1i, -1i) << (select(u_input.b, vec4<u32>(55165u, u_input.b.x, 0u, u_input.b.x), vec4<bool>(var_0.d, true, false, var_1.b)) % vec4<u32>(32u)), vec4<i32>(arg_2.x, ~(-28317i), reverseBits(-4901i), arg_0.x & arg_2.x)), var_1.b));
    let var_3 = arg_0;
    let var_4 = u_input.b.wzx;
    return -vec4<i32>(abs(arg_2.x), -_wgslsmith_clamp_i32(~(-2147483647i), abs(global0[_wgslsmith_index_u32(17341u, 17u)]), var_0.a.x), min(~(-23947i), -var_3.x) ^ arg_2.x, ~var_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> i32 {
    return ~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_0.c.a << (u_input.b.yxw % vec3<u32>(32u)), arg_0.c.a), _wgslsmith_dot_vec4_i32(func_3(min(vec2<i32>(10948i, global0[_wgslsmith_index_u32(arg_0.a.x, 17u)]), arg_0.c.a.yy), vec2<bool>(false, false), vec2<i32>(0i, -9144i)), vec4<i32>(_wgslsmith_add_i32(arg_0.c.a.x, -1i), -arg_0.c.c, reverseBits(-1i), i32(-1i) * -49859i)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x) * arg_1.c.x))) - _wgslsmith_f_op_f32(floor(arg_1.c.x)));
    let var_0 = (u_input.b.xz >> (~min(abs(vec2<u32>(4294967295u, u_input.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_2), vec2<u32>(5385u, arg_2))) % vec2<u32>(32u))) & u_input.b.zy;
    var var_1 = Struct_3(43040i, arg_1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.c + vec3<f32>(1f, 1110f, _wgslsmith_f_op_f32(round(426f)))), vec3<f32>(_wgslsmith_f_op_f32(min(-183f, _wgslsmith_div_f32(950f, arg_1.c.x))), _wgslsmith_div_f32(arg_1.c.x, -884f), _wgslsmith_div_f32(-2227f, _wgslsmith_div_f32(2033f, arg_1.c.x))), select(select(vec3<bool>(true, arg_1.b, true), vec3<bool>(false, arg_3.d, arg_3.d), vec3<bool>(false, false, true)), vec3<bool>(true, true, 18563i <= global0[_wgslsmith_index_u32(42122u, 17u)]), 404f < _wgslsmith_f_op_f32(-arg_1.c.x)))));
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    return Struct_2(vec2<u32>(_wgslsmith_add_u32(arg_2 ^ _wgslsmith_mult_u32(32133u, arg_0), var_0.x), _wgslsmith_div_u32(~(~30000u), _wgslsmith_mult_u32(arg_2, var_0.x))), all(vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(-(~arg_1.a), ~var_1.a, ~(-2147483647i)), false, select(-2147483647i | arg_3.c, ~_wgslsmith_div_i32(0i, u_input.a), any(vec2<bool>(false, arg_3.d)) || all(vec3<bool>(arg_3.d, arg_3.d, arg_3.d))), any(vec4<bool>(arg_1.b, false, true, arg_1.b)) || true));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = array<i32, 17>();
    let var_0 = func_4(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(~1u, ~54295u), 0u), Struct_3(~_wgslsmith_mult_i32(u_input.a, global0[_wgslsmith_index_u32(select(u_input.b.x, 4294967295u, true), 17u)]), u_input.a < 5112i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-486f)), -1476f, _wgslsmith_f_op_f32(arg_0 * 287f)))), 4294967295u, Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(~u_input.b.x, 17u)] & func_2(Struct_2(vec2<u32>(49457u, u_input.b.x), true, Struct_1(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], -1i), false, 25779i, false)), vec4<f32>(-152f, arg_0, -208f, 257f), true, 814f), _wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(8246u, 17u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 3755i, 23732i)))), select(true, false, true), _wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(u_input.b.x, 17u)], _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec2<i32>(39670i, -4255i)), global0[_wgslsmith_index_u32(~select(20883u, 32863u, true), 17u)]), true));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0));
    let var_2 = func_4(u_input.b.x, Struct_3(0i, false, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(971f, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(var_1 * 326f))))), max(_wgslsmith_clamp_u32(reverseBits(48178u | var_0.a.x), ~var_0.a.x, u_input.b.x), min(max(var_0.a.x, u_input.b.x), min(var_0.a.x, 12124u) & _wgslsmith_sub_u32(var_0.a.x, var_0.a.x))), var_0.c);
    var var_3 = 547f;
    return StorageBuffer(u_input.b.x, var_2.a.x, -var_2.c.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27633u | ~(~(~(~u_input.b.x)));
    var var_1 = 71207u;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.b.x);
    var var_3 = ~u_input.b;
    let x = u_input.a;
    s_output = func_1(-434f);
}

