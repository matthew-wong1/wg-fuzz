struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 23658u, 48407u, 1u, 33258u, 54692u, 0u, 10653u, 0u, 1u, 45823u, 0u, 0u, 0u, 34359u, 1568u, 75371u, 4294967295u, 13572u, 0u, 4294967295u, 17432u, 4294967295u, 34269u, 96953u, 4294967295u);

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, false, true, true, true, false, true, true, false, true, true, true, false, true, false, true, false, false, true, true, true, false, true, false, true, false, false, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<bool, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-137f, -1031f), vec2<f32>(1885f, 327f)))))));
    global1 = array<bool, 31>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = vec4<u32>(0u, ~37307u, 1u, 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(535f, -1215f) + _wgslsmith_f_op_f32(ceil(1008f)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~_wgslsmith_add_i32(firstLeadingBit(0i), -(i32(-1i) * -32274i)));
    global0 = array<u32, 26>();
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_mult_i32(0i, var_0.a))));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + -345f)));
    var var_1 = func_2();
    var var_2 = arg_2;
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -arg_2.b.a.x, max(var_1.a, arg_2.b.a.x), ~_wgslsmith_mult_i32(arg_1.a, _wgslsmith_mod_i32(arg_1.a, var_1.a)), 0i), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.c.a.x, arg_1.a, ~arg_2.c.a.x, _wgslsmith_mod_i32(arg_2.b.a.x, -1i)), -vec4<i32>(var_2.a.a.x, arg_0.a, -2147483647i, 0i))));
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 59082u, 4294967295u) >> (vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, 0u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52648u, 26u)], 26u)], 4294967295u, 51927u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, _wgslsmith_div_u32(38923u, global0[_wgslsmith_index_u32(18276u, 26u)]), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 26u)], 0u), 837u), ~(~vec4<u32>(1u, u_input.a.x, 1u, 4464u)))), 31u)] || arg_2.b.d.x;
    return var_0;
}

fn func_1() -> f32 {
    global0 = array<u32, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1096f, _wgslsmith_f_op_f32(func_4(func_2(), func_2(), Struct_2(Struct_1(vec2<i32>(-14735i, 2147483647i), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false, global1[_wgslsmith_index_u32(49573u, 31u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 31u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 26u)], 31u)])), Struct_1(vec2<i32>(23475i, -2147483647i), vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], false), vec3<bool>(true, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), Struct_1(vec2<i32>(-7676i, 24149i), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 31u)], global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(18705u, 31u)], false, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), -1213f))))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global0 = array<u32, 26>();
    let var_0 = -_wgslsmith_clamp_i32(abs(-2147483647i), arg_1.a, abs(arg_2.a));
    global1 = array<bool, 31>();
    global0 = array<u32, 26>();
    return Struct_2(Struct_1(vec2<i32>(~countOneBits(arg_1.a), 2147483647i), vec3<bool>(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)) <= _wgslsmith_f_op_f32(ceil(-849f)), _wgslsmith_div_i32(43046i, var_0) > _wgslsmith_add_i32(arg_1.a, arg_2.a), false), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(8744u, 31u)], global1[_wgslsmith_index_u32(42809u, 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(6210u, 31u)], false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10988u, 26u)], 26u)], 31u)]), vec3<bool>(false, false, false), true)), select(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(26867u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 31u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(15302u, 31u)], false)), select(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6036u, 26u)], 26u)], 31u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 31u)]), false), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 31u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, global1[_wgslsmith_index_u32(67700u, 31u)]), true), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(22504u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], true, true), true), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 31u)]))), Struct_1(select(-(vec2<i32>(var_0, 32188i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), vec2<i32>(82195i, var_0 << (90549u % 32u)), !global1[_wgslsmith_index_u32(u_input.a.x, 31u)] && global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)] | 54944u, 31u)]), vec3<bool>(!global1[_wgslsmith_index_u32(1u, 31u)], !any(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 31u)], global1[_wgslsmith_index_u32(64245u, 31u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(26661u, 26u)]), ~17520u), 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], min(global0[_wgslsmith_index_u32(20534u, 26u)], u_input.a.x) != (u_input.a.x | u_input.a.x), false), select(vec3<bool>(true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(4783u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), !global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(true, !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1684u, 26u)], 26u)], 26u)], 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(20532u), 26u)], 31u)]), select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 31u)], true), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true), select(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 31u)], true), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6323u, 26u)], 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], true), true)))), Struct_1(~countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_2.a), vec2<i32>(var_0, 2147483647i))), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)], false))), !(!vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], 31u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), select(vec3<bool>(true, true, true), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], true, true)), false)), 1101f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<u32, 26>();
    var var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(683f, -1415f) * _wgslsmith_f_op_f32(select(-1303f, 191f, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), Struct_3(-_wgslsmith_dot_vec2_i32(vec2<i32>(29552i, -2147483647i), vec2<i32>(-1i, 2147483647i)) ^ (firstTrailingBit(2147483647i) ^ -70509i)), func_2());
    global0 = array<u32, 26>();
    let var_2 = Struct_2(func_5(-1754f, func_2(), Struct_3(var_1.c.a.x)).a, func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(ceil(1508f))), Struct_3(min(-35760i, 0i)), func_2()).b, var_1.c, _wgslsmith_f_op_f32(-var_1.d));
    global1 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(14602u);
}

