struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(2052u, Struct_1(22983i, false, vec3<i32>(i32(-2147483648), 8606i, 1824i)), vec3<i32>(1i, 0i, -70109i)), Struct_2(51008u, Struct_1(14933i, false, vec3<i32>(-28202i, i32(-2147483648), -761i)), vec3<i32>(-22370i, 2673i, -24982i)), Struct_2(9385u, Struct_1(23069i, true, vec3<i32>(2147483647i, -50511i, 53594i)), vec3<i32>(32974i, -1i, 35911i)), Struct_2(5962u, Struct_1(24427i, false, vec3<i32>(1i, 25773i, 2806i)), vec3<i32>(6862i, i32(-2147483648), 1725i)));

var<private> global1: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec3<f32>(-746f, -841f, -1877f), Struct_1(0i, true, vec3<i32>(1i, 18212i, 0i)), Struct_1(-14748i, false, vec3<i32>(20213i, 15055i, 22359i)), vec2<f32>(371f, -212f)), Struct_4(vec3<f32>(698f, 184f, -172f), Struct_1(-1649i, true, vec3<i32>(1i, 2147483647i, 0i)), Struct_1(-27687i, false, vec3<i32>(-1761i, 51426i, -46917i)), vec2<f32>(477f, 211f)));

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<f32>, 7>;

var<private> global4: array<i32, 11>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = global2.x;
    global1 = array<Struct_4, 2>();
    global1 = array<Struct_4, 2>();
    let var_1 = !select(!vec3<bool>(true, any(vec3<bool>(true, true, false)), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), any(vec2<bool>(false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), true), vec3<bool>(any(vec3<bool>(true, false, true)) && all(vec4<bool>(true, false, false, false)), !all(vec4<bool>(true, false, false, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    let var_2 = 1595f;
    return -18426i;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = select(vec4<bool>(any(!vec4<bool>(false, true, arg_0.b, false)), false, arg_0.b, false), select(!select(vec4<bool>(arg_0.b, false, true, true), select(vec4<bool>(false, true, arg_0.b, arg_0.b), vec4<bool>(false, arg_0.b, arg_0.b, false), true), vec4<bool>(true, false, arg_0.b, true)), !select(select(vec4<bool>(arg_0.b, true, arg_0.b, true), vec4<bool>(arg_0.b, true, true, arg_0.b), false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), true), vec4<bool>(false, arg_0.b, true, 460u <= _wgslsmith_mult_u32(45825u, u_input.b))), !(!vec4<bool>(arg_0.b, false, true, true)));
    global0 = array<Struct_2, 4>();
    global1 = array<Struct_4, 2>();
    let var_1 = u_input.b;
    var var_2 = Struct_3(u_input.a, global2.xzy, !var_0);
    return _wgslsmith_mod_vec3_i32(arg_0.c, arg_0.c);
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<f32>, 7>();
    global1 = array<Struct_4, 2>();
    var var_0 = (max(global4[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 11u)] & (i32(-1i) * -70440i), -1i) | firstLeadingBit(global4[_wgslsmith_index_u32(u_input.b, 11u)])) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, ~u_input.a | -2147483647i), 22070i);
    global3 = array<vec4<f32>, 7>();
    let var_1 = global4[_wgslsmith_index_u32(17616u, 11u)];
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15951i, global4[_wgslsmith_index_u32(0u, 11u)]), vec2<i32>(-11249i, u_input.a | -2147483647i)), _wgslsmith_mult_i32(u_input.a, 0i)), true, firstTrailingBit(func_4(Struct_1(func_3(), global2.x < 430f, countOneBits(vec3<i32>(-26434i, global4[_wgslsmith_index_u32(4294967295u, 11u)], 39960i))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-478f, -1000f, arg_2.b))), 461f)) + _wgslsmith_f_op_f32(trunc(-1151f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.ywy, global2.www)), vec3<f32>(_wgslsmith_f_op_f32(min(492f, -764f)), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(global2.x - 2278f)), all(select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(false, true, false))))), global2.wxx) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.zxw - vec3<f32>(global2.x, -496f, global2.x)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(global2.x, 2174f)), _wgslsmith_f_op_f32(-489f + -206f), -1195f), _wgslsmith_f_op_vec3_f32(abs(global2.xyz)))))));
    var var_2 = arg_2;
    let var_3 = min(~(~_wgslsmith_mult_u32(3714u, firstLeadingBit(u_input.b))), ~(~10344u));
    let var_4 = _wgslsmith_mult_vec2_u32(~(~vec2<u32>(~var_3, 4294967295u | var_3)), ~vec2<u32>(1u, 1u));
    return Struct_3(reverseBits(1i), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-3078f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-197f, -1186f) - _wgslsmith_f_op_f32(-1336f + 2584f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + global2.x), 1097f)), !vec4<bool>(select(var_1.x < -1000f, true, u_input.b <= 22693u), arg_2.b, true, false));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(global2.x));
    let var_1 = true;
    let var_2 = ~arg_2.x;
    let var_3 = Struct_4(arg_0.b, Struct_1(u_input.a, all(arg_0.c.zz), select(vec3<i32>(-arg_1.b.a, arg_2.x, arg_0.a & -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, 11113i), abs(vec3<i32>(-28814i, 0i, arg_2.x))), vec3<bool>(arg_0.c.x, false, arg_0.c.x))), arg_1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, -1329f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(532f, -1000f), vec2<f32>(623f, global2.x)))))), _wgslsmith_f_op_vec2_f32(func_5(arg_1.c, -193f == global2.x, arg_1.b, func_5(vec3<i32>(-23222i, -9931i, 51612i), arg_1.b.b, Struct_1(62625i, true, vec3<i32>(arg_0.a, var_2, u_input.a)), arg_0.c.zw).c.yx).b.yx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.yx, vec2<f32>(global2.x, arg_0.b.x)))))));
    var var_4 = Struct_3(-37146i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_3.a, global2.zzz) + _wgslsmith_f_op_vec3_f32(-var_3.a)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.zzw), _wgslsmith_f_op_vec3_f32(-var_3.a)))))), !select(!func_5(arg_1.b.c, var_1, var_3.b, arg_0.c.xx).c, vec4<bool>(func_2().b, arg_1.c.x != -1i, false, var_3.c.b && true), all(arg_0.c.zyy)));
    return (~(~_wgslsmith_sub_u32(4294967295u, arg_1.a)) & arg_1.a) ^ ~_wgslsmith_clamp_u32(~_wgslsmith_add_u32(arg_1.a, u_input.b), _wgslsmith_add_u32(1u, ~82276u), 1u);
}

