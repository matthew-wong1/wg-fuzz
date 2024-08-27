struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global2: f32 = 120f;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(1i, 2147483647i, -1i), 56830u, vec4<f32>(231f, -694f, 1143f, 368f), -3545i, vec2<i32>(2736i, -1i)), Struct_1(vec3<i32>(-1i, 20803i, 0i), 0u, vec4<f32>(-445f, 1447f, -1293f, -695f), 10464i, vec2<i32>(-3024i, -1i)), Struct_1(vec3<i32>(2147483647i, -1i, 1i), 0u, vec4<f32>(580f, -817f, -514f, 263f), 1i, vec2<i32>(-28242i, -33283i)), Struct_1(vec3<i32>(-4813i, 2147483647i, 2147483647i), 39616u, vec4<f32>(-1065f, 400f, 704f, -1296f), -2339i, vec2<i32>(30528i, 0i)), Struct_1(vec3<i32>(0i, 1i, -33426i), 91743u, vec4<f32>(-586f, 662f, 783f, -683f), 20014i, vec2<i32>(-430i, -4622i)));

var<private> global4: f32 = -1000f;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    return select(vec3<bool>(u_input.b > firstLeadingBit(abs(71229u)), false, false), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, firstLeadingBit(~0u) > (~u_input.b << (_wgslsmith_add_u32(arg_1.a.b, u_input.b) % 32u)), arg_0));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global2 = -2033f;
    var var_0 = arg_1.a.c.x;
    var var_1 = arg_1.a.b;
    let var_2 = Struct_3(arg_1.a, Struct_1(_wgslsmith_mod_vec3_i32(-(arg_1.a.a & vec3<i32>(-45629i, u_input.a, 0i)), _wgslsmith_mult_vec3_i32(arg_1.a.a, vec3<i32>(-16554i, arg_1.a.d, 8i)) << (~vec3<u32>(1u, 0u, u_input.b) % vec3<u32>(32u))), arg_1.a.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_1.a.c, vec4<f32>(435f, -190f, 1344f, arg_1.a.c.x))), _wgslsmith_f_op_vec4_f32(floor(arg_1.a.c)))))), _wgslsmith_clamp_i32(-u_input.a, 20746i, u_input.a), vec2<i32>(-(~u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, arg_1.a.d) | vec4<i32>(-1i, 50277i, arg_1.a.d, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.e.x, arg_1.a.d, arg_1.a.e.x, arg_1.a.d), vec4<i32>(arg_1.a.a.x, arg_1.a.d, -48427i, arg_1.a.a.x))))), select(vec3<bool>(true, arg_0.x, false), arg_0, vec3<bool>(false, any(arg_0.yx), !func_3(false, arg_1).x)), arg_1.a, -(-abs(vec4<i32>(29745i, u_input.c, u_input.c, arg_1.a.e.x)) ^ select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, u_input.c), vec4<i32>(1797i, -8965i, arg_1.a.e.x, arg_1.a.d), vec4<i32>(11856i, -8228i, -65177i, -45226i)), ~vec4<i32>(-16443i, 1i, arg_1.a.e.x, -4702i), arg_0.x)));
    var var_3 = arg_1;
    return _wgslsmith_add_u32(~_wgslsmith_mod_u32(27429u, ~1u), 10840u);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.a.c;
    let var_1 = 12132i;
    var var_2 = Struct_3(arg_3.a, global3[_wgslsmith_index_u32(func_4(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false)), !func_3(false, Struct_2(global3[_wgslsmith_index_u32(u_input.b, 5u)])), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(8488u, arg_3.a.b << (arg_3.a.b % 32u))), 13u)]), 5u)], !vec3<bool>(true, false, (u_input.b < 39787u) | select(true, true, true)), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, arg_3.a.e.x, arg_2), vec3<i32>(2147483647i, arg_2, arg_3.a.a.x), reverseBits(arg_3.a.a)), min(arg_3.a.a, -arg_3.a.a)), min(_wgslsmith_clamp_u32(4294967295u, 4935u, 66241u) >> (firstLeadingBit(arg_3.a.b) % 32u), 21376u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_3.a.c.x, -1622f, 746f))), 2147483647i, _wgslsmith_sub_vec2_i32(reverseBits(arg_3.a.e), abs(_wgslsmith_sub_vec2_i32(arg_3.a.e, vec2<i32>(1228i, -32985i))))), abs(vec4<i32>(abs(-8558i), _wgslsmith_sub_i32(-81423i, -36291i), arg_2, arg_2) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(28216u, 29156u, arg_3.a.b, 65870u), vec4<u32>(0u, arg_3.a.b, 0u, u_input.b)), max(vec4<u32>(1u, 1u, u_input.b, 50858u), vec4<u32>(1u, 80731u, arg_3.a.b, 1u)), select(false, true, false)) % vec4<u32>(32u))));
    let var_3 = !(!var_2.c.x);
    global0 = array<Struct_2, 13>();
    return arg_1.x;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1f), arg_0.a.c.wyy, ~(-1i), arg_0));
    let var_1 = ~(~(~vec3<u32>(u_input.b, 29738u, arg_0.a.b)) >> (abs(max(vec3<u32>(45456u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, u_input.b, 1u))) % vec3<u32>(32u)));
    let var_2 = arg_0.a;
    return Struct_1(vec3<i32>(abs(firstTrailingBit(-1i)), arg_1, _wgslsmith_clamp_i32(-2147483647i, 60935i, _wgslsmith_add_i32(1i, -2147483647i))) | (vec3<i32>(-1i << (var_2.b % 32u), var_2.e.x, arg_1) | abs(-var_2.a)), ~0u, _wgslsmith_f_op_vec4_f32(step(var_2.c, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1523f - -340f) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_2.c.x + 1009f)), arg_0.a.c.x, -1973f))), arg_0.a.d, vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_0.a.a.xy, select(var_2.a.zx, var_2.e, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.b, 1u), 23u)])), _wgslsmith_mod_i32(~(-36816i) ^ abs(arg_0.a.a.x), var_2.e.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = vec4<u32>(arg_2.x, _wgslsmith_div_u32(1u, 25392u), 4294967295u, countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.a.b, 0u), u_input.b), arg_3.x)));
    let var_1 = select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_1.a.c.x > arg_1.a.c.x, arg_2.x >= arg_1.a.b, true)), false);
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f + _wgslsmith_div_f32(arg_1.a.c.x, arg_1.a.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-691f, arg_1.a.c.x)))));
    let var_3 = global3[_wgslsmith_index_u32(min(755u, firstTrailingBit(56368u >> ((var_0.x << (u_input.b % 32u)) % 32u))) & ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_2.x, arg_2.x) | vec2<u32>(u_input.b, var_0.x), _wgslsmith_mult_vec2_u32(arg_2.zz, vec2<u32>(15997u, 4294967295u))), _wgslsmith_mod_vec2_u32(countOneBits(arg_2.zz), max(arg_0.xw, arg_3.wz))), 5u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c.x - arg_1.a.c.x) + arg_1.a.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.c.x, 469f)) - -1135f)))));
    return 12279u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = array<Struct_2, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 219f, -1000f, -987f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(507f, 404f, -1357f, 1437f) - vec4<f32>(-623f, 347f, -451f, 1158f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f), _wgslsmith_f_op_f32(f32(-1f) * -2032f))), -899f, -404f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(971f * -689f), -1387f)))));
    let var_2 = vec3<u32>(func_5(abs(~(~vec4<u32>(var_0, 4294967295u, 4294967295u, 4294967295u))), Struct_2(func_1(global0[_wgslsmith_index_u32(~15361u, 13u)], 56614i & u_input.a)), ~firstLeadingBit(~vec3<u32>(0u, 97236u, 85206u)), vec4<u32>(var_0, ~(~var_0), ~_wgslsmith_mult_u32(var_0, 4294967295u), u_input.b)), ~(~((u_input.b >> (u_input.b % 32u)) & (var_0 >> (4294967295u % 32u)))), ~_wgslsmith_mod_u32(~u_input.b, func_5(vec4<u32>(4294967295u, 16599u, var_0, 63556u), Struct_2(global3[_wgslsmith_index_u32(49849u, 5u)]), firstLeadingBit(vec3<u32>(u_input.b, 53386u, 53191u)), reverseBits(vec4<u32>(45041u, 26566u, 1u, 0u)))));
    global4 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = var_2;
    var var_4 = firstLeadingBit(_wgslsmith_mult_vec3_i32(func_1(global0[_wgslsmith_index_u32(~1u, 13u)], u_input.c).a, _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, -2147483647i, -51286i), vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a, u_input.a))));
    let var_5 = vec4<i32>(abs(min(-1i, i32(-1i) * -2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(countOneBits(u_input.a), 1i, var_4.x, 2147483647i | u_input.a), countOneBits(vec4<i32>(abs(var_4.x), u_input.c, var_4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -76472i, 45507i, 2147483647i), vec4<i32>(-2147483647i, 40790i, 22840i, -2147483647i))))), ~(~reverseBits(var_4.x)), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstTrailingBit(0u), var_2.x, abs(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 698u), vec3<u32>(var_0, var_2.x, var_3.x))), func_1(global0[_wgslsmith_index_u32(var_3.x, 13u)], var_4.x).c.x, -33561i);
}

