struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    let var_0 = false;
    let var_1 = Struct_2(select(all(select(select(vec2<bool>(false, true), vec2<bool>(arg_2, false), var_0), !vec2<bool>(true, arg_2), arg_2)), (13080u >> (abs(u_input.c.x) % 32u)) >= _wgslsmith_dot_vec2_u32(abs(vec2<u32>(12783u, 1u)), u_input.c.xy), all(vec4<bool>(true, !var_0, -38070i >= u_input.a.x, true))), vec3<bool>(false, select((108565u >> (arg_0.x % 32u)) <= arg_0.x, var_0, any(!vec2<bool>(var_0, true))), false), _wgslsmith_dot_vec2_u32(~u_input.c.yy, vec2<u32>(abs(~u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(arg_0.x, 19936u, 0u, u_input.c.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1753f + arg_3.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-366f, arg_3.x, -562f, arg_3.x) - vec4<f32>(arg_3.x, arg_3.x, arg_3.x, 756f))))));
    let var_2 = Struct_2(all(select(vec4<bool>(var_1.a | arg_2, true, !var_0, var_1.b.x | false), select(vec4<bool>(var_1.a, false, true, true), !vec4<bool>(true, false, var_1.a, true), select(vec4<bool>(true, true, false, arg_2), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, arg_2))), _wgslsmith_f_op_f32(-483f + arg_3.x) < _wgslsmith_f_op_f32(floor(1474f)))), vec3<bool>(any(vec3<bool>(all(vec3<bool>(true, var_1.b.x, true)), true, var_1.b.x)), true, !(false || var_1.a) && var_0), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(4294967295u, 8140u, 12322u, 1u)), min(~vec4<u32>(11893u, 26410u, var_1.c, 55288u) | (vec4<u32>(76573u, arg_0.x, var_1.c, 66690u) << (vec4<u32>(u_input.c.x, 4294967295u, 0u, 87686u) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x), _wgslsmith_mod_u32(4294967295u, 15604u), 68246u, abs(arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.d, vec4<f32>(-800f, _wgslsmith_f_op_f32(ceil(arg_3.x)), -1000f, _wgslsmith_f_op_f32(min(1000f, var_1.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.d, var_1.d))));
    var var_3 = -27090i;
    var_3 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) + _wgslsmith_f_op_f32(-var_1.d.x));
}

fn func_2() -> Struct_1 {
    var var_0 = 1332f;
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.c.zz, vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(107602u, u_input.c.x), vec2<u32>(u_input.c.x, 11772u)), 14802u) | _wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(u_input.c.x, 4294967295u, 30772u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, u_input.c.x, 1u), 16696i, true, vec2<f32>(-336f, 1248f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1645f + -825f))))));
    let var_2 = _wgslsmith_mod_i32((firstLeadingBit(u_input.b.x) ^ (i32(-1i) * -1i)) >> (~_wgslsmith_mod_u32(103872u, var_1.x) % 32u), -2147483647i) << (var_1.x % 32u);
    var var_3 = ~((u_input.c | ~vec3<u32>(u_input.c.x, 21235u, 4294967295u)) | vec3<u32>(var_1.x, 45174u, var_1.x)) ^ ~abs(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(2155u, 16091u, var_1.x)), vec3<u32>(u_input.c.x, var_1.x, 1u) | u_input.c));
    return Struct_1(u_input.a.zx);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), u_input.c.x | min(4294967295u, ~u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(236f, -714f))), 286f, -495f, _wgslsmith_f_op_f32(func_3(~vec3<u32>(u_input.c.x, 48434u, u_input.c.x), max(u_input.b.x, 0i), false, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(409f, 403f), vec2<f32>(230f, 189f))))))), Struct_2(true && any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), 0u, vec4<f32>(1f, -2203f, -452f, 103f)));
    var_0 = Struct_1(var_0.a >> (abs(vec2<u32>(var_1.a.c, ~u_input.c.x)) % vec2<u32>(32u)));
    let var_2 = var_1.b.d.x;
    let var_3 = _wgslsmith_dot_vec3_i32(u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_1.b.d * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(338f, -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1193f - 820f), -1040f)), var_2)), vec3<i32>(0i, -34152i, _wgslsmith_div_i32(-2147483647i, -_wgslsmith_clamp_i32(49498i, var_3, -1i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-221f, 1000f)))))));
}

