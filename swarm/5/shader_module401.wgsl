struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: array<vec4<i32>, 16>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = reverseBits(-23279i);
    global2 = array<vec4<i32>, 16>();
    global2 = array<vec4<i32>, 16>();
    global0 = select(vec4<bool>(any(vec3<bool>(arg_0 | arg_0, true, true)), ((-1i << (u_input.b % 32u)) < var_0) && true, arg_0, firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, 49937i)) <= countOneBits(firstLeadingBit(u_input.a.x))), !(!(!vec4<bool>(arg_0, arg_0, global0.x, true))), !(!(!select(vec4<bool>(false, global0.x, global0.x, arg_0), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(arg_0, false, global0.x, false)))));
    let var_1 = Struct_3(u_input.b, u_input.b, u_input.b);
    return -993f;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> bool {
    let var_0 = u_input.b;
    let var_1 = Struct_4(Struct_2((global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 81956u, var_0), 3u)] << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 26040u, var_0), vec3<u32>(0u, 15689u, u_input.b)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 125186u, 1u), vec3<u32>(u_input.b, u_input.b, var_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 79520u, 0u), vec3<u32>(4294967295u, 1u, 1u))) % vec3<u32>(32u)), 1000f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(449f, -347f, -542f) * vec3<f32>(-1285f, -338f, 241f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1460f, 1000f, -421f), vec3<f32>(385f, -152f, -1112f)))), vec3<i32>(~u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-963f, 1215f) + vec2<f32>(-1000f, -155f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(255f, -474f) + vec2<f32>(201f, -568f)))), arg_1.x));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(var_1.a.c.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.a.c.a, vec3<f32>(var_1.a.b, var_1.a.b, var_1.a.c.a.x)), vec3<f32>(481f, var_1.a.c.c.x, var_1.a.c.a.x)) * vec3<f32>(var_1.a.b, _wgslsmith_f_op_f32(var_1.a.c.c.x - var_1.a.c.c.x), _wgslsmith_f_op_f32(var_1.a.c.c.x - var_1.a.b)))), vec3<i32>(firstLeadingBit(-2147483647i), 104805i << (max(~u_input.b, var_0) % 32u), 37006i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.c.c.x, _wgslsmith_f_op_f32(min(var_1.a.c.c.x, -135f))))))));
    var var_3 = Struct_3(1u, select(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0, var_0), 40109u ^ var_0, arg_0.x) & u_input.b, min(_wgslsmith_add_u32(u_input.b, abs(u_input.b)), arg_0.x), 0u != (var_0 << (246u % 32u))), abs(_wgslsmith_mod_u32(var_0, arg_0.x)));
    var_3 = Struct_3(u_input.b, min(~arg_0.x >> (firstTrailingBit(46857u) % 32u), 0u), var_3.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 7773u, u_input.b, 1u), vec4<u32>(46732u, 15871u, arg_0.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_0, 61390u, 4294967295u), vec4<u32>(0u, 30965u, 63447u, 38138u))), min(_wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(0u, u_input.b)), reverseBits(vec2<u32>(var_3.c, var_0)))) % 32u));
    return false;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_div_i32(~u_input.a.x, u_input.a.x);
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i), _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(u_input.b, 16u)], global2[_wgslsmith_index_u32(u_input.b, 16u)])) << (1u % 32u), ~49475i ^ ~u_input.a.x, 0i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-742f, _wgslsmith_div_f32(660f, 1000f), -1254f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 513f, -615f))))), !global0.x | func_3(vec2<u32>(0u, u_input.b), vec3<bool>(true, true, global0.x)))), u_input.a.ywx, vec2<f32>(-571f, 3210f)), select(arg_0, !all(!vec2<bool>(false, arg_0)), all(!global0.xz)));
    global2 = array<vec4<i32>, 16>();
    let var_2 = true;
    global1 = array<vec3<i32>, 3>();
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_3(u_input.b, ~_wgslsmith_sub_u32(u_input.b, firstLeadingBit(_wgslsmith_mod_u32(u_input.b, u_input.b))), firstLeadingBit(u_input.b));
    var var_1 = !(!all(global0.wx));
    var var_2 = !select(!vec2<bool>(arg_1.c.c.x <= arg_1.c.c.x, true), select(select(select(global0.xy, vec2<bool>(arg_1.d, false), vec2<bool>(false, false)), select(vec2<bool>(false, arg_0), vec2<bool>(global0.x, arg_0), vec2<bool>(arg_1.d, arg_1.d)), !vec2<bool>(arg_0, true)), vec2<bool>(any(vec2<bool>(true, arg_1.d)), true), func_2(all(global0.xx))), func_3(~vec2<u32>(var_0.a, 21660u), select(!vec3<bool>(true, arg_0, true), select(global0.wzy, global0.wxw, false), select(global0.xyy, vec3<bool>(false, true, global0.x), vec3<bool>(true, true, arg_1.d)))));
    global2 = array<vec4<i32>, 16>();
    let var_3 = vec4<u32>(var_0.c ^ ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, 4294967295u, 10750u), vec3<u32>(13157u, 0u, u_input.b), vec3<bool>(global0.x, var_2.x, global0.x)), ~vec3<u32>(77967u, u_input.b, 29387u)), reverseBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 37906u, var_0.b), vec3<u32>(u_input.b, 1u, var_0.c)), vec3<u32>(0u, var_0.b, 56854u))), 0u, 1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-15208i >= ~select(abs(15698i), -2147483647i, !global0.x), Struct_2(u_input.a.zzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1064f, 1686f)))), Struct_1(vec3<f32>(1872f, -1648f, _wgslsmith_f_op_f32(select(-304f, -834f, global0.x))), ~firstTrailingBit(global1[_wgslsmith_index_u32(29755u, 3u)]), _wgslsmith_div_vec2_f32(vec2<f32>(361f, -714f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1029f, -256f)))), func_2(true)), u_input.a.x);
    global0 = select(vec4<bool>(global0.x, true != global0.x, false, global0.x), vec4<bool>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1175f - -578f), -114f) <= _wgslsmith_f_op_f32(select(1061f, -491f, false)), select(global0.x | true, true, true), global0.x), vec4<bool>(true, global0.x, global0.x, !(!(global0.x | global0.x))));
    var var_1 = Struct_3(~u_input.b, u_input.b, ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_clamp_u32(23399u, 1u, var_0.b) ^ 1u));
    var_1 = var_0;
    global1 = array<vec3<i32>, 3>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, -1826f, 512f, -951f)))) + vec4<f32>(-1962f, _wgslsmith_f_op_f32(-1f), 370f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-497f, 288f) + _wgslsmith_div_f32(-273f, 196f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(364f, _wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(min(-1586f, 730f)), _wgslsmith_f_op_f32(f32(-1f) * -136f)), vec4<f32>(-559f, _wgslsmith_f_op_f32(f32(-1f) * -364f), _wgslsmith_f_op_f32(186f + -888f), 338f)))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(-6888i, -1i, u_input.a.x), vec3<i32>(1i, u_input.a.x, 1i)), _wgslsmith_f_op_f32(abs(var_2.x)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-477f - var_2.x)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(5864i, u_input.a.x, u_input.a.x), vec3<i32>(-27147i, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.yy)) + vec2<f32>(710f, var_2.x))), global0.x));
    global2 = array<vec4<i32>, 16>();
    global1 = array<vec3<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

