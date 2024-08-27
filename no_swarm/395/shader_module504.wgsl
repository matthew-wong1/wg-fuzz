struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, vec2<f32>(-617f, -104f), Struct_1(vec3<f32>(-1789f, -103f, -611f), -35611i, vec2<f32>(-125f, -1000f), vec2<f32>(-2616f, 1081f)));

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1859f))));
    let var_1 = firstTrailingBit(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(~arg_1.c.b, firstLeadingBit(global0.c.b)), vec2<i32>(1i, 1i) | vec2<i32>(-42261i, arg_0.a))));
    var var_2 = vec2<f32>(-2627f, _wgslsmith_f_op_f32(min(-222f, _wgslsmith_f_op_f32(exp2(var_0)))));
    var_2 = vec2<f32>(264f, -1000f);
    let var_3 = true;
    return ~vec3<u32>(global0.a, arg_2, ~(~0u));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = abs(func_3(Struct_4(22873i), arg_1, ~_wgslsmith_mod_u32(arg_1.a, 632u)) ^ (~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 39091u, u_input.a), vec3<u32>(20611u, 0u, global0.a)) & max(reverseBits(vec3<u32>(arg_1.a, 37478u, global0.a)), ~vec3<u32>(u_input.a, u_input.a, 0u))));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(14193u, _wgslsmith_sub_u32(arg_1.a, min(arg_1.a, var_0.x)), ~firstTrailingBit(global0.a)), global0.a, ~(~u_input.a >> (global0.a % 32u)), ~29570u), vec4<u32>(63520u, 19490u, ~0u, abs(1u) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, arg_1.a), _wgslsmith_sub_u32(global0.a, global0.a)) % 32u)));
    global0 = arg_1;
    let var_2 = !(!global1.zy);
    global1 = !(!vec3<bool>(any(vec3<bool>(global1.x, global1.x, true)), var_2.x, var_2.x));
    return Struct_4(-2147483647i);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = !(!select(arg_0.xxy, select(vec3<bool>(true, false, global1.x), select(vec3<bool>(arg_0.x, true, global1.x), vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, arg_0.x)), arg_0.wwy), !arg_0.xyx));
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 43291u, arg_1), vec3<u32>(1u, global0.a, 0u) | vec3<u32>(arg_1, u_input.a, arg_1)), select(~(~vec3<u32>(76548u, 0u, u_input.a)), min(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(arg_1, 4994u, u_input.a)), select(select(var_0, vec3<bool>(var_0.x, false, global1.x), vec3<bool>(false, false, false)), !vec3<bool>(arg_0.x, arg_0.x, global1.x), !var_0))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(max(-847f, -570f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-847f, 1199f)), global0.c.d, vec2<bool>(false, global1.x)))))), global0.c);
    var var_1 = Struct_4(abs(arg_2.a));
    global1 = !vec3<bool>(!any(select(vec3<bool>(false, true, global1.x), arg_0.yyw, vec3<bool>(global1.x, true, arg_0.x))), any(vec3<bool>(select(var_0.x, var_0.x, global1.x), global1.x, true)), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.c.a, global0.c.a) - vec3<f32>(global0.c.a.x, -878f, global0.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), -1226f, global0.c.a.x), vec3<f32>(_wgslsmith_f_op_f32(global0.c.c.x * 266f), _wgslsmith_f_op_f32(-global0.b.x), -1030f)))), var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.c - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c.x, global0.c.d.x))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global0.c.a.x * global0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.x * global0.c.c.x), global0.b.x))))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = reverseBits(arg_0.b);
    global1 = !vec3<bool>(arg_0.b <= (~1i >> (1u % 32u)), global1.x, any(func_4(!vec4<bool>(false, global1.x, global1.x, false), ~arg_2, func_2(arg_0.d.x, Struct_3(4294967295u, global0.c.a.xz, Struct_1(global0.c.a, -52578i, global0.b, arg_0.c)), arg_0, vec3<f32>(global0.c.d.x, global0.c.a.x, global0.c.a.x)))));
    let var_1 = select(select(!vec4<bool>(true, true, !global1.x, false), !select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(global1.x, false, global1.x, global1.x)), select(select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, global1.x, global1.x, false), select(vec4<bool>(true, false, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x)), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true))), !global1.x)), select(select(vec4<bool>(false, 15462u < u_input.a, all(vec4<bool>(true, global1.x, true, global1.x)), any(vec2<bool>(true, global1.x))), vec4<bool>(true, global1.x, true, global1.x | false), 143539u <= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, u_input.a, global0.a), vec4<u32>(u_input.a, global0.a, 4294967295u, 316u))), select(!(!vec4<bool>(global1.x, false, true, true)), func_4(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, false)), 27351u >> (global0.a % 32u), func_2(global0.c.c.x, Struct_3(17933u, vec2<f32>(arg_0.c.x, 1489f), Struct_1(vec3<f32>(137f, 356f, 696f), arg_0.b, global0.c.a.zy, global0.c.c)), global0.c, vec3<f32>(arg_0.d.x, -301f, 950f))), vec4<bool>(true, true, false, arg_0.a.x < -106f)), func_4(vec4<bool>(all(vec3<bool>(global1.x, false, true)), arg_0.b != -6509i, any(vec4<bool>(global1.x, true, global1.x, global1.x)), !global1.x), ~arg_1, func_2(_wgslsmith_f_op_f32(-arg_0.c.x), Struct_3(0u, arg_0.c, Struct_1(global0.c.a, -1i, vec2<f32>(-191f, -1069f), vec2<f32>(arg_0.a.x, arg_0.a.x))), Struct_1(arg_0.a, arg_0.b, arg_0.d, global0.c.d), _wgslsmith_f_op_vec3_f32(-arg_0.a)))), true);
    var var_2 = global0.c.d.x;
    let var_3 = vec2<i32>(_wgslsmith_div_i32(global0.c.b, _wgslsmith_clamp_i32(-34955i, i32(-1i) * -34128i, arg_0.b)), var_0);
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_3 {
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1425f, _wgslsmith_f_op_f32(abs(global0.c.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(595f))), vec2<bool>(any(arg_0.c.xw), all(arg_0.c))))), global0.c);
    global0 = Struct_3(_wgslsmith_mult_u32(u_input.a, _wgslsmith_sub_u32(0u ^ countOneBits(global0.a), abs(u_input.a))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_1.yx, global0.b))), global0.c);
    var var_0 = vec2<u32>(~global0.a, ~(~34620u));
    let var_1 = false;
    var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.x, 4294967295u), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 61020u), vec2<u32>(global0.a, u_input.a))) << (vec2<u32>(1u, ~var_0.x) % vec2<u32>(32u));
    return Struct_3(firstTrailingBit(var_0.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.c.x, arg_1.x))))))), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(max(-global0.c.b, min(global0.c.b, 0i >> (global0.a % 32u))), 2147483647i, vec4<bool>(global1.x && (-35665i > global0.c.b), !func_1(Struct_1(global0.c.a, global0.c.b, vec2<f32>(1162f, global0.c.a.x), global0.c.d), 16435u, 46281u), false, any(vec3<bool>(global1.x, global1.x, global1.x)) || global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(-global0.c.d.x), all(!vec3<bool>(true, global1.x, true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(651f, _wgslsmith_f_op_f32(sign(global0.c.a.x)))) * _wgslsmith_f_op_f32(select(global0.c.c.x, _wgslsmith_f_op_f32(-513f * global0.c.c.x), !global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.b.x)), -1891f, global1.x)))));
    let var_0 = Struct_4(-8765i);
    global0 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.a, global0.a) | func_3(var_0, Struct_3(4294967295u, vec2<f32>(-1000f, global0.b.x), global0.c), global0.a).x, abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), func_5(Struct_2(38458i, ~global0.c.b, vec4<bool>(global1.x, false, true, true), _wgslsmith_f_op_f32(global0.c.a.x + global0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1131f, 443f, 1702f) - vec3<f32>(global0.b.x, global0.c.d.x, global0.b.x))).a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(global0.c.d.x)), -540f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), func_5(Struct_2(global0.c.b, -1i, vec4<bool>(true, global1.x, global1.x, global1.x), global0.c.c.x), global0.c.a).c.a.x)))), global0.c);
    global0 = func_5(Struct_2(global0.c.b, _wgslsmith_add_i32(global0.c.b, ~0i) ^ global0.c.b, select(!(!vec4<bool>(true, global1.x, true, true)), !(!vec4<bool>(global1.x, false, false, false)), !select(vec4<bool>(true, global1.x, true, true), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, false, false))), global0.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c.d.x), func_5(Struct_2(global0.c.b, var_0.a, vec4<bool>(global1.x, true, false, true), global0.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(1945f, -439f, -1510f), vec3<f32>(782f, 598f, -1956f))).b.x, global0.c.a.x)));
    let var_1 = abs(-2147483647i);
    let var_2 = _wgslsmith_div_f32(181f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-807f, -1080f))));
    global1 = vec3<bool>(true | global1.x, global1.x, !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-(~4464i))), select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(44723u, global0.a, global0.a, 35499u)), ~vec4<u32>(u_input.a, global0.a, 20439u, u_input.a) | vec4<u32>(21347u, global0.a, 23783u, 64623u)), vec4<u32>(global0.a, ~u_input.a, 1u, 11565u), !(!select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)))));
}

