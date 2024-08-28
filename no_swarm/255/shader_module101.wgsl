struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-19208i, -3576i, -16167i, -42616i, -32824i, -5731i, -9335i, -45138i, 35752i, 2147483647i, 2147483647i, 1i, -4599i, 0i, -12491i, -62590i, 12000i, 2147483647i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    var var_0 = Struct_1(all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), select(reverseBits(~vec2<u32>(0u, 3346u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 58572u)), true), countOneBits(max(abs(vec2<u32>(46624u, 35580u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1976u, 68854u))))), any(select(vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), true)));
    var var_1 = abs(reverseBits(var_0.b.x) << (_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_0.b.x, 531u, 0u, var_0.b.x) | vec4<u32>(1u, 25441u, 11170u, var_0.b.x)), ~abs(vec4<u32>(var_0.b.x, var_0.b.x, 95557u, 0u))) % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1283f)) - _wgslsmith_div_f32(-134f, 940f)) * _wgslsmith_f_op_f32(288f * -276f)), -958f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(693f, 727f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(869f, 1412f, -750f, -876f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1212f), -2155f, 1000f))));
    let var_3 = Struct_1(var_0.c, ~(vec2<u32>(var_0.b.x, firstLeadingBit(var_0.b.x)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(7363u, var_0.b.x, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x)), abs(36898u)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(vec3<i32>(u_input.a.x, 14949i, u_input.a.x))), ~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)) > _wgslsmith_mod_i32(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.b.x, 18u)] ^ 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-44961i, -23579i, u_input.a.x) << (vec3<u32>(var_0.b.x, 72607u, var_0.b.x) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 18u)], u_input.a.x, u_input.a.x) & vec3<i32>(global0[_wgslsmith_index_u32(60025u, 18u)], 67048i, global0[_wgslsmith_index_u32(var_0.b.x, 18u)]))));
    var var_4 = ~(vec4<i32>(u_input.a.x, 17927i, u_input.a.x, u_input.a.x) << (firstTrailingBit(firstLeadingBit(vec4<u32>(var_0.b.x, 0u, 1u, var_0.b.x))) % vec4<u32>(32u)));
    return var_0.a;
}

fn func_2() -> bool {
    let var_0 = vec4<u32>(0u, ~(~4294967295u), select(1u, 14454u, any(vec2<bool>(0i > global0[_wgslsmith_index_u32(18089u, 18u)], any(vec3<bool>(false, true, false))))), ~54077u);
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_1 = any(vec4<bool>(!func_3(), false, !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f), 1157f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1591f)), -1000f))));
    global0 = array<i32, 18>();
    return false;
}

fn func_1() -> Struct_1 {
    return Struct_1(true, vec2<u32>(~(~1u), ~1u), all(vec2<bool>(true, func_2())));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1();
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = func_4(-min(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1i, 1i), vec3<i32>(u_input.a.x, 9911i, -25402i))), ~reverseBits(vec3<i32>(36552i, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), func_1());
    global0 = array<i32, 18>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1402f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, -813f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, 2411f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-231f, var_2, var_2, -1305f) - vec4<f32>(var_2, 256f, -202f, 531f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1715f, var_2, var_2), vec4<f32>(var_2, var_2, var_2, var_2))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -318f, var_2))))));
    return _wgslsmith_mult_i32(1i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(43460i, -4787i), u_input.a.x)) | -(-global0[_wgslsmith_index_u32(arg_0.b.x, 18u)] << (~(~0u) % 32u));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-571f - 1944f))), 1951f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -673f))) + 3035f))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(1363f, var_1)) + vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1462f, var_1)))), arg_2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, 2459f), vec2<f32>(var_1, var_1)))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))));
    let var_4 = var_2.b.x;
    return Struct_1(true, var_2.b, !(!(var_0.a | true)) == true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_mod_i32(func_5(func_4(countOneBits(vec3<i32>(1i, -2147483647i, -2147483647i)), func_1()), ~1u), u_input.a.x), Struct_1(all(vec2<bool>(all(vec4<bool>(false, false, true, true)), false)), ~(~firstLeadingBit(vec2<u32>(1u, 40487u))), false), func_4(vec3<i32>(~1i, -u_input.a.x, -23203i), func_1()));
    let var_1 = vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(42938i, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 18u)], 7149i, u_input.a.x, -45581i), vec4<i32>(-1i, -35372i, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(63916u, 18u)])), u_input.a.x), abs(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(17558u, 18u)], 2147483647i))), vec4<i32>(reverseBits(5039i), func_5(Struct_1(var_0.a, var_0.b, false), var_0.b.x << (var_0.b.x % 32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(51675u, 18u)]), _wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(var_0.b.x, 18u)])), u_input.a.x)), -u_input.a.x, global0[_wgslsmith_index_u32(1u, 18u)]);
    var var_2 = !func_2();
    var var_3 = func_1();
    var var_4 = select(vec4<bool>(!((var_1.x == var_1.x) | var_0.c), any(vec3<bool>(var_3.a, var_3.c, true)), var_3.c, all(vec4<bool>(true, false == var_3.c, all(vec2<bool>(true, var_0.c)), var_0.a & false))), vec4<bool>(var_0.c, var_3.c, var_1.x == max(i32(-1i) * -41887i, reverseBits(59492i)), true), !vec4<bool>(false, var_0.a, var_0.a != !var_3.c, !var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 173f, -1000f, -432f)) + vec4<f32>(501f, 844f, 420f, -1000f)))), -u_input.a.x & ~global0[_wgslsmith_index_u32(48404u, 18u)], ~vec3<u32>(100793u, ~var_3.b.x, var_3.b.x), var_1);
}

