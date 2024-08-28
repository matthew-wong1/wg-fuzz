struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-801f, 1378f, -962f, -852f, 1416f, -1514f, -141f, 803f, 473f, -774f, -397f, -498f);

var<private> global1: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1605f, global0[_wgslsmith_index_u32(~1u, 12u)])), arg_0.d)) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_0.b, arg_0.b) >> (vec2<u32>(arg_0.b, 26294u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.b), vec2<u32>(29582u, 3045u))), 12u)])));
    let var_1 = ~_wgslsmith_div_i32(26887i, -45804i);
    var var_2 = Struct_4(abs(-(firstTrailingBit(arg_0.c.wx) & ~vec2<i32>(-4236i, -1i))));
    var_0 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a, arg_0.b), ~(~min(u_input.a, 4294967295u))), 12u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~arg_0.b, 12u)])))));
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(round(arg_0.d));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = !(!select(vec4<bool>(74942i >= u_input.b, arg_2.x, true, true), vec4<bool>(u_input.a > u_input.a, any(vec2<bool>(arg_2.x, false)), arg_2.x, !arg_2.x), arg_2.x));
    global1 = ~(-(u_input.b | 19585i));
    global0 = array<f32, 12>();
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(~(-4058i), 1i, ~u_input.b) >> ((vec3<u32>(u_input.a, u_input.a, 0u) ^ ~vec3<u32>(u_input.a, 13277u, 1745u)) % vec3<u32>(32u)), select(-vec3<i32>(u_input.b, u_input.b, 12324i), _wgslsmith_mod_vec3_i32(vec3<i32>(92545i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 58386i)), vec3<bool>(false, arg_2.x, true)) << (~(~vec3<u32>(u_input.a, 20124u, u_input.a)) % vec3<u32>(32u)), var_0.yxx), firstLeadingBit(vec3<i32>(-u_input.b, _wgslsmith_mod_i32(abs(0i), min(u_input.b, u_input.b)), -8029i)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_4(-vec2<i32>(firstTrailingBit(u_input.b) << (1200u % 32u), -21070i));
    global0 = array<f32, 12>();
    global1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(false, u_input.a, vec4<i32>(u_input.b, 1i, -2147483647i, -2147483647i), 230f)))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(9126u, 12u)]))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), global0[_wgslsmith_index_u32(u_input.a, 12u)], -610f, arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, arg_0, arg_0, 378f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-899f, 278f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(18724u, 12u)], -112f, global0[_wgslsmith_index_u32(4294967295u, 12u)], -414f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(u_input.a, 12u)], arg_0)))), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), !(global0[_wgslsmith_index_u32(u_input.a, 12u)] != -441f), all(vec3<bool>(true, true, true))))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)))), false));
    return vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 879u, 0u), abs(~vec4<u32>(30959u, 45u, 107917u, u_input.a))), 27908u, u_input.a, ~_wgslsmith_mod_u32(u_input.a, ~(~4294967295u)));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = vec4<bool>(select(false, false, select(true, (arg_2.x <= arg_2.x) || false, select(global0[_wgslsmith_index_u32(arg_0.x, 12u)] > global0[_wgslsmith_index_u32(arg_0.x, 12u)], true, all(vec3<bool>(true, false, false))))), ((u_input.a ^ firstTrailingBit(4294967295u)) ^ arg_1) >= _wgslsmith_clamp_u32(arg_1, 1u, 1u), any(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), (u_input.b != arg_3) & true, true, global0[_wgslsmith_index_u32(~arg_0.x, 12u)] > _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 12u)])))), true);
    var var_2 = _wgslsmith_f_op_f32(-arg_2.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 700f) - _wgslsmith_f_op_f32(-510f + -313f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.x, 0u, vec4<i32>(42159i, 0i, arg_3, 24162i), 169f))))), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)))));
    return Struct_2(Struct_1(!(_wgslsmith_add_i32(var_0, var_0) >= _wgslsmith_add_i32(2147483647i, var_0)), _wgslsmith_dot_vec4_u32(vec4<u32>(~34304u, ~0u, _wgslsmith_mult_u32(arg_0.x, 48819u), arg_1), arg_0), -(vec4<i32>(-1i) * -vec4<i32>(-16473i, -6710i, 33092i, -88282i)), global0[_wgslsmith_index_u32(85712u, 12u)]), _wgslsmith_sub_u32(74110u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(344f - -699f))).x), arg_2, vec3<i32>(var_0, ~abs(arg_3), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 12u)]), 1867f), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(floor(1339f)), -985f), vec3<bool>(false, !var_1.x, true))), var_1.x);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = 0u;
    var var_1 = Struct_3(vec3<bool>(!arg_1.a.a || arg_0.e, false, any(select(select(vec4<bool>(true, arg_0.a.a, false, true), vec4<bool>(arg_0.a.a, arg_1.e, false, arg_0.a.a), arg_1.e), select(vec4<bool>(false, arg_1.a.a, true, arg_0.e), vec4<bool>(arg_0.a.a, true, arg_1.e, arg_1.a.a), arg_1.e), select(vec4<bool>(arg_1.e, arg_1.a.a, false, arg_0.e), vec4<bool>(arg_1.e, true, arg_0.e, arg_1.a.a), arg_1.a.a)))));
    var var_2 = ~(-1i) << ((_wgslsmith_add_u32(u_input.a, arg_0.b) << (arg_1.a.b % 32u)) % 32u);
    global1 = func_5(~firstLeadingBit(~abs(vec4<u32>(var_0, var_0, arg_1.a.b, 0u))), ~(~(~arg_0.a.b)) ^ u_input.a, _wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, countOneBits(_wgslsmith_clamp_i32(2147483647i, arg_2.a.x, u_input.b))), _wgslsmith_dot_vec2_i32(~(~arg_0.d.yz), ~arg_1.d.zx & -arg_2.a))).a.c.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)) - vec2<f32>(_wgslsmith_f_op_f32(round(-1783f)), _wgslsmith_f_op_f32(arg_1.a.d + arg_1.c.x))), !(!select(vec2<bool>(arg_0.a.a, true), vec2<bool>(true, arg_0.e), var_1.a.x))))));
    return Struct_3(var_1.a);
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 12>();
    var var_0 = func_6(func_5(~_wgslsmith_add_vec4_u32(func_2(365f), vec4<u32>(u_input.a, 4294967295u, 1u, 88149u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 17473u), _wgslsmith_dot_vec4_u32(~vec4<u32>(3044u, 1u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, 65086u, u_input.a))), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 12u)] * _wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(func_3(Struct_1(false, 1u, vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), -557f)))), -2264i << (u_input.a % 32u)), func_5(vec4<u32>(_wgslsmith_sub_u32(~3209u, 39986u), u_input.a, (1u >> (u_input.a % 32u)) & _wgslsmith_mod_u32(u_input.a, u_input.a), ~func_5(vec4<u32>(u_input.a, 0u, 4294967295u, 35881u), 0u, vec2<f32>(-578f, global0[_wgslsmith_index_u32(u_input.a, 12u)]), -6046i).b), max(1u, ~35784u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 12u)])) - vec2<f32>(global0[_wgslsmith_index_u32(40175u, 12u)], 638f)))), select(u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-37365i, u_input.b)), vec2<i32>(1i, 1i)), true)), Struct_4(select(~select(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.b), false), vec2<i32>(~(-23896i), i32(-1i) * -14627i), ~u_input.a > ~66443u)), _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(0u), u_input.a), select(~vec2<u32>(46435u, u_input.a), func_2(global0[_wgslsmith_index_u32(19718u, 12u)]).xy & ~vec2<u32>(u_input.a, 28949u), true)));
    let var_1 = Struct_4(~firstTrailingBit(vec2<i32>(u_input.b & u_input.b, _wgslsmith_mod_i32(1i, u_input.b))));
    return func_5(vec4<u32>(37503u, abs(u_input.a), u_input.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(select(4465u, u_input.a, var_0.a.x), u_input.a), 17840u)), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 12u)] * -1994f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(62373u, 71458u), vec2<u32>(u_input.a, 1u)), 12u)])), 1000f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + 451f) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 12u)], -1367f)), -1000f))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(i32(-1i) * -2147483647i);
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, countOneBits(-2147483647i)), 0i), 0i | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b)) << (1u % 32u), -2147483647i));
    global1 = _wgslsmith_mult_i32(2147483647i, ~(~1i));
    let var_1 = func_1();
    let var_2 = var_1.a.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] - var_1.a.d), _wgslsmith_f_op_f32(trunc(-1052f)), _wgslsmith_f_op_f32(-var_1.c.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-261f * 1453f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_1.b, 12u)], var_1.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21144u, 52978u, 1u, var_1.b), vec4<u32>(u_input.a, 0u, 0u, 1u)), 12u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_5(select(abs(vec4<u32>(4405u, var_1.a.b, var_1.b, 70675u)), abs(vec4<u32>(24489u, 38364u, 1u, 13495u)), !vec4<bool>(var_2, var_2, false, true)), 23702u, var_1.c, 59876i).a.c), -var_1.d, ~(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, var_1.a.b), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)))));
}

