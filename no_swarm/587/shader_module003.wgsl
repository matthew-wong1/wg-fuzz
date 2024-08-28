struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(-global2.a.x));
    let var_1 = Struct_3(vec4<i32>(-1i, arg_0.c, abs(firstLeadingBit(1i)), arg_0.a), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.a.x, var_0.x, arg_2.a.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, var_0.x, -132f) + vec3<f32>(arg_2.a.x, var_0.x, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(826f, -892f, -1316f) * vec3<f32>(arg_2.a.x, arg_2.a.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(3043f, _wgslsmith_f_op_f32(global2.a.x * arg_2.a.x), _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a.x, arg_2.a.x, 890f)))))));
    global0 = array<vec2<f32>, 7>();
    let var_2 = var_1;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.b.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.a.x, var_0.x)))))), -651f, !(true | select(global1.x, global1.x, true)) || false));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-989f - global2.a.x), _wgslsmith_f_op_f32(-global2.a.x), true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1114f + global2.a.x) + -858f) * -629f));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-490f - -1065f))), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + global2.a.x))))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(303f, _wgslsmith_f_op_f32(func_2(Struct_2(-22414i, Struct_1(vec2<f32>(var_0, var_0)), arg_0, -17516i), 33177u, Struct_1(vec2<f32>(-2385f, global2.a.x))))), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.c.x ^ 4294967295u, 7u)] + vec2<f32>(global2.a.x, var_1.x)), vec2<bool>(true, true))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global2.a, vec2<f32>(var_0, -818f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global2.a.x) + global2.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-734f, var_1.x)))));
    global2 = Struct_1(global2.a);
    let var_2 = arg_0;
    return u_input.d.x;
}

