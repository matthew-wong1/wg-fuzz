struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 20> = array<f32, 20>(-491f, 657f, 901f, -743f, 473f, -834f, 263f, -1000f, 338f, 470f, 1151f, -1564f, 1000f, -328f, 1068f, 1895f, -345f, -167f, -1168f, 555f);

var<private> global3: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-844f, -1863f), vec2<f32>(-173f, -1764f), vec2<f32>(1293f, 1000f), vec2<f32>(-928f, -618f), vec2<f32>(860f, -1000f), vec2<f32>(279f, -1826f), vec2<f32>(-159f, -1219f), vec2<f32>(-590f, -622f), vec2<f32>(1220f, -1000f), vec2<f32>(-1000f, 536f), vec2<f32>(1440f, 397f), vec2<f32>(-754f, 1368f), vec2<f32>(-233f, 1835f), vec2<f32>(-727f, 467f), vec2<f32>(278f, -1171f), vec2<f32>(766f, -409f), vec2<f32>(-1000f, -321f), vec2<f32>(1167f, 1067f), vec2<f32>(-578f, -1157f), vec2<f32>(2137f, -117f), vec2<f32>(387f, -209f), vec2<f32>(-1307f, -901f), vec2<f32>(-1373f, -515f), vec2<f32>(-1248f, 636f), vec2<f32>(-807f, -173f), vec2<f32>(803f, 537f), vec2<f32>(-2055f, -742f), vec2<f32>(-771f, 176f), vec2<f32>(712f, -818f));

