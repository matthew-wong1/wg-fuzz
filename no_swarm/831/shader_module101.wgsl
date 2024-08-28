struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    let var_0 = u_input.b;
    var var_1 = Struct_1(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1255f - 711f) - _wgslsmith_f_op_f32(f32(-1f) * -1376f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-143f, 801f), _wgslsmith_f_op_f32(-1306f * -690f))), true, false));
    var var_2 = !select(select(!(!vec4<bool>(true, false, var_1.a, var_1.a)), !vec4<bool>(false, var_1.a, var_1.a, var_1.a), select(!vec4<bool>(var_1.a, true, true, false), select(vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, false, true, true)), 1i < var_0.x)), vec4<bool>(var_0.x == var_0.x, !var_1.a, !any(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, var_1.a))), select(!(!vec4<bool>(var_1.a, var_1.a, false, var_1.a)), select(select(vec4<bool>(var_1.a, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a), var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, true), true), all(select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(false, false, false), false))));
    var_1 = Struct_1(!all(var_2.zzx));
    var var_3 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -788f))) - 1064f), 989f, -979f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mult_i32(10249i, 26331i);
    var_0 = -2147483647i;
    let var_1 = -reverseBits(-u_input.b.x);
    var_0 = _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(-var_1 >> (14781u % 32u), u_input.b.x & ~var_1) >> (vec2<u32>(_wgslsmith_mult_u32(countOneBits(44381u), abs(u_input.a)), max(_wgslsmith_mod_u32(18470u, 19144u), _wgslsmith_div_u32(0u, u_input.a))) % vec2<u32>(32u)));
    var_0 = var_1;
    return -2147483647i;
}

fn func_2() -> vec4<u32> {
    var var_0 = (u_input.c << ((42853u << (_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 1u), vec2<bool>(false, false)), ~vec2<u32>(4294967295u, 0u)) % 32u)) % 32u)) | countOneBits((u_input.c & u_input.b.x) | -44217i);
    let var_1 = -countOneBits(u_input.b);
    var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1002f, -116f, -365f, -300f), vec4<f32>(782f, 334f, 125f, -1000f), false)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(583f, -196f, 194f, 1223f) - vec4<f32>(-1374f, 736f, 872f, 1337f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1805f, -1610f, 178f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))), Struct_2(Struct_1(false), Struct_1(true), vec2<bool>(true, true), ~(~vec3<u32>(u_input.a, 4294967295u, 1u)), all(vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, true)), false))));
    let var_2 = -440f;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(var_2 + var_2), Struct_3(vec4<f32>(517f, _wgslsmith_f_op_f32(round(-1152f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, -1271f)), _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-604f * _wgslsmith_f_op_f32(max(var_2, var_2)))), Struct_1((u_input.a << (9036u % 32u)) != 4294967295u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a, 2647u)) ^ 0u, ~(~1u)), vec2<u32>(~(~u_input.a), u_input.a), _wgslsmith_f_op_f32(-1945f * -1470f)));
    return ~vec4<u32>(var_3.b.c, _wgslsmith_div_u32(countOneBits(min(1u, u_input.a)), u_input.a), 4294967295u, u_input.a);
}

fn func_1(arg_0: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(arg_0.x) ^ _wgslsmith_sub_u32(63394u, u_input.a), arg_0.x, u_input.a, arg_0.x ^ 1u), min(vec4<u32>(u_input.a, u_input.a & 4294967295u, arg_0.x, 0u), select(func_2(), firstLeadingBit(vec4<u32>(38088u, 10589u, u_input.a, 4294967295u)), vec4<bool>(true, true, true, true)))), (vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a, u_input.a & u_input.a) ^ ~reverseBits(vec4<u32>(u_input.a, arg_0.x, 4294967295u, u_input.a))) & _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a, arg_0.x, u_input.a, 23354u)), vec4<u32>(0u & arg_0.x, u_input.a, min(4294967295u, 16123u), ~arg_0.x)), firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_0.x, 0u), select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(arg_0.x, 18519u, u_input.a, u_input.a), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_4(_wgslsmith_div_f32(407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-238f)))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1483f, 1f, -973f, _wgslsmith_div_f32(-805f, 2171f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, -646f, -1674f, 688f)))), Struct_1(true), 20141u, countOneBits(arg_0.zy & ~var_0.xx), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(112f)), -1219f)));
    var_0 = abs((~reverseBits(vec4<u32>(31173u, var_0.x, 57858u, var_1.b.d.x)) << (abs(func_2()) % vec4<u32>(32u))) ^ vec4<u32>(~firstTrailingBit(56392u), 7838u, _wgslsmith_add_u32(u_input.a, 71627u & arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d.x, 98259u, u_input.a, 32517u), vec4<u32>(36913u, var_0.x, var_0.x, var_1.b.c)), reverseBits(arg_0.x), func_2().x)));
    var_0 = abs(~_wgslsmith_add_vec4_u32(min(vec4<u32>(var_1.b.c, var_1.b.d.x, 52433u, 0u), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)) << (countOneBits(vec4<u32>(15883u, 0u, var_0.x, 23343u)) % vec4<u32>(32u)), reverseBits(~vec4<u32>(var_1.b.d.x, 0u, var_0.x, 29302u))));
    let var_2 = _wgslsmith_mult_u32(0u, min(u_input.a, 50261u));
    return var_1.b.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec4<bool>(false, true, func_1(vec3<u32>(4294967295u, 30194u, u_input.a)), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(u_input.c == -2147483647i, all(vec4<bool>(true, true, false, true)), true)));
    let var_1 = Struct_3(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 513f))), -796f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-657f)))))), Struct_1(var_0.x), u_input.a, (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(u_input.a, 4294967295u)) ^ func_2().zx) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(53278u, u_input.a), vec2<u32>(17863u, u_input.a))) % vec2<u32>(32u)), -906f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-723f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2109f, var_1.a.x)))), 59571u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yw)) - var_1.a.xx), (vec2<i32>(-u_input.b.x, -u_input.b.x) ^ vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, -1i), u_input.b))) >> (var_1.d % vec2<u32>(32u)));
}

