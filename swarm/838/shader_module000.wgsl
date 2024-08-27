struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = ~19934i;
    var var_1 = arg_3.a.b.xx;
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, ~u_input.d.x), ~1u), arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3.b.x + var_1.x), arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.a.b.x)))));
    var var_4 = _wgslsmith_div_i32(1i, u_input.a);
    return arg_3.b.x;
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -min(vec3<i32>(u_input.a, -2147483647i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -32221i, u_input.a), u_input.b)), -select(vec3<i32>(~12305i, abs(u_input.c.x), u_input.b.x), firstTrailingBit(vec3<i32>(u_input.c.x, u_input.b.x, 0i)), arg_0));
    let var_1 = Struct_2(Struct_1(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(921f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(423f)), _wgslsmith_f_op_f32(-287f * -954f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1781f * -201f), 111f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-819f, -949f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-331f, -1891f, 212f))))))));
    var_0 = u_input.b;
    let var_2 = _wgslsmith_mult_vec4_u32(~min(vec4<u32>(u_input.d.x ^ 10634u, firstTrailingBit(u_input.d.x), ~u_input.d.x, reverseBits(u_input.d.x)), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, 57672u, u_input.d.x)), vec4<u32>(2729u, u_input.d.x, 4294967295u, u_input.d.x) & vec4<u32>(u_input.d.x, u_input.d.x, 21112u, u_input.d.x))), abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d.x, 51055u), vec4<u32>(u_input.d.x, 37163u, u_input.d.x, 4294967295u)), _wgslsmith_mult_u32(58145u, u_input.d.x), firstTrailingBit(112785u), _wgslsmith_div_u32(u_input.d.x, u_input.d.x))));
    let var_3 = Struct_2(Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(var_1.a.b.x, 1013f), var_1.a.b.x, _wgslsmith_div_f32(-1485f, 557f), var_1.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, 378f), vec3<f32>(var_1.a.b.x, var_1.b.x, var_1.a.b.x)), select(false, true, var_1.a.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, -211f, var_1.b.x)))))));
    return var_2.x;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = u_input.d.x;
    var_0 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), reverseBits(u_input.d)));
    var_0 = 27230u;
    var_0 = ~func_3(!all(vec3<bool>(false, true, false))) ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15995u, u_input.d.x, 22831u, u_input.d.x), vec4<u32>(1u, 0u, 30172u, 48536u)) << (1u % 32u), u_input.d.x), u_input.d.x);
    var_0 = u_input.d.x;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(67075u, _wgslsmith_mult_u32(~(~0u), u_input.d.x), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.d.x, vec3<bool>(true, true, true), ~4294967295u, Struct_2(Struct_1(false, vec4<f32>(1530f, 253f, 278f, -966f)), vec3<f32>(883f, 473f, -193f)))))), ~(~(~firstTrailingBit(u_input.d.x))));
    var_0 = countOneBits(vec4<u32>(abs(_wgslsmith_mult_u32(var_0.x, var_0.x)) << (select(reverseBits(25132u), 5022u, false) % 32u), ~(~1u), 4294967295u, 100851u));
    var_0 = abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(83894u, u_input.d.x), vec2<u32>(4294967295u, var_0.x)), min(u_input.d, vec2<u32>(1052u, 0u))) ^ 22903u, var_0.x, _wgslsmith_sub_u32(~abs(var_0.x), ~4294967295u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, 11372u, var_0.x, u_input.d.x), vec4<u32>(u_input.d.x, var_0.x, 1u, u_input.d.x), false), ~vec4<u32>(u_input.d.x, 40646u, 20492u, var_0.x))));
    let var_1 = Struct_2(Struct_1(any(vec2<bool>(all(vec4<bool>(false, true, false, true)), false)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, 569f, 200f, -489f) * vec4<f32>(-1000f, 809f, -671f, 1261f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, -1214f, 654f, -586f) + vec4<f32>(-972f, 821f, -502f, -1873f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-553f, -1000f, 1169f, 268f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-904f, -2183f) - _wgslsmith_f_op_f32(trunc(-565f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -1644f), -985f), _wgslsmith_f_op_f32(f32(-1f) * -2161f))));
    let var_2 = vec3<bool>(all(!vec2<bool>(!var_1.a.a, true)), _wgslsmith_f_op_f32(abs(1903f)) <= var_1.a.b.x, var_1.a.a);
    var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(func_2(var_1.a.b.x), ~70483u ^ _wgslsmith_add_u32(43937u, var_0.x), u_input.d.x, _wgslsmith_add_u32(var_0.x, 51276u) & _wgslsmith_mod_u32(var_0.x, var_0.x)), vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_0.x, 27623u), vec3<u32>(4294967295u, 0u, 0u)), var_0.x)), ~firstTrailingBit(~vec4<u32>(37516u, 4294967295u, var_0.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.b.x)))), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), i32(-1i) * -_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), _wgslsmith_div_i32(32660i, u_input.a), 1i), _wgslsmith_div_vec2_u32(~var_0.yx, ~(~vec2<u32>(var_0.x, 0u) >> (u_input.d % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f + -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.x - 859f))) - 1240f)));
}

