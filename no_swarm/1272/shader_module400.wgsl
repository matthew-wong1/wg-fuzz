struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(true, -1527f, vec2<u32>(1u, 51178u), vec4<i32>(0i, 2147483647i, -11871i, -69764i)), Struct_1(false, -425f, vec2<u32>(4294967295u, 0u), vec4<i32>(9190i, 1i, 2147483647i, 1i)), Struct_1(false, -998f, vec2<u32>(64979u, 0u), vec4<i32>(-3838i, 2147483647i, 1i, 34631i)), Struct_1(true, 1744f, vec2<u32>(4294967295u, 108374u), vec4<i32>(i32(-2147483648), 517i, -1i, 0i)), Struct_1(false, -346f, vec2<u32>(26752u, 4294967295u), vec4<i32>(78107i, -1i, -8648i, 0i)), Struct_1(true, -1950f, vec2<u32>(64026u, 1u), vec4<i32>(-69929i, 10482i, 2147483647i, 1i)), Struct_1(false, -201f, vec2<u32>(1u, 0u), vec4<i32>(2147483647i, -79435i, 29600i, -1424i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: i32) -> vec2<i32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 7u)];
    let var_1 = !var_0.a;
    global0 = array<Struct_1, 7>();
    return select(vec2<i32>(25041i, -u_input.d.x), select(u_input.d.zz, vec2<i32>(abs(_wgslsmith_sub_i32(2147483647i, arg_1)), _wgslsmith_clamp_i32(var_0.d.x & -1i, i32(-1i) * -6893i, -29931i)), true), true);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = u_input.d.wwy;
    let var_1 = func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(exp2(arg_1.b)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-628f, 1000f, arg_1.b, 1254f) - vec4<f32>(511f, 1503f, arg_1.b, -1993f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, arg_1.b, arg_1.b, arg_1.b))))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_2.x), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, arg_2.x), vec2<i32>(u_input.e, 40253i), u_input.d.zz), vec2<i32>(arg_1.d.x, u_input.e))), ~_wgslsmith_sub_u32(4294967295u, u_input.b.x << (arg_0 % 32u)), -1i) ^ countOneBits(~vec2<i32>(0i, 1i));
    return arg_1.d.ywz;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_dot_vec4_u32(~u_input.b, ~u_input.b), arg_0, vec3<i32>(-1i, arg_0.d.x, ~_wgslsmith_div_i32(0i, -1i)) | u_input.d.zxx);
    let var_1 = Struct_2(arg_0.c.x, arg_0);
    global0 = array<Struct_1, 7>();
    var var_2 = Struct_3(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, var_0.x, 29838i)), arg_0.d.xxy), var_1.b.d.x, var_1.b.d.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-14441i, -11814i, arg_0.d.x) & u_input.d.zyy, -min(vec3<i32>(arg_1, arg_1, arg_0.d.x), vec3<i32>(-1i, -24096i, 44554i))), func_3(vec4<f32>(162f, 969f, arg_0.b, 327f), ~var_1.b.d.x, 1u, max(u_input.e, 1i)).x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(42829u, arg_0.c.x, var_1.b.c.x, arg_0.c.x), firstTrailingBit(vec4<u32>(var_1.b.c.x, 3078u, u_input.c, 1u))) % 32u)));
    global0 = array<Struct_1, 7>();
    return Struct_3(arg_0.d.yzx, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b, arg_0.b, arg_0.b, var_1.b.b) - vec4<f32>(-478f, -1903f, 322f, 1000f))), -47615i, 1u, ~arg_0.d.x) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 1i) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, 0u), arg_0.c) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_2.b.x) & vec2<i32>(var_2.b.x, 2147483647i), vec2<i32>(23645i, 18763i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(~(~u_input.a.x), 7u)], firstTrailingBit(u_input.e));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(230f, var_1.b)), vec2<u32>(2414u, u_input.b.x), var_1.d);
    var var_3 = all(vec4<bool>(true, var_1.a, all(vec3<bool>(false, -1594f <= var_2.b, false)), !all(vec4<bool>(var_2.a, var_1.a, false, var_2.a)) | (_wgslsmith_f_op_f32(1580f + var_2.b) >= _wgslsmith_f_op_f32(-var_2.b))));
    var_1 = Struct_1(!var_1.a, -925f, var_2.c, vec4<i32>(-var_0.b.x, 29545i, 2147483647i, select(var_1.d.x, -15799i, all(vec4<bool>(true, var_2.a, true, var_2.a)) || !var_2.a)));
    let var_4 = select(vec4<bool>(!(!(!var_1.a)), var_1.a, all(!vec3<bool>(var_1.a, var_1.a, true)), var_2.a), vec4<bool>(320f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * var_1.b) * _wgslsmith_f_op_f32(sign(-1000f))), true && var_1.a, true, all(!(!vec3<bool>(var_2.a, false, var_1.a)))), all(vec2<bool>(var_1.a, all(vec4<bool>(true, var_2.a, false, true)))));
    let var_5 = global0[_wgslsmith_index_u32(select(var_2.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(u_input.b.zxz, select(vec3<u32>(var_2.c.x, 0u, var_2.c.x), u_input.b.yyx, var_2.a)), ~vec3<u32>(u_input.a.x, 0u, var_1.c.x)), var_1.c.x), all(var_4.yz)), 7u)];
    var_1 = global0[_wgslsmith_index_u32(var_5.c.x, 7u)];
    let var_6 = Struct_3(vec3<i32>(u_input.e, _wgslsmith_dot_vec4_i32(var_2.d & _wgslsmith_div_vec4_i32(u_input.d, vec4<i32>(-71445i, u_input.d.x, var_1.d.x, -2147483647i)), firstLeadingBit(abs(var_1.d))), var_2.d.x), _wgslsmith_div_vec2_i32(select(var_0.b, vec2<i32>(i32(-1i) * -16713i, 41358i), var_4.wy), -vec2<i32>(var_2.d.x, 85012i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.b, -372f) - vec2<f32>(1188f, var_5.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(961f, var_1.b) - vec2<f32>(var_1.b, 825f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_5.b) + vec2<f32>(var_5.b, var_5.b)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_5.b, -278f), vec2<f32>(var_5.b, -1361f)))));
}

