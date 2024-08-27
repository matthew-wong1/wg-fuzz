struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.b), 20u)];
    return -209f;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> bool {
    let var_0 = 0u;
    global0 = array<Struct_2, 20>();
    var var_1 = arg_1.a.wxw;
    global0 = array<Struct_2, 20>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.c, 20u)])) * -1000f), _wgslsmith_f_op_f32(-arg_1.b.x), 974f, 1143f);
    return false;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(-2427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(-481f - -326f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1501f, 1015f), _wgslsmith_f_op_f32(max(508f, 753f)))))))));
    let var_1 = _wgslsmith_sub_i32(countOneBits(~u_input.a), -arg_1.x ^ u_input.d) | u_input.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - 2269f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))))));
    let var_3 = ~min(vec2<u32>(_wgslsmith_clamp_u32(~arg_0, u_input.c, arg_0), u_input.b), ~vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 67167u, arg_2, arg_0), vec4<u32>(4294967295u, arg_0, 32805u, 2884u))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-917f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(699f, var_0) + 1164f) - var_0)));
    return Struct_2(Struct_1(select(vec4<bool>(true, true, any(vec2<bool>(true, false)), arg_1.x == var_1), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -608f, var_2.x, -980f)))), any(vec4<bool>(false, true, any(vec3<bool>(true, false, false)), true))), select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), true));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.b.x)), -604f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x), _wgslsmith_f_op_f32(max(arg_0.a.b.x, 1407f)))), _wgslsmith_div_vec2_f32(func_4(~1u, -vec4<i32>(u_input.d, 2147483647i, 2147483647i, 45517i), ~u_input.b).a.b.zz, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))))))));
    let var_1 = _wgslsmith_mod_u32(~((firstLeadingBit(u_input.b) << (~1u % 32u)) >> (_wgslsmith_sub_u32(select(4294967295u, arg_1.x, false), 1u) % 32u)), _wgslsmith_clamp_u32(~arg_1.x, u_input.b, 4294967295u));
    var var_2 = _wgslsmith_div_i32(u_input.d, _wgslsmith_mult_i32(u_input.d, reverseBits(_wgslsmith_sub_i32(u_input.a, u_input.a))));
    let var_3 = arg_0.a.a.x;
    return Struct_1(arg_0.a.a, arg_0.a.b, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, -1607f)));
    var var_2 = Struct_2(func_5(func_4(select(~u_input.b, max(1u, 4401u), func_2(vec3<f32>(var_0.b.x, 1781f, arg_2.a.b.x), Struct_1(vec4<bool>(false, arg_1, false, false), vec4<f32>(-622f, arg_2.a.b.x, -1635f, -949f), false), vec3<u32>(arg_0.x, 1u, u_input.b))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.d, arg_3, arg_3), vec4<i32>(-2780i, u_input.d, -1i, 1i), vec4<i32>(1i, u_input.a, 12240i, -76131i)), arg_0.x), ~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_0.x, 4294967295u, 30547u), vec4<u32>(0u, u_input.b, 0u, 1u)), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 7354u))), vec3<bool>(var_0.a.x, any(arg_2.a.a), true));
    let var_3 = countOneBits(u_input.c) | 40304u;
    var var_4 = func_4(arg_0.x, select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_3, 0i, u_input.a), reverseBits(vec4<i32>(0i, arg_3, arg_3, -1i))), max(vec4<i32>(arg_3, -2147483647i, arg_3, -9192i), firstTrailingBit(vec4<i32>(arg_3, -21001i, u_input.a, -36546i))), var_2.a.a) ^ (~(vec4<i32>(-42884i, arg_3, u_input.a, -2147483647i) >> (vec4<u32>(var_3, 122040u, 1u, 86174u) % vec4<u32>(32u))) >> (~countOneBits(vec4<u32>(arg_0.x, 0u, u_input.b, var_3)) % vec4<u32>(32u))), arg_0.x);
    return select(!(!vec2<bool>(var_2.a.a.x, all(vec2<bool>(false, arg_1)))), func_5(func_4(countOneBits(40269u), firstLeadingBit(-vec4<i32>(arg_3, 20178i, arg_3, -17588i)), 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, arg_0.x, arg_0.x, 35520u), vec4<u32>(u_input.b, 7025u, u_input.c, arg_0.x)), firstTrailingBit(vec4<u32>(var_3, var_3, 55541u, var_3))), ~abs(16797u), u_input.b, 1u)).a.xz, func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_1.x)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, var_0.b.x))), arg_2.a, firstTrailingBit(vec3<u32>(var_3 << (var_3 % 32u), 1u, ~55394u))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    let var_0 = ~(~vec4<i32>(-(i32(-1i) * -1i), u_input.a, 0i, -(1i & arg_0.x)));
    var var_1 = u_input.a;
    var_1 = arg_0.x >> (u_input.c % 32u);
    let var_2 = max(u_input.b, _wgslsmith_add_u32(_wgslsmith_div_u32(min(u_input.b, 31443u), 67211u) ^ 1u, u_input.c));
    return Struct_1(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b | u_input.b, ~u_input.c, 38674u, 36433u), vec4<u32>(var_2, ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 4294967295u), vec2<u32>(140567u, 9942u)), var_2 ^ var_2)), var_0, u_input.b).a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1175f - -1311f), 557f, arg_1.x & arg_1.x)), _wgslsmith_f_op_f32(-949f * _wgslsmith_f_op_f32(1266f - 2588f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2158f, -238f), -408f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 117f))))), arg_1.x);
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    var var_0 = func_4(arg_0.x, ~max(~(vec4<i32>(-2147483647i, 0i, u_input.a, 2147483647i) << (vec4<u32>(arg_0.x, 11421u, arg_0.x, 66017u) % vec4<u32>(32u))), abs(-vec4<i32>(2147483647i, 0i, 1i, -7083i))), ~arg_0.x >> (~1u % 32u));
    var var_1 = func_4(firstLeadingBit(~(_wgslsmith_add_u32(arg_0.x, u_input.c) ^ arg_0.x)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(11192i, u_input.d)), 0i, firstLeadingBit(u_input.a)), _wgslsmith_clamp_i32(reverseBits(-40805i), 1i, -u_input.d), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(0i, u_input.a))), -u_input.a) >> (_wgslsmith_clamp_vec4_u32(reverseBits(select(vec4<u32>(4294967295u, 42075u, 57643u, 4294967295u), vec4<u32>(77753u, 1u, arg_0.x, 20148u), vec4<bool>(var_0.a.a.x, true, false, arg_1))), vec4<u32>(52879u, ~1u, ~75297u, 1u), min(~vec4<u32>(27071u, arg_0.x, 0u, u_input.c), countOneBits(vec4<u32>(u_input.b, arg_0.x, u_input.b, 5938u)))) % vec4<u32>(32u)), arg_0.x);
    var var_2 = 33962i;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.c & max(u_input.c, arg_0.x), _wgslsmith_div_u32(u_input.c, arg_0.x), ~arg_0.x), arg_0.x), 20u)];
}

