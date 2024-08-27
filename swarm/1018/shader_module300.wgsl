struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = -16303i <= (max(0i, (u_input.a ^ -1i) >> (0u % 32u)) & -20735i);
    let var_1 = (select(u_input.a, 54881i, !var_0) > (7056i ^ max(abs(u_input.a), u_input.a))) && true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(173f)), _wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f), 358f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_f_op_f32(trunc(237f)))), !var_1)), _wgslsmith_f_op_f32(f32(-1f) * -1013f));
    global0 = Struct_1(firstTrailingBit(1u));
    let var_3 = ~(2147483647i & max(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(13200i, u_input.a, u_input.a)), -(-1i ^ u_input.a)));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    global2 = true;
    let var_0 = vec3<bool>(false, !any(vec2<bool>(any(vec3<bool>(false, false, false)), true)), func_3());
    var var_1 = -abs(_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(arg_0, 1i, u_input.a, arg_0)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 14966i, 29502i, 23443i), vec4<i32>(arg_0, 0i, 1041i, -32628i), vec4<i32>(-50702i, arg_0, -56693i, -36099i)))));
    var var_2 = vec2<bool>(var_0.x, var_0.x);
    return Struct_2(Struct_1(global0.a), !var_0.zx, vec3<u32>(~(30632u << (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.c, 1u, u_input.b.x), vec4<u32>(u_input.c, 1u, 432u, global0.a)) % 32u)), ~arg_1.x, 1u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-867f, -1000f)), 1000f) + _wgslsmith_f_op_f32(min(-467f, -890f))), -1951f, 330f));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> f32 {
    global0 = arg_0.a;
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~select(max(vec2<u32>(global0.a, 61927u), vec2<u32>(global0.a, global0.a)), vec2<u32>(0u, arg_0.a.a), vec2<bool>(arg_0.b.x, false)), arg_0.c.zx));
    let var_1 = -(~vec4<i32>(1i, -22941i, u_input.a, -72i) & _wgslsmith_div_vec4_i32(vec4<i32>(-50768i, u_input.a, u_input.a, 50309i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (~abs(u_input.b) % vec4<u32>(32u));
    global2 = ~44819i <= firstTrailingBit(~(~32131i));
    global2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1725f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(767f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))), false)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, 1u), _wgslsmith_add_u32(u_input.b.x, 0u), ~arg_1.a.c.x)), _wgslsmith_mult_vec3_u32(firstTrailingBit(countOneBits(arg_1.a.c)), ~(vec3<u32>(arg_1.b, arg_1.a.c.x, u_input.b.x) | vec3<u32>(4294967295u, u_input.c, u_input.c)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(-arg_1.d | u_input.a, vec2<u32>(~4294967295u, 19121u)), -567f)) + arg_1.a.d.x);
    let var_2 = -1i;
    var var_3 = 1u;
    var var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1395f + var_1), arg_1.a.d.x, _wgslsmith_f_op_f32(arg_1.a.d.x * 1063f), var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 941f, var_1)))))), vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(countOneBits(6738i), arg_1.a.c.zy), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.d.x), _wgslsmith_f_op_f32(max(-337f, -425f)), arg_1.a.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_1)))) * var_1), arg_1.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f), var_1))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-504f))) - func_2(var_2 ^ ~(-10591i & arg_0), u_input.b.zw).d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_sub_i32(0i, -7412i));
    global2 = ~(~0i ^ u_input.a) != -15038i;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1118f);
    global1 = true;
    var var_2 = true && all(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)));
    global2 = true;
    global2 = !select(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), !any(vec3<bool>(false, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global0.a, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(abs(global0.a), ~1u, _wgslsmith_clamp_u32(u_input.c, 0u, 23704u), u_input.b.x))), select(1u, 1u, false), vec2<f32>(_wgslsmith_f_op_f32(sign(-621f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) * -1074f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a, Struct_3(Struct_2(Struct_1(4294967295u), vec2<bool>(false, false), u_input.b.yyx, vec3<f32>(var_1, var_1, var_1)), 56440u, vec4<i32>(1i, u_input.a, u_input.a, -2147483647i), u_input.a, Struct_1(u_input.c)), var_0))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(451f, var_1)))), -1304f)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(f32(-1f) * -414f)));
}

