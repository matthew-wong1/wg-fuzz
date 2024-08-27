struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(291f, -801f, 310f, 1000f);

var<private> global1: array<i32, 6>;

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec2<i32>(-51i, -1i)), Struct_4(vec2<i32>(-4196i, 2147483647i)), Struct_4(vec2<i32>(-1i, 3041i)), Struct_4(vec2<i32>(-77202i, 0i)), Struct_4(vec2<i32>(-8738i, -1i)), Struct_4(vec2<i32>(-1i, -29266i)), Struct_4(vec2<i32>(31388i, -1i)), Struct_4(vec2<i32>(17218i, -37685i)), Struct_4(vec2<i32>(0i, 110i)), Struct_4(vec2<i32>(-21746i, i32(-2147483648))), Struct_4(vec2<i32>(-1i, i32(-2147483648))), Struct_4(vec2<i32>(0i, i32(-2147483648))), Struct_4(vec2<i32>(-62792i, -75444i)), Struct_4(vec2<i32>(1i, 1i)), Struct_4(vec2<i32>(0i, 0i)), Struct_4(vec2<i32>(i32(-2147483648), 0i)), Struct_4(vec2<i32>(-17917i, 0i)), Struct_4(vec2<i32>(i32(-2147483648), 1i)), Struct_4(vec2<i32>(10086i, 38415i)), Struct_4(vec2<i32>(-1i, 2147483647i)), Struct_4(vec2<i32>(-38576i, 1i)));

var<private> global4: i32 = -44011i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> u32 {
    return _wgslsmith_mult_u32(~u_input.b, _wgslsmith_clamp_u32(~1u, u_input.a, abs(firstTrailingBit(u_input.b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_1(abs(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_2.x, 6u)], 1i, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(34434u, 6u)], global1[_wgslsmith_index_u32(arg_2.x, 6u)], -20276i, global1[_wgslsmith_index_u32(arg_2.x, 6u)])), select(min(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 2147483647i, -15414i, global1[_wgslsmith_index_u32(arg_2.x, 6u)]), vec4<i32>(-35938i, -5613i, 11123i, global1[_wgslsmith_index_u32(0u, 6u)])), firstTrailingBit(vec4<i32>(0i, 1i, global1[_wgslsmith_index_u32(4294967295u, 6u)], 1i)), !arg_1.x), false)), global0.x, arg_2.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.x)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))));
    global4 = 2147483647i;
    global2 = array<vec2<bool>, 31>();
    let var_2 = _wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_2, arg_2), firstTrailingBit(arg_2.x))), 6u)]);
    return min(var_0.a.wx, vec2<i32>(-35062i, 0i));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(all(!global2[_wgslsmith_index_u32(countOneBits(arg_0.b.a.c), 31u)]), arg_0.b, _wgslsmith_dot_vec2_i32(~func_3(_wgslsmith_div_vec4_f32(vec4<f32>(233f, global0.x, global0.x, 479f), vec4<f32>(arg_0.b.a.b, global0.x, -270f, arg_0.b.a.b)), vec4<bool>(arg_0.a, false, arg_0.a, true), ~vec3<u32>(arg_0.b.a.c, 0u, 42395u)), arg_0.b.a.a.zx));
    let var_1 = 1u;
    global2 = array<vec2<bool>, 31>();
    let var_2 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(82442u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 9549u, 14304u), vec3<u32>(arg_0.b.a.c, u_input.a, 9304u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(29737u, arg_0.b.a.c, 0u), vec3<u32>(arg_0.b.a.c, 4294967295u, u_input.b))));
    let var_3 = select(!vec4<bool>(select(all(vec4<bool>(var_0.a, true, true, arg_0.a)), true, arg_0.a), true, false, arg_0.a), !vec4<bool>(true, true, var_0.a, all(vec3<bool>(var_0.a, false, true)) & var_0.a), _wgslsmith_f_op_f32(-var_0.b.a.b) <= global0.x);
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> u32 {
    global1 = array<i32, 6>();
    let var_0 = arg_1.a;
    let var_1 = global3[_wgslsmith_index_u32(23241u, 21u)];
    global2 = array<vec2<bool>, 31>();
    global2 = array<vec2<bool>, 31>();
    return _wgslsmith_clamp_u32(min(var_0.c, 0u), ~_wgslsmith_mult_u32(var_0.c, _wgslsmith_mult_u32(abs(0u), 0u)), arg_1.a.c & _wgslsmith_div_u32(var_0.c, _wgslsmith_div_u32(u_input.a, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 31>();
    var var_0 = Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.b, u_input.b)), 6u)], min(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 6368u), 6u)] << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), firstLeadingBit(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.b, 6u)], -19060i)), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(func_1(~u_input.a), 6u)], -3829i)), global0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(19474u, 37751u, countOneBits(u_input.b), u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.b, 4294967295u, func_4(_wgslsmith_clamp_u32(u_input.a, u_input.b, 54777u), func_2(Struct_3(false, Struct_2(Struct_1(vec4<i32>(2147483647i, -2147483647i, global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(5974u, 6u)]), -248f, 4294967295u)), -2786i))))));
    let var_1 = Struct_1(var_0.a << (vec4<u32>(~u_input.b, 4294967295u, u_input.b, 49919u & func_4(var_0.c, Struct_2(Struct_1(vec4<i32>(var_0.a.x, 2147483647i, global1[_wgslsmith_index_u32(58859u, 6u)], global1[_wgslsmith_index_u32(u_input.b, 6u)]), -1563f, 4294967295u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.b)))), func_4(_wgslsmith_clamp_u32(max(u_input.b, reverseBits(var_0.c)), firstLeadingBit(~var_0.c), 1u), func_2(Struct_3(true, func_2(Struct_3(false, Struct_2(Struct_1(var_0.a, 119f, 4294967295u)), 13173i)), -46781i))));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(countOneBits(-var_1.a), vec4<i32>(~(~global1[_wgslsmith_index_u32(var_0.c, 6u)]), -7030i, var_0.a.x, abs(-52546i)), var_1.a), 1f, _wgslsmith_clamp_u32(reverseBits(~1u), ~243u, firstTrailingBit(u_input.a)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, global0.x, var_1.b, var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 377f, var_1.b, 1201f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, var_1.b, 2341f, var_1.b)), vec4<f32>(global0.x, global0.x, var_0.b, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b + 2307f), _wgslsmith_f_op_f32(round(-1074f)), var_1.b, var_1.b))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, false, any(vec2<bool>(false, true))), false), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~u_input.b, ~31934u, _wgslsmith_div_u32(4294967295u, 25361u), var_0.c) & vec4<u32>(~13393u, _wgslsmith_add_u32(4644u, 9363u), var_1.c, _wgslsmith_dot_vec3_u32(vec3<u32>(95140u, 4294967295u, u_input.a), vec3<u32>(var_1.c, 8360u, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, 374f)))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c, func_1(var_0.c) ^ 1u), 6u)] | 0i);
}

