struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a >> (global0.b.x % 32u), countOneBits(u_input.b.x & u_input.a), -(i32(-1i) * -28124i), global0.e), countOneBits(~(~vec4<i32>(global0.a, u_input.b.x, -24136i, global0.a)))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(u_input.c), ~vec2<u32>(4294967295u, 45288u)), ~vec2<u32>(26584u, arg_0) >> (select(abs(vec2<u32>(global0.b.x, arg_0)), ~global0.b, select(vec2<bool>(false, false), vec2<bool>(true, true), true)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, 610f, global0.c.x) + global0.c), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, -2051f), 1f))))), arg_1, 1i);
    global0 = Struct_1(_wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(-2147483647i, global0.e >> (global0.b.x % 32u), -2147483647i)), vec2<u32>(4294967295u, u_input.c.x), global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), global0.d)), -(~0i));
    global0 = Struct_1(55674i ^ u_input.e, max(~(vec2<u32>(1u, u_input.c.x) | global0.b), ~(~vec2<u32>(901u, global0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(abs(-1920f))), -1365f, _wgslsmith_f_op_f32(849f + -2441f)), _wgslsmith_f_op_f32(997f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(481f * arg_1), _wgslsmith_f_op_f32(f32(-1f) * -195f)))), _wgslsmith_sub_i32(select(max(u_input.e, ~(-2147483647i)), -25615i, false), u_input.a));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-358f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1004f))))))));
    let var_1 = select(_wgslsmith_add_vec4_u32(max(~(~vec4<u32>(global0.b.x, global0.b.x, 1u, arg_0)), vec4<u32>(firstLeadingBit(arg_0), ~global0.b.x, arg_0, _wgslsmith_sub_u32(26284u, 1u))), vec4<u32>(countOneBits(4294967295u), _wgslsmith_div_u32(1u, u_input.c.x), 27541u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 48972u, u_input.c.x, 73149u), abs(vec4<u32>(4294967295u, global0.b.x, arg_0, 0u))))), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(77881u, global0.b.x, u_input.c.x, 54694u), vec4<u32>(135748u, global0.b.x, global0.b.x, global0.b.x) >> (vec4<u32>(24634u, u_input.c.x, arg_0, u_input.c.x) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(u_input.c.x, 1u, 18385u, u_input.c.x)) % vec4<u32>(32u))), any(vec2<bool>(true, true)));
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(11449i, global0.a, global0.a), ~vec3<i32>(u_input.a, global0.e, -38167i))), select(_wgslsmith_div_i32(u_input.e, -u_input.d), _wgslsmith_clamp_i32(global0.e >> (67428u % 32u), firstLeadingBit(-14283i), -2147483647i >> (u_input.c.x % 32u)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))), 24553i);
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_5 {
    global0 = Struct_1(_wgslsmith_div_i32(func_3(1u, -302f), 1i), countOneBits(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(11628u, 0u, global0.b.x, u_input.c.x), vec4<u32>(0u, 1u, global0.b.x, u_input.c.x))) & vec2<u32>(22724u, _wgslsmith_dot_vec4_u32(vec4<u32>(15423u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(arg_0.b.x, 30471u, 0u, 44800u)))), arg_0.a.c, -400f, _wgslsmith_div_i32(abs(-_wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.xx)), reverseBits(u_input.d)));
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(u_input.b.x, global0.a)), ~(2147483647i | arg_0.a.a)), countOneBits(1i)), global0.b, _wgslsmith_f_op_vec3_f32(abs(arg_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_0.a.c.x))), _wgslsmith_mod_i32(firstLeadingBit(func_3(4294967295u, -496f) ^ global0.a), global0.a));
    global0 = Struct_1(firstLeadingBit(34411i), vec2<u32>(_wgslsmith_mod_u32(~arg_0.a.b.x, 4294967295u) << (u_input.c.x % 32u), arg_0.a.b.x >> (~global0.b.x % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.x + _wgslsmith_f_op_f32(arg_0.a.c.x - -380f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d)) - _wgslsmith_f_op_f32(f32(-1f) * -1298f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 1562f) + global0.d)), 1312f), _wgslsmith_f_op_f32(-arg_0.a.d), global0.a);
    var var_0 = 17458i;
    let var_1 = 4294967295u;
    return Struct_5(Struct_2(_wgslsmith_sub_u32(arg_0.a.b.x, reverseBits(u_input.c.x)), 31905u), arg_0, _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(~(-3454i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a, u_input.a), vec2<i32>(2147483647i, -1i)), 0i, -2147483647i)), -firstTrailingBit(reverseBits(vec4<i32>(0i, u_input.e, global0.e, arg_0.a.a)))), firstLeadingBit(u_input.c.x), Struct_4(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, all(vec4<bool>(false, false, false, true)))), Struct_3(arg_0.a, ~firstTrailingBit(arg_0.b))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    var var_0 = 1897f;
    global0 = arg_1.a;
    var var_1 = func_2(arg_1, arg_2.x);
    var_1 = func_2(var_1.e.b, -1183f);
    return -firstLeadingBit(min(_wgslsmith_add_i32(2147483647i, u_input.e), ~2147483647i) << ((arg_1.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, global0.b.x), vec4<u32>(arg_1.b.x, 0u, arg_1.b.x, global0.b.x)) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d, global0.c.x)) - 1000f);
    let var_1 = Struct_2(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(0u, select(1u, u_input.c.x, true) & 4294967295u, abs(5151u))), 0u);
    let var_2 = vec2<i32>(abs(countOneBits(_wgslsmith_sub_i32(27364i, 1i))), -u_input.b.x);
    let var_3 = true;
    global0 = Struct_1(countOneBits(abs(-(~1i))), u_input.c | ~max(_wgslsmith_add_vec2_u32(vec2<u32>(35476u, 1u), vec2<u32>(global0.b.x, u_input.c.x)), ~u_input.c), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.d, -1000f)), global0.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(global0.c.x * 447f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d))) - _wgslsmith_f_op_f32(f32(-1f) * -935f)), -220f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-137f * global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x)))))), reverseBits(firstLeadingBit(_wgslsmith_add_i32(func_1(Struct_4(vec3<bool>(true, false, true), Struct_3(Struct_1(var_2.x, vec2<u32>(var_1.a, 28638u), global0.c, -148f, -1i), vec2<u32>(var_1.a, 4294967295u))), Struct_3(Struct_1(global0.a, vec2<u32>(21681u, var_1.b), global0.c, 1105f, global0.a), vec2<u32>(var_1.a, 4294967295u)), vec2<f32>(global0.c.x, -1353f), var_2.x), -30070i))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, global0.c, vec3<bool>(!var_3, !var_3, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.c.x, global0.c.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, global0.c.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1087f, 726f, 1539f), vec3<f32>(global0.d, -610f, 416f))))), ~global0.b.x);
}

