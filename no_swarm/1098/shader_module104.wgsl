struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: array<bool, 12>;

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 15>;

var<private> global4: array<u32, 22> = array<u32, 22>(41465u, 4294967295u, 1u, 4294967295u, 4294967295u, 1u, 35199u, 4294967295u, 4294967295u, 2811u, 515u, 827u, 51907u, 14328u, 132u, 1u, 58635u, 0u, 1u, 1u, 0u, 8793u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: vec2<u32>) -> i32 {
    let var_0 = select(vec4<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.e.x, false, false), true), vec3<bool>(false, true, true), arg_0.d | true)), global3[_wgslsmith_index_u32(4294967295u, 15u)], false, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-825f + arg_2)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x)))), vec4<bool>(true, !(-711f == arg_2), ~(arg_0.c.a.x ^ 7230u) >= ~55599u, arg_0.e.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(reverseBits(~arg_0.b.a.a.x), 22u)], ~(0u >> (arg_3.x % 32u)) >> (global4[_wgslsmith_index_u32(arg_0.c.a.x, 22u)] % 32u)), 15u)]);
    global0 = array<vec3<i32>, 4>();
    let var_1 = Struct_2(Struct_1(~(~min(vec4<u32>(45254u, 36064u, 48960u, 1u), arg_0.c.a))));
    let var_2 = arg_0;
    global1 = array<bool, 12>();
    return _wgslsmith_mult_i32(-13069i, abs(u_input.b >> (16802u % 32u)) | firstLeadingBit(~(i32(-1i) * -7721i)));
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2317f, global2.x)) - _wgslsmith_f_op_f32(-688f * global2.x)) * -877f) + global2.x) <= global2.x;
    global3 = array<bool, 15>();
    global4 = array<u32, 22>();
    let var_1 = Struct_3(_wgslsmith_mod_i32(u_input.b, -_wgslsmith_add_i32(u_input.b, reverseBits(u_input.a.x))), func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, global2.x, global2.x, -1255f)), Struct_2(Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13998u, 22u)], 22u)], 22u)], 22u)], 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 22u)], 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24582u, 22u)], 22u)]))), Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(22473u, 22u)], 0u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(16132u, 22u)], 22u)])), global4[_wgslsmith_index_u32(86603u, 22u)] > 36081u, !vec2<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 15u)])), 2147483647i, -151f, ~(~vec2<u32>(8012u, global4[_wgslsmith_index_u32(51873u, 22u)]))) & -18021i, Struct_1(select(vec4<u32>(global4[_wgslsmith_index_u32(29928u, 22u)], abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)]), 1u, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 10936u)), countOneBits(vec4<u32>(0u, 24762u, 32926u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(52391u, 22u)], 22u)])) | (vec4<u32>(1u, global4[_wgslsmith_index_u32(4294967295u, 22u)], 22718u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18840u, 22u)], 22u)], 22u)], 22u)]) | vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(52197u, 22u)], 22u)], global4[_wgslsmith_index_u32(1u, 22u)], 0u, 0u)), !(u_input.b <= 3871i))), vec3<u32>(~(~(global4[_wgslsmith_index_u32(3841u, 22u)] & 0u)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(9604u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49108u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], global4[_wgslsmith_index_u32(81677u, 22u)]), vec2<u32>(4294967295u, 388u)) << (firstTrailingBit(31838u) % 32u)), 22u)], 22u)], _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(8217u, 22u)], 48017u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 22u)], 22u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 4294967295u, 0u))), ~select(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13223u, 22u)], 22u)], 34288u, global4[_wgslsmith_index_u32(0u, 22u)]), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19851u, 22u)], 22u)], global4[_wgslsmith_index_u32(8212u, 22u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 22u)], 22u)]), vec3<bool>(false, true, false)))), Struct_1(vec4<u32>(_wgslsmith_add_u32(1u, global4[_wgslsmith_index_u32(28424u, 22u)]) | 0u, global4[_wgslsmith_index_u32(0u, 22u)], 4294967295u, ~(global4[_wgslsmith_index_u32(15301u, 22u)] >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 22u)] % 32u)))));
    var var_2 = select(countOneBits(_wgslsmith_div_i32(func_3(Struct_4(vec4<f32>(1087f, global2.x, 255f, global2.x), Struct_2(var_1.e), var_1.e, true, vec2<bool>(false, true)), -8113i, 1000f, vec2<u32>(4294967295u, 0u)), u_input.b) >> (~firstTrailingBit(var_1.e.a.x) % 32u)), firstLeadingBit(~reverseBits(firstTrailingBit(-1i))), any(select(vec4<bool>(global2.x >= global2.x, true, any(vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.d.x, 15u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1125u, 22u)], 12u)])), true), !select(vec4<bool>(global3[_wgslsmith_index_u32(28991u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.e.a.x, 22u)], 22u)], 15u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48926u, 22u)], 12u)], global3[_wgslsmith_index_u32(16849u, 15u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(66251u, 12u)], true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(63067u, 22u)], 12u)])), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false, global1[_wgslsmith_index_u32(var_1.e.a.x, 12u)], false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.d.x, 22u)], 15u)], false), false))));
    return Struct_5(Struct_2(Struct_1(var_1.c.a)), all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(39841u, 15u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 15u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], false, global3[_wgslsmith_index_u32(var_1.e.a.x, 15u)], true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(29136u, 12u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 12u)], global3[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 12u)], false), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(95546u, 22u)], 15u)]))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.e.a.x, 12u)], true, false, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 15u)], true, false, true), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 15u)])), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 15u)], true, false, global1[_wgslsmith_index_u32(31327u, 12u)])), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(11023u, 15u)], false, global3[_wgslsmith_index_u32(var_1.d.x, 15u)])))), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1270f, -2546f, -979f) + vec4<f32>(-295f, 370f, global2.x, global2.x))))), Struct_2(Struct_1(vec4<u32>(4932u, global4[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u, 1u) << (var_1.c.a % vec4<u32>(32u)))), Struct_1(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(var_1.d.x, global4[_wgslsmith_index_u32(62321u, 22u)]), 4294967295u, ~46200u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, global4[_wgslsmith_index_u32(var_1.d.x, 22u)] | 39344u), ~var_1.c.a.yy & reverseBits(var_1.e.a.ww)), 12u)], select(!select(vec2<bool>(global3[_wgslsmith_index_u32(var_1.c.a.x, 15u)], global3[_wgslsmith_index_u32(27233u, 15u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(50121u, 22u)], 12u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 12u)])), vec2<bool>(true, select(false, true, false)), !(global1[_wgslsmith_index_u32(11600u, 12u)] & global3[_wgslsmith_index_u32(34661u, 15u)]))), ~global4[_wgslsmith_index_u32(var_1.e.a.x, 22u)]);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_5) -> Struct_4 {
    var var_0 = firstLeadingBit(select(~(~arg_0.a.a.a), vec4<u32>(min(arg_1.e.a.x, 70465u), 1u, arg_0.d >> (17185u % 32u), arg_2.a.a.a.x), vec4<bool>(arg_2.b, global1[_wgslsmith_index_u32(~arg_0.c.b.a.a.x, 12u)], true, false)) | vec4<u32>(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(arg_2.d, 22u)] ^ (global4[_wgslsmith_index_u32(arg_0.c.b.a.a.x, 22u)] ^ arg_0.c.b.a.a.x), 22u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.c.c.a.x, arg_1.d.x, 1u, arg_2.c.b.a.a.x), vec4<u32>(10368u, 27184u, arg_1.d.x, 54178u)), ~arg_1.d.x, 77357u));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + arg_2.c.a.zw);
    let var_2 = arg_1;
    global2 = arg_2.c.a;
    let var_3 = arg_2.a;
    return arg_0.c;
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    var var_0 = _wgslsmith_sub_u32(~(~1u), arg_3.b.a.a.x);
    global4 = array<u32, 22>();
    global0 = array<vec3<i32>, 4>();
    var var_1 = Struct_3(~_wgslsmith_add_i32(arg_0, select(u_input.b, u_input.c, arg_3.d)) >> (52581u % 32u), 1i, Struct_1(arg_1.c.a), vec3<u32>(max(arg_1.c.a.x, ~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(107572u, arg_2.a.x), ~37534u, 4294967295u), _wgslsmith_mult_u32(~reverseBits(1u), func_4(Struct_5(arg_1.b, arg_1.e.x, Struct_4(vec4<f32>(global2.x, arg_3.a.x, 595f, 1305f), arg_3.b, Struct_1(arg_2.a), arg_3.e.x, arg_3.e), 4294967295u), Struct_3(arg_0, arg_0, arg_3.b.a, arg_3.b.a.a.ywy, Struct_1(arg_1.c.a)), Struct_5(arg_1.b, global3[_wgslsmith_index_u32(45269u, 15u)], arg_3, arg_2.a.x)).c.a.x)), func_4(func_2(), Struct_3(arg_0, -_wgslsmith_mult_i32(-9523i, u_input.b), arg_1.b.a, ~(arg_2.a.yxy ^ vec3<u32>(arg_3.c.a.x, 104080u, arg_2.a.x)), Struct_1(~arg_1.b.a.a)), Struct_5(Struct_2(arg_1.b.a), arg_3.e.x, func_4(func_2(), Struct_3(-6442i, -13332i, Struct_1(vec4<u32>(arg_3.b.a.a.x, 33744u, 1u, arg_3.b.a.a.x)), arg_2.a.yxx, Struct_1(vec4<u32>(arg_2.a.x, global4[_wgslsmith_index_u32(1u, 22u)], 50684u, arg_3.c.a.x))), Struct_5(arg_1.b, false, arg_3, 36911u)), ~17417u)).b.a);
    var var_2 = func_2().a.a;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global3 = array<bool, 15>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_mod_i32(min(2147483647i, u_input.b) << (firstLeadingBit(1u) % 32u), abs(max(u_input.a.x, u_input.c))), func_4(func_2(), Struct_3(-u_input.a.x, reverseBits(0i), Struct_1(arg_2.a), vec3<u32>(arg_1.x, 1u, 51368u), func_2().a.a), func_2()), func_2().a.a, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1670f, -594f, arg_3.x, -1324f) * vec4<f32>(arg_3.x, global2.x, -1000f, arg_3.x))), func_4(Struct_5(Struct_2(arg_2), global3[_wgslsmith_index_u32(4294967295u, 15u)], Struct_4(vec4<f32>(-1606f, arg_3.x, arg_3.x, global2.x), Struct_2(Struct_1(arg_2.a)), arg_2, true, vec2<bool>(true, false)), 2771u), Struct_3(2147483647i, 12110i, Struct_1(vec4<u32>(0u, arg_1.x, 40846u, global4[_wgslsmith_index_u32(64034u, 22u)])), vec3<u32>(1u, 41131u, global4[_wgslsmith_index_u32(42334u, 22u)]), Struct_1(vec4<u32>(56756u, 66818u, 1151u, 1u))), func_2()).b, Struct_1(select(vec4<u32>(global4[_wgslsmith_index_u32(77291u, 22u)], arg_2.a.x, 12352u, 96921u), arg_2.a, true)), !global3[_wgslsmith_index_u32(arg_2.a.x, 15u)] & func_4(Struct_5(Struct_2(Struct_1(arg_2.a)), global3[_wgslsmith_index_u32(arg_2.a.x, 15u)], Struct_4(vec4<f32>(-627f, -784f, arg_3.x, -140f), Struct_2(Struct_1(vec4<u32>(641u, global4[_wgslsmith_index_u32(arg_2.a.x, 22u)], 10790u, arg_1.x))), arg_2, false, vec2<bool>(false, true)), arg_1.x), Struct_3(u_input.c, 0i, arg_2, vec3<u32>(arg_1.x, 1u, arg_0), Struct_1(vec4<u32>(arg_0, 0u, 19132u, arg_2.a.x))), Struct_5(Struct_2(Struct_1(vec4<u32>(arg_0, 4294967295u, arg_0, arg_2.a.x))), global1[_wgslsmith_index_u32(arg_1.x, 12u)], Struct_4(vec4<f32>(-225f, -1651f, -1000f, -155f), Struct_2(arg_2), Struct_1(vec4<u32>(arg_0, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(56057u, 22u)], 22u)], 110884u, arg_1.x)), global3[_wgslsmith_index_u32(1u, 15u)], vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 12u)], true)), arg_1.x)).e.x, vec2<bool>(true && global1[_wgslsmith_index_u32(arg_0, 12u)], true)))), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-652f - _wgslsmith_f_op_f32(f32(-1f) * -1310f)), _wgslsmith_f_op_f32(f32(-1f) * -583f))), 1000f);
    var var_0 = Struct_1(~(vec4<u32>(~315u, 1u, 1u, _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(1u, 1u, 0u, 0u))) >> (func_4(func_2(), Struct_3(41030i, u_input.c, Struct_1(vec4<u32>(43137u, 0u, 4294967295u, 0u)), arg_1, Struct_1(vec4<u32>(113637u, global4[_wgslsmith_index_u32(1u, 22u)], arg_1.x, arg_0))), Struct_5(Struct_2(arg_2), false, Struct_4(vec4<f32>(arg_3.x, global2.x, 823f, -355f), Struct_2(arg_2), arg_2, true, vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(28032u, 12u)])), global4[_wgslsmith_index_u32(49912u, 22u)])).b.a.a % vec4<u32>(32u))));
    var var_1 = Struct_5(Struct_2(Struct_1(~(~vec4<u32>(68174u, var_0.a.x, arg_2.a.x, 80035u)))), true, Struct_4(vec4<f32>(193f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - _wgslsmith_f_op_f32(ceil(197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-651f, global2.x))), arg_3.x), func_4(Struct_5(Struct_2(arg_2), true, Struct_4(vec4<f32>(arg_3.x, 1000f, global2.x, arg_3.x), Struct_2(arg_2), Struct_1(var_0.a), global1[_wgslsmith_index_u32(arg_1.x, 12u)], vec2<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(50323u, 15u)])), var_0.a.x << (1u % 32u)), Struct_3(firstTrailingBit(u_input.b), -u_input.b, arg_2, vec3<u32>(arg_2.a.x, 0u, 23249u) ^ arg_2.a.zyw, arg_2), Struct_5(func_4(Struct_5(Struct_2(Struct_1(arg_2.a)), global1[_wgslsmith_index_u32(0u, 12u)], Struct_4(vec4<f32>(global2.x, global2.x, global2.x, 861f), Struct_2(arg_2), arg_2, global3[_wgslsmith_index_u32(4294967295u, 15u)], vec2<bool>(true, false)), 35277u), Struct_3(u_input.c, u_input.a.x, arg_2, vec3<u32>(4294967295u, arg_2.a.x, arg_1.x), arg_2), Struct_5(Struct_2(Struct_1(arg_2.a)), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1.x, 22u)], 12u)], Struct_4(vec4<f32>(arg_3.x, arg_3.x, -972f, arg_3.x), Struct_2(Struct_1(arg_2.a)), Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(1u, 22u)], 0u, global4[_wgslsmith_index_u32(0u, 22u)], 86487u)), global3[_wgslsmith_index_u32(arg_0, 15u)], vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 15u)], false)), arg_1.x)).b, true, Struct_4(vec4<f32>(global2.x, -1000f, 449f, -553f), Struct_2(arg_2), arg_2, false, vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 15u)])), var_0.a.x)).b, arg_2, !func_2().b, vec2<bool>(!(!global1[_wgslsmith_index_u32(41720u, 12u)]), true)), 12183u);
    var_0 = func_2().a.a;
    return var_1.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1658f, global2.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(~80577u, vec3<u32>(49008u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 22u)], 0u), Struct_1(vec4<u32>(1u, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(83138u, 22u)], 61925u)), _wgslsmith_div_vec3_f32(vec3<f32>(1481f, -1401f, 1212f), global2.yww)))))));
    let var_2 = firstTrailingBit(firstTrailingBit(-19414i));
    let var_3 = Struct_5(Struct_2(func_2().a.a), !(!all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(44497u, 15u)]))), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1097f, global2.x, 124f, -398f), vec4<f32>(global2.x, -393f, global2.x, global2.x))) + vec4<f32>(183f, _wgslsmith_div_f32(global2.x, -207f), 444f, -702f)), func_2().a, Struct_1(~(~vec4<u32>(49184u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(103384u, 22u)], 22u)], 4294967295u, global4[_wgslsmith_index_u32(0u, 22u)]))), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 15u)], !(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(70787u, 22u)], 22u)], 22u)], 22u)], 12u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(861u, 22u)], 12u)]), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 12u)]))), ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(89545u, 22u)], 22u)]);
    var var_4 = _wgslsmith_f_op_f32(func_2().c.a.x + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(-552f, 441f))));
    let var_5 = firstTrailingBit(var_3.c.c.a.xw);
    var var_6 = func_4(var_3, Struct_3(u_input.c, -(1i | u_input.c), func_4(var_3, Struct_3(-var_2, ~var_2, var_3.c.b.a, vec3<u32>(0u, var_5.x, var_5.x), Struct_1(vec4<u32>(50643u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 22u)], 69227u, 32017u))), func_2()).c, var_3.c.b.a.a.zzz, Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_3.a.a.a.x, 22u)], 22u)], var_5.x, var_3.c.c.a.x, 4294967295u) | vec4<u32>(global4[_wgslsmith_index_u32(7275u, 22u)], global4[_wgslsmith_index_u32(var_3.c.c.a.x, 22u)], 0u, global4[_wgslsmith_index_u32(var_5.x, 22u)]), var_3.c.c.a ^ var_3.a.a.a))), func_2()).a.wxx;
    let var_7 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_3.c.a.wyy, vec3<f32>(_wgslsmith_f_op_f32(select(var_6.x, 944f, false)), _wgslsmith_f_op_f32(max(-1000f, global2.x)), _wgslsmith_f_op_f32(-var_6.x)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.xwx, vec3<f32>(var_3.c.a.x, 144f, global2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1068f, -904f, global2.x)))))) - _wgslsmith_f_op_vec3_f32(exp2(var_3.c.a.yww)));
    global1 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_7.x);
}

