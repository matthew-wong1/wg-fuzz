struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1261f, _wgslsmith_f_op_f32(step(-1444f, 634f)), 901f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(841f, 1293f, 195f, 206f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1024f, 510f, 680f, 515f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1227f, 484f, -1000f, -464f), vec4<f32>(-2672f, 2347f, 1000f, 246f))))), vec4<f32>(1f, -1617f, _wgslsmith_div_f32(-1182f, 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1669f + -1117f))))), true));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_1(~1u, ~u_input.c.zy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -1992f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) * vec4<f32>(_wgslsmith_div_f32(var_0.x, -257f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), ~(~_wgslsmith_div_u32(u_input.c.x, ~u_input.a.x)));
    var var_4 = true && all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), false));
    return ~(~(~(~vec2<u32>(u_input.a.x, 18494u) | _wgslsmith_div_vec2_u32(vec2<u32>(var_3.b.x, var_3.b.x), u_input.a.zx))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    return arg_1.a & arg_1.d;
}

fn func_2() -> i32 {
    global0 = func_4(Struct_1(5414u, ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xz), ~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f * -1435f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(867f * -1334f))), 1000f, 332f), _wgslsmith_dot_vec3_u32(reverseBits(u_input.a), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.a.x, 1u))), Struct_1(1u, _wgslsmith_sub_vec2_u32(func_3(), ~countOneBits(u_input.c.xy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-398f, -2352f, false)), 1456f, -403f, _wgslsmith_div_f32(864f, -2025f))), 1u));
    global0 = u_input.c.x;
    global0 = ~47996u;
    global0 = 0u;
    var var_0 = _wgslsmith_mod_i32(u_input.b, min(2147483647i, min(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -5276i), vec3<i32>(u_input.b, u_input.b, -43751i))))) << (~u_input.a.x % 32u);
    return -(select(9766i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), -5404i), true) | 0i);
}

fn func_5(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.c.x, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(798f, -922f, 1000f, -367f), vec4<f32>(-338f, 1059f, 872f, -247f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(608f, -1431f, -901f, -1351f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(616f, 388f, -826f, -493f), vec4<f32>(-265f, 555f, 181f, 598f))))))), countOneBits(u_input.a.x));
    global0 = var_0.a;
    global0 = 4294967295u;
    let var_1 = Struct_1(var_0.d, reverseBits(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 0u), vec2<u32>(arg_1.x, var_0.a)))), _wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_mult_u32(select(16677u, _wgslsmith_sub_u32(~4294967295u, ~u_input.c.x), _wgslsmith_mod_i32(0i, 2147483647i) < u_input.b), (select(u_input.a.x, arg_1.x, true) >> (abs(28890u) % 32u)) & arg_1.x));
    let var_2 = true;
    return Struct_1(~_wgslsmith_mod_u32(1u, 1u), arg_1, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -726f), 2588f, -169f))), var_0.c)), ~27553u);
}

fn func_1(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = ~u_input.a;
    let var_1 = true;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(518f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-626f + -1644f))))));
    var var_3 = select(arg_0.x, -2147483647i, all(vec4<bool>(var_1, !var_1, true, true)));
    let var_4 = func_5(_wgslsmith_mult_i32(i32(-1i) * -func_2(), u_input.b), ~_wgslsmith_add_vec2_u32((u_input.c.yz & vec2<u32>(var_0.x, 0u)) ^ reverseBits(var_0.zy), u_input.a.zx));
    return !vec2<bool>(false & var_1, all(!vec3<bool>(var_1, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec4<bool>(true, true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))) & any(func_1(-vec4<i32>(u_input.b, -48876i, u_input.b, -2147483647i) & -vec4<i32>(0i, u_input.b, -1i, u_input.b)));
    var var_1 = Struct_1(firstTrailingBit(~u_input.c.x) ^ _wgslsmith_clamp_u32(abs(37429u), 1u, ~firstTrailingBit(u_input.a.x)), min(~u_input.c.zx, ~_wgslsmith_sub_vec2_u32(min(u_input.a.yz, vec2<u32>(93545u, 42144u)), vec2<u32>(u_input.a.x, u_input.c.x))), vec4<f32>(_wgslsmith_div_f32(func_5(firstTrailingBit(u_input.b), u_input.c.xy | vec2<u32>(25097u, u_input.c.x)).c.x, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1428f))), _wgslsmith_f_op_f32(f32(-1f) * -175f)), 1u);
    global0 = 63646u;
    let var_2 = ~_wgslsmith_div_vec3_u32(abs(u_input.a), u_input.c);
    var var_3 = _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(-46124i, -5539i, -20244i, u_input.b)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -56209i, -11285i, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i)) & vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b)), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, 0i), vec4<i32>(2147483647i, -4525i, u_input.b, u_input.b)))) ^ vec4<i32>(u_input.b, u_input.b, ~(-1i), ~9405i);
    var var_4 = func_5(-min(-1i, var_3.x << (~var_2.x % 32u)), ~min((u_input.c.zy & var_1.b) >> (~vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), u_input.a.yz));
    let var_5 = Struct_1(~0u, var_4.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c.x, var_4.c.x, 1922f, var_4.c.x))) - var_4.c) + _wgslsmith_div_vec4_f32(vec4<f32>(-971f, var_1.c.x, var_1.c.x, 1036f), var_4.c))), var_2.x);
    var_3 = ~abs(abs(~vec4<i32>(u_input.b, u_input.b, -2147483647i, -1i)) << (vec4<u32>(var_1.a, var_1.d, 1u, firstTrailingBit(u_input.a.x)) % vec4<u32>(32u)));
    var_3 = firstTrailingBit(-_wgslsmith_div_vec4_i32(-(vec4<i32>(u_input.b, -2147483647i, var_3.x, -2147483647i) >> (vec4<u32>(var_1.a, 39437u, 4294967295u, 25874u) % vec4<u32>(32u))), ~vec4<i32>(u_input.b, 1i, 2147483647i, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & 2147483647i);
}

