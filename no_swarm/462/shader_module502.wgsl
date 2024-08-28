struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(2147483647i, -31277i), vec2<u32>(49335u, 4294967295u), vec2<f32>(-114f, -314f), true, 0i), Struct_1(vec2<i32>(7962i, i32(-2147483648)), vec2<u32>(0u, 62430u), vec2<f32>(2852f, -1000f), false, 40433i), Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(0u, 7780u), vec2<f32>(-1323f, 1535f), false, -36982i), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(1u, 0u), vec2<f32>(1217f, -470f), false, -2382i), Struct_1(vec2<i32>(15739i, 21602i), vec2<u32>(1705u, 4294967295u), vec2<f32>(482f, -388f), true, 2147483647i), Struct_1(vec2<i32>(41389i, 11655i), vec2<u32>(35877u, 0u), vec2<f32>(1860f, -1729f), true, -63931i), Struct_1(vec2<i32>(53305i, 102i), vec2<u32>(1u, 1u), vec2<f32>(284f, -170f), true, 33840i), Struct_1(vec2<i32>(48957i, 2147483647i), vec2<u32>(1u, 17411u), vec2<f32>(1000f, 381f), true, i32(-2147483648)));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -3203i), vec2<u32>(44322u, 1u), vec2<f32>(350f, 1422f), true, 1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_1(u_input.b.xz, vec2<u32>(arg_0.b.x, 18690u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.c.x)))), 1202f), false, ~(~2147483647i));
    var_0 = Struct_1(firstTrailingBit(abs(vec2<i32>(-1i) * -vec2<i32>(global1.a.x, 19050i))), arg_0.b, _wgslsmith_f_op_vec2_f32(-arg_0.c), true, 1i);
    let var_1 = min(-(_wgslsmith_clamp_vec3_i32(~u_input.b.xyy, min(u_input.b.zzw, u_input.b.wwx), u_input.b.xyz) | u_input.b.ywz), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(var_0.a.x, u_input.b.x, -5638i), u_input.b.zzx, false) | u_input.b.zxz, u_input.b.wxx), _wgslsmith_sub_vec3_i32(u_input.b.zzz, _wgslsmith_clamp_vec3_i32(min(vec3<i32>(85940i, u_input.b.x, -876i), u_input.b.xxw), u_input.b.zzz, vec3<i32>(2147483647i, var_0.a.x, -2147483647i))), vec3<i32>(abs(-37210i), -var_0.a.x, firstLeadingBit(global1.a.x)) ^ reverseBits(vec3<i32>(var_0.a.x, global1.e, 16588i))));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~(~35705u), ~firstLeadingBit(u_input.c)), 0u, 0u, global1.b.x) ^ (vec4<u32>(4294967295u, _wgslsmith_clamp_u32(~global1.b.x, _wgslsmith_add_u32(5882u, 5056u), var_0.b.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d, u_input.c), 87191u), reverseBits(4294967295u)) >> (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.b.x, 26056u, 1u), vec4<u32>(0u, 25582u, u_input.d, 44624u), vec4<u32>(u_input.c, global1.b.x, 37379u, u_input.c)), ~vec4<u32>(1u, 110478u, arg_1.x, var_0.b.x) ^ select(vec4<u32>(var_0.b.x, 22916u, arg_1.x, 4294967295u), vec4<u32>(0u, 5344u, 1u, u_input.c), true), false) % vec4<u32>(32u)));
    var var_3 = u_input.b;
    return ~(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(39210i, -1i, arg_0.e, arg_0.a.x), vec4<i32>(arg_0.a.x, -1i, arg_0.e, -2147483647i))) << (abs(~(~arg_1.x)) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = max(0u, _wgslsmith_dot_vec3_u32(countOneBits(countOneBits(vec3<u32>(arg_3.b.x, 136257u, arg_0.b.x))), countOneBits(~vec3<u32>(u_input.d, arg_3.b.x, global1.b.x))) << (9429u % 32u));
    let var_1 = arg_0;
    global0 = array<Struct_1, 8>();
    var var_2 = !(~(~global1.b.x) < _wgslsmith_add_u32(1u, 0u));
    var var_3 = all(vec3<bool>(arg_3.d && any(select(vec4<bool>(false, false, arg_3.d, global1.d), vec4<bool>(false, arg_0.d, false, var_1.d), true)), global1.d | !arg_3.d, any(vec4<bool>(arg_0.e >= u_input.a, true, arg_3.d, true))));
    return 4294967295u;
}

