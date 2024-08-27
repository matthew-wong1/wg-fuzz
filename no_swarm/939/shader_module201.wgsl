struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1707f, 1243f, -661f, -952f);

var<private> global1: Struct_1 = Struct_1(1000f, false, 270f);

var<private> global2: array<Struct_1, 7>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: i32, arg_3: vec3<f32>) -> i32 {
    let var_0 = ~(~arg_1);
    var var_1 = true;
    let var_2 = ~(~vec3<u32>(abs(arg_1 | 66986u), _wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(61257u, global3.c), u_input.a), abs(~u_input.a)));
    global0 = array<f32, 4>();
    global3 = Struct_3(1i, global3.b, global3.c);
    return select(firstTrailingBit(firstTrailingBit(-61734i)), firstTrailingBit(global3.b.d), global3.b.b.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    let var_0 = !select(select(vec4<bool>(!arg_0.b, true, select(true, true, false), global3.b.b.b), select(select(vec4<bool>(arg_2.b.b, global3.b.b.b, false, global3.b.a.b), vec4<bool>(global3.b.a.b, false, true, arg_1.b.a.b), true), vec4<bool>(arg_1.b.b.b, global3.b.b.b, true, global1.b), !vec4<bool>(arg_0.b, global1.b, false, arg_2.a.b)), vec4<bool>(true, global1.c < -624f, true, select(true, arg_2.b.b, global3.b.b.b))), select(select(select(vec4<bool>(arg_2.a.b, true, arg_1.b.b.b, false), vec4<bool>(true, true, true, global1.b), vec4<bool>(global3.b.b.b, global1.b, true, global3.b.b.b)), !vec4<bool>(false, false, global1.b, true), vec4<bool>(global3.b.a.b, true, arg_1.b.a.b, true)), !select(vec4<bool>(true, arg_0.b, false, arg_2.a.b), vec4<bool>(true, true, true, false), arg_1.b.b.b), false), vec4<bool>(arg_2.b.b, arg_1.c > u_input.a, true, false));
    let var_1 = Struct_1(arg_0.a, var_0.x, 698f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 4u)] - 272f), !arg_1.b.b.b)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~global3.c, 4u)] * -817f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 4u)])))));
    var var_3 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(arg_1.c, global3.c, 1u)), u_input.a >> (0u % 32u), 29072u, abs(~global3.c)), ~abs(abs(vec4<u32>(54949u, global3.c, 4294967295u, u_input.a))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - global0[_wgslsmith_index_u32(0u, 4u)]), 1684f)) * arg_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b.c.x)) - arg_2.c.x))), false, -2134f);
    return 4294967295u;
}

