struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<vec3<u32>, 5>;

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 0u, 36991u, 45756u, 0u, 71425u, 1u, 25804u, 4294967295u, 4294967295u, 0u, 6574u, 1u, 1u, 0u, 40826u, 4294967295u, 9221u, 946u, 29240u, 65062u, 2047u, 4294967295u, 0u, 42701u, 0u, 20759u, 4294967295u, 8264u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    global2 = array<u32, 29>();
    let var_0 = _wgslsmith_f_op_f32(round(arg_2.a.x));
    var var_1 = 1000f;
    global2 = array<u32, 29>();
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(arg_2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1504f, var_0, _wgslsmith_f_op_f32(floor(772f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, 1000f, -1187f) + vec3<f32>(var_0, arg_2.a.x, arg_2.a.x))))), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, -global0[_wgslsmith_index_u32(26837u, 24u)])), ~(-select(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], arg_2.b), vec2<i32>(-2147483647i, 1i), vec2<bool>(arg_0, false)))));
    return select(any(!(!select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false))), true, arg_0);
}

fn func_2() -> u32 {
    let var_0 = func_3(any(vec4<bool>(false, false, false, select(true, false, false))), u_input.c, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(994f, 282f, 1598f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, -190f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-276f, -1000f, 538f), vec3<f32>(563f, -161f, 404f))))), global0[_wgslsmith_index_u32(1u, 24u)]));
    var var_1 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a.x >> (1u % 32u), u_input.c.x, global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(93367u, 29u)], 29u)], 29u)], 74538u), 29u)])), global1[_wgslsmith_index_u32(43838u, 5u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, countOneBits(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(21571u, 29u)], 36506u)), 1u), _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(77688u, 29u)], 4294967295u)), ~select(vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(u_input.b, 29u)]), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 29u)], 5u)], vec3<bool>(false, var_0, false)), global1[_wgslsmith_index_u32(abs(~0u), 5u)]), ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(6415u, u_input.c.x), 29u)], 29u)], 5u)]));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), -1000f, _wgslsmith_f_op_f32(round(520f)))))), -max(global0[_wgslsmith_index_u32(abs(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 29u)])), 24u)], max(1i, min(global0[_wgslsmith_index_u32(0u, 24u)], 1i))));
    let var_3 = !select(vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, var_0, false), vec3<bool>(false, var_0, var_0))), true, true), vec3<bool>(true, false, func_3(var_1.x == u_input.c.x, vec4<u32>(68563u, 4294967295u, 0u, 4294967295u), Struct_1(vec3<f32>(681f, var_2.a.x, var_2.a.x), 1i))), var_2.a.x == var_2.a.x);
    let var_4 = -18299i <= -var_2.b;
    return ~firstLeadingBit(0u);
}

