struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: i32 = 54703i;

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: array<f32, 31>;

var<private> global4: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> i32 {
    var var_0 = arg_3;
    let var_1 = Struct_2(Struct_1(arg_0.a, arg_0.a.x, -2147483647i | _wgslsmith_mult_i32(firstTrailingBit(1i), u_input.a & 0i), arg_0.d, any(select(select(vec4<bool>(false, var_0.x, var_0.x, arg_0.e), vec4<bool>(var_0.x, false, var_0.x, arg_0.e), vec4<bool>(arg_0.e, var_0.x, arg_3.x, true)), select(vec4<bool>(arg_0.e, true, true, false), vec4<bool>(arg_0.e, global4[_wgslsmith_index_u32(u_input.b, 2u)], arg_3.x, arg_3.x), true), !vec4<bool>(arg_0.e, arg_0.e, global4[_wgslsmith_index_u32(29805u, 2u)], arg_3.x)))), _wgslsmith_f_op_f32(f32(-1f) * -557f), Struct_1(-arg_0.a, ~reverseBits(firstTrailingBit(0i)), 30785i, -1956f, !(!(global4[_wgslsmith_index_u32(u_input.b, 2u)] | arg_0.e))), arg_0.a);
    let var_2 = _wgslsmith_div_u32(~abs(u_input.b), ~_wgslsmith_sub_u32(11888u, ~(52523u & u_input.b)));
    var var_3 = arg_0;
    global0 = array<Struct_1, 16>();
    return ~_wgslsmith_mod_i32(-1i, firstLeadingBit(1i));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = false;
    global3 = array<f32, 31>();
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(func_3(Struct_1(vec3<i32>(arg_0.b, arg_0.a.x, arg_0.c), arg_0.c, 2147483647i, -707f, false), _wgslsmith_f_op_f32(min(475f, -1750f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(276f, global3[_wgslsmith_index_u32(4294967295u, 31u)], 501f), vec3<f32>(arg_0.d, 1909f, 932f), false)), select(vec2<bool>(true, true), vec2<bool>(var_1, true), arg_0.e)), func_3(global0[_wgslsmith_index_u32(~arg_1, 16u)], _wgslsmith_div_f32(arg_0.d, global3[_wgslsmith_index_u32(u_input.b, 31u)]), _wgslsmith_div_vec3_f32(vec3<f32>(867f, -167f, arg_0.d), vec3<f32>(-1432f, -448f, global3[_wgslsmith_index_u32(46703u, 31u)])), vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 2u)])), ~u_input.a), vec3<i32>(abs(12952i), arg_0.b, 30219i) >> ((global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30703u, 1u, 494u), 23u)] & _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(arg_1, 23u)])) % vec3<u32>(32u))), u_input.a, -29226i, _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 31u)])), !var_0);
    global4 = array<bool, 2>();
    return Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, -870f)), arg_0, vec3<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_0.a.yy, vec2<i32>(arg_0.a.x, -1i)), max(-8565i, arg_0.a.x), _wgslsmith_mult_i32(-1i, -12842i))), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a & var_2.a.x, _wgslsmith_mult_i32(u_input.a, -32463i), _wgslsmith_dot_vec2_i32(vec2<i32>(8352i, arg_0.c), vec2<i32>(arg_0.c, u_input.a))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(5277i, u_input.a, 1i, var_2.c), vec4<i32>(arg_0.a.x, var_2.c, 28967i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, arg_0.c, u_input.a), vec4<i32>(var_2.b, 1i, -34652i, 3199i))))));
}

