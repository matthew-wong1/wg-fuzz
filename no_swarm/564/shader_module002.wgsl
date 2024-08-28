struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 6>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 6u)] + 1f)));
    return Struct_3(-44553i, firstLeadingBit(select(vec2<u32>(0u, min(1u, 94346u)), ~u_input.c, !global4.x)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u) | u_input.c.x, 2u)]), 1u, _wgslsmith_clamp_i32(_wgslsmith_div_i32(reverseBits(firstTrailingBit(u_input.a)), countOneBits(-47775i)), u_input.a, 1i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    global1 = abs(~(~select(vec3<u32>(u_input.c.x, 15604u, arg_2), vec3<u32>(arg_1.d, 0u, 1u), global4.x))) & min(vec3<u32>(abs(arg_1.d) | ~0u, 1u, ~func_2().b.x), countOneBits(vec3<u32>(reverseBits(40701u), ~43426u, 1u)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(292f, arg_1.c.x)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 6u)]))))), vec3<f32>(187f, global3[_wgslsmith_index_u32(arg_2, 6u)], 376f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-619f, arg_1.c.x, global2.a, global3[_wgslsmith_index_u32(u_input.c.x, 6u)]) * global0[_wgslsmith_index_u32(arg_2, 2u)]) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), 1695f, _wgslsmith_div_f32(arg_1.c.x, -1350f), global2.a))));
    var var_1 = ~0u;
    let var_2 = vec3<bool>(!(((global4.x && false) | (arg_0.x != -61319i)) | (global4.x || true)), true, true);
    global0 = array<vec4<f32>, 2>();
    return vec4<u32>(arg_2, global1.x << ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 50537u), u_input.c) ^ func_2().b.x) % 32u), firstTrailingBit(abs(u_input.c.x)) << (min(arg_2 >> (arg_1.d % 32u), ~4150u) % 32u), 1u) << (min(_wgslsmith_mod_vec4_u32(vec4<u32>(~global1.x, countOneBits(0u), arg_1.d, arg_1.b.x), abs(vec4<u32>(0u, arg_1.d, 1u, 1797u) | vec4<u32>(global1.x, 66789u, arg_1.b.x, 30338u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, u_input.c.x, u_input.c.x, 46885u) >> (vec4<u32>(u_input.c.x, 48640u, global1.x, arg_2) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 28519u, global1.x, 4294967295u), vec4<u32>(arg_1.d, global1.x, 4294967295u, arg_1.b.x), vec4<u32>(67078u, global1.x, 1u, u_input.c.x)))) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> vec2<u32> {
    global2 = Struct_1(-1257f);
    global3 = array<f32, 6>();
    global3 = array<f32, 6>();
    global4 = !vec2<bool>(!(-1243f <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 6u)])), false);
    var var_0 = ~u_input.c.x;
    return vec2<u32>(55306u, select(~(~global1.x), 4294967295u, global3[_wgslsmith_index_u32(0u, 6u)] < _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(sign(471f))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = func_4(22091i, select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 6946u, 2911u, global1.x) & vec4<u32>(global1.x, u_input.c.x, 1u, global1.x), select(vec4<u32>(1u, global1.x, u_input.c.x, 1u), vec4<u32>(3290u, 4294967295u, u_input.c.x, 29643u), vec4<bool>(true, global4.x, global4.x, true))), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 4294967295u), vec4<u32>(0u, global1.x, u_input.c.x, global1.x), vec4<u32>(u_input.c.x, u_input.c.x, 21698u, u_input.c.x)))), _wgslsmith_mod_vec4_u32(func_3(vec2<i32>(u_input.b, -1i) | vec2<i32>(0i, u_input.a), func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(109420u, 3609u), vec2<u32>(32063u, u_input.c.x))), select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(76835u, u_input.c.x, 1u, global1.x)), ~vec4<u32>(27976u, 4294967295u, 43057u, 1u), !vec4<bool>(arg_0.x, true, arg_0.x, true))), arg_0.x));
    var var_1 = Struct_1(global2.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1006f)) * 879f))))), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.a)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 6u)]))))));
    var var_3 = false && arg_0.x;
    global0 = array<vec4<f32>, 2>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, 4294967295u), vec3<u32>(global1.x, 22187u, 11605u)), 6u)]))), vec3<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0.x, _wgslsmith_div_u32(5554u, 1u), _wgslsmith_mult_u32(4294967295u, var_0.x)), 6u)], _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -867f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 2u)])) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 380f, -522f, var_2.x) + vec4<f32>(global3[_wgslsmith_index_u32(47292u, 6u)], var_2.x, -510f, var_1.a)), u_input.b > 21312i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global1.x, 2u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(true, global4.x));
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~24499u, ~53485u >> ((~9658u & (u_input.c.x & global1.x)) % 32u), global1.x ^ global1.x), ~(vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 37617u | global1.x, u_input.c.x & 0u) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 12426u, 1u), vec4<u32>(0u, 3255u, u_input.c.x, global1.x)), 4294967295u, ~global1.x) % vec3<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(var_0.a.a)));
    global0 = array<vec4<f32>, 2>();
    var var_2 = Struct_1(-1000f);
    var var_3 = select(select(!vec3<bool>(true, global4.x, global4.x), !select(!vec3<bool>(global4.x, false, global4.x), !vec3<bool>(false, global4.x, global4.x), select(vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, false, global4.x), global4.x)), select(!select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(false, global4.x, global4.x), true), vec3<bool>(false, !global4.x, global4.x), vec3<bool>(global4.x, all(vec2<bool>(global4.x, global4.x)), 13017u >= u_input.c.x))), select(select(vec3<bool>(true, true, true), vec3<bool>(!global4.x, true, global4.x | global4.x), !all(vec4<bool>(true, global4.x, global4.x, global4.x))), select(vec3<bool>(any(vec4<bool>(global4.x, false, false, global4.x)), global4.x, u_input.a == -7111i), vec3<bool>(any(vec4<bool>(global4.x, global4.x, false, global4.x)), global1.x <= 1366u, all(vec4<bool>(false, false, global4.x, true))), !select(vec3<bool>(global4.x, false, global4.x), vec3<bool>(global4.x, false, false), true)), !(!(!vec3<bool>(global4.x, global4.x, false)))), !select(!vec3<bool>(false, global4.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), global4.x), vec3<bool>(u_input.b >= u_input.b, !global4.x, global4.x)));
    global2 = var_0.a;
    var var_4 = -u_input.a;
    var var_5 = vec3<u32>(max(1u, 44955u) | u_input.c.x, ~global1.x, _wgslsmith_mod_u32(firstLeadingBit(u_input.c.x), ~27501u) ^ (u_input.c.x & u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, firstTrailingBit(u_input.b)), vec3<i32>(-2147483647i ^ u_input.a, -1i, 4755i) ^ vec3<i32>(-2147483647i, u_input.b, ~u_input.a)), _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(u_input.a, u_input.b, 2147483647i, 0i), vec4<i32>(u_input.b, u_input.a, u_input.a, -25214i), vec4<bool>(var_3.x, global4.x, true, global4.x)) ^ vec4<i32>(u_input.a, ~u_input.b, firstLeadingBit(41084i), u_input.b), countOneBits(~vec4<i32>(2147483647i, u_input.a, u_input.a, 16725i)) ^ vec4<i32>(min(-24792i, u_input.b), -u_input.a, _wgslsmith_mult_i32(2147483647i, 1i), 1i), ~vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), -u_input.b, ~u_input.b, max(2147483647i, 30674i))), -128f);
}

