struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec4<i32>(i32(-2147483648), -8407i, -16213i, 23405i)), Struct_3(vec4<i32>(0i, 42612i, i32(-2147483648), i32(-2147483648))), Struct_3(vec4<i32>(-19549i, 2147483647i, 0i, 2147483647i)), Struct_3(vec4<i32>(-1i, 2147483647i, 7296i, i32(-2147483648))), Struct_3(vec4<i32>(-8918i, 2147483647i, 28026i, -57153i)), Struct_3(vec4<i32>(i32(-2147483648), -9242i, 1i, 50159i)), Struct_3(vec4<i32>(-55184i, 1i, -1i, 2147483647i)), Struct_3(vec4<i32>(-4855i, 1i, i32(-2147483648), 1385i)), Struct_3(vec4<i32>(-30390i, 2147483647i, -53612i, i32(-2147483648))), Struct_3(vec4<i32>(27821i, 2338i, 2147483647i, -58004i)), Struct_3(vec4<i32>(-50022i, 2147483647i, 6178i, 44118i)), Struct_3(vec4<i32>(25177i, 2147483647i, -1i, 32009i)), Struct_3(vec4<i32>(20586i, 0i, 2147483647i, -29767i)), Struct_3(vec4<i32>(i32(-2147483648), 23939i, 1i, -1i)), Struct_3(vec4<i32>(i32(-2147483648), -16407i, -47307i, 0i)), Struct_3(vec4<i32>(2147483647i, 1i, 11810i, -40218i)), Struct_3(vec4<i32>(2147483647i, 0i, 48297i, 0i)), Struct_3(vec4<i32>(-27493i, i32(-2147483648), 59999i, 18232i)), Struct_3(vec4<i32>(-5405i, -12439i, -2339i, i32(-2147483648))), Struct_3(vec4<i32>(-35095i, 5699i, i32(-2147483648), i32(-2147483648))), Struct_3(vec4<i32>(-1i, -52124i, 2147483647i, -1i)), Struct_3(vec4<i32>(4128i, -1i, -1i, 1i)), Struct_3(vec4<i32>(4627i, -17946i, 2147483647i, -4091i)), Struct_3(vec4<i32>(-49108i, 1i, -44079i, -13245i)));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -979i, 3307i, -12578i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global1 = vec4<i32>(13007i, u_input.e.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global1.x, global1.x, -2147483647i), vec4<i32>(u_input.a, -41526i, u_input.c.x, 1i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, global1.x, 70727i, u_input.c.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(1163i, -8713i, -2147483647i, global1.x), vec4<i32>(u_input.e.x, 27514i, -18232i, 1i)))) ^ global1.x, 16308i);
    let var_1 = Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), -1000f, -(~(~vec3<i32>(1i, global1.x, u_input.c.x)))), abs(_wgslsmith_div_u32(30650u, _wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(u_input.b, arg_1.x) ^ arg_1.zx))));
    let var_2 = Struct_2(var_1.a, var_1.b, ~53288u);
    var var_3 = true & !all(select(select(vec3<bool>(var_1.b.a.x, var_1.a.x, var_2.a.x), vec3<bool>(var_1.b.a.x, var_1.a.x, false), vec3<bool>(var_2.a.x, true, true)), vec3<bool>(var_1.b.a.x, var_2.b.a.x, false), select(vec3<bool>(false, false, false), vec3<bool>(var_1.a.x, var_2.a.x, var_2.a.x), vec3<bool>(true, var_2.a.x, false))));
    return abs(arg_1.yzw);
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global0 = array<Struct_3, 24>();
    global1 = vec4<i32>(u_input.e.x >> (4294967295u % 32u), ~global1.x, arg_0, -2147483647i);
    var var_0 = -u_input.c.x;
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(13474u, 37363u, ~firstLeadingBit(u_input.d ^ 0u)), _wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(u_input.b, u_input.d, 74257u)), ~select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1007u, 4294967295u, 1u), true) & _wgslsmith_mod_vec3_u32(func_3(vec4<f32>(239f, 604f, 554f, -736f), vec4<u32>(4294967295u, 12909u, 106927u, 0u)), vec3<u32>(u_input.b, 79416u, u_input.b))));
    let var_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(trunc(116f)), u_input.c), select(~(~(var_1.x >> (var_1.x % 32u))), var_1.x & 1u, false));
    return vec2<bool>(select((_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.c.x, -1i), var_2.b.c) >= var_2.b.c.x) && var_2.b.a.x, any(vec3<bool>(true, any(vec3<bool>(var_2.a.x, var_2.a.x, false)), any(var_2.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-835f, -202f)) + _wgslsmith_f_op_f32(-var_2.b.b)) == -353f), var_2.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(select(select(vec2<bool>(any(vec2<bool>(true, arg_1.a.x)), true), arg_1.a, all(arg_1.a)), !vec2<bool>(true, arg_1.a.x), func_2(-(i32(-1i) * -2147483647i))), arg_1, _wgslsmith_mult_u32(36907u, func_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(-583f)), -3093f, 238f, _wgslsmith_f_op_f32(trunc(arg_1.b))), (arg_0 & vec4<u32>(4294967295u, 14059u, 49081u, 27917u)) >> (arg_0 % vec4<u32>(32u))).x));
    let var_1 = -292f;
    var var_2 = vec2<u32>(~(~var_0.c), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~40656u), arg_0.x), arg_0.xy));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(-160f)), 833f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2179f, arg_1.b) - _wgslsmith_f_op_f32(f32(-1f) * -419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f * 547f) - 278f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, -1659f)) * _wgslsmith_f_op_f32(max(var_0.b.b, var_0.b.b)))))));
    var var_4 = 75055u;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1493f * -807f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)), -1000f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    return vec2<u32>(8624u, 25125u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(838f, -152f), vec2<f32>(-412f, 119f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, 1000f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -518f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 1152f, max(~reverseBits(vec2<u32>(4294967295u, u_input.d)) >> (func_4(func_1(vec4<u32>(u_input.d, u_input.b, 63834u, 5780u), Struct_1(vec2<bool>(true, false), -1621f, vec3<i32>(23609i, u_input.e.x, u_input.c.x)))) % vec2<u32>(32u)), ~select(~vec2<u32>(3914u, u_input.b), ~vec2<u32>(u_input.b, 49779u), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 262f))))))));
}

