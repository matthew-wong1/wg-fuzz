struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec3<bool>, 17>();
    var var_0 = Struct_1(!select(!(!vec2<bool>(arg_0.a.x, arg_0.a.x)), select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(false, arg_0.a.x), vec2<bool>(false, false)), true), (abs(countOneBits(vec3<u32>(arg_0.b.x, u_input.a, 0u))) >> (vec3<u32>(_wgslsmith_div_u32(arg_0.b.x, 0u), _wgslsmith_div_u32(u_input.a, 0u), 1u) % vec3<u32>(32u))) | ~vec3<u32>(~arg_0.b.x, ~26367u, ~u_input.a), _wgslsmith_add_vec4_u32(abs(arg_0.c & vec4<u32>(arg_0.b.x, 4402u, u_input.a, 4294967295u)) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(1u, arg_0.b.x, 47164u, arg_0.b.x), vec4<u32>(72073u, arg_0.b.x, arg_0.c.x, 1u) << (vec4<u32>(arg_0.b.x, u_input.a, 1u, 1u) % vec4<u32>(32u))), (vec4<u32>(u_input.a, arg_0.c.x, 44208u, 1u) | min(vec4<u32>(4294967295u, 61901u, 4294967295u, 1u), vec4<u32>(62634u, 1u, 1u, 4294967295u))) | arg_0.c));
    global0 = array<vec3<bool>, 17>();
    var var_1 = select(!var_0.a, vec2<bool>(arg_0.a.x, any(global0[_wgslsmith_index_u32(countOneBits(51805u), 17u)])), arg_0.a);
    var var_2 = Struct_1(vec2<bool>(all(!vec4<bool>(arg_0.a.x, var_0.a.x, true, var_1.x)), var_1.x), ~(~vec3<u32>(_wgslsmith_mult_u32(11286u, u_input.a), ~u_input.a, firstTrailingBit(u_input.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~var_0.c.x, 1u, ~51182u, max(5402u, u_input.a)), ((var_0.c & vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(7248u, var_0.b.x, 0u, 0u), vec4<u32>(4294967295u, var_0.b.x, 41109u, 87788u))) << (arg_0.c % vec4<u32>(32u)), var_0.c));
    return select(vec3<u32>(85143u, firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.b, ~vec3<u32>(var_0.c.x, 1u, u_input.a))), 1u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_0.c.x, countOneBits(5544u), ~46643u), var_0.b.x, select(min(arg_0.b.x, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, u_input.a, 4294967295u), var_2.b), true)), vec3<u32>(0u, _wgslsmith_clamp_u32(75759u >> (var_0.c.x % 32u), var_2.b.x, ~var_0.c.x), _wgslsmith_sub_u32(u_input.a, arg_0.c.x))), select(!select(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(43501u, var_2.b.x), 17u)], global0[_wgslsmith_index_u32(1080u, 17u)], select(vec3<bool>(var_1.x, arg_0.a.x, arg_0.a.x), global0[_wgslsmith_index_u32(1u, 17u)], false)), !(!select(global0[_wgslsmith_index_u32(var_2.b.x, 17u)], vec3<bool>(true, false, var_2.a.x), var_2.a.x)), !any(vec2<bool>(var_0.a.x, false))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: f32) -> bool {
    let var_0 = min(-(~vec3<i32>(4199i, -2147483647i, -35268i) ^ (-vec3<i32>(u_input.b.x, 0i, u_input.c) << (~vec3<u32>(u_input.a, 0u, arg_0.c.x) % vec3<u32>(32u)))), abs(~select(firstTrailingBit(vec3<i32>(9658i, u_input.c, -1i)), vec3<i32>(u_input.b.x, -1i, u_input.c), vec3<bool>(false, false, true))));
    global0 = array<vec3<bool>, 17>();
    let var_1 = u_input.b;
    var var_2 = arg_0;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(-1163f + arg_2), _wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1458f)) + _wgslsmith_f_op_f32(202f * arg_1)));
    return var_2.a.x;
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>(func_4(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), false), func_3(Struct_1(vec2<bool>(false, true), vec3<u32>(51221u, 61784u, 44194u), vec4<u32>(9149u, u_input.a, 1u, 9477u))), vec4<u32>(2620u, 52133u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1764f)), -371f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-277f, -714f, false))))), any(select(select(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(0u, 17u)], true), select(global0[_wgslsmith_index_u32(35926u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], true), vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, func_3(Struct_1(vec2<bool>(true, true), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 72834u, 1u, u_input.a))).x, reverseBits(u_input.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 40605u, 63796u), vec3<u32>(u_input.a, u_input.a, 11243u)), u_input.a, _wgslsmith_mod_u32(~u_input.a, u_input.a))), ~select(~vec4<u32>(4294967295u, 1u, 0u, 34596u), vec4<u32>(85u, u_input.a, 30031u, u_input.a), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)) & vec4<u32>(~(~20409u), 58114u, ~(~59929u), u_input.a));
    let var_1 = Struct_1(select(!(!(!var_0.a)), !var_0.a, all(select(vec2<bool>(false, false), var_0.a, true))), firstLeadingBit(var_0.b), _wgslsmith_mult_vec4_u32(vec4<u32>(21717u, u_input.a, var_0.c.x, 2102u), _wgslsmith_sub_vec4_u32(abs(var_0.c), vec4<u32>(90299u, var_0.c.x, 64843u, var_0.c.x))) ^ vec4<u32>(min(_wgslsmith_dot_vec3_u32(var_0.c.xyx, var_0.c.yxz), 0u), ~var_0.c.x | ~var_0.c.x, ~(~12533u), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1297f)) - _wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(-195f - 1447f)))));
    var var_3 = all(select(select(select(!vec2<bool>(var_0.a.x, var_0.a.x), select(var_0.a, var_0.a, false), true), select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, var_1.a.x), -418f < var_2), !func_4(var_1, var_2, var_2, -874f)), vec2<bool>(var_0.a.x, false), !var_1.a.x));
    global0 = array<vec3<bool>, 17>();
    return _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, min(51936u, ~4294967295u), var_1.c.x, _wgslsmith_mult_u32(27110u, 101547u) << (var_1.b.x % 32u)), var_1.c) | _wgslsmith_div_vec4_u32(firstTrailingBit(var_0.c ^ vec4<u32>(var_1.b.x, var_0.c.x, 24917u, u_input.a)), ~(~vec4<u32>(4294967295u, 4294967295u, 41420u, 95381u)));
}

