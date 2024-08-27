struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 15069u, 4294967295u), vec3<u32>(1u, 117382u, 1u), vec3<u32>(4294967295u, 49457u, 0u), vec3<u32>(4294967295u, 58709u, 16952u), vec3<u32>(1u, 11000u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec4<bool> {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = Struct_2(vec2<i32>(-2147483647i, ~u_input.d.x));
    var var_2 = Struct_3(vec3<i32>(var_1.a.x, -2147483647i, u_input.b.x | ~(i32(-1i) * -63206i)), ~(~u_input.b.yxz), u_input.c.xy, Struct_2(u_input.b.yy | ~abs(vec2<i32>(var_1.a.x, u_input.d.x))), -1896f);
    return !(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))));
}

fn func_2() -> f32 {
    global0 = array<vec3<u32>, 5>();
    let var_0 = vec2<bool>(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(0i, u_input.d.x)) != 0i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1862f - -347f) + _wgslsmith_f_op_f32(ceil(-931f))), _wgslsmith_f_op_f32(-1f))) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f) - -412f))));
    global0 = array<vec3<u32>, 5>();
    let var_1 = select(vec4<bool>(var_0.x, var_0.x, var_0.x || var_0.x, any(!vec2<bool>(true, var_0.x))), select(vec4<bool>(!(u_input.d.x <= u_input.b.x), false, var_0.x, true), !func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-151f, 337f), vec2<f32>(140f, 1598f))), _wgslsmith_f_op_f32(1000f - -1295f)), true), vec4<bool>(var_0.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) - _wgslsmith_f_op_f32(step(-663f, -750f))) >= -161f, var_0.x));
    var var_2 = u_input.b;
    return 1000f;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = arg_0.zz;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -928f), 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(391f + 357f), -139f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-626f, 1f)), 491f), _wgslsmith_f_op_f32(f32(-1f) * -517f))), -517f);
    var var_2 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1702f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)));
    let var_4 = any(vec3<bool>(any(vec2<bool>(var_0.x, arg_0.x)) && true, !func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2243f, var_1.x), vec2<f32>(176f, 1880f))), _wgslsmith_f_op_f32(min(var_1.x, var_1.x))).x, countOneBits(11825i | u_input.d.x) > (u_input.b.x ^ -7472i)));
    return Struct_3(_wgslsmith_div_vec3_i32(u_input.d, _wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.b.zzw, vec3<i32>(-2147483647i, 2147483647i, 1i)), vec3<i32>(u_input.b.x >> (u_input.a % 32u), 0i, abs(u_input.b.x)))), -(~u_input.d | vec3<i32>(u_input.d.x, -u_input.d.x, u_input.b.x)), _wgslsmith_add_vec2_u32(reverseBits(~firstTrailingBit(u_input.c.yz)), select(~vec2<u32>(1u, 6532u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(35212u, 0u)), arg_0.x)), Struct_2(_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.d.x, 46822i), -u_input.d.zx), vec2<i32>(-14033i, _wgslsmith_mod_i32(-9878i, u_input.d.x)))), 1543f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 5>();
    var var_0 = func_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
    var var_1 = func_1(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(true, false, false, true))))).d;
    var var_2 = ~vec3<i32>(-17522i, firstLeadingBit(_wgslsmith_mod_i32(var_1.a.x << (4294967295u % 32u), -var_0.b.x)), _wgslsmith_mod_i32(0i, -36588i));
    var var_3 = ~(-var_2.x);
    var_3 = -28429i;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_i32(48087i, u_input.b.x), _wgslsmith_clamp_i32(7754i, select(3757i, -u_input.b.x, any(vec4<bool>(true, false, false, false))), u_input.d.x)), u_input.a, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~(~u_input.a), 8061u, u_input.c.x), ~_wgslsmith_add_u32(var_0.c.x, 1u) << (_wgslsmith_div_u32(28120u, min(0u, u_input.a)) % 32u)), 2147483647i);
}