fn func_3() -> vec4<bool> {
    global0 = array<vec2<f32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(floor(793f))))), global2.a.x));
    global1 = !select(!select(vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(global1.x, false, false)), vec3<bool>(global1.x, all(vec4<bool>(true, true, global1.x, global1.x)), true), !vec3<bool>(all(vec3<bool>(false, true, global1.x)), all(vec2<bool>(false, global1.x)), global1.x));
    let var_1 = Struct_2(select(_wgslsmith_mult_i32(min(_wgslsmith_div_i32(1i, -9794i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, 0i), vec4<i32>(-44260i, -1i, -1i, 25366i))), _wgslsmith_mod_i32(-23747i, _wgslsmith_clamp_i32(0i, 573i, 1i))), _wgslsmith_clamp_i32(-18807i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 3578i, 39893i, 32615i) << (vec4<u32>(1u, 43969u, 1u, u_input.e.x) % vec4<u32>(32u)), ~vec4<i32>(0i, -74686i, 49268i, 0i))), !all(vec3<bool>(false, false, global1.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1350f, var_0), vec2<f32>(global2.a.x, -1000f), vec2<bool>(true, true)))))), ~(i32(-1i) * -53707i), -18021i);
    var var_2 = (vec4<i32>(-1i) * -(vec4<i32>(1i, var_1.a, var_1.c, -57405i) ^ ~vec4<i32>(0i, 15180i, -3973i, var_1.c))) << (u_input.b % vec4<u32>(32u));
    return select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, global1.x, true), vec4<bool>(true, true, true, global1.x), true), true)), vec4<bool>(true, true, all(!(!vec3<bool>(global1.x, global1.x, true))), global1.x), select(vec4<bool>(true, select(true, all(vec2<bool>(true, global1.x)), false), global1.x, var_1.b.a.x == _wgslsmith_f_op_f32(var_0 - -1000f)), select(!select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, true, true, global1.x), vec4<bool>(false, global1.x, false, global1.x)), vec4<bool>(!global1.x, true | global1.x, any(vec4<bool>(true, global1.x, global1.x, global1.x)), true), !global1.x), vec4<bool>(u_input.d.x > (48808u ^ u_input.e.x), any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, true), false)), global1.x, (global1.x && global1.x) || true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32) -> vec2<i32> {
    global0 = array<vec2<f32>, 7>();
    var var_0 = func_3().x;
    var_0 = true;
    var var_1 = -(vec4<i32>(_wgslsmith_add_i32(1i, min(arg_1.d, -6586i)), -arg_1.d, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.d, 2147483647i, -1i), ~arg_1.d), _wgslsmith_add_i32(min(0i, -8308i), ~1i)) | _wgslsmith_mod_vec4_i32(firstLeadingBit(-vec4<i32>(arg_1.d, -2147483647i, arg_1.d, 2147483647i)), abs(~vec4<i32>(arg_1.d, arg_1.d, 1i, arg_1.d))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_1.x), vec2<i32>(-50025i, var_1.x)), select(var_1.zy, var_1.zz, arg_1.c.x)), (var_1.x >> (59728u % 32u)) | (-1i >> (arg_2 % 32u)), ~(~(-26965i))), firstTrailingBit(var_1.zzy) & vec3<i32>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_1.d, -1i), vec4<i32>(2147483647i, arg_1.d, -10589i, arg_1.d)), 8450i)), var_1.x, var_1.x, -arg_1.d);
    return ~var_1.xx;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = func_3().zy;
    let var_1 = Struct_3(((_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, 35423i, arg_1.x), vec4<i32>(-28873i, 2147483647i, arg_1.x, -1i)) ^ (vec4<i32>(31614i, arg_1.x, arg_1.x, arg_1.x) ^ vec4<i32>(arg_1.x, -1i, -19820i, 0i))) & min(abs(vec4<i32>(-1i, arg_1.x, 20288i, arg_1.x)), vec4<i32>(arg_1.x, -2147483647i, arg_1.x, -16096i))) & (vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2521i, 2147483647i), vec2<i32>(arg_1.x, arg_1.x)), i32(-1i) * -9909i, firstTrailingBit(-1i), _wgslsmith_add_i32(arg_1.x, arg_1.x)) >> (u_input.b % vec4<u32>(32u))), Struct_2(-(~arg_1.x), Struct_1(vec2<f32>(global2.a.x, global2.a.x)), 1i, arg_1.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(320f)), _wgslsmith_f_op_f32(max(-1000f, 730f)), true)), global2.a.x, _wgslsmith_f_op_f32(-global2.a.x)), vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(trunc(global2.a.x)))), select(vec3<bool>(any(vec3<bool>(false, true, false)), !global1.x, var_0.x), vec3<bool>(var_0.x | false, var_0.x, true), arg_1.x >= min(arg_1.x, arg_1.x)))));
    let var_2 = _wgslsmith_add_i32(firstLeadingBit(~var_1.a.x | 2147483647i), reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-11920i, arg_1.x), arg_1), firstLeadingBit(arg_1))));
    let var_3 = _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-606f, 734f, -403f, var_1.b.b.a.x))), Struct_4(var_0.x, true, select(vec4<bool>(global1.x, var_0.x, global1.x, global1.x), vec4<bool>(false, false, false, true), vec4<bool>(global1.x, global1.x, false, var_0.x)), -19853i), 41583u).x, var_1.b.a));
    global1 = vec3<bool>(false, !var_0.x, global1.x);
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(~(_wgslsmith_add_i32(-1i, 3457i) >> (_wgslsmith_mod_u32(u_input.a, 9821u) % 32u))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(round(global2.a.x)), -1474f), vec4<f32>(-698f, 789f, _wgslsmith_f_op_f32(global2.a.x * global2.a.x), -908f), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), func_3()))), Struct_4(true, all(!vec4<bool>(global1.x, global1.x, global1.x, true)), !func_3(), _wgslsmith_mult_i32(-23039i, 304i)), ~(~abs(0u))));
    let var_1 = Struct_3(~vec4<i32>(-1i, firstLeadingBit(firstLeadingBit(1i)), firstLeadingBit(_wgslsmith_mult_i32(-1137i, -1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(13201i, 2147483647i, 0i), vec3<i32>(1i, 1i, 1i))), Struct_2(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-9261i, 2147483647i, 1i), vec3<i32>(-772i, 20182i, 0i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(2025f - var_0.a.x))), -327i, -45039i), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(382f - 1180f))), var_0.a.x)));
    let var_2 = global1.xx;
    global1 = !(!func_3().yyy);
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.b.x, 7u)] - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1357f, _wgslsmith_div_f32(-1729f, global2.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-311f, 234f) * vec2<f32>(var_1.c.x, var_1.b.b.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-603f, 308f) - global0[_wgslsmith_index_u32(u_input.a, 7u)]), global1.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.c);
    let var_4 = min(1u << (_wgslsmith_clamp_u32(16852u, u_input.c.x, firstTrailingBit(1u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.e.x, 62620u), vec2<u32>(18792u, 1u)), u_input.b.wz), 1u)) << (u_input.e.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(0u, min(vec4<u32>(2685u, 37444u, countOneBits(abs(21812u)), ~firstLeadingBit(59201u)), u_input.b), abs(_wgslsmith_dot_vec3_u32(u_input.b.xyz, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(33036u, var_4, 4294967295u), u_input.e)))));
}

