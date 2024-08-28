struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, arg_0, 525f, 160f) - arg_1.b.c.b) - arg_1.b.c.b) * arg_1.b.c.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.c.a, arg_0, 469f, _wgslsmith_f_op_f32(step(arg_1.a, -1393f))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-260f * arg_1.b.a), -796f, arg_0), select(vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, false))))));
    var var_1 = u_input.e.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), u_input.b.x, arg_1.b.c, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, ~(-8610i), ~1i), abs(vec3<i32>(-1i, arg_1.b.d.x >> (50076u % 32u), select(u_input.d, 2147483647i, global2.x)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(~u_input.d), firstLeadingBit(~5448i)), 2147483647i, _wgslsmith_add_i32(19551i, -56734i)));
    let var_3 = -(~u_input.a.x);
    var var_4 = vec3<bool>(true, true, true);
    return var_2.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> bool {
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(136810u, _wgslsmith_mod_u32(max(u_input.e.x, arg_0 >> (arg_1.c.c % 32u)), 60740u)), 6u)];
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - 937f)), arg_1.b), u_input.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(379f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.x, -235f, arg_1.a.b.x, -743f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b, arg_1.a.b.x, arg_1.a.a, -187f)))))), u_input.b.x, u_input.a.x), firstLeadingBit(vec3<i32>(max(_wgslsmith_mod_i32(u_input.a.x, arg_1.a.d), u_input.a.x), i32(-1i) * -2147483647i, u_input.a.x)), reverseBits(abs(-(u_input.a.x ^ 23195i))));
    let var_1 = global2.xx;
    global0 = any(select(vec4<bool>(false, true, true, var_0.a <= _wgslsmith_f_op_f32(-534f - arg_1.a.b.x)), select(!select(vec4<bool>(var_1.x, true, false, global2.x), vec4<bool>(global2.x, false, false, true), vec4<bool>(var_1.x, global2.x, global2.x, global2.x)), !vec4<bool>(global2.x, false, false, false), select(!vec4<bool>(false, var_1.x, false, var_1.x), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, false, false, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !vec4<bool>(false, global2.x, global2.x, false))), !select(!vec4<bool>(var_1.x, false, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), global2.x && false)));
    var var_2 = Struct_3(114f, 1u, var_0.c, vec3<i32>(i32(-1i) * -reverseBits(-18600i), _wgslsmith_clamp_i32(arg_1.c.d, -39848i, 2147483647i), -28984i), 13483i);
    return false;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_div_u32(~reverseBits(_wgslsmith_sub_u32(~u_input.c, ~0u)), ~u_input.e.x);
    var var_1 = ~4294967295u;
    let var_2 = Struct_4(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1020f)))))));
    global2 = vec3<bool>(func_4(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.e.x, u_input.e.x, u_input.c, 4294967295u)), u_input.e & vec4<u32>(35970u, u_input.c, u_input.c, u_input.e.x)), Struct_2(Struct_1(var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, -1471f, var_2.b, var_2.b)), func_3(294f, Struct_5(-1151f, Struct_3(-1000f, u_input.b.x, Struct_1(var_2.b, vec4<f32>(var_2.b, var_2.b, -594f, var_2.b), 1u, -1i), vec3<i32>(1i, u_input.d, u_input.a.x), u_input.a.x), vec2<f32>(-1118f, var_2.b))), _wgslsmith_mod_i32(u_input.d, -2147483647i)), _wgslsmith_f_op_f32(abs(var_2.b)), Struct_1(_wgslsmith_f_op_f32(ceil(-553f)), vec4<f32>(1454f, var_2.b, var_2.b, -115f), u_input.b.x ^ 39327u, -1i))), any(global2.yy), false);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + var_2.b)) * _wgslsmith_f_op_f32(sign(var_2.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * var_2.b)), 333f, _wgslsmith_f_op_f32(floor(-964f)), -848f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), var_2.b, _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(step(var_2.b, var_2.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.b)))))), 71695u, min(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, ~0i), u_input.d), -1i));
    return var_3.a;
}

fn func_1(arg_0: bool, arg_1: bool) -> vec2<f32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-751f * _wgslsmith_f_op_f32(floor(1540f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(493f + 1f))) * -1000f));
    let var_1 = u_input.a.x;
    global0 = true;
    global0 = arg_1;
    global1 = array<vec3<bool>, 6>();
    return vec2<f32>(-536f, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(trunc(-589f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1149f * 171f))), _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(round(-809f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(false, !global2.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -279f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1122f, -1000f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(true, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(105f, 174f)))))));
    var var_1 = _wgslsmith_add_u32(countOneBits(u_input.b.x), 22473u);
    let var_2 = ~(~(~u_input.e.yy));
    var var_3 = Struct_4(global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) * 1846f));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec3_u32(u_input.e.xzw, _wgslsmith_sub_vec3_u32(abs(u_input.e.yzy), _wgslsmith_clamp_vec3_u32(vec3<u32>(54773u, u_input.c, 1u), u_input.e.xyx, vec3<u32>(u_input.c, 1u, 1u)))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.e.x, 13133u, 1u, u_input.e.x)), vec4<u32>(var_2.x, 1u, u_input.e.x, 4294967295u)) | (u_input.b.x >> (var_2.x % 32u))), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.d)), vec3<i32>(u_input.d, _wgslsmith_mult_i32(select(2550i, u_input.a.x, false), reverseBits(-2147483647i)), ~_wgslsmith_div_i32(u_input.a.x, -2147483647i))), -2147483647i);
}

