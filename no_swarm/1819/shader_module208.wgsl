struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = vec4<bool>(any(vec3<bool>(false, all(vec2<bool>(true, true)), false)), true || all(vec2<bool>(true, true)), false, true);
    let var_1 = Struct_3(!select(!var_0.zzw, !vec3<bool>(var_0.x, var_0.x, true), !any(vec4<bool>(true, true, false, var_0.x))), !(!(!(var_0.x & var_0.x))), !(!select(var_0.wyy, var_0.xyy, vec3<bool>(true, var_0.x, false))), vec2<i32>(4314i, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(30322i, -19544i), ~1253i)), vec3<bool>(true, true, all(vec2<bool>(var_0.x, !var_0.x))));
    var var_2 = 682f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) * 1197f) * _wgslsmith_f_op_f32(select(2220f, _wgslsmith_f_op_f32(step(-2408f, _wgslsmith_div_f32(1291f, -1369f))), false))));
    let var_3 = Struct_4(Struct_3(vec3<bool>(!(26266u != u_input.a), var_0.x, all(vec4<bool>(false, false, true, var_0.x))), select(var_0.x, var_1.b, true), vec3<bool>(true, var_0.x, false), _wgslsmith_mult_vec2_i32(var_1.d, _wgslsmith_div_vec2_i32(~vec2<i32>(-17704i, -5108i), abs(vec2<i32>(-1i, var_1.d.x)))), select(var_1.e, var_0.zwz, (var_1.e.x || var_1.b) & true)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(394f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1324f)))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> f32 {
    let var_0 = max(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(arg_1), ~15358u), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 25939u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 30269u), vec2<bool>(arg_2, arg_2)))), ~(~4294967295u ^ u_input.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = true;
    let var_3 = vec2<bool>(false, arg_2 && any(vec4<bool>(true, arg_2, select(false, arg_2, var_2), !var_2)));
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(select(~vec2<i32>(-5062i, 1i), abs(vec2<i32>(17526i, 0i)), select(var_3, var_3, vec2<bool>(false, var_2))), _wgslsmith_add_vec2_i32(vec2<i32>(-11060i, 1i) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), vec2<i32>(1i, 1i))) ^ vec2<i32>(_wgslsmith_mult_i32(-1i, -1i), 2147483647i));
    return _wgslsmith_f_op_f32(ceil(-404f));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = !arg_2.wxw;
    var var_1 = Struct_2(Struct_1(abs(vec3<u32>(4294967295u ^ u_input.a, 0u, 4336u >> (u_input.a % 32u))), ~u_input.a ^ countOneBits(min(1u, 75909u)), ~vec3<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), 20175u), ~countOneBits(vec2<u32>(4294967295u, u_input.a)), arg_1.x), 185f, all(arg_2), 57292u);
    var_1 = Struct_2(Struct_1(select(~(vec3<u32>(114762u, 4294967295u, 4171u) | var_1.a.a), max(~vec3<u32>(0u, 0u, u_input.a), ~var_1.a.a), var_1.c), 0u, vec3<u32>(countOneBits(1u), ~0u, _wgslsmith_div_u32(u_input.a, var_1.d)), vec2<u32>(23684u, 2671u), 343f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-513f - -1339f), _wgslsmith_div_f32(733f, arg_1.x), 1255f), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), var_1.b, _wgslsmith_f_op_f32(select(var_1.a.e, 1158f, false))))), 0u, any(select(arg_2.xxz, select(vec3<bool>(arg_2.x, var_0.x, var_1.c), vec3<bool>(true, arg_2.x, true), arg_2.x), any(arg_2))))), var_1.c, _wgslsmith_clamp_u32(var_1.d, u_input.a, ~_wgslsmith_sub_u32(u_input.a, 1u & u_input.a)));
    var var_2 = ~var_1.a.c.x;
    var var_3 = vec3<u32>(countOneBits((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.b, var_1.d), var_1.a.c) ^ 51484u) >> (_wgslsmith_mult_u32(min(u_input.a, var_1.a.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, 4294967295u, 0u), var_1.a.c)) % 32u)), var_1.d, u_input.a);
    return vec4<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(max(var_3.x, 23441u), 63840u), ~(~126929u)), 4294967295u, _wgslsmith_div_u32(var_3.x, ~(~102795u)), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~(~vec3<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), ~43064u)));
    let var_1 = firstTrailingBit(select(select(vec4<u32>(u_input.a, var_0.x, var_0.x, 12892u), select(vec4<u32>(86833u, u_input.a, 0u, var_0.x), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<bool>(false, false, false, true)), true) << (abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 1u, 1u), vec4<u32>(3601u, 0u, var_0.x, u_input.a))) % vec4<u32>(32u)), func_1(-_wgslsmith_div_i32(-1i, -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, -276f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-629f, 1758f), vec2<f32>(-290f, -438f))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))), vec4<bool>(true || any(vec2<bool>(true, false)), false, true, all(vec2<bool>(false, false)) | true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -329f, 1000f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1162f, -1484f, -267f), vec3<f32>(-678f, 1000f, -118f)))))));
    let var_3 = 36233i;
    var var_4 = var_2.yz;
    let var_5 = Struct_4(Struct_3(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, true, true), false), true, select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(false, true)), 52282u >= u_input.a), true), -(~vec2<i32>(-1i, var_3)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)));
    var_4 = _wgslsmith_f_op_vec2_f32(max(var_2.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1464f, _wgslsmith_f_op_f32(floor(493f))) + var_2.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -1440f, var_4.x)))), 11169i, -reverseBits(countOneBits(-vec3<i32>(2147483647i, var_5.a.d.x, var_5.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-712f))));
}

