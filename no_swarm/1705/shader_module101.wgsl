struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-1000f, 475f), vec2<f32>(493f, -418f), vec2<f32>(1843f, -994f), vec2<f32>(-691f, 516f), vec2<f32>(-151f, 396f), vec2<f32>(819f, -638f), vec2<f32>(-967f, -463f), vec2<f32>(-257f, 330f), vec2<f32>(971f, -1000f));

var<private> global2: Struct_1 = Struct_1(42682u, 0u, vec4<i32>(-81955i, i32(-2147483648), -30550i, -28873i));

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<i32>) -> vec4<i32> {
    global3 = array<Struct_1, 13>();
    global0 = array<u32, 19>();
    global2 = global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 19u)], 13u)];
    var var_0 = _wgslsmith_div_i32(countOneBits(-1i), 2147483647i);
    global3 = array<Struct_1, 13>();
    return global2.c;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(9472u, 1512u, func_3(_wgslsmith_sub_vec2_i32(firstLeadingBit(arg_0.c.yz), vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, -841f, -306f)), _wgslsmith_f_op_f32(sign(1183f)) >= _wgslsmith_div_f32(671f, 806f), vec3<i32>(2147483647i, ~0i, -1i ^ arg_1)) & min(min(func_3(arg_0.c.zw, vec3<f32>(-2932f, 1555f, -1001f), true, global2.c.zzx), arg_0.c | vec4<i32>(arg_2.c.x, arg_2.c.x, -1i, arg_1)), global2.c << (~vec4<u32>(arg_2.b, 14119u, arg_0.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]) % vec4<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = vec3<i32>(-50149i, -46356i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, arg_0.b), firstLeadingBit(vec4<u32>(53443u, 14734u, 0u, 23867u))) % 32u), _wgslsmith_dot_vec2_i32(arg_2.c.wy, global2.c.ww)) | ~firstLeadingBit(select(arg_2.c.wxy, ~var_0.c.xyw, select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))));
    var_2 = var_0.c.zww;
    global1 = array<vec2<f32>, 9>();
    return Struct_1(_wgslsmith_mult_u32(arg_2.a, global0[_wgslsmith_index_u32(0u, 19u)]), var_0.b, -vec4<i32>(reverseBits(_wgslsmith_clamp_i32(u_input.a, arg_2.c.x, -28998i)), u_input.a, -1i, var_0.c.x ^ arg_2.c.x));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = func_2(global3[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 13u)], 1i, global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global2.b | ~max(461u, 1u), 19u)], 13u)]);
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    global3 = array<Struct_1, 13>();
    return ((_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.xx) & 1u) & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(35958u, global2.a, 4294967295u, global2.a), min(vec4<u32>(31359u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 19u)], 19u)], global2.b), vec4<u32>(0u, 8971u, var_0.a, global0[_wgslsmith_index_u32(4294967295u, 19u)]))), vec4<u32>(firstTrailingBit(39446u), u_input.b.x, 24811u, min(global2.a, 63848u)))) ^ _wgslsmith_div_u32(var_0.a, ~abs(firstTrailingBit(1495u)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = func_2(func_2(global3[_wgslsmith_index_u32(4294967295u, 13u)], (i32(-1i) * -arg_1.x) >> (select(_wgslsmith_clamp_u32(29931u, 1u, global0[_wgslsmith_index_u32(83421u, 19u)]), ~51272u, false) % 32u), func_2(global3[_wgslsmith_index_u32(func_2(Struct_1(0u, 20208u, vec4<i32>(36460i, 2147483647i, -2147483647i, -7772i)), arg_1.x | arg_1.x, global3[_wgslsmith_index_u32(func_1(1000f, vec4<f32>(-421f, 2600f, -943f, 1053f)), 13u)]).a, 13u)], 12736i, Struct_1(~118930u, u_input.b.x, countOneBits(vec4<i32>(-1i, -22631i, u_input.a, arg_1.x))))), reverseBits(min(global2.c.x >> (global0[_wgslsmith_index_u32(21249u, 19u)] % 32u), arg_1.x) << (_wgslsmith_clamp_u32(~0u, ~1u, 0u) % 32u)), global3[_wgslsmith_index_u32(4294967295u, 13u)]);
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(~reverseBits(16755u)), 13u)];
    var var_1 = global3[_wgslsmith_index_u32(var_0.b, 13u)];
    var var_2 = Struct_1(~(~u_input.b.x), func_1(_wgslsmith_div_f32(-1285f, 177f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(180f, -283f, 438f, -730f) - vec4<f32>(402f, -749f, 1008f, 271f)))))), ~reverseBits(vec4<i32>(-1i, global2.c.x, -2147483647i, firstLeadingBit(var_0.c.x))));
    var var_3 = global3[_wgslsmith_index_u32(3365u, 13u)];
    return select(select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec3<bool>(var_1.b <= 0u, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec3<bool>(true, true, (any(vec2<bool>(false, false)) && true) && select(true, true, true)), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !(true || (0i < _wgslsmith_mod_i32(u_input.a, 9346i)));
    let var_1 = arg_2.a;
    global3 = array<Struct_1, 13>();
    global3 = array<Struct_1, 13>();
    var var_2 = arg_2.c.x;
    return global3[_wgslsmith_index_u32(var_1, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 13>();
    let var_0 = global3[_wgslsmith_index_u32(~(~global2.a), 13u)];
    var var_1 = func_5(select(func_4(abs(func_1(-492f, vec4<f32>(-1237f, -341f, 159f, -108f))), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.c.wwz, vec3<i32>(2147483647i, global2.c.x, u_input.a)), global2.c.x, _wgslsmith_mod_i32(32987i, -7961i)), vec4<u32>(_wgslsmith_add_u32(global2.b, u_input.b.x), _wgslsmith_add_u32(0u, var_0.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 59505u, var_0.b, 1u), vec4<u32>(66087u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], var_0.b)), _wgslsmith_mod_u32(global2.a, var_0.a)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, 2147483647i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(58179i, 9622i, u_input.a), vec3<i32>(-1i, var_0.c.x, global2.c.x), global2.c.wyy))), select(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 78734u, 81317u, 1u), vec4<u32>(var_0.b, 1u, 38927u, 1u)), vec3<i32>(u_input.a, var_0.c.x, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(global2.a, 4454u, 4294967295u, global2.a), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x)), vec3<i32>(global2.c.x, 2147483647i, -8871i) ^ vec3<i32>(global2.c.x, 32233i, -24662i)), vec3<bool>(34205i <= u_input.a, true, false), select(func_4(93456u, vec3<i32>(0i, -25022i, u_input.a), vec4<u32>(23581u, 0u, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, u_input.a, -25298i)), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-398f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-457f)) + 1f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-698f - -158f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(546f, 302f, true)))), global3[_wgslsmith_index_u32(~abs(_wgslsmith_div_u32(u_input.b.x, global0[_wgslsmith_index_u32(0u, 19u)]) | 33258u), 13u)], vec3<f32>(1f, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(-116f)))), _wgslsmith_div_f32(-437f, -454f)));
    global3 = array<Struct_1, 13>();
    let var_2 = u_input.a;
    var var_3 = countOneBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global2.b, var_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global2.a)), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.a, 19u)], var_0.a, 0u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.a, 4294967295u, 4294967295u), vec4<u32>(4440u, 1u, 4294967295u, 26911u)) % vec4<u32>(32u))), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i >> (func_1(_wgslsmith_f_op_f32(select(1065f, -1279f, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, -1326f, 1731f, 2444f) * vec4<f32>(-432f, -189f, -1456f, -730f))) % 32u)), 0u);
}

