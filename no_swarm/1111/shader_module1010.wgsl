struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: u32) -> i32 {
    global0 = -_wgslsmith_dot_vec3_i32(~(~arg_0.b.zwx) & arg_0.b.yww, -vec3<i32>(select(arg_0.b.x, arg_0.b.x, true), 1i | arg_2, -2147483647i));
    let var_0 = Struct_1(select(arg_0.a.zy, select(vec2<bool>(select(true, false, true), true), select(arg_0.a.yy, arg_0.a.xz, arg_0.a.xz), !vec2<bool>(arg_0.a.x, false)), vec2<bool>(false, all(arg_0.a.zy))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(4294967295u), 1u), ~(min(u_input.a.yy, vec2<u32>(u_input.b.x, u_input.b.x)) >> (u_input.b % vec2<u32>(32u)))));
    return arg_2;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = 50042u;
    global0 = i32(-1i) * -func_3(Struct_4(vec3<bool>(true, true, true), vec4<i32>(-2147483647i, -40895i, 1i, 0i), _wgslsmith_sub_i32(2147483647i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1362f) - 1f), _wgslsmith_add_i32(~(-19145i), i32(-1i) * -19160i), ~(~u_input.c));
    var var_1 = Struct_4(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), vec3<bool>(false, true && (4294967295u != u_input.b.x), any(vec4<bool>(false, false, true, true)) || all(vec3<bool>(false, false, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), ~(-vec4<i32>(1i, 1i, 1i, 1i)) << (vec4<u32>(reverseBits(4294967295u), _wgslsmith_mult_u32(firstTrailingBit(u_input.d), _wgslsmith_add_u32(1u, 1u)), ~_wgslsmith_sub_u32(u_input.d, u_input.d), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -714f, 1449f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, -1526f, arg_0.x))))))));
    var var_3 = Struct_4(var_1.a, var_1.b, var_1.b.x);
    return _wgslsmith_f_op_f32(select(1094f, 1000f, select(all(vec4<bool>(true, true & var_1.a.x, false | var_3.a.x, false)), true, !var_3.a.x)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec4<u32> {
    let var_0 = false;
    var var_1 = -1024i;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0, -1904f)))), _wgslsmith_div_f32(arg_0, 1200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f * 335f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1266f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), 679f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 1000f), -1195f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(641f, arg_0, -1194f, arg_0)), vec4<f32>(242f, 410f, arg_0, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(962f, -144f, 525f, -1000f), vec4<f32>(arg_0, -455f, arg_0, 769f), true))))));
    let var_3 = vec2<u32>(~min(countOneBits(u_input.c) & _wgslsmith_mult_u32(4294967295u, arg_2.x), 4294967295u), 1u);
    var var_4 = (~vec4<u32>(1u, _wgslsmith_sub_u32(28579u, arg_2.x), u_input.c & 1u, min(13566u, var_3.x)) ^ ~firstTrailingBit(arg_2)) << (u_input.a % vec4<u32>(32u));
    return ~u_input.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: u32) -> vec3<f32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-254f, -816f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-110f, 1511f))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-517f, -673f, 846f) + vec3<f32>(-980f, 1061f, 757f)))))), _wgslsmith_clamp_vec3_i32(countOneBits(-vec3<i32>(-1i, 54712i, -21992i)) << (u_input.a.yxw % vec3<u32>(32u)), ~(~(-vec3<i32>(-32344i, -68714i, 0i))), vec3<i32>(min(47207i, 25930i), -13613i, ~(-2147483647i)) << (~vec3<u32>(0u, arg_3, arg_2.x) % vec3<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x | (arg_2.x & arg_3), 66930u), ~arg_2.x, abs(42418u), 1u << (_wgslsmith_mod_u32(max(arg_3, 9527u), ~arg_2.x) % 32u)));
    var var_1 = _wgslsmith_dot_vec3_u32(abs(max(_wgslsmith_add_vec3_u32(u_input.a.wxy, ~var_0.yyx), ~u_input.a.zyz)), abs(select(~u_input.a.yyy, ~arg_2, any(arg_0)) ^ var_0.xyx));
    var_1 = ~1u;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-402f, _wgslsmith_f_op_f32(floor(-2802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-967f)) * 1098f))), !select(!arg_0.x, arg_1.x, all(vec4<bool>(true, arg_1.x, arg_0.x, arg_0.x))));
    var_2 = Struct_3(var_2.a, true);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(714f + var_2.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(trunc(193f)))), -1293f) - var_2.a)));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    var var_0 = !select(true || (arg_2.a.x & true), arg_1.b, arg_2.a.x);
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-23887i, -_wgslsmith_div_i32(~(-2147483647i), 1i), -_wgslsmith_clamp_i32(-15567i, -34654i, 2147483647i) << (abs(u_input.b.x) % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, firstTrailingBit(1i)), 0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -53008i, -10400i, -66025i), vec4<i32>(-1165i, -2147483647i, 27462i, -25532i))), vec3<i32>(_wgslsmith_sub_i32(5411i, 1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 2147483647i), reverseBits(vec2<i32>(1i, -2147483647i))), select(_wgslsmith_mod_i32(-38586i, -1i), min(1i, -2147483647i), true))));
    global0 = -2147483647i;
    global0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, false), vec3<u32>(25883u, 1u, u_input.b.x), u_input.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1364f, -571f, 389f) * vec3<f32>(-2628f, -671f, -336f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1246f, 886f)), 1260f, _wgslsmith_f_op_f32(2696f * 316f))))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, 788f, -264f))))), true), Struct_4(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), all(vec4<bool>(false, true, false, false))), ~countOneBits(vec4<i32>(-13587i, -35790i, -33033i, -53727i)), abs(abs(~(-2147483647i)))));
    var var_0 = 1u;
    var var_1 = firstLeadingBit(u_input.a);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(1i >> (countOneBits(8375u) % 32u)), ~3925i, -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(2147483647i, 6882i, 1i)) ^ ~0i, -40900i << (0u % 32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~select(vec4<i32>(0i, 2147483647i, -18152i, 31514i), vec4<i32>(44143i, 1i, 2147483647i, 63031i), false)), -vec4<i32>(1i, -2147483647i, -50101i << (var_1.x % 32u), abs(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(~u_input.c) ^ ~abs(35617u), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.yzw, u_input.a.xwx))), vec2<f32>(-1839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-355f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-475f, 536f)), _wgslsmith_f_op_f32(abs(1169f))))));
}

