struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(499f, 1220f), vec2<f32>(-318f, 510f), vec2<f32>(1000f, -860f), vec2<f32>(-525f, 808f), vec2<f32>(348f, 291f), vec2<f32>(207f, 861f), vec2<f32>(-2295f, -1057f), vec2<f32>(1000f, 217f), vec2<f32>(294f, 915f), vec2<f32>(145f, 272f), vec2<f32>(165f, 206f), vec2<f32>(1430f, -118f), vec2<f32>(-1313f, 406f), vec2<f32>(-1694f, 1041f), vec2<f32>(200f, 2043f), vec2<f32>(-279f, 245f), vec2<f32>(243f, -783f), vec2<f32>(393f, -731f), vec2<f32>(411f, 234f), vec2<f32>(307f, -716f), vec2<f32>(-1039f, -1264f), vec2<f32>(-608f, 654f), vec2<f32>(-214f, 930f), vec2<f32>(-599f, -1779f), vec2<f32>(768f, -1584f), vec2<f32>(939f, 1000f));

var<private> global1: vec3<f32> = vec3<f32>(-804f, -391f, -150f);

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4) -> i32 {
    let var_0 = 4294967295u >> (arg_0.a.b.d.x % 32u);
    return select(min(_wgslsmith_mult_i32(0i, min(33728i, -1i)) >> (firstLeadingBit(_wgslsmith_sub_u32(global2.d.d.x, var_0)) % 32u), i32(-1i) * -u_input.a), _wgslsmith_add_i32(~arg_0.a.b.a.x & _wgslsmith_mod_i32(30618i, global2.d.e.x & global2.e.x), select(~(~arg_0.a.d.e.x), 68288i, all(!global2.b.c))), arg_0.c.x & arg_0.c.x);
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 26>();
    global3 = array<vec4<i32>, 11>();
    var var_0 = Struct_3(global2.a.xzx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 333f, 1495f) + vec4<f32>(global1.x, global1.x, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1376f, 2370f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -480f, 713f, global1.x) - vec4<f32>(global1.x, -923f, -479f, global1.x)), true)))));
    global2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u ^ (firstLeadingBit(0u) | _wgslsmith_div_u32(global2.d.b.x, global2.b.d.x)), 0u), 11u)], Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(global2.a.yww, vec3<i32>(-1i, -1i, var_0.a.x)), reverseBits(func_3(Struct_4(Struct_2(vec4<i32>(-22176i, 2147483647i, -48088i, 0i), Struct_1(global2.a, global2.d.b, global2.d.c, vec2<u32>(global2.b.b.x, 4294967295u), global3[_wgslsmith_index_u32(0u, 11u)]), global2.b.c.x, Struct_1(global3[_wgslsmith_index_u32(global2.d.d.x, 11u)], vec4<u32>(global2.d.b.x, global2.d.d.x, global2.b.b.x, 18306u), global2.d.c, vec2<u32>(global2.d.b.x, global2.b.b.x), global2.a), vec2<i32>(0i, -4633i)), vec4<bool>(global2.d.c.x, true, global2.b.c.x, true), vec4<bool>(global2.c, global2.b.c.x, global2.b.c.x, global2.c), -54144i))), u_input.a, 0i | (global2.d.a.x << (0u % 32u))), vec4<u32>(abs(global2.b.b.x), reverseBits(4294967295u), ~global2.b.d.x, global2.d.b.x) | vec4<u32>(global2.b.b.x, min(global2.d.b.x, global2.b.d.x), 4294967295u | global2.d.b.x, ~global2.d.d.x), global2.b.c, abs(vec2<u32>(~0u, global2.d.b.x)), vec4<i32>(u_input.a, ~_wgslsmith_mult_i32(u_input.a, -24422i), _wgslsmith_mult_i32(global2.b.a.x, 27508i) & 1i, _wgslsmith_add_i32(u_input.a >> (global2.d.b.x % 32u), -1i))), true, Struct_1(global3[_wgslsmith_index_u32(0u, 11u)], firstTrailingBit(abs(firstTrailingBit(vec4<u32>(43981u, 55781u, global2.d.b.x, global2.d.b.x)))), !select(!global2.b.c, !global2.d.c, select(vec2<bool>(global2.d.c.x, global2.b.c.x), global2.d.c, vec2<bool>(false, false))), global2.d.d, abs(_wgslsmith_sub_vec4_i32(global3[_wgslsmith_index_u32(global2.b.d.x, 11u)] ^ vec4<i32>(var_0.a.x, 41557i, global2.e.x, 15069i), vec4<i32>(var_0.a.x, 18379i, var_0.a.x, -8180i) | vec4<i32>(37487i, -57686i, global2.b.a.x, u_input.a)))), global2.d.e.wz);
    let var_1 = -880f;
    return Struct_1(~global3[_wgslsmith_index_u32(5572u, 11u)], vec4<u32>(global2.d.d.x, (0u | global2.d.b.x) << ((global2.b.d.x | _wgslsmith_sub_u32(83861u, global2.b.d.x)) % 32u), ~global2.b.b.x, global2.d.b.x), !global2.b.c, vec2<u32>(global2.b.b.x, ~global2.b.b.x), ~vec4<i32>(~global2.a.x, ~(-1i), ~(-2147483647i), -47130i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = vec3<bool>(true, true, global2.d.c.x);
    var var_2 = func_2();
    global3 = array<vec4<i32>, 11>();
    let var_3 = -681f;
    return !var_1.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(787f, 1000f, -1000f), vec3<f32>(global1.x, global1.x, -588f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(4294967295u, 26u)], vec2<f32>(-1206f, global1.x))) + global0[_wgslsmith_index_u32(~39699u, 26u)]) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1718f, 1028f), global1.yz))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-166f, _wgslsmith_div_f32(755f, global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -496f) - _wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1127f) * vec3<f32>(global1.x, global1.x, -876f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, global1.x, global1.x))))))));
    var var_1 = Struct_5(func_2(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_f32(select(895f, global1.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f * -512f) - _wgslsmith_f_op_f32(global1.x * -925f)))), Struct_3(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.b.e.x, 17799i, global2.e.x), u_input.a >> (global2.d.d.x % 32u)), global2.d.e.x, firstLeadingBit(~global2.d.e.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1108f, global1.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, global1.x, global1.x, 1841f) + vec4<f32>(-859f, global1.x, 1858f, global1.x))))));
    let var_2 = Struct_1(vec4<i32>(global2.e.x, countOneBits(~global2.b.e.x), max(u_input.a, global2.d.e.x), global2.e.x), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(25644u, global2.b.d.x)), global2.b.d), ~0u, var_1.a.d.x, var_1.a.b.x), !vec2<bool>(true, select(global2.d.c.x, true, true) & true), var_1.a.d, min(vec4<i32>(max(_wgslsmith_mod_i32(u_input.a, global2.b.e.x), min(u_input.a, global2.d.a.x)), -2147483647i, ~countOneBits(global2.a.x), -11733i), -func_2().e));
    var var_3 = _wgslsmith_f_op_f32(-var_1.b.x);
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.b.x, var_1.b.x, -683f), var_1.b, true))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))))), vec3<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, -1436f)), var_1.d.b.x, _wgslsmith_f_op_f32(round(2034f))));
    let var_4 = i32(-1i) * -2147483647i;
    var var_5 = Struct_5(func_2(), _wgslsmith_f_op_vec3_f32(var_1.d.b.zwy + _wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.b))))), _wgslsmith_f_op_f32(f32(-1f) * -750f), Struct_3(vec3<i32>(max(1i, var_1.a.a.x), -4839i, -41145i), vec4<f32>(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(abs(454f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.x, 1485f)), _wgslsmith_f_op_f32(f32(-1f) * -1520f))), _wgslsmith_f_op_f32(var_1.c - -303f), var_1.b.x)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-799f, -949f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) + 1000f))) * _wgslsmith_f_op_f32(var_1.b.x + global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.a.zz);
}

