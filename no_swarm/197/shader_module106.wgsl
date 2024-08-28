struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 7071u), vec2<u32>(6485u, 75311u), vec2<u32>(46215u, 102991u), vec2<u32>(12770u, 16778u), vec2<u32>(48274u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(124651u, 29711u), vec2<u32>(22664u, 4294967295u), vec2<u32>(47213u, 1u), vec2<u32>(1u, 41694u), vec2<u32>(8023u, 36356u), vec2<u32>(60812u, 4294967295u), vec2<u32>(1u, 31572u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 25902u), vec2<u32>(4294967295u, 1u));

var<private> global1: vec4<f32> = vec4<f32>(603f, 1015f, 246f, -324f);

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = select(u_input.b.zzx & _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, u_input.c)), ~abs(u_input.b.wzx)), u_input.b.wyy, vec3<bool>(any(vec4<bool>(global3.x <= global3.x, true, true, false)), true, select(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), true)));
    var var_1 = Struct_2(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true))), u_input.b.wyy, firstTrailingBit(vec2<i32>(~max(6407i, global3.x), global3.x)), vec2<bool>(true, true), reverseBits(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(23115i, global3.x, -1i, 21479i), vec4<i32>(983i, global3.x, global3.x, -1i), vec4<bool>(true, false, false, true)), max(vec4<i32>(global3.x, 2147483647i, 10730i, global3.x), vec4<i32>(35060i, -2147483647i, 3528i, -172i)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1573f, 1935f)), global1.x);
    let var_3 = global1.xxy;
    let var_4 = Struct_3(Struct_1(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(min(var_3.x, var_3.x))))), firstLeadingBit(var_1.b.x), var_1.c.x, select(var_1.e, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.c.x, global3.x, global3.x), var_1.e), vec4<bool>(true, var_1.a.x, select(var_1.a.x, var_1.d.x, true), all(vec2<bool>(false, var_1.d.x))))));
    return vec4<bool>(false, any(vec3<bool>(false, true, var_1.d.x)), true, (true && ((1i > var_4.a.e.x) & false)) == !all(select(vec3<bool>(true, false, var_1.a.x), vec3<bool>(var_1.a.x, var_1.d.x, true), vec3<bool>(true, var_1.d.x, var_1.a.x))));
}

fn func_2(arg_0: i32) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, -226f, global1.x, 1095f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 107f, global1.x), vec4<f32>(global1.x, -221f, -248f, global1.x)), func_3()))), vec4<f32>(global1.x, 1f, _wgslsmith_div_f32(-387f, _wgslsmith_div_f32(1019f, -510f)), -1521f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1551f, 376f, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -561f, global1.x, global1.x))))));
    var var_0 = true & (!any(vec4<bool>(true, true, true, true)) && (global3.x <= -_wgslsmith_div_i32(77904i, 2147483647i)));
    var var_1 = Struct_3(Struct_1(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -287f), 2222f))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(35206u, 5103u, 4294967295u)), u_input.b.yyy), 1i, vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, -2147483647i, global3.x, global3.x), vec4<i32>(arg_0, 0i, global3.x, 2147483647i), vec4<bool>(false, true, true, false)), ~vec4<i32>(global3.x, -6954i, arg_0, arg_0)), arg_0, _wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, 1i, arg_0), arg_0), _wgslsmith_mult_i32(40123i, -arg_0))));
    let var_2 = 35356i | (39014i >> (u_input.b.x % 32u));
    var var_3 = Struct_3(var_1.a);
    return global1.x;
}

fn func_4(arg_0: u32, arg_1: f32) -> vec3<f32> {
    let var_0 = !all(select(func_3().xz, vec2<bool>(true, true), true));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(select(-701f, _wgslsmith_f_op_f32(round(285f)), false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + 317f))), arg_1, !(393f <= global1.x))), ~countOneBits(75119u & arg_0), _wgslsmith_add_i32(global3.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 31976i, global3.x, global3.x), vec4<i32>(global3.x, 1i, 26152i, 2147483647i)), -24049i)), reverseBits(vec4<i32>(global3.x, global3.x >> (u_input.b.x % 32u), select(-1i, global3.x, false), -29450i))));
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b));
    return global1.xxy;
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = vec2<f32>(-188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1152f))) + global1.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(~(~arg_0.a.c) >> (arg_0.a.c % 32u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(global3.x & 11852i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + arg_0.a.b) + _wgslsmith_f_op_f32(global1.x - -581f)))))));
    let var_2 = Struct_2(vec2<bool>(true, true), vec3<u32>(arg_0.a.c, 13137u, 1u), vec2<i32>(_wgslsmith_mult_i32(arg_0.a.d, select(84687i, global3.x, false)), _wgslsmith_mod_i32(-7323i, ~global3.x)) ^ arg_0.a.e.xw, !vec2<bool>(any(vec3<bool>(false, false, true)), !any(vec2<bool>(false, false))), arg_0.a.e);
    let var_3 = u_input.b.xz;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1352f + _wgslsmith_f_op_f32(abs(var_1.x)))))), -296f, 1782f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_1.x)) + 1090f))));
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(global1.x, 867f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))), global1.x, u_input.c, -(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 2147483647i), vec2<i32>(global3.x, -28591i)) << ((u_input.c | 6785u) % 32u)), func_1(Struct_3(Struct_1(global1.x, 1569f, u_input.c, -1i, vec4<i32>(global3.x, global3.x, -2147483647i, global3.x))))));
    let var_1 = Struct_1(400f, _wgslsmith_f_op_f32(ceil(var_0.a.a)), 6515u, var_0.a.d, ~var_0.a.e);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - _wgslsmith_div_f32(var_0.a.b, global1.x)))), -2614f, var_0.a.a, -557f);
    var_0 = Struct_3(var_0.a);
    var var_2 = u_input.b;
    let var_3 = countOneBits(vec2<u32>(~(var_2.x & var_2.x), 4294967295u) << (_wgslsmith_clamp_vec2_u32(var_2.yy, var_2.wx, u_input.b.yx) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(27400i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(17894u, -1000f)).x), _wgslsmith_div_f32(-342f, -714f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f))))) - global1.xzx), global1.x);
}

