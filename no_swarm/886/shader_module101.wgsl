struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = reverseBits(~4294967295u ^ _wgslsmith_clamp_u32(u_input.b, u_input.b, ~_wgslsmith_add_u32(4294967295u, u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(round(-1542f));
    global2 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_div_f32(244f, _wgslsmith_f_op_f32(-var_1));
    var var_3 = 4294967295u;
    return !(!select(vec3<bool>(var_1 < -1338f, !global0.x, var_1 == var_1), !(!vec3<bool>(true, false, global0.x)), true || (1860f == var_1)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1393f, -384f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-481f, 348f) - vec2<f32>(1577f, -1000f)), vec2<f32>(-215f, -1413f)), !arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(716f, -302f) + vec2<f32>(123f, -560f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, -574f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, 1200f) + vec2<f32>(935f, 1300f)))))), u_input.b, !global0.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 353f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2345f, -1227f)) + _wgslsmith_div_f32(1000f, -906f))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(11951u, 6624u, 41808u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 7103u, u_input.a.x) ^ vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b), vec4<u32>(4294967295u, u_input.a.x, 1u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.a.x, 36525u, 6657u, u_input.b)))), any(select(func_3(), vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, false))) & all(!(!vec3<bool>(false, global0.x, global0.x))));
    let var_1 = select(global0.zx, !vec2<bool>(false, !(!arg_0)), select(global0.xy, !global0.yz, any(select(vec3<bool>(arg_0, global0.x, var_0.c), vec3<bool>(false, var_0.c, false), vec3<bool>(true, false, false))) & true));
    return _wgslsmith_f_op_f32(min(-713f, var_0.a.x));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1160f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f * arg_0))))), 905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f * _wgslsmith_f_op_f32(-832f - arg_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.x)))));
    global0 = vec3<bool>(false, !(true | global0.x), global0.x);
    var var_1 = ~((arg_1 ^ _wgslsmith_mod_u32(countOneBits(22501u), 79882u)) ^ ~u_input.a.x);
    let var_2 = 10999i;
    global0 = !select(!select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, true)), !vec3<bool>(false, global0.x, global0.x), func_3()), !vec3<bool>(true, all(vec3<bool>(false, false, true)), any(vec2<bool>(global0.x, true))), select(vec3<bool>(any(vec4<bool>(true, false, true, global0.x)), u_input.a.x > 86399u, true), func_3(), select(select(vec3<bool>(global0.x, true, false), vec3<bool>(false, true, global0.x), global0.x), !vec3<bool>(true, true, global0.x), true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.wy - vec2<f32>(arg_0, -686f)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -1833f), !any(vec3<bool>(global0.x, global0.x, true))))), ~min(firstTrailingBit(vec4<u32>(1u, arg_1, arg_1, arg_1)), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 32069u))) >> (vec4<u32>(u_input.b, _wgslsmith_div_u32(arg_1, 39994u), ~(arg_1 ^ arg_1), _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(1u, 1u, u_input.b))) % vec4<u32>(32u)));
}

fn func_1() -> i32 {
    let var_0 = ~reverseBits(_wgslsmith_mod_vec3_i32(~(vec3<i32>(35640i, u_input.d, 2147483647i) >> (u_input.a % vec3<u32>(32u))), ~vec3<i32>(u_input.d, u_input.c.x, u_input.d)));
    var var_1 = func_4(_wgslsmith_f_op_f32(137f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(any(vec3<bool>(false, global0.x, true))))))), 4294967295u, _wgslsmith_mult_vec3_i32(max(_wgslsmith_add_vec3_i32(var_0, var_0), (var_0 | var_0) & vec3<i32>(-51304i, u_input.c.x, 2147483647i)), -var_0), Struct_4(Struct_2(~(-u_input.d)), Struct_2(var_0.x)));
    global0 = vec3<bool>(false, global0.x, any(vec4<bool>(global0.x, true, true || (global0.x || global0.x), any(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, false, false, true), global0.x)))));
    let var_2 = vec3<u32>(firstLeadingBit(~min(select(var_1.b.x, 20399u, global0.x), ~var_1.b.x)), 4294967295u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, var_1.b.x))), _wgslsmith_clamp_vec4_u32(~(~var_1.b), func_4(var_1.a.x, 9783u, var_0, Struct_4(Struct_2(-1i), Struct_2(var_0.x))).b, abs(vec4<u32>(u_input.a.x, u_input.b, 0u, u_input.a.x)))));
    global2 = array<Struct_1, 26>();
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(abs(func_1())), Struct_2(u_input.c.x));
    var var_1 = ~u_input.a.yx;
    global1 = !(!all(vec2<bool>(global0.x, true)) & global0.x);
    global1 = global0.x;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1730f - 1813f), 438f), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1204f, 1517f) + vec2<f32>(1000f, 1363f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, 477f) - vec2<f32>(1000f, 117f))))), _wgslsmith_div_u32(1u, u_input.b), !all(global0.zy), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1757f)))), _wgslsmith_dot_vec2_u32(~(~u_input.a.xz), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 11748u), max(var_1.x, var_1.x))), -vec3<i32>(i32(-1i) * -1i, -72856i >> (u_input.a.x % 32u), 1i), Struct_4(var_0.a, var_0.a)), true);
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -(~(-50798i)), _wgslsmith_div_i32(-u_input.c.x, abs(var_0.b.a))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(-643i, var_0.a.a, u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 5311i, 2147483647i), vec3<i32>(u_input.d, var_0.b.a, -2147483647i))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(-1i, u_input.d, 2147483647i), vec3<i32>(-3705i, 14859i, u_input.c.x)), -vec3<i32>(-12148i, 6590i, u_input.c.x)))) & countOneBits(select(reverseBits(abs(vec3<i32>(2147483647i, u_input.d, 2147483647i))), vec3<i32>(35884i & u_input.d, -11688i, i32(-1i) * -2147483647i), !(var_0.b.a < var_0.b.a)));
    var var_4 = reverseBits(0u);
    var_4 = 9554u;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

