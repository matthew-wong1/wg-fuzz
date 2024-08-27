struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_1(1220f, reverseBits(abs(~vec3<u32>(0u, global0.b.x, arg_0.b) | ~vec3<u32>(arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1762f, global0.c.x), vec2<f32>(global0.c.x, global0.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1119f, -254f) - vec2<f32>(global0.a, 1333f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1980f, 1250f), global0.c)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.c), _wgslsmith_f_op_vec2_f32(select(global0.c, global0.c, vec2<bool>(arg_0.a, arg_0.a))))))));
    let var_0 = arg_0;
    let var_1 = vec4<i32>(_wgslsmith_add_i32(~(-1i), -u_input.b), u_input.a.x, ~(-countOneBits(abs(u_input.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(51739i ^ u_input.b, -u_input.b, 0i, min(u_input.b, 24599i)) & countOneBits(-vec4<i32>(u_input.a.x, u_input.a.x, -4853i, 32758i)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 88898i, -1i), -u_input.a), abs(vec4<i32>(-1i, -54516i, u_input.a.x, u_input.a.x)))));
    global1 = ~(countOneBits(1u) >> (global0.b.x % 32u));
    let var_2 = Struct_2(!(!(arg_0.a != true)), ~abs(select(var_0.b, 4294967295u, false)));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = Struct_1(2279f, ~select(vec3<u32>(_wgslsmith_div_u32(29269u, arg_1.b), abs(1u), min(1u, 32281u)), ~(~vec3<u32>(1u, global0.b.x, global0.b.x)), func_3(arg_1)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.a * global0.c.x), global0.a))))));
    var var_1 = vec3<u32>(~4294967295u, var_0.b.x, _wgslsmith_mult_u32(global0.b.x, var_0.b.x));
    var_0 = Struct_1(-834f, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, global0.b.x, 82983u), vec3<u32>(var_0.b.x, var_1.x, 0u)), max(var_0.b, vec3<u32>(1u, var_1.x, 52329u))), ~arg_1.b, ~abs(var_0.b.x)), ~(abs(var_0.b) >> (abs(vec3<u32>(arg_1.b, 0u, 22877u)) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(103f + 1971f), var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-global0.c.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-217f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(max(-1402f, 1132f)), _wgslsmith_f_op_f32(-var_0.c.x))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~_wgslsmith_sub_vec3_u32(max(vec3<u32>(arg_1.b, 69052u, arg_1.b), var_0.b), var_0.b & global0.b)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1548f)), var_2.x));
    return ~var_0.b.x;
}

fn func_1() -> bool {
    global1 = global0.b.x;
    var var_0 = Struct_2(true, _wgslsmith_div_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_div_i32(u_input.b, -1i), Struct_2(false, 25151u), true), ~(69929u ^ global0.b.x)), (min(0u, global0.b.x) ^ 125607u) & ~(~global0.b.x)));
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, -389f, false)) * 111f) * global0.a))), vec3<u32>(_wgslsmith_div_u32(abs(global0.b.x), 1639u), _wgslsmith_div_u32(~(~global0.b.x), global0.b.x), global0.b.x), vec2<f32>(-932f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-219f))))));
    var var_1 = -u_input.a.yy;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, 733f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.c + vec2<f32>(global0.c.x, 2533f)), vec2<f32>(1000f, global0.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, -1000f)) * _wgslsmith_f_op_vec2_f32(-global0.c))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(4294967295u < global0.b.x, true, any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), all(vec2<bool>(any(vec4<bool>(true, true, true, false)), true))), vec4<bool>(!any(vec3<bool>(true, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, func_1() & (~u_input.a.x < -2147483647i)), !(_wgslsmith_f_op_f32(-global0.c.x) > 1000f) | (global0.a >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(abs(595f)))));
    var var_1 = Struct_1(global0.c.x, firstLeadingBit(abs(select(reverseBits(global0.b), _wgslsmith_mult_vec3_u32(vec3<u32>(61596u, 30168u, 4294967295u), vec3<u32>(26068u, global0.b.x, global0.b.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), var_0.x)))), vec2<f32>(1006f, global0.c.x));
    var_0 = !select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(select(u_input.b < u_input.a.x, true, var_0.x), _wgslsmith_f_op_f32(-539f + global0.c.x) >= -1000f, true, var_0.x | var_0.x), any(select(!var_0.yw, !var_0.xx, true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(1330f + 1235f), ~vec3<u32>(var_1.b.x, 57531u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(8660u, 1u, 33626u), vec3<u32>(global0.b.x, global0.b.x, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, global0.a)), any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-601f, -1617f)))))));
    global0 = var_2;
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1000f)))), var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_2.a, 2560f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c.x, var_1.a)), global0.c.x))));
    global0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.c.x * var_1.c.x), _wgslsmith_f_op_f32(-var_2.c.x))))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 67604u, var_2.b.x, 1501u) ^ vec4<u32>(18529u, 29715u, global0.b.x, var_2.b.x), ~vec4<u32>(0u, var_2.b.x, 4294967295u, 1u)), ~4294967295u));
}

