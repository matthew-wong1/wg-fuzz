struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, 17265i, 34739i, 2147483647i, 2147483647i, 44895i, 13334i, 2238i, 0i, i32(-2147483648), -28533i, -11546i, 17405i, 1i, i32(-2147483648), 8496i, -1i, 1i);

var<private> global2: bool;

var<private> global3: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(1313f, 2628f), vec2<f32>(1027f, -542f), vec2<f32>(-1318f, -957f), vec2<f32>(502f, -1000f), vec2<f32>(-444f, 1108f), vec2<f32>(-888f, 1000f), vec2<f32>(1314f, 239f), vec2<f32>(-1619f, -1094f), vec2<f32>(133f, -331f), vec2<f32>(-376f, -1278f), vec2<f32>(-669f, 569f), vec2<f32>(678f, -279f), vec2<f32>(814f, 764f), vec2<f32>(-557f, -435f), vec2<f32>(1309f, 346f), vec2<f32>(165f, -1000f), vec2<f32>(1793f, -216f), vec2<f32>(-272f, -354f), vec2<f32>(-501f, -774f), vec2<f32>(-1853f, 1000f), vec2<f32>(636f, -429f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = !(!vec4<bool>(-1i > ~global1[_wgslsmith_index_u32(u_input.b.x, 18u)], true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 12031i)) <= -global1[_wgslsmith_index_u32(10296u, 18u)]));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -939f), -1828f)), _wgslsmith_div_f32(-784f, global0.x), true));
    global1 = array<i32, 18>();
    var var_2 = !(!all(vec3<bool>(arg_0.x, true, all(vec3<bool>(false, arg_0.x, false)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, 292f, 411f) + vec3<f32>(-1289f, global0.x, -2674f)))), firstTrailingBit(~(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (u_input.b % vec3<u32>(32u)))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 629i, u_input.c.x) ^ vec4<i32>(global1[_wgslsmith_index_u32(0u, 18u)], -19708i, 26449i, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, -1i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], 17205i), u_input.c, u_input.c)), vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(-22430i, -2147483647i)), reverseBits(0i), u_input.c.x)), ~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 2147483647i), u_input.c.yx))));
    return select(vec4<bool>(!arg_0.x, !(_wgslsmith_add_i32(-13702i, u_input.d) == 0i), abs(~0i) == _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_3.a.c.zyw, u_input.c.wyx), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_3.a.d.x, 2147483647i, u_input.d), vec4<i32>(var_3.a.d.x, u_input.d, 6895i, -4823i)), min(u_input.d, -53247i)), !(var_3.a.a.x <= _wgslsmith_f_op_f32(sign(arg_1.x)))), vec4<bool>(true, true, abs(-18025i) < _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(min(1u, u_input.b.x), 18u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_3.a.b.x, 18u)], u_input.c.x), _wgslsmith_dot_vec2_i32(var_3.a.d, vec2<i32>(-1i, global1[_wgslsmith_index_u32(88968u, 18u)]))), arg_0.x || true), vec4<bool>(true, -81886i > var_3.a.c.x, all(select(!arg_0.xz, vec2<bool>(true, true), true)), any(vec3<bool>(var_0.x, false, true))));
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_div_f32(-1004f, _wgslsmith_div_f32(global0.x, 1000f)), 678f)), _wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(exp2(arg_0)));
    global3 = array<vec2<f32>, 21>();
    global1 = array<i32, 18>();
    var var_0 = func_3(!vec3<bool>(all(vec3<bool>(true, true, true)), false, true), vec3<f32>(_wgslsmith_f_op_f32(1221f - arg_0), _wgslsmith_f_op_f32(arg_0 - arg_0), -586f));
    global3 = array<vec2<f32>, 21>();
    return Struct_3(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(26912u, u_input.a.x), vec2<u32>(u_input.b.x, 61087u))), ~14128u ^ firstTrailingBit(73792u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    var var_0 = arg_1.a;
    let var_1 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(arg_1.a.a.x - 1f))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(-global0.x));
    var var_3 = ~abs(~72630u);
    var var_4 = _wgslsmith_div_i32(arg_1.a.c.x, 2147483647i);
    return Struct_4(Struct_1(arg_1.a.a, abs(~u_input.b), ~(-u_input.c << (~vec4<u32>(var_0.b.x, 1u, 1u, 1u) % vec4<u32>(32u))), select(max(vec2<i32>(u_input.c.x, arg_1.a.d.x), vec2<i32>(global1[_wgslsmith_index_u32(40304u, 18u)], var_0.d.x)) | arg_1.a.d, ~vec2<i32>(global1[_wgslsmith_index_u32(0u, 18u)], 85261i) ^ u_input.c.ww, vec2<bool>(true, true))), abs(firstTrailingBit(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_1.a, 18u)], 11701i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), arg_1);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global1 = array<i32, 18>();
    global3 = array<vec2<f32>, 21>();
    global1 = array<i32, 18>();
    global3 = array<vec2<f32>, 21>();
    var var_0 = Struct_4(Struct_1(arg_0.a.a, ~arg_0.a.b, -(~u_input.c), arg_0.a.c.zz), arg_0.d.a.c.x, 426f, Struct_2(arg_0.a));
    return var_0.d.a;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = func_5(func_4(func_2(global0.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_0)), reverseBits(u_input.b), u_input.c | u_input.c, vec2<i32>(-956i, u_input.c.x)))));
    var var_1 = func_4(func_2(656f), func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f))), func_4(func_2(_wgslsmith_f_op_f32(-var_0.a.x)), func_4(func_2(var_0.a.x), func_4(Struct_3(var_0.b.x), Struct_2(Struct_1(var_0.a, vec3<u32>(var_0.b.x, u_input.a.x, 20246u), vec4<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 18u)], 27837i, 0i, 16004i), var_0.c.yw))).d).d).d).d).d;
    let var_2 = global0.x;
    let var_3 = func_3(vec3<bool>(!all(vec2<bool>(false, true)), any(vec2<bool>(true, true)), true), arg_0).x;
    let var_4 = u_input.a;
    return 109823u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(max(~_wgslsmith_add_u32(1u, abs(u_input.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(7317u, 19620u, 35307u, u_input.a.x)), vec4<u32>(26457u, 10690u, u_input.a.x, 4294967295u) >> (vec4<u32>(5464u, 1u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(62493u, ~46465u, 0u, func_1(vec3<f32>(global0.x, global0.x, global0.x))))), 4401u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, abs(4294967295u), abs(9017u), u_input.b.x | 0u), firstLeadingBit(abs(select(vec4<u32>(u_input.b.x, 109379u, 9736u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), true)))));
    let var_1 = max(-u_input.d, ~global1[_wgslsmith_index_u32(func_5(Struct_4(func_4(Struct_3(0u), Struct_2(Struct_1(vec3<f32>(1160f, global0.x, global0.x), vec3<u32>(15706u, var_0.x, 0u), u_input.c, u_input.c.xy))).a, 2147483647i, _wgslsmith_f_op_f32(round(global0.x)), func_4(Struct_3(0u), Struct_2(Struct_1(vec3<f32>(-1491f, 1081f, global0.x), vec3<u32>(var_0.x, var_0.x, var_0.x), vec4<i32>(-1i, 36738i, 16877i, global1[_wgslsmith_index_u32(38989u, 18u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(var_0.x, 18u)])))).d)).b.x, 18u)]);
    var var_2 = _wgslsmith_div_vec2_i32(func_4(Struct_3(1u), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(1000f, global0.x, -1000f)), vec3<u32>(44147u, var_0.x, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(15157i, var_1, -28i, 0i), u_input.c), vec2<i32>(110i, 27866i)))).a.d, ~u_input.c.zx | (vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 51804i), u_input.d) ^ u_input.c.xx));
    global3 = array<vec2<f32>, 21>();
    var var_3 = ~(vec4<u32>(10853u, u_input.b.x, _wgslsmith_add_u32(~u_input.a.x, ~var_0.x), 14119u) | vec4<u32>(u_input.b.x, _wgslsmith_div_u32(select(u_input.a.x, 23569u, true), 32215u), ~4294967295u, ~(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, abs(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -52116i, u_input.d, global1[_wgslsmith_index_u32(var_0.x, 18u)]), -vec4<i32>(u_input.d, 1i, 22162i, 0i)))));
}

