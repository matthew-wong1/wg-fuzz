struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = u_input.a;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1321f, -1000f)))) + 653f), 33531i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-259f, -707f, _wgslsmith_f_op_f32(f32(-1f) * -432f), -1149f)))), -2147483647i, reverseBits(~min(_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x), _wgslsmith_add_u32(84826u, u_input.c))), u_input.a, abs(41875u));
    let var_2 = -25897i >> (~(~(~30615u | reverseBits(u_input.b.x))) % 32u);
    let var_3 = var_1;
    let var_4 = Struct_1(-263f, abs(9087i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(813f * _wgslsmith_f_op_f32(floor(1665f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.a)) - -1908f)), -901f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1280f)), var_1.a.c.x)), -198f));
    return -31062i;
}

fn func_2() -> Struct_2 {
    var var_0 = -18798i;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(max(-vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(32272i, 35768i)))), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, -2147483647i)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_sub_i32(1i, -((u_input.a | -2147483647i) >> (1u % 32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-723f, 1768f, 742f), vec3<f32>(262f, 1107f, -845f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(125f, -1831f, -709f), vec3<f32>(-1021f, 175f, -1093f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(711f, -1676f, -375f) + vec3<f32>(664f, -1000f, 356f)))))));
    var_0 = u_input.a;
    var_0 = ~reverseBits((_wgslsmith_div_i32(1i, u_input.a) << (_wgslsmith_clamp_u32(18067u, 1u, u_input.c) % 32u)) << ((26960u << (abs(u_input.c) % 32u)) % 32u));
    return Struct_2(Struct_1(-281f, 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1691f, 1734f, 1000f, var_1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 371f, var_1.x, var_1.x))))), select(~_wgslsmith_add_i32(func_3(), 1i), max(i32(-1i) * -24053i, select(-11270i, 26124i, true) | (0i & u_input.a)), 858u <= u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zxx, u_input.b.zxw), ~(~firstTrailingBit(u_input.b.zxy))), _wgslsmith_mod_i32(~(-abs(u_input.a)), u_input.a & (u_input.a >> (u_input.c % 32u))), 1u);
}

fn func_1() -> f32 {
    let var_0 = abs(-u_input.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f - -699f) * _wgslsmith_div_f32(752f, -1201f)))), _wgslsmith_f_op_f32(559f - _wgslsmith_div_f32(485f, -234f)), 539f);
    var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, var_1.x, var_1.x)))))));
    var var_2 = func_2();
    var var_3 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(any(vec2<bool>(true, false)), true, true)), vec3<bool>(true, true, select(any(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, false)), true)), -2147483647i != _wgslsmith_mod_i32(u_input.a, -u_input.a));
    return 622f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(~(-51165i));
    let var_1 = !vec3<bool>(true, ((u_input.b.x << (1u % 32u)) > ~u_input.b.x) != any(vec2<bool>(true, true)), select(true, u_input.c >= u_input.b.x, !all(vec4<bool>(true, true, false, true))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -967f), -536f, _wgslsmith_f_op_f32(-1270f - 1710f), _wgslsmith_div_f32(398f, 1625f)), vec4<f32>(_wgslsmith_f_op_f32(1000f - 468f), _wgslsmith_div_f32(924f, 1367f), -651f, _wgslsmith_f_op_f32(sign(922f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, -484f, -2259f, 339f) * vec4<f32>(-1031f, -836f, -1000f, 947f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, -879f, -805f, -1275f) + vec4<f32>(-398f, -345f, -1715f, 2443f))), vec4<f32>(_wgslsmith_f_op_f32(select(-188f, -662f, true)), 1628f, 339f, -1296f)))));
    var var_3 = ~u_input.b.xxw;
    var_0 = ~1i;
    var_0 = -50552i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-1i, _wgslsmith_clamp_i32(u_input.a, -var_2.b, -var_2.b), ~_wgslsmith_sub_i32(-9988i, 1i), 30333i)), 1u);
}

