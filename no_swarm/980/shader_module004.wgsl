struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_1 {
    return Struct_1(!vec3<bool>(false, _wgslsmith_f_op_f32(floor(-1360f)) != _wgslsmith_f_op_f32(-392f * 739f), all(vec2<bool>(false, true))), 12567i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, 404f, -1205f) + vec3<f32>(1863f, -1337f, 1111f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2163f, -1000f, 683f)))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = (_wgslsmith_div_i32(u_input.b.x, i32(-1i) * -u_input.b.x) ^ u_input.b.x) | -18037i;
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, var_1.c.x, 1545f, var_1.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, -765f, arg_1.x, arg_1.x) + vec4<f32>(780f, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-498f, var_1.c.x, -1602f, var_1.c.x))), vec4<bool>(var_1.a.x, var_1.a.x, true, true))))) - vec4<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -620f))) * arg_1.x), 1005f));
    let var_3 = ~(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.b, -1i, 0i, u_input.b.x), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(2493i, u_input.c.x, u_input.c.x, var_0), vec4<i32>(u_input.c.x, 39499i, 88041i, var_0)))) ^ ((_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b, 2147483647i, var_1.b, -1i), vec4<i32>(var_1.b, 0i, -28422i, var_0), vec4<i32>(2147483647i, 0i, 2147483647i, 34496i)) >> (min(vec4<u32>(arg_0.x, 0u, arg_0.x, 50177u), vec4<u32>(5069u, 50260u, 23189u, u_input.a)) % vec4<u32>(32u))) << (vec4<u32>(arg_0.x, 22294u, 1u, firstLeadingBit(u_input.d.x)) % vec4<u32>(32u))));
    var var_4 = arg_1.x;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = countOneBits(vec3<u32>(~_wgslsmith_mod_u32(~u_input.a, abs(4294967295u)), 30987u, 33026u));
    var var_1 = vec4<i32>(0i, 10405i, ~(-firstLeadingBit(arg_0.b)) << (_wgslsmith_div_u32(abs(1u), ~39746u << ((u_input.a & 1u) % 32u)) % 32u), i32(-1i) * -(-1i << (u_input.d.x % 32u)));
    var_1 = abs(vec4<i32>(-(~func_3(vec2<u32>(4294967295u, var_0.x), vec2<f32>(629f, -465f)).b), ~_wgslsmith_sub_i32(-u_input.b.x, firstLeadingBit(arg_1.b)), ~(-(~0i)), 26802i));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(52316i, 2147483647i)), _wgslsmith_sub_vec2_i32(u_input.c, var_1.wx)) & _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.www, var_1.yww), vec3<i32>(-42476i, -1i, 0i) & var_1.wzz), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.xzy, var_1.xzw), ~(~vec3<i32>(arg_0.b, -31615i, arg_1.b))), ~1i) & ~(~vec3<i32>(-16623i, 1i, var_1.x));
    var var_3 = !arg_1.a;
    return any(select(vec4<bool>(all(select(arg_1.a.zz, arg_0.a.xx, arg_0.a.x)), true, all(vec2<bool>(false, arg_2)) | false, _wgslsmith_f_op_f32(arg_1.c.x + -136f) != _wgslsmith_f_op_f32(-arg_1.c.x)), select(!select(vec4<bool>(true, arg_0.a.x, arg_1.a.x, false), vec4<bool>(arg_1.a.x, arg_0.a.x, false, arg_2), true), select(vec4<bool>(true, true, var_3.x, arg_1.a.x), select(vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(var_3.x, true, arg_0.a.x, arg_1.a.x)), select(vec4<bool>(arg_1.a.x, var_3.x, var_3.x, true), vec4<bool>(arg_2, arg_2, var_3.x, arg_0.a.x), arg_1.a.x)), true), !((u_input.b.x >= 1186i) && func_2().a.x)));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(arg_1, u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 172f, arg_2.x) * _wgslsmith_div_vec3_f32(vec3<f32>(609f, -392f, 1000f), vec3<f32>(arg_3.x, -2249f, 262f)))))));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = func_2();
    let var_1 = Struct_1(var_0.a, _wgslsmith_add_i32(-21241i, var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.x, 391f, 570f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -2461f, var_0.c.x) - arg_3))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) * _wgslsmith_f_op_vec3_f32(var_0.c * arg_3))) - var_0.c));
    var var_2 = Struct_1(var_0.a, var_0.b | -2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1701f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x * -1482f), _wgslsmith_f_op_f32(f32(-1f) * -740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + var_0.c.x) * _wgslsmith_f_op_f32(arg_3.x * var_1.c.x)))));
    var_2 = func_5(abs(~arg_0), vec3<bool>(var_1.a.x, !func_4(func_3(u_input.d, var_1.c.zz), Struct_1(var_1.a, -2147483647i, var_1.c), all(vec4<bool>(var_1.a.x, true, false, var_2.a.x))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(236f, -255f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_1.c.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.zx + var_1.c.xy)))));
    var_2 = Struct_1(func_5(24073u, vec3<bool>(true || !var_1.a.x, var_0.a.x, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-320f, arg_3.x), vec2<f32>(-336f, var_1.c.x)))))), arg_3.xz).a, abs(2147483647i), var_0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))) * 291f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.a, u_input.d, vec4<u32>(11407u, 1u, u_input.a, u_input.d.x), vec3<f32>(-788f, -1121f, -2091f))))) + _wgslsmith_f_op_f32(trunc(1796f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(928f))), -196f)), func_5(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 91401u, u_input.d.x), vec3<u32>(0u, u_input.d.x, u_input.a)), _wgslsmith_div_u32(1u, u_input.d.x)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(650f, 303f), vec2<f32>(355f, 1172f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(187f, -1000f)))))).c.x), true || (true & any(func_2().a.yz))));
    var_1 = -989f;
    let var_2 = Struct_1(func_2().a, var_0, func_5(~u_input.d.x, vec3<bool>(true, true, true), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1051f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, 778f)))))).c);
    var var_3 = Struct_1(var_2.a, u_input.b.x, _wgslsmith_f_op_vec3_f32(-var_2.c));
    var_1 = -460f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.c.x))), -vec4<i32>(func_2().b, var_2.b, ~(-13717i), ~1i));
}

