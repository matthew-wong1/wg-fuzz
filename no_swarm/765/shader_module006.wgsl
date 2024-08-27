struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(4417i, -60909i, 4955i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -22691i, 0i), vec4<i32>(-441i, 21415i, 28243i, i32(-2147483648)), vec4<i32>(3088i, 0i, 24390i, 1i), vec4<i32>(-1i, -25387i, -27960i, 34721i), vec4<i32>(0i, 28864i, 13646i, -15633i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(-1i, 23984i, 1i, 77472i), vec4<i32>(16743i, -29357i, 2147483647i, 0i), vec4<i32>(1i, 4905i, 2147483647i, 2147483647i), vec4<i32>(-1i, 6456i, 31129i, 0i), vec4<i32>(-6514i, i32(-2147483648), 2147483647i, 18147i), vec4<i32>(28584i, -1i, -1i, -1i), vec4<i32>(14572i, -35556i, 1i, 1i), vec4<i32>(2147483647i, i32(-2147483648), -1i, -3081i), vec4<i32>(1i, 44763i, -18314i, 0i), vec4<i32>(-24399i, -10796i, 2147483647i, 10593i), vec4<i32>(3929i, 23914i, 1i, -1i), vec4<i32>(-1i, -68940i, 6285i, -1i), vec4<i32>(25824i, -1i, 1i, -21067i), vec4<i32>(-1i, -87616i, 8329i, -163i), vec4<i32>(-58063i, 1i, -23926i, -38114i));

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(all(vec4<bool>(!(arg_2.x <= 1i), true, !arg_1.c.a, arg_1.c.a)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 1u), u_input.a), ~vec2<u32>(u_input.c.x, arg_1.c.b.x)), ~vec2<u32>(74158u, 1u)));
    global0 = array<vec4<i32>, 22>();
    var_0 = arg_1.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.yz))));
    let var_2 = true;
    return vec4<bool>(false, true, var_2, all(select(!vec4<bool>(true, true, var_0.a, var_0.a), select(vec4<bool>(var_0.a, true, var_0.a, arg_1.d.a), vec4<bool>(var_2, var_2, arg_1.c.a, var_0.a), select(vec4<bool>(false, false, var_2, var_2), vec4<bool>(true, var_0.a, arg_1.c.a, true), vec4<bool>(true, false, true, arg_1.d.a))), any(select(vec2<bool>(false, arg_1.d.a), vec2<bool>(true, false), var_2)))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(select((_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.d.x, u_input.d.x)) | u_input.d.x) == min(u_input.b.x, -u_input.b.x), any(func_3(vec4<f32>(global1.x, 1102f, 2220f, global1.x), Struct_3(global1.xy, arg_0, Struct_2(false, u_input.a), Struct_2(false, arg_1.wz)), vec2<i32>(-20658i, u_input.b.x))), all(vec4<bool>(arg_0 > arg_0, -48705i != u_input.b.x, any(vec3<bool>(true, true, false)), all(vec2<bool>(true, false))))), u_input.e);
    var var_1 = Struct_2(~u_input.c.x < 29375u, vec2<u32>(reverseBits(1u), max(u_input.a.x, countOneBits(var_0.b.x)) >> ((max(var_0.b.x, arg_1.x) | ~arg_1.x) % 32u)));
    var var_2 = u_input.d.x;
    var_1 = Struct_2(select(true, var_0.a, arg_1.x <= 35745u) | !var_1.a, var_0.b | arg_1.yy);
    var var_3 = Struct_1(false);
    return Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xy + vec2<f32>(-195f, 594f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-395f, arg_0), global1.xy, vec2<bool>(var_1.a, true))))))), arg_0, Struct_2(func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 604f, global1.x, -1430f) + vec4<f32>(-148f, -648f, arg_0, 466f)))), Struct_3(vec2<f32>(arg_0, 416f), _wgslsmith_f_op_f32(global1.x - -291f), Struct_2(var_3.a, vec2<u32>(5021u, 1u)), Struct_2(var_0.a, vec2<u32>(1u, var_0.b.x))), _wgslsmith_mod_vec2_i32(firstLeadingBit(u_input.b), u_input.d.yw)).x, abs(var_1.b)), Struct_2(any(!select(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, false, true), true)), _wgslsmith_mod_vec2_u32(reverseBits(var_0.b), vec2<u32>(_wgslsmith_div_u32(4294967295u, var_0.b.x), arg_1.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_3(vec2<f32>(arg_1.b, arg_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f + arg_1.b)) - _wgslsmith_f_op_f32(-arg_1.b)), -1000f)), arg_1.d, Struct_2(true, select(arg_1.c.b, vec2<u32>(arg_1.d.b.x, 1u), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(exp2(arg_0));
    var var_2 = var_0.d;
    var var_3 = _wgslsmith_f_op_f32(241f * 697f);
    let var_4 = vec3<u32>(0u, countOneBits(select(_wgslsmith_clamp_u32(~4294967295u, max(0u, arg_1.c.b.x), 20753u), arg_1.c.b.x, arg_0 > _wgslsmith_f_op_f32(arg_0 + 343f))), _wgslsmith_add_u32(26518u, _wgslsmith_sub_u32(reverseBits(arg_1.c.b.x), _wgslsmith_mod_u32(4294967295u, 17306u ^ arg_1.c.b.x))));
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<f32> {
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.xx)) + global1.xx))), _wgslsmith_f_op_f32(ceil(975f)), arg_0, arg_0);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(global1.x, func_2(global1.x, ~arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-537f, 1000f)), u_input.d.wy)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-313f, func_2(192f, arg_1), func_2(var_0.b, arg_1).b, firstLeadingBit(u_input.b))))), 1f);
    return vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(-979f * 1672f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(global1.x))), -411f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec2<i32>(_wgslsmith_sub_i32(reverseBits(u_input.b.x), 21428i), u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, -1794f, 387f, -669f))) - _wgslsmith_f_op_vec4_f32(func_1(Struct_2(true, vec2<u32>(3960u, u_input.c.x)), vec4<u32>(u_input.a.x, u_input.a.x, 20835u, 17609u), 2147483647i, vec3<bool>(true, var_0, false)))) + vec4<f32>(_wgslsmith_f_op_f32(select(1083f, 442f, var_0)), global1.x, _wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(global1.x - 2598f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1000f, -418f, global1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -982f, -1413f, global1.x)))))));
    var var_3 = vec3<u32>(u_input.c.x, ~11433u, abs(~(~u_input.a.x)));
    let var_4 = !select(false, select(var_0, !(!var_0), !(!var_0)), any(vec4<bool>(false, all(vec4<bool>(false, false, var_0, var_0)), true, any(vec4<bool>(true, var_0, var_0, true)))));
    var var_5 = _wgslsmith_dot_vec4_i32(max(-select(~global0[_wgslsmith_index_u32(1u, 22u)], ~u_input.d, all(vec3<bool>(true, true, var_0))), _wgslsmith_mod_vec4_i32(~(~u_input.d), reverseBits(vec4<i32>(u_input.b.x, 23519i, -2147483647i, 2147483647i)))), ~(~min(-global0[_wgslsmith_index_u32(15436u, 22u)], vec4<i32>(-17460i, var_1.x, u_input.b.x, -1i))));
    let var_6 = func_3(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -1214f, 512f, _wgslsmith_div_f32(global1.x, global1.x)), Struct_3(_wgslsmith_f_op_vec2_f32(-var_2.yw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-257f * _wgslsmith_f_op_f32(629f + global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -815f))), func_2(-177f, vec4<u32>(4294967295u, u_input.a.x, 34303u, var_3.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(46597u, 2332u, u_input.a.x, var_3.x), vec4<u32>(4294967295u, var_3.x, 44183u, 0u)) % vec4<u32>(32u))).c, Struct_2(func_2(_wgslsmith_f_op_f32(round(390f)), vec4<u32>(0u, 0u, 42870u, u_input.c.x) >> (vec4<u32>(4467u, 0u, 1u, var_3.x) % vec4<u32>(32u))).d.a, select(vec2<u32>(var_3.x, u_input.c.x), vec2<u32>(18458u, u_input.e.x), var_2.x >= global1.x))), u_input.d.yz).wzy;
    var_5 = u_input.d.x;
    var_5 = -2147483647i >> (firstTrailingBit(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, u_input.e.x, u_input.e.x, var_3.x), vec4<u32>(0u, u_input.e.x, 41604u, 4294967295u)))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-213f, var_2.x, _wgslsmith_f_op_f32(-446f - global1.x), var_2.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(select(global1.x, 1000f, var_4)), var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-123f, -472f, var_2.x, 1422f), vec4<f32>(-600f, global1.x, var_2.x, 1447f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-376f, 509f, -651f, global1.x))))))), var_1.x, var_3.yz);
}

