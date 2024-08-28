struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true));

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: array<f32, 28>;

var<private> global4: array<vec3<i32>, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(abs(_wgslsmith_mult_u32(reverseBits(89589u) << (u_input.a % 32u), ~_wgslsmith_sub_u32(u_input.a, 1u))), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a) >> (u_input.a % 32u), _wgslsmith_clamp_u32(countOneBits(0u), 29275u, firstLeadingBit(u_input.a))), 0u), 4294967295u, 4294967295u);
    let var_1 = ~(-1i);
    let var_2 = global0[_wgslsmith_index_u32(40293u, 3u)];
    global1 = array<vec4<bool>, 12>();
    let var_3 = !(!var_2.c);
    return var_1;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(vec4<i32>(3526i, _wgslsmith_sub_i32(-arg_0.a.x, ~arg_0.a.x) << ((4294967295u ^ arg_0.b.x) % 32u), func_3(), arg_0.a.x), abs(vec2<u32>(abs(_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, u_input.a)), ~22628u)), any(!global1[_wgslsmith_index_u32(u_input.a & max(1u, arg_0.b.x), 12u)]));
    global3 = array<f32, 28>();
    global0 = array<Struct_1, 3>();
    let var_1 = Struct_1(select(vec4<i32>(1i, i32(-1i) * -1i, var_0.a.x, select(17400i, func_3(), true)), -var_0.a, vec4<bool>(!all(global1[_wgslsmith_index_u32(u_input.a, 12u)]), true, var_0.c & (var_0.c & false), false)), vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(11520u, 26813u, 0u), vec3<u32>(u_input.a, arg_0.b.x, 38158u))) & firstLeadingBit(~var_0.b), select(any(select(vec4<bool>(true, true, true, var_0.c), vec4<bool>(var_0.c, true, true, arg_0.c), arg_0.c)), false, any(select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, var_0.c), arg_0.c))));
    return Struct_2(arg_0, select(!vec3<bool>(any(vec3<bool>(arg_0.c, var_0.c, false)), true, false), select(!vec3<bool>(var_0.c, false, arg_0.c), vec3<bool>(all(vec3<bool>(true, var_0.c, false)), arg_0.c, global3[_wgslsmith_index_u32(var_1.b.x, 28u)] == 1469f), vec3<bool>(all(vec4<bool>(var_0.c, var_0.c, true, false)), true, select(var_1.c, var_1.c, true))), !(!select(vec3<bool>(var_0.c, var_1.c, true), vec3<bool>(false, var_1.c, true), var_1.c))), arg_0.c);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(~83578u, ~11265u, ~16569u) & vec3<u32>(~4294967295u, _wgslsmith_add_u32(91286u, u_input.a), ~4294967295u)), vec3<u32>(4294967295u << (~(~u_input.a) % 32u), 1u, _wgslsmith_div_u32(34366u, ~(~10315u))));
    let var_1 = func_2(Struct_1(max(vec4<i32>(-2147483647i, select(-1i, 5959i, false), 1i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(31386i, 15795i, 2825i, 23118i), ~vec4<i32>(24613i, 55715i, 2147483647i, -22101i))), select(vec2<u32>(var_0, 57989u), abs(vec2<u32>(2420u, 77135u)), select(true, u_input.a != 0u, true)), true));
    var var_2 = Struct_2(func_2(func_2(Struct_1(abs(vec4<i32>(-2147483647i, -2147483647i, -51421i, var_1.a.a.x)), select(vec2<u32>(81293u, var_1.a.b.x), vec2<u32>(var_1.a.b.x, var_0), vec2<bool>(var_1.a.c, false)), true)).a).a, select(select(vec3<bool>(true, true, var_1.c), select(!var_1.b, vec3<bool>(true, false, var_1.a.c), var_1.b), var_1.b), vec3<bool>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(2587u, 28u)]) > global3[_wgslsmith_index_u32(4294967295u, 28u)], true, false), any(var_1.b.xy)), !(var_1.c || (var_1.a.a.x <= abs(var_1.a.a.x))));
    var var_3 = !var_2.c;
    return var_2.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 12u)];
    var var_1 = _wgslsmith_mod_i32(func_1(), _wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(1i, 1i)), -vec2<i32>(i32(-1i) * -2147483647i, firstTrailingBit(-3107i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 28u)])))) - global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(28416u, u_input.a, 57227u), vec3<u32>(u_input.a, 12680u, 10812u)), 28u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(26312u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 28u)] * global3[_wgslsmith_index_u32(u_input.a, 28u)]) + 520f)), !var_0.x)) + global3[_wgslsmith_index_u32(29875u, 28u)]);
    var_0 = vec4<bool>(true, false, var_0.x, (global3[_wgslsmith_index_u32(u_input.a, 28u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1660f, global3[_wgslsmith_index_u32(4294967295u, 28u)])) + var_2)) && false);
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(-2147483647i), -32135i), -abs(-16556i)), _wgslsmith_dot_vec4_i32(vec4<i32>(18643i, 0i, 89270i, -1i), vec4<i32>(1i, 1i, 1i, 1i)) & 49628i, -2147483647i, 1i), vec2<u32>(u_input.a, 1700u), true);
    let var_4 = ~countOneBits(reverseBits(~var_3.b)) ^ ~var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-549f, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4606u, 28u)])), var_2)));
}

