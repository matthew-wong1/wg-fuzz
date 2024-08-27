struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

var<private> global1: Struct_2 = Struct_2(Struct_1(false), 1u);

var<private> global2: array<u32, 21>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = min(global2[_wgslsmith_index_u32(4294967295u, 21u)], global1.b ^ _wgslsmith_div_u32(0u, abs(u_input.a))) >> (abs(global1.b) % 32u);
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(global1.b, 4294967295u), vec2<u32>(0u, var_0)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 19313u), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global1.b) | vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 21u)], 21u)], 4721u))), _wgslsmith_div_vec2_u32(min(~vec2<u32>(u_input.a, 16375u), vec2<u32>(62437u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(84256u, var_0), vec2<u32>(global2[_wgslsmith_index_u32(var_0, 21u)], 4294967295u)) >> ((vec2<u32>(4294967295u, u_input.a) & vec2<u32>(global1.b, 22536u)) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(global1.b, 95829u), vec2<u32>(30014u, 74914u), vec2<u32>(global1.b, 7779u))));
    var var_2 = Struct_2(Struct_1(!(global1.a.a && false) | global1.a.a), ~1u);
    var var_3 = global0[_wgslsmith_index_u32(~reverseBits(~select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, 38017u), 21u)], ~128735u, var_2.a.a == global1.a.a)), 11u)];
    var var_4 = -min(-12771i, ~_wgslsmith_add_i32(firstLeadingBit(u_input.b), 33254i << (var_1.x % 32u)));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global1 = Struct_2(arg_0, _wgslsmith_add_u32(~5813u, firstTrailingBit(abs(~arg_1.c.x))));
    let var_0 = select(u_input.b, u_input.b, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-725f, 1000f, arg_1.a, _wgslsmith_f_op_f32(floor(-439f))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(-216f)), arg_1.a, _wgslsmith_f_op_f32(-arg_1.a)))));
    let var_1 = vec2<i32>(-var_0, ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 22638i, -5532i), vec3<i32>(var_0, -29963i, var_0)))) >> (~select(~vec2<u32>(1u, 4294967295u), arg_1.c, select(select(arg_1.b.zy, vec2<bool>(arg_0.a, arg_1.b.x), global1.a.a), arg_1.b.xx, true)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1.a) + arg_1.a)), arg_1.a, 326f, -568f));
    var var_3 = arg_0;
    return ~60232u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = reverseBits(reverseBits(firstLeadingBit((u_input.b & u_input.b) | 18665i)));
    let var_1 = any(vec4<bool>(arg_1.c.x != countOneBits(func_2(arg_0.a, Struct_3(arg_2, arg_1.b, vec2<u32>(1u, 4294967295u), Struct_1(true)))), arg_1.d.a, false == (_wgslsmith_f_op_f32(-322f + arg_1.a) != arg_1.a), false));
    var var_2 = arg_1;
    global2 = array<u32, 21>();
    var var_3 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-arg_2) > var_2.a, !arg_1.d.a, arg_0.a.a), select(vec4<bool>(!arg_0.a.a, true, !func_3(vec4<f32>(375f, arg_2, arg_2, var_2.a)), select(var_2.d.a, true, var_0 <= var_0)), global0[_wgslsmith_index_u32((~4294967295u << (global1.b % 32u)) << ((1300u >> (select(var_2.c.x, global1.b, arg_0.a.a) % 32u)) % 32u), 11u)], arg_0.a.a), vec4<bool>(false, true, true, firstTrailingBit(_wgslsmith_div_u32(global1.b, 32560u)) >= ((arg_0.b ^ 0u) | arg_0.b)));
    return Struct_1(select(true, true, all(!vec3<bool>(true, arg_1.d.a, var_3.x))));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 21u)];
    var var_1 = Struct_3(_wgslsmith_f_op_f32(202f + -631f), !vec3<bool>(all(!vec3<bool>(false, false, arg_0.a)), global1.a.a, global1.a.a | all(vec3<bool>(false, true, arg_0.a))), ~min(~firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(global1.b, 21u)], global1.b)), ~vec2<u32>(1u, 1u)), func_1(Struct_2(func_1(Struct_2(Struct_1(true), 39347u), Struct_3(-1493f, vec3<bool>(global1.a.a, arg_0.a, true), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global1.b), Struct_1(false)), -1190f, !vec2<bool>(arg_0.a, true)), _wgslsmith_clamp_u32(global1.b, global1.b, global2[_wgslsmith_index_u32(4294967295u, 21u)]) ^ reverseBits(global1.b)), Struct_3(540f, vec3<bool>(true, false, true), vec2<u32>(u_input.a >> (u_input.a % 32u), 11034u), func_1(Struct_2(Struct_1(true), u_input.a), Struct_3(-664f, vec3<bool>(false, global1.a.a, arg_0.a), vec2<u32>(u_input.a, 0u), arg_0), _wgslsmith_f_op_f32(round(749f)), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f)), !(!vec2<bool>(global1.a.a, true))));
    let var_2 = Struct_3(_wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(1206f, -324f)), !(!var_1.b), _wgslsmith_sub_vec2_u32(var_1.c, ~_wgslsmith_add_vec2_u32(~var_1.c, var_1.c)), Struct_1(true));
    let var_3 = vec2<f32>(var_1.a, -1022f);
    let var_4 = Struct_1(var_1.d.a);
    return _wgslsmith_add_u32(var_2.c.x, ~_wgslsmith_dot_vec2_u32(abs(var_2.c << (var_1.c % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mod_u32(global1.b, u_input.a), reverseBits(4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-u_input.b | (u_input.b << (19155u % 32u)));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(max(~abs(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 21u)], 21u)], 21u)], global2[_wgslsmith_index_u32(57301u, 21u)])), vec3<u32>(~4294967295u, global1.b, 4294967295u)), vec3<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.b, u_input.a), vec2<u32>(0u, 94451u)), func_4(func_1(Struct_2(global1.a, 0u), Struct_3(-479f, vec3<bool>(global1.a.a, false, global1.a.a), vec2<u32>(1u, global1.b), global1.a), -943f, vec2<bool>(false, global1.a.a)))), vec3<u32>(0u, func_4(Struct_1(true)), _wgslsmith_div_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(51857u, 21u)], u_input.a), _wgslsmith_sub_u32(global1.b, global1.b))));
    let var_2 = ~_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 15558u, global2[_wgslsmith_index_u32(u_input.a, 21u)], 9548u), vec4<u32>(u_input.a, u_input.a, 4294967295u, global2[_wgslsmith_index_u32(var_1.x, 21u)]))), vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(var_1, var_1)), firstTrailingBit(abs(global2[_wgslsmith_index_u32(4294967295u, 21u)])), countOneBits(select(global1.b, 52805u, global1.a.a)), u_input.a | (global1.b ^ 4294967295u)));
    let var_3 = -41672i;
    let var_4 = vec2<i32>(min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0, var_3, -8204i) >> (vec4<u32>(global2[_wgslsmith_index_u32(57292u, 21u)], u_input.a, 1u, 0u) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), 15321i, -41842i), _wgslsmith_add_i32(i32(-1i) * -9330i, 0i)), u_input.b);
    var var_5 = ~u_input.a;
    var var_6 = Struct_2(global1.a, _wgslsmith_mult_u32(~abs(u_input.a), reverseBits(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(global1.b, global2[_wgslsmith_index_u32(62013u, 21u)], 56756u, var_1.x)))));
    let var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(1368f, 1000f))))) - 355f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(9585i, _wgslsmith_mult_i32(var_3, ~(~u_input.b)), reverseBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.b, -2281i, var_0), 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -812i, u_input.b), vec3<i32>(var_4.x, u_input.b, -2147483647i)), min(1i, -1i), 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0, 2147483647i), vec3<i32>(2147483647i, -2147483647i, 0i)))));
}

