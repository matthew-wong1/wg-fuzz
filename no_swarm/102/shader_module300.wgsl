struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(1u, 22684u), vec2<u32>(58413u, 16213u), vec2<u32>(25040u, 4294967295u), vec2<u32>(14611u, 63607u), vec2<u32>(21426u, 10442u), vec2<u32>(7150u, 11554u), vec2<u32>(15791u, 1u), vec2<u32>(19857u, 4294967295u), vec2<u32>(45925u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 410u), vec2<u32>(29922u, 1701u), vec2<u32>(52900u, 6292u), vec2<u32>(4294967295u, 71309u), vec2<u32>(47088u, 0u), vec2<u32>(0u, 82737u), vec2<u32>(1u, 139025u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(10090u, 47346u));

var<private> global1: bool = false;

var<private> global2: Struct_3;

var<private> global3: array<i32, 10>;

var<private> global4: array<vec2<bool>, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> bool {
    let var_0 = global2.a;
    var var_1 = vec3<bool>(true, !(!(all(vec2<bool>(true, true)) == true)), any(!vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true)));
    var var_2 = Struct_1(-905f, !vec3<bool>(var_1.x || true, false, true), 9047u);
    var var_3 = Struct_3(Struct_2(vec3<u32>(1u, 6748u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.a.x, var_2.c, 76864u, var_0.a.x), vec4<u32>(20463u, 45176u, global2.a.a.x, var_2.c))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, -710f) + vec2<f32>(-243f, 589f)) + vec2<f32>(var_2.a, 1878f)), vec2<f32>(var_2.a, -1131f)))));
    return all(!(!select(select(var_2.b, vec3<bool>(true, true, var_1.x), var_2.b.x), var_2.b, vec3<bool>(var_2.b.x, false, false))));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec4<u32> {
    var var_0 = u_input.d.xzx;
    let var_1 = i32(-1i) * -64715i;
    var var_2 = select(abs(_wgslsmith_clamp_i32(~5388i, _wgslsmith_mod_i32(var_0.x, global3[_wgslsmith_index_u32(arg_1.a.a.x, 10u)]), _wgslsmith_add_i32(var_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 10u)]))), u_input.d.x, !all(global4[_wgslsmith_index_u32(47554u, 18u)]) && ((global2.a.a.x > arg_1.a.a.x) | true)) ^ var_0.x;
    let var_3 = 20556u;
    let var_4 = Struct_1(arg_2, vec3<bool>(true, true, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false))), 0u);
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, min(abs(arg_1.a.a.x), ~0u), ~(~arg_0), 2940u), abs(~(~vec4<u32>(global2.a.a.x, var_4.c, var_3, arg_1.a.a.x))));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-573f, _wgslsmith_f_op_f32(abs(1502f)))));
    var var_1 = !select(!(!select(vec2<bool>(true, true), global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(global2.a.a.x, 18u)])), !select(vec2<bool>(true, false), global4[_wgslsmith_index_u32(1u, 18u)], true), !vec2<bool>(func_2(), any(vec2<bool>(true, true))));
    let var_2 = vec3<i32>(global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(58934u, 4294967295u, 92227u, u_input.a.x), func_3(global2.a.a.x, Struct_3(global2.a), 1000f))), 10u)], _wgslsmith_sub_i32(_wgslsmith_sub_i32(2147483647i, (global3[_wgslsmith_index_u32(global2.a.a.x, 10u)] >> (u_input.a.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global2.a.a.x, global2.a.a.x), vec4<u32>(u_input.a.x, u_input.e, u_input.e, 5063u)) % 32u)), reverseBits(1i)), max(u_input.c, _wgslsmith_dot_vec3_i32(u_input.d.xwz, ~u_input.d.xzx) | _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(8989u, 10u)], min(u_input.b.x, u_input.b.x))));
    let var_3 = Struct_3(Struct_2(vec3<u32>(_wgslsmith_clamp_u32(global2.a.a.x, u_input.e, ~4294967295u), ~_wgslsmith_dot_vec3_u32(global2.a.a, vec3<u32>(u_input.e, 0u, global2.a.a.x)), ~83367u)));
    let var_4 = -min(u_input.c, _wgslsmith_div_i32(u_input.d.x, u_input.c));
    return _wgslsmith_mod_vec2_u32(countOneBits((vec2<u32>(153745u, global2.a.a.x) & abs(vec2<u32>(1u, 1u))) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(55079u, u_input.a.x), global2.a.a.xx) >> (abs(vec2<u32>(u_input.e, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(10921u, reverseBits(54512u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = -u_input.d.wxz;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(-981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f * -432f) - _wgslsmith_f_op_f32(trunc(2645f))), true)), !(!arg_3.yxz), 64489u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), -539f, _wgslsmith_f_op_f32(-var_1.a));
    var var_3 = global2.a;
    let var_4 = Struct_3(global2.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1147f, 1000f, var_1.a), vec3<f32>(var_2.x, arg_1.a, var_2.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-380f, arg_1.a, var_1.a)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(446f, -1063f, -1000f) - vec3<f32>(582f, var_1.a, -2287f))) + vec3<f32>(1310f, 389f, _wgslsmith_f_op_f32(-var_1.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, var_2.x, 2207f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, -860f, 1690f))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-586f, 1052f, -1262f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, var_1.a, 460f) - vec3<f32>(510f, var_1.a, var_1.a)))))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_2(vec3<u32>(global2.a.a.x, (~u_input.a.x >> (1u % 32u)) >> (0u % 32u), ~u_input.e));
    return _wgslsmith_mult_u32(~(~global2.a.a.x), ~(var_0.a.x ^ u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 10>();
    global3 = array<i32, 10>();
    var var_0 = -global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~abs(45239u), ~(~4294967295u)), 10u)];
    let var_1 = Struct_3(global2.a);
    var var_2 = func_5(1f, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_dot_vec2_u32(~func_1(), vec2<u32>(~var_1.a.a.x, reverseBits(var_1.a.a.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(857f, -257f))), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), 1u), Struct_2(_wgslsmith_add_vec3_u32(min(var_1.a.a, vec3<u32>(4294967295u, 11474u, 1u)), ~global2.a.a)), vec4<bool>(true, true, false, 0u > select(52082u, 1u, false)))));
    var var_3 = -287f;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_f_op_f32(f32(-1f) * -214f), all(vec3<bool>(true, true, true)))))), _wgslsmith_f_op_f32(step(-1087f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1010f)))))));
    let var_5 = _wgslsmith_clamp_vec4_u32(vec4<u32>(10471u, ~global2.a.a.x, min(~1u & _wgslsmith_sub_u32(4294967295u, u_input.e), func_5(_wgslsmith_f_op_f32(max(1000f, var_4.x)), var_4)), ~var_1.a.a.x), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(25336u, u_input.e, 28888u, 4294967295u), vec4<u32>(u_input.a.x, 23630u, 4294967295u, u_input.e)) | vec4<u32>(u_input.e, 1u, u_input.e, 4294967295u)) & (~(~vec4<u32>(1u, var_1.a.a.x, 0u, var_1.a.a.x)) >> (vec4<u32>(u_input.a.x, 1u, u_input.e | global2.a.a.x, 1u) % vec4<u32>(32u))), vec4<u32>(func_1().x, var_1.a.a.x, _wgslsmith_sub_u32(~3846u, var_1.a.a.x), 30137u));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.zz, var_4.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * -859f)), _wgslsmith_f_op_f32(-290f + -1556f), _wgslsmith_f_op_f32(1007f + 571f), var_4.x) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1199f, 153f, -706f, -376f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_4.x, -2173f, -1968f), vec4<f32>(var_4.x, 2016f, 1205f, var_4.x), vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-572f, -1311f, -104f, var_4.x)))))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -18800i, u_input.d.x, countOneBits(-2147483647i)), vec4<i32>(-45431i, select(global3[_wgslsmith_index_u32(1u, 10u)], 44252i, false), u_input.d.x, countOneBits(-1i))), var_4.x);
}

