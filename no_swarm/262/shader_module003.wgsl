struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = reverseBits(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, -4676i, 3842i), vec3<i32>(-19664i, -22388i, u_input.a)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-24760i, 1i, u_input.a), vec3<i32>(0i, 0i, u_input.a)), abs(vec3<i32>(1i, u_input.a, u_input.a) | vec3<i32>(u_input.a, -8504i, 1i))));
    var var_1 = -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, reverseBits(_wgslsmith_clamp_i32(u_input.a, u_input.a, 31060i))), select(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -49661i), vec2<i32>(-30149i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -41787i, u_input.a, -2147483647i), vec4<i32>(-18931i, -7043i, 13342i, 40079i))), arg_0.yw));
    var_0 = var_1.x;
    var var_2 = false;
    var var_3 = false;
    return arg_0.yyw;
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -694f)))));
    let var_1 = Struct_2(select(vec3<bool>(true, any(vec2<bool>(true, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), 603f == var_0)), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false)), any(func_3(vec4<bool>(true, true, true, true)))));
    var var_2 = vec4<bool>(u_input.a == ~u_input.a, var_1.b.x, true, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 34077u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(31667u, 41226u, 3842u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(86518u, 29659u, 31428u))) == 106641u);
    var_2 = !select(vec4<bool>(true, false, !any(var_2.wy), !(!var_2.x)), select(!select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, true, true), false), select(select(vec4<bool>(var_2.x, true, true, var_1.a.x), vec4<bool>(false, false, var_2.x, var_2.x), var_1.b.x), !var_1.b, false), (var_1.b.x && var_2.x) || false), true);
    var_2 = !vec4<bool>(all(var_1.a.xz), var_2.x, all(var_2.zxy), false);
    return vec3<u32>(6498u, ~1u, 1u);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_u32(func_2(), ~firstTrailingBit(vec3<u32>(8999u, 0u, 1u)) ^ ~(~vec3<u32>(8410u, 67672u, 48476u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-255f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1546f, 906f)), _wgslsmith_f_op_f32(-543f * -649f))), -544f, arg_0)));
    var var_2 = ~vec3<u32>(var_0.x, var_0.x, func_2().x);
    let var_3 = 22895u ^ (1u | var_0.x);
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-219f, -302f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-237f - 1000f) * 1530f), var_1, _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-972f, 629f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 562f)) * vec2<f32>(682f, var_1)), true)))), -1000f);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.a << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 5313u, 39227u, 1u), vec4<u32>(50049u, 1u, 64552u, 22707u)), ~vec4<u32>(19967u, 345u, 4294967295u, 32946u)), _wgslsmith_add_u32(~77563u, ~4294967295u)) % 32u), -1i, _wgslsmith_mult_i32(~(~_wgslsmith_sub_i32(u_input.a, u_input.a)), reverseBits(u_input.a)), ~func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(68615u, 4294967295u), vec2<u32>(29601u, 0u)) > _wgslsmith_clamp_u32(1u, 50382u, 9582u)));
    let var_1 = -(vec3<i32>(-1i) * -var_0.xww);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-400f, _wgslsmith_f_op_f32(1216f + 178f))), -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1980f, _wgslsmith_f_op_f32(f32(-1f) * -1780f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-617f - 1083f), _wgslsmith_f_op_f32(f32(-1f) * -309f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f - -1082f))))), vec4<f32>(789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1746f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)), 1136f)));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), 875f, var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1461f, -1000f, -621f, 483f), vec4<f32>(var_2.x, var_2.x, var_2.x, -1239f), false)))), true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * 779f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_2.x - var_2.x))))), firstTrailingBit(1u) <= _wgslsmith_clamp_u32(4294967295u, countOneBits(firstLeadingBit(1u)), ~17399u)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + var_2.x)), var_2.x))));
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-253f - _wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_f32(floor(var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * var_2.x), var_2.x, var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1399f, var_2.x, var_2.x) + vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))) - vec4<f32>(var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * 1279f))), var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-960f, var_2.x)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2259f, 1572f, var_2.x, 573f), vec4<f32>(-548f, 196f, var_2.x, -438f), vec4<bool>(false, false, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, -2226f, var_2.x, 597f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1347f, var_2.x, var_2.x, var_2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(486f, var_2.x, var_2.x, 533f))))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))))));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(911f * var_2.x), var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-344f - var_2.x) - _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2404f)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * -738f)))), true)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.x, -1312f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 463f) + _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, 1f), -720f)), _wgslsmith_f_op_f32(-var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -962f), ~_wgslsmith_clamp_u32(1u, ~(13604u << (0u % 32u)), 1u));
}

