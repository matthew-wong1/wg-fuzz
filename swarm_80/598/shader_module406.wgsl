struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_5(reverseBits(u_input.c), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_1.b.b.x, -493f))) * _wgslsmith_f_op_vec3_f32(arg_1.b.b + arg_1.b.b)))));
    let var_2 = Struct_2(true, Struct_1(firstTrailingBit(arg_1.b.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1965f, var_1.x, 644f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, -1195f, var_1.x))))), vec3<bool>(true, u_input.c < u_input.a, !(!arg_1.b.c.x))));
    let var_3 = var_2;
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(max(var_1.xz, vec2<f32>(-195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f))))), min(vec4<i32>(2147483647i, 1i, arg_1.b.a, -9484i << ((var_0.a >> (4294967295u % 32u)) % 32u)), vec4<i32>(var_3.b.a, ~arg_1.b.a, abs(u_input.b.x), abs(var_3.b.a))), Struct_2(true, var_3.b));
    return vec4<bool>(true, var_0.b.x, all(!vec2<bool>(true, var_0.a <= u_input.c)), true);
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = arg_0.x;
    var_0 = arg_0.x;
    var var_1 = all(!func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(944f, 975f) + vec2<f32>(-307f, 330f)))), Struct_2(u_input.a == 1u, Struct_1(u_input.b.x, vec3<f32>(692f, 597f, -1014f), vec3<bool>(true, true, true))), !select(vec2<bool>(arg_0.x, arg_0.x), arg_0.zx, false)));
    var_1 = true;
    let var_2 = 55184u | ~u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(919f - -1151f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: u32) -> f32 {
    let var_0 = vec3<f32>(406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-194f))));
    var var_1 = Struct_2(!select(19885i < ~u_input.b.x, any(vec4<bool>(true, true, true, true)), (arg_1.x != 23061u) == true), Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-741f, var_0.x), 958f, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, 328f, var_0.x)))), select(vec3<bool>(any(vec3<bool>(false, false, true)), false, true), func_3(_wgslsmith_f_op_vec2_f32(var_0.zx * vec2<f32>(var_0.x, -135f)), Struct_2(true, Struct_1(u_input.b.x, var_0, vec3<bool>(false, false, true))), vec2<bool>(false, true)).ywx, false)));
    var var_2 = ~_wgslsmith_sub_i32(-var_1.b.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.b.a, 5306i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2966i, var_1.b.a), vec3<i32>(var_1.b.a, var_1.b.a, u_input.b.x))), -2147483647i));
    var_2 = u_input.b.x;
    var_1 = Struct_2(var_1.b.c.x, var_1.b);
    return _wgslsmith_f_op_f32(select(-432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b.x * var_0.x))) - -454f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-2484f)), var_1.b.b.x), var_1.b.b.x)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(-480f, -362f, var_1.b.c.x)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, abs(0i), select(1i, arg_1.b.a, arg_1.a))), ~select(-vec3<i32>(-2147483647i, u_input.b.x, 0i), vec3<i32>(-1i, -27703i, arg_1.b.a), select(vec3<bool>(true, false, arg_1.b.c.x), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.b.c.x)))), -2967f, -1806f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c, ~vec2<u32>(u_input.c, 5746u), vec2<u32>(7607u, u_input.d.x), _wgslsmith_mod_u32(u_input.a, 4294967295u))) - _wgslsmith_f_op_f32(f32(-1f) * -575f))), Struct_2(true, Struct_1(reverseBits(~u_input.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(544f, 302f, -443f), vec3<f32>(633f, -532f, 234f))))), vec3<bool>(true, true, false))));
}

