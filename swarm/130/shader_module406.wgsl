struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = ~4294967295u;
    var var_1 = Struct_1(~_wgslsmith_mod_i32(-5659i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.x, u_input.a.x), min(u_input.a.x, 21225i))), max(select(vec2<i32>(0i ^ u_input.a.x, arg_0.x), abs(select(vec2<i32>(-11674i, arg_0.x), arg_0.zy, true)), !any(vec4<bool>(false, true, false, false))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(1i, arg_0.x))));
    return Struct_2(_wgslsmith_div_i32(~u_input.a.x, -u_input.a.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(9615i, 1i), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, arg_3.a)) ^ vec2<i32>(-1i, reverseBits(abs(-32103i ^ u_input.a.x)));
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(min(-66248i, 3218i), ~(-24319i), arg_1.x), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.x, u_input.a.x, -14587i) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 58617u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 36443i, arg_1.x, var_0.x), vec4<i32>(64873i, 2147483647i, var_0.x, u_input.a.x))), abs(-17699i), firstLeadingBit(u_input.a.x)));
    var_0 = u_input.a.zx;
    var var_2 = Struct_1(-1i, _wgslsmith_mult_vec2_i32(~(-select(vec2<i32>(-34443i, -5974i), arg_1.yz, vec2<bool>(false, false))), vec2<i32>(u_input.a.x >> (~arg_0.x % 32u), arg_3.a)));
    var var_3 = func_2(min(arg_1, _wgslsmith_mult_vec3_i32(~u_input.a >> ((vec3<u32>(arg_0.x, arg_0.x, 18176u) ^ vec3<u32>(arg_0.x, 1u, arg_0.x)) % vec3<u32>(32u)), -u_input.a)));
    return 0u;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~0u, _wgslsmith_clamp_u32(4294967295u, 10986u, 15523u)), vec2<u32>(1u, 1u));
    let var_1 = vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(func_3(vec2<u32>(var_0, var_0), ~vec3<i32>(-9517i, -7943i, u_input.a.x), false, func_2(u_input.a)), ~(63885u >> (var_0 % 32u))), 102904u), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 30328u, var_0, var_0), firstLeadingBit(vec4<u32>(var_0, 4294967295u, 16029u, var_0)))), var_0);
    var var_2 = func_2(u_input.a);
    var var_3 = Struct_1(var_2.a, abs(u_input.a.xz));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(round(arg_1))), 140f)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1512f - _wgslsmith_f_op_f32(exp2(arg_0.x)))))), arg_0.x);
    return !select(vec2<bool>(false, _wgslsmith_f_op_f32(-var_4.x) > _wgslsmith_f_op_f32(step(var_4.x, arg_1))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true))), vec2<bool>(true, true)), vec2<bool>(false, !(-9611i >= u_input.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = -1i;
    let var_1 = Struct_1(reverseBits(-2147483647i), ~(-vec2<i32>(var_0, arg_1.a) | u_input.a.yy));
    let var_2 = ~34088u;
    let var_3 = -284f;
    var var_4 = func_2(vec3<i32>(abs(0i), 382i, _wgslsmith_mod_i32(~firstLeadingBit(var_0), _wgslsmith_add_i32(-28503i << (arg_2 % 32u), i32(-1i) * -22208i))));
    return var_4.a & -arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(round(-2166f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + -2720f) - -709f), true))), 1994f));
    let var_1 = ~(~_wgslsmith_add_u32(~4294967295u, 0u));
    var var_2 = !(!(true || any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var_2 = 1i > func_4(!func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-226f, 515f) - vec2<f32>(-308f, var_0)), var_0), Struct_2(1i), ~1u);
    var_2 = !(!(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(0i, u_input.a.x)) == ((i32(-1i) * -8889i) & u_input.a.x)));
    var var_3 = Struct_2(u_input.a.x);
    var_3 = func_2(u_input.a);
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(680f, _wgslsmith_f_op_f32(ceil(var_0)))))));
    let var_5 = func_2(-u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(773f, var_0, true))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 + var_0))))), 1u);
}