var<private> global4: array<vec3<bool>, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    global3 = array<vec2<f32>, 29>();
    var var_0 = _wgslsmith_f_op_f32(floor(-513f));
    global3 = array<vec2<f32>, 29>();
    var var_1 = Struct_5(vec4<bool>(true, all(!select(vec4<bool>(arg_3.x, true, arg_3.x, true), vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x))), !(true & any(arg_3)), arg_2.b.x != 1i));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1013f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-284f - global1.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a, 20u)]))))) + -1000f) - 650f);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = true;
    let var_1 = !(-994f != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(36325u, 20u)] * 1445f), arg_3.x)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(f32(-1f) * -732f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_0.b.x, Struct_4(_wgslsmith_mod_u32(32085u, u_input.b.x)), Struct_3(max(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 1u, 1u, 1676u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 1u, 37714u, u_input.b.x)), _wgslsmith_sub_vec2_i32(arg_0.b.wx, arg_2.yx)), !(!vec2<bool>(false, var_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c, Struct_4(u_input.b.x), Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(16618u, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 0u, u_input.a), vec2<i32>(u_input.c, 0i)), vec2<bool>(var_1, true))) - global2[_wgslsmith_index_u32(~0u, 20u)]) - _wgslsmith_div_f32(arg_3.x, global2[_wgslsmith_index_u32(1u, 20u)])) - global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(30453u, 5391u)), 20u)]));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(341f, arg_0.a.a, true)) - _wgslsmith_f_op_f32(func_3(0i, Struct_4(0u), Struct_3(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a, 4334u, 1u), vec2<i32>(arg_0.b.x, 2147483647i)), vec2<bool>(false, false))))))), -1454f);
    let var_4 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(13067i, arg_2.x, ~87695i, -12809i & arg_2.x), reverseBits(-vec4<i32>(arg_2.x, u_input.c, u_input.c, arg_1))), Struct_4(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(50026u, 25u)]), 25u)] << (abs(global0[_wgslsmith_index_u32(1u, 25u)]) % 32u)), Struct_3(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(9457u, 25u)], 1u, u_input.a, 1u)) | ~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 0u, 30000u), arg_2.xz), select(!vec2<bool>(true, var_1), select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(true, var_1)), select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), false)), !vec2<bool>(false, var_1)))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(31818u, 25u)], 25u)] & u_input.a, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(~u_input.a, 25u)]), _wgslsmith_mod_u32(~(~897u), ~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(32447u, 25u)], 0u)), select(57665u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(select(u_input.b.x, 0u, var_1), 25u)], select(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true)), var_1)), select(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17297u, 25u)], 25u)], 25u)], 13515u), ~vec4<u32>(global0[_wgslsmith_index_u32(9891u, 25u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 25u)], 1569u)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(80748u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 7911u, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49059u, 25u)], 25u)], global0[_wgslsmith_index_u32(7309u, 25u)], 56142u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24697u, 25u)], 25u)]), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(64747u, 25u)], 0u, 0u)), ~vec4<u32>(91992u, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(91207u, 25u)]))), _wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(65780u, u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 34851u))), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx), u_input.b.x, u_input.a)), select(!select(vec4<bool>(false, true, var_1, false), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, true, true, var_1)), !(!vec4<bool>(true, false, var_1, false)), !(!var_1))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = Struct_2(Struct_1(479f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(-2103f + -1090f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(1i, -arg_0, true), abs(1i), firstLeadingBit(_wgslsmith_sub_i32(10326i, 0i)), ~_wgslsmith_mult_i32(-1i, 0i)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(8691i, -20804i, arg_0, -79048i), vec4<i32>(-2147483647i, u_input.c, -12630i, arg_2.b.x)) ^ abs(vec4<i32>(-5644i, 43726i, 31175i, -1i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -1i, u_input.c), vec3<i32>(30010i, 2147483647i, arg_0)) >> (_wgslsmith_div_u32(0u, arg_2.a.x) % 32u), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(58766i, arg_2.b.x, u_input.c, 2147483647i), vec4<i32>(arg_2.b.x, 2147483647i, 1i, 30027i)) << (arg_2.a.x % 32u), arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(var_0.a.a)));
    return var_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_4(~u_input.a);
    global3 = array<vec2<f32>, 29>();
    global3 = array<vec2<f32>, 29>();
    global3 = array<vec2<f32>, 29>();
    global0 = array<u32, 25>();
    return func_4(u_input.c, true, Struct_3(_wgslsmith_sub_vec4_u32(abs(reverseBits(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.a))), func_2(Struct_2(Struct_1(global1.x, arg_1), vec4<i32>(0i, -2147483647i, u_input.c, u_input.c)), 1i, vec3<i32>(u_input.c, u_input.c, 4471i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, 1088f, -1234f), vec3<f32>(arg_3, 1000f, -370f))))), -(~vec2<i32>(2147483647i, 1i))), _wgslsmith_f_op_f32(951f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(abs(0u), firstLeadingBit(var_0.a)), 20u)] - _wgslsmith_f_op_f32(f32(-1f) * -120f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = Struct_2(arg_0, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-25459i, u_input.c, 6265i, u_input.c), vec4<i32>(u_input.c, -42788i, u_input.c, -85343i)) << (firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 52067u, 53674u, arg_2.a)) % vec4<u32>(32u)), vec4<i32>(-18664i, 1i, -_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(~vec3<i32>(-27483i, 1i, -9573i), select(vec3<i32>(0i, 21229i, u_input.c), vec3<i32>(u_input.c, -41287i, -1i), vec3<bool>(true, false, false)))), -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<i32>(u_input.c, -19519i, u_input.c, 2147483647i))));
    global4 = array<vec3<bool>, 4>();
    let var_1 = ~firstTrailingBit(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 0u, 1u, arg_3)) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a, u_input.b.x, 31018u, 1376u), vec4<u32>(21279u, 24728u, 51948u, 0u)) | ~vec4<u32>(1u, 0u, 1u, 1u)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1639i, Struct_4(var_1.x), Struct_3(var_1, var_0.b.wy), vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3, 20u)])), _wgslsmith_f_op_f32(arg_0.b * var_0.a.a), 176f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global1.x, 177f))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2108f))));
    return all(vec4<bool>(true, true, ~u_input.b.x >= ~countOneBits(global0[_wgslsmith_index_u32(var_1.x, 25u)]), !any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.c, 2140i);
    var var_1 = vec4<bool>(!(global2[_wgslsmith_index_u32(25569u, 20u)] != 1281f), false, false, !(!func_5(func_1(vec2<bool>(true, true), global1.x, u_input.a, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, global2[_wgslsmith_index_u32(124465u, 20u)])), Struct_4(27445u), 50647u)));
    global2 = array<f32, 20>();
    let var_2 = !var_1.x;
    let var_3 = Struct_5(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, var_1.x), !vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(var_2, false, true, var_2)), !vec4<bool>(false, true, var_2, var_2)), select(!(!vec4<bool>(false, var_2, false, var_1.x)), select(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, true, false, var_2), true), select(vec4<bool>(var_1.x, var_2, var_1.x, var_2), vec4<bool>(true, var_2, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x)), select(vec4<bool>(false, var_2, false, false), vec4<bool>(var_1.x, var_1.x, true, true), var_2)), select(select(vec4<bool>(var_2, false, var_2, var_1.x), vec4<bool>(var_2, var_2, var_1.x, true), vec4<bool>(true, true, false, var_1.x)), !vec4<bool>(true, var_2, var_2, false), !vec4<bool>(true, var_1.x, var_2, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.x, false, true, var_1.x), select(vec4<bool>(true, var_1.x, true, var_2), vec4<bool>(var_2, var_1.x, false, false), vec4<bool>(var_2, true, var_2, false))), select(vec4<bool>(var_2, var_1.x, true, false), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x)), select(!vec4<bool>(true, var_1.x, var_2, var_2), !vec4<bool>(true, var_1.x, var_2, true), var_2 == var_2))));
    global2 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(max(max(var_0, -_wgslsmith_div_vec2_i32(vec2<i32>(0i, 19974i), var_0)), var_0), 1u, u_input.b.zy << (~vec2<u32>(abs(18545u), max(global0[_wgslsmith_index_u32(4294967295u, 25u)], u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~5930u, 20u)] * func_4(u_input.c << (select(4294967295u, u_input.b.x, false) % 32u), 1i <= select(var_0.x, 6742i, false), Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 24982u, 25570u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(6159u, 25u)], u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], 1u, 1u, global0[_wgslsmith_index_u32(65942u, 25u)])), var_0), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 20u)]).a), countOneBits(u_input.a));
}

