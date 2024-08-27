struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: Struct_2;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    let var_0 = vec2<i32>(~28426i, -_wgslsmith_clamp_i32(global2.c, 2147483647i | arg_1.x, -24434i) << (_wgslsmith_add_u32(4294967295u, 1u | _wgslsmith_sub_u32(39027u, global2.a)) % 32u));
    global2 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~8339u, 4294967295u), _wgslsmith_add_vec2_u32(u_input.b.yy, u_input.b.zz)), 0u, 21872u), 4294967295u, arg_0.x);
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x | ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(31780u, _wgslsmith_add_u32(global2.b, 27078u)), 41270u), 3u)];
    return 1i;
}

fn func_2() -> u32 {
    global0 = Struct_2(~firstTrailingBit(firstTrailingBit(65920u)), global2.b, u_input.a);
    global2 = Struct_2(51749u, ~(0u ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, global2.a), ~vec3<u32>(global0.a, 33982u, u_input.b.x))), -((func_3(vec2<i32>(-2147483647i, global0.c), vec3<i32>(u_input.a, -12023i, global0.c), -1000f) >> (~global2.a % 32u)) << (global2.a % 32u)));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(764f, -2114f)))))));
    let var_1 = vec4<bool>(true || !(all(vec4<bool>(false, false, true, true)) | true), false, true, true);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - _wgslsmith_f_op_f32(-979f + _wgslsmith_f_op_f32(round(var_0))));
    return select(_wgslsmith_dot_vec4_u32(~vec4<u32>(~global2.b, 1893u, 31002u, ~u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(4118u, u_input.b.x, firstLeadingBit(34382u), _wgslsmith_mod_u32(global2.a, global0.a)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(global0.b, 546u, 42157u, 77064u)), ~vec4<u32>(4294967295u, 50130u, global0.b, 62015u)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 33282u, global2.a), u_input.b.x), (global2.c > -firstLeadingBit(0i)) == !all(vec3<bool>(var_1.x, false, var_1.x)));
}

fn func_1() -> f32 {
    let var_0 = func_2() >> ((~(_wgslsmith_add_u32(83603u, u_input.b.x) ^ ~u_input.b.x) & 2697u) % 32u);
    var var_1 = ~countOneBits(~u_input.b.x);
    let var_2 = -1359f;
    let var_3 = global1[_wgslsmith_index_u32(0u, 3u)];
    let var_4 = var_3.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-856f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 3>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 260f))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f)), 865f) + var_0.x));
    var var_2 = _wgslsmith_sub_u32(~7964u, global2.a);
    global0 = Struct_2(u_input.b.x, global0.a, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.c, global0.c) & _wgslsmith_mult_i32(0i, u_input.a), ~_wgslsmith_add_i32(0i, -63981i)));
    var var_3 = ~select(firstTrailingBit(_wgslsmith_sub_vec2_u32(~u_input.b.zz, vec2<u32>(9456u, 1u))), u_input.b.yy ^ abs(~u_input.b.yy), !select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(67719u, global2.a), 3u)], false));
    global2 = Struct_2(global2.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(select(vec2<u32>(global2.b, 0u), vec2<u32>(global0.a, u_input.b.x), global1[_wgslsmith_index_u32(u_input.b.x, 3u)])), ~vec2<u32>(global2.a, global0.b)), global2.b), global2.c);
    var var_4 = 12212i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_3.x, 34888u), ~vec2<u32>(4294967295u, 4205u)), u_input.a, reverseBits(select(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-63672i, u_input.a, 35612i, u_input.a), vec4<i32>(-2147483647i, u_input.a, global0.c, global2.c))), vec4<i32>(u_input.a, firstLeadingBit(global2.c), global0.c, 2909i), false)), abs(vec4<u32>(_wgslsmith_sub_u32(max(4294967295u, u_input.b.x), global0.b), min(var_3.x, 42748u), ~(~1u), global2.b)), ~global0.c);
}

