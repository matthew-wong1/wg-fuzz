struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(22393i, -3109i), 724f, -1661f, -249f, Struct_1(vec4<f32>(421f, 792f, 183f, -446f), vec2<bool>(false, false), 541f, true, 2016u));

var<private> global2: array<Struct_2, 24>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 46127u);

var<private> global4: Struct_1 = Struct_1(vec4<f32>(440f, -1396f, 808f, 248f), vec2<bool>(true, false), -1163f, true, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(max(~vec4<i32>(global1.a.x, 1i, arg_0.a.x, global1.a.x), max(-vec4<i32>(u_input.c.x, -1i, -1i, 1i), vec4<i32>(-1i, -168i, global1.a.x, global1.a.x))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 52452u, 19898u) ^ vec4<u32>(arg_0.e.e, u_input.d, 3322u, u_input.a), vec4<u32>(1u, global4.e, u_input.d, 1u) | (vec4<u32>(global4.e, global1.e.e, 0u, 4294967295u) & vec4<u32>(46570u, 0u, 0u, global3.x))) % vec4<u32>(32u)));
    global1 = global2[_wgslsmith_index_u32(~0u, 24u)];
    var var_1 = (global1.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c)) - _wgslsmith_f_op_f32(f32(-1f) * -758f)))) & all(global1.e.b);
    var_0 = min(~(max(vec4<i32>(1i, 1i, u_input.c.x, 34369i), vec4<i32>(-1i, -1i, u_input.c.x, var_0.x)) ^ _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, var_0.x, global1.a.x, global1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-26128i, -8039i, -2147483647i, u_input.c.x), vec4<i32>(-43052i, -1935i, -18788i, 74741i)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(var_0.x), -1i & u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-10037i, 1i, u_input.c.x), var_0.wxy), _wgslsmith_dot_vec3_i32(var_0.wxx, vec3<i32>(9270i, -1i, var_0.x))), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 62770i), ~11111i, -29359i, _wgslsmith_dot_vec3_i32(var_0.yzw, var_0.zyz)), -firstTrailingBit(vec4<i32>(global1.a.x, var_0.x, var_0.x, var_0.x))));
    let var_2 = 11124u;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-722f * 364f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -595f)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = ~arg_0.a.x;
    let var_1 = global2[_wgslsmith_index_u32(~(arg_0.e.e & 1u), 24u)];
    let var_2 = -2147483647i;
    global3 = max(max(firstLeadingBit(~vec3<u32>(1u, global1.e.e, 0u) ^ vec3<u32>(global1.e.e, global3.x, 33711u)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, global1.e.e, 74045u), max(vec3<u32>(61579u, 35698u, global3.x), vec3<u32>(25005u, 1u, global1.e.e)))), vec3<u32>(var_1.e.e, 1u, 36653u));
    global4 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global4.a, arg_0.e.a, arg_0.e.b.x)))) * vec4<f32>(global4.a.x, var_1.e.a.x, _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-global1.d))), global1.e.a)), arg_0.e.b, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(var_1.c)))), all(global1.e.b), max(countOneBits(~countOneBits(var_1.e.e)), ~abs(~12625u)));
    return abs(abs(global1.a.x));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global1 = global2[_wgslsmith_index_u32(~global3.x, 24u)];
    var var_0 = func_4(Struct_2(vec2<i32>(abs(u_input.c.x) | (i32(-1i) * -43281i), ~global1.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, global4.c, 1136f, -2072f, Struct_1(global4.a, vec2<bool>(global4.d, global4.b.x), global4.c, global1.e.b.x, 0u)), select(arg_0, global1.e.d, false), Struct_1(global1.e.a, vec2<bool>(false, false), global1.b, global4.b.x, u_input.b.x))))), -555f, _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), Struct_1(global1.e.a, vec2<bool>(true, true), global4.a.x, !all(vec4<bool>(global4.b.x, true, global1.e.d, false)), min(~44988u, global1.e.e))), !any(vec4<bool>(true, global1.a.x > u_input.c.x, true, global1.e.b.x)));
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_add_i32(u_input.c.x, global1.a.x), 0i), _wgslsmith_f_op_f32(global1.e.a.x * global1.b), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(global1.b * global4.c)))), -233f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.x, global1.e.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -608f), global1.d), global1.e.b, -763f, !(u_input.d < ~global3.x), 4294967295u));
    global0 = i32(-1i) * -8570i;
    return ~abs(vec2<u32>(1u, ~(52665u & global1.e.e)));
}

