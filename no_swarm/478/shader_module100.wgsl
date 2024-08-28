struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = vec3<f32>(arg_1, _wgslsmith_div_f32(-1000f, -1007f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 248f) + _wgslsmith_f_op_f32(trunc(arg_1)))) + _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1221f))))));
    var var_1 = true;
    let var_2 = false;
    var_1 = var_2;
    let var_3 = 0u;
    return var_3;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(abs(_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(3020u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)))) != 4294967295u, _wgslsmith_f_op_f32(-273f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_f_op_f32(f32(-1f) * -262f)))))), firstTrailingBit(arg_0.x));
    global0 = select(arg_1.zx, vec2<bool>(16067u <= (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 59204u, 11313u), vec3<u32>(u_input.a, 808u, 4294967295u)) ^ _wgslsmith_add_u32(u_input.a, 62934u)), false), select(!(!(!arg_2)), vec2<bool>(arg_2.x, _wgslsmith_f_op_f32(floor(var_0.b)) > _wgslsmith_f_op_f32(-var_0.b)), arg_2.x));
    global0 = arg_1.yy;
    var var_1 = Struct_2(Struct_1(min(~countOneBits(4294967295u), 0u)));
    var var_2 = Struct_4(vec4<i32>(0i, 1201i ^ select(1914i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, arg_0.x, 5835i), vec3<i32>(var_0.c, var_0.c, arg_0.x)), false), i32(-1i) * -(i32(-1i) * -17093i), firstTrailingBit(var_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, 621f), vec2<f32>(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, var_0.b))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1556f, var_0.b), vec2<f32>(var_0.b, var_0.b)))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.b)), var_0.b), vec2<f32>(_wgslsmith_f_op_f32(min(var_0.b, 1000f)), _wgslsmith_f_op_f32(-177f * var_0.b)))), _wgslsmith_clamp_vec3_i32(select(~vec3<i32>(arg_0.x, 2147483647i, var_0.c), ~abs(vec3<i32>(arg_0.x, 31815i, -9807i)), arg_1.zyw), -(vec3<i32>(-1i) * -vec3<i32>(-69430i, arg_0.x, arg_0.x)), firstTrailingBit(vec3<i32>(firstTrailingBit(-7792i), countOneBits(1i), ~(-2147483647i)))), Struct_3(!arg_2.x, _wgslsmith_f_op_f32(exp2(var_0.b)), -1i), var_1.a);
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    var var_0 = 4601i;
    let var_1 = Struct_3(!arg_0.x, -1628f, 1i);
    return select(57689u, _wgslsmith_add_u32(arg_1, 8266u) >> (max(arg_1 ^ 1u, func_3(vec2<i32>(var_1.c, var_1.c), vec4<bool>(false, false, var_1.a, arg_0.x), arg_0)) % 32u), any(vec3<bool>(global0.x, arg_1 < arg_1, arg_0.x))) ^ abs(48301u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(u_input.a, u_input.a << (u_input.a % 32u), select(u_input.a, ~4294967295u, true));
    let var_1 = ~vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(func_1(vec4<u32>(var_0.x, u_input.a, 81969u, u_input.a), -938f), var_0.x), ~(~u_input.a)), func_2(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x), ~(~var_0.x)), 4007u);
    global0 = vec2<bool>(true & global0.x, true);
    global0 = select(!select(vec2<bool>(true, global0.x), select(!vec2<bool>(global0.x, true), select(vec2<bool>(true, false), vec2<bool>(global0.x, false), global0.x), !vec2<bool>(false, global0.x)), !vec2<bool>(global0.x, global0.x)), vec2<bool>(any(vec4<bool>(true, global0.x && true, global0.x, global0.x)), true), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, global0.x), vec2<bool>(true, true)), vec2<bool>(true, global0.x), all(vec2<bool>(false, false))), !vec2<bool>(global0.x, false), !select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), false)), vec2<bool>(false, (true & global0.x) && !global0.x), vec2<bool>(true, true)));
    let var_2 = Struct_4(vec4<i32>(1i << (firstLeadingBit(abs(var_0.x)) % 32u), 1i, reverseBits(~(-1i)), -1i), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2012f), _wgslsmith_f_op_f32(f32(-1f) * -463f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1920f)), _wgslsmith_f_op_f32(f32(-1f) * -191f)) - _wgslsmith_f_op_f32(floor(2543f)))), abs(-firstLeadingBit(-vec3<i32>(13757i, -384i, -3861i))), Struct_3(any(vec3<bool>(select(false, global0.x, true), select(false, global0.x, false), !global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-506f))), -_wgslsmith_div_i32(1i, -19958i << (var_0.x % 32u))), Struct_1(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(-249f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2265f, var_2.d.b, 167f, 786f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(170f, var_2.d.b, var_2.d.b, 1323f) * vec4<f32>(var_2.b.x, var_2.d.b, var_2.d.b, -609f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(874f, -1057f, var_2.b.x, var_2.d.b))))) - vec4<f32>(663f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1209f, 192f)), 182f, -795f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1661f) * _wgslsmith_f_op_f32(floor(1034f))), var_2.d.b, var_2.b.x)), ~max(var_2.a, _wgslsmith_mult_vec4_i32(~vec4<i32>(-4803i, -54699i, 2147483647i, var_2.a.x), var_2.a)));
}

