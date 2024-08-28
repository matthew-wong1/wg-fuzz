struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(18965i, vec2<bool>(true, true)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(14911i, vec2<bool>(true, true)), Struct_1(69831i, vec2<bool>(true, false)), Struct_1(0i, vec2<bool>(false, false)), Struct_1(0i, vec2<bool>(false, false)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(54176i, vec2<bool>(true, true)), Struct_1(7208i, vec2<bool>(false, false)), Struct_1(-1i, vec2<bool>(false, true)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(0i, vec2<bool>(true, true)), Struct_1(-27723i, vec2<bool>(false, false)), Struct_1(0i, vec2<bool>(false, false)), Struct_1(1i, vec2<bool>(false, true)), Struct_1(-44274i, vec2<bool>(false, true)), Struct_1(6086i, vec2<bool>(false, true)), Struct_1(20211i, vec2<bool>(true, false)), Struct_1(-984i, vec2<bool>(true, true)), Struct_1(2147483647i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(-18736i, vec2<bool>(false, false)), Struct_1(-12608i, vec2<bool>(false, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false)), Struct_1(-22329i, vec2<bool>(true, false)), Struct_1(27353i, vec2<bool>(true, true)), Struct_1(0i, vec2<bool>(true, false)));

var<private> global1: array<i32, 2>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(2147483647i, vec2<bool>(true, true));

var<private> global4: array<vec2<u32>, 27>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    var var_0 = !select(!select(!vec4<bool>(arg_0.b.x, arg_1.b.x, arg_1.b.x, false), select(vec4<bool>(false, global3.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(true, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, global3.b.x, global2.b.x, arg_1.b.x)), true), vec4<bool>(true == arg_1.b.x, any(vec3<bool>(false, arg_0.b.x, arg_1.b.x)), !(!arg_1.b.x), true | (global1[_wgslsmith_index_u32(61879u, 2u)] < -50167i)), all(select(global2.b, !global3.b, all(vec2<bool>(false, true)))));
    return 25548i;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = !select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global2.b.x, true, true), vec4<bool>(arg_1.b.x, global2.b.x, false, true)), !(!vec4<bool>(false, global2.b.x, global3.b.x, global3.b.x)), vec4<bool>(true, any(global3.b), true, false)), select(select(vec4<bool>(global2.b.x, true, false, true), vec4<bool>(global3.b.x, global2.b.x, true, global3.b.x), !vec4<bool>(arg_1.b.x, global2.b.x, false, true)), select(!vec4<bool>(arg_1.b.x, arg_1.b.x, false, global2.b.x), vec4<bool>(false, false, global2.b.x, true), select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(global3.b.x, arg_1.b.x, arg_1.b.x, false), true)), true), vec4<bool>(false, any(select(vec4<bool>(arg_1.b.x, false, true, global3.b.x), vec4<bool>(false, global2.b.x, global3.b.x, arg_1.b.x), vec4<bool>(false, arg_1.b.x, false, false))), global3.b.x, global3.b.x));
    global0 = array<Struct_1, 27>();
    var var_1 = countOneBits(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(arg_0, global1[_wgslsmith_index_u32(18430u, 2u)], 72459i, -38787i)), countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.a, -18362i, 30624i, u_input.a.x), vec4<i32>(259i, arg_1.a, u_input.a.x, -43086i), vec4<i32>(global3.a, 0i, u_input.a.x, arg_0)))));
    let var_2 = Struct_1(func_3(Struct_1(global2.a, var_0.wx), arg_1, -u_input.a), select(vec2<bool>(!all(vec2<bool>(global3.b.x, global3.b.x)), true), !global3.b, !vec2<bool>(!var_0.x, false)));
    let var_3 = global0[_wgslsmith_index_u32(47114u, 27u)];
    return global3.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(42614u, 27u)];
    global0 = array<Struct_1, 27>();
    var var_1 = Struct_1(-69387i, select(!select(vec2<bool>(global3.b.x, false), vec2<bool>(false, arg_2.x), select(global2.b, vec2<bool>(var_0.b.x, arg_1), arg_2)), !vec2<bool>(false, global2.b.x), all(!select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, false, false), arg_2.x))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(611f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1228f, -1423f) * _wgslsmith_f_op_f32(796f - -318f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(999f)), -401f))) * 556f)));
    global1 = array<i32, 2>();
    return Struct_1(~(-2147483647i), vec2<bool>(any(select(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(arg_2.x, arg_1, true, false), vec4<bool>(arg_1, var_0.b.x, global2.b.x, false)), vec4<bool>(var_0.b.x, false, global3.b.x, var_1.b.x), global2.a == -10855i)), !(35145i <= global2.a) && all(vec3<bool>(true, var_0.b.x, var_0.b.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_sub_i32(select(-1i, 0i, global3.b.x), 0i);
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(21465u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(4294967295u, arg_0), 47851u, arg_3, _wgslsmith_clamp_u32(60751u, arg_0, 52268u)), vec4<u32>(0u, arg_3, 35289u, 23052u) | max(vec4<u32>(arg_0, arg_3, arg_0, 71041u), vec4<u32>(4294967295u, 17934u, 5096u, 1u))), any(vec4<bool>(!global3.b.x, global1[_wgslsmith_index_u32(arg_0, 2u)] != global3.a, !global2.b.x, true))), ~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(36651u, 4294967295u), global4[_wgslsmith_index_u32(4294967295u, 27u)]), select(vec2<u32>(1u, arg_3), global4[_wgslsmith_index_u32(4294967295u, 27u)], false)) >> (28953u % 32u))), 27u)];
    global3 = func_4(func_2(-27602i, Struct_1(abs(u_input.a.x), vec2<bool>(40886i >= global1[_wgslsmith_index_u32(0u, 2u)], 0i > global1[_wgslsmith_index_u32(arg_3, 2u)]))), true, !func_2(-2172i, Struct_1(34817i, vec2<bool>(global2.b.x, false))));
    return _wgslsmith_add_u32(~(~82056u), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = u_input.a.x;
    global0 = array<Struct_1, 27>();
    var var_2 = ~vec4<u32>(countOneBits(1u), 104901u, ~(~17177u), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 57573u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~33758u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(23479u, 69407u, 1u)), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(~0u, 27u)], ~global4[_wgslsmith_index_u32(1u, 27u)]), ~func_1(1u, Struct_1(-1i, vec2<bool>(false, true)), global0[_wgslsmith_index_u32(51724u, 27u)], 4294967295u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = 4294967295u;
    var var_4 = global3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1440f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-306f, _wgslsmith_div_f32(-302f, 794f))))));
}

