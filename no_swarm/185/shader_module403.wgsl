struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 12>;

var<private> global3: array<bool, 10> = array<bool, 10>(true, true, false, true, true, false, false, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    return Struct_1(false);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_4, 5>();
    global2 = array<Struct_3, 12>();
    var var_0 = Struct_5(arg_1, Struct_1(true), vec3<i32>(-37459i, -2147483647i, _wgslsmith_mult_i32(1i, -26673i)), arg_0);
    let var_1 = _wgslsmith_mult_i32(var_0.c.x, 18475i);
    let var_2 = Struct_4(_wgslsmith_sub_i32(~_wgslsmith_sub_i32(var_0.c.x, var_0.c.x), 1i | var_0.c.x) << (~min(~4294967295u, ~0u) % 32u), _wgslsmith_mult_vec2_i32(-vec2<i32>(min(var_1, -2147483647i), var_1), var_0.c.yz), Struct_3(203f, !vec2<bool>(func_2().a, any(vec3<bool>(false, true, false))), vec2<u32>(4294967295u, u_input.a.x | 1u), -2783f), _wgslsmith_f_op_f32(-772f - _wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * var_0.d) - _wgslsmith_div_f32(-1641f, var_0.d)))), firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33822u, 4294967295u, arg_2.c.x), vec3<u32>(13434u, u_input.a.x, 90047u)), u_input.a.x & arg_2.c.x), 1u)));
    return max(~(~var_2.e), firstLeadingBit(4294967295u));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(countOneBits(~u_input.a), _wgslsmith_add_vec2_u32(arg_1.c, abs(arg_1.c)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(_wgslsmith_f_op_f32(-arg_1.a), func_2(), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1447f + arg_1.a), -665f), arg_1.b, select(vec2<u32>(0u, 0u), ~vec2<u32>(arg_1.c.x, 0u), select(vec2<bool>(false, arg_2.a), arg_1.b, arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-777f))))), ~(~(4294967295u << (arg_0 % 32u)) ^ arg_0)), 5u)];
    var var_2 = global0[_wgslsmith_index_u32(1u, 5u)];
    global1 = (all(select(select(vec3<bool>(arg_2.a, false, true), vec3<bool>(true, true, false), arg_2.a), !vec3<bool>(var_2.c.b.x, true, true), !vec3<bool>(false, arg_1.b.x, false))) | all(!select(vec2<bool>(var_2.c.b.x, false), vec2<bool>(true, var_2.c.b.x), true))) | select(!arg_3, any(!(!arg_1.b)), !all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 10u)], false)));
    global3 = array<bool, 10>();
    return Struct_1(~(~var_2.a | 1i) > ~var_1.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_4, 5>();
    var var_0 = arg_2.c;
    global2 = array<Struct_3, 12>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 4294967295u), ~1u)), select(min(abs(vec2<u32>(4294967295u, u_input.a.x)), u_input.a), ~_wgslsmith_mult_vec2_u32(vec2<u32>(76622u, 1u), u_input.a), func_1(1u, Struct_3(arg_2.d, vec2<bool>(arg_3.x, arg_0.x), u_input.a, arg_2.d), func_2(), true).a));
    global3 = array<bool, 10>();
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = Struct_5(Struct_1(global3[_wgslsmith_index_u32(reverseBits(~u_input.a.x), 10u)]), func_4(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 10u)], global3[_wgslsmith_index_u32(u_input.a.x, 10u)], global3[_wgslsmith_index_u32(39297u, 10u)])), func_1(u_input.a.x, Struct_3(_wgslsmith_f_op_f32(796f + 2485f), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<u32>(u_input.b, u_input.b), 1f), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 10u)] || false), !global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), Struct_5(Struct_1(func_2().a), func_1(1u, Struct_3(-134f, vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], true), vec2<u32>(u_input.b, u_input.a.x), -1148f), func_1(u_input.a.x, Struct_3(901f, vec2<bool>(false, false), vec2<u32>(51222u, u_input.a.x), -214f), Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), global3[_wgslsmith_index_u32(1u, 10u)]), true), min(-vec3<i32>(-4725i, -2147483647i, -1i), min(vec3<i32>(-21347i, -2147483647i, 32205i), vec3<i32>(1i, 2147483647i, 61144i))), _wgslsmith_div_f32(1167f, -539f)), vec4<bool>(true, false, !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 10u)], !global3[_wgslsmith_index_u32(~0u, 10u)])), select(vec3<i32>(_wgslsmith_sub_i32(36764i, 45239i), 2147483647i, -28019i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(3133i, 1i, -7731i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -38044i, -37827i), vec3<i32>(-2147483647i, 26045i, -1i)), vec3<i32>(17766i, 1i, 27240i)), -vec3<i32>(~62952i, -2147483647i, -39731i), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], any(select(vec4<bool>(global3[_wgslsmith_index_u32(18210u, 10u)], true, global3[_wgslsmith_index_u32(u_input.b, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)], true, global3[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(u_input.b, 10u)]))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -358f) + -459f)));
    var var_1 = select(vec2<bool>(func_1(firstLeadingBit(~u_input.a.x), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(7174u, 1u)), 0u), 12u)], func_2(), -247f <= _wgslsmith_div_f32(-223f, var_0.d)).a, true), vec2<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, var_0.c.x, 0i), vec4<i32>(var_0.c.x, 0i, var_0.c.x, -1i)) > var_0.c.x) != true, all(select(!vec2<bool>(true, var_0.b.a), vec2<bool>(false, true), select(vec2<bool>(global3[_wgslsmith_index_u32(21432u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(true, true), vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 10u)]))))), global3[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(u_input.b, 108132u)), 10u)]);
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 5u)];
    global3 = array<bool, 10>();
    global2 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.b, u_input.a.x, abs(26552u & ~u_input.a.x)), ~vec3<u32>(39446u, min(0u, var_2.c.c.x), ~(var_2.c.c.x << (var_2.e % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(f32(-1f) * -403f))));
}

