struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    return -10138i << (_wgslsmith_dot_vec3_u32(u_input.a.wzx, _wgslsmith_mult_vec3_u32(min(vec3<u32>(19909u, arg_0, 18610u), ~vec3<u32>(37629u, 4294967295u, u_input.a.x)), firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) >> (vec3<u32>(u_input.a.x, arg_0, 93616u) % vec3<u32>(32u)))) % 32u);
}

fn func_2() -> vec2<f32> {
    let var_0 = vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(~u_input.b, -abs(16755i))), 0i ^ (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(947i, -9614i, u_input.b, u_input.b), vec4<i32>(0i, 1i, 33359i, 53873i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-31661i, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, u_input.b, -8682i, u_input.b))) | u_input.b), u_input.b);
    global0 = array<Struct_1, 24>();
    var var_1 = -_wgslsmith_add_vec2_i32(min(countOneBits(vec2<i32>(u_input.b, var_0.x) | var_0.zz), countOneBits(select(var_0.zx, vec2<i32>(10207i, var_0.x), false))), vec2<i32>(~u_input.b, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, var_0.x), vec4<i32>(13124i, u_input.b, var_0.x, 2147483647i)))));
    var var_2 = 8406i | max(var_1.x & max(firstTrailingBit(var_1.x), 2147483647i), func_3(u_input.a.x, Struct_2(_wgslsmith_div_f32(311f, 243f), Struct_1(var_0.yx, vec4<i32>(-22310i, 0i, -2147483647i, 2147483647i), vec3<i32>(0i, 1i, 57588i)), Struct_1(vec2<i32>(var_0.x, 6886i), vec4<i32>(-36012i, 41333i, -16658i, -2147483647i), var_0))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -272f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-127f)))))), -124f)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, var_3.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1520f)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    var var_0 = ~u_input.a.yzw;
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(693f))) * -419f) * -2222f);
    return Struct_1(countOneBits(-_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.b, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(21581i, 25802i), vec2<i32>(2147483647i, u_input.b)))), -(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, 1i, 27624i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(7066i, u_input.b, 2147483647i, u_input.b), vec4<i32>(13987i, u_input.b, u_input.b, -2147483647i))) | select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -7457i, u_input.b), vec4<i32>(2147483647i, u_input.b, 2147483647i, 3447i)), vec4<i32>(u_input.b, u_input.b, -40799i, u_input.b) >> (vec4<u32>(var_0.x, var_0.x, arg_1, 43990u) % vec4<u32>(32u)), true)), -vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(6276i, 1i, u_input.b)), abs(vec3<i32>(1i, u_input.b, u_input.b))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -7200i, u_input.b), -vec4<i32>(-2147483647i, 1i, -2147483647i, 2147483647i))));
}

fn func_1() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, 557f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2())))), 4294967295u);
    global0 = array<Struct_1, 24>();
    let var_1 = false;
    var var_2 = _wgslsmith_sub_i32(-u_input.b, ~(~(-1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f)) - 1351f), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-981f + -2074f))))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = vec2<u32>(0u, abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 69323u, u_input.a.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(13696u, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 105019u), vec3<bool>(true, false, false))))));
    global0 = array<Struct_1, 24>();
    var var_1 = arg_1;
    let var_2 = Struct_2(arg_1.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, max(min(var_0.x, _wgslsmith_mod_u32(u_input.a.x, 12517u)), ~reverseBits(u_input.a.x))), 24u)], var_1.c);
    let var_3 = firstTrailingBit(min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 24505u, 0u), vec4<u32>(0u, u_input.a.x, var_0.x, var_0.x), _wgslsmith_div_vec4_u32(u_input.a, u_input.a))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wwx, u_input.a.yxw), 0u, 1u, 4294967295u)));
    return !vec2<bool>(true, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = !select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), true), func_5(_wgslsmith_f_op_f32(func_1()), Struct_2(730f, global0[_wgslsmith_index_u32(3363u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), global0[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -376f), Struct_1(~(~vec2<i32>(-8969i, u_input.b)), vec4<i32>(-1i) * -abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)), firstTrailingBit(vec3<i32>(reverseBits(u_input.b), 1i, u_input.b))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mult_u32(~(~u_input.a.x), 4294967295u)), 24u)]);
    let var_2 = vec3<u32>(~abs(u_input.a.x), 4294967295u | u_input.a.x, 40266u);
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~abs(u_input.b));
}

