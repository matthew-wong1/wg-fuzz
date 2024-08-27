struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(612f, 498f, -2291f, 1215f);

var<private> global1: vec2<i32> = vec2<i32>(5238i, i32(-2147483648));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = !vec3<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), !(arg_0.x < _wgslsmith_f_op_f32(trunc(-925f))), ~_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) > u_input.c.x);
    var var_1 = !(u_input.c.x != _wgslsmith_sub_u32(~abs(u_input.c.x), countOneBits(39198u) & (u_input.c.x << (u_input.c.x % 32u))));
    var_0 = vec3<bool>(u_input.c.x <= _wgslsmith_mult_u32(~(~u_input.c.x), min(77960u ^ u_input.c.x, ~u_input.c.x)), 19614u != (u_input.c.x & 85036u), !var_0.x == !(!select(var_0.x, var_0.x, true)));
    var var_2 = -(~(u_input.a.zw & vec2<i32>(1i, 1i)));
    let var_3 = !(375f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, global0.x, arg_0.x, global0.x) * vec4<f32>(global0.x, 630f, global0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global0.x, 557f, global0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -833f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -740f), -396f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.x))))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = arg_2.c.d.x;
    global1 = vec2<i32>(6743i >> (arg_0.b % 32u), u_input.b) << (vec2<u32>(44872u, u_input.c.x) % vec2<u32>(32u));
    let var_1 = arg_2.c;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xz + arg_1)), vec2<bool>(all(arg_0.c.a.a), all(vec4<bool>(arg_0.c.a.a.x, true, false, arg_0.c.a.a.x))))))), abs(firstTrailingBit(~arg_2.b)) >> (_wgslsmith_mult_u32(arg_2.c.c.x, arg_2.c.c.x) % 32u), Struct_2(Struct_1(select(!arg_0.c.a.a, select(vec2<bool>(true, arg_0.c.a.a.x), arg_0.c.a.a, arg_0.c.a.a), arg_2.c.a.a.x)), var_1.b, vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(arg_2.b, u_input.c.x, 4294967295u))), ~arg_2.b | _wgslsmith_add_u32(74666u, 0u), 1u), _wgslsmith_sub_vec3_u32(~(~arg_0.c.c), abs(~var_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2.c.b, _wgslsmith_f_op_vec4_f32(abs(arg_0.c.b)), any(vec4<bool>(arg_0.c.a.a.x, false, arg_2.c.a.a.x, false)))))));
    let var_3 = arg_0.b;
    return u_input.a ^ vec4<i32>(-_wgslsmith_mod_i32(-1i, 12479i) >> (~firstTrailingBit(45731u) % 32u), reverseBits(u_input.a.x), global1.x, (-u_input.a.x ^ -global1.x) | u_input.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-594f));
    var var_1 = true;
    let var_2 = func_4(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, -471f)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(round(831f)))), _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, ~0u) << (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) % 32u), Struct_2(Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(195f, global0.x, global0.x, global0.x)), vec4<f32>(global0.x, global0.x, global0.x, -948f), vec4<bool>(true, true, false, true))), vec3<u32>(1u, max(u_input.c.x, u_input.c.x), 41527u), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_mod_vec3_u32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, 894f, global0.x, -2364f))))), global0.wx, Struct_3(_wgslsmith_f_op_vec2_f32(global0.xw * _wgslsmith_f_op_vec2_f32(global0.zy - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(432f, global0.x))))), u_input.c.x, Struct_2(Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-1000f, -340f))), vec3<u32>(~1u, u_input.c.x ^ 31976u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), max(abs(u_input.c), vec3<u32>(4294967295u, 16893u, 41266u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 683f, 193f, global0.x)) + vec4<f32>(-176f, 1954f, -541f, -703f)))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1742f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.zw)))), ~select(4294967295u, 83946u, 42770i < u_input.b), Struct_2(Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2040f, global0.x, global0.x, 493f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1758f, global0.x, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), u_input.c, select(~(u_input.c ^ vec3<u32>(u_input.c.x, u_input.c.x, 21025u)), u_input.c, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(func_3(global0.xz))));
    var var_4 = var_3.c;
    return Struct_1(select(var_4.a.a, select(!var_4.a.a, vec2<bool>(true, 1u < var_3.b), vec2<bool>(false, true)), var_3.c.a.a));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xx - global0.zy)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-1189f, global0.x))))), _wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, 1u, var_0.a.x), ~u_input.c.x, select(u_input.c.x, u_input.c.x, var_0.a.x)), ~vec3<u32>(u_input.c.x, u_input.c.x, 11405u)) & (~u_input.c.x >> (~firstLeadingBit(12034u) % 32u)), Struct_2(Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, _wgslsmith_f_op_f32(ceil(-1615f)), global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-975f, global0.x, 287f, 1265f), vec4<f32>(-136f, global0.x, 112f, global0.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -622f, global0.x, -1177f) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), vec3<u32>(~4294967295u, reverseBits(~4294967295u), ~1u), vec3<u32>(u_input.c.x, reverseBits(~u_input.c.x), ~u_input.c.x), vec4<f32>(global0.x, global0.x, -565f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * -193f))))));
    var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1441f * -1000f)), _wgslsmith_f_op_f32(var_1.c.b.x + _wgslsmith_f_op_f32(max(var_1.c.e.x, global0.x)))))), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), var_1.c);
    let var_2 = countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(1u, 0u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, u_input.c.x), vec2<u32>(35216u, 1u))), abs(vec2<u32>(52108u, 9019u))));
    return Struct_4(~(firstTrailingBit(u_input.a.zyw) ^ vec3<i32>(27514i, -1i, _wgslsmith_sub_i32(58606i, -52624i))), Struct_2(var_1.c.a, vec4<f32>(879f, -2253f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(783f, global0.x), _wgslsmith_f_op_f32(abs(-754f))))), vec3<u32>(21770u, 0u, firstTrailingBit(var_2)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, 35584u, _wgslsmith_clamp_u32(var_2, 25137u, 56501u)), min(vec3<u32>(4294967295u, 6246u, var_2), _wgslsmith_clamp_vec3_u32(u_input.c, var_1.c.c, vec3<u32>(1u, 22990u, 4294967295u))), vec3<u32>(~102765u, var_1.b, 24576u)), var_1.c.b), Struct_3(_wgslsmith_f_op_vec2_f32(floor(global0.xz)), ~(~min(51969u, 73727u)), var_1.c), ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), select(vec4<u32>(0u, 70881u, 4294967295u, 2707u), vec4<u32>(u_input.c.x, 76133u, var_1.b, var_1.b), vec4<bool>(var_1.c.a.a.x, true, var_0.a.x, false)))), select(vec2<bool>((1000f == var_1.c.b.x) != true, all(vec2<bool>(true, true))), !vec2<bool>(any(vec3<bool>(var_1.c.a.a.x, var_0.a.x, var_1.c.a.a.x)), var_0.a.x != var_1.c.a.a.x), var_0.a.x));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = func_1();
    let var_1 = countOneBits(_wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(~u_input.a.wyz, ~arg_0.a), arg_0.a, vec3<bool>(any(vec3<bool>(false, true, false)), true, true)), -(~(-arg_0.a))));
    let var_2 = Struct_4(vec3<i32>(global1.x, _wgslsmith_mod_i32(-17692i, _wgslsmith_mod_i32(2147483647i, arg_0.a.x)), reverseBits(select(i32(-1i) * -87680i, var_1, !arg_0.b.a.a.x))), var_0.c.c, var_0.c, firstLeadingBit(vec4<u32>(1u & max(var_0.d.x, arg_0.d.x), ~arg_0.c.c.d.x | 0u, ~u_input.c.x, 3853u)), arg_0.e);
    var var_3 = false;
    var var_4 = ~(~max(~_wgslsmith_add_u32(var_0.c.b, 1u), var_0.c.b));
    return Struct_2(Struct_1(func_2().a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0.b.e.x, -314f, var_0.b.e.x), var_0.b.e))) * _wgslsmith_f_op_vec4_f32(-var_0.b.e)))), abs(vec3<u32>(_wgslsmith_sub_u32(var_0.c.b, 20230u) ^ 13771u, ~0u, ~_wgslsmith_mult_u32(arg_0.d.x, 30291u))), arg_0.d.ywy, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(-1857f, _wgslsmith_f_op_f32(global0.x - -1107f))), _wgslsmith_f_op_f32(-arg_0.b.e.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1502f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21064i;
    var var_1 = Struct_4(vec3<i32>(-(~u_input.b), global1.x, global1.x), func_5(func_1()), func_1().c, vec4<u32>(~_wgslsmith_add_u32(u_input.c.x, 50091u), u_input.c.x, u_input.c.x, abs(4294967295u)) | _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 10649u), ~select(vec4<u32>(17752u, 33837u, u_input.c.x, 4294967295u), vec4<u32>(1u, 1u, 94906u, 29883u), vec4<bool>(false, false, true, false))), vec2<bool>(any(vec3<bool>(u_input.b > -2147483647i, true, select(true, false, false))), all(vec3<bool>(any(vec2<bool>(true, false)), true, true))));
    global1 = -firstTrailingBit(vec2<i32>(u_input.b, -2147483647i));
    let var_2 = Struct_2(func_5(Struct_4(var_1.a, var_1.c.c, func_1().c, ~var_1.d, vec2<bool>(1u < var_1.d.x, false))).a, var_1.b.e, var_1.d.xwy, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(8558u, var_1.d.x, 0u), vec3<u32>(51185u, 0u, var_1.b.d.x))), var_1.b.e);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, var_1.a.x), u_input.a.x & u_input.a.x, global1.x, 85258i), u_input.a);
    global1 = vec2<i32>(-25302i, select(u_input.b << (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, var_1.d.x), 4294967295u) % 32u), 1i, firstTrailingBit(_wgslsmith_div_u32(u_input.c.x, 19577u)) == _wgslsmith_div_u32(~92159u, var_1.c.b)));
    var var_4 = func_2();
    let var_5 = vec3<u32>(0u, ~firstTrailingBit(min(4294967295u, var_1.c.b)), ~var_2.d.x) & _wgslsmith_add_vec3_u32(firstTrailingBit(func_1().c.c.d) << (~abs(var_1.b.d) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_1.b.d.x, u_input.c.x, var_2.c.x), 1u), _wgslsmith_div_u32(~var_1.d.x, 0u), var_1.c.c.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(u_input.c.x, 1u, 1u), var_2.c), vec3<u32>(_wgslsmith_mod_u32(var_5.x, 0u), ~var_5.x, _wgslsmith_clamp_u32(u_input.c.x, 9380u, var_5.x)), var_1.d.wyy) & var_1.c.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.e.x + var_1.c.a.x)) + var_1.b.e.x) * global0.x));
}

