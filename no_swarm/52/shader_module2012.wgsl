struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-220f, -173f), vec4<i32>(2147483647i, 71362i, 5233i, i32(-2147483648)));

var<private> global2: array<i32, 25>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1791f, 1119f), vec4<i32>(-11970i, i32(-2147483648), -15997i, -1i));

var<private> global4: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.c.a))), _wgslsmith_div_vec4_i32(global1.b, abs(firstLeadingBit(global0.b))));
    global2 = array<i32, 25>();
    var var_1 = arg_0.c.b;
    var var_2 = global0.b;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.c.a.x))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(~1u, 1u, ~arg_0.a) & (~arg_0.a ^ arg_0.a), u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 61105u, 332u, 4294967295u) & vec4<u32>(49022u, 1u, 0u, u_input.b), ~vec4<u32>(1u, arg_0.a, 13065u, 59450u)), arg_0.a | abs(13797u), u_input.b), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 1u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, 20693u), vec3<u32>(16867u, arg_0.a, arg_0.a)))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(~(~(~u_input.b) | 1u), -4559i, Struct_1(_wgslsmith_f_op_vec2_f32(abs(global3.a)), reverseBits(abs(min(global0.b, vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 25u)], -30174i, 30954i, -12467i))))));
    let var_1 = false;
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, var_0.a, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<bool>(arg_0.x, false, var_1, true)) & (vec4<u32>(var_0.a, 30941u, 25378u, 0u) | vec4<u32>(var_0.a, 34259u, var_0.a, 4294967295u)), max(select(vec4<u32>(88722u, 4853u, var_0.a, 0u), vec4<u32>(11709u, u_input.b, 34394u, 37096u), true), vec4<u32>(u_input.b, 4294967295u, var_0.a, var_0.a))), vec4<u32>(4294967295u, _wgslsmith_div_u32(1u, firstLeadingBit(11063u)), func_3(Struct_2(u_input.b, global1.b.x, Struct_1(vec2<f32>(var_0.c.a.x, -309f), global0.b)), -vec2<i32>(-2147483647i, u_input.a), -vec2<i32>(2147483647i, -1i)), ~abs(u_input.b))), _wgslsmith_dot_vec3_i32(-vec3<i32>(select(31457i, 0i, false), global3.b.x, global3.b.x), abs(~var_0.c.b.wzz)), var_0.c);
    let var_3 = true;
    var_2 = Struct_2(func_3(Struct_2(~var_0.a, 0i, var_0.c), vec2<i32>(0i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -var_0.b), global1.b.zy)), i32(-1i) * -_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(17856i, -2147483647i)), var_0.c);
    return Struct_2(~u_input.b, _wgslsmith_mult_i32(-countOneBits(var_0.b), -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(14606u, 25u)], 0i)) << (var_0.a % 32u), var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(true, select(false, true, true)), true)));
    let var_1 = Struct_2(0u, -9111i, func_2(!select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(false, var_0.x, true)))).c);
    var var_2 = _wgslsmith_sub_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a, firstLeadingBit(0u)), firstLeadingBit(~vec2<u32>(arg_0.a, 1u))), ~(~countOneBits(vec2<u32>(var_1.a, u_input.b)))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, 0u), ~vec2<u32>(var_1.a, 4294967295u)), vec2<u32>(arg_1.a, 0u)));
    global2 = array<i32, 25>();
    global1 = arg_0.c;
    return global0.a;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_add_u32(u_input.b, u_input.b), 12809i, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1414f, global0.a.x))), _wgslsmith_f_op_f32(max(-302f, -1000f))), global3.b));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2(!select(arg_0, arg_0, arg_0.x)), func_2(!arg_0))), global0.b);
    let var_1 = select(_wgslsmith_sub_vec2_u32(firstLeadingBit(max(vec2<u32>(0u, u_input.b) | vec2<u32>(var_0.a, var_0.a), select(vec2<u32>(var_0.a, 1u), vec2<u32>(u_input.b, 8067u), false))), firstTrailingBit(~firstTrailingBit(vec2<u32>(37234u, 85454u)))), _wgslsmith_add_vec2_u32(~vec2<u32>(~var_0.a, 1u), _wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(25241u, 30337u)), vec2<u32>(u_input.b >> (0u % 32u), _wgslsmith_mod_u32(u_input.b, var_0.a)))), true);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), global0.a.x);
    global1 = func_2(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)))).c;
    let var_1 = 27528i;
    var var_2 = true;
    let var_3 = ~59866u;
    var var_4 = vec3<f32>(global1.a.x, func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, any(vec2<bool>(true, true))))).c.a.x, global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