fn func_2() -> vec2<i32> {
    var var_0 = select(vec4<bool>(global3.b.a.b, false, global1.b, global1.b), !vec4<bool>(all(!vec3<bool>(false, global1.b, false)), global1.b && global1.b, global3.b.a.b, true), false);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(global2[_wgslsmith_index_u32(9486u, 7u)], Struct_3(_wgslsmith_add_i32(func_3(var_0.wwz, global3.c, global3.b.d, vec3<f32>(1077f, global1.c, global3.b.b.a)), _wgslsmith_mult_i32(-2147483647i, global3.a)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(global3.c, 4u)], false, global3.b.b.a), Struct_1(-1553f, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global0[_wgslsmith_index_u32(global3.c, 4u)], global3.b.c.x) * global3.b.c), -global3.b.d), ~(~u_input.a)), Struct_2(Struct_1(-154f, true, global0[_wgslsmith_index_u32(global3.c, 4u)]), Struct_1(_wgslsmith_f_op_f32(-global1.c), all(vec3<bool>(global1.b, true, var_0.x)), -1000f), vec4<f32>(1107f, _wgslsmith_f_op_f32(global1.c - global3.b.a.c), -105f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global3.c, 4u)]))), global3.b.d)), u_input.a), 7u)];
    global2 = array<Struct_1, 7>();
    let var_1 = global2[_wgslsmith_index_u32(min(~(~u_input.a), ~1u), 7u)];
    let var_2 = _wgslsmith_mult_vec3_i32(abs(firstTrailingBit(~(~vec3<i32>(-7361i, 2147483647i, global3.b.d)))), _wgslsmith_div_vec3_i32(~(-(vec3<i32>(global3.a, 2147483647i, 27467i) >> (vec3<u32>(u_input.a, global3.c, 0u) % vec3<u32>(32u)))), abs(abs(vec3<i32>(19553i, 6705i, -2147483647i) ^ vec3<i32>(global3.a, -1i, global3.b.d)))));
    return _wgslsmith_mult_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, global3.b.d), firstTrailingBit(vec2<i32>(59944i, -2147483647i))), abs(vec2<i32>(var_2.x, 1i))) | reverseBits(_wgslsmith_sub_vec2_i32(~var_2.xx & countOneBits(var_2.xy), countOneBits(var_2.xy) & var_2.yy));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    global3 = Struct_3(0i, arg_1, firstTrailingBit((_wgslsmith_sub_u32(u_input.a, global3.c) ^ _wgslsmith_add_u32(global3.c, u_input.a)) >> (u_input.a % 32u)));
    global0 = array<f32, 4>();
    let var_0 = !select(select(vec2<bool>(true | arg_1.a.b, global3.b.a.b), !(!vec2<bool>(false, global3.b.a.b)), select(select(vec2<bool>(global3.b.a.b, global3.b.a.b), vec2<bool>(false, global1.b), vec2<bool>(true, false)), !vec2<bool>(arg_1.a.b, false), select(vec2<bool>(arg_1.a.b, false), vec2<bool>(global1.b, false), false))), vec2<bool>(false, arg_1.b.b || (arg_1.b.a > arg_1.a.a)), vec2<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)) <= abs(4294967295u), arg_1.a.b));
    var var_1 = arg_1;
    let var_2 = select(var_0, var_0, vec2<bool>(!any(vec3<bool>(global1.b, false, false)), true));
    return global0[_wgslsmith_index_u32(global3.c, 4u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5(min(vec2<i32>(global3.b.d, global3.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33827i, global3.b.d), vec2<i32>(-46793i, -44745i), vec2<i32>(1i, global3.a))) & max(vec2<i32>(global3.a, global3.b.d), vec2<i32>(global3.b.d, global3.a)), global3.b, func_2())), global1.b, 998f);
    global1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(558f, global3.b.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -856f))), -1000f)), !all(vec2<bool>(!global1.b, arg_0.b || var_0.b)), arg_0.a);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 4u)] - _wgslsmith_f_op_f32(-global3.b.b.c))), global3.b.a.b & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(149f - global3.b.a.c)))), arg_0, _wgslsmith_div_vec4_f32(global3.b.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1303f, -890f, global1.a, arg_0.c), global3.b.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 1439f, 1000f, 1135f) + vec4<f32>(global3.b.b.a, 930f, arg_0.a, arg_0.a)))))), global3.a);
    global2 = array<Struct_1, 7>();
    var var_2 = global0[_wgslsmith_index_u32(1u, 4u)];
    return global3.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global3.b.b, abs(u_input.a << (global3.c % 32u)));
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1513f, global1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-366f, 1000f))))), _wgslsmith_div_f32(global3.b.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b.c.x * 965f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))))), all(select(vec3<bool>(false || global1.b, !global1.b, !global3.b.a.b), !select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(false, global1.b, false), false), vec3<bool>(global1.b, global1.b, true))), global1.a);
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(step(-1001f, 257f)), all(select(!vec4<bool>(true, var_1.b, false, var_1.b), vec4<bool>(false, false, global3.b.b.b, false), var_1.b || true)), _wgslsmith_f_op_f32(f32(-1f) * -1988f)), abs(48228u & _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.c, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global3.c, 4294967295u), vec3<u32>(36945u, 4294967295u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global3.b.c.yww + global3.b.c.zzz), var_0.zwx, true)), _wgslsmith_f_op_vec3_f32(ceil(var_0.wzy)))), global3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(209f))));
}

