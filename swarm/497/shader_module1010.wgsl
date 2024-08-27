struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~(-24429i);
    var var_1 = countOneBits(~firstLeadingBit(vec4<u32>(0u, _wgslsmith_clamp_u32(0u, u_input.d, u_input.d), u_input.d, ~u_input.d)));
    return vec3<bool>(all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), true, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.x, _wgslsmith_clamp_u32(42288u, var_1.x, 23615u)), countOneBits(var_1.x)) != ((var_1.x << (_wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(u_input.a.x, 1u)) % 32u)) >> (6974u % 32u)));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_2(Struct_1(-307f, all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, false, true))), _wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(618f, 661f) + 1f))), vec4<u32>(firstTrailingBit(1u), _wgslsmith_mult_u32(82641u, u_input.d), abs(u_input.d), min(5688u, u_input.d)), select(!(!func_3()), !func_3(), true));
    return -958f;
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, 1317f, -1000f) - vec3<f32>(1609f, 732f, 1318f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(799f, 186f, -665f) - vec3<f32>(-1992f, 326f, 540f))), !vec3<bool>(arg_0.x, arg_0.x, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-130f)), 591f, _wgslsmith_f_op_f32(func_2(arg_1)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1219f, 1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz - var_0.zy)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1010f), _wgslsmith_f_op_f32(-268f + var_0.x)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-631f, var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x))))));
    let var_2 = vec2<u32>(2332u, 4294967295u);
    var var_3 = 0u;
    let var_4 = !select(select(arg_0.yy, arg_0.zx, true), func_3().yz, arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1042f), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1023f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, false), 0i))))));
    var var_1 = (vec2<u32>(_wgslsmith_div_u32(u_input.d, 10743u >> (u_input.d % 32u)), ~(~u_input.d)) & u_input.a.xy) | vec2<u32>(62275u, ~(~(~1u)));
    let var_2 = select(!vec2<bool>(var_0.b, u_input.a.x == ~60228u), vec2<bool>(2147483647i < _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.c, 2872i), u_input.b)), var_0.b), !(!vec2<bool>(true, var_0.b)));
    let var_3 = firstTrailingBit(u_input.b.x);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(685f, -695f, true)) * var_0.a), !(-40431i < var_3), _wgslsmith_f_op_f32(f32(-1f) * -1127f)), vec4<u32>(firstTrailingBit(u_input.d), var_1.x, ~u_input.d, _wgslsmith_sub_u32(2061u, _wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.xy))), func_3());
    var var_5 = Struct_3(var_4, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -u_input.b.x, var_3), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(46959i, 10433i, var_3), vec3<i32>(-2147483647i, 508i, -31919i)), u_input.b << (vec3<u32>(1u, u_input.d, var_4.b.x) % vec3<u32>(32u)), vec3<i32>(0i, var_3, 25461i))), Struct_1(var_0.a, any(select(select(vec4<bool>(true, var_2.x, var_4.a.b, var_2.x), vec4<bool>(true, true, false, var_4.a.b), var_0.b), select(vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(true, var_2.x, var_0.b, false)), any(var_4.c))), var_0.c));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_5.a.a.a, -457f))), vec2<f32>(var_5.c.c, 290f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.a, var_4.a.a) - vec2<f32>(_wgslsmith_f_op_f32(var_5.c.c * -1749f), _wgslsmith_f_op_f32(-1221f + -1000f))), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(var_5.a.b.zz, vec2<u32>(69209u, 1u)));
}