fn func_2() -> f32 {
    let var_0 = func_4(Struct_1(u_input.b.zy, vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.b.x, u_input.d), vec3<u32>(u_input.d, 0u, 1u))), 0u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - -652f))), _wgslsmith_div_f32(global1.c.x, -450f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(124f + global1.c.x) * _wgslsmith_f_op_f32(trunc(global1.c.x))), ~func_3(Struct_1(vec2<i32>(8686i, 2147483647i), vec2<u32>(1u, global1.b.x), global1.c, true, -1i), ~vec3<u32>(global1.b.x, 1u, u_input.d), !vec4<bool>(true, global1.d, global1.d, global1.d))), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c.x)))), global1.c.x, global1.c.x), u_input.a, global0[_wgslsmith_index_u32(9099u, 8u)]);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-610f * -354f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f)))));
    global1 = Struct_1(-firstTrailingBit(~global1.a), global1.b, global1.c, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(346f)) + 1982f) != _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(select(var_2.x, global1.c.x, true)))), -12182i);
    let var_3 = select(!vec2<bool>(select(global1.d, any(vec4<bool>(global1.d, global1.d, true, true)), !global1.d), global1.d), vec2<bool>(global1.d, _wgslsmith_f_op_f32(var_2.x + -811f) <= 768f), select(!(!vec2<bool>(global1.d, false)), vec2<bool>(_wgslsmith_f_op_f32(1633f - 1000f) > global1.c.x, !all(vec3<bool>(false, global1.d, global1.d))), !global1.d | global1.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> vec3<f32> {
    let var_0 = vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(global1.b.x, arg_1.b.x)), 13633u | _wgslsmith_add_u32(u_input.d, ~max(1u, 54547u)), 4294967295u, firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.b.x, u_input.c), vec3<u32>(arg_1.b.x, 88566u, global1.b.x))) >> (29935u % 32u)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mult_i32(arg_1.e, -2147483647i)), ~2147483647i, -max(_wgslsmith_div_i32(u_input.a, firstLeadingBit(-38442i)), arg_1.e));
    var var_3 = max(~u_input.b.xzw, min(vec3<i32>(arg_2.x, -5341i, ~arg_2.x), u_input.b.ywx));
    var_3 = u_input.b.wzw;
    return vec3<f32>(-255f, 2117f, 2058f);
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -121f), Struct_1(_wgslsmith_div_vec2_i32(select(vec2<i32>(-2147483647i, global1.e), global1.a, false), vec2<i32>(u_input.a, 2147483647i)), vec2<u32>(~1u, 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1077f, global1.c.x) * vec2<f32>(global1.c.x, -536f)), !global1.d)), !global1.d, ~_wgslsmith_mod_i32(14231i, 22527i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.e, global1.e), vec2<i32>(0i, 1i)), 8388i, -33123i, 0i), !(!global1.d && global1.d))));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 8u)];
    global1 = global0[_wgslsmith_index_u32(u_input.d, 8u)];
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(27013i, select(-1i | u_input.a, _wgslsmith_add_i32(-1i, abs(global1.a.x)), any(select(vec2<bool>(true, global1.d), vec2<bool>(global1.d, global1.d), vec2<bool>(global1.d, true)))), -_wgslsmith_dot_vec3_i32(u_input.b.zwy << (vec3<u32>(u_input.c, 4294967295u, 1u) % vec3<u32>(32u)), u_input.b.zwy >> (vec3<u32>(1u, 43898u, 44561u) % vec3<u32>(32u)))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, global1.a.x), global1.a), -abs(vec2<i32>(u_input.a, u_input.b.x))), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1218f, 413f, global1.c.x) + vec3<f32>(-1503f, global1.c.x, 802f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, -2308f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, 734f, global1.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(768f, global1.c.x, global1.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global1.c.x, 351f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -602f, global1.c.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(152f * global1.c.x), global1.c.x) * vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global1.c.x))))));
    var var_2 = !vec3<bool>(global1.d, global1.d, true);
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, ~(~func_4(Struct_1(var_0.yy, vec2<u32>(global1.b.x, global1.b.x), vec2<f32>(496f, global1.c.x), global1.d, -64774i), vec4<f32>(-619f, -434f, -1271f, global1.c.x), 2147483647i, Struct_1(vec2<i32>(global1.e, global1.a.x), vec2<u32>(12716u, global1.b.x), vec2<f32>(-562f, 325f), true, -2147483647i)))), ~global1.b);
    let var_4 = global0[_wgslsmith_index_u32(countOneBits(1u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(floor(1592f))), _wgslsmith_f_op_f32(trunc(global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_4.c.x) + _wgslsmith_f_op_f32(-global1.c.x)), var_4.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(356f, global1.c.x, 625f, 274f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(307f, -560f, global1.c.x, -857f), vec4<f32>(-1672f, var_1.x, 647f, global1.c.x), var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.x, global1.c.x, 751f, 1534f))))), var_1.x);
}

