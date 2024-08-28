struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 31>;

var<private> global3: array<i32, 12>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(vec3<u32>(firstLeadingBit(abs(~52559u)), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~2980u, ~4294967295u, ~u_input.a.x, ~arg_0.a), ~max(vec4<u32>(u_input.a.x, arg_0.a, 26698u, u_input.a.x), vec4<u32>(4294967295u, 83591u, u_input.a.x, 0u)))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(865f)), -313f), 1248f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-926f))))));
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1056f, 219f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f - 618f)))));
    var var_1 = reverseBits(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.a, select(vec3<u32>(40314u, 1527u, 29149u), vec3<u32>(arg_0.a, 102911u, 20507u), var_0.b)), ~(~u_input.a.x), 8727u), 12u)], _wgslsmith_sub_i32(~(-24542i), _wgslsmith_dot_vec3_i32(global1.ywx, vec3<i32>(global1.x, global1.x, 2147483647i))), -1i << (var_0.a.x % 32u)));
    var var_2 = ~_wgslsmith_mod_vec2_u32(u_input.a.zx << (select(vec2<u32>(u_input.a.x, u_input.a.x), ~var_0.a.zz, true) % vec2<u32>(32u)), var_0.a.xz);
    var_2 = firstTrailingBit(firstTrailingBit(u_input.a.yx >> (firstLeadingBit(vec2<u32>(u_input.a.x, 1u) & vec2<u32>(arg_0.a, 27994u)) % vec2<u32>(32u))));
    return select(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.x, 22713u), abs(vec3<u32>(arg_0.a, var_2.x, arg_0.a)))), u_input.a.x, true) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, arg_0.a), min(var_0.a.zy, _wgslsmith_mult_vec2_u32(var_0.a.yy, u_input.a.yx)) | vec2<u32>(var_0.a.x, var_0.a.x)) % 32u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = -926f;
    var var_0 = Struct_2(~select(arg_0.a, arg_0.a, !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))));
    var var_1 = var_0.a.x;
    let var_2 = _wgslsmith_clamp_i32(0i, global3[_wgslsmith_index_u32(select(~func_3(Struct_3(arg_0.a.x)), ~_wgslsmith_dot_vec4_u32(~arg_0.a, var_0.a), true), 12u)], 2147483647i);
    var var_3 = !(!vec3<bool>(!(309f > arg_2.x), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), any(vec4<bool>(true, false, false, false)) & true));
    return vec2<bool>(!all(vec4<bool>(!var_3.x, all(var_3.zy), false, true)), var_3.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -420f)));
    var var_1 = Struct_2(abs(vec4<u32>(max(1u, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(arg_1.a.x, u_input.a.x))), 58297u, _wgslsmith_sub_u32(reverseBits(1u), u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_1.a, arg_1.a), _wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(0u, 1u, 4294967295u, 0u))))));
    var var_2 = var_1.a.x;
    global2 = array<Struct_3, 31>();
    let var_3 = global2[_wgslsmith_index_u32(var_1.a.x, 31u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - -590f) - 279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1167f, var_0)) - var_0))));
}

