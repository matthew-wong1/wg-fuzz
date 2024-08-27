struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> vec3<bool> {
    global0 = arg_0;
    let var_0 = arg_0;
    let var_1 = Struct_1(vec3<bool>(arg_0.a.x, false, -45023i == _wgslsmith_mod_i32(~(-3126i), ~u_input.b)));
    let var_2 = true;
    global0 = Struct_1(!(!select(var_0.a, !vec3<bool>(false, arg_3, true), arg_3)));
    return !var_0.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = _wgslsmith_add_vec3_i32(-((vec3<i32>(u_input.b, -45365i, arg_2) >> (u_input.c.zzz % vec3<u32>(32u))) | ~(vec3<i32>(u_input.b, -35i, 13116i) | vec3<i32>(-1i, -2147483647i, 1i))), max(reverseBits(vec3<i32>(-arg_2, -arg_2, arg_2)), vec3<i32>(-81926i, _wgslsmith_div_i32(u_input.b, arg_2), firstTrailingBit(0i)) & vec3<i32>(arg_2, 5824i, u_input.b)));
    return _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, arg_1.e)) + _wgslsmith_f_op_f32(f32(-1f) * -159f)), -1048f), vec3<f32>(arg_1.e, arg_1.e, arg_1.e)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0.e;
    let var_1 = min(u_input.b, -2147483647i);
    global0 = arg_0.a;
    let var_2 = Struct_1(global0.a);
    let var_3 = Struct_2(Struct_1(var_2.a), Struct_1(arg_0.d.a), reverseBits(~(~0u)) & ~(~(~global1[_wgslsmith_index_u32(arg_0.c, 7u)])), Struct_1(var_2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_0.e))))));
    return Struct_1(arg_0.d.a);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = arg_0.a;
    global0 = func_4(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(func_2(arg_0.d, global0.a.x, vec4<u32>(arg_0.c, 5371u, global1[_wgslsmith_index_u32(arg_0.c, 7u)], arg_0.c), arg_0.a.a.x)), Struct_2(Struct_1(global0.a), arg_0.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 7u)] >> (29978u % 32u), 7u)], Struct_1(vec3<bool>(arg_0.d.a.x, arg_0.b.a.x, false)), 244f), u_input.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<bool>(global0.a.x, false, arg_0.a.a.x)), Struct_2(Struct_1(vec3<bool>(true, true, global0.a.x)), arg_0.b, global1[_wgslsmith_index_u32(128u, 7u)], arg_0.b, arg_0.e), -1i)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.e, 1563f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-733f, 1644f, arg_0.e), vec3<f32>(arg_0.e, arg_0.e, arg_0.e))))));
    var var_0 = vec4<bool>(true, any(!select(vec2<bool>(global0.a.x, global0.a.x), select(vec2<bool>(global0.a.x, true), arg_0.b.a.xz, global0.a.yz), true)), !global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1169f, arg_0.e)) <= arg_0.e);
    let var_1 = -44783i >= abs(u_input.b);
    let var_2 = func_4(Struct_2(func_4(Struct_2(Struct_1(arg_0.d.a), Struct_1(vec3<bool>(false, false, false)), arg_0.c, Struct_1(global0.a), 408f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(-arg_0.e), -755f)), Struct_1(global0.a), 26455u, Struct_1(func_4(Struct_2(arg_0.b, arg_0.a, arg_0.c, arg_0.a, arg_0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, 1000f, arg_0.e))).a), _wgslsmith_div_f32(arg_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.e)) - _wgslsmith_f_op_f32(select(-521f, -248f, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -736f), -688f, _wgslsmith_f_op_f32(ceil(arg_0.e))));
    return var_2;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(arg_0.x, ~0u, 20558u) & ~_wgslsmith_dot_vec2_u32(u_input.c.zx, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(global1[_wgslsmith_index_u32(arg_0.x, 7u)], u_input.d)), u_input.c.wx << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u))));
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = !func_2(arg_0.a, arg_0.d.a.x, ~(firstLeadingBit(u_input.c) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, global1[_wgslsmith_index_u32(1u, 7u)], 0u), u_input.c, vec4<u32>(u_input.d, 6107u, arg_0.c, u_input.a.x)) % vec4<u32>(32u))), false).x;
    let var_1 = vec3<u32>(u_input.d, _wgslsmith_mod_u32(4294967295u, u_input.a.x) | u_input.c.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.d, 7u)], 1u));
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(109494u, 7u)], arg_0.c, ~10809u), 35809u);
    var var_3 = Struct_2(arg_0.a, Struct_1(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 34408u, 1u), var_1, global0.a.x), ~vec3<u32>(1u, u_input.a.x, 12156u)), _wgslsmith_mod_vec3_u32(select(~var_1, min(u_input.c.xxx, vec3<u32>(var_2.x, arg_0.c, global1[_wgslsmith_index_u32(var_2.x, 7u)])), global0.a.x), ~u_input.c.zxx)), arg_0.a, _wgslsmith_div_f32(204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) - _wgslsmith_f_op_f32(f32(-1f) * -348f)))));
    let var_4 = func_1(Struct_2(func_1(Struct_2(Struct_1(global0.a), var_3.a, ~1u, arg_0.b, arg_1)), Struct_1(func_5(u_input.c.xxz, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e, arg_1, 613f) + vec3<f32>(arg_1, -103f, arg_1)), func_1(arg_0)).a), ~1u, Struct_1(select(select(global0.a, var_3.a.a, vec3<bool>(global0.a.x, true, arg_0.a.a.x)), func_2(var_3.b, var_3.d.a.x, vec4<u32>(var_1.x, 41373u, 1u, 49513u), true), func_4(arg_0, vec3<f32>(1276f, arg_1, arg_1)).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -567f), -1000f)))));
    return func_5(~(var_1 ^ vec3<u32>(~1u, ~1u, _wgslsmith_mod_u32(arg_0.c, 1u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.e, var_3.e, var_3.e), vec3<f32>(-369f, 351f, arg_1)))))))), Struct_1(var_4.a));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<u32, 7>();
    global0 = func_4(Struct_2(arg_1, arg_1, _wgslsmith_mult_u32(reverseBits(u_input.a.x), 0u), func_6(Struct_2(Struct_1(vec3<bool>(true, global0.a.x, arg_0.a.x)), arg_0, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 1u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10418u, 7u)], 7u)])), func_1(Struct_2(arg_1, arg_0, global1[_wgslsmith_index_u32(37284u, 7u)], arg_1, 209f)), _wgslsmith_f_op_f32(-1484f + -331f)), 670f), _wgslsmith_f_op_f32(-394f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -507f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, 724f, -1000f)) - vec3<f32>(1f, 1f, 1f))))));
    var var_0 = abs(_wgslsmith_add_vec2_i32(-vec2<i32>(max(u_input.b, 1i), i32(-1i) * -2147483647i), vec2<i32>(u_input.b, i32(-1i) * -624i)));
    let var_1 = Struct_2(arg_0, Struct_1(arg_0.a), u_input.d, func_4(Struct_2(arg_0, Struct_1(select(vec3<bool>(arg_0.a.x, global0.a.x, false), arg_1.a, arg_0.a)), 0u, func_5(vec3<u32>(0u, 26607u, 0u), vec3<f32>(-2309f, 753f, -1583f), func_6(Struct_2(arg_1, Struct_1(vec3<bool>(global0.a.x, false, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34671u, 7u)], 7u)], arg_0, -222f), -559f)), _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(max(-1461f, 589f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(935f - -1130f), -1591f, _wgslsmith_f_op_f32(f32(-1f) * -1026f)) - vec3<f32>(-475f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -967f)))), _wgslsmith_f_op_f32(abs(909f)));
    let var_2 = Struct_2(func_4(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1229f, -145f, 556f))))), Struct_1(arg_1.a), _wgslsmith_add_u32(var_1.c, firstTrailingBit(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)] << (84677u % 32u)))), arg_1, var_1.e);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    global0 = func_7(func_6(Struct_2(Struct_1(!global0.a), func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 8936u, global1[_wgslsmith_index_u32(47020u, 7u)]), u_input.c.wyy, u_input.c.yyy), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1361f, 307f, -709f), vec3<f32>(-583f, 1000f, 2141f))), func_1(Struct_2(Struct_1(vec3<bool>(true, true, global0.a.x)), Struct_1(vec3<bool>(true, false, global0.a.x)), u_input.d, Struct_1(vec3<bool>(global0.a.x, global0.a.x, true)), -391f))), ~countOneBits(4294967295u), Struct_1(vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.a), Struct_2(Struct_1(vec3<bool>(true, true, global0.a.x)), Struct_1(global0.a), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26694u, 7u)], 7u)], 7u)], Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x)), -644f), u_input.b)).x * _wgslsmith_f_op_f32(-446f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), func_6(Struct_2(func_5(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8675u, 7u)], 7u)], 7u)], 12809u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(92u, 7u)], 7u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1522f, -1260f, -940f)), func_6(Struct_2(Struct_1(vec3<bool>(true, global0.a.x, false)), Struct_1(vec3<bool>(false, false, true)), u_input.c.x, Struct_1(vec3<bool>(global0.a.x, global0.a.x, true)), -1128f), 940f)), Struct_1(vec3<bool>(false, false, global0.a.x)), _wgslsmith_div_u32(0u, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_4(Struct_2(Struct_1(vec3<bool>(global0.a.x, true, global0.a.x)), Struct_1(vec3<bool>(global0.a.x, global0.a.x, true)), 0u, Struct_1(vec3<bool>(false, global0.a.x, true)), -1145f), vec3<f32>(1407f, -1500f, -337f)), _wgslsmith_div_f32(1252f, -1575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-997f + 1412f))) * _wgslsmith_f_op_f32(abs(-1501f)))));
    global1 = array<u32, 7>();
    global0 = func_7(func_4(Struct_2(func_5(vec3<u32>(global1[_wgslsmith_index_u32(44538u, 7u)], u_input.d, 21053u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(764f, 1083f, 402f)), Struct_1(global0.a)), func_7(func_1(Struct_2(Struct_1(vec3<bool>(false, false, global0.a.x)), Struct_1(vec3<bool>(true, false, global0.a.x)), 12287u, Struct_1(vec3<bool>(false, global0.a.x, false)), -787f)), Struct_1(global0.a)), u_input.d, Struct_1(func_4(Struct_2(Struct_1(vec3<bool>(global0.a.x, false, global0.a.x)), Struct_1(vec3<bool>(global0.a.x, false, global0.a.x)), u_input.c.x, Struct_1(global0.a), -912f), vec3<f32>(679f, -1098f, -1000f)).a), _wgslsmith_f_op_f32(trunc(368f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1024f, 812f))), _wgslsmith_f_op_f32(-431f + _wgslsmith_div_f32(-1000f, -907f)), 908f)), func_6(Struct_2(Struct_1(!global0.a), func_5(u_input.c.yyy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-399f, 1000f, -373f), vec3<f32>(-362f, 337f, -532f), global0.a.x)), func_1(Struct_2(Struct_1(global0.a), Struct_1(vec3<bool>(true, global0.a.x, true)), 91554u, Struct_1(global0.a), -314f))), reverseBits(~4294967295u), func_7(func_6(Struct_2(Struct_1(vec3<bool>(global0.a.x, false, global0.a.x)), Struct_1(global0.a), 5892u, Struct_1(global0.a), 254f), -610f), Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), 979f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1959f * 409f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -348f))))));
    var var_0 = global0.a.x;
    var var_1 = Struct_1(func_4(Struct_2(Struct_1(func_1(Struct_2(Struct_1(global0.a), Struct_1(global0.a), u_input.c.x, Struct_1(vec3<bool>(global0.a.x, true, true)), -1000f)).a), func_7(func_7(Struct_1(global0.a), Struct_1(vec3<bool>(true, global0.a.x, true))), Struct_1(vec3<bool>(true, global0.a.x, global0.a.x))), abs(15837u), func_6(Struct_2(Struct_1(global0.a), Struct_1(global0.a), u_input.a.x, Struct_1(global0.a), 1724f), _wgslsmith_f_op_f32(844f + -761f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-801f, -1000f))), vec3<f32>(995f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1158f - 484f))), -796f)).a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-412f))) - _wgslsmith_f_op_f32(-305f * 1094f)))));
    let var_3 = func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(min(1u, u_input.d ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)]), global1[_wgslsmith_index_u32(1u, 7u)], ~54259u | ~global1[_wgslsmith_index_u32(48207u, 7u)]), vec3<u32>(0u, u_input.c.x, ~u_input.c.x >> (14845u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_2)), _wgslsmith_f_op_f32(var_2 - -345f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.a), Struct_2(Struct_1(vec3<bool>(true, global0.a.x, false)), Struct_1(var_1.a), 0u, Struct_1(vec3<bool>(var_1.a.x, true, global0.a.x)), -1439f), u_input.b)).x))), func_4(Struct_2(func_1(Struct_2(Struct_1(vec3<bool>(true, var_1.a.x, true)), Struct_1(vec3<bool>(false, var_1.a.x, false)), global1[_wgslsmith_index_u32(u_input.c.x, 7u)], Struct_1(global0.a), var_2)), Struct_1(func_2(Struct_1(var_1.a), false, vec4<u32>(u_input.d, 1u, 4294967295u, 0u), var_1.a.x)), countOneBits(u_input.a.x) << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global1[_wgslsmith_index_u32(21783u, 7u)], 0u, 4294967295u, 4294967295u)) % 32u), Struct_1(func_5(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 1u, u_input.c.x), vec3<f32>(var_2, var_2, var_2), Struct_1(global0.a)).a), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, -1000f, 456f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, var_2, 1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-929f, -742f, var_2)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 1119f, 359f) * vec3<f32>(-783f, var_2, var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1439f, _wgslsmith_f_op_f32(-1000f - 212f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -317f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(975f, -1000f, -782f, var_2) + vec4<f32>(var_2, 1082f, 1535f, var_2)), vec4<f32>(var_2, var_2, 1280f, 2773f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-224f, 1363f, -2374f, var_2), vec4<f32>(var_2, -606f, -1779f, var_2))))))));
}

