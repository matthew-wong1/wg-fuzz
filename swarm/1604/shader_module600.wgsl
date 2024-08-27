struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_1(4294967295u, arg_2, !select(select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(false, arg_0, false, false), false), select(vec4<bool>(true, arg_0, arg_2.x, arg_0), vec4<bool>(false, arg_2.x, true, true), false), vec4<bool>(true, arg_0, arg_0, arg_2.x)), !(!vec4<bool>(false, false, arg_0, true)), select(select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(false, arg_2.x, arg_0, arg_0), vec4<bool>(true, arg_2.x, true, arg_2.x)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, arg_2.x, true, false)), !arg_2.x)), select(!(!arg_2), vec2<bool>(arg_0, true), all(select(vec2<bool>(false, arg_2.x), select(arg_2, vec2<bool>(true, false), arg_0), 2130f > arg_1.c.x))), arg_0);
    var var_1 = arg_1;
    var var_2 = -299f;
    var var_3 = arg_1;
    let var_4 = max(arg_3.ww, vec2<u32>(~0u, 16909u));
    return _wgslsmith_div_vec4_u32(vec4<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_4.x, 4294967295u), vec3<u32>(1u, 20902u, 1u)) ^ 23962u) << (var_1.d.x % 32u), var_1.d.x, u_input.b.x, ~(~1u)), arg_1.b);
}

fn func_2() -> vec4<f32> {
    let var_0 = u_input.c;
    var var_1 = ~vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, abs(0u)), 1426u);
    var var_2 = false;
    let var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(f32(-1f) * -824f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-277f))), 1f), ~abs(func_3(any(vec2<bool>(false, true)), Struct_2(vec3<f32>(-158f, 338f, 440f), vec4<u32>(var_1.x, 60113u, u_input.c, var_0), vec4<f32>(1651f, -712f, 1624f, 199f), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), vec2<bool>(false, false), ~vec4<u32>(4294967295u, var_1.x, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -385f, -1218f, -1192f) - vec4<f32>(166f, -1225f, 669f, -218f))))))), _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(75105u, 40695u), u_input.b.zx), 18709u) | u_input.b, reverseBits(u_input.b)));
    var var_4 = func_3(!select(~u_input.c < ~4294967295u, true, _wgslsmith_f_op_f32(var_3.a.x * -739f) <= var_3.c.x), var_3, select(vec2<bool>(true, true), vec2<bool>(~37759i > -u_input.a, true), vec2<bool>(true, true)), abs(firstTrailingBit(min(~vec4<u32>(0u, var_3.b.x, var_3.b.x, var_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, 15944u), vec4<u32>(92290u, var_1.x, u_input.b.x, 4294967295u), vec4<u32>(10595u, 1u, u_input.c, 22024u)))))).wz;
    return _wgslsmith_div_vec4_f32(var_3.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.c * var_3.c) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(var_3.c, var_3.c))))))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -37106i, u_input.a), vec4<i32>(1i, u_input.a, -25298i, 0i)) << (_wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.c, 34628u, 16464u, 1u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 20330u)), _wgslsmith_div_vec4_u32(vec4<u32>(68410u, 16432u, u_input.c, u_input.c), vec4<u32>(116980u, 0u, u_input.c, 1u))) % vec4<u32>(32u)), select(vec4<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), firstTrailingBit(u_input.a), 1i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-47046i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 63769i, u_input.a, 1i)), false)), min(~vec4<i32>(-1i, 2147483647i, -16658i, 1i), vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), u_input.a), u_input.a, _wgslsmith_div_i32(u_input.a, 0i))));
    global0 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    return arg_1.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_sub_u32(0u, var_0 << ((u_input.c | 0u) % 32u)), !vec2<bool>(false, ~var_0 >= firstTrailingBit(var_0)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), true)), select(vec2<bool>(true, true), func_1(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)) * 225f), -2147f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(var_1.a, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1036f)))), vec3<u32>(_wgslsmith_add_u32(~var_0 >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_1.a, 0u, 4294967295u)) % 32u), u_input.c), abs(13757u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 4294967295u, 4294967295u, 73773u) >> (vec4<u32>(4294967295u, var_0, var_0, var_1.a) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(0u, 66717u, var_0, var_0)))), abs(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 37924i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()).x))), var_1.c.x)));
}

