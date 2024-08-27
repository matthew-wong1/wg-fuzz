struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_3 = Struct_3(-1i, vec4<u32>(1u, 0u, 29383u, 1u), vec3<f32>(-1508f, -121f, -908f), vec3<f32>(-703f, 569f, 1000f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(-421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-282f)), 696f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-841f, -1000f), _wgslsmith_f_op_f32(arg_2 + 309f), all(vec2<bool>(false, false))))) * _wgslsmith_f_op_f32(f32(-1f) * -826f)), true));
    let var_1 = Struct_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, -46782i), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(41265i, u_input.a, u_input.a, 0i), vec4<i32>(global1.a, u_input.a, 1i, 0i)))), (vec4<u32>(_wgslsmith_mod_u32(arg_3.x, 1u), global0.x >> (global1.b.x % 32u), global1.b.x, global1.b.x) | _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(arg_3.x, global1.b.x, 90043u, arg_3.x), global1.b), ~vec4<u32>(arg_0, arg_3.x, 13292u, 9176u))) ^ vec4<u32>(1u, ~global1.b.x, ~64459u, 11835u | arg_0), global1.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -382f, 119f) + global1.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, 886f, -228f))))))));
    var var_2 = Struct_1(arg_1.a);
    let var_3 = 32230i;
    var var_4 = !select(vec3<bool>(true, true, !all(vec2<bool>(true, false))), vec3<bool>((111093u << (var_1.b.x % 32u)) <= (0u & arg_3.x), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true)), false), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)));
    return abs(global0.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(7207u, global1.b.x, func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.x, 30477u, arg_0.x), global1.b), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, global1.c.x, -332f) - vec4<f32>(global1.d.x, global1.c.x, global1.c.x, -237f))), 849f, global0.xy) << (firstTrailingBit(~4294967295u) % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, global1.c.x, global1.d.x, global1.d.x) + vec4<f32>(-1071f, global1.c.x, global1.d.x, global1.d.x))), vec4<f32>(247f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.d.x)))))));
    let var_2 = vec2<bool>(arg_1, _wgslsmith_f_op_f32(-global1.d.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_div_f32(-369f, -1196f))));
    var var_3 = vec2<u32>(global1.b.x, global0.x);
    var_1 = Struct_1(var_1.a);
    return var_1.a.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(arg_1.x, global0.x), select(arg_2.b, false, arg_2.b))))));
    var_0 = _wgslsmith_f_op_f32(exp2(arg_2.e.a.x));
    var_0 = _wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(max(global1.c.x, arg_3.d.x)));
    global1 = arg_3;
    global1 = arg_3;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.x), 204f, arg_2.b)))), 388f, _wgslsmith_f_op_f32(1573f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), arg_2.e.a.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = global1.b.x;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var var_2 = true;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2138f, 963f))), -656f, _wgslsmith_f_op_f32(-arg_1.a.x), 241f)), arg_1.a, true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.a.x), arg_0.e.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1604f, arg_0.d.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_0.c.a.x), vec2<f32>(-2233f, global1.d.x)))))), global1.d.zz);
    var var_1 = ~global1.b.x;
    var_0 = global1.c.zz;
    let var_2 = arg_1;
    var_1 = ~_wgslsmith_dot_vec4_u32(global1.b, global1.b);
    return reverseBits(74986u ^ ~countOneBits(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), true), true, Struct_1(_wgslsmith_f_op_vec4_f32(func_4(641f, func_1(vec4<f32>(-1000f, 341f, -1000f, global1.c.x), global1.b.www, Struct_2(vec2<bool>(false, false), false, Struct_1(vec4<f32>(global1.d.x, -249f, global1.c.x, -886f)), Struct_1(vec4<f32>(996f, global1.c.x, global1.c.x, global1.c.x)), Struct_1(vec4<f32>(1157f, 586f, global1.d.x, global1.c.x))), Struct_3(global1.a, vec4<u32>(global0.x, 0u, 4294967295u, global1.b.x), vec3<f32>(-1000f, global1.d.x, global1.c.x), global1.c))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), global1.d.x, _wgslsmith_f_op_f32(1094f + 695f), 137f)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, global1.c.x, 588f, global1.c.x))))), !select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), (global1.b.x | 0u) <= global1.b.x), global1.b.wwx, _wgslsmith_f_op_f32(-global1.d.x));
    let var_1 = ~vec3<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.a, u_input.a, 1i), vec4<i32>(global1.a, u_input.a, global1.a, global1.a)), _wgslsmith_clamp_i32(-19342i, global1.a, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a ^ u_input.a, u_input.a | global1.a), vec2<i32>(_wgslsmith_mod_i32(0i, global1.a), global1.a)), u_input.a);
    global1 = Struct_3(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-65186i, -2147483647i) >> (vec2<u32>(global0.x, 71284u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_1.yy, var_1.yz)), var_1.zz), vec4<u32>(abs(~reverseBits(18376u)), abs(global0.x), min(~(~14697u), 91825u), 81794u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-855f, global1.c.x, 448f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -208f, 1000f))))) * func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, 1000f, global1.c.x, 140f) + vec4<f32>(-282f, global1.c.x, -886f, 1393f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global1.c.x, 1000f, -316f)), vec4<bool>(true, true, true, true))), ~min(global1.b.xyz, vec3<u32>(global0.x, global0.x, 4294967295u)), Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true, Struct_1(vec4<f32>(global1.c.x, -1604f, global1.d.x, global1.d.x)), func_1(vec4<f32>(global1.d.x, -327f, global1.c.x, global1.c.x), vec3<u32>(global0.x, global0.x, 1u), Struct_2(vec2<bool>(true, false), true, Struct_1(vec4<f32>(1819f, -365f, 704f, 431f)), Struct_1(vec4<f32>(1040f, -820f, global1.d.x, -774f)), Struct_1(vec4<f32>(561f, global1.d.x, global1.c.x, -1568f))), Struct_3(global1.a, vec4<u32>(1u, 11850u, global0.x, 4294967295u), vec3<f32>(global1.c.x, -163f, 1445f), vec3<f32>(global1.c.x, global1.c.x, 1759f))), Struct_1(vec4<f32>(1808f, global1.d.x, 717f, 1564f))), Struct_3(1745i, _wgslsmith_clamp_vec4_u32(global1.b, global1.b, global1.b), vec3<f32>(global1.d.x, global1.c.x, global1.d.x), vec3<f32>(192f, global1.c.x, 685f))).a.xww));
    var_0 = 35131u;
    let var_2 = _wgslsmith_dot_vec2_i32(var_1.zy, abs(~select(~var_1.xz, -var_1.yx, vec2<bool>(false, false))));
    var_0 = ~_wgslsmith_div_u32(global0.x, ~(~(~38836u)));
    let var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(global1.b.x, 1u, global0.x), vec3<u32>(72073u, 0u, 1u))));
}

