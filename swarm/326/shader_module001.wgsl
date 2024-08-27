struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-1i, 0i, 2147483647i, 6314i, 1i, 0i, 22004i, 2147483647i, 1i, -8834i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b.a))))), _wgslsmith_f_op_f32(f32(-1f) * -652f))), _wgslsmith_add_i32(0i, ~_wgslsmith_mod_i32(1i, 45820i) << (0u % 32u)), vec3<u32>(countOneBits(u_input.b), u_input.c.x, 13696u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3.b.a)), -1000f, _wgslsmith_f_op_f32(ceil(arg_3.b.d.x))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.b.d.x), _wgslsmith_f_op_f32(f32(-1f) * -239f), false)), arg_3.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(arg_3.b.a)))), vec3<bool>(all(vec2<bool>(true, arg_1)), true, true))), firstTrailingBit(0u));
    var var_1 = arg_3.b.b;
    let var_2 = -1i;
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_3.b.e) >> (4294967295u % 32u), _wgslsmith_add_u32(~arg_3.b.e, _wgslsmith_mult_u32(0u, 0u)), ~_wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(arg_3.b.e, 42455u))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_3.b.c.x, ~arg_3.b.c.x), u_input.a)) < arg_3.b.c.x;
    var_1 = _wgslsmith_div_i32(-11812i, _wgslsmith_mult_i32(-2147483647i & (var_0.b & 5525i), global0[_wgslsmith_index_u32(u_input.b, 10u)] << (~0u % 32u))) << (_wgslsmith_mod_u32(~u_input.b, max(_wgslsmith_clamp_u32(73230u, ~arg_3.b.e, abs(40313u)), ~_wgslsmith_mult_u32(4294967295u, u_input.a.x))) % 32u);
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32((_wgslsmith_mult_u32(arg_3.b.e, 17114u) ^ u_input.b) ^ ~var_0.c.x, arg_3.b.c.x, 57266u), u_input.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> u32 {
    global0 = array<i32, 10>();
    let var_0 = vec3<u32>(~(_wgslsmith_add_u32(u_input.b, 43777u) & ~u_input.c.x), countOneBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(42805u, 21118u), ~u_input.a.x)) >> (0u % 32u), u_input.a.x);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~max(var_0.x, 4294967295u), min(~34632u, _wgslsmith_sub_u32(10351u, var_0.x))), 10u)];
    let var_2 = arg_2.a.x;
    global0 = array<i32, 10>();
    return ~(60631u & func_3(arg_2, !var_2 & (global0[_wgslsmith_index_u32(18660u, 10u)] == arg_0.b), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(arg_0.c.x, 4550u, 0u) << (vec3<u32>(1u, var_0.x, arg_0.c.x) % vec3<u32>(32u))), 10u)], Struct_3(Struct_2(arg_2.a), Struct_1(-168f, 2147483647i, vec3<u32>(0u, 18544u, 2568u), arg_0.d, arg_0.e))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = ~(~(((arg_2.d.wzz & vec3<u32>(u_input.c.x, 5043u, 91961u)) & select(arg_2.c.c, vec3<u32>(u_input.c.x, arg_2.c.e, u_input.c.x), vec3<bool>(arg_2.b.x, arg_2.b.x, true))) << (u_input.c.zyz % vec3<u32>(32u))));
    let var_1 = Struct_3(arg_0, Struct_1(836f, -1i, vec3<u32>(~1u, 39063u, _wgslsmith_sub_u32(var_0.x, 3647u)), arg_2.c.d, max(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c.x, var_0.x), select(var_0.x, 4294967295u, arg_2.b.x)), arg_2.c.c.x)));
    var_0 = vec3<u32>(25960u, 1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(~4294967295u, u_input.a.x), vec2<u32>(8390u, countOneBits(arg_2.d.x)), arg_2.b.x), ~vec2<u32>(58501u & u_input.b, var_1.b.e | 22297u)));
    var var_2 = vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, ~var_0.x) >> (9889u % 32u)), max(~4294967295u, ~arg_2.c.c.x), 27261u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.d.x, var_1.b.a), 106f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.a, arg_2.c.d.x))))), countOneBits(arg_1), arg_2.c.c, arg_2.c.d, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~u_input.c, vec4<u32>(6872u, 0u, var_0.x, 35178u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~53538u, ~6702u, 1u, firstLeadingBit(4294967295u)), firstTrailingBit(countOneBits(u_input.c)), min(u_input.c, vec4<u32>(var_1.b.c.x, var_2.x, 7196u, 16167u)))));
    return Struct_2(arg_0.a);
}

fn func_1(arg_0: vec4<f32>) -> vec3<f32> {
    global0 = array<i32, 10>();
    let var_0 = Struct_2(vec4<bool>(true, true, true, true));
    let var_1 = ~(-2918i);
    global0 = array<i32, 10>();
    let var_2 = func_4(Struct_2(!vec4<bool>(var_0.a.x, !var_0.a.x, var_0.a.x | var_0.a.x, false)), reverseBits(1i), Struct_4(~vec4<i32>(_wgslsmith_mult_i32(var_1, 28208i), 2147483647i, ~(-25943i), max(var_1, -2147483647i)), var_0.a.zww, Struct_1(_wgslsmith_f_op_f32(-arg_0.x), 0i, ~(~vec3<u32>(4294967295u, 55270u, 26031u)), vec3<f32>(-1515f, arg_0.x, -731f), ~u_input.c.x), vec4<u32>(0u << (select(66803u, u_input.b, var_0.a.x) % 32u), firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 1u, u_input.b) >> (u_input.c.xxw % vec3<u32>(32u))), ~func_2(Struct_1(arg_0.x, global0[_wgslsmith_index_u32(11858u, 10u)], vec3<u32>(26067u, u_input.a.x, 62696u), arg_0.zyw, 4294967295u), u_input.a, var_0, 2147483647i))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 763f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x) - _wgslsmith_f_op_f32(sign(arg_0.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, var_2.a.x)), -1297f, -280f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(966f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, -943f, 3398f, -1117f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(939f, 145f, 412f, 742f), vec4<f32>(1000f, 777f, 1589f, -218f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, 664f, 380f, 933f)), vec4<bool>(false, false, true, true)))))));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 10u)], 0i, -28402i) | vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), abs(vec3<i32>(global0[_wgslsmith_index_u32(34257u, 10u)], 1i, global0[_wgslsmith_index_u32(u_input.c.x, 10u)]))), vec3<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(u_input.c.x, 10u)], -1i, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(37085u, 10u)], global0[_wgslsmith_index_u32(u_input.c.x, 10u)], -49205i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), firstLeadingBit(-3095i))), vec3<i32>(-13176i, ~max(-2147483647i, global0[_wgslsmith_index_u32(55110u, 10u)]), _wgslsmith_div_i32(i32(-1i) * -18558i, 3300i))));
}

