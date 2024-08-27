struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    global1 = (i32(-1i) * -51730i) > ~(arg_0.x ^ u_input.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1362f, global2.x, global2.x), vec3<f32>(-854f, 519f, global2.x), vec3<bool>(true, false, true))), vec3<f32>(3008f, global2.x, global2.x), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, -147f, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, global2.x, global2.x)), true)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1220f + global2.x), _wgslsmith_div_f32(global2.x, -322f), _wgslsmith_f_op_f32(select(global2.x, -229f, true))))))));
    var var_0 = Struct_1(!select(vec4<bool>(true, false, true, all(vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), false & all(vec4<bool>(true, true, false, false))), !vec3<bool>(false, select(true, true, any(vec2<bool>(false, false))), true), 2290u, ~86012i);
    global0 = 4450i;
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f + global2.x) - _wgslsmith_f_op_f32(global2.x * 1101f)) <= -217f, all(select(var_0.a, var_0.a, true)), select(true, ~var_0.c <= ~var_0.c, all(select(var_0.a, var_0.a, vec4<bool>(false, false, true, var_0.a.x)))), true), var_0.b, ~(~_wgslsmith_div_u32(var_0.c, _wgslsmith_div_u32(71289u, var_0.c))), reverseBits(u_input.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-1199f, _wgslsmith_f_op_f32(trunc(-118f))), -237f) * -2168f);
}

fn func_2(arg_0: u32) -> StorageBuffer {
    global1 = all(!(!vec4<bool>(true, 63434u < arg_0, true, global2.x > global2.x)));
    var var_0 = Struct_1(vec4<bool>(4294967295u < arg_0, _wgslsmith_mod_u32(arg_0, arg_0) >= 4294967295u, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, -581f, true)) * _wgslsmith_f_op_f32(func_3(vec4<i32>(9992i, u_input.a.x, u_input.a.x, u_input.a.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), !vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -349f) <= _wgslsmith_f_op_f32(481f * global2.x), all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), arg_0, ~(~select(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 31704i), all(vec3<bool>(false, false, true)))));
    global0 = abs(-var_0.d);
    var var_1 = vec2<bool>(false, true);
    let var_2 = Struct_1(var_0.a, var_0.b, ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0.c, 34214u)), ~vec2<u32>(1157u, 4294967295u)) & ~var_0.c, 1i);
    return StorageBuffer(arg_0, ~vec2<u32>(1u, countOneBits(_wgslsmith_add_u32(var_0.c, 3205u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -873f), -636f))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x);
    global0 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 1i)) & reverseBits(vec4<i32>(9555i, -2147483647i, u_input.a.x, -1i)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x | -68720i, 10829i)), u_input.a.x);
    let var_0 = reverseBits(~1u);
    global1 = true;
    global0 = u_input.a.x;
    return func_2(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(min(1i, u_input.a.x));
    global2 = vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) * global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(global2.x)));
    var var_0 = 1u;
    global2 = vec3<f32>(166f, _wgslsmith_f_op_f32(sign(global2.x)), 1f);
    var_0 = ~1u;
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), vec2<u32>(~0u, _wgslsmith_div_u32(1u, 6214u))), ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 4294967295u))));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))));
}