fn func_8(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_5(Struct_2(Struct_1(vec4<bool>(true, !arg_0.a.c, !arg_0.a.a.x, false), vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(ceil(-406f)), _wgslsmith_f_op_f32(f32(-1f) * -268f), -1000f), arg_0.b.x), func_6(firstLeadingBit(vec2<i32>(1i, 2147483647i)), vec2<bool>(true || arg_0.a.a.x, func_2(arg_0.a.b.yxz, arg_0.a, vec3<u32>(7980u, u_input.b, 82511u)))).a.wyy), vec4<u32>(u_input.b, ~(u_input.c >> (19835u % 32u)) << ((~u_input.b | u_input.c) % 32u), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, countOneBits(4294967295u), u_input.b), vec3<u32>(u_input.c, u_input.c, u_input.c)))).a;
    let var_1 = 4294967295u;
    var_0 = !arg_0.a.a;
    var var_2 = vec4<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(-arg_0.a.b.x), -304f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.b.x))));
    var var_3 = u_input.c;
    return func_5(func_4(_wgslsmith_mod_u32(var_1, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1, u_input.b, 1u, u_input.c)), ~vec4<u32>(u_input.b, 0u, 66728u, 95422u))), select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-58342i, u_input.d, u_input.a), vec3<i32>(-38062i, u_input.a, u_input.d)), -u_input.d, reverseBits(8332i), u_input.d), vec4<i32>(-1i, -u_input.a, abs(u_input.a), firstLeadingBit(u_input.d)), !func_4(14149u, vec4<i32>(22305i, u_input.a, 4728i, -31876i), var_1).a.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, var_1) << (vec3<u32>(8009u, u_input.c, 0u) % vec3<u32>(32u)), ~vec3<u32>(var_1, 4294967295u, u_input.b)) ^ _wgslsmith_div_u32(4294967295u, u_input.c)), ~countOneBits(vec4<u32>(min(32631u, 4294967295u), ~1u, ~0u, 55076u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = Struct_2(func_8(func_7(_wgslsmith_add_vec2_u32(vec2<u32>(75518u, u_input.b) << (vec2<u32>(u_input.c, 58004u) % vec2<u32>(32u)), vec2<u32>(1u, 0u)), (i32(-1i) * -3455i) != u_input.d, func_6(abs(vec2<i32>(u_input.a, 60081i)), func_1(vec2<u32>(0u, 4294967295u), true, Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<f32>(-1881f, 1605f, -358f, 179f), false), vec3<bool>(true, false, true)), u_input.a)), vec2<bool>(true, true))), vec3<bool>(true, !func_6(-vec2<i32>(u_input.d, u_input.d), func_4(u_input.c, vec4<i32>(u_input.d, u_input.d, -1i, u_input.d), 4294967295u).b.xy).a.x, true));
    let var_1 = var_0.a.c;
    var var_2 = abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(8269i, -35337i), vec2<i32>(-1i) * -vec2<i32>(u_input.d, u_input.a), vec2<i32>(~u_input.d, -12567i))));
    var var_3 = (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.c), ~6251u, 0u & u_input.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(53986u, 1u, 0u), vec3<u32>(u_input.b, u_input.c, 1u) >> (vec3<u32>(4294967295u, 1u, u_input.c) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(13564u, u_input.c, u_input.c)) << (~vec3<u32>(u_input.c, 13762u, 4294967295u) % vec3<u32>(32u))) << ((max(~vec3<u32>(u_input.b, 1u, 4294967295u), ~vec3<u32>(30045u, u_input.b, u_input.b)) ^ vec3<u32>(u_input.b ^ 48121u, 35131u, u_input.c)) % vec3<u32>(32u))) >> (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 19721u, u_input.b), ~vec4<u32>(35222u, 0u, u_input.c, 0u)), 22258u, 35684u) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(-func_5(Struct_2(Struct_1(var_0.a.a, var_0.a.b, false), vec3<bool>(false, var_0.b.x, false)), vec4<u32>(u_input.c, var_3.x, 0u, 1u)).b.x))) * vec2<f32>(_wgslsmith_div_f32(-1121f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.a.b.x)), _wgslsmith_f_op_f32(-var_0.a.b.x)))), _wgslsmith_f_op_f32(670f + 1211f)));
    var_2 = firstTrailingBit(vec2<i32>(-u_input.a >> (u_input.b % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.a, var_2.x, u_input.a), vec4<i32>(var_2.x, 25703i, 1i, var_2.x)) | (vec4<i32>(u_input.d, 1i, 6114i, -2147483647i) << (vec4<u32>(11333u, u_input.b, 3864u, var_3.x) % vec4<u32>(32u))), ~(-vec4<i32>(0i, -1i, 0i, -58893i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.c, _wgslsmith_clamp_vec4_i32(~(-(vec4<i32>(u_input.d, u_input.a, var_2.x, u_input.d) >> (vec4<u32>(u_input.b, u_input.c, 7744u, var_3.x) % vec4<u32>(32u)))), abs(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.d), vec4<i32>(u_input.a, -48114i, u_input.a, var_2.x), vec4<i32>(u_input.d, -1i, 2147483647i, 2147483647i)), -vec4<i32>(-1i, -16609i, u_input.a, -16201i))), firstTrailingBit(abs(vec4<i32>(u_input.d, 2147483647i, -41183i, var_2.x)))));
}

