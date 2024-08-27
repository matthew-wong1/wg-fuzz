struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<u32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(arg_0);
    var var_1 = Struct_2(arg_0);
    global0 = _wgslsmith_div_u32(14375u, 23604u);
    global1 = u_input.b >> (~(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.x, u_input.d, global1.x), u_input.b)) ^ ~u_input.b) % vec4<u32>(32u));
    var var_2 = ~vec3<u32>(28563u, ~(~4294967295u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b));
    return !(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)) || (any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false)) | any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> f32 {
    global1 = _wgslsmith_add_vec4_u32(u_input.b, ~firstTrailingBit(vec4<u32>(global1.x, 25773u, _wgslsmith_mult_u32(1u, u_input.b.x), 17153u)));
    let var_0 = Struct_1(reverseBits(_wgslsmith_mod_i32(arg_1.a.a, _wgslsmith_clamp_i32(u_input.c, 31385i, 13655i))) | 1i);
    var var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(var_0.a));
    var_2 = arg_1;
    return -1916f;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(vec4<bool>(true, func_3(Struct_1(-1i)), true, any(vec2<bool>(true, select(true, true, true)))), arg_0, min(arg_0.a.a, _wgslsmith_add_i32(abs(u_input.c), -u_input.c)) << (42611u % 32u)));
    var var_1 = _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-(~vec3<i32>(51921i, arg_0.a.a, arg_0.a.a)), ~vec3<i32>(arg_0.a.a, -1i, 1i) >> (~global1.yzy % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(countOneBits(~vec3<i32>(13132i, 2147483647i, arg_0.a.a)), countOneBits(min(vec3<i32>(0i, arg_0.a.a, -83353i), vec3<i32>(0i, 0i, arg_0.a.a))))), 35909i);
    global1 = abs(firstTrailingBit(u_input.b));
    let var_2 = 32465i;
    global1 = min(_wgslsmith_mult_vec4_u32(vec4<u32>(105572u, ~global1.x, abs(~global1.x), _wgslsmith_mod_u32(countOneBits(u_input.d), global1.x)), u_input.b), firstLeadingBit(vec4<u32>(firstLeadingBit(1u), 35779u, 95350u, ~57995u) >> (~vec4<u32>(global1.x, 39049u, global1.x, 100723u) % vec4<u32>(32u))));
    return -12364i;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> f32 {
    global0 = select(u_input.a.x, ~(~(~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1065f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -424f)));
    let var_0 = min(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, ~(~arg_1), i32(-1i) * -27674i), _wgslsmith_add_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(-1i, -24029i, -2147483647i))), abs(~vec3<i32>(-49478i, u_input.c, -8152i))), ~(~vec3<i32>(1i, 1i, 2147483647i) | countOneBits(vec3<i32>(-77538i, arg_0.a.a, u_input.c)))), -(~vec3<i32>(min(arg_1, arg_0.a.a), arg_0.a.a, _wgslsmith_add_i32(1i, arg_0.a.a))));
    var var_1 = arg_0.a;
    let var_2 = true | !(global1.x < (u_input.a.x << (~u_input.b.x % 32u)));
    let var_3 = _wgslsmith_dot_vec3_i32(-(~_wgslsmith_add_vec3_i32(~var_0, var_0)), _wgslsmith_mult_vec3_i32(var_0, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(var_0), ~vec3<i32>(27577i, var_1.a, 0i)), vec3<i32>(arg_0.a.a, arg_0.a.a, 2147483647i) ^ -vec3<i32>(arg_0.a.a, var_1.a, -2147483647i))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2080f)))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    global1 = ~(~u_input.b);
    return Struct_2(Struct_1(_wgslsmith_sub_i32(-u_input.c, arg_2.a.a)));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<u32> {
    global1 = min(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.a.x, global1.x), abs(vec4<u32>(u_input.b.x, 4294967295u, global1.x, u_input.b.x))) >> (u_input.b % vec4<u32>(32u))), select(u_input.b, u_input.b | ~(~u_input.b), select(any(vec2<bool>(true, true)), true, !all(vec2<bool>(true, true)))));
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1042f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-860f))), 1638f, true))), -1481f));
    let var_1 = _wgslsmith_sub_i32(~(arg_0 & u_input.c), arg_0 & -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, 26124i), abs(vec2<i32>(u_input.c, 13486i))));
    let var_2 = Struct_1(u_input.c);
    var var_3 = func_6(vec2<u32>(0u, 6525u), _wgslsmith_f_op_f32(-388f - _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(var_1)), min(countOneBits(0i), func_2(Struct_2(Struct_1(u_input.c))))))), Struct_2(Struct_1(_wgslsmith_add_i32(~u_input.c, 40823i))));
    return u_input.b.zxy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.x;
    let var_0 = min(select(~vec3<i32>(u_input.c, u_input.c, u_input.c) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 1u, 25590u), vec3<u32>(80516u, 0u, 0u)) % vec3<u32>(32u)), vec3<i32>(21596i, firstTrailingBit(u_input.c), firstLeadingBit(u_input.c)), true) ^ vec3<i32>(24323i >> (~global1.x % 32u), countOneBits(abs(u_input.c)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, -1i, u_input.c)), firstTrailingBit(vec3<i32>(3620i, u_input.c, u_input.c)))), vec3<i32>(reverseBits(~(-u_input.c)), u_input.c, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, -2147483647i)))));
    var var_1 = global1.x;
    global1 = vec4<u32>(_wgslsmith_mult_u32(48078u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(10634u, _wgslsmith_dot_vec2_u32(global1.zx, vec2<u32>(13398u, u_input.d))))), min(~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b.zxz), func_1(-9594i, -1319f)), (_wgslsmith_mult_u32(u_input.b.x, u_input.d) >> (u_input.a.x % 32u)) ^ global1.x), u_input.a.x, func_1(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -2299f)).x);
    var var_2 = Struct_2(Struct_1(-_wgslsmith_add_i32(var_0.x, i32(-1i) * -13073i)));
    var var_3 = Struct_1(_wgslsmith_clamp_i32(min(~(~(-81900i)), func_2(Struct_2(Struct_1(-1i)))), _wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec2_i32(abs(var_0.yy), max(vec2<i32>(5112i, var_2.a.a), var_0.yz))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, countOneBits(-1i)), _wgslsmith_mult_i32(50322i, abs(var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global1.x, min(select(countOneBits(var_0), vec3<i32>(var_3.a, _wgslsmith_mult_i32(u_input.c, 2147483647i), _wgslsmith_add_i32(u_input.c, u_input.c)), all(vec3<bool>(true, true, true))), min(var_0, var_0)), -2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-355f, -412f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 663f), vec2<f32>(534f, 162f))))))));
}

