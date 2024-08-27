struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    return Struct_1(-1260f);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<u32> {
    return min(_wgslsmith_mult_vec2_u32(~u_input.d.zz, ~_wgslsmith_sub_vec2_u32(u_input.d.yx, vec2<u32>(arg_1, u_input.d.x))), u_input.d.yz);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a)) + arg_1.a))), vec2<i32>(2147483647i ^ arg_0, u_input.a.x), ~u_input.a.x);
    var var_2 = Struct_2(func_3(true, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.d.yy, ~vec2<u32>(928u, 63368u)), 67878u, u_input.c & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.d.yz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(320f + 974f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))) - arg_2.wz), reverseBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.yz), max(arg_0, 0i)), u_input.a.x, 1i, arg_0 ^ arg_0)), var_0);
    var var_3 = select(true, u_input.b <= countOneBits(~arg_3), true);
    var_2 = Struct_2(min(~vec2<u32>(~86938u, arg_3), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, arg_3) | vec2<u32>(var_2.a.x, 73137u), _wgslsmith_mult_vec2_u32(u_input.d.yy, var_2.a))), _wgslsmith_f_op_vec2_f32(-var_2.b), ~var_2.c, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f * -1827f)), min(vec2<i32>(_wgslsmith_sub_i32(1i, arg_0), -2147483647i), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.c.x, 1i), var_2.c.ww))), arg_0));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.d.xy ^ u_input.d.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, 524f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(964f, -664f)))))), -func_1(_wgslsmith_mod_i32(6272i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, -1i), u_input.a)), Struct_1(_wgslsmith_f_op_f32(step(1312f, 1000f))), vec4<f32>(-835f, -1065f, _wgslsmith_div_f32(-1000f, -717f), _wgslsmith_f_op_f32(351f + 156f)), 63109u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-626f * 2283f))))));
    let var_1 = true && !any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true));
    let var_2 = Struct_2(_wgslsmith_sub_vec2_u32(~reverseBits(var_0.a), vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(20292u, 4294967295u, u_input.b)), u_input.d))), vec2<f32>(649f, var_0.d.a), vec4<i32>(var_0.c.x, u_input.a.x & 60938i, var_0.c.x, countOneBits(-2147483647i)), var_0.d);
    var var_3 = !select(select(!vec3<bool>(var_1, true, var_1), select(!vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, false), var_1), var_1), vec3<bool>(true, any(!vec3<bool>(false, var_1, true)), !var_1), vec3<bool>(false, true, var_1));
    var var_4 = Struct_2(~(firstLeadingBit(vec2<u32>(var_0.a.x, 1u)) & (var_0.a >> (var_0.a % vec2<u32>(32u)))) ^ ~var_2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d.a, -1690f), vec2<f32>(var_0.b.x, 1385f))))), !(!(!vec2<bool>(false, var_3.x))))), -_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(var_2.c.x, 0i), -1i, 25179i, -2147483647i & var_0.c.x), -(~vec4<i32>(-2709i, var_2.c.x, -48200i, var_0.c.x))), var_0.d);
    var_3 = select(select(vec3<bool>(!(var_1 | false), any(select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, true, true, false), true)), select(any(vec4<bool>(true, var_3.x, true, var_3.x)), true, var_2.c.x >= u_input.a.x)), vec3<bool>(all(vec3<bool>(var_3.x, false, var_3.x)), var_1, true), var_3.x), !(!select(select(vec3<bool>(true, var_1, var_3.x), vec3<bool>(var_3.x, var_3.x, true), var_3.x), vec3<bool>(var_1, true, var_1), false)), true);
    var_4 = var_2;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(var_4.c.x), var_2.c.x), var_2.a.x, min(~_wgslsmith_div_i32(min(29183i, -2147483647i), -var_2.c.x), var_4.c.x), vec4<f32>(func_2(1289f, vec2<i32>(u_input.a.x, ~var_0.c.x), 18714i).a, _wgslsmith_f_op_f32(480f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.a), func_2(var_0.b.x, var_0.c.wx, 0i).a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(316f)))), var_2.d.a), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zx, vec2<i32>(var_4.c.x | var_0.c.x, countOneBits(9518i))), abs(var_0.c.wy)));
}

