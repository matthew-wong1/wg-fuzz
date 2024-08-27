struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_1;

var<private> global2: f32 = -630f;

var<private> global3: array<f32, 4>;

var<private> global4: array<i32, 4> = array<i32, 4>(-31957i, 39004i, 0i, 25753i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = global1.b;
    let var_1 = select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, global1.a.x, 1u), _wgslsmith_div_vec4_u32(abs(vec4<u32>(15389u, 10697u, global1.a.x, global1.a.x)), reverseBits(vec4<u32>(u_input.c.x, u_input.d, 0u, 0u)))), u_input.a, true) >> (global1.a.x % 32u);
    let var_2 = firstTrailingBit(~(~(~vec2<i32>(-1i, global4[_wgslsmith_index_u32(global1.a.x, 4u)]))));
    global2 = -1000f;
    var var_3 = ~reverseBits(75653u);
    return -147f;
}

fn func_2(arg_0: f32) -> vec3<u32> {
    let var_0 = reverseBits(global1.a);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(22087u, global1.a.x), u_input.c);
    var var_2 = false;
    global2 = _wgslsmith_f_op_f32(func_3(all(vec2<bool>(false, true))));
    return _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~79385u, ~21566u, global1.a.x), ~vec3<u32>(u_input.c.x, global1.a.x, 58270u) | abs(vec3<u32>(var_0.x, var_0.x, 1u))) | vec3<u32>(u_input.b, _wgslsmith_mult_u32(~global1.a.x, global1.a.x >> (u_input.c.x % 32u)), ~abs(19760u)), vec3<u32>(abs(min(1u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8554u & global1.a.x, u_input.c.x, var_0.x << (21258u % 32u)), max(select(vec4<u32>(var_1, var_0.x, var_0.x, 1u), vec4<u32>(1u, var_1, 1u, var_1), vec4<bool>(false, true, false, true)), ~vec4<u32>(0u, 21914u, 72705u, var_0.x))), u_input.c.x));
}

fn func_1(arg_0: u32) -> bool {
    global3 = array<f32, 4>();
    let var_0 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(~abs(func_2(-1748f)), vec3<u32>(~_wgslsmith_mod_u32(arg_0, 60468u), 0u, u_input.c.x)));
    global0 = array<Struct_1, 4>();
    var var_1 = select(min(reverseBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(arg_0, 4u)], global4[_wgslsmith_index_u32(global1.a.x, 4u)], -2147483647i), vec3<i32>(u_input.e, 0i, global4[_wgslsmith_index_u32(0u, 4u)]), vec3<i32>(-28189i, -1i, 0i)), ~vec3<i32>(2147483647i, -2147483647i, -1i), all(vec3<bool>(false, true, false)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(104378u, 4u)], 2147483647i, 2147483647i), vec3<i32>(global1.c, -2147483647i, 69625i)), min(vec3<i32>(global4[_wgslsmith_index_u32(1u, 4u)], 1i, 2147483647i), vec3<i32>(u_input.e, global4[_wgslsmith_index_u32(arg_0, 4u)], global1.c))) >> (vec3<u32>(0u, _wgslsmith_add_u32(8740u, 1u), min(1963u, var_0)) % vec3<u32>(32u))), -(~(-vec3<i32>(global1.c, global1.c, global1.c))), !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), true));
    var_1 = vec3<i32>(1i, -16223i, 0i);
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    let var_0 = !select(arg_3.xxy, arg_3.wyw, vec3<bool>(arg_1.x, false, !(72921u >= global1.a.x)));
    let var_1 = arg_3;
    let var_2 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-570f + arg_0.b)))), ~min(global1.c ^ 0i, _wgslsmith_sub_i32(arg_0.c, 36700i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(arg_2, arg_2))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.x)))), ~(-vec2<i32>(32994i, ~50418i)), arg_0);
    var var_3 = var_2.c.x | arg_0.c;
    let var_4 = var_2;
    return !vec2<bool>(any(vec2<bool>(global1.c <= -34836i, arg_1.x & var_0.x)), arg_3.x | var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(350f)), _wgslsmith_f_op_f32(f32(-1f) * -582f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2525f, global1.b)))))));
    var var_1 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(func_4(global0[_wgslsmith_index_u32(global1.a.x, 4u)], vec3<bool>(true, true, true), vec2<f32>(-111f, _wgslsmith_f_op_f32(min(global1.b, -131f))), vec4<bool>(false, all(vec2<bool>(true, true)), false, func_1(u_input.b))), vec2<bool>(func_1(_wgslsmith_clamp_u32(u_input.c.x, global1.a.x, u_input.b)), false), _wgslsmith_f_op_f32(sign(global1.b)) != var_0), false);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(global1.a.x, global1.a.x, 12349u), 38587u), u_input.b), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(30235u, u_input.a, global1.a.x) | vec3<u32>(u_input.c.x, 1u, global1.a.x), ~vec3<u32>(71358u, 2300u, 61442u), ~vec3<u32>(global1.a.x, global1.a.x, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(u_input.b, u_input.c.x, 54452u)))), 4u)], vec2<f32>(_wgslsmith_f_op_f32(-320f + 576f), _wgslsmith_f_op_f32(round(var_0))), ~(~(vec2<i32>(-2147483647i, 51851i) << ((vec2<u32>(u_input.d, 1u) ^ vec2<u32>(u_input.c.x, u_input.d)) % vec2<u32>(32u)))), Struct_1(vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(u_input.b, 0u)), _wgslsmith_sub_u32(6748u, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f * 1012f)), var_0), global1.c));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-420f, 1131f) - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - global1.b) * _wgslsmith_f_op_f32(round(var_2.a.b))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_1.x))))));
    global0 = array<Struct_1, 4>();
    global3 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(var_2.a.a.x, 4u)], min(24337i, var_2.c.x)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.a.a.x & global1.a.x, 30954u >> (u_input.b % 32u)), 4u)]) | 48642i, _wgslsmith_f_op_vec2_f32(-var_2.b), 35159i);
}

