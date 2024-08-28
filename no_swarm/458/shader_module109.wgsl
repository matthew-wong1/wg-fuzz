struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec4<u32>(countOneBits(u_input.a) & 33987u, 51943u, u_input.a, max(1u, 1u)) | vec4<u32>(~(~u_input.a), ~u_input.a, ~4294967295u, u_input.a), 4294967295u, all(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), true || all(vec2<bool>(false, false)), select(true, false, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4213u)) >= u_input.a)), vec4<i32>(u_input.b, u_input.d, -u_input.d, -(~13526i)) ^ _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(1i, 2147483647i, 40327i, -1i)), ~select(vec4<i32>(u_input.d, -4360i, 16640i, 0i), vec4<i32>(7422i, u_input.d, u_input.d, u_input.d), vec4<bool>(true, false, true, true)), ~(~vec4<i32>(u_input.d, u_input.d, u_input.c.x, -38901i))), 9891u);
    let var_1 = (_wgslsmith_add_i32(u_input.c.x, -1i) <= var_0.d.x) & !(((var_0.b >> (var_0.a.x % 32u)) >= (var_0.a.x | 26092u)) || var_0.c);
    var_0 = Struct_1(vec4<u32>(countOneBits(4294967295u) >> (_wgslsmith_dot_vec3_u32(var_0.a.xzy, min(vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.a.wyw)) % 32u), 4294967295u, u_input.a, 2571u), 44772u, var_0.c, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx & u_input.c.yz, abs(u_input.c.xx)), _wgslsmith_add_i32(-15290i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.d.x, -7169i, u_input.c.x), vec4<i32>(var_0.d.x, 0i, var_0.d.x, 0i)))), max(min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, var_0.d.x), vec4<i32>(var_0.d.x, 39748i, u_input.b, -40104i))), ~_wgslsmith_add_i32(-51768i, 6561i)), 24216i, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -886i, u_input.c.x, var_0.d.x), vec4<i32>(u_input.c.x, -19939i, 1430i, u_input.c.x)), u_input.d, var_0.d.x | var_0.d.x), _wgslsmith_mod_vec4_i32(var_0.d, -var_0.d))), 1u);
    var var_2 = ~u_input.a;
    var var_3 = Struct_1(var_0.a, ~(~(~(var_0.a.x ^ 24100u))), true, -vec4<i32>(~1i, ~(-55492i), ~min(-2147483647i, var_0.d.x), 0i), ~_wgslsmith_div_u32(20466u ^ ~var_0.a.x, var_0.b ^ u_input.a));
    return var_0.a.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = u_input.d;
    let var_2 = ~(vec2<u32>(~arg_2.b, ~reverseBits(arg_2.e)) ^ select(arg_2.a.xw, arg_2.a.yw, arg_2.c && true));
    let var_3 = true;
    var_1 = _wgslsmith_div_i32(~7491i, 1i);
    return arg_2.e;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> bool {
    let var_0 = arg_0;
    var var_1 = ~_wgslsmith_sub_u32(func_4(true, func_3(), Struct_1(vec4<u32>(0u, arg_1.x, 0u, 6729u), arg_1.x, var_0.c, arg_0.d, 17998u)) | 40280u, 1u);
    var_1 = min(u_input.a, firstLeadingBit(4294967295u));
    var var_2 = 315f;
    var var_3 = arg_0.a;
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = any(select(vec2<bool>(_wgslsmith_f_op_f32(min(1345f, -575f)) >= _wgslsmith_f_op_f32(-arg_0), !(arg_1.c & arg_1.c)), !vec2<bool>(u_input.c.x < u_input.c.x, true), vec2<bool>(true, arg_2)));
    var var_1 = arg_1.d;
    var_0 = arg_1.c;
    var_0 = any(vec3<bool>(arg_2, !func_2(Struct_1(vec4<u32>(48709u, 1u, 1u, arg_1.b), 4294967295u, true, vec4<i32>(-1i, 0i, 1i, u_input.c.x), 4294967295u), vec4<u32>(36197u, 0u, u_input.a, arg_1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, -748f, 909f, 1406f))), true));
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(u_input.a & u_input.a, arg_1.b), u_input.a), select(~(vec4<u32>(67080u, 49966u, u_input.a, arg_1.b) << (vec4<u32>(u_input.a, 14186u, u_input.a, 63928u) % vec4<u32>(32u))), arg_1.a, arg_1.c)), func_4(false, (_wgslsmith_sub_u32(arg_1.e, u_input.a) | reverseBits(1u)) << (15848u % 32u), Struct_1(~vec4<u32>(u_input.a, 49739u, arg_1.a.x, u_input.a), abs(u_input.a), _wgslsmith_f_op_f32(arg_0 + arg_0) >= _wgslsmith_f_op_f32(select(-104f, arg_0, false)), abs(_wgslsmith_mult_vec4_i32(arg_1.d, arg_1.d)), min(arg_1.e & 61803u, reverseBits(4294967295u)))), ~(~(~4294967295u)) < (reverseBits(select(144282u, 1u, arg_1.c)) | arg_1.e), ~(~_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b, var_1.x, 20223i), vec4<i32>(1i, -2147483647i, arg_1.d.x, 0i) ^ vec4<i32>(var_1.x, 0i, -8174i, u_input.d))), ~83814u);
    return 4032u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(~u_input.a, ~(~u_input.a), func_1(-581f, Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, false, vec4<i32>(u_input.b, -2147483647i, 882i, 2147483647i), u_input.a), false), countOneBits(u_input.a & u_input.a)) >> (abs(~vec4<u32>(u_input.a, u_input.a, 2042u, 105103u) << (vec4<u32>(u_input.a, 1u, 1u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~0u, !all(vec2<bool>(true, true)), ~min(-firstTrailingBit(vec4<i32>(-19651i, 64318i, -11160i, 73604i)), vec4<i32>(~0i, ~u_input.b, _wgslsmith_sub_i32(u_input.b, 76073i), 28694i)), firstLeadingBit(52649u));
    var var_1 = u_input.c.x & (min(u_input.b, var_0.d.x) ^ var_0.d.x);
    let var_2 = vec3<i32>(select(i32(-1i) * -var_0.d.x, ~min(-61354i, u_input.c.x), var_0.c) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -53177i, var_0.d.x), u_input.c)), var_0.d.x ^ -var_0.d.x), u_input.d, ~_wgslsmith_div_i32(-(var_0.d.x & u_input.d), var_0.d.x >> (u_input.a % 32u)));
    var var_3 = _wgslsmith_dot_vec4_u32(~var_0.a, vec4<u32>(~1u, ~(~16674u), ~(~u_input.a), _wgslsmith_sub_u32(var_0.e, _wgslsmith_sub_u32(104409u, u_input.a)) ^ _wgslsmith_mult_u32(u_input.a, var_0.b)));
    var_3 = var_0.a.x;
    let var_4 = Struct_1(~(select(vec4<u32>(var_0.a.x, 0u, var_0.e, var_0.e) ^ vec4<u32>(4294967295u, var_0.b, 6584u, u_input.a), select(var_0.a, var_0.a, vec4<bool>(false, var_0.c, var_0.c, false)), false) ^ var_0.a), u_input.a, true, var_0.d, ~(~func_4(true, 60990u << (var_0.a.x % 32u), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(646f, 1075f, -1000f, -416f), vec4<f32>(480f, 918f, -2049f, -500f), true))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(529f, -824f, -1770f, -2117f)))))), _wgslsmith_f_op_f32(round(-1376f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, 400f, 722f) + _wgslsmith_div_vec3_f32(vec3<f32>(1752f, -2021f, 1157f), vec3<f32>(1000f, -243f, 580f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) * _wgslsmith_f_op_f32(1036f - 1000f)), _wgslsmith_f_op_f32(-1000f - 291f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-343f, 1355f)) - _wgslsmith_f_op_f32(f32(-1f) * -695f))), select(select(select(vec3<bool>(false, var_4.c, false), vec3<bool>(false, var_4.c, true), vec3<bool>(true, var_0.c, false)), select(vec3<bool>(var_4.c, false, var_4.c), vec3<bool>(var_0.c, false, var_0.c), var_0.c), !vec3<bool>(false, true, var_4.c)), select(!vec3<bool>(true, false, var_4.c), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(true, var_4.c, var_4.c), false), !vec3<bool>(var_4.c, var_4.c, true)), var_0.c))));
}

