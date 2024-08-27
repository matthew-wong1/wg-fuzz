struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 24891u;

var<private> global2: array<i32, 25>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_1(countOneBits(~min(~arg_0.a, arg_0.a)), select(u_input.b.yy, _wgslsmith_div_vec2_i32(u_input.b.yx | u_input.b.yz, u_input.a) ^ ~(vec2<i32>(15593i, global2[_wgslsmith_index_u32(0u, 25u)]) | u_input.a), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), false), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.a, 27u)]))) + -277f), global3[_wgslsmith_index_u32(arg_0.a, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(80060u, 1u) >> (_wgslsmith_mod_u32(arg_0.a, arg_0.a) % 32u), 27u)]) - global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 37442u), vec3<u32>(arg_0.a, arg_0.a, arg_0.a)), max(vec3<u32>(4294967295u, 31082u, 0u), vec3<u32>(arg_0.a, 0u, 66139u))), 27u)]));
    var var_1 = min(~(~(vec2<u32>(17497u, 2160u) << (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u)))) << (~vec2<u32>(~arg_0.a, 0u) % vec2<u32>(32u)), abs(countOneBits(~vec2<u32>(0u, 7610u))));
    var var_2 = vec2<i32>(-1i) * -var_0.b;
    global0 = ~reverseBits(~var_0.a);
    let var_3 = _wgslsmith_div_u32(~1u, min(35356u, max(_wgslsmith_sub_u32(var_1.x, 1u), abs(24756u)))) << (var_0.a % 32u);
    return global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(550u, ~var_3), abs(_wgslsmith_div_u32(80266u, min(var_3, 10867u) & 18184u)), ~(~5195u)), 27u)];
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    let var_0 = Struct_3(Struct_2(-874f, Struct_1(~firstTrailingBit(4294967295u), u_input.b.zy, global3[_wgslsmith_index_u32(~(~4294967295u), 27u)], _wgslsmith_f_op_f32(f32(-1f) * -1948f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(96709u, 27u)] - _wgslsmith_f_op_f32(func_3(Struct_4(69426u)))), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_f32(trunc(-195f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(52366u, 27u)]) + global3[_wgslsmith_index_u32(14361u, 27u)]))));
    let var_1 = !(!(!(var_0.a.c <= 144f)));
    global0 = ~23944u & _wgslsmith_clamp_u32(1u, ~var_0.a.b.a, min(_wgslsmith_add_u32(15799u, 10062u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.b.a, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.b.a, var_0.a.b.a, var_0.a.b.a), vec3<u32>(48816u, 1u, var_0.a.b.a)))));
    global3 = array<f32, 27>();
    var var_2 = any(select(!(!select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), false)), select(!select(vec2<bool>(true, var_1), vec2<bool>(false, true), vec2<bool>(true, true)), !select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1)), vec2<bool>(any(vec2<bool>(true, false)), var_1 && var_1)), vec2<bool>(26408i <= _wgslsmith_sub_i32(u_input.b.x, -26198i), any(select(vec4<bool>(true, var_1, false, true), vec4<bool>(true, var_1, var_1, false), var_1)))));
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.b.a, 4294967295u), 27u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.a.b.a, 27u)]))) + global3[_wgslsmith_index_u32(max(4294967295u, var_0.a.b.a & var_0.a.b.a), 27u)]), -970f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(7850u, 27u)], 760f) - vec2<f32>(global3[_wgslsmith_index_u32(0u, 27u)], 554f)))) + _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(34462i, 4985i)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 162f), vec2<f32>(297f, -1890f))))))));
    return Struct_1(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1.a, 1u, 4294967295u), vec3<u32>(arg_1.a, 48599u, 5588u), false), abs(firstTrailingBit(vec3<u32>(arg_1.a, 95486u, arg_1.a)))) & arg_1.a, vec2<i32>(~_wgslsmith_clamp_i32(-1i, -global2[_wgslsmith_index_u32(arg_1.a, 25u)], 2147483647i), 1i), 205f, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(1u);
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-626f)), 1f), -1675f), func_1(~(u_input.a & vec2<i32>(global2[_wgslsmith_index_u32(43182u, 25u)], u_input.b.x)), Struct_4(var_0.a), 2147483647i, ~0i), -1523f, vec4<f32>(-328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 27u)]) * _wgslsmith_f_op_f32(select(504f, global3[_wgslsmith_index_u32(var_0.a, 27u)], false))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -396f)), -1541f)));
    var var_2 = func_1(firstTrailingBit(u_input.a), Struct_4(var_1.a.b.a), global2[_wgslsmith_index_u32(var_1.a.b.a, 25u)], abs(func_1(u_input.b.xz, Struct_4(_wgslsmith_mult_u32(5653u, var_0.a)), -53386i, -1i).b.x));
    var var_3 = select(select(select(vec4<bool>(var_2.b.x != var_1.a.b.b.x, u_input.a.x > 1i, true, false), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), 0u != min(var_1.a.b.a, var_2.a)), vec4<bool>(true, true, true, true), !(!select(true, false, false))), !select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -165f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.c, 1588f)) + var_1.a.d.x)));
    global2 = array<i32, 25>();
    var var_4 = min(var_2.b.x, var_2.b.x);
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c))), func_1(var_2.b, Struct_4(var_1.a.b.a), func_1(var_1.a.b.b, Struct_4(~var_2.a), ~reverseBits(global2[_wgslsmith_index_u32(97846u, 25u)]), ~(i32(-1i) * -1i)).b.x, reverseBits(_wgslsmith_mod_i32(-1i, -14061i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.d + 1450f))), -1343f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.a.d, var_1.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-43180i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1131i, -2147483647i ^ u_input.b.x), firstLeadingBit(-u_input.b)), 23937i, -2147483647i), 373f, vec2<u32>(15508u, 1u));
}