fn func_5(arg_0: vec3<u32>) -> Struct_1 {
    global1 = global2[_wgslsmith_index_u32(min(~_wgslsmith_div_u32(~(global1.e.e & 3935u), 48758u), ~global3.x << (23061u % 32u)), 24u)];
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(global3.x), 24u)];
    global3 = _wgslsmith_sub_vec3_u32(arg_0, arg_0);
    global1 = Struct_2(vec2<i32>(var_0.a.x, -94426i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * global1.e.c) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-552f + var_0.d), _wgslsmith_f_op_f32(global4.a.x - global4.c)))) - _wgslsmith_f_op_f32(-929f + _wgslsmith_f_op_f32(f32(-1f) * -640f))), global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(381f, -986f)) + -514f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, -875f, -822f, var_0.e.c)))) * vec4<f32>(_wgslsmith_f_op_f32(-2501f + global1.d), _wgslsmith_f_op_f32(-global4.c), 1f, _wgslsmith_f_op_f32(round(-1000f)))), select(var_0.e.b, select(!vec2<bool>(global4.d, false), vec2<bool>(true, true), !global1.e.b), !vec2<bool>(true, global1.e.b.x)), global4.a.x, false, ~min(4294967295u, var_0.e.e)));
    global2 = array<Struct_2, 24>();
    return global1.e;
}

fn func_1() -> f32 {
    global2 = array<Struct_2, 24>();
    global4 = func_5(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(18336u, global3.x) | 1u, _wgslsmith_dot_vec2_u32(u_input.b, func_2(true)), u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global4.e, global3.x, u_input.b.x) ^ vec3<u32>(4294967295u, global1.e.e, global4.e), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 6255u), vec3<u32>(u_input.b.x, 5570u, 4294967295u))) >> (~vec3<u32>(13999u, 0u, global3.x) % vec3<u32>(32u))));
    let var_0 = !vec4<bool>(all(select(!vec3<bool>(false, global1.e.d, global4.d), select(vec3<bool>(false, true, global1.e.b.x), vec3<bool>(false, true, false), vec3<bool>(global1.e.b.x, global1.e.d, false)), select(vec3<bool>(global1.e.d, global1.e.d, true), vec3<bool>(global1.e.b.x, global4.d, global1.e.b.x), true))), !global1.e.d, all(!select(vec3<bool>(global4.d, global1.e.b.x, global4.d), vec3<bool>(false, global4.b.x, global1.e.b.x), vec3<bool>(false, global4.d, global4.d))), true);
    var var_1 = ~(~vec4<i32>(u_input.c.x, global1.a.x, _wgslsmith_sub_i32(global1.a.x, 0i), 9461i));
    global4 = func_5(vec3<u32>(4294967295u, 3492u, min(reverseBits(_wgslsmith_mult_u32(0u, u_input.b.x)), global1.e.e)));
    return -224f;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1117f * arg_1.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.zz + vec2<f32>(-838f, global4.a.x)), _wgslsmith_f_op_vec2_f32(global4.a.ww * arg_2.xz)), vec2<bool>(!global4.d, arg_1.e.d))))) + vec2<f32>(global4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) + _wgslsmith_f_op_f32(arg_2.x - arg_1.e.c)))));
    let var_1 = ~(~(vec3<u32>(global4.e, arg_1.e.e, global4.e) >> ((vec3<u32>(arg_1.e.e, 4294967295u, 28665u) ^ (vec3<u32>(1u, 1u, global3.x) | vec3<u32>(34464u, global1.e.e, u_input.e))) % vec3<u32>(32u))));
    let var_2 = global2[_wgslsmith_index_u32(1u, 24u)];
    var var_3 = Struct_2(_wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(arg_1.a, vec2<i32>(0i, var_2.a.x)), u_input.c), _wgslsmith_f_op_f32(floor(global1.d)), _wgslsmith_f_op_f32(427f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x * var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-303f, -1171f)), var_2.e);
    var var_4 = var_2.e;
    return StorageBuffer(abs(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-12050i, u_input.c.x, arg_0, 1i)), abs(countOneBits(vec4<i32>(2147483647i, arg_0, -1i, arg_1.a.x))))), global1.e.e);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(-2147483647i, Struct_2(_wgslsmith_sub_vec2_i32(~abs(vec2<i32>(-2559i, global1.a.x)), global1.a), global4.a.x, _wgslsmith_f_op_f32(1070f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.c))))), _wgslsmith_f_op_f32(-748f - _wgslsmith_f_op_f32(func_1())), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.c, global1.d, -244f, 968f))), vec2<bool>(true | global1.e.d, global4.b.x), -336f, any(vec4<bool>(true, true, false, global1.e.d)) && false, global3.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global4.a.wxw - vec3<f32>(global4.c, global4.c, global1.e.c)), global4.a.wwx, vec3<bool>(true, false, false))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(min(685f, global4.a.x)), _wgslsmith_f_op_f32(ceil(933f)))), vec3<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 950f) + _wgslsmith_f_op_f32(max(global4.c, global1.b))), 1426f)), global1.a);
}