fn func_1() -> vec4<u32> {
    var var_0 = true;
    var_0 = !(u_input.c != _wgslsmith_mult_i32(~u_input.b.x << (u_input.a % 32u), reverseBits(u_input.b.x)));
    return _wgslsmith_sub_vec4_u32(func_2(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 18505i, 0i)), ~firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 8777u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 17>();
    var var_0 = ~(~(~(~(~vec4<u32>(33320u, u_input.a, u_input.a, u_input.a)))));
    var_0 = max(~_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0.x, 1u, u_input.a) & vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.a), func_1()), _wgslsmith_div_vec4_u32(firstTrailingBit(select(~vec4<u32>(1u, u_input.a, var_0.x, var_0.x), ~vec4<u32>(4294967295u, var_0.x, 24181u, u_input.a), vec4<bool>(true, true, true, false))), vec4<u32>(u_input.a, u_input.a, reverseBits(_wgslsmith_mod_u32(var_0.x, u_input.a)), reverseBits(u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(715f, -1941f, _wgslsmith_f_op_f32(-1809f + 138f))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-889f, 970f), vec2<f32>(2293f, 1370f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-934f, -919f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1866f, -221f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1850f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -668f))))), u_input.b.x, countOneBits(-(max(u_input.b, u_input.b) & (u_input.b & vec2<i32>(-28006i, 0i)))));
}

