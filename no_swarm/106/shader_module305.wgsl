struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(549f, 869f, 550f);

var<private> global1: array<i32, 17> = array<i32, 17>(i32(-2147483648), 2147483647i, 0i, -1i, 78i, 1i, 1i, 2147483647i, 39094i, -24237i, 44405i, 4587i, 65111i, -44424i, -35605i, 20322i, 1i);

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global1 = array<i32, 17>();
    global2 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~countOneBits(u_input.a)), firstTrailingBit(_wgslsmith_sub_u32(24180u, 6993u)) & ~(~1u)), 0u);
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-798f, _wgslsmith_f_op_f32(select(-1088f, 147f, true)), global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 302f, global0.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1243f, global0.x), vec3<f32>(global0.x, global0.x, global0.x), vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-295f, 636f, global0.x))))))));
    var var_1 = _wgslsmith_mod_vec4_u32(abs(abs(vec4<u32>(global2.b, ~global2.a, arg_0, global2.b))), reverseBits(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(58322u, 6088u, arg_0, 38602u), vec4<u32>(38412u, 4294967295u, 34932u, 4294967295u)), countOneBits(vec4<u32>(arg_0, 66517u, global2.b, global2.a)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(var_0.x))))));
    return vec3<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(8302u, 17u)] == global1[_wgslsmith_index_u32(43598u, 17u)], select(false, false, false), true), vec3<bool>(true, true, true), true)), any(vec4<bool>(any(vec2<bool>(true, true)), (global2.b == 4294967295u) | all(vec4<bool>(false, true, false, false)), true, true)), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    global2 = Struct_1(max(~(~u_input.a.x), global2.b), 47528u);
    global2 = Struct_1(0u, ~global2.b);
    let var_0 = Struct_1(u_input.e.x, global2.a);
    let var_1 = min(vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], -11665i, abs(abs(5301i)), global1[_wgslsmith_index_u32(global2.b, 17u)]), firstTrailingBit(~(-vec4<i32>(-2147483647i, -8938i, u_input.d.x, -21775i)) >> (firstTrailingBit(vec4<u32>(1u, 0u, global2.a, global2.b)) % vec4<u32>(32u))));
    var var_2 = arg_0.yy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1254f, global0.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> bool {
    let var_0 = vec4<bool>(true, true, _wgslsmith_f_op_f32(func_4(func_3(~u_input.e.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.zy, u_input.d.zx), -2147483647i), vec3<i32>(1i, u_input.c, min(45635i, arg_1)))) <= 1f, arg_0.x);
    let var_1 = !var_0.x;
    let var_2 = func_3(u_input.a.x << (global2.b % 32u)).yz;
    let var_3 = Struct_3(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1070f, global0.x, global0.x, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(select(114f, 254f, true)), _wgslsmith_f_op_f32(select(global0.x, 1000f, false)), 311f, _wgslsmith_f_op_f32(-global0.x)))), ~u_input.a.x);
    let var_4 = vec4<i32>(-1i) * -(vec4<i32>(-1i, arg_1, global1[_wgslsmith_index_u32(var_3.c, 17u)], 1i) << (~select(vec4<u32>(7549u, u_input.e.x, u_input.a.x, global2.b), vec4<u32>(35904u, var_3.c, 34261u, 0u), vec4<bool>(arg_0.x, false, false, arg_0.x)) % vec4<u32>(32u)));
    return arg_0.x;
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a | vec2<u32>(4294967295u, global2.a), u_input.a), vec2<u32>(countOneBits(0u), max(1u, firstLeadingBit(u_input.a.x)))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(79686u, 0u), u_input.e.yz), countOneBits(vec2<u32>(12113u, ~1u))));
    var var_1 = Struct_3(select(func_2(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(1u, 17u)]) == true, true, ~global2.a >= 1u) | (true == all(func_3(global2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -626f, arg_0.x, -600f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(907f, -461f, global0.x, arg_0.x), vec4<f32>(-694f, 173f, global0.x, global0.x), vec4<bool>(true, true, true, false))))), arg_0), reverseBits(_wgslsmith_div_u32(~global2.b, ~var_0.x)) << (44600u % 32u));
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(19839u, 17064u, 56440u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 85842u), vec3<u32>(u_input.e.x, var_0.x, global2.b))), vec3<u32>(_wgslsmith_clamp_u32(32739u, u_input.e.x, 0u), 1u, var_0.x)), vec3<u32>(_wgslsmith_div_u32(select(0u, u_input.a.x, var_1.a), var_1.c), u_input.a.x | var_0.x, 0u)), ~u_input.a.x);
    var var_2 = Struct_2(Struct_1(firstTrailingBit(u_input.e.x), firstLeadingBit(var_1.c)), 0u, Struct_1(global2.b << (~109045u % 32u), 53944u));
    global2 = Struct_1(0u, 0u);
    return countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.b & 28267u, ~5479u, 0u, var_0.x), ~(abs(vec4<u32>(10915u, 39516u, 1u, 4294967295u)) << (vec4<u32>(var_0.x, 4294967295u, u_input.e.x, var_0.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(76589u, 16376u, 23130u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, 12021u))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 587f, global0.x, 456f))))), ~(~1u) << (~_wgslsmith_sub_u32(u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, 0u)) % 32u));
    global2 = Struct_1(max(u_input.a.x, abs(1u)), u_input.a.x);
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1894f, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, 432f, -1000f, global0.x)))))), global2.b);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), global0.x, 1657f));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~(~(-vec4<i32>(global1[_wgslsmith_index_u32(var_1.c, 17u)], global1[_wgslsmith_index_u32(u_input.e.x, 17u)], global1[_wgslsmith_index_u32(global2.b, 17u)], 33611i))), vec4<i32>(min(abs(global1[_wgslsmith_index_u32(var_1.c, 17u)]), abs(u_input.b)), global1[_wgslsmith_index_u32(~var_1.c, 17u)], -2147483647i, -2147483647i), vec4<i32>(2147483647i, 1i, _wgslsmith_div_i32(~(-1i), -35768i), 1i)), reverseBits(min(-vec4<i32>(47231i, u_input.b, -2147483647i, u_input.c), vec4<i32>(global1[_wgslsmith_index_u32(var_1.c, 17u)], -42432i, -1i, -2147483647i) & vec4<i32>(7694i, 27973i, -2147483647i, -1i)) << (~vec4<u32>(0u, 39439u, 0u, var_1.c) % vec4<u32>(32u))));
    global0 = _wgslsmith_div_vec3_f32(var_1.b.wyw, var_1.b.yxy);
    var var_3 = vec2<u32>(27644u, ~var_1.c);
    var var_4 = Struct_3(!var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1509f), 123f, var_1.b.x))), 5138u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, firstLeadingBit(~vec4<u32>(~var_1.c, max(global2.a, var_4.c), reverseBits(53207u), reverseBits(1u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.b.zxy)))))));
}

