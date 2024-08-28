struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(-608f, Struct_1(2147483647i, 373f), 0i, 63321u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = vec2<i32>(arg_1, -45186i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1866f, -540f), 798f, global2.a, _wgslsmith_f_op_f32(f32(-1f) * -766f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1027f)), arg_2.b, global2.b.b, _wgslsmith_f_op_f32(f32(-1f) * -243f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_0, _wgslsmith_f_op_f32(min(global2.b.b, arg_0)), -1366f))));
    let var_2 = select(~arg_2.a, _wgslsmith_add_i32(-abs(u_input.c), 2147483647i), true) ^ ~_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-1i, 1758i, u_input.e, arg_1), vec4<i32>(var_0.x, -57662i, 16460i, global2.b.a)), vec4<i32>(~39445i, var_0.x, countOneBits(global2.c), 0i));
    var_1 = vec4<f32>(1178f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-549f)), global2.a), _wgslsmith_f_op_f32(arg_2.b * -1289f), any(vec3<bool>(true, true, true)) && true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)) - -1172f)), global2.b.b);
    var var_3 = vec3<bool>(true, true, !(!(!(arg_2.b == -1607f))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-284f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(ceil(arg_2.b))) - global2.a);
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = 2147483647i;
    let var_0 = -2147483647i;
    var var_1 = vec3<i32>(-2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -var_0, global2.c), vec3<i32>(2147483647i, -2147483647i, -7528i))), u_input.e);
    var_1 = vec3<i32>(u_input.e, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, global2.b.a, 2788i), vec4<i32>(31815i, 33018i, -20734i, 2147483647i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.d, 1u, u_input.a), u_input.b) % vec4<u32>(32u)), -vec4<i32>(27211i, -20505i, -2147483647i, var_0)), ~(~0i)), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, countOneBits(u_input.e), i32(-1i) * -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, var_1.x, -37901i), reverseBits(vec3<i32>(0i, u_input.e, 24356i))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.a, global2.b.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.b, 157f), vec2<f32>(global2.b.b, 322f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-422f, _wgslsmith_f_op_f32(func_3(global2.b.b, -1i, global0[_wgslsmith_index_u32(5807u, 11u)])))), !select(select(vec2<bool>(true, true), vec2<bool>(arg_0, false), true), !vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false)))));
    return Struct_2(-965f, Struct_1(var_1.x & 24762i, var_2.x), 1i, u_input.a);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = global2.b.a;
    global1 = 2147483647i;
    let var_1 = 1u;
    return func_2(true);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = func_2(false).b;
    let var_2 = 1000f;
    global2 = var_0;
    global0 = array<Struct_1, 11>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1319f * _wgslsmith_f_op_f32(global2.b.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + -612f))));
    var var_1 = !vec2<bool>(!any(vec3<bool>(true, false, false)) & all(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))));
    var var_2 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(-1647f, 1i, Struct_1(u_input.c, global2.a))), 1250f, global2.b.b, -1089f)), global2.a, firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(global2.d >> (global2.d % 32u), _wgslsmith_sub_u32(u_input.b.x, 77623u)), 28430u, u_input.a >> (~32947u % 32u))));
    global0 = array<Struct_1, 11>();
    global1 = u_input.e;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(37992i, -1i, global2.c)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, 1i, 1i), vec3<i32>(1i, -25905i, -1i), vec3<i32>(u_input.e, -2147483647i, 2147483647i)) | vec3<i32>(-17424i, 0i, 0i)), var_2.a, global2.c), firstTrailingBit(vec3<i32>(min(-8161i, 2147483647i) & u_input.e, 1i, global2.b.a ^ var_2.a)));
    var_2 = func_1().b;
    var var_4 = _wgslsmith_add_vec2_i32(-abs(~(vec2<i32>(0i, -1i) << (vec2<u32>(global2.d, 4294967295u) % vec2<u32>(32u)))), vec2<i32>(-(var_2.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1428u, 16228u), u_input.b) % 32u)), 57192i));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wxz << (max(~min(u_input.b.yyy, u_input.b.xyw), u_input.b.xyx) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.b)) + var_2.b), _wgslsmith_f_op_f32(step(-712f, 2947f))), u_input.c);
}

