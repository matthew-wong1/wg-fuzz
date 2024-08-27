struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<u32> {
    var var_0 = -vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, -arg_0.c), ~u_input.b & u_input.b), u_input.b.x);
    let var_1 = !arg_1 & arg_0.a;
    let var_2 = select(!(!vec3<bool>(true, arg_1, !arg_1)), arg_0.b.wyw, any(arg_0.b.wxx));
    var_0 = _wgslsmith_sub_vec3_i32(arg_0.c, arg_0.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)), -500f, _wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(-120f - 359f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1677f, -156f, -417f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-175f, 741f, -1150f), vec3<f32>(-1000f, -1006f, 281f))))));
    return vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_add_u32(arg_2 >> (arg_0.d.x % 32u), ~39446u), arg_2, ~(arg_2 << (arg_2 % 32u)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(u_input.c.x < _wgslsmith_dot_vec4_u32(abs(func_3(Struct_1(true, vec4<bool>(false, false, false, true), u_input.b, vec4<u32>(62296u, u_input.a.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 93069u, u_input.a.x)), false, 6148u)), u_input.c), !(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)))), abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-50491i, u_input.b.x, 28180i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), countOneBits(u_input.b << (u_input.a.yyy % vec3<u32>(32u))))), abs(vec4<u32>(26595u, ~(u_input.c.x ^ u_input.c.x), abs(reverseBits(11604u)), 36808u >> (_wgslsmith_dot_vec3_u32(u_input.a.wzy, u_input.a.wzy) % 32u))), u_input.c.zyz);
    let var_1 = 1u;
    var_0 = Struct_1(!all(var_0.b.zx), select(select(vec4<bool>(true, var_0.b.x, false, false), vec4<bool>(true, !var_0.b.x, !var_0.a, all(vec2<bool>(false, var_0.a))), vec4<bool>(true, true, 1i <= var_0.c.x, !var_0.a)), var_0.b, var_0.b), vec3<i32>(-1i, 0i, u_input.b.x), var_0.d, var_0.e);
    let var_2 = true;
    let var_3 = Struct_1(any(select(!(!var_0.b.xz), !var_0.b.yw, var_0.a)), select(var_0.b, !vec4<bool>(var_0.b.x, any(var_0.b.yzx), true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false)), firstTrailingBit(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(firstLeadingBit(var_0.c.yz), min(var_0.c.yz, u_input.b.zz)), 52298i)), vec4<u32>(~_wgslsmith_dot_vec4_u32(var_0.d | var_0.d, _wgslsmith_mult_vec4_u32(var_0.d, var_0.d)), var_0.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, var_0.e.x, var_1) & ~vec3<u32>(46403u, 84755u, var_1), _wgslsmith_sub_vec3_u32(~vec3<u32>(50201u, 13726u, 46629u), vec3<u32>(u_input.c.x, 1u, var_1))), ~(~0u)), var_0.e);
    return true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    var var_0 = select(select(arg_0, !select(vec2<bool>(false, arg_2.b.x), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(arg_2.b.wy, vec2<bool>(arg_2.a, false), arg_2.b.yy)), vec2<bool>(true, any(select(arg_0, vec2<bool>(arg_2.a, false), vec2<bool>(false, arg_0.x))))), !vec2<bool>(arg_0.x, select(arg_2.b.x, true, !arg_0.x)), !(!func_2()));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(869f, -621f);
    let var_1 = u_input.b.x;
    let var_2 = !vec3<bool>(!func_1(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<i32>(u_input.b.x, 7223i) | vec2<i32>(u_input.b.x, 2147483647i), Struct_1(true, vec4<bool>(false, false, false, false), vec3<i32>(-2147483647i, 47268i, -58959i), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.c.x), u_input.c.ywz)), (~u_input.c.x << (107739u % 32u)) == abs(u_input.a.x), select(true, !func_2(), false));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) * var_0), _wgslsmith_f_op_vec2_f32(-var_0)), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1311f)), var_0.x), select(var_2.zx, var_2.zy, all(select(var_2, var_2, var_2.x)))));
    var var_4 = Struct_1(true, select(!select(vec4<bool>(var_2.x, var_2.x, true, true), !vec4<bool>(true, var_2.x, true, var_2.x), any(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), select(vec4<bool>(any(vec4<bool>(true, var_2.x, false, true)), true, var_3.x > 1000f, !var_2.x), vec4<bool>(var_2.x, all(vec2<bool>(var_2.x, true)), var_2.x, any(var_2)), !(!vec4<bool>(var_2.x, false, false, var_2.x))), !(!(!vec4<bool>(true, true, var_2.x, true)))), ~(~vec3<i32>(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -1i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, -2147483647i, 34388i, 1i)), select(12829i, var_1, var_2.x))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, u_input.c.x, 0u, u_input.a.x)), vec4<u32>(u_input.a.x >> (66314u % 32u), _wgslsmith_add_u32(0u, firstLeadingBit(u_input.d)), 36111u, u_input.d)), u_input.a.xxx);
    let var_5 = Struct_1(func_1(var_4.b.xw, vec2<i32>(var_1, var_4.c.x) | abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_4.c.x, var_4.c.x), vec2<i32>(-67905i, 13686i))), Struct_1(abs(-1i) <= _wgslsmith_clamp_i32(var_4.c.x, var_1, 24455i), select(vec4<bool>(var_2.x, var_2.x, false, var_4.b.x), !var_4.b, var_0.x != 458f), ~u_input.b, (u_input.a ^ var_4.d) << (reverseBits(var_4.d) % vec4<u32>(32u)), vec3<u32>(var_4.e.x, 9762u, ~19844u))), vec4<bool>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(max(454f, -617f))) != _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)), true, var_2.x, var_4.a), u_input.b, func_3(Struct_1(true, !select(vec4<bool>(var_2.x, false, var_2.x, true), var_4.b, var_2.x), vec3<i32>(-1i) * -vec3<i32>(var_4.c.x, var_1, 6718i), select(max(vec4<u32>(u_input.a.x, 1u, 0u, var_4.d.x), u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.a.x, u_input.c.x), vec4<u32>(0u, var_4.e.x, 0u, 25085u)), var_4.b), var_4.d.xxx), true, 4039u), vec3<u32>(u_input.d, 4294967295u, _wgslsmith_sub_u32(10359u, ~_wgslsmith_sub_u32(u_input.c.x, 9287u))));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 540f, -983f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_3.x, var_3.x) * vec3<f32>(-586f, 1004f, var_0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1053f), u_input.d << (1u % 32u), ~vec3<i32>(401i, 18240i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.zy, var_4.c.zy))));
}

