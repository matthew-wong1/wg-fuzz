struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = ~(vec3<i32>(-1i) * -u_input.b);
    let var_1 = 0i;
    let var_2 = Struct_1(select(vec2<bool>((arg_1.x & arg_2) <= ~40556u, arg_3.a), vec2<bool>(!arg_3.a, arg_3.a), true));
    let var_3 = arg_3;
    var var_4 = _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.a.xyx, _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(-1i, 39337i, -2147483647i), vec3<i32>(-33761i, 2147483647i, -30436i), vec3<bool>(false, var_3.a, var_3.a)), ~(-u_input.b), u_input.a.yxy)));
    return !all(vec3<bool>(any(vec4<bool>(var_2.a.x, true, var_3.a, true)), var_3.a, false));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), true));
    var var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(select(105f, -451f, false)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-299f)), 581f)))), !var_0.a.x);
    var_1 = vec3<bool>(false, all(!(!select(var_1.zz, vec2<bool>(var_0.a.x, true), var_1.x))), !all(vec2<bool>(func_3(u_input.d, vec4<u32>(u_input.e.x, 28145u, u_input.e.x, u_input.c.x), 4294967295u, Struct_2(var_1.x)), false)));
    var var_2 = vec2<bool>(var_0.a.x, all(vec3<bool>(any(select(vec4<bool>(var_1.x, var_0.a.x, var_1.x, var_0.a.x), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x)), any(vec4<bool>(true, false, var_0.a.x, var_0.a.x)), false)));
    var var_3 = Struct_2(all(select(vec3<bool>(false, -840i >= u_input.a.x, var_1.x || true), !vec3<bool>(false, var_0.a.x, true), var_1.x)));
    return Struct_1(!select(vec2<bool>(false, true), select(vec2<bool>(true, var_2.x), select(vec2<bool>(var_0.a.x, false), vec2<bool>(true, true), vec2<bool>(var_0.a.x, true)), true), !vec2<bool>(var_2.x, var_0.a.x)));
}

fn func_1() -> u32 {
    var var_0 = countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u ^ u_input.c.x, ~u_input.c.x, abs(_wgslsmith_mod_u32(37713u, 4294967295u))), vec3<u32>(u_input.e.x ^ 78806u, ~4294967295u, ~u_input.c.x), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, u_input.c), vec3<u32>(u_input.e.x, u_input.c.x, 25270u), ~vec3<u32>(65223u, u_input.e.x, u_input.c.x)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(u_input.e.x, 1u, 112346u)), firstTrailingBit(vec3<u32>(u_input.e.x, u_input.c.x, 0u))))));
    var_0 = _wgslsmith_mult_vec3_u32(u_input.c, u_input.e.yzz);
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(floor(-1096f)))));
    let var_3 = true;
    return _wgslsmith_clamp_u32(~u_input.c.x, ~12561u, ~(~0u ^ _wgslsmith_div_u32(var_0.x, u_input.e.x))) & 67256u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    var var_1 = 0i;
    var var_2 = select(var_0, 2903u, true);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(197f, -1000f, -816f, 696f), vec4<f32>(-509f, -568f, 247f, -708f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1562f, -422f, -758f, -633f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, -1279f, -649f, 376f)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(211f, 1041f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(480f - _wgslsmith_f_op_f32(-var_3.x)));
    var var_5 = func_1();
    var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.xxw)));
}

