struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>) -> vec4<f32> {
    var var_0 = reverseBits(max(vec2<i32>(4787i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), select(firstLeadingBit(vec2<i32>(8752i, u_input.a)), ~vec2<i32>(u_input.a, 1i), any(vec2<bool>(false, true))))) ^ vec2<i32>(-6374i, u_input.a);
    var_0 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(var_0.x, var_0.x, 17090i)), vec3<i32>(-2147483647i, u_input.b, -1i)), 0i), 1i);
    var var_1 = true;
    var_1 = any(!select(vec3<bool>(false, all(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, true, false), vec3<bool>(true, true, var_0.x >= var_0.x)));
    var var_2 = 4294967295u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, 1240f, 459f, -626f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-255f, 1020f, 318f, 861f), vec4<f32>(920f, -944f, 561f, 1602f)))))));
}

fn func_2() -> f32 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(394f, 1304f, 934f, 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.c.xyx))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(319f - -698f), _wgslsmith_f_op_f32(342f - 152f), _wgslsmith_f_op_f32(1935f + 1650f), _wgslsmith_f_op_f32(f32(-1f) * -1307f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1169f, -435f, -431f, -734f) + vec4<f32>(-1214f, 1796f, -664f, -1400f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1407f, -217f, 1045f, -672f), vec4<f32>(1000f, 1269f, -1537f, -132f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, var_1.x, var_1.x, -1113f), vec4<f32>(var_1.x, -676f, var_1.x, -166f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(400f, var_1.x, -103f, -277f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1555f), vec4<f32>(var_1.x, var_1.x, -502f, var_1.x)) - vec4<f32>(var_1.x, var_1.x, 204f, -745f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, 644f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -195f, 607f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -501f, var_1.x, 705f) + vec4<f32>(var_1.x, var_1.x, var_1.x, 128f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -841f, var_1.x, -447f) * vec4<f32>(var_1.x, 1445f, var_1.x, -716f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(367f * var_1.x) - -1163f), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), var_1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(637f, var_1.x, var_1.x, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(var_1.x)), var_1.x, -346f), all(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0))))), select(vec4<bool>(16403u <= u_input.c.x, any(vec2<bool>(var_0, var_0)), var_0, false), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, false, true), !var_0), vec4<bool>(select(var_0, var_0, var_0), true, var_0 && var_0, all(vec3<bool>(true, var_0, var_0)))))));
    var var_2 = var_1.zxz;
    return _wgslsmith_f_op_f32(ceil(var_2.x));
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(!(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-73986i, u_input.a, 42608i), vec3<i32>(0i, u_input.b, -2147483647i)), vec3<i32>(-2147483647i, u_input.a, -2772i)) >= _wgslsmith_add_i32(38065i, ~(-18477i))), false, any(vec4<bool>(!any(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), u_input.b >= -52550i, true)));
    let var_1 = !var_0.xy;
    let var_2 = _wgslsmith_f_op_f32(min(-1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -522f)))));
    var var_3 = Struct_1(vec3<u32>(~min(870u, ~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 3496u, abs(42862u)), ~reverseBits(u_input.c.yyw)), u_input.d), firstLeadingBit(~9931u), 1u, var_0.x);
    let var_4 = max(var_3.a, var_3.a);
    return var_2;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3.d;
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(~arg_3.a.x, arg_0), ~30072u);
    let var_2 = vec2<u32>(~(reverseBits(1320u) >> (abs(~u_input.d) % 32u)), 4294967295u);
    var_1 = arg_3.a.xz;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -389f), arg_1.x, !var_0))), 1468f));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_div_u32(0u, select(firstLeadingBit(_wgslsmith_sub_u32(0u, u_input.d)), 1u, all(vec3<bool>(true, var_0, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(549f)), -1374f, 812f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_div_f32(871f, _wgslsmith_f_op_f32(f32(-1f) * -1384f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1143f, -1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-824f - -524f), -233f))), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, 8731u), u_input.c.zww) >> (vec3<u32>(u_input.d, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~u_input.c.yxy, ~vec3<u32>(56704u, 57189u, 0u))), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(3871u, 4294967295u) << (_wgslsmith_mult_u32(u_input.d, 22361u) % 32u)), 17008u, var_0)));
    var var_2 = _wgslsmith_sub_vec3_i32(firstLeadingBit(~(-vec3<i32>(u_input.a, u_input.a, 0i))), countOneBits(abs(select(vec3<i32>(-1i, u_input.a, 2147483647i), vec3<i32>(-43787i, 35656i, -1i), true)))) << (u_input.c.yyz % vec3<u32>(32u));
    var_2 = vec3<i32>(abs(_wgslsmith_sub_i32(4326i, 1i) | firstTrailingBit(2147483647i)) << (u_input.c.x % 32u), -9794i, ((~var_2.x ^ 14362i) >> (_wgslsmith_sub_u32(u_input.c.x, 56862u) % 32u)) & 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, ~countOneBits(4294967295u), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(var_1 - -620f))), _wgslsmith_f_op_f32(round(var_1)));
}

