struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: Struct_3;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec2<f32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(global1.d.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.d.x)))), 1342f, -610f);
    var_0 = global1.d.d;
    let var_1 = arg_0 | u_input.a;
    let var_2 = _wgslsmith_div_f32(807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-232f - -1019f)))));
    let var_3 = _wgslsmith_clamp_vec2_u32(u_input.c.xz, _wgslsmith_div_vec2_u32(u_input.c.wz, vec2<u32>(4294967295u, arg_0)), _wgslsmith_mult_vec2_u32(~u_input.c.zw, vec2<u32>(~_wgslsmith_div_u32(4191u, arg_0), countOneBits(~arg_0))));
    return -_wgslsmith_div_i32(-arg_1.e >> (abs(1u) % 32u), global1.d.a) | ~16448i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_mult_i32(0i, arg_1.a >> (~354u % 32u))) > ~(-func_3(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zz), Struct_3(global1.a, false, false, Struct_1(arg_0.a, vec2<bool>(global1.b, true), arg_2.x, vec3<f32>(-1000f, global1.a.d.x, 917f)), 0i), vec4<i32>(16146i, -1i, 0i, u_input.b), _wgslsmith_f_op_vec2_f32(global1.d.d.yx * global1.a.d.xz)));
    let var_1 = Struct_4(abs(~firstTrailingBit(vec4<u32>(15850u, 0u, u_input.c.x, 0u))), Struct_1(firstLeadingBit(abs(1i)), select(vec2<bool>(arg_1.b, all(vec2<bool>(true, false))), !arg_2.zx, select(!arg_2.zx, vec2<bool>(arg_2.x, true), all(arg_2))), false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d.x, 175f, global1.a.d.x) + global1.d.d))))));
    var var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(select(4294967295u, firstLeadingBit(1u), all(arg_2)), _wgslsmith_mod_u32(~arg_1.c, _wgslsmith_add_u32(arg_0.c, arg_1.c))), vec2<u32>(~_wgslsmith_add_u32(var_1.a.x, arg_1.c), 40759u)));
    var var_3 = Struct_1(var_1.b.a, vec2<bool>(!arg_2.x, true), all(arg_2.zy), _wgslsmith_div_vec3_f32(global1.a.d, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.d.x))), _wgslsmith_f_op_f32(-var_1.b.d.x), 726f)));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.d.x, _wgslsmith_f_op_f32(sign(555f)), _wgslsmith_f_op_f32(round(-372f)), var_1.b.d.x)));
    return Struct_1(~_wgslsmith_mod_i32(~abs(19840i), -23629i & (2147483647i << (u_input.c.x % 32u))), !(!arg_2.yx), any(select(select(!vec3<bool>(arg_1.b, true, arg_0.b), arg_2, true), vec3<bool>(select(var_1.b.b.x, arg_1.b, var_3.c), true, var_0), !(!vec3<bool>(true, global1.d.c, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x - var_1.b.d.x))), -957f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(ceil(var_4.x)))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(Struct_2(global1.d.a, global1.b, ~(u_input.a << (74836u % 32u))), Struct_2(~(~(~5081i)), all(vec3<bool>(true, !global1.c, any(vec4<bool>(global1.c, true, global1.d.b.x, global1.a.b.x)))), ~4294967295u), vec3<bool>(-338f > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.d.x, -612f)), true, true));
    let var_1 = Struct_2(~(~(i32(-1i) * -u_input.b)), true != (!(!var_0.b.x) && any(!vec2<bool>(false, global1.c))), 50888u);
    global1 = Struct_3(global1.a, !all(!vec3<bool>(global1.b, var_0.c, true)) || var_0.b.x, global1.d.b.x | all(vec2<bool>(-17115i == global1.e, true)), func_2(var_1, var_1, vec3<bool>(true, false, !global1.a.b.x)), -2367i);
    global2 = ~(~(~59608u));
    global1 = Struct_3(var_0, global1.c, any(vec2<bool>(var_1.b, false)), var_0, -1i);
    return Struct_3(global1.a, (true | (32055i >= firstTrailingBit(-941i))) && var_0.c, true, Struct_1(var_1.a, func_2(var_1, Struct_2(-3824i, var_0.c, u_input.a | var_1.c), vec3<bool>(var_1.b, u_input.b >= var_0.a, select(var_0.b.x, var_0.c, var_1.b))).b, false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d.x, var_0.d.x, global1.d.d.x) * vec3<f32>(-1000f, -738f, -597f))))), select(_wgslsmith_mod_i32(-5021i, 3385i), var_1.a, true));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global1 = arg_0;
    var var_0 = vec4<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(abs(min(_wgslsmith_sub_i32(u_input.b, arg_0.e), -1i)), 2147483647i, arg_0.d.a), arg_0.a.a, func_1().a.a << (reverseBits(~(arg_1 & u_input.a)) % 32u));
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(~u_input.c.x, 56710u, arg_1 << (0u % 32u), 11531u)), u_input.c), global1.d);
    let var_2 = select(vec2<bool>(all(select(vec3<bool>(true, global1.d.b.x, var_1.b.b.x), !vec3<bool>(true, arg_0.a.c, false), func_1().a.b.x)), false), vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -1121f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-431f - -1000f)))), !(!global1.d.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.d.x))), var_1.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.d.x + _wgslsmith_f_op_f32(f32(-1f) * -657f))), _wgslsmith_f_op_f32(max(var_1.b.d.x, arg_0.d.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-591f)))));
    return Struct_2(var_1.b.a, -356f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.x) + _wgslsmith_div_f32(var_3.x, 1000f)))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(131255u, u_input.c.x), abs(countOneBits(vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), u_input.a))), u_input.c.yy);
    global0 = array<vec3<u32>, 25>();
    var var_1 = func_4(func_1(), u_input.c.x);
    var_1 = func_4(Struct_3(Struct_1(countOneBits(1i) & (69095i ^ global1.a.a), func_1().a.b, all(select(vec3<bool>(true, var_1.b, false), vec3<bool>(true, false, global1.a.b.x), var_1.b)), global1.d.d), global1.d.d.x < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d.d.x))), func_2(Struct_2(var_1.a, true, 4294967295u), Struct_2(i32(-1i) * -2147483647i, true, ~25722u), select(vec3<bool>(var_1.b, global1.d.b.x, false), vec3<bool>(true, var_1.b, true), !var_1.b)).c, Struct_1(-firstTrailingBit(var_1.a), vec2<bool>(true, true), false, vec3<f32>(_wgslsmith_f_op_f32(599f - 1918f), _wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(max(-1000f, -1000f)))), ~func_1().a.a), _wgslsmith_sub_u32(var_1.c >> (0u % 32u), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, 65222u), ~var_1.c)));
    let var_2 = global1.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, vec4<u32>(var_0.x, 786u, 33734u, 23664u)) & vec4<u32>(u_input.c.x, u_input.a, var_0.x, var_1.c), max(vec4<u32>(u_input.c.x, 0u, 0u, 18061u) >> (vec4<u32>(var_1.c, var_0.x, var_0.x, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.c, u_input.c))) << (~vec4<u32>(_wgslsmith_add_u32(0u, 18559u), func_4(Struct_3(global1.d, var_2.x, global1.d.c, Struct_1(-1i, vec2<bool>(var_1.b, var_1.b), var_2.x, vec3<f32>(2269f, -1239f, global1.d.d.x)), 7258i), var_1.c).c, var_0.x, min(var_0.x, var_0.x)) % vec4<u32>(32u)));
}

