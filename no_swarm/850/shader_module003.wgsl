struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<f32>(1423f, 807f, -511f), Struct_1(vec2<i32>(-2386i, i32(-2147483648)), 223f)), Struct_2(vec3<f32>(1000f, 137f, -361f), Struct_1(vec2<i32>(19695i, 2147483647i), -1000f)), Struct_2(vec3<f32>(-2308f, 1281f, 748f), Struct_1(vec2<i32>(-1i, 1i), 1000f)), Struct_2(vec3<f32>(284f, 265f, 924f), Struct_1(vec2<i32>(0i, -1i), 433f)), Struct_2(vec3<f32>(395f, 267f, -126f), Struct_1(vec2<i32>(-1i, 31612i), 466f)), Struct_2(vec3<f32>(-405f, 1092f, -1000f), Struct_1(vec2<i32>(9060i, -36502i), 1490f)), Struct_2(vec3<f32>(235f, 1447f, -1000f), Struct_1(vec2<i32>(-71569i, 7597i), -877f)), Struct_2(vec3<f32>(-1000f, 1217f, 253f), Struct_1(vec2<i32>(i32(-2147483648), 1591i), 644f)), Struct_2(vec3<f32>(683f, -1436f, -1290f), Struct_1(vec2<i32>(-43343i, 1i), -1406f)), Struct_2(vec3<f32>(875f, 658f, 217f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 787f)));

var<private> global1: i32;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = -(firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, arg_0)) << (arg_1.x % 32u)) >> (_wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_div_u32(~(arg_1.x ^ 9722u), arg_1.x), min(112247u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.x, 14104u), _wgslsmith_sub_vec3_u32(arg_1, arg_1)))) % 32u);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global2 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec2<bool>(true, true)))) & !(!all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(700f, -1867f) - vec2<f32>(-1656f, -1000f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(759f, -352f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 621f)) - vec2<f32>(-828f, -2013f)))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(625f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f))))));
    return vec3<bool>(!(true == all(vec3<bool>(true, true, true))), true, arg_1.x > _wgslsmith_mod_u32(select(_wgslsmith_add_u32(arg_1.x, arg_1.x), abs(arg_1.x), true), ~abs(arg_1.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1430f))), 132f)), arg_2.x));
    var var_1 = select(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, arg_0.x, arg_0.x), arg_0.x))), !(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), true);
    let var_2 = arg_0.xx;
    var var_3 = max(~(~(~(~arg_1))), _wgslsmith_clamp_vec2_u32(arg_1, arg_1, ~arg_1));
    let var_4 = Struct_4(_wgslsmith_dot_vec4_i32(reverseBits(firstTrailingBit(abs(vec4<i32>(29032i, -34003i, 2147483647i, 1i)))), (vec4<i32>(-2147483647i, -1i, -1i, 2147483647i) << (vec4<u32>(16334u, arg_1.x, 0u, 8689u) % vec4<u32>(32u))) | select(vec4<i32>(u_input.a, u_input.b.x, 1i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-44559i, u_input.b.x, u_input.a, 54710i), vec4<i32>(-1i, 30642i, u_input.a, u_input.b.x)), !var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-var_0), -1000f, arg_2.x)))));
    return all(var_2);
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<bool>(true, func_4(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_3(u_input.a, vec3<u32>(1238u, 0u, 0u))), func_3(1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 3952u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 99670u, 0u))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)))), vec2<u32>(1u, ~_wgslsmith_mod_u32(89571u, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1399f, -1019f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1041f, -664f), vec2<f32>(896f, -561f))) + vec2<f32>(-1084f, -1000f)))), !(!(!func_4(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 40247u), vec2<f32>(-717f, -622f)))), select(!any(func_3(-1i, vec3<u32>(60763u, 4294967295u, 44445u)).yy), !func_4(vec3<bool>(false, false, false), abs(vec2<u32>(24663u, 44825u)), vec2<f32>(792f, 618f)), any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~16568u, ~2729u, firstLeadingBit(1u))) ^ ~max(67591u, ~4294967295u), abs(0u));
    let var_2 = abs(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-5119i, -45853i, u_input.b.x)), -_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.b.x), vec3<i32>(0i, -35865i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 13011i, 0i), vec3<i32>(u_input.b.x, 1i, 0i)))));
    var var_3 = ~abs(1u);
    var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(select(reverseBits(4294967295u), max(23517u, _wgslsmith_dot_vec3_u32(vec3<u32>(19100u, 0u, 52347u), vec3<u32>(39057u, 14528u, 14263u))), var_0.x), abs(~1u), 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(0u, 1u, 0u, 4294967295u), ~vec4<u32>(4294967295u, 36365u, 104038u, 1389u)), vec4<u32>(~52700u, min(33691u, 4294967295u), abs(4294967295u), ~4294967295u)), firstTrailingBit(85996u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, 33311u, 29207u, 41035u), vec4<u32>(35438u, 0u, 1u, 4294967295u), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))));
    return Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9377i, abs(943i)), ~vec2<i32>(-var_2.x, u_input.a | 27468i), ~u_input.b), 958f);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    var var_0 = (vec4<u32>(0u, min(11895u, 55763u), ~reverseBits(1u), ~firstLeadingBit(arg_0)) << (select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(5967u, arg_0, arg_0, 0u), vec4<u32>(1u, arg_0, 0u, arg_0)), _wgslsmith_mod_u32(arg_0, 54692u), _wgslsmith_mod_u32(arg_0, arg_0), 1u), vec4<u32>(4294967295u, 3273u, ~arg_0, ~arg_0), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), all(vec2<bool>(true, false)))) % vec4<u32>(32u))) & ~(~select(~vec4<u32>(34312u, 55028u, 2738u, 0u), vec4<u32>(10951u, 0u, 1u, arg_0) | vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<bool>(false, false, false, true)));
    global1 = -arg_1.a.x;
    let var_1 = var_0.x < ~257u;
    global0 = array<Struct_2, 10>();
    global2 = func_4(vec3<bool>(true, var_1 && true, !(!var_1)), var_0.zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1315f, 473f)))))) | any(vec3<bool>(func_4(select(vec3<bool>(true, true, true), vec3<bool>(var_1, var_1, false), false), var_0.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_1.b) - vec2<f32>(1109f, 1081f))), true, func_4(!vec3<bool>(var_1, var_1, var_1), ~var_0.xy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b, arg_2), vec2<f32>(284f, -350f), var_1)))));
    return vec4<i32>(-1i, _wgslsmith_mult_i32(~arg_1.a.x, -arg_1.a.x), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.a, 1i, arg_1.a.x, u_input.b.x)), vec4<i32>(countOneBits(_wgslsmith_div_i32(arg_1.a.x, arg_1.a.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, arg_1.a.x), ~u_input.a), -1i, -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b))), arg_1.a.x);
}

