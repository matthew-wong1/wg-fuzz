struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<bool>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3) -> u32 {
    let var_0 = !(0i >= ((_wgslsmith_mult_i32(u_input.b, u_input.b) & u_input.b) ^ max(-1i, u_input.d.x)));
    var var_1 = max(_wgslsmith_div_i32(~26064i, _wgslsmith_div_i32(_wgslsmith_div_i32(0i, u_input.b), reverseBits(u_input.b))) | _wgslsmith_add_i32(-(u_input.b >> (4294967295u % 32u)), ~u_input.d.x), max(_wgslsmith_div_i32(firstTrailingBit(~(-1i)), firstTrailingBit(~u_input.d.x)), u_input.d.x & _wgslsmith_div_i32(countOneBits(u_input.b), _wgslsmith_mult_i32(u_input.b, 28181i))));
    global0 = Struct_4(global0.a, Struct_2(Struct_1(abs(reverseBits(8012u)), arg_1.wwx), ~abs(abs(u_input.c)), arg_2.a.a));
    let var_2 = 7321u;
    let var_3 = abs(min(-u_input.d.wx, min(select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(-2147483647i, -1i)), -vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, arg_2.a.a.b.x)), vec2<i32>(1i, countOneBits(u_input.d.x)))));
    return ~abs(26147u);
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~vec3<i32>(~select(u_input.d.x, -20743i, false), u_input.d.x, ~35073i));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-global0.a), Struct_2(Struct_1(func_3(Struct_3(global0.b, global0.b), select(vec4<bool>(false, true, global0.b.c.b.x, global0.b.a.b.x), vec4<bool>(global0.b.a.b.x, false, false, true), vec4<bool>(global0.b.c.b.x, false, global0.b.c.b.x, global0.b.c.b.x)), Struct_3(global0.b, global0.b)), global1[_wgslsmith_index_u32(global0.b.c.a, 6u)]), global0.b.c.a, global0.b.a));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zx)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yx))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x) * 347f))));
    var_1 = vec2<f32>(189f, 164f);
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1355f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-521f))))), Struct_2(Struct_1(max(select(4294967295u, global0.b.a.a, true), ~0u), select(!global0.b.a.b, global0.b.c.b, vec3<bool>(false, global0.b.a.b.x, global0.b.c.b.x))), reverseBits(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(57387u, global0.b.a.a)), vec2<u32>(38178u, u_input.c))), global0.b.c));
    return Struct_2(global0.b.a, 28803u, Struct_1(u_input.c, vec3<bool>(global0.b.c.b.x, global0.a.x > global0.a.x, all(select(vec4<bool>(global0.b.a.b.x, global0.b.c.b.x, false, global0.b.c.b.x), vec4<bool>(false, global0.b.a.b.x, true, global0.b.c.b.x), vec4<bool>(global0.b.a.b.x, false, true, true))))));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.b.c.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, -639f, 1580f), vec3<f32>(global0.a.x, 419f, global0.a.x), global0.b.a.b.x))), _wgslsmith_f_op_vec3_f32(global0.a + global0.a))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-global0.a), func_2());
    var var_3 = Struct_3(func_2(), Struct_2(global0.b.c, global0.b.a.a, global0.b.c));
    var var_4 = u_input.b;
    return Struct_1(~(~(~(~1u))), vec3<bool>(!(any(vec4<bool>(var_3.b.c.b.x, var_3.a.c.b.x, false, false)) & false), true, select(var_3.b.a.b.x, true, any(vec4<bool>(global0.b.a.b.x, true, global0.b.c.b.x, var_3.a.c.b.x)) & global0.b.c.b.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) + _wgslsmith_f_op_f32(-arg_2));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1345f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(floor(global0.a.x))))) - global0.a), global0.b);
    global1 = array<vec3<bool>, 6>();
    var var_1 = ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(63472u, 1u), ~11108u), select(global0.b.b, arg_0.a.a, global0.b.a.b.x) | ~34874u), _wgslsmith_mult_u32(arg_1.b, 4294967295u) & ~global0.b.c.a);
    var var_2 = 4294967295u;
    return Struct_1(~44471u, arg_1.a.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_4(global0.a, func_2());
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(785f)))), _wgslsmith_f_op_f32(abs(global0.a.x)), global0.a.x), func_2());
    let var_0 = global0.b.c.b.yz;
    global1 = array<vec3<bool>, 6>();
    var var_1 = abs(firstLeadingBit(abs(~vec2<u32>(arg_1.c.a, 0u)) >> (select(~vec2<u32>(arg_0.a, u_input.c), vec2<u32>(arg_0.a, global0.b.c.a) | vec2<u32>(arg_0.a, u_input.c), true) % vec2<u32>(32u))));
    return Struct_1(~arg_3.a >> (abs(arg_3.a) % 32u), func_4(Struct_2(func_2().a, 1u >> (1u % 32u), global0.b.a), func_2(), _wgslsmith_f_op_f32(1027f * _wgslsmith_f_op_f32(-global0.a.x))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(func_4(Struct_2(func_1(), 1u, func_2().a), Struct_2(Struct_1(4294967295u, vec3<bool>(global0.b.c.b.x, false, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(u_input.c, global0.b.c.a, 11309u)), func_2().a), global0.a.x), global0.b, u_input.b, func_1()), u_input.c, func_2().c);
    let var_1 = func_2().a.b.x;
    var var_2 = Struct_1(global0.b.c.a, !func_2().c.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1260f, -646f, global0.a.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), global0.a.x, global0.a.x) + vec4<f32>(_wgslsmith_f_op_f32(select(-1814f, global0.a.x, var_2.b.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(trunc(-651f)), _wgslsmith_f_op_f32(-485f - global0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1681f, global0.a.x, global0.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1347f, -415f, global0.a.x, -1231f))) - vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(round(-537f)), global0.a.x))));
    let var_4 = -u_input.d.xy & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.d.x), vec2<i32>(_wgslsmith_sub_i32(40508i << (var_2.a % 32u), 2147483647i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -8489i, -64207i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b)), -1314i | u_input.b)));
    var var_5 = Struct_3(global0.b, Struct_2(global0.b.a, _wgslsmith_add_u32(_wgslsmith_div_u32(~30797u, 1u), _wgslsmith_mod_u32(82172u, _wgslsmith_sub_u32(u_input.c, global0.b.c.a))), var_0.a));
    var var_6 = -vec2<i32>(reverseBits(u_input.b), firstLeadingBit(reverseBits(u_input.d.x)) ^ -1i);
    let var_7 = var_5.b.c.b.x;
    var var_8 = var_5.a.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(var_2.a, 1u, var_0.c.a)), max(vec3<u32>(~1u, _wgslsmith_sub_u32(var_0.c.a, 4294967295u), 47006u), ~(~vec3<u32>(4294967295u, 24384u, 0u)))));
}

