struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-737f, _wgslsmith_f_op_f32(1991f * arg_1.d))), _wgslsmith_f_op_f32(abs(arg_1.d)));
    let var_0 = arg_1;
    var var_1 = ~_wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_div_vec3_u32(u_input.d, ~u_input.d) << (vec3<u32>(_wgslsmith_mod_u32(1u, 1u), 0u, _wgslsmith_sub_u32(0u, u_input.d.x)) % vec3<u32>(32u)));
    global1 = array<i32, 18>();
    var var_2 = u_input.b;
    return ~u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = arg_0;
    global0 = arg_1.x;
    var var_1 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(799f + arg_1.x), _wgslsmith_f_op_f32(var_0.b.x * var_0.d), arg_0.d) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(854f, 1297f, arg_0.b.x, -684f) * vec4<f32>(154f, var_0.b.x, 367f, arg_0.b.x)))))), false, 693f);
    let var_2 = vec4<u32>(u_input.b ^ (max(~4294967295u, 1u) & ~u_input.b), _wgslsmith_mod_u32(4294967295u, 24070u), _wgslsmith_dot_vec3_u32(~func_3(u_input.c.x | global1[_wgslsmith_index_u32(1u, 18u)], arg_0), u_input.d), ~u_input.d.x);
    let var_3 = arg_0;
    return _wgslsmith_div_i32(-32664i, select(_wgslsmith_mult_i32(~arg_0.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_2, var_2), 18u)]), -23239i, !all(vec4<bool>(false, var_1.c, true, var_3.c))) << (_wgslsmith_sub_u32(~var_2.x ^ ~0u, 1u) % 32u));
}

fn func_1() -> f32 {
    let var_0 = true;
    global0 = -865f;
    let var_1 = vec4<i32>(2147483647i, min(func_2(Struct_1(10774i, vec4<f32>(150f, -335f, 1740f, -182f), true, 919f), vec4<f32>(-1322f, -1815f, 3119f, -487f)), func_2(Struct_1(global1[_wgslsmith_index_u32(23043u, 18u)], vec4<f32>(-529f, 514f, -1143f, -790f), false, 1921f), vec4<f32>(-306f, 983f, -377f, -1563f))) >> (u_input.d.x % 32u), -(-u_input.c.x ^ -global1[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -15385i, 26340i, u_input.a), vec4<i32>(u_input.c.x, u_input.a, -2147483647i, 0i)), ~vec4<i32>(0i, 26640i, global1[_wgslsmith_index_u32(52178u, 18u)], global1[_wgslsmith_index_u32(11606u, 18u)]), any(vec2<bool>(true, var_0))), firstTrailingBit(vec4<i32>(38193i, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.d.x, 18u)])))) >> (vec4<u32>(u_input.b & 28452u, ~u_input.b, 21837u, _wgslsmith_add_u32(u_input.d.x, 14461u & min(3375u, u_input.d.x))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(2061f, 1670f, true))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-261f, -194f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(312f)) + _wgslsmith_f_op_f32(ceil(-102f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(573f)))))));
    return _wgslsmith_f_op_f32(820f * 488f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1169f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(step(321f, 753f)))))))));
    var var_0 = Struct_1(select(_wgslsmith_add_i32(_wgslsmith_mult_i32(max(global1[_wgslsmith_index_u32(44614u, 18u)], global1[_wgslsmith_index_u32(u_input.d.x, 18u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-3359i, u_input.c.x, -1i, global1[_wgslsmith_index_u32(100192u, 18u)]), vec4<i32>(-8511i, 31460i, global1[_wgslsmith_index_u32(u_input.d.x, 18u)], 16613i))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 9291u), 18u)]), ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 33971i), !any(vec4<bool>(false, true, false, true)) || true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-428f, -2061f, 581f, 778f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-489f, -1452f, -414f, 1091f) * vec4<f32>(446f, -611f, 1000f, -516f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(352f, 206f, -184f, 1231f))))), vec4<f32>(_wgslsmith_f_op_f32(-393f + _wgslsmith_f_op_f32(abs(1352f))), -307f, _wgslsmith_div_f32(1357f, -168f), 791f))), ~abs(u_input.b) > u_input.d.x, _wgslsmith_f_op_f32(ceil(-1258f)));
    global1 = array<i32, 18>();
    var_0 = Struct_1(~_wgslsmith_sub_i32(1i, 0i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(820f, var_0.b.x, 665f, -1078f)))), !(!any(vec4<bool>(true, var_0.c, true, true))), -287f);
    let var_1 = Struct_1(~firstTrailingBit(~firstLeadingBit(-31054i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 641f, -1000f, var_0.b.x) - vec4<f32>(1688f, var_0.b.x, var_0.b.x, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(var_0.b + var_0.b))))), true, var_0.d);
    var var_2 = !any(!(!select(vec4<bool>(false, false, var_0.c, var_0.c), vec4<bool>(true, false, var_0.c, var_1.c), var_0.c)));
    let var_3 = vec2<bool>(var_0.c, -(~u_input.a ^ _wgslsmith_div_i32(2147483647i, -33880i)) < ~2147483647i);
    var_0 = var_1;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.xwx * vec3<f32>(-167f, var_1.d, var_0.d))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, var_1.b.x, var_0.d))))) * vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(823f + var_0.d)), _wgslsmith_f_op_f32(-1000f - -424f), var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-144f, var_1.d), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-730f * var_1.d), 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~firstLeadingBit(firstLeadingBit(reverseBits(vec3<i32>(u_input.c.x, 3609i, -1i)))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.b))) * _wgslsmith_f_op_vec4_f32(-var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f * -1312f))))));
}