fn func_1() -> i32 {
    global1 = ~_wgslsmith_dot_vec4_i32(func_5(14333u, func_2(), -264f), ~countOneBits(abs(vec4<i32>(u_input.a, u_input.a, -37909i, u_input.b.x))));
    global2 = !any(vec2<bool>(false, true));
    var var_0 = Struct_1(u_input.b, 1403f);
    let var_1 = countOneBits(~(~vec4<u32>(1u, 1u, 1u, 1u)) << (firstTrailingBit(~vec4<u32>(32470u, 0u, 4294967295u, 4294967295u)) % vec4<u32>(32u)));
    global2 = _wgslsmith_sub_u32(var_1.x, 1u) != var_1.x;
    return abs(_wgslsmith_mult_i32(-2147483647i, var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    let var_0 = Struct_4(_wgslsmith_mod_i32(-func_1() ^ countOneBits(~u_input.b.x), _wgslsmith_mod_i32(u_input.a, abs(u_input.b.x) << (~445u % 32u))), vec4<f32>(2462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1913f) - -396f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(floor(1853f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_f_op_f32(max(-314f, -1000f)))));
    global2 = true & !(_wgslsmith_f_op_f32(-var_0.b.x) <= var_0.b.x);
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, ~vec2<i32>(0i, -1i)), select(vec2<i32>(u_input.b.x, var_0.a), -u_input.b, vec2<bool>(true, true))) | vec2<i32>(u_input.b.x, u_input.a), -497f);
    var var_2 = var_0.b.yyx;
    var var_3 = vec2<i32>(-3485i, -33766i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~(~4294967295u)), 18958u), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, var_0.b.x, var_1.b, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x * 564f), -846f)))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.b))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 0u, 29712u), _wgslsmith_clamp_vec4_u32(vec4<u32>(67148u, 86793u, 11804u, 54343u), vec4<u32>(4294967295u, 101081u, 0u, 0u), vec4<u32>(4294967295u, 8948u, 1u, 8700u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(13865u, 0u, 8247u, 1u)), ~vec4<u32>(4294967295u, 1u, 4294967295u, 8674u))), vec4<i32>(countOneBits(u_input.a), var_3.x, _wgslsmith_mult_i32(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(-var_1.a.x, ~u_input.a, 1i)), var_3.x));
}