fn func_1() -> Struct_1 {
    global3 = array<i32, 12>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(663f - -446f) + -1465f)), -1996f, (true & all(vec4<bool>(true, true, true, false))) && true)), _wgslsmith_f_op_f32(func_4(any(!func_2(Struct_2(vec4<u32>(u_input.a.x, 20044u, 4294967295u, u_input.a.x)), vec3<u32>(u_input.a.x, 92252u, 26053u), vec3<f32>(112f, -143f, 307f))), Struct_2(min(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 89133u), ~vec4<u32>(u_input.a.x, 26985u, 0u, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2119f)))))));
    var var_1 = vec3<u32>(abs(u_input.a.x), ~_wgslsmith_dot_vec2_u32(abs(~u_input.a.yz), _wgslsmith_mod_vec2_u32(u_input.a.xz, max(u_input.a.xz, u_input.a.yy))), ~u_input.a.x);
    let var_2 = vec4<bool>(all(select(func_2(Struct_2(vec4<u32>(27635u, var_1.x, var_1.x, 1u)), u_input.a, vec3<f32>(563f, -1491f, var_0.x)), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))) | false, !any(vec3<bool>(58846u >= var_1.x, true, 16200u < u_input.a.x)), !func_2(Struct_2(vec4<u32>(9518u, u_input.a.x, 16143u, var_1.x)), _wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, ~u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, 212f, 608f))).x, any(vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_f_op_f32(sign(-910f));
    return Struct_1(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(reverseBits(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), u_input.a.x, 96131u)), false, _wgslsmith_f_op_f32(trunc(var_3)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    global3 = array<i32, 12>();
    var var_0 = ~0u;
    global1 = vec4<i32>(firstLeadingBit(1i), 15840i, _wgslsmith_sub_i32(reverseBits(firstTrailingBit(-2147483647i)), 8278i) | ~(-1351i), arg_2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.x * -1111f), -594f))), -912f, _wgslsmith_f_op_f32(arg_1.c + arg_1.c)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_1().c)))), _wgslsmith_f_op_f32(1155f * _wgslsmith_f_op_f32(arg_1.c + 479f)), arg_1.c);
    return Struct_2(abs(arg_0.a));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> f32 {
    let var_0 = u_input.a.x;
    global1 = vec4<i32>(2147483647i, -_wgslsmith_div_i32(~global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(3835i, -24497i, global1.x), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(11619u, 12u)], 29891i))), max(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(var_0, 12u)], -14329i), global1.yy), ~62843i), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_1, var_0), _wgslsmith_div_u32(arg_1, arg_0.a.x)), 12u)]), global1.x) | _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -2147483647i, min(-9425i, -2147483647i), global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 12u)]), firstTrailingBit(vec4<i32>(0i, ~global3[_wgslsmith_index_u32(39145u, 12u)], -global1.x, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(0u, 12u)], global1.x))));
    global1 = (vec4<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, 16322u), vec4<u32>(var_0, 4294967295u, 0u, arg_0.a.x)), 12u)], 1i), -(global1.x >> (arg_0.a.x % 32u)), min(global1.x, global3[_wgslsmith_index_u32(57515u, 12u)] | -2147483647i), ~global1.x) ^ vec4<i32>(-global1.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x) >> (4294967295u % 32u), 12u)], _wgslsmith_clamp_i32(~global1.x, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(arg_0.a.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_mult_i32(-13619i, global3[_wgslsmith_index_u32(arg_1, 12u)])), -7357i)) << (reverseBits(vec4<u32>(34876u, 1u, arg_0.a.x, func_1().a.x)) % vec4<u32>(32u));
    global2 = array<Struct_3, 31>();
    global1 = -firstTrailingBit(max(vec4<i32>(~global3[_wgslsmith_index_u32(38245u, 12u)], global1.x ^ 1i, global3[_wgslsmith_index_u32(~95330u, 12u)], _wgslsmith_sub_i32(1i, 1i)), vec4<i32>(0i, global3[_wgslsmith_index_u32(~1u, 12u)], global1.x ^ -9595i, -global3[_wgslsmith_index_u32(1u, 12u)])));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(9426i, -2147483647i, global1.x, global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<i32>(global3[_wgslsmith_index_u32(21517u, 12u)], -1i, 49382i, global1.x)), -63425i, -global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global1.x)), ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1.x, global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec4<i32>(global3[_wgslsmith_index_u32(28294u, 12u)], global1.x, -1i, global3[_wgslsmith_index_u32(u_input.a.x, 12u)])), vec4<i32>(-25874i, -18321i, global1.x, 1i) ^ vec4<i32>(1i, global1.x, global1.x, -2147483647i), true)) >> ((~(~(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 8866u))) ^ vec4<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 1u), ~(~0u))) % vec4<u32>(32u));
    var var_0 = true;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1472f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(Struct_2(vec4<u32>(1u, u_input.a.x, 22245u, u_input.a.x)), func_1(), firstLeadingBit(global1.xyy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, -1157f))), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(54278u, u_input.a.x, u_input.a.x, u_input.a.x)), max(vec4<u32>(4294967295u, 1u, 0u, u_input.a.x), vec4<u32>(25184u, 0u, 34737u, 1u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-166f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1418f, -266f))), ~firstTrailingBit(vec3<u32>(18331u, ~u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x))), ~(~u_input.a ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 18541u) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a)));
}

