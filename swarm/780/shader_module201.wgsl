struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-100f, -1018f, 403f));

var<private> global1: i32 = 1i;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    let var_0 = !(arg_1 | (false && (70250u != u_input.b)));
    global0 = global4[_wgslsmith_index_u32(1u, 31u)];
    global1 = 98517i;
    global0 = Struct_2(arg_0);
    global2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.a.x), u_input.a.x | u_input.a.x), 31u)];
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    let var_0 = any(vec3<bool>(true, ~u_input.a.x > 0u, true));
    let var_1 = arg_0;
    let var_2 = vec3<bool>(-1196f == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a))), var_0, !(global3.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.a.x, -139f)) * global2.a.x)));
    var var_3 = var_1;
    global2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(593f - _wgslsmith_div_f32(arg_2.a.x, -352f)), _wgslsmith_div_f32(336f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-953f, -198f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, 632f) * -589f) + 730f)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-967f - -466f))), 227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a.x)) + _wgslsmith_f_op_f32(-1857f + global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1073f))))));
}

fn func_2() -> bool {
    let var_0 = -2147483647i;
    global1 = -2147483647i;
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(334f)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.a.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, global2.a.x, 784f, 730f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.a.x, global3.a.x, 180f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, -1967f, 491f, -2605f))), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 592f, -362f, global0.a.x) + vec4<f32>(997f, global0.a.x, -758f, global3.a.x))) * _wgslsmith_f_op_vec4_f32(func_4(Struct_1(648f), select(false, false, true), global4[_wgslsmith_index_u32(func_3(global3.a, false), 31u)], true)))));
    let var_2 = var_0;
    return false;
}

fn func_1() -> i32 {
    global2 = global4[_wgslsmith_index_u32(31779u, 31u)];
    global4 = array<Struct_2, 31>();
    global2 = global4[_wgslsmith_index_u32((select(4294967295u, ~select(4294967295u, u_input.a.x, false), select(func_2(), false, true)) ^ ~10184u) ^ (firstTrailingBit(u_input.a.x) & u_input.b), 31u)];
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 1000f, global2.a.x))))));
    var var_0 = Struct_1(-274f);
    return _wgslsmith_clamp_i32(1i, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, firstTrailingBit(-35764i)), firstLeadingBit(i32(-1i) * -13251i), -(1i >> (u_input.b % 32u))), -(8506i << (u_input.a.x % 32u)));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec2_u32(arg_2.zx, firstLeadingBit(abs(select(arg_2.zx, firstTrailingBit(arg_2.yw), select(vec2<bool>(arg_3, true), vec2<bool>(false, false), false)))));
    var var_1 = Struct_1(840f);
    let var_2 = _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(arg_1, arg_1)) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), abs(abs(vec2<i32>(arg_1, arg_1)))), arg_1);
    let var_3 = arg_2;
    global2 = global4[_wgslsmith_index_u32(var_3.x, 31u)];
    return StorageBuffer(_wgslsmith_mult_u32(arg_2.x, max(abs(var_3.x), var_0.x)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(~(-1i));
    var var_0 = global4[_wgslsmith_index_u32(u_input.b, 31u)];
    let var_1 = global2.a.x;
    let var_2 = global4[_wgslsmith_index_u32(~u_input.b, 31u)];
    let var_3 = global2.a.x;
    let x = u_input.a;
    s_output = func_5(global4[_wgslsmith_index_u32(u_input.a.x << (firstTrailingBit(u_input.a.x) % 32u), 31u)], func_1(), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, reverseBits(u_input.a.x), abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(12465u, 4294967295u, 35352u, u_input.a.x), vec4<u32>(8897u, u_input.b, 35162u, 5357u)))), ~select(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.b)), vec4<u32>(u_input.b, 47016u, u_input.a.x, u_input.a.x), true)), true);
}

