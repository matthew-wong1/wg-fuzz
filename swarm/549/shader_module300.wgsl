struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -50766i;

var<private> global1: bool = false;

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

var<private> global3: array<i32, 26>;

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(952u, -303f), false, Struct_1(26021u, -954f), 23475u), Struct_2(Struct_1(1u, -1000f), true, Struct_1(56061u, -2288f), 57447u), Struct_2(Struct_1(1u, -649f), true, Struct_1(1u, 656f), 30893u), Struct_2(Struct_1(1166u, -930f), true, Struct_1(0u, 776f), 12145u), Struct_2(Struct_1(101611u, 1167f), true, Struct_1(0u, -1192f), 20529u), Struct_2(Struct_1(23443u, -872f), true, Struct_1(1u, 261f), 15074u), Struct_2(Struct_1(8725u, -704f), false, Struct_1(0u, 704f), 0u), Struct_2(Struct_1(52291u, -1788f), true, Struct_1(0u, -642f), 43573u), Struct_2(Struct_1(4294967295u, -367f), true, Struct_1(64991u, 1622f), 27527u), Struct_2(Struct_1(14499u, 1000f), false, Struct_1(21937u, -2457f), 20178u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<bool> {
    global3 = array<i32, 26>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(min(1u, ~arg_1.a), 1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(arg_1.a, 4009u, arg_1.a)) & 44099u, 4294967295u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(573f)), 424f, all(vec4<bool>(true, true, true, all(vec2<bool>(true, false)))))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_1 + arg_1.b), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, 728f) - vec2<f32>(arg_1.b, -601f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1408f, -602f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-256f, var_0.b) - vec2<f32>(823f, var_1)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1247f, 1308f))))))), vec2<f32>(_wgslsmith_f_op_f32(min(arg_1.b, 1032f)), 545f), vec2<bool>(false, true)));
    let var_3 = 0u;
    return global2[_wgslsmith_index_u32(var_3, 25u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>) -> u32 {
    global4 = array<Struct_2, 10>();
    var var_0 = abs(arg_1.x);
    global1 = true;
    var var_1 = Struct_3(Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1461f - -787f) * _wgslsmith_f_op_f32(f32(-1f) * -176f))), false, Struct_1(90281u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2439f)), _wgslsmith_f_op_f32(-809f * 455f)))), countOneBits(56307u)), firstTrailingBit(max(~(-1i), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.x, global3[_wgslsmith_index_u32(1u, 26u)]), firstTrailingBit(2147483647i)))));
    var var_2 = Struct_2(var_1.a.c, !func_2(-vec2<i32>(arg_0.x, arg_1.x) | vec2<i32>(var_1.b, 673i), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(549u, 4294967295u, var_1.a.a.a, 72561u), vec4<u32>(20268u, 11899u, var_1.a.a.a, var_1.a.d)), _wgslsmith_f_op_f32(round(-1250f)))).x, var_1.a.c, ~4294967295u & countOneBits(var_1.a.c.a));
    return ~var_2.c.a | select((~4294967295u >> (reverseBits(var_2.d) % 32u)) & ~4294967295u, max(~_wgslsmith_add_u32(1u, var_2.d), 1u), !var_1.a.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = !(!func_2(u_input.b, Struct_1(25533u, _wgslsmith_f_op_f32(abs(arg_1.a.b)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.a.b, -428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) * _wgslsmith_f_op_f32(-arg_1.c.b))))));
    var var_2 = vec4<i32>(1i, 2147483647i, -2147483647i, global3[_wgslsmith_index_u32(~1u ^ arg_0.x, 26u)]);
    let var_3 = ~(~func_3(u_input.b, abs(vec4<i32>(-24609i, 6985i, var_2.x, global3[_wgslsmith_index_u32(arg_1.a.a, 26u)]))));
    global2 = array<vec3<bool>, 25>();
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(-global3[_wgslsmith_index_u32(abs(arg_1.c.a), 26u)], ~(-48886i), firstLeadingBit(-2147483647i) ^ var_2.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.ww, vec2<u32>(arg_0.x, 28534u)) << (1u % 32u), 26u)]), -(~abs(vec4<i32>(-1i, 5388i, 4314i, global3[_wgslsmith_index_u32(var_3, 26u)])) << (vec4<u32>(~1u, ~arg_1.c.a, 29059u, 1u) % vec4<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> StorageBuffer {
    global4 = array<Struct_2, 10>();
    global4 = array<Struct_2, 10>();
    let var_0 = Struct_1(~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(16601u, 4294967295u, 0u, 0u), vec4<u32>(12861u, 4294967295u, 1u, 4294967295u), vec4<bool>(true, false, true, true)), vec4<u32>(531u, 8500u, 0u, 4294967295u))), _wgslsmith_f_op_f32(trunc(arg_0)));
    return StorageBuffer(_wgslsmith_add_vec3_u32(select(~(vec3<u32>(var_0.a, var_0.a, 28459u) << (vec3<u32>(18389u, 11469u, 0u) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, var_0.a, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a, var_0.a, var_0.a), vec3<u32>(1u, 0u, var_0.a))), !(!global2[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(var_0.a), ~var_0.a, ~var_0.a), ~vec3<u32>(var_0.a, var_0.a, 82390u))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(252f, _wgslsmith_sub_vec2_i32(~u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(func_1(vec4<u32>(1u, 4294967295u, 1u, 0u), global4[_wgslsmith_index_u32(89241u, 10u)]), _wgslsmith_add_i32(-2147483647i, 27997i)), vec2<i32>(1i, global3[_wgslsmith_index_u32(1u, 26u)]))));
}