fn func_1(arg_0: bool) -> bool {
    global4 = array<i32, 11>();
    var var_0 = vec4<i32>(-_wgslsmith_mod_i32(~(-u_input.a), firstTrailingBit(global4[_wgslsmith_index_u32(u_input.b, 11u)])), global4[_wgslsmith_index_u32(u_input.b, 11u)], _wgslsmith_add_i32(-36389i, (1i << (u_input.b % 32u)) | global4[_wgslsmith_index_u32(~(u_input.b << (u_input.b % 32u)), 11u)]), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_6(func_5(firstTrailingBit(vec3<i32>(43564i, global4[_wgslsmith_index_u32(1u, 11u)], 13993i)), true, func_2(), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_0)), Struct_2(~u_input.b, Struct_1(u_input.a, arg_0, vec3<i32>(14680i, -15906i, 2147483647i)), vec3<i32>(-6360i, u_input.a, global4[_wgslsmith_index_u32(u_input.b, 11u)]) >> (vec3<u32>(25968u, u_input.b, u_input.b) % vec3<u32>(32u))), min(vec4<i32>(u_input.a, u_input.a, global4[_wgslsmith_index_u32(0u, 11u)], 1i), vec4<i32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], global4[_wgslsmith_index_u32(12094u, 11u)], u_input.a, 32894i) >> (vec4<u32>(u_input.b, 22951u, u_input.b, u_input.b) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, u_input.b, 0u)), ~max(vec3<u32>(95498u, 19890u, 24960u), vec3<u32>(u_input.b, 32110u, 4913u)))), 11u)]);
    let var_1 = arg_0;
    var_0 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(~abs(global4[_wgslsmith_index_u32(7426u, 11u)]), firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.zw, vec2<i32>(-2147483647i, u_input.a))), _wgslsmith_mult_i32(1i, 0i), firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, -2147483647i, u_input.a))), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.x, -20050i, -32688i, u_input.a)), ~vec4<i32>(-22653i, u_input.a, var_0.x, -47289i)) << (((vec4<u32>(u_input.b, u_input.b, u_input.b, 11146u) >> (vec4<u32>(u_input.b, 43650u, u_input.b, u_input.b) % vec4<u32>(32u))) | (vec4<u32>(4294967295u, 102047u, 21813u, 1u) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u))));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), u_input.b ^ u_input.b), 7u)];
    return true;
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.b >> (u_input.b % 32u), ~1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(12339u, 4294967295u, 30388u, 1395u)), vec4<u32>(0u, u_input.b, 0u, 31550u) & vec4<u32>(0u, 1u, u_input.b, 0u)), 38060u, func_6(Struct_3(-29941i, global2.zyz, vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true)), global0[_wgslsmith_index_u32(67231u, 4u)], ~vec4<i32>(u_input.a, -14330i, arg_0.a, u_input.a))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 30361u) & vec4<u32>(u_input.b, 9697u, u_input.b, 1u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), 7u)]);
    global1 = array<Struct_4, 2>();
    var var_0 = 1389f;
    var var_1 = global1[_wgslsmith_index_u32(u_input.b, 2u)];
    var var_2 = Struct_2(abs(~(~u_input.b)), Struct_1(var_1.c.a, !(!(!var_1.c.b)), select(var_1.b.c, countOneBits(var_1.b.c << (vec3<u32>(23263u, u_input.b, u_input.b) % vec3<u32>(32u))), arg_0.c.wxw)), ~vec3<i32>(~2147483647i, global4[_wgslsmith_index_u32(firstLeadingBit(4811u), 11u)], 2147483647i));
    return Struct_1(0i, true, -vec3<i32>(-min(-42785i, var_1.b.c.x), -44883i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, var_1.c.a, var_1.b.a, 1i), vec4<i32>(-14598i, global4[_wgslsmith_index_u32(var_2.a, 11u)], 69447i, -1i)), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1384f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * -964f), _wgslsmith_f_op_f32(max(171f, global2.x))))), 1f);
    global1 = array<Struct_4, 2>();
    var var_0 = func_7(Struct_3(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 33293i, 2147483647i, u_input.a)), vec4<i32>(max(-9555i, global4[_wgslsmith_index_u32(15425u, 11u)]), 2147483647i, -12268i, 21188i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2662f, -1423f, 237f))))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(all(vec4<bool>(false, true, false, true)), all(vec4<bool>(true, true, true, true)), true, func_1(true)), vec4<bool>(all(vec4<bool>(true, true, false, false)), 499f < global2.x, true, false))));
    var_0 = func_2();
    var_0 = Struct_1(func_5(vec3<i32>(-2147483647i, min(1542i, ~(-31290i)), var_0.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(23954i, -1953i), vec2<i32>(40006i, var_0.c.x))), select(abs(u_input.a), 2147483647i >> (1u % 32u), var_0.b) <= ~(-u_input.a), func_7(func_5(vec3<i32>(2147483647i, var_0.c.x, var_0.c.x), var_0.b, func_2(), !vec2<bool>(var_0.b, var_0.b))), vec2<bool>(all(func_5(var_0.c, true, Struct_1(-2147483647i, true, vec3<i32>(-68439i, global4[_wgslsmith_index_u32(u_input.b, 11u)], 26145i)), vec2<bool>(true, var_0.b)).c.wy), var_0.b)).a, false == func_2().b, _wgslsmith_div_vec3_i32(var_0.c, vec3<i32>(0i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-22897i, -30359i, var_0.a, 8621i), vec4<i32>(2147483647i, -1i, var_0.c.x, -66827i)), _wgslsmith_div_i32(-1i, 51514i), false), ~max(-2147483647i, -2147483647i))));
    global0 = array<Struct_2, 4>();
    let var_1 = countOneBits(select(vec4<i32>(u_input.a, ~firstTrailingBit(global4[_wgslsmith_index_u32(u_input.b, 11u)]), func_2().c.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 115853u, 32202u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 0u)) | 1u, 11u)]), -firstTrailingBit(vec4<i32>(10244i, global4[_wgslsmith_index_u32(4294967295u, 11u)], -12320i, global4[_wgslsmith_index_u32(u_input.b, 11u)])), !select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b, var_0.b, false, var_0.b), any(vec4<bool>(var_0.b, false, true, true)))));
    global1 = array<Struct_4, 2>();
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.b), 7u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, global2.x, 1338f, global2.x) - global3[_wgslsmith_index_u32(u_input.b, 7u)]))), !select(!vec4<bool>(var_0.b, true, var_0.b, var_0.b), !vec4<bool>(false, var_0.b, var_0.b, true), !vec4<bool>(var_0.b, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

