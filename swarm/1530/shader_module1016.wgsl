struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: vec4<f32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = -_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.d.x, -17356i), ~vec2<i32>(u_input.a, 0i))), select(-_wgslsmith_add_vec2_i32(u_input.d.zx, u_input.d.yz), vec2<i32>(-1i) * -vec2<i32>(51532i, 1i), global0.a), u_input.d.yz);
    let var_1 = -1000f;
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-311f, global1.x) + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(365f))), var_1, 244f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(789f * -1275f) + _wgslsmith_f_op_f32(ceil(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 1097f) + -1000f), -1265f, 125f));
    let var_2 = _wgslsmith_clamp_u32(u_input.e, firstTrailingBit(1u), select(u_input.b, _wgslsmith_sub_u32(~u_input.b, u_input.b), global0.a) | 4294967295u);
    var var_3 = Struct_1(~4294967295u < ~(var_2 >> (1u % 32u)));
    return _wgslsmith_f_op_f32(-623f * global2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    var_0 = Struct_1(true);
    global0 = arg_0;
    global2 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1437f)))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1455f));
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(floor(734f))))), _wgslsmith_div_f32(735f, global1.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), 539f))), !(!(!(!vec4<bool>(true, arg_0.a, false, true))))));
    return select(vec4<i32>(_wgslsmith_clamp_i32(~u_input.d.x, i32(-1i) * -62031i, u_input.d.x), -_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a))), 0i, ~u_input.d.x), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~4782i, u_input.d.x), select(u_input.a, -1i, var_0.a) ^ ~u_input.a), i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(-(u_input.d ^ vec3<i32>(-27946i, 1i, u_input.d.x)), -(u_input.d ^ vec3<i32>(u_input.d.x, u_input.a, -19224i))), reverseBits(_wgslsmith_clamp_i32(u_input.d.x >> (4294967295u % 32u), u_input.a, -u_input.d.x))), !(!select(vec4<bool>(true, true, arg_1.a, arg_0.a), !vec4<bool>(false, false, arg_0.a, false), select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, true, var_0.a, false), var_0.a))));
}

fn func_1() -> vec2<i32> {
    let var_0 = countOneBits(-_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-16109i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(17556i, u_input.a, u_input.d.x, -1i)), func_2(Struct_1(global0.a), Struct_1(true)))) & _wgslsmith_add_vec4_i32(-vec4<i32>(abs(1i), _wgslsmith_mod_i32(u_input.d.x, -1i), ~u_input.d.x, u_input.d.x), abs(vec4<i32>(-27554i, 41875i & u_input.d.x, min(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -38099i, u_input.d.x), vec3<i32>(1i, u_input.a, u_input.d.x)))));
    return ~u_input.d.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_div_vec2_u32(u_input.c.wy, u_input.c.wx), ~(~u_input.c.xw), vec2<bool>(!select(true, global0.a && false, !global0.a), global0.a));
    let var_1 = Struct_1((_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 3206i, 48204i), u_input.d | u_input.d) < _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-3582i, 11355i), vec2<bool>(true, global0.a)), func_1())) | false);
    let var_2 = var_1;
    var var_3 = _wgslsmith_sub_u32(11926u, min(5296u, u_input.c.x & 1u));
    var_3 = _wgslsmith_mod_u32(abs(66218u), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 24617u), u_input.c.xx), (u_input.c.x & 4294967295u) << (var_0.x % 32u)), ~(~countOneBits(var_0.x))));
    var var_4 = _wgslsmith_f_op_f32(step(global2.x, global2.x));
    let var_5 = var_1;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global2.x, global1.x, -1832f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, 692f, (-(~u_input.a) >> (73719u % 32u)) >> (4294967295u % 32u), (-(~u_input.d.x) >> (firstTrailingBit(abs(var_0.x)) % 32u)) ^ -abs(_wgslsmith_add_i32(-1i, u_input.a)));
}

