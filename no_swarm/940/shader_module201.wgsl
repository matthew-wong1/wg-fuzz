struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(22536u, 58612u), vec2<u32>(32443u, 4294967295u), vec2<u32>(0u, 51107u));

var<private> global2: Struct_1 = Struct_1(true, vec3<f32>(-2654f, 528f, 862f));

var<private> global3: Struct_1 = Struct_1(true, vec3<f32>(728f, -939f, 397f));

var<private> global4: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, 5640i, -35491i), vec3<i32>(21627i, 2147483647i, 0i), vec3<i32>(-41704i, 12806i, 1i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-1i, 18680i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(1i, 38654i, -63341i), vec3<i32>(-45933i, 0i, 2147483647i), vec3<i32>(1452i, -37057i, -1i), vec3<i32>(1i, -1296i, -4828i), vec3<i32>(-1i, -1i, -37665i), vec3<i32>(-39973i, 35211i, i32(-2147483648)), vec3<i32>(28130i, -1i, 8948i), vec3<i32>(-59201i, -23330i, 1i), vec3<i32>(i32(-2147483648), -11664i, -1i), vec3<i32>(2147483647i, -4165i, -43713i), vec3<i32>(2147483647i, 20832i, -1i), vec3<i32>(23226i, 2147483647i, i32(-2147483648)), vec3<i32>(-9711i, 1209i, -45475i), vec3<i32>(-54545i, -1i, 2147483647i), vec3<i32>(-1i, 1i, -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_4(Struct_1(false & any(select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(arg_0.c.d.a, true, arg_2), vec3<bool>(arg_1, arg_1, false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(-1513f * -825f), _wgslsmith_f_op_f32(f32(-1f) * -843f))))));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    var var_1 = vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec2_i32(reverseBits(~_wgslsmith_div_vec2_i32(vec2<i32>(-37962i, u_input.a), vec2<i32>(-10999i, 2147483647i))), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-3534i, u_input.a), vec2<i32>(1i, 1i), vec2<i32>(u_input.a, u_input.a)))));
    global0 = array<Struct_2, 31>();
    return true;
}

fn func_2(arg_0: bool) -> bool {
    global1 = array<vec2<u32>, 3>();
    return func_3(Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 0u), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + global2.b.x)), Struct_2(firstTrailingBit(global1[_wgslsmith_index_u32(17181u, 3u)]), -762f, max(_wgslsmith_div_u32(58598u, 43675u), 1u), Struct_1(u_input.a == u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, -320f, global3.b.x)))), global0[_wgslsmith_index_u32(0u, 31u)], -775f), true, !(~1u != select(44659u, _wgslsmith_mult_u32(1u, 1u), select(true, global2.a, global3.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-709f, global3.b.x, -1092f, _wgslsmith_f_op_f32(148f - 2338f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, global2.b.x, 1352f, 1642f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, -792f, global2.b.x, -113f), vec4<f32>(global2.b.x, -363f, global3.b.x, global3.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -510f, -618f, global2.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, global2.b.x, global3.b.x))))));
}

fn func_1() -> u32 {
    global4 = array<vec3<i32>, 21>();
    let var_0 = vec3<bool>(true, func_2(any(select(vec3<bool>(global3.a, global3.a, true), !vec3<bool>(global3.a, global3.a, global2.a), select(true, global3.a, global2.a)))), all(!vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), true)));
    global1 = array<vec2<u32>, 3>();
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(14361i, u_input.a, u_input.a, ~(~(-u_input.a))), vec4<i32>(abs(u_input.a), abs(1i), -816i, 2147483647i), abs(select(_wgslsmith_add_vec4_i32(vec4<i32>(34538i, 2147483647i, u_input.a, 1618i), vec4<i32>(3996i, u_input.a, -20136i, u_input.a)) ^ vec4<i32>(u_input.a, 2147483647i, u_input.a, 40879i), -firstTrailingBit(vec4<i32>(u_input.a, 44840i, u_input.a, u_input.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, false, global3.a), vec4<bool>(false, global3.a, var_0.x, true)))));
    let var_2 = var_0.x;
    return ~(~countOneBits(~0u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(max(~1u, 1u), ~(~23337u), 1u), vec3<u32>(1u, 1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -960f, 357f) + vec3<f32>(global3.b.x, -184f, -2649f)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, global3.b.x, global3.b.x), global2.b))))), _wgslsmith_sub_vec2_i32(~abs(abs(vec2<i32>(-22173i, 0i))), vec2<i32>(u_input.a, -_wgslsmith_mult_i32(99i, u_input.a))), vec3<u32>(max(reverseBits(select(61143u, 1u, true)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(21778u, 28734u), global1[_wgslsmith_index_u32(115950u, 3u)])), _wgslsmith_add_u32(_wgslsmith_mod_u32(min(41589u, 29763u), ~1u), ~_wgslsmith_clamp_u32(1u, 0u, 6036u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 5792u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_mod_u32(1u, 6761u), func_1()), vec3<u32>(_wgslsmith_clamp_u32(78922u, 4294967295u, 35470u), select(1u, 0u, global2.a), ~4294967295u))), _wgslsmith_sub_vec4_i32(abs(~(vec4<i32>(u_input.a, u_input.a, -17956i, 2147483647i) ^ vec4<i32>(53029i, -1i, u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(~2147483647i, -17995i >> (1u % 32u), -4006i, u_input.a | u_input.a))));
}

