struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<i32, 24> = array<i32, 24>(1349i, -23163i, -26344i, 1i, 12452i, i32(-2147483648), -11594i, 24460i, 39019i, 0i, 6164i, -1i, -6452i, 1i, -45740i, 35772i, 0i, -1520i, 2147483647i, 1i, 2147483647i, i32(-2147483648), 2147483647i, 31337i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.x)) - _wgslsmith_f_op_f32(exp2(arg_3.x)))), arg_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3 * arg_3), _wgslsmith_f_op_vec2_f32(-arg_3)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -216f), vec2<f32>(825f, arg_3.x))))))));
    let var_1 = select(vec4<bool>((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 56965u), u_input.a.xy) & ~u_input.b) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, arg_1.x), vec3<u32>(7474u, arg_1.x, 21747u)), any(vec3<bool>(arg_0, !arg_0, arg_0)), any(!vec2<bool>(false, arg_0)), arg_0), !vec4<bool>(_wgslsmith_f_op_f32(var_0.x + arg_3.x) >= arg_3.x, any(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, arg_0, true, false), arg_0)), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_f_op_f32(arg_3.x - 1762f), arg_0), !vec4<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, true)), false, _wgslsmith_f_op_f32(-899f + arg_3.x) < _wgslsmith_f_op_f32(max(var_0.x, -546f)), true));
    let var_2 = Struct_3(select(!var_1, vec4<bool>(!arg_0, var_1.x, u_input.a.x <= ~arg_1.x, true), vec4<bool>(arg_0, arg_0, !(var_0.x > arg_3.x), select(false, true, arg_0))), u_input.a.zw, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) - _wgslsmith_f_op_f32(-var_0.x)))), global0[_wgslsmith_index_u32(~u_input.a.x, 14u)]);
    var var_3 = Struct_2(select(select(var_2.d.a, abs(vec3<i32>(arg_2, var_2.d.a.x, global1[_wgslsmith_index_u32(1u, 24u)])), select(vec3<bool>(false, true, arg_0), var_2.a.ywz, arg_0)), -_wgslsmith_mod_vec3_i32(var_2.d.a, abs(vec3<i32>(var_2.d.a.x, global1[_wgslsmith_index_u32(8624u, 24u)], 1i))), !vec3<bool>(true, true, any(vec3<bool>(true, false, arg_0)))));
    global1 = array<i32, 24>();
    return ~0u;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    var var_0 = min(12608i, arg_0.x >> (abs(~u_input.d) % 32u)) < abs(-global1[_wgslsmith_index_u32(u_input.d & func_3(true, u_input.a.zzx, -54646i, vec2<f32>(2375f, 776f)), 24u)]);
    var var_1 = 8772u;
    var var_2 = -1000f;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1230f + -1974f), _wgslsmith_f_op_f32(-751f * 1524f), -519f, -434f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(817f, -203f, 687f, -166f) - vec4<f32>(1000f, -1965f, 371f, -1720f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1987f, -1401f, 300f))))), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-379f, 1802f, 1000f, 1356f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1147f, -1387f, 1543f), vec4<f32>(816f, -331f, -750f, 1126f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, -882f, -475f, -294f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(623f, 682f, -1871f, 1074f) + vec4<f32>(-331f, -1588f, -565f, 1814f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2302f, -1172f, -584f, -383f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-276f, -1074f, -561f, 222f), vec4<f32>(1253f, 1595f, 1574f, -472f))))));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, all(vec2<bool>(true, true)) || arg_2), vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, ~(~17414u)), reverseBits(_wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(816u, u_input.b, 1u, 70541u))), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c, u_input.a.x), ~1u, u_input.c))), 14u)];
    return _wgslsmith_clamp_vec4_i32(~(vec4<i32>(_wgslsmith_mod_i32(0i, arg_1.a.x), -1i, var_4.a.x | arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-589i, 44024i), arg_1.a)) ^ (vec4<i32>(-1i, var_4.a.x, 1i, -16873i) ^ -vec4<i32>(-223i, var_4.a.x, arg_1.a.x, arg_1.a.x))), ~vec4<i32>(~arg_0.x, arg_0.x, 28389i, var_4.a.x), select(abs(vec4<i32>(var_4.a.x, -1i, global1[_wgslsmith_index_u32(u_input.c, 24u)], 2147483647i) >> (vec4<u32>(u_input.d, 4294967295u, 54444u, 1u) % vec4<u32>(32u))), vec4<i32>(var_4.a.x, abs(-21577i) & arg_1.a.x, arg_1.a.x | -global1[_wgslsmith_index_u32(73208u, 24u)], _wgslsmith_clamp_i32(var_4.a.x & arg_0.x, -36867i, select(-1i, global1[_wgslsmith_index_u32(19458u, 24u)], arg_2))), all(!vec3<bool>(arg_2, arg_2, false))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32) -> vec2<f32> {
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(8852u, 33173u, 0u, 46976u), select(u_input.a, vec4<u32>(arg_2, 0u, 0u, arg_1.c.b.x), arg_1.e)), reverseBits(u_input.a), arg_1.c.a), ~(~reverseBits(u_input.a))), ~arg_1.c.b.x);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(677f, arg_1.c.c)), -204f, !(arg_1.c.c <= arg_1.c.c))), _wgslsmith_div_f32(221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.c.c, arg_1.c.c)) + _wgslsmith_f_op_f32(-562f + arg_1.c.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.c, arg_1.c.c)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-721f, arg_1.c.c), vec2<f32>(arg_1.c.c, 644f)))))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_4((vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 24u)], 18836i, global1[_wgslsmith_index_u32(u_input.d, 24u)]) ^ ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 24u)], 24951i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 54791i)) & (func_2(vec3<i32>(-1i, global1[_wgslsmith_index_u32(1u, 24u)], -48551i), Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(u_input.d, 24u)], global1[_wgslsmith_index_u32(55205u, 24u)])), false) | _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(15367u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], 1i), vec4<i32>(18364i, 28756i, global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -2147483647i))), Struct_4(!(!arg_0.x), global0[_wgslsmith_index_u32(abs(u_input.d) & _wgslsmith_mult_u32(u_input.b, u_input.b), 14u)], Struct_3(!vec4<bool>(arg_0.x, false, true, arg_0.x), u_input.a.xw, _wgslsmith_f_op_f32(787f * 590f), Struct_2(vec3<i32>(0i, 2147483647i, global1[_wgslsmith_index_u32(3746u, 24u)]))), Struct_2(min(vec3<i32>(56710i, global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<i32>(91529i, 2147483647i, 16240i))), !(!arg_0.x)), _wgslsmith_mult_u32(18817u, u_input.c)))));
    var var_1 = u_input.a.wx;
    let var_2 = 1i;
    global1 = array<i32, 24>();
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-(arg_1.a.x ^ arg_1.a.x), ~arg_1.a.x, arg_1.a.x), -firstTrailingBit(-vec3<i32>(-2147483647i, -13459i, -55999i) >> (max(vec3<u32>(0u, u_input.c, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))));
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    let var_1 = Struct_3(select(vec4<bool>(false & !arg_0, arg_0, !all(vec4<bool>(true, true, arg_0, arg_0)), true), select(!select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(false, true, arg_0, false), false), !select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, false, true, true), arg_0), vec4<bool>(true, arg_0, all(vec3<bool>(arg_0, true, true)), true)), arg_0), ~u_input.a.wz, 986f, global0[_wgslsmith_index_u32(16034u, 14u)]);
    var_0 = var_1.d.a;
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -675f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 24>();
    global0 = array<Struct_2, 14>();
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    let var_0 = global0[_wgslsmith_index_u32(7850u, 14u)];
    let var_1 = 891f;
    let x = u_input.a;
    s_output = func_5(select(true, !func_1(vec3<bool>(true, true, true)), func_1(vec3<bool>(true, true, true))), Struct_1(vec2<i32>(-1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, global1[_wgslsmith_index_u32(u_input.b, 24u)], var_0.a.x), vec4<i32>(global1[_wgslsmith_index_u32(27422u, 24u)], 20585i, var_0.a.x, var_0.a.x))))));
}