fn func_4(arg_0: u32, arg_1: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1, ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 24u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(arg_0, 29u)], 24u)], select(global0[_wgslsmith_index_u32(arg_0, 24u)], arg_1, true)), -1i), vec4<i32>(reverseBits(21705i << (u_input.c.x % 32u)), i32(-1i) * -(~(-2147483647i)), abs(-41497i), abs(-19776i)), max(_wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(-21033i, global0[_wgslsmith_index_u32(arg_0, 24u)], -2147483647i, global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_mod_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 29u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -1i, arg_1), max(vec4<i32>(arg_1, 1664i, 12885i, global0[_wgslsmith_index_u32(arg_0, 24u)]), vec4<i32>(102504i, -20726i, arg_1, arg_1))), select(vec4<i32>(-4115i, 20716i, -1i, arg_1), max(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 24u)], -16922i, -2147483647i), vec4<i32>(-17343i, 0i, arg_1, -41878i)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)))), -vec4<i32>(-12165i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(19476u, 24u)], arg_1), global0[_wgslsmith_index_u32(~1u, 24u)], global0[_wgslsmith_index_u32(~2109u, 24u)])));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(10606u, global2[_wgslsmith_index_u32(21078u, 29u)], 4294967295u, u_input.c.x), ~vec4<u32>(u_input.c.x, 0u, u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 29u)], 29u)]))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~u_input.c, vec4<u32>(arg_0, arg_0, arg_0, 5881u)), vec4<u32>(~u_input.a.x, 12827u, firstLeadingBit(u_input.b), firstTrailingBit(8145u))), 29u)], u_input.a.x, countOneBits(0u))), 24u)];
    global0 = array<i32, 24>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1375f, 1000f, -1000f) + vec3<f32>(335f, -275f, 1142f)))))), min(-2147483647i, _wgslsmith_dot_vec3_i32(var_0.zyy, var_0.www)));
    global1 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2142f, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.a.x, 1000f)))))), -715f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(314f, var_2.a.x, var_2.a.x, 517f) + vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(744f, -181f, 201f, 409f) - vec4<f32>(502f, 479f, -441f, var_2.a.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, 1887f, var_2.a.x) + vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, 2222f))))))));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)), 1368f, arg_2.x), (-global0[_wgslsmith_index_u32(countOneBits(4294967295u), 24u)] | -firstTrailingBit(0i)) & -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(20546i, -20i, 9459i), vec3<i32>(6531i, 0i, 1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)) - vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 1144f) - -278f), arg_2.x)), global0[_wgslsmith_index_u32(100243u, 24u)]);
    let var_2 = var_1;
    global1 = array<vec3<u32>, 5>();
    var_0 = Struct_1(vec3<f32>(-1455f, _wgslsmith_f_op_f32(f32(-1f) * -526f), -1000f), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 0i), vec2<i32>(var_2.b, -33266i), vec2<bool>(true, arg_0.x)), vec2<i32>(0i, var_2.b)) | var_0.b);
    return !(!select(arg_0.ywy, select(!arg_0.xzz, !arg_0.wyw, all(arg_0.yw)), !select(vec3<bool>(false, arg_0.x, false), vec3<bool>(true, false, false), arg_0.x)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = 410f;
    var var_1 = (global2[_wgslsmith_index_u32(u_input.c.x, 29u)] == firstTrailingBit(0u)) | any(func_5(vec4<bool>(true, true, true, true), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(~19300u, 5u)], u_input.a), _wgslsmith_f_op_vec4_f32(func_4(func_2(), arg_3.b)), vec2<f32>(_wgslsmith_f_op_f32(-580f - arg_3.a.x), 182f)));
    global0 = array<i32, 24>();
    let var_2 = -281f;
    global0 = array<i32, 24>();
    return all(select(vec3<bool>(true, true, firstLeadingBit(arg_2.x) >= _wgslsmith_add_u32(66665u, 19600u)), !select(vec3<bool>(true, true, true), func_5(vec4<bool>(true, true, false, true), vec3<u32>(4294967295u, arg_2.x, global2[_wgslsmith_index_u32(arg_2.x, 29u)]), vec4<f32>(-240f, -523f, 350f, 779f), arg_3.a.yz), vec3<bool>(true, true, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(u_input.c.x, u_input.a.x))) << (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.wx), vec2<u32>(23262u, 40522u)), select(0u, 0u, true))));
    let var_1 = all(select(select(vec4<bool>(true, true, func_1(vec2<f32>(-1034f, 571f), -15022i, u_input.c.zzz, Struct_1(vec3<f32>(1158f, 339f, -576f), 1i)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, false, false)), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, 21764u > global2[_wgslsmith_index_u32(u_input.c.x, 29u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    let var_2 = vec2<u32>(_wgslsmith_sub_u32(~1u, abs(_wgslsmith_div_u32(u_input.c.x, 15366u)) << ((1u & _wgslsmith_clamp_u32(0u, 42764u, u_input.c.x)) % 32u)), 1u);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_4(~4294967295u, -global0[_wgslsmith_index_u32(var_2.x, 24u)])).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1534f, 255f)), _wgslsmith_f_op_f32(min(-565f, 2237f)))), true)), 1493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f + -469f)) + _wgslsmith_f_op_f32(f32(-1f) * -1134f))), -1i);
    global2 = array<u32, 29>();
    global1 = array<vec3<u32>, 5>();
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

