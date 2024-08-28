struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(2147483647i, -25021i, vec3<u32>(66095u, 1u, 1u)), vec4<i32>(i32(-2147483648), 4745i, -1i, 10321i), Struct_1(1i, -4404i, vec3<u32>(34682u, 4294967295u, 26037u)), true, vec4<u32>(1u, 1u, 24161u, 4294967295u));

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<vec2<i32>, 9>;

var<private> global3: vec4<bool>;

var<private> global4: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    global0 = Struct_2(global0.c, max(-select(vec4<i32>(global0.b.x, global0.c.a, u_input.b.x, global0.b.x) | vec4<i32>(-1081i, -2147483647i, global0.b.x, 0i), vec4<i32>(-2147483647i, global0.c.a, u_input.b.x, global0.c.a) ^ global0.b, vec4<bool>(true, global0.d, global3.x, global0.d)), -vec4<i32>(global0.b.x, 1i, -2147483647i, ~(-1i))), global0.c, true, ~vec4<u32>(_wgslsmith_div_u32(1u, ~global0.e.x), _wgslsmith_dot_vec4_u32(global0.e, global0.e), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_0), u_input.a) | select(18520u, arg_0, global0.d), ~arg_0));
    global2 = array<vec2<i32>, 9>();
    var var_0 = true;
    var var_1 = Struct_1(~6813i, ~abs(global0.b.x), countOneBits(vec3<u32>(u_input.c, arg_0, 51265u) & global0.c.c) | ~global0.e.yyw);
    var_1 = global0.c;
    return _wgslsmith_add_vec4_i32(vec4<i32>(~(~select(31699i, u_input.b.x, global0.d)), var_1.a, u_input.b.x, 0i), ~vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(global0.b.yxx), vec3<i32>(u_input.b.x, var_1.a, -2147483647i)), -1i, ~var_1.b, var_1.b << (1u % 32u)));
}

fn func_2() -> u32 {
    let var_0 = func_3(firstTrailingBit(0u));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(-535f)), -1043f, -2254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 625f) * -636f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1094f + 870f), _wgslsmith_f_op_f32(min(533f, -519f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -952f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(67978u, 7u)], global1[_wgslsmith_index_u32(16203u, 7u)]))))) + global1[_wgslsmith_index_u32(~(~global0.a.c.x), 7u)]);
    let var_1 = Struct_2(Struct_1(global0.a.a, -713i, global0.a.c), ~firstLeadingBit(~global0.b >> (~global0.e % vec4<u32>(32u))), arg_0, !(global3.x & true), abs(vec4<u32>(13266u & ~arg_0.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 0u), u_input.a), u_input.a.x, abs(4294967295u))));
    var var_2 = ~vec4<u32>(~func_2(), arg_0.c.x, 0u, ~(~_wgslsmith_dot_vec4_u32(global0.e, global0.e)));
    global4 = array<vec3<bool>, 31>();
    var var_3 = vec4<bool>(false, true, true, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(var_2.xw, countOneBits(arg_0.c.zz))) <= ((_wgslsmith_sub_u32(arg_0.c.x, 92891u) ^ global0.a.c.x) ^ 15354u));
    return Struct_1(3673i & _wgslsmith_dot_vec2_i32(global0.b.wy, vec2<i32>(-arg_0.a, abs(arg_0.b))), 4675i, firstTrailingBit(~vec3<u32>(var_2.x, 0u, ~global0.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 9>();
    global0 = Struct_2(Struct_1(u_input.b.x, 0i, global0.e.xyz), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-52313i, global0.c.b, ~u_input.b.x, i32(-1i) * -2147483647i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.b.x, u_input.b.x, u_input.b.x, 1i), global0.b))), global0.b, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.b, u_input.b.x, 1i, u_input.b.x), global0.b << (vec4<u32>(global0.a.c.x, 1u, 1u, u_input.a.x) % vec4<u32>(32u)), abs(global0.b))), func_1(global0.a, global0.d), true, vec4<u32>(_wgslsmith_add_u32(53310u, 1u), func_1(Struct_1(_wgslsmith_sub_i32(u_input.b.x, 33111i), -19618i, firstTrailingBit(global0.e.zyy)), global3.x).c.x, 4294967295u, 1u));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-422f)) + -858f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f * -1000f) + 1504f)));
    let var_1 = Struct_1(_wgslsmith_add_i32(abs(26955i), -1i), ((-29206i << ((u_input.a.x << (1u % 32u)) % 32u)) & firstLeadingBit(firstTrailingBit(-1i))) >> (44435u % 32u), vec3<u32>(u_input.c << (select(u_input.c, countOneBits(global0.c.c.x), all(vec2<bool>(global0.d, true))) % 32u), 0u, ~global0.c.c.x));
    var var_2 = Struct_2(Struct_1(global0.c.b, var_1.a & _wgslsmith_div_i32(1i, func_1(var_1, global0.d).a), vec3<u32>(var_1.c.x, 1u, _wgslsmith_mult_u32(global0.a.c.x, var_1.c.x) >> (49805u % 32u))), global0.b, func_1(Struct_1(~(-1265i), 2147483647i, ~vec3<u32>(global0.c.c.x, 10085u, 74440u)), !global0.d), all(vec3<bool>(false, global3.x, false)), ~abs(countOneBits(vec4<u32>(4294967295u, global0.c.c.x, 1u, 26456u))));
    let var_3 = -1408f;
    global0 = Struct_2(var_2.a, abs(-select(var_2.b, abs(vec4<i32>(-1i, 0i, -2147483647i, global0.c.a)), vec4<bool>(global0.d, global3.x, global3.x, false))), func_1(Struct_1(~(~2147483647i), var_1.b, vec3<u32>(_wgslsmith_clamp_u32(1u, 45895u, var_2.c.c.x), global0.e.x, global0.c.c.x)), var_1.c.x >= var_2.a.c.x), !all(select(select(global3.zw, global3.wx, false), vec2<bool>(false, var_2.d), vec2<bool>(true, false))), vec4<u32>(_wgslsmith_mult_u32(9288u, global0.c.c.x) >> (0u % 32u), global0.c.c.x, ~0u, select(~func_1(Struct_1(global0.b.x, -96i, global0.a.c), global3.x).c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.x, u_input.a.x, 0u, global0.e.x), global0.e), reverseBits(vec4<u32>(var_2.c.c.x, 33432u, 1u, 2250u))), all(global3.yxy))));
    let x = u_input.a;
    s_output = StorageBuffer(-229f, 15312i << (~4294967295u % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(min(abs(-2147483647i), var_1.b), min(~2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(1i, -23587i)))), 2147483647i & global0.b.x), -22121i, vec4<f32>(_wgslsmith_div_f32(var_3, 1000f), 190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * -155f) + _wgslsmith_f_op_f32(var_3 - var_3))), -666f));
}

