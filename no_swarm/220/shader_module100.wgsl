struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, vec3<i32>(0i, 2147483647i, 1i)), Struct_1(true, vec3<i32>(21333i, -1i, 54853i)), Struct_1(false, vec3<i32>(-12585i, 5689i, -54420i)), Struct_1(true, vec3<i32>(-16478i, -61748i, 0i)), Struct_1(true, vec3<i32>(65600i, 0i, 554i)), Struct_1(false, vec3<i32>(8031i, 1i, 2147483647i)));

var<private> global2: array<i32, 17> = array<i32, 17>(1i, -1882i, -1i, -8175i, 63613i, 30697i, 2147483647i, -1i, -1i, -4959i, -72618i, 2147483647i, 1i, 1i, 45004i, 1i, 34918i);

var<private> global3: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(7852i, -11076i, -10710i), vec3<i32>(2147483647i, 67007i, -1i), vec3<i32>(1i, 2147483647i, 33434i));

var<private> global4: Struct_1 = Struct_1(true, vec3<i32>(-15500i, -43131i, 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> vec4<f32> {
    var var_0 = -2147483647i >> (max(~u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(11799u, 35789u, 13168u, 16340u), vec4<u32>(u_input.b, u_input.b, 1u, 59436u)) | _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 0u)))) % 32u);
    var var_1 = select(global0.zyz, vec3<bool>(!((arg_1.x >= 2383f) & (arg_1.x != arg_1.x)), !(true & (0u > u_input.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(465f * arg_1.x))) != _wgslsmith_f_op_f32(706f + _wgslsmith_f_op_f32(ceil(442f)))), !(!select(select(vec3<bool>(global4.a, global4.a, false), global0.ywy, arg_2), global0.xzz, any(global0.ywy))));
    global1 = array<Struct_1, 6>();
    var_0 = _wgslsmith_mult_i32(~(-u_input.a | global4.b.x) | -1i, _wgslsmith_dot_vec3_i32(global4.b, vec3<i32>(82391i, 10803i, _wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(u_input.b, 17u)], ~global4.b.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))))) * 436f);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), -1000f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = array<Struct_1, 6>();
    var var_0 = u_input.d;
    var var_1 = Struct_3(Struct_2(false, firstTrailingBit(177i), global1[_wgslsmith_index_u32(u_input.b, 6u)], global0.x, arg_0 & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32591u, 10202u, arg_0, arg_0), vec4<u32>(1u, 1u, 36903u, u_input.b)), ~arg_0)), 819f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2231f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-508f, -2686f, false)), _wgslsmith_f_op_f32(835f - -115f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1400f) * _wgslsmith_f_op_f32(f32(-1f) * -1578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-242f - -202f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 581f)))), Struct_1(all(!global0.zyy), -global4.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(1i, vec3<f32>(1280f, 690f, -233f), global4.a, -2147483647i)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, 224f, 510f, 2378f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, 110f, -1000f, -301f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1018f, 442f, -947f, 676f) + vec4<f32>(612f, 664f, 2326f, 1000f))))));
    let var_2 = firstLeadingBit(2147483647i & _wgslsmith_clamp_i32(global4.b.x, -(~var_1.d.b.x), 48361i));
    let var_3 = vec2<u32>(~arg_0 << (~0u % 32u), var_1.a.e);
    return Struct_1(!global4.a, reverseBits(global4.b));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec2<u32>) -> bool {
    let var_0 = func_2(~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1.a.a.e, u_input.b, 37547u), vec3<u32>(u_input.b, 1926u, arg_1.a.a.e), true), firstLeadingBit(select(vec3<u32>(0u, arg_1.a.a.e, arg_1.a.a.e), vec3<u32>(1u, u_input.b, arg_2.x), vec3<bool>(true, global0.x, global4.a)))));
    var var_1 = any(!vec4<bool>(!all(vec4<bool>(false, false, global0.x, arg_1.a.d.a)), var_0.a, global4.a, true));
    var var_2 = global1[_wgslsmith_index_u32(684u, 6u)];
    global2 = array<i32, 17>();
    let var_3 = Struct_4(Struct_3(Struct_2(true || !arg_1.a.d.a, -global4.b.x, func_2(64066u), true, u_input.b), _wgslsmith_f_op_f32(1002f - arg_1.a.e.x), _wgslsmith_f_op_vec3_f32(arg_1.a.e.wwz - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.c.x), _wgslsmith_f_op_f32(floor(-1000f)), -1171f)), Struct_1(true, vec3<i32>(global2[_wgslsmith_index_u32(arg_2.x, 17u)], global2[_wgslsmith_index_u32(5058u, 17u)], arg_1.a.a.c.b.x) << (~vec3<u32>(arg_1.a.a.e, u_input.b, arg_0) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(arg_1.a.e - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.e - arg_1.a.e) + arg_1.a.e))));
    return abs(u_input.c) > func_2(40076u).b.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    global3 = array<vec3<i32>, 3>();
    let var_0 = global0.zxz;
    global4 = Struct_1(func_2(arg_2.x).a, -min(global3[_wgslsmith_index_u32((arg_3.a.e & 1u) << ((50282u << (1u % 32u)) % 32u), 3u)], vec3<i32>(u_input.c, -2147483647i << (arg_2.x % 32u), _wgslsmith_clamp_i32(-2147483647i, arg_0.x, global4.b.x))));
    let var_1 = Struct_2(global0.x & !(global0.x | any(vec2<bool>(global0.x, true))), arg_3.a.c.b.x, global1[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(abs(arg_2.x), ~arg_2.x)), 6u)], all(vec4<bool>(false, (u_input.b | arg_2.x) >= _wgslsmith_div_u32(24398u, u_input.b), global0.x != (false || arg_3.a.d), !any(var_0.yz))), select(~(~abs(arg_2.x)), _wgslsmith_div_u32(4294967295u << (~arg_3.a.e % 32u), reverseBits(arg_2.x)), all(!select(vec3<bool>(false, arg_3.d.a, var_0.x), vec3<bool>(true, global4.a, arg_3.a.a), false))));
    var var_2 = Struct_3(Struct_2(true, 19759i << (_wgslsmith_mult_u32(u_input.b << (arg_2.x % 32u), 0u ^ arg_2.x) % 32u), global1[_wgslsmith_index_u32(arg_2.x, 6u)], arg_1.x, ~countOneBits(firstLeadingBit(66806u))), 1095f, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.e.ywz)) * arg_3.c))), func_2(arg_3.a.e), arg_3.e);
    return func_2(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(u_input.d.zwx, select(!vec4<bool>(func_1(u_input.b, Struct_4(Struct_3(Struct_2(global4.a, 840i, Struct_1(global4.a, u_input.d.wyw), global0.x, u_input.b), 309f, vec3<f32>(-949f, 1421f, -109f), Struct_1(global4.a, u_input.d.xwx), vec4<f32>(281f, -139f, 1461f, -2068f))), vec2<u32>(1u, 1u)), select(global4.a, true, false), !global4.a, any(vec4<bool>(true, global0.x, false, false))), vec4<bool>(global0.x, all(global0.yz) && global0.x, global0.x, global4.a), global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, 0u)), u_input.b), ~(vec3<u32>(22531u, u_input.b, u_input.b) >> (vec3<u32>(12033u, 103866u, 207u) % vec3<u32>(32u)))) & abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u))), Struct_3(Struct_2(true, _wgslsmith_mult_i32(-12560i, -4489i) ^ select(0i, 2147483647i, global0.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, u_input.b), 6u)], select(global0.x, any(vec4<bool>(global4.a, false, global0.x, global4.a)), false), max(4294967295u, firstTrailingBit(u_input.b))), -253f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1017f, 311f, -205f), vec3<f32>(548f, -1542f, -115f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1279f, -567f, -1013f) - vec3<f32>(-1209f, -1098f, -899f)))), vec3<f32>(3235f, _wgslsmith_f_op_f32(1243f - 431f), _wgslsmith_f_op_f32(f32(-1f) * -1412f)), vec3<bool>(!global0.x, all(vec2<bool>(global4.a, false)), false && global0.x))), func_2(32939u), vec4<f32>(_wgslsmith_f_op_f32(floor(-581f)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.c, vec3<f32>(1000f, -141f, -1133f), global0.x, global4.b.x)).x))));
    global4 = Struct_1(any(select(vec3<bool>(all(vec2<bool>(true, false)), false, !global4.a), !select(vec3<bool>(false, false, false), global0.yzw, true), !all(vec4<bool>(global4.a, global0.x, global0.x, global0.x)))), global3[_wgslsmith_index_u32(~(~u_input.b), 3u)]);
    let var_0 = ~(~vec4<u32>(~1u, u_input.b, ~(~u_input.b), ~1u));
    global2 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(113f, 1564f, 624f, -219f) - _wgslsmith_f_op_vec4_f32(func_3(2147483647i, vec3<f32>(-595f, 721f, -1733f), false, -1i))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1170f, -289f, 2382f))) - vec4<f32>(1405f, 1000f, -402f, 1000f)))), (vec4<i32>(-1i) * -u_input.d) & max(u_input.d, abs(u_input.d) << (var_0 % vec4<u32>(32u))), u_input.b, u_input.d.x, ~(-21215i) << (var_0.x % 32u));
}

