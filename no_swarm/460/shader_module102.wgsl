struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: vec4<f32> = vec4<f32>(459f, -1674f, 780f, -1752f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(step(800f, -601f));
    var var_0 = Struct_3(~countOneBits(_wgslsmith_clamp_i32(~0i, -17549i, ~2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x, 951f, -690f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -1660f, global2.x) + vec4<f32>(-205f, global2.x, 1092f, -1448f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, 637f, global2.x, global2.x)))))), -975f, Struct_2(-(~_wgslsmith_mult_i32(14706i, -36699i)), vec4<u32>(4294967295u, 0u, 22387u, ~(41732u >> (u_input.a % 32u))), 1i | _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 36295i), -2147483647i >> (u_input.a % 32u), 0i), u_input.a), vec3<bool>(true, true, true));
    var var_1 = all(var_0.e.yx);
    global1 = array<vec2<i32>, 29>();
    let var_2 = var_0.d.b.xzy;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 47247u, var_0.d.d), var_0.d.b.xyx), ~_wgslsmith_div_u32(var_0.d.b.x, var_2.x) << (var_0.d.b.x % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d.d, 4294967295u, 78670u), select(~var_0.d.b.xyy, ~var_0.d.b.ywx, var_0.e)), ~var_2.x) & min(var_0.d.b, vec4<u32>(52111u, 17438u, _wgslsmith_dot_vec3_u32(~vec3<u32>(17214u, 31697u, var_0.d.d), var_0.d.b.yyw), 4452u));
}

fn func_2() -> vec4<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, -1354f, global2.x, _wgslsmith_f_op_f32(step(1000f, -140f))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) + vec4<f32>(global2.x, global2.x, 546f, global2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-839f, global2.x, global2.x, 112f), vec4<f32>(global2.x, 192f, global2.x, global2.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 736f, global2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, global2.x, global2.x, global2.x) - vec4<f32>(global2.x, -1214f, global2.x, global2.x))))));
    global0 = global2.x;
    global0 = global2.x;
    var var_0 = Struct_3(-_wgslsmith_mult_i32(1i, 44889i) >> (u_input.a % 32u), vec4<f32>(global2.x, global2.x, global2.x, -1000f), global2.x, Struct_2(1i, select(~func_3(), ~(~vec4<u32>(u_input.a, 17152u, u_input.a, u_input.a)), true), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, 7389i, 0i), vec3<i32>(1i, -2147483647i, 31840i)), 2147483647i), u_input.a), vec3<bool>(select(true, !any(vec2<bool>(true, true)), true), true, true));
    let var_1 = vec4<bool>(var_0.d.a <= 16223i, var_0.e.x, any(select(vec3<bool>(any(vec4<bool>(var_0.e.x, var_0.e.x, false, true)), true, true), !(!var_0.e), var_0.e.x)), any(var_0.e.yz) | any(var_0.e));
    return ~(vec4<i32>(abs(~var_0.d.c), 0i, -var_0.d.c, countOneBits(var_0.a) >> (_wgslsmith_clamp_u32(44732u, 4294967295u, 4294967295u) % 32u)) ^ (-abs(vec4<i32>(2147483647i, -1i, var_0.d.a, 2147483647i)) >> ((firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 24901u, 30961u)) & _wgslsmith_div_vec4_u32(vec4<u32>(41585u, u_input.a, u_input.a, 0u), var_0.d.b)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_i32(~(-vec4<i32>(1i, arg_2.x, ~arg_2.x, arg_2.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(3130i, arg_2.x, 25898i, -19115i), vec4<i32>(32392i, 1i, arg_2.x, arg_2.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, 1i, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, 0i, arg_2.x), vec4<i32>(arg_2.x, -1i, 77186i, arg_2.x))), func_2()), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_2.x, 31660i, 0i), vec4<i32>(arg_2.x, arg_2.x, 2147483647i, 10621i)))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1728f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.d - -170f), 1330f, _wgslsmith_f_op_f32(1485f + arg_3))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global2.yxx))))), Struct_4(1u, arg_0.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.c)) - _wgslsmith_f_op_vec4_f32(exp2(arg_0.c))))), arg_3));
    let var_2 = _wgslsmith_div_vec2_u32(~min(vec2<u32>(18515u, 0u), ~vec2<u32>(u_input.a, var_1.c.b)), ~vec2<u32>(abs(arg_0.a), min(0u, 0u))) & ((firstTrailingBit(~vec2<u32>(0u, 136598u)) >> (vec2<u32>(arg_0.a, _wgslsmith_mult_u32(u_input.a, 1u)) % vec2<u32>(32u))) | vec2<u32>(~(~u_input.a), abs(34801u | u_input.a)));
    return vec3<i32>(_wgslsmith_div_i32(var_0.x, -2147483647i), arg_2.x, i32(-1i) * -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec3<i32>(0i, _wgslsmith_sub_i32(-21305i, 1i), 14519i) ^ (func_1(Struct_4(u_input.a, u_input.a, vec4<f32>(-1503f, -911f, global2.x, -763f), global2.x), vec4<bool>(true, true, false, false), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 29u)]), -839f) | -(vec3<i32>(-45197i, -1i, 1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))));
    global0 = global2.x;
    global1 = array<vec2<i32>, 29>();
    var var_1 = Struct_4(14276u, select(~u_input.a, _wgslsmith_mod_u32(min(u_input.a, ~1u), u_input.a), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -124f))), -532f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.x, global2.x))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(global2.x, -426f))))), global2.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(279f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, var_1.a), 72791u), _wgslsmith_mod_u32(27985u, 85794u)) & ~vec2<u32>(var_1.a, ~u_input.a), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(func_3().x, 4294967295u), 1u & ~u_input.a), _wgslsmith_div_u32(0u, u_input.a & (u_input.a ^ 1u)), _wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(var_1.b, var_1.a)), ~vec2<u32>(52400u, 1430u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a, var_1.a), vec2<u32>(var_1.a, u_input.a)), firstTrailingBit(vec2<u32>(0u, 19192u))))), firstLeadingBit(-37990i ^ var_0.x), ~func_1(Struct_4(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, u_input.a, 0u, var_1.b), vec4<u32>(4294967295u, 44631u, 1u, 13381u)), _wgslsmith_f_op_vec4_f32(sign(var_1.c)), -1000f), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false)), _wgslsmith_div_vec2_i32(global1[_wgslsmith_index_u32(1u, 29u)], vec2<i32>(8378i, -9878i)) & min(var_0.zz, vec2<i32>(-12072i, 0i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.x)))), select(~(~(~u_input.a)), ~var_1.a, false));
}

