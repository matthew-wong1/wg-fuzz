struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = 590f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -115f));
}

fn func_3() -> vec4<u32> {
    return ~abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(55666u, 21521u), vec2<u32>(8943u, 0u)) >> (abs(1u) % 32u), 4294967295u, ~0u, _wgslsmith_add_u32(0u, ~36744u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_1(false, ~vec4<i32>(arg_0.c.b.c, select(-22414i, arg_0.c.b.b.x, false), -12485i, -(~(-1i))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(arg_0.d.b.b.zxy), countOneBits(vec3<i32>(1i, arg_0.b, 0i) ^ u_input.c)), vec3<i32>(_wgslsmith_add_i32(arg_0.c.b.b.x, -arg_1.x), ~_wgslsmith_clamp_i32(-1i, -1i, -59776i), -1i)));
    var_0 = arg_0.c.b;
    let var_1 = -(~(-arg_0.b));
    var_0 = arg_0.d.b;
    let var_2 = vec4<i32>(0i, 2479i, _wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_0.b.x, 11987i, u_input.b), var_0.c) << (arg_0.c.a.x % 32u), max(select(-(~arg_1.x), 37609i, !all(vec2<bool>(arg_0.d.b.a, arg_0.d.b.a))), 2147483647i));
    return _wgslsmith_f_op_f32(global0.x * global0.x);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.d);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(true)), -800f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - arg_1.d), 790f));
    let var_1 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(-2147483647i, -_wgslsmith_div_i32(arg_1.a.x, -2147483647i), -(u_input.b << (arg_0 % 32u))), u_input.c, arg_1.b), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(select(max(vec3<i32>(-13786i, arg_1.a.x, arg_1.a.x), u_input.a), abs(vec3<i32>(-15593i, arg_1.a.x, 1i)), arg_3.x < 4294967295u), _wgslsmith_div_vec3_i32(arg_1.a.xyw, select(vec3<i32>(43918i, u_input.c.x, u_input.c.x), vec3<i32>(-3942i, arg_2.x, arg_2.x), vec3<bool>(arg_1.c, arg_1.c, true)))), vec3<i32>(-8389i, -(u_input.c.x & -55494i), ~arg_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 143f), max(select(i32(-1i) * -42276i, ~arg_1.a.x, any(vec2<bool>(true, false))), ~u_input.c.x ^ var_1.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_0, arg_3.x, 4294967295u), func_3()), 9u)], Struct_2(vec4<u32>(~arg_0, _wgslsmith_mult_u32(arg_0, 4294967295u), _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(0u, 141362u)), 27396u), Struct_1(!arg_1.b, ~arg_1.a, u_input.c.x | 0i))), ~arg_1.a.xw));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1516f, -496f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(710f, global0.x, 842f) * vec3<f32>(arg_1.d, -384f, arg_1.d))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(760f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1217f, -3066f, global0.x)))), vec3<f32>(1000f, -1000f, _wgslsmith_div_f32(777f, -440f)))), _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.a.x, abs(abs(-34172i))), arg_1.a.x ^ _wgslsmith_sub_i32(var_1.x, _wgslsmith_dot_vec3_i32(u_input.a, var_1))), Struct_2(abs(~(~vec4<u32>(90370u, 112587u, 22898u, 0u))), Struct_1(arg_1.c, max(vec4<i32>(-41632i, arg_2.x, var_1.x, 0i), min(arg_2, arg_2)), 2147483647i)), Struct_2(vec4<u32>(arg_3.x, arg_3.x, ~arg_0, arg_0), Struct_1(true && all(vec2<bool>(arg_1.b, true)), vec4<i32>(u_input.c.x, min(-2147483647i, arg_1.a.x), var_1.x, 16757i), var_1.x)));
    return Struct_4(~var_2.c.b.b, !var_2.c.b.a & true, arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(all(select(vec3<bool>(true, any(vec3<bool>(arg_1.a, true, arg_0.b)), arg_0.c), vec3<bool>(-256f <= global0.x, true, true), !(!vec3<bool>(arg_1.a, arg_1.a, arg_0.b)))), vec4<i32>(countOneBits(arg_1.b.x), -_wgslsmith_add_i32(-arg_1.b.x, countOneBits(-27235i)), 0i ^ _wgslsmith_mult_i32(arg_1.b.x, u_input.b << (0u % 32u)), u_input.c.x), arg_1.b.x);
    var var_1 = _wgslsmith_f_op_f32(floor(arg_0.d));
    var var_2 = vec2<i32>(44081i, -2147483647i);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), arg_0.d)))));
    let var_3 = !(var_2.x >= 1i);
    return Struct_1(false, var_0.b, -_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.b.x, var_0.c), arg_1.b.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 9>();
    let var_0 = func_5(func_1(1u, Struct_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, u_input.a.x, -2147483647i), vec4<i32>(-1i, 42375i, 8410i, 0i)), firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, 1i, 2147483647i)), vec4<i32>(u_input.c.x, 34374i, 73467i, -41380i) | vec4<i32>(-2147483647i, u_input.b, u_input.b, -3055i)), false, !any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f))), -(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 822i, u_input.a.x, -1i)), vec2<u32>(_wgslsmith_mod_u32(1u, 49907u), firstLeadingBit(1u))), Struct_1(true, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 31638i, 1i, u_input.a.x) << (vec4<u32>(0u, 1u, 22016u, 0u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, u_input.c.x, -1i, -50593i)), -2147483647i, ~u_input.a.x, u_input.c.x), _wgslsmith_add_i32(firstTrailingBit(u_input.a.x), u_input.c.x) << (29092u % 32u)));
    let var_1 = -1399f;
    var var_2 = -var_0.b.zx;
    let var_3 = select(select(!vec4<bool>(false, true, func_5(Struct_4(vec4<i32>(var_0.b.x, var_0.c, var_2.x, u_input.c.x), var_0.a, var_0.a, 653f), var_0).a, var_0.c == var_0.b.x), vec4<bool>(true, true | !var_0.a, !any(vec3<bool>(true, true, var_0.a)), func_1(firstTrailingBit(4294967295u), Struct_4(vec4<i32>(-1i, 1i, u_input.c.x, u_input.a.x), var_0.a, true, global0.x), vec4<i32>(var_2.x, var_2.x, u_input.c.x, var_0.c), countOneBits(vec2<u32>(40063u, 1u))).b), any(vec2<bool>(all(vec3<bool>(var_0.a, var_0.a, var_0.a)), false))), !select(!select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a), var_0.a), !vec4<bool>(var_0.a, false, true, true), select(!vec4<bool>(true, var_0.a, true, true), select(vec4<bool>(var_0.a, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(var_0.a, var_0.a, false, false)), var_0.a)), !vec4<bool>(1u > _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47797u, 109018u), vec3<u32>(4294967295u, 0u, 52025u)), var_0.a, var_0.a, !var_0.a));
    var var_4 = select(vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 36672u), vec2<u32>(20560u, 0u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), select(1u, 4294967295u, true)), 1u), vec3<u32>(1u, 1u, 1u), select(!vec3<bool>(var_3.x, any(vec4<bool>(false, false, var_0.a, var_3.x)), var_1 <= 759f), vec3<bool>(var_3.x, _wgslsmith_f_op_f32(step(-1227f, global0.x)) > _wgslsmith_f_op_f32(115f * -932f), false), !(!(!vec3<bool>(var_0.a, false, true)))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1721f, 668f, -703f), vec3<f32>(var_1, 471f, var_1), select(var_3.wwz, vec3<bool>(false, var_3.x, false), true))), 1i, global1[_wgslsmith_index_u32(var_4.x, 9u)], Struct_2(reverseBits(vec4<u32>(71173u, 0u, var_4.x, var_4.x)), var_0)), vec2<i32>(-1i, _wgslsmith_clamp_i32(var_2.x, 0i, -32073i)) | u_input.a.zz)) * _wgslsmith_f_op_f32(-839f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -751f)) + -331f)));
    var var_6 = abs(~0i ^ u_input.a.x);
    var var_7 = vec2<bool>(true, !(!(_wgslsmith_f_op_f32(global0.x + var_1) >= _wgslsmith_f_op_f32(floor(263f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(1u), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -16196i, 2147483647i), var_0.b), func_1(19372u, Struct_4(var_0.b, var_0.a, false, global0.x), var_0.b, var_4.yz).a.x, 2147483647i & var_2.x), -(var_0.b.wzw ^ vec3<i32>(var_2.x, 31866i, u_input.a.x))), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(19700i, var_2.x), -7811i << (var_4.x % 32u))), _wgslsmith_clamp_i32(-u_input.a.x >> (_wgslsmith_clamp_u32(4294967295u, 22626u, 51901u) % 32u), abs(9285i), countOneBits(_wgslsmith_mod_i32(6286i, var_0.c)))));
}

