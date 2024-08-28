struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(715f, 1883f, vec2<u32>(4294967295u, 0u)), Struct_1(2227f, 1408f, vec2<u32>(77625u, 15673u)), Struct_1(-324f, 496f, vec2<u32>(21526u, 0u)), Struct_1(-270f, 445f, vec2<u32>(55628u, 80769u)), Struct_1(-1884f, 2017f, vec2<u32>(1u, 33979u)), Struct_1(-424f, 123f, vec2<u32>(54370u, 88097u)), Struct_1(-1111f, 985f, vec2<u32>(4294967295u, 1u)), Struct_1(-527f, 171f, vec2<u32>(82084u, 43076u)), Struct_1(962f, 971f, vec2<u32>(1u, 1u)), Struct_1(-753f, -353f, vec2<u32>(30821u, 1u)), Struct_1(3430f, -1357f, vec2<u32>(18722u, 9035u)), Struct_1(1988f, 658f, vec2<u32>(4294967295u, 13653u)), Struct_1(-2482f, -613f, vec2<u32>(5500u, 4294967295u)), Struct_1(512f, -176f, vec2<u32>(24527u, 41826u)), Struct_1(-735f, -639f, vec2<u32>(0u, 38983u)), Struct_1(-1441f, 417f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-683f, 249f, vec2<u32>(0u, 1u)), Struct_1(-1014f, -711f, vec2<u32>(1u, 2463u)), Struct_1(-1000f, 436f, vec2<u32>(4294967295u, 10789u)));

var<private> global2: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-1629f, -1579f, -605f, 538f), vec4<f32>(2080f, 1827f, -1128f, -1547f), vec4<f32>(308f, 195f, 1101f, -187f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    return arg_0.b.x;
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<vec4<f32>, 3>();
    global2 = array<vec4<f32>, 3>();
    let var_0 = 10189u;
    let var_1 = arg_0.c;
    let var_2 = Struct_2(~u_input.d, _wgslsmith_div_vec3_u32(vec3<u32>(81131u, _wgslsmith_sub_u32(0u, var_0) & 1u, ~(~4294967295u)), firstLeadingBit(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(var_0, var_1.x, 0u)), vec3<u32>(4294967295u, 1u, var_1.x)))));
    return ~7573u;
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = 1u;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(0u, 0u, 4294967295u, 4294967295u) & vec4<u32>(arg_0.c.x, 1u, 64925u, arg_0.c.x))) >> (firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 56470u), vec4<u32>(u_input.c, 26676u, 20223u, arg_0.c.x))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(62743u, 15159u), arg_0.c), ~(~(0u | arg_0.c.x)), min(arg_0.c.x >> ((u_input.c << (u_input.c % 32u)) % 32u), ~(~arg_0.c.x)), func_3(arg_0))), 26u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a));
    var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_0.c.x, 0u, var_1.b.x), _wgslsmith_div_vec3_u32(var_1.b, var_1.b), vec3<bool>(true, true, true)), firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 89832u, var_1.b.x), var_1.b))), 42810u), 26u)];
    let var_3 = Struct_2(~(-u_input.a.xww), vec3<u32>(0u, ~_wgslsmith_clamp_u32(65662u, countOneBits(4294967295u), arg_0.c.x), 37017u));
    return ~firstLeadingBit(select(_wgslsmith_add_vec3_i32(-u_input.a.zww, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.a.x, var_3.a.x), u_input.a.xzy)), var_1.a, select(true, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(12222u, u_input.c, 60566u, 0u))), vec4<u32>(30509u, u_input.c ^ 12013u, abs(u_input.c | 0u), abs(select(u_input.c, u_input.c, false))) ^ vec4<u32>(u_input.c, ~u_input.c, _wgslsmith_clamp_u32(u_input.c, u_input.c, 14185u) ^ ~u_input.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(5779u, 74128u), _wgslsmith_add_u32(u_input.c, u_input.c))), ~firstLeadingBit(~vec4<u32>(35653u, 1u, u_input.c, u_input.c)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-700f * -923f), 282f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -106f))), vec2<f32>(-829f, 1000f))))));
    let var_2 = Struct_2(-u_input.a.xxx, select(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 25148u, var_0.x) >> (var_0.yww % vec3<u32>(32u)), reverseBits(var_0.yyy))), vec3<u32>(_wgslsmith_clamp_u32(func_1(Struct_2(vec3<i32>(32401i, u_input.a.x, 14561i), var_0.xxz), vec3<u32>(1u, 86687u, 21618u)), 41682u, ~var_0.x), 3290u & u_input.c, ~_wgslsmith_mod_u32(var_0.x, var_0.x)), false));
    var var_3 = max(~vec3<i32>(~(~var_2.a.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), u_input.d.yx)), 1i >> (_wgslsmith_mod_u32(1u, 1u) % 32u)), _wgslsmith_add_vec3_i32(-(var_2.a << (~vec3<u32>(1u, 4294967295u, 25798u) % vec3<u32>(32u))), min(firstLeadingBit(func_2(global1[_wgslsmith_index_u32(var_0.x, 19u)])), u_input.a.xzx)));
    var_0 = vec4<u32>(~var_2.b.x, firstTrailingBit(1u), ~0u, ~var_2.b.x);
    var var_4 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    var_4 = global1[_wgslsmith_index_u32(u_input.c, 19u)];
    var var_5 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(_wgslsmith_dot_vec3_u32(~var_0.xyw, vec3<u32>(1u, 4294967295u, var_4.c.x) << (var_0.wzy % vec3<u32>(32u))), ~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_4.c.x, 28318u), ~var_2.b))), 0u, 4294967295u, var_0.x);
    var var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(u_input.c, 4294967295u), -firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -13571i), -30640i, var_3.x, select(var_3.x, u_input.d.x, true))), abs(~(~var_2.b.x)), ~(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_5.x, 4294967295u, 69631u), var_5.yyx))), vec2<i32>(~func_2(Struct_1(-1948f, var_4.b, vec2<u32>(var_0.x, u_input.c))).x ^ 2147483647i, -2147483647i));
}

