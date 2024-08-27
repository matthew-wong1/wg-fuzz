struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1926f, 723f), vec3<f32>(-300f, 776f, 1000f)), vec2<f32>(-894f, -880f), false, vec2<f32>(925f, 792f));

var<private> global1: array<bool, 3>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> vec2<i32> {
    var var_0 = !(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b & u_input.b, _wgslsmith_clamp_u32(u_input.b, 0u, u_input.b)) >> (0u % 32u), 3u)]);
    let var_1 = _wgslsmith_add_vec3_i32(~(-(~vec3<i32>(u_input.a, 26843i, 2147483647i) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), firstTrailingBit(vec3<i32>(u_input.a & arg_0, -arg_0, -u_input.a)) | ~_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, 19214i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -6776i), vec3<i32>(2147483647i, -25985i, 1i)), vec3<i32>(arg_0, 8047i, 1i)));
    var var_2 = global0.a;
    var var_3 = arg_0;
    var_3 = 1i & (_wgslsmith_dot_vec3_i32(var_1, var_1) ^ ~(-15549i));
    return var_1.zy;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = ~arg_1.a.x;
    global0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_div_f32(-408f, arg_3.d.x)), -685f), _wgslsmith_div_vec3_f32(global0.a.b, vec3<f32>(arg_2, -646f, arg_2))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-594f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-global0.b.x))))), arg_3.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.a.a)), _wgslsmith_f_op_vec2_f32(arg_3.d * vec2<f32>(-969f, global0.d.x)), select(select(vec2<bool>(false, false), vec2<bool>(global0.c, global1[_wgslsmith_index_u32(103404u, 3u)]), vec2<bool>(arg_3.c, arg_3.c)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(true, true)))))));
    let var_1 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1702f))), _wgslsmith_f_op_f32(f32(-1f) * -159f))), !all(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 3u)], true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(5824u, 3u)], false))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(arg_2, -1000f))));
    var var_2 = _wgslsmith_mod_i32(arg_0.x, 1i);
    var var_3 = -1127f;
    return u_input.b;
}

fn func_1() -> Struct_2 {
    var var_0 = !(select(14887u, ~5690u << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u), !(global1[_wgslsmith_index_u32(1u, 3u)] && false)) < ~u_input.b);
    global1 = array<bool, 3>();
    var var_1 = (i32(-1i) * -1i) ^ _wgslsmith_mod_i32(u_input.a, -37341i);
    global1 = array<bool, 3>();
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.d))) + _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-global0.d))), global1[_wgslsmith_index_u32(func_3(func_2(_wgslsmith_div_i32(firstTrailingBit(12598i), u_input.a)), Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), ~vec3<u32>(78489u, u_input.b, u_input.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1171f - -675f)), global0.a.b.x)), Struct_2(Struct_1(global0.d, _wgslsmith_f_op_vec3_f32(global0.a.b * global0.a.b)), vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), -189f), global1[_wgslsmith_index_u32(u_input.b, 3u)], global0.b)), 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-154f, -316f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global0.a.a))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(select(global0.a.b.x, global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a.b.zx, global0.d)) * _wgslsmith_f_op_vec2_f32(-global0.b))), global0.a.b), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x)))))), global0.c, global0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(-19980i, _wgslsmith_sub_i32(-32681i, _wgslsmith_add_i32(-3808i, -1i)), -u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(func_2(u_input.a).x, ~(-u_input.a), firstTrailingBit(-u_input.a)), vec3<i32>(-14784i, -16711i, u_input.a)));
    let var_1 = any(vec3<bool>(true, ~u_input.b != 83771u, global1[_wgslsmith_index_u32(0u, 3u)]));
    var var_2 = _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-global0.a.a.x));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(801f - -647f))), global0.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(u_input.b, u_input.b, u_input.b), min(vec3<u32>(u_input.b, u_input.b, 34386u), vec3<u32>(u_input.b, u_input.b, u_input.b)))), vec3<u32>(1u, u_input.b, firstLeadingBit(~u_input.b))), 3u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b.x) - global0.b.x), 237f)));
    global0 = Struct_2(global0.a, global0.d, (func_1().c && !any(vec4<bool>(var_1, false, global0.c, true))) || false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -623f) - vec2<f32>(-542f, _wgslsmith_f_op_f32(-global0.d.x))) + global0.a.b.zz));
    let x = u_input.a;
    s_output = StorageBuffer(max(~select(vec2<u32>(5782u, 1u), ~vec2<u32>(11330u, u_input.b), select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, global0.c), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], var_1))), vec2<u32>(reverseBits(u_input.b) & _wgslsmith_clamp_u32(u_input.b, u_input.b, 75115u), _wgslsmith_sub_u32(59339u, u_input.b))), _wgslsmith_sub_i32(var_0, -(u_input.a & 1i)) | firstTrailingBit(7752i), global0.a.a.x, vec3<f32>(-879f, _wgslsmith_f_op_f32(1016f - global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -1671f) * _wgslsmith_f_op_f32(-global0.a.a.x)))));
}

