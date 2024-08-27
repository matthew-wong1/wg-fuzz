struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-u_input.c, _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.e.x, -32954i, arg_1.a.x, 0i), u_input.c)), _wgslsmith_mod_vec4_i32(select(u_input.c << (vec4<u32>(arg_0, 0u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), reverseBits(u_input.c), select(vec4<bool>(false, arg_1.c, true, false), vec4<bool>(true, arg_1.c, false, true), vec4<bool>(false, false, true, true))), ~vec4<i32>(arg_1.a.x, -1i, 26423i, arg_1.a.x))), select(arg_0, ~57979u, !arg_1.c), _wgslsmith_f_op_f32(-1f), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c, true, arg_1.c), arg_1.c), !vec3<bool>(arg_1.c, false, true), all(vec3<bool>(true, false, arg_1.c))), select(vec3<bool>(true, true, u_input.c.x <= arg_1.a.x), select(select(vec3<bool>(arg_1.c, arg_1.c, false), vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, arg_1.c, arg_1.c)), !vec3<bool>(arg_1.c, arg_1.c, arg_1.c), !arg_1.c), true), vec3<bool>(!(true == arg_1.c), false, false)));
    let var_1 = 23974u;
    let var_2 = Struct_1(select(select(~u_input.c.xyw, reverseBits(abs(vec3<i32>(var_0.a, 0i, var_0.a))), !(arg_1.c == false)), firstTrailingBit(vec3<i32>(var_0.a, ~0i, min(var_0.a, u_input.a))), var_0.d.x), arg_1.b >> (var_0.b % 32u), true, vec4<u32>(select(16307u, ~abs(var_0.b), !(!arg_1.c)), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, ~0u), max(u_input.b, select(u_input.b, u_input.b, var_0.d.yz))), 4294967295u));
    var var_3 = var_2.d.x;
    let var_4 = Struct_2(_wgslsmith_add_i32(arg_1.a.x, arg_1.a.x), 32315u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c), var_0.c)), var_0.c) - -1508f), !var_0.d);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -330f)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: f32) -> f32 {
    var var_0 = any(!vec3<bool>(all(vec3<bool>(true, true, true)), false, u_input.d < u_input.d));
    var_0 = any(select(arg_0.d, !vec3<bool>(all(vec4<bool>(false, arg_0.d.x, arg_0.d.x, true)), true, arg_0.d.x), arg_0.d.x));
    let var_1 = firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, ~0i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, -1i), u_input.c.zw), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.xx, max(vec2<i32>(arg_0.a, 2147483647i), vec2<i32>(arg_0.a, arg_0.a))))));
    return _wgslsmith_div_f32(203f, arg_2);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(firstTrailingBit(u_input.e.x), min(~50315u, arg_1.x), _wgslsmith_f_op_f32(-1900f + _wgslsmith_f_op_f32(func_4(Struct_2(~u_input.a, 4294967295u, -2102f, vec3<bool>(true, true, true)), -1501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)), _wgslsmith_f_op_f32(func_3(~21374u, Struct_1(vec3<i32>(u_input.e.x, u_input.e.x, 51674i), 1u, true, vec4<u32>(86599u, arg_1.x, arg_1.x, arg_0))))))), select(vec3<bool>(false, _wgslsmith_div_f32(-337f, 478f) == _wgslsmith_f_op_f32(ceil(604f)), true), vec3<bool>(true, !any(vec3<bool>(true, true, true)), true), select(any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), (arg_1.x <= 0u) && true)));
    let var_1 = var_0.a;
    var var_2 = -_wgslsmith_add_i32(61595i, var_1);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(112f, 1168f, 136f), vec3<f32>(-355f, var_0.c, var_0.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-867f, var_0.c, var_0.c)))))));
    var var_4 = select(~vec3<u32>(~u_input.b.x >> (4294967295u % 32u), arg_1.x ^ 4294967295u, abs(arg_1.x) << (arg_1.x % 32u)), reverseBits(~(~(~vec3<u32>(arg_1.x, 1u, 0u)))), (_wgslsmith_f_op_f32(-1113f * -836f) != _wgslsmith_f_op_f32(-var_3.x)) & var_0.d.x);
    return var_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    var var_0 = arg_1.c;
    let var_1 = func_2(~arg_1.d.x, _wgslsmith_sub_vec2_u32(vec2<u32>(~countOneBits(arg_2.x), u_input.d), vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_1.d.xzy, arg_2), 1u)));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_mult_u32(var_2.d.x, 4294967295u);
    let var_4 = arg_1;
    return all(func_2(firstTrailingBit(_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_1.b, var_4.b, 86557u), vec3<u32>(arg_1.b, 1u, var_2.d.x)), ~arg_1.d.wyw)), vec2<u32>(10227u, ~var_2.b)).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 20477u << (~(~(~max(56401u, 4294967295u))) % 32u);
    let var_1 = any(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, false)), false), true));
    var var_2 = select(var_0, _wgslsmith_add_u32(u_input.d, u_input.b.x), true);
    var_2 = _wgslsmith_mult_u32(75966u, ~_wgslsmith_mod_u32(0u, u_input.b.x));
    var_2 = reverseBits(var_0) >> (~u_input.b.x % 32u);
    var_2 = ~48468u;
    let var_3 = select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_1, var_1, var_1), false && var_1), !(!vec4<bool>(var_1, false, var_1, var_1)), !func_1(vec3<bool>(var_1, var_1, var_1), Struct_1(u_input.c.wxz, 4294967295u, var_1, vec4<u32>(var_0, 1u, 79100u, var_0)), vec3<u32>(37459u, u_input.b.x, var_0))), vec4<bool>(true, true, (all(vec4<bool>(var_1, true, var_1, var_1)) | func_2(var_0, vec2<u32>(var_0, u_input.b.x)).d.x) & true, true), true != var_1);
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-1i, u_input.a) & min(u_input.a, -1i), i32(-1i) * -23878i), -_wgslsmith_dot_vec2_i32(~u_input.c.xw, vec2<i32>(-10408i, u_input.e.x)), 2147483647i), abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(var_0, var_0)), ~vec2<u32>(32522u, 0u))), any(var_3.xxw), abs(~(~vec4<u32>(var_0, var_0, 32810u, var_0))));
    var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, -1i, var_0);
}

