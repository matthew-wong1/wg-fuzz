struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-1720f, 4294967295u, -731f, vec3<f32>(-1000f, -992f, 321f)), Struct_1(-1000f, 0u, -1081f, vec3<f32>(-193f, -537f, 406f)));

var<private> global1: array<bool, 12> = array<bool, 12>(false, true, true, true, true, true, true, true, true, true, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 1i;
    global1 = array<bool, 12>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.zx) + arg_0.d.zz)), Struct_1(-1373f, ~arg_0.b ^ ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(709f, -1000f, 210f) * arg_2.c.wxw))), _wgslsmith_f_op_vec3_f32(arg_2.c.wyz * vec3<f32>(1017f, arg_2.c.x, -779f)))), firstTrailingBit(vec3<i32>(~35325i, _wgslsmith_clamp_i32(u_input.b, 0i, var_0) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -43624i), vec2<i32>(0i, 1i)), -u_input.b)));
    global0 = array<Struct_1, 2>();
    var var_2 = arg_0.d.x;
    return Struct_1(arg_0.c, 0u, _wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(f32(-1f) * -560f)), arg_0.d);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = arg_1.x;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = ~vec4<u32>(firstLeadingBit(u_input.a.x) ^ 41349u, 98774u, _wgslsmith_add_u32(arg_3.x, ~arg_0.x), ~0u) & (vec4<u32>(0u, ~min(1u, u_input.a.x), arg_0.x, arg_3.x) & ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x), vec4<bool>(global1[_wgslsmith_index_u32(6189u, 12u)], true, true, false)), ~vec4<u32>(arg_3.x, 98672u, 61311u, 20345u)));
    var var_2 = Struct_4(_wgslsmith_sub_u32(~(_wgslsmith_mult_u32(arg_3.x, var_1.x) & countOneBits(var_1.x)), arg_0.x), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.x, arg_3.x), min(32363u, arg_3.x)), ~9224u), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_1.x, arg_3.x), u_input.a.xz, arg_1.zy), firstTrailingBit(u_input.a.yy << (arg_3.zy % vec2<u32>(32u))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_0.x, u_input.a.x), countOneBits(11217u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 24889u, arg_0.x), var_1.xww) % 32u), 4976u), ~var_1.zzy), Struct_2(_wgslsmith_f_op_f32(-arg_2), !(_wgslsmith_f_op_f32(410f + arg_2) < arg_2), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(1216f * 1635f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-753f, -1269f, false)), -352f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + -1588f), _wgslsmith_f_op_f32(arg_2 - -264f)), 513f), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(arg_2 * -1000f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 833f, global1[_wgslsmith_index_u32(arg_0.x, 12u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1173f, -670f)), vec2<f32>(arg_2, -721f), !(!arg_1.yy)))));
    return var_2.d.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: i32, arg_3: Struct_4) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~53037u << ((u_input.a.x & u_input.a.x) % 32u), 2u)];
    var_0 = func_2(global0[_wgslsmith_index_u32(arg_3.c, 2u)], ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(17524u, 0u, 71495u, arg_3.c), vec4<u32>(1u, 1u, 0u, u_input.a.x))), Struct_2(var_0.c, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.d.c.x, -822f, var_0.d.x, var_0.d.x) * arg_3.d.c)), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(861f, var_0.a) + _wgslsmith_f_op_vec2_f32(trunc(arg_3.d.e))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f + var_0.a) * arg_1), 910f)) - -632f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.e.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a, arg_1)), _wgslsmith_f_op_f32(func_3(vec2<u32>(var_0.b, var_0.b), vec4<bool>(arg_0.x, true, arg_3.d.b, false), 546f, u_input.a))))));
    let var_2 = vec2<bool>(any(select(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(arg_3.d.d, false, true, false), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(false, arg_3.d.d, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false), vec4<bool>(true, true, arg_3.d.d, true))), !select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b, 12u)], true, true, false), vec4<bool>(false, arg_0.x, false, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.b, 12u)], arg_0.x, global1[_wgslsmith_index_u32(13893u, 12u)], false)), !(true && global1[_wgslsmith_index_u32(4294967295u, 12u)]))), arg_0.x);
    global0 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b, _wgslsmith_mult_u32(reverseBits(1u), _wgslsmith_div_u32(~53746u, 0u ^ var_0.b) >> (98149u % 32u))), 2u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1766f * _wgslsmith_f_op_f32(f32(-1f) * -1214f)) - _wgslsmith_f_op_f32(arg_0.d.x - 164f)), arg_0.d.x), Struct_1(924f, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.d), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -2147483647i, u_input.b)) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -17676i), vec3<i32>(-52025i, -1i, 31883i)), select(vec3<i32>(1i, -6806i, -2147483647i), reverseBits(vec3<i32>(45569i, u_input.b, 15527i)), true)), 1i));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global1 = array<bool, 12>();
    var var_1 = func_1(select(!select(vec3<bool>(true, false, false), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(true, false, false), true), true), select(vec3<bool>(true, !arg_1, arg_1), !vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_0.b.b, 12u)]), true), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(14934u, 12u)], global1[_wgslsmith_index_u32(var_0.b.b, 12u)]), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<bool>(true, true, true)), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.b, 12u)], false, arg_1), vec3<bool>(false, true, false), any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 12u)], arg_1, arg_1, true))), !vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.b, 12u)], arg_1, global1[_wgslsmith_index_u32(arg_0.b, 12u)]))), _wgslsmith_f_op_f32(f32(-1f) * -351f), var_0.c.x, Struct_4(~(~countOneBits(0u)), select(17749u, _wgslsmith_add_u32(arg_0.b, 0u), false), ~(~12550u), Struct_2(var_0.b.d.x, all(select(vec2<bool>(arg_1, false), vec2<bool>(global1[_wgslsmith_index_u32(9417u, 12u)], false), true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), -236f, _wgslsmith_f_op_f32(-var_0.a.x), 1706f), true, arg_0.d.yz)));
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = !(!((global1[_wgslsmith_index_u32(4294967295u, 12u)] | global1[_wgslsmith_index_u32(arg_0.b, 12u)]) == any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], false)))) & !select(global1[_wgslsmith_index_u32(arg_0.b, 12u)], !all(vec2<bool>(global1[_wgslsmith_index_u32(61102u, 12u)], false)), false);
    var var_1 = Struct_2(342f, global1[_wgslsmith_index_u32(~(~u_input.a.x) ^ ~(1u & arg_0.b), 12u)] & global1[_wgslsmith_index_u32(~u_input.a.x, 12u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(325f, _wgslsmith_f_op_f32(-arg_0.d.x), -380f, _wgslsmith_div_f32(-1245f, arg_0.d.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 1000f, 124f, arg_0.c) + vec4<f32>(-708f, 406f, 442f, -2511f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.x, -1817f, arg_0.c, arg_0.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 235f, arg_0.c, arg_0.a)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.d.x, -1060f, arg_0.a, -1308f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.c, arg_0.c, -565f)), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(arg_0.b, 12u)], global1[_wgslsmith_index_u32(18820u, 12u)], true)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(45913u, 80647u, arg_0.b, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(15110u, u_input.a.x, 0u, 66191u), vec4<u32>(u_input.a.x, 20028u, 12410u, u_input.a.x))), 12u)])), (54359i << (abs(0u) % 32u)) > u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.xy) * arg_0.d.xz));
    global0 = array<Struct_1, 2>();
    var_1 = Struct_2(2046f, all(select(!select(vec3<bool>(false, true, var_1.b), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(u_input.a.x <= 17099u, false, !var_1.b), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(-arg_0.c)))), 581f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-429f, 2403f, global1[_wgslsmith_index_u32(4565u, 12u)])), -763f))), false, vec2<f32>(474f, 286f));
    let var_2 = select(!(!(!select(vec2<bool>(var_1.b, true), vec2<bool>(false, true), vec2<bool>(var_1.d, global1[_wgslsmith_index_u32(0u, 12u)])))), vec2<bool>(any(select(vec2<bool>(var_1.d, global1[_wgslsmith_index_u32(1u, 12u)]), !vec2<bool>(true, var_1.d), true)), all(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(6965u, 4294967295u), 12u)], global1[_wgslsmith_index_u32(~arg_0.b, 12u)], !global1[_wgslsmith_index_u32(u_input.a.x, 12u)]))), select(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b, 12u)], global1[_wgslsmith_index_u32(arg_0.b, 12u)]), vec2<bool>(false, false), var_1.d), vec2<bool>(var_1.d, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(67593u, 12u)], var_1.b))), vec2<bool>(true, !(var_1.a == -141f)), !any(select(vec3<bool>(var_1.d, var_1.d, false), vec3<bool>(var_1.b, false, var_1.b), global1[_wgslsmith_index_u32(0u, 12u)]))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(~func_5(func_4(func_1(vec3<bool>(global1[_wgslsmith_index_u32(50937u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), 1430f, 32692i, Struct_4(u_input.a.x, 21935u, u_input.a.x, Struct_2(1102f, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec4<f32>(966f, 528f, 457f, -635f), global1[_wgslsmith_index_u32(u_input.a.x, 12u)], vec2<f32>(1000f, 468f)))), false)), _wgslsmith_sub_i32(u_input.b, -(_wgslsmith_div_i32(u_input.b, u_input.b) >> (4294967295u % 32u))));
    global0 = array<Struct_1, 2>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(540f, 958f), vec2<f32>(1000f, -538f))))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(func_3(u_input.a.yz, vec4<bool>(true, global1[_wgslsmith_index_u32(32792u, 12u)], false, global1[_wgslsmith_index_u32(4221u, 12u)]), 1000f, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))))), select(~63698u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 2035u), vec2<u32>(4294967295u, 27675u)) % 32u), 23804u, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f + -279f)) - -1097f), vec3<f32>(-1253f, -1934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -255f)))), ~(~(reverseBits(vec3<i32>(55837i, u_input.b, -11362i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(26699i, -31781i, -10924i)))));
    var var_2 = vec2<i32>(-2147483647i, var_1.c.x);
    var var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), -365f)), _wgslsmith_f_op_vec2_f32(-var_1.a), any(select(vec4<bool>(global1[_wgslsmith_index_u32(32462u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(10673u, 12u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), false)) & !global1[_wgslsmith_index_u32(~u_input.a.x, 12u)])), var_1.a, vec4<i32>(var_1.c.x, -27624i, countOneBits(abs(-2147483647i)), ~(-firstLeadingBit(var_2.x))), firstTrailingBit(vec3<u32>(func_1(!vec3<bool>(global1[_wgslsmith_index_u32(var_1.b.b, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true), var_1.b.d.x, -2147483647i, Struct_4(var_1.b.b, u_input.a.x, var_1.b.b, Struct_2(var_1.b.c, global1[_wgslsmith_index_u32(6015u, 12u)], vec4<f32>(-154f, var_1.b.a, var_1.a.x, var_1.b.a), false, vec2<f32>(753f, 331f)))).b, 73943u, u_input.a.x)));
}

