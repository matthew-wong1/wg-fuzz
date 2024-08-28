struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_4;

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global1.e.e.x, global0.x, global0.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 529f, 344f, 304f))))), -4967i & ~u_input.e.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 31071i, u_input.a.x) & (u_input.e.x & u_input.a.x), 0i, -49087i, global1.e.b.x), select(vec4<i32>(0i, ~global1.e.b.x, -u_input.e.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c.x, -5238i, global1.e.b.x, global1.e.b.x))), u_input.a, arg_1.x), vec4<i32>(reverseBits(min(16427i, 12591i)), -2147483647i, u_input.a.x << (0u % 32u), 1i)), _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(ceil(global1.e.e))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-673f, 1000f, arg_0.x))), _wgslsmith_f_op_f32(1152f * _wgslsmith_f_op_f32(sign(global0.x))))), global0.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), var_0.a)), countOneBits(var_0.b), vec4<i32>(u_input.c.x, abs(_wgslsmith_mod_i32(0i, firstTrailingBit(-45302i))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-38129i, var_0.c.x) | global1.e.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global1.e.b.x), vec2<i32>(u_input.e.x, var_0.b), vec2<i32>(var_0.b, global1.e.b.x)), u_input.e)), _wgslsmith_mod_i32(select(-2147483647i, u_input.a.x, arg_0.x) << ((global1.e.d >> (global1.b.x % 32u)) % 32u), (global1.e.b.x | -2147483647i) << (1u % 32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.e.e))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, var_0.a.x), global1.e.e.xx, vec2<bool>(arg_1.x, true))))))))));
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(628f)), _wgslsmith_f_op_f32(trunc(799f)))), 909f, _wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(max(var_0.e.x, 733f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.e.e.x, global0.x), -1008f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -909f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * global0.x) + _wgslsmith_f_op_f32(global0.x - 1206f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1078f + var_0.a.x), _wgslsmith_f_op_f32(sign(global1.c.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-804f, var_0.d.x)))))));
    global2 = u_input.a.x ^ _wgslsmith_dot_vec3_i32(u_input.a.zzy, firstLeadingBit(var_0.c.zxy));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-205f, global0.x), global1.d)))))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = global1.d;
    let var_1 = !global1.a.x;
    global2 = -(~0i);
    var var_2 = Struct_4(!vec3<bool>(arg_0, global1.a.x, !all(vec4<bool>(var_1, global1.a.x, var_1, arg_0))), ~global1.e.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.e.e.x), 1f, _wgslsmith_f_op_f32(sign(global1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.zyy))), !any(vec4<bool>(global1.a.x, var_1, global1.a.x, global1.a.x))))), _wgslsmith_f_op_f32(-global1.c.x), global1.e);
    return Struct_1(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<bool>(var_1, global1.a.x, arg_0), vec2<bool>(true, true))))), global0.x), arg_1.x, vec4<i32>(41593i, global1.e.b.x >> (global1.e.c.x % 32u), arg_1.x, _wgslsmith_mod_i32(~10536i, -5021i)), _wgslsmith_f_op_vec3_f32(exp2(global0.xxw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.c.zz)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1749f, global1.d)), _wgslsmith_f_op_vec2_f32(select(global0.xw, vec2<f32>(global1.d, 805f), vec2<bool>(arg_0, global1.a.x))))), _wgslsmith_f_op_vec2_f32(round(var_2.c.zx)))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(u_input.b);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(180f, 336f, 579f, 1000f), vec4<f32>(global0.x, -2146f, global1.d, global1.e.e.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-543f, global0.x, -1082f, global0.x), vec4<f32>(global0.x, global0.x, -882f, 913f), global1.a.x)))), vec4<bool>(all(global1.a.yy), global0.x < -291f, global1.a.x, 31214i < global1.e.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 532f, -783f, 390f) * vec4<f32>(global1.c.x, global0.x, global1.c.x, -436f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 577f, global0.x, -900f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global1.d, 521f, 517f) - vec4<f32>(751f, global0.x, global1.e.e.x, global1.c.x))))));
    global2 = abs(u_input.a.x);
    var var_1 = func_2(global1.e.b.x > 0i, u_input.a.ww);
    global1 = Struct_4(select(vec3<bool>(all(select(vec4<bool>(global1.a.x, true, global1.a.x, true), vec4<bool>(global1.a.x, true, false, true), vec4<bool>(false, true, false, global1.a.x))), global1.a.x, global1.a.x), select(select(global1.a, vec3<bool>(false, global1.a.x, true), global1.a), !select(global1.a, global1.a, true), any(select(vec3<bool>(true, global1.a.x, global1.a.x), global1.a, vec3<bool>(global1.a.x, false, true)))), select(vec3<bool>(all(vec4<bool>(false, false, true, global1.a.x)), false, all(vec4<bool>(global1.a.x, false, false, global1.a.x))), global1.a, !any(global1.a.xx))), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.b.x, 1u), vec2<u32>(var_0.a.x, 4294967295u) >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(global1.b.x, global1.e.a.x, 1u, u_input.b.x)), _wgslsmith_div_u32(10246u, u_input.d)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, global1.e.a.x), arg_0.a.zy))), vec3<f32>(605f, var_1.e.x, global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x))), Struct_3(vec2<u32>(20426u, _wgslsmith_mod_u32(var_0.a.x, var_0.a.x) ^ var_0.a.x), -vec3<i32>(-39903i, global1.e.b.x, global1.e.b.x), var_0.a, ~(~(~var_0.a.x)), _wgslsmith_f_op_vec3_f32(global1.c - global1.e.e)));
    return _wgslsmith_f_op_f32(-global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1739f, global0.x, global0.x, 769f), vec4<f32>(global0.x, global0.x, -915f, 633f), vec4<bool>(global1.a.x, true, true, global1.a.x)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.e.e.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(func_1(Struct_2(global1.e.c))), 141f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 397f, -1555f, -695f) * vec4<f32>(-1227f, global0.x, 1015f, global1.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-293f, -547f, global0.x, global0.x) + vec4<f32>(global1.e.e.x, global1.e.e.x, global1.c.x, global0.x)))))));
    global1 = Struct_4(select(!(!select(vec3<bool>(global1.a.x, false, false), global1.a, vec3<bool>(false, global1.a.x, true))), vec3<bool>(true, any(vec2<bool>(true, false)) == false, true), global1.a), vec2<u32>(~_wgslsmith_mod_u32(0u, global1.b.x), global1.b.x), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - global0.x) + _wgslsmith_f_op_f32(-950f + global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global1.e.e.x), !global1.a.x)))), global1.e.e.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global1.a.x))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(func_2(global1.a.x, -global1.e.b.xx).a.x, -1804f)), Struct_3(u_input.b.zz, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, global1.e.b.x, 7639i), ~vec3<i32>(-2147483647i, 18522i, -11536i)), vec4<u32>(countOneBits(u_input.d), 0u, global1.b.x, global1.b.x), _wgslsmith_dot_vec2_u32(global1.b, abs(vec2<u32>(4294967295u, u_input.b.x))), _wgslsmith_f_op_vec3_f32(global0.yzw * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.zyx, vec3<f32>(-726f, 1895f, global0.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global1.e.e.x, global0.x), global0.zyy, true))))));
    var var_0 = u_input.a;
    var var_1 = true;
    let var_2 = !select(vec2<bool>(all(!vec4<bool>(true, false, global1.a.x, global1.a.x)), true), !global1.a.xz, true);
    let x = u_input.a;
    s_output = StorageBuffer(-76637i);
}

