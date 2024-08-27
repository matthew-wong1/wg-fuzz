struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: f32) -> vec4<u32> {
    return abs(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(15987u, u_input.c, u_input.a, 1307u), vec4<u32>(79313u, 1u, u_input.c, 1u)))));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -291f))) - -501f), _wgslsmith_sub_vec4_u32(firstLeadingBit(func_3(-1138f)), vec4<u32>(u_input.c, u_input.a, 1u, u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1351f, 740f, 537f, 102f) * _wgslsmith_div_vec4_f32(vec4<f32>(378f, -1462f, -818f, 1855f), vec4<f32>(388f, 772f, -730f, -751f))), _wgslsmith_f_op_f32(f32(-1f) * -108f), u_input.b)));
    var var_1 = Struct_5(var_0.a);
    var_0 = Struct_5(Struct_3(-356f, ~vec4<u32>(4294967295u, ~var_0.a.b.x, min(var_1.a.b.x, var_1.a.b.x), ~var_1.a.b.x), Struct_1(var_0.a.c.a, _wgslsmith_f_op_f32(1f + -343f), 1i)));
    var_0 = Struct_5(var_0.a);
    let var_2 = !any(vec3<bool>(true, true, true));
    return ~((vec3<u32>(~u_input.a, 4294967295u, min(var_0.a.b.x, 1u)) >> ((~var_1.a.b.yyy | countOneBits(var_1.a.b.wxx)) % vec3<u32>(32u))) << (~(~reverseBits(vec3<u32>(var_0.a.b.x, 1u, 4294967295u))) % vec3<u32>(32u)));
}

fn func_1() -> i32 {
    let var_0 = ~reverseBits(_wgslsmith_sub_vec3_u32(abs(select(vec3<u32>(39918u, 1u, u_input.c), vec3<u32>(u_input.c, u_input.a, u_input.a), vec3<bool>(true, true, true))), abs(func_2(false))));
    var var_1 = Struct_4(~vec2<u32>(abs(abs(27035u)), abs(43583u)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(949f, -648f, 2145f, -962f) + vec4<f32>(463f, 764f, -850f, 798f))), 1f, u_input.e.x & (u_input.e.x << (1u % 32u)))));
    var_1 = Struct_4(var_1.a, Struct_2(var_1.b.a));
    var var_2 = true;
    var var_3 = _wgslsmith_sub_i32((-u_input.e.x >> (~var_0.x % 32u)) << (func_3(427f).x % 32u), var_1.b.a.c);
    return u_input.e.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = arg_1;
    return _wgslsmith_sub_vec4_u32((vec4<u32>(abs(arg_2.a.x), countOneBits(4294967295u), countOneBits(arg_1.b.x), func_3(arg_3.b).x) & _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, var_0.b.x, 21327u), countOneBits(var_0.b))) >> (~vec4<u32>(0u, countOneBits(108623u), var_0.b.x, 31716u) % vec4<u32>(32u)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(countOneBits(countOneBits(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.c))), u_input.a);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1196f))) - _wgslsmith_f_op_f32(-607f + 886f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1584f)))) - -776f)), func_4(!(func_1() != u_input.b), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(143f, 464f, false))), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, -1293f, 318f, -1904f)), _wgslsmith_f_op_f32(192f + 1000f), _wgslsmith_mult_i32(u_input.b, 38678i))), Struct_4(vec2<u32>(4294967295u, ~1u), Struct_2(Struct_1(vec4<f32>(690f, -2022f, 222f, -1501f), 1211f, u_input.d))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1013f, -794f, -126f, 1009f))) - vec4<f32>(1141f, -334f, -1666f, -714f)), -247f, u_input.b & u_input.b)), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(752f, -786f, 210f, 1343f), vec4<f32>(-1000f, -617f, 1172f, 1597f))) + vec4<f32>(481f, -1823f, -580f, 459f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(416f, -1015f, 1000f, -442f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1313f, 275f, 1000f, -673f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(949f)) + -1439f), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, 10908i), vec2<i32>(u_input.d, u_input.e.x)) >> (0u % 32u)));
    let var_2 = min(_wgslsmith_add_i32(_wgslsmith_add_i32(func_1(), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, var_1.c.c, 0i), var_1.c.c)), ~(0i >> (var_1.b.x % 32u))), var_1.c.c);
    var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.b)) - -549f))))), ~vec4<u32>(var_1.b.x, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(var_1.b.zwz, vec3<u32>(0u, u_input.a, u_input.c))), ~u_input.c, reverseBits(u_input.a)), var_1.c);
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) + _wgslsmith_f_op_f32(var_1.c.b + 654f)))), ~vec4<u32>(var_1.b.x, var_0, var_0, 20818u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + var_1.a), -1601f, var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f + -307f) - var_1.c.b), ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_u32(1u, var_0)), var_2, -u_input.e.wx, _wgslsmith_clamp_u32(~166300u, _wgslsmith_mod_u32(max(~24332u, u_input.c), 4294967295u), 4294967295u), vec3<i32>(8829i, u_input.d, 64430i));
}

