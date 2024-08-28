struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<bool>(false, false, true), true, vec4<bool>(true, false, true, false), vec3<f32>(-901f, 1328f, 881f)), Struct_2(vec3<bool>(false, true, true), false, vec4<bool>(true, false, false, true), vec3<f32>(241f, 845f, 303f)), Struct_2(vec3<bool>(false, true, true), false, vec4<bool>(false, false, true, false), vec3<f32>(-468f, 555f, 325f)), Struct_2(vec3<bool>(true, true, true), true, vec4<bool>(true, false, false, false), vec3<f32>(-502f, -164f, 247f)), Struct_2(vec3<bool>(false, false, true), false, vec4<bool>(false, false, true, true), vec3<f32>(1085f, 185f, -208f)), Struct_2(vec3<bool>(false, false, false), true, vec4<bool>(false, true, false, false), vec3<f32>(153f, 1049f, -324f)), Struct_2(vec3<bool>(false, false, true), false, vec4<bool>(true, false, false, true), vec3<f32>(-885f, 761f, 996f)), Struct_2(vec3<bool>(false, true, false), true, vec4<bool>(false, false, true, true), vec3<f32>(-599f, 1000f, -1261f)), Struct_2(vec3<bool>(true, true, false), true, vec4<bool>(false, true, true, true), vec3<f32>(-1162f, -543f, -258f)), Struct_2(vec3<bool>(false, true, true), true, vec4<bool>(true, true, false, true), vec3<f32>(414f, 478f, -459f)), Struct_2(vec3<bool>(false, true, false), false, vec4<bool>(false, true, true, false), vec3<f32>(133f, -438f, -217f)), Struct_2(vec3<bool>(true, true, true), false, vec4<bool>(false, false, true, true), vec3<f32>(-446f, -334f, 830f)), Struct_2(vec3<bool>(false, true, true), true, vec4<bool>(true, true, true, true), vec3<f32>(2310f, -964f, -962f)), Struct_2(vec3<bool>(false, true, true), false, vec4<bool>(true, true, false, true), vec3<f32>(1819f, -160f, -688f)), Struct_2(vec3<bool>(true, true, true), false, vec4<bool>(false, false, false, true), vec3<f32>(-467f, -354f, -1331f)), Struct_2(vec3<bool>(true, false, true), false, vec4<bool>(false, false, true, true), vec3<f32>(221f, -643f, 895f)), Struct_2(vec3<bool>(true, false, true), true, vec4<bool>(true, true, true, true), vec3<f32>(403f, 877f, -212f)), Struct_2(vec3<bool>(false, true, true), true, vec4<bool>(false, false, true, true), vec3<f32>(-673f, -938f, -524f)), Struct_2(vec3<bool>(true, false, false), true, vec4<bool>(false, true, true, true), vec3<f32>(-858f, -1698f, -738f)), Struct_2(vec3<bool>(false, false, true), true, vec4<bool>(true, true, false, false), vec3<f32>(-1033f, -206f, 158f)), Struct_2(vec3<bool>(true, true, false), false, vec4<bool>(true, true, false, true), vec3<f32>(-2933f, 846f, -913f)));

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(30760u, -76793i, 84513u, vec2<f32>(-150f, -183f)), Struct_1(4294967295u, 0i, 34629u, vec2<f32>(1000f, -1034f)), Struct_1(31403u, 1i, 32242u, vec2<f32>(915f, -1000f)), Struct_1(23805u, -40965i, 1u, vec2<f32>(796f, 1000f)), Struct_1(0u, 41128i, 54249u, vec2<f32>(-369f, 1593f)), Struct_1(1u, i32(-2147483648), 0u, vec2<f32>(-689f, 773f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(29785i, 0i) << (~(~(~u_input.d)) % 32u));
    global1 = array<Struct_2, 21>();
    let var_1 = arg_0.c;
    global1 = array<Struct_2, 21>();
    global1 = array<Struct_2, 21>();
    return ~_wgslsmith_add_u32(43423u, u_input.c.x);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: f32) -> u32 {
    global1 = array<Struct_2, 21>();
    var var_0 = 4294967295u;
    let var_1 = global2[_wgslsmith_index_u32(~1u, 6u)];
    global1 = array<Struct_2, 21>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + -195f) + _wgslsmith_f_op_f32(max(-996f, var_1.d.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -708f)))));
    return 79758u << (1u % 32u);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global2 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.d.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f * 1382f))))), arg_2.d.x);
    let var_1 = abs(-2147483647i);
    let var_2 = vec2<f32>(1085f, 1515f);
    var var_3 = arg_2;
    return Struct_1(_wgslsmith_div_u32(min(func_3(var_3.b, -2348f, arg_1), min(arg_2.c, firstTrailingBit(u_input.c.x))), ~_wgslsmith_mult_u32(~4294967295u, max(arg_2.a, 36886u))), var_1, var_3.a, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    var var_0 = func_2(reverseBits(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - 775f)), global2[_wgslsmith_index_u32(0u & _wgslsmith_mult_u32(u_input.d << (abs(56865u) % 32u), firstTrailingBit(func_1(global1[_wgslsmith_index_u32(4294967295u, 21u)]))), 6u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]);
    var_0 = Struct_1(~(countOneBits(_wgslsmith_add_u32(u_input.c.x, 4294967295u)) << (_wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.yx >> (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))) % 32u)), 1i, ~u_input.c.x, _wgslsmith_f_op_vec2_f32(-var_0.d));
    var var_1 = func_2(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, 1221f))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, firstLeadingBit(var_0.c)), _wgslsmith_mult_vec2_u32(reverseBits(u_input.c.zx), vec2<u32>(4294967295u, u_input.d))), 6u)], global1[_wgslsmith_index_u32(30689u, 21u)]);
    var var_2 = func_2(_wgslsmith_dot_vec3_i32(max(-max(vec3<i32>(1i, var_0.b, u_input.b), vec3<i32>(50050i, var_0.b, -42379i)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 15961i, 0i), vec3<i32>(0i, 0i, 31694i))), _wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(u_input.a, 2147483647i, 18681i)), vec3<i32>(1i, 1i, 1i), vec3<i32>(var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 0i, 39986i, -2147483647i), vec4<i32>(var_0.b, -1i, u_input.a, u_input.a)), 8830i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(805f)))) + _wgslsmith_f_op_f32(f32(-1f) * -211f)), false)), global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(select(vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true)), true, !vec4<bool>(var_1.a != var_1.a, any(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, false, true)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(2147483647i, var_1.d.x, Struct_1(1u, var_0.b, 0u, vec2<f32>(577f, var_1.d.x)), Struct_2(vec3<bool>(true, true, false), false, vec4<bool>(false, true, true, true), vec3<f32>(-971f, -410f, 121f))).d.x, _wgslsmith_div_f32(var_0.d.x, var_1.d.x), var_1.d.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1030f, var_1.d.x, var_1.d.x), vec3<f32>(var_0.d.x, var_1.d.x, 501f))))));
    var var_3 = _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, var_2.b), -vec2<i32>(1i, var_1.b) >> (~vec2<u32>(1u, var_0.c) % vec2<u32>(32u))), vec2<i32>(2147483647i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.d.x, 1766f), _wgslsmith_f_op_f32(812f * -316f), -125f, _wgslsmith_f_op_f32(min(var_0.d.x, var_1.d.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_div_f32(749f, var_2.d.x), func_2(-17224i, var_0.d.x, global2[_wgslsmith_index_u32(0u, 6u)], Struct_2(vec3<bool>(false, true, false), true, vec4<bool>(false, false, true, true), vec3<f32>(var_1.d.x, -1590f, var_2.d.x))).d.x, var_1.d.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_2.d.x), vec4<f32>(var_0.d.x, var_2.d.x, var_0.d.x, 679f), vec4<bool>(false, true, true, false)))))), countOneBits(~u_input.c));
}

