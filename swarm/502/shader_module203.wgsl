struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = !arg_0.a.a.x;
    var var_1 = 1i;
    global1 = array<bool, 6>();
    var var_2 = _wgslsmith_div_f32(127f, _wgslsmith_div_f32(global0.x, global0.x));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f))))));
    return u_input.a.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(~func_3(Struct_2(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.c, 6u)]), u_input.a)), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec2<i32>(-33827i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, u_input.d), vec3<i32>(-12479i, 445i, 5152i))), 6u)], global1[_wgslsmith_index_u32(51326u, 6u)], false, true), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(50366u & u_input.c, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], any(vec3<bool>(true, false, false))), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 6u)], true, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], true), true), false), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(37008u, 6u)], true, global1[_wgslsmith_index_u32(u_input.c, 6u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], true, false), true), vec4<bool>(!global1[_wgslsmith_index_u32(13872u, 6u)], false, -1i < u_input.d, global1[_wgslsmith_index_u32(~u_input.a.x, 6u)]), vec4<bool>(select(global1[_wgslsmith_index_u32(0u, 6u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)])), true, global1[_wgslsmith_index_u32(~21923u, 6u)])), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(42846u, 6u)], global1[_wgslsmith_index_u32(31380u, 6u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], true, false, global1[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)])), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(34589u, 6u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(11653u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(70836u, 6u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 6u)], true, global1[_wgslsmith_index_u32(8534u, 6u)]))), vec4<bool>(any(!vec3<bool>(false, global1[_wgslsmith_index_u32(33997u, 6u)], false)) && true, false, !(!(false || global1[_wgslsmith_index_u32(4294967295u, 6u)])), !select(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]) | all(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.c, 6u)]))));
    return vec4<u32>(_wgslsmith_mod_u32(select(1u, firstTrailingBit(74450u), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4223u), u_input.a.x), 6u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c), u_input.c), vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 45526u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 54512u))))), ~41397u, 1u, 1u);
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = 1u;
    let var_1 = !select(arg_0.c.a.yy, select(vec2<bool>(true, true), !vec2<bool>(true, arg_0.c.a.x), all(!vec4<bool>(true, arg_0.c.a.x, false, false))), vec2<bool>(global1[_wgslsmith_index_u32(~var_0, 6u)], global0.x >= -473f));
    let var_2 = ~firstLeadingBit(~0i);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(step(global0.x, global0.x)), global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, -410f, var_1.x)), 1281f, 313f), !(!any(vec4<bool>(true, true, var_1.x, true))) & any(vec4<bool>(var_1.x | true, global0.x >= global0.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], var_1.x))));
    global1 = array<bool, 6>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f))))))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> vec4<u32> {
    global0 = vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 6u)], func_2(), Struct_1(arg_1, u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(593f, _wgslsmith_f_op_f32(min(global0.x, global0.x))))), 1104f);
    let var_0 = -firstTrailingBit(~0i << (firstTrailingBit(firstTrailingBit(42201u)) % 32u));
    global1 = array<bool, 6>();
    let var_1 = vec3<f32>(1283f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(floor(global0.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1924f))))), global0.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = Struct_3(true, _wgslsmith_add_vec4_u32(~func_1(u_input.a.x, !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], false)), reverseBits(vec4<u32>(~60470u, _wgslsmith_add_u32(0u, u_input.a.x), ~2514u, reverseBits(u_input.a.x)))), Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 6u)], false, all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 6u)], any(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(17805u, 6u)])), true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_clamp_vec2_u32(abs(u_input.a), vec2<u32>(1u, 32080u), firstTrailingBit(vec2<u32>(1u, u_input.a.x)))));
    global1 = array<bool, 6>();
    global1 = array<bool, 6>();
    var var_2 = !vec4<bool>(any(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], var_1.a, global1[_wgslsmith_index_u32(4294967295u, 6u)])), !var_1.c.a.x, var_1.a, all(vec3<bool>(true, all(var_1.c.a), var_1.a && global1[_wgslsmith_index_u32(u_input.c, 6u)])));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(u_input.b & 0i, _wgslsmith_div_i32(-31275i, u_input.b)) & _wgslsmith_div_i32(u_input.d, _wgslsmith_mult_i32(-1i, 1i))));
}

