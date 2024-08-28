struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-19610i, 0i, i32(-2147483648), -51229i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(abs(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.a.x)) & vec4<u32>(1u, abs(u_input.b.x), 47180u, u_input.b.x)), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.a.x, u_input.b.x ^ u_input.a.x), 58141u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(min(18084u, 29656u), u_input.b.x)))), 1u)];
    var var_1 = Struct_4(~u_input.d, select(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, -9055i), _wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(14566u, 1u)])), -(~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))), -2147483647i, (u_input.c > (u_input.a.x << (u_input.a.x % 32u))) || true));
    var_1 = Struct_4(firstTrailingBit(min(reverseBits(-vec3<i32>(-15043i, 2147483647i, u_input.d.x)), _wgslsmith_div_vec3_i32(-u_input.d, -vec3<i32>(var_1.a.x, var_0.x, 2147483647i)))), -11417i);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -120f) * vec2<f32>(961f, arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(trunc(1611f))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)))))));
    let var_3 = vec4<f32>(-870f, -937f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(trunc(889f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1578f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-219f + arg_0), -910f)))), -1000f);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(1527u, u_input.b.x), _wgslsmith_sub_u32(1u, 1u)), abs(u_input.b.x)), select(vec2<u32>(~1u ^ u_input.a.x, 36900u), ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.zy)), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) != var_2.x)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(select(7922u, select(_wgslsmith_mod_u32(u_input.b.x, 17793u), ~u_input.a.x, true), false), select(!select(vec2<bool>(false, true), vec2<bool>(arg_1, false), true), !select(vec2<bool>(true, false), vec2<bool>(false, arg_1), arg_1), !(arg_0 >= arg_0)), func_3(460f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(992f, 790f, -1225f))) - vec3<f32>(171f, -848f, -102f)), vec3<f32>(_wgslsmith_f_op_f32(1000f - -550f), _wgslsmith_f_op_f32(314f - 1390f), -638f))));
    global0 = array<Struct_4, 18>();
    global1 = array<vec4<i32>, 1>();
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    return var_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<bool>(false, true && !(!(544f <= arg_1)), select(any(vec2<bool>(true, true)), true, !(!(11473i > arg_0.a.x))), true);
    let var_1 = var_0.wzx;
    var_0 = vec4<bool>(arg_0.a.x <= ~(-(arg_0.a.x & -5058i)), _wgslsmith_mult_i32(~33966i << ((4294967295u | u_input.c) % 32u), u_input.d.x) != -(~arg_0.a.x), false, var_1.x);
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(142108u, 1u)), 17719u), vec2<bool>(any(!(!vec2<bool>(var_2, var_0.x))), true), ~u_input.b.zx, vec3<f32>(411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * _wgslsmith_f_op_f32(f32(-1f) * -228f))), arg_1));
    return func_2(select(abs(_wgslsmith_dot_vec2_i32(select(arg_0.a.zx, vec2<i32>(u_input.d.x, -22083i), var_3.b), u_input.d.zz & vec2<i32>(arg_0.a.x, arg_0.a.x))), _wgslsmith_sub_i32(1i, arg_0.a.x), var_1.x), !(!var_3.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.a;
    var var_1 = var_0.d.yz;
    var var_2 = _wgslsmith_add_i32(max(~(-arg_0.a.x), _wgslsmith_div_i32(~arg_0.b, arg_0.b) & (min(-1i, arg_0.b) & ~arg_0.a.x)), firstTrailingBit(-_wgslsmith_mod_i32(-u_input.d.x, -34891i)));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.d.x, -121f, 365f, var_1.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.x, 681f, var_0.d.x, arg_3.a.d.x), vec4<f32>(-1000f, 953f, 144f, arg_3.a.d.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(172f)), 1168f, -206f, _wgslsmith_f_op_f32(f32(-1f) * -724f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, -270f, var_0.d.x, var_1.x), vec4<f32>(var_1.x, var_0.d.x, -148f, -1000f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.d.x, arg_3.a.d.x, var_0.d.x), vec4<f32>(961f, -825f, -709f, var_0.d.x)) * vec4<f32>(var_0.d.x, arg_3.a.d.x, var_0.d.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-755f, var_0.d.x, 1000f, -165f))))), var_0.b.x));
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(-27673i, -(~u_input.d.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x)) << (abs(vec4<u32>(16420u, arg_2, 4294967295u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(10574u, 1u)], vec4<i32>(-53451i, -18723i, -1195i, arg_0.a.x)) >> (vec4<u32>(var_0.a, 53533u, arg_2, 4294967295u) % vec4<u32>(32u)))), u_input.d);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, u_input.c ^ 12954u, var_0.c.x & ~1u), u_input.b) << (~var_0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 1>();
    let var_0 = any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true)) && (true && !all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    let var_1 = false;
    var var_2 = abs(-vec3<i32>(-reverseBits(2147483647i), -51228i, ~(-u_input.d.x)));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32((u_input.a ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.c)) >> (u_input.b % vec3<u32>(32u)), u_input.a), u_input.a.x), 1u);
    let var_4 = func_4(global0[_wgslsmith_index_u32(76353u, 18u)], select(var_0, select(false, var_0, var_0), true), 1u, Struct_2(func_1(Struct_4(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), 0i), -109f))) & _wgslsmith_add_u32(38031u, firstLeadingBit(42715u));
    var_3 = ~func_4(global0[_wgslsmith_index_u32(var_4, 18u)], true, var_4, Struct_2(Struct_1(_wgslsmith_div_u32(29499u, var_4), select(vec2<bool>(var_0, false), vec2<bool>(false, true), vec2<bool>(true, var_1)), firstTrailingBit(u_input.b.yy), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1091f, -1000f, -873f), vec3<f32>(851f, -1000f, 148f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, max(u_input.a, firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(22403u, var_4, var_4), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x), countOneBits(u_input.b)))), 20973i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-343f, -2129f, -549f, -938f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-265f, 675f, 1338f, -1685f))), _wgslsmith_div_vec4_f32(vec4<f32>(-117f, 1180f, 672f, 623f), vec4<f32>(-163f, -503f, -678f, 1311f))))))));
}

