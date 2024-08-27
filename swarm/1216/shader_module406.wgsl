struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(49606i, 33791i), vec2<i32>(35407i, 5976i), vec2<i32>(0i, 2147483647i), vec2<i32>(18855i, -22693i), vec2<i32>(i32(-2147483648), 20873i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = u_input.b.x;
    var_0 = -65230i;
    let var_1 = select(select(vec2<bool>(arg_0.d, false), select(!select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, true), vec2<bool>(false, arg_2.d)), !vec2<bool>(arg_2.d, arg_2.d), !select(vec2<bool>(true, arg_2.d), vec2<bool>(arg_0.d, false), vec2<bool>(false, arg_0.d))), select(arg_2.d, any(select(vec2<bool>(false, arg_0.d), vec2<bool>(arg_2.d, false), false)), true)), vec2<bool>(true, !(!(arg_3.a.x >= 18056u))), false);
    var var_2 = arg_2;
    return _wgslsmith_dot_vec3_u32(u_input.a | ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10859u, arg_2.b.x, 13870u), u_input.a), 24193u, ~48564u), arg_3.a.zwy);
}

fn func_2() -> f32 {
    var var_0 = true | any(vec2<bool>(any(vec4<bool>(true, false, true, false)), true));
    global0 = array<vec4<i32>, 11>();
    var var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 38227u, 106123u, 37557u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 71044u, u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.a.x, 1u, 1u)))) << ((abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.d, 0u, 1u, 25465u))) | vec4<u32>(func_3(Struct_1(-697f, vec2<u32>(u_input.d, u_input.a.x), -941f, true, -1157f), 15192i, Struct_1(-390f, u_input.a.zx, 1000f, true, -733f), Struct_2(vec4<u32>(73503u, 4294967295u, u_input.d, u_input.a.x), -8296i)), u_input.d, _wgslsmith_div_u32(66761u, 14646u), ~47607u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d, u_input.a.x), ~4294967295u), ~_wgslsmith_mod_u32(4294967295u, 4294967295u), 16055u), ~u_input.d & 0u, ~45365u, ~(~u_input.a.x)));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(22282u, 11u)])), -16151i) >> (u_input.d % 32u);
    let var_3 = vec3<bool>(true, true, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -831f), -1907f)) + -195f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(397f, _wgslsmith_f_op_f32(1652f + 1522f))), (_wgslsmith_add_i32(u_input.c.x, u_input.b.x) > reverseBits(u_input.c.x)) | !(u_input.b.x <= -1i))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = array<vec2<i32>, 7>();
    global0 = array<vec4<i32>, 11>();
    let var_0 = select(!vec2<bool>(_wgslsmith_div_f32(-2702f, arg_0.c) <= _wgslsmith_f_op_f32(min(-391f, arg_0.e)), arg_0.d), vec2<bool>(true, true), arg_0.d & arg_0.d);
    let var_1 = 1257f;
    global1 = array<vec2<i32>, 7>();
    return _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(653f, -156f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(-1785f, u_input.a.zy, 258f, true, 1151f)))))));
    let var_1 = all(!vec2<bool>(!all(vec3<bool>(false, false, true)), true));
    let var_2 = Struct_1(-2114f, ~(~vec2<u32>(72380u, ~2858u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(606f * -1683f), _wgslsmith_f_op_f32(ceil(2449f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(376f))))))), true, _wgslsmith_f_op_f32(ceil(-804f)));
    var_0 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-3591i, 18780i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(415f, var_2.e, var_2.e), vec3<f32>(var_2.c, 380f, var_2.c)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, var_2.a)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c, var_2.c, 901f)))))), u_input.d, vec3<i32>(~1i, ~(-1i | u_input.b.x), select(_wgslsmith_div_i32(u_input.c.x, -u_input.b.x), u_input.b.x, !var_2.d & all(vec3<bool>(var_2.d, var_1, true)))));
}

