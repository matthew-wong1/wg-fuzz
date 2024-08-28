struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18444u;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec2<bool>, 16>;

var<private> global3: array<bool, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1143f - _wgslsmith_f_op_f32(-219f - 1297f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(-1393f, 190f)), _wgslsmith_f_op_f32(f32(-1f) * -958f)), vec2<f32>(_wgslsmith_f_op_f32(floor(955f)), _wgslsmith_f_op_f32(-351f - -297f))))));
    let var_2 = arg_2;
    var var_3 = Struct_1(vec4<bool>(select(!any(arg_0.a), arg_2.a.x, arg_2.a.x | var_0.a.x), var_0.a.x, var_2.a.x & false, (arg_0.a.x && arg_0.a.x) & any(!var_0.a.xzy)), -arg_0.b);
    var var_4 = Struct_1(vec4<bool>(var_1.x > var_1.x, arg_2.a.x, any(!select(global2[_wgslsmith_index_u32(arg_3, 16u)], vec2<bool>(false, arg_2.a.x), arg_2.a.xy)), true), (-1i >> (1u % 32u)) | -min(-var_3.b, u_input.b.x));
    return select(~(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, u_input.e, arg_3, arg_3)), select(vec4<u32>(u_input.c, u_input.c, u_input.c, 74305u), vec4<u32>(16428u, 47854u, 0u, 4294967295u), var_3.a.x))), reverseBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 70707u, arg_3, 0u), vec4<u32>(u_input.c, 48886u, 41124u, u_input.e))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(32855u, u_input.e, u_input.e, 14400u), vec4<u32>(27237u, arg_3, arg_3, 4294967295u))) % vec4<u32>(32u))), arg_0.a.x & select(true, true, !(arg_2.b != 30080i)));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, 132251u, u_input.a), vec4<u32>(60163u, 0u, u_input.e, u_input.a)), vec4<u32>(u_input.e, u_input.c, u_input.e, 4294967295u))), func_3(global1[_wgslsmith_index_u32(u_input.a, 31u)], vec4<i32>(min(u_input.b.x, -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, 2147483647i, u_input.b.x), u_input.d, u_input.d | u_input.b.x), u_input.b.x, firstLeadingBit(~u_input.b.x)), global1[_wgslsmith_index_u32(reverseBits(u_input.c), 31u)], _wgslsmith_add_u32(abs(select(u_input.e, 4294967295u, global3[_wgslsmith_index_u32(u_input.e, 21u)])), u_input.c)));
    var var_1 = Struct_1(!vec4<bool>(!any(global2[_wgslsmith_index_u32(var_0, 16u)]), !global3[_wgslsmith_index_u32(u_input.a, 21u)], (var_0 ^ 0u) >= 1u, !global3[_wgslsmith_index_u32(var_0 & 19492u, 21u)]), _wgslsmith_div_i32(u_input.b.x, abs(abs(min(41924i, u_input.b.x)))));
    var var_2 = -5109i;
    var var_3 = i32(-1i) * -2147483647i;
    var_2 = ~(min(38597i, _wgslsmith_div_i32(u_input.d, var_1.b)) >> (u_input.e % 32u));
    return var_0;
}

fn func_4(arg_0: i32, arg_1: bool) -> vec4<bool> {
    global0 = 1u;
    return select(select(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 21u)], arg_1, true, true)), vec4<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 16u)]), true, all(vec2<bool>(false, arg_1)), global3[_wgslsmith_index_u32(~4294967295u, 21u)]), !select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a, 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(arg_1, global3[_wgslsmith_index_u32(104486u, 21u)], global3[_wgslsmith_index_u32(46569u, 21u)], arg_1), vec4<bool>(true, false, arg_1, global3[_wgslsmith_index_u32(0u, 21u)]))), vec4<bool>(u_input.c < 0u, arg_1, true, true), !(!vec4<bool>(global3[_wgslsmith_index_u32(102927u, 21u)], true, global3[_wgslsmith_index_u32(u_input.e, 21u)], arg_1))), !select(select(select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(23056u, 21u)], false), vec4<bool>(true, false, arg_1, false), true), !vec4<bool>(arg_1, true, arg_1, true), all(vec4<bool>(arg_1, arg_1, true, arg_1))), select(vec4<bool>(true, true, arg_1, global3[_wgslsmith_index_u32(u_input.a, 21u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 21u)], false, true, arg_1), vec4<bool>(true, false, true, false), vec4<bool>(false, global3[_wgslsmith_index_u32(88014u, 21u)], false, global3[_wgslsmith_index_u32(6142u, 21u)])), vec4<bool>(false, false, arg_1, global3[_wgslsmith_index_u32(u_input.a, 21u)])), select(!vec4<bool>(true, false, global3[_wgslsmith_index_u32(0u, 21u)], arg_1), vec4<bool>(false, false, arg_1, arg_1), true)), global3[_wgslsmith_index_u32(~(1962u & u_input.a) | _wgslsmith_div_u32(1u, 55818u), 21u)]);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_mod_u32(u_input.c, 14697u);
    let var_1 = Struct_1(!func_4(arg_2, global3[_wgslsmith_index_u32(func_2(), 21u)] | (2147483647i == u_input.b.x)), -2147483647i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))), 1672f);
    let var_3 = ~4294967295u;
    var var_4 = ~(41778u & abs(var_0));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(-func_1(_wgslsmith_div_f32(1788f, -398f), !global3[_wgslsmith_index_u32(u_input.e, 21u)], ~(-6183i))) >> (0u % 32u);
    let var_1 = !all(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 21u)], global3[_wgslsmith_index_u32(32249u, 21u)])) & true;
    var var_2 = Struct_1(select(vec4<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, u_input.a), 21u)], func_4(u_input.b.x, var_1).x & true, select(var_1, false, global3[_wgslsmith_index_u32(~u_input.a, 21u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, ~26021u), 21u)]), !func_4(func_1(-269f, var_1, -1i), true), vec4<bool>(all(vec3<bool>(false, var_1, true)) && false, 4294967295u != _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.c), !all(vec4<bool>(true, var_1, false, true)), (false && var_1) | all(vec2<bool>(true, var_1)))), u_input.b.x);
    let var_3 = !var_1;
    var var_4 = global1[_wgslsmith_index_u32(u_input.e, 31u)];
    let var_5 = Struct_1(func_4(-countOneBits(-6793i), any(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 21u)], var_1, all(var_4.a.wyw)))), select(~(-var_2.b), u_input.b.x, true));
    var var_6 = max(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.a, 1u)), (vec2<u32>(11224u, 4294967295u) >> (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u))) ^ abs(vec2<u32>(75313u, 29322u))) & u_input.c, abs(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)), -1i);
}

