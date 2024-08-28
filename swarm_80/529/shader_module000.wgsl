struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(305f, 1095f, 1229f, -1700f, -723f, -390f, 646f, 1900f, -116f, -357f, 1000f, 226f, 806f, 422f, 1904f, -323f, 615f, 1110f, -827f);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-76846i), Struct_1(25090i), Struct_1(15712i), Struct_1(-11322i), Struct_1(-23990i), Struct_1(31713i), Struct_1(0i), Struct_1(2147483647i));

var<private> global3: Struct_2;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    let var_0 = arg_1;
    global1 = !vec4<bool>(false, !(~arg_2 != -1i), all(select(!global1.zy, global1.ww, global0[_wgslsmith_index_u32(u_input.d.x, 19u)] > global0[_wgslsmith_index_u32(35985u, 19u)])), !any(!global1.yx));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(firstTrailingBit(50199i), -38137i), min(3481i, select(-2147483647i, 2147483647i, global1.x)), firstLeadingBit(-80971i), _wgslsmith_div_i32(4513i, 1i) << (u_input.b.x % 32u)), vec4<i32>(_wgslsmith_sub_i32(0i, -2147483647i), ~2147483647i, abs(global3.b), min(arg_1.a.a, arg_1.a.a)) >> (u_input.b % vec4<u32>(32u))), 64439i, 1i, _wgslsmith_mod_i32(arg_1.a.a, countOneBits(var_0.b) >> (_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(73799u, u_input.d.x), u_input.d.wz)) % 32u)));
    return max(u_input.b, max(u_input.b, u_input.b));
}

fn func_2() -> Struct_1 {
    global1 = select(vec4<bool>(global1.x, global1.x, true, any(select(!vec4<bool>(false, false, global1.x, global1.x), select(vec4<bool>(true, global1.x, true, true), vec4<bool>(false, global1.x, false, false), false), all(vec2<bool>(global1.x, global1.x))))), vec4<bool>(!all(select(vec2<bool>(global1.x, global1.x), global1.xw, global1.x)), global1.x, global1.x & all(global1.wy), global1.x), vec4<bool>(!global1.x & global1.x, (_wgslsmith_clamp_u32(u_input.d.x, u_input.b.x, 1u) < 4294967295u) | (_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(global3.b, 30428i)) >= 1i), (~(-43657i) >> (~u_input.b.x % 32u)) > max(_wgslsmith_sub_i32(u_input.c.x, global3.a.a), -u_input.c.x), true));
    let var_0 = ~(~u_input.d.x);
    var var_1 = vec3<u32>(29677u, select(select(~max(var_0, 78869u), ~4294967295u | firstTrailingBit(u_input.d.x), !all(vec4<bool>(false, global1.x, true, global1.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0, _wgslsmith_mod_u32(u_input.b.x, 23975u)), ~_wgslsmith_mod_u32(u_input.d.x, var_0)), global1.x), _wgslsmith_sub_u32(var_0 | 1u, _wgslsmith_dot_vec4_u32(abs(u_input.b), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), func_3(global3.a, Struct_2(global3.c, u_input.e, Struct_1(-2264i)), 1i)))));
    let var_2 = _wgslsmith_f_op_f32(trunc(-366f));
    let var_3 = !select(!select(select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), !vec4<bool>(true, false, false, global1.x), !vec4<bool>(global1.x, global1.x, false, false)), select(vec4<bool>(global1.x, true, global1.x, any(vec4<bool>(global1.x, true, global1.x, true))), vec4<bool>(var_1.x >= u_input.b.x, true, true, !global1.x), global1.x), false);
    return global2[_wgslsmith_index_u32(u_input.d.x, 8u)];
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.d.x <= select(~u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 48575u), all(global1.xyz));
    let var_1 = func_2();
    global1 = vec4<bool>(!((~u_input.b.x < u_input.d.x) == true), true, u_input.d.x != 73047u, true);
    let var_2 = u_input.e;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.b.zww), abs(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b.x, 53934u), u_input.d.wzz))), _wgslsmith_sub_u32(~(~abs(27298u)), ~_wgslsmith_clamp_u32(u_input.d.x, ~u_input.b.x, min(u_input.b.x, u_input.d.x))));
    return var_1;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global3 = Struct_2(Struct_1(-33750i), ~reverseBits(~_wgslsmith_add_i32(u_input.e, arg_0.a)), func_1(_wgslsmith_div_vec3_i32(select(max(u_input.c, u_input.c), u_input.c | vec3<i32>(arg_0.a, 52308i, arg_0.a), all(global1.xxy)), vec3<i32>(-1i) * -vec3<i32>(1i, -2147483647i, u_input.e))));
    var var_0 = vec3<u32>(_wgslsmith_div_u32(~(~u_input.b.x), firstLeadingBit(u_input.b.x)) << (~0u % 32u), u_input.b.x, ~(~(~1u)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 19u)])));
    var var_2 = Struct_2(func_2(), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~u_input.c, u_input.c, u_input.c), ~select(vec3<i32>(arg_0.a, arg_0.a, u_input.e), vec3<i32>(arg_0.a, -7335i, global3.b), global1.x)), u_input.e), func_2());
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_3(Struct_1(-11665i), Struct_2(Struct_1(1i), global3.a.a, var_2.a), -25006i).x, 19u)] - -1605f), global0[_wgslsmith_index_u32(countOneBits(~var_0.x), 19u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(46142u, 19u)], 1716f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1558f * 888f) + _wgslsmith_f_op_f32(f32(-1f) * -907f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(99165u, 19u)] - global0[_wgslsmith_index_u32(0u, 19u)]))), -790f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(38983u, 19u)])), 808f, _wgslsmith_f_op_f32(max(-1143f, global0[_wgslsmith_index_u32(4294967295u, 19u)]))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1159f, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])))))));
    return Struct_2(func_2(), u_input.e, Struct_1(global3.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 8>();
    let var_0 = u_input.c.x;
    global3 = func_4(func_1(u_input.c));
    global0 = array<f32, 19>();
    global1 = vec4<bool>(true, true, global1.x, true);
    let var_1 = -793f;
    var var_2 = (1u << (~(0u & u_input.d.x) % 32u)) != u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.d.x, 0u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.d.x)) % vec4<u32>(32u)), vec4<u32>(abs(42299u), ~4294967295u, 41989u ^ u_input.d.x, 1u), !vec4<bool>(false, global1.x, global1.x, global1.x)) << (u_input.b % vec4<u32>(32u)), u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) * _wgslsmith_f_op_f32(-1096f + var_1)), _wgslsmith_f_op_f32(749f + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d.x, 19u)]))))), ~(~var_0));
}