fn func_1() -> bool {
    let var_0 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 16u)], u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, u_input.a), vec2<i32>(_wgslsmith_div_i32(-1i, 3352i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 31387i), vec2<i32>(0i, -2147483647i)))) > -abs(u_input.a));
    var var_1 = ~vec2<u32>(u_input.b, 58035u);
    let var_2 = vec2<bool>(any(select(select(vec3<bool>(true, var_0.c.e, var_0.c.e), !vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.b, 2u)]), u_input.b != var_1.x), vec3<bool>(-273f == global3[_wgslsmith_index_u32(u_input.b, 31u)], var_0.a.e, false), !vec3<bool>(global4[_wgslsmith_index_u32(var_1.x, 2u)], var_0.c.e, false))), var_0.a.e);
    global3 = array<f32, 31>();
    let var_3 = Struct_2(var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1677f)) * -211f))), Struct_1(vec3<i32>(-(u_input.a & 35916i), 16908i & _wgslsmith_add_i32(var_0.a.b, 1i), -1i), func_3(func_2(global0[_wgslsmith_index_u32(select(31522u, 4294967295u, true), 16u)], ~u_input.b, true).a, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.d, -175f, -104f), vec3<f32>(-1088f, var_0.b, global3[_wgslsmith_index_u32(39028u, 31u)])))), var_2), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i), abs(var_0.d.x), u_input.a), var_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1521f, global3[_wgslsmith_index_u32(var_1.x, 31u)]))))), false), abs(reverseBits(vec3<i32>(_wgslsmith_mult_i32(var_0.a.b, u_input.a), u_input.a, abs(1i)))));
    return !all(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1(), true, select(true, global4[_wgslsmith_index_u32(u_input.b ^ u_input.b, 2u)], !(any(vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 2u)])) & global4[_wgslsmith_index_u32(~u_input.b, 2u)])), true);
    global4 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1300f, 1270f, global3[_wgslsmith_index_u32(u_input.b, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<f32>(-1551f, -2414f, global3[_wgslsmith_index_u32(36646u, 31u)], 139f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2205f, _wgslsmith_div_f32(-1089f, global3[_wgslsmith_index_u32(53558u, 31u)]), _wgslsmith_f_op_f32(f32(-1f) * -1413f), -1680f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1989f, -305f, 1000f, global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<f32>(121f, global3[_wgslsmith_index_u32(4294967295u, 31u)], -886f, -253f), global4[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)], -167f, 533f) + vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], 782f, 1227f, global3[_wgslsmith_index_u32(18944u, 31u)])), var_0.x)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 4541u)), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 93665u), vec4<u32>(u_input.b, 4294967295u, 19321u, 0u)), _wgslsmith_sub_u32(u_input.b, u_input.b))), u_input.b), select(min(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(66095u, u_input.b, u_input.b, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(u_input.b, 0u, 44166u, u_input.b))), select(vec4<u32>(0u, 0u, u_input.b, u_input.b) ^ vec4<u32>(40210u, u_input.b, u_input.b, 4294967295u), ~vec4<u32>(4294967295u, 18290u, 0u, 0u), global4[_wgslsmith_index_u32(0u, 2u)])), abs(~(vec4<u32>(23702u, u_input.b, 3181u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), var_0.x)), 16u)];
    let var_3 = vec2<bool>(global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(~74407u, reverseBits(u_input.b)), u_input.b), 2u)], global4[_wgslsmith_index_u32(u_input.b, 2u)]);
    let var_4 = func_2(global0[_wgslsmith_index_u32(abs(~4294967295u), 16u)], ~u_input.b, false);
    global2 = array<vec3<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_mult_i32(firstLeadingBit(2147483647i), max(var_4.c.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31334u), vec2<u32>(u_input.b, u_input.b)) % 32u), func_2(func_2(var_4.a, u_input.b, var_4.a.e).c, u_input.b ^ 43875u, 2053f != var_4.b).d.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_4.d.x, 0i), -var_2.a), reverseBits(_wgslsmith_dot_vec2_i32(var_4.c.a.yy, var_2.a.yz))), _wgslsmith_mult_i32(var_2.a.x, var_4.c.c)), ~(~(~vec4<u32>(u_input.b, 7386u, 1u, u_input.b)) & ~(~vec4<u32>(u_input.b, u_input.b, 68576u, u_input.b))), 69315u);
}

