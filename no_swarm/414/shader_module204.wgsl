struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 0u), 10760u, true, vec3<i32>(i32(-2147483648), 2147483647i, -29289i), vec2<i32>(-32498i, 38364i));

var<private> global2: array<u32, 7> = array<u32, 7>(27954u, 4264u, 1u, 21277u, 98841u, 19311u, 30414u);

var<private> global3: vec2<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = 0i;
    global1 = Struct_1(vec3<u32>(_wgslsmith_div_u32(1u, 1u), global2[_wgslsmith_index_u32(~(~(~arg_2)), 7u)], 1u), 23245u, true, _wgslsmith_mult_vec3_i32(abs(abs(select(global1.d, global1.d, vec3<bool>(false, global1.c, true)))), global1.d), ~firstLeadingBit(vec2<i32>(global1.d.x, -1i) ^ abs(vec2<i32>(-5486i, global1.e.x))));
    global3 = select(!select(vec2<bool>(all(vec3<bool>(global1.c, true, global3.x)), true), select(!vec2<bool>(global1.c, true), select(vec2<bool>(global3.x, true), vec2<bool>(true, global3.x), vec2<bool>(global1.c, false)), true), !vec2<bool>(global3.x, global3.x)), select(select(vec2<bool>(true, global1.c), select(!vec2<bool>(false, global1.c), vec2<bool>(false, false), vec2<bool>(true, global3.x)), !vec2<bool>(global3.x, global1.c)), vec2<bool>(select(true, global3.x, global1.c == global3.x), global3.x), any(!select(vec4<bool>(global1.c, true, false, false), vec4<bool>(global1.c, global1.c, true, true), false))), true);
    let var_1 = max(min(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5686u, global2[_wgslsmith_index_u32(0u, 7u)]), vec2<u32>(79010u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), 1u, 1u), global1.a) & reverseBits(arg_1.zwz), ~(~(~_wgslsmith_div_vec3_u32(global1.a, arg_1.yxy))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-448f, -608f), _wgslsmith_f_op_f32(arg_0.x * -289f))))), _wgslsmith_f_op_f32(f32(-1f) * -635f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_f_op_f32(-arg_0.x));
    return ~arg_3;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(max((_wgslsmith_dot_vec3_u32(arg_0.yzx, global1.a) | 1u) | (~func_3(vec4<f32>(1134f, 374f, -113f, -721f), vec4<u32>(global2[_wgslsmith_index_u32(0u, 7u)], u_input.a.x, global2[_wgslsmith_index_u32(86563u, 7u)], 28869u), u_input.a.x, 57956u) | ~(~58250u)), u_input.a.x), 7u)];
    var var_1 = true;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.e.x, _wgslsmith_dot_vec2_i32(-global1.e, _wgslsmith_div_vec2_i32(global1.e | vec2<i32>(global1.d.x, global1.e.x), global1.e))), -(~(u_input.b << (arg_0.x % 32u))));
    global2 = array<u32, 7>();
    var var_3 = global1.d.x;
    return Struct_1(~abs(global1.a << (vec3<u32>(arg_0.x, arg_0.x, 10357u) % vec3<u32>(32u))) | ~vec3<u32>(arg_0.x, arg_0.x, ~arg_0.x), 4294967295u, true, _wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(17761i, global1.d.x, global1.d.x), global1.d, ~vec3<i32>(u_input.b, 2147483647i, -7130i)), global1.d, !vec3<bool>(global3.x, false, global1.c)), -select(global1.d, _wgslsmith_add_vec3_i32(global1.d, global1.d), vec3<bool>(true, true, false))), global1.d.yy << (vec2<u32>(_wgslsmith_dot_vec4_u32(~arg_0, vec4<u32>(17968u, global2[_wgslsmith_index_u32(37704u, 7u)], u_input.a.x, arg_0.x)), ~(~global2[_wgslsmith_index_u32(global1.b, 7u)])) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(~(~_wgslsmith_div_u32(22170u, 1u) >> (((u_input.a.x >> (global1.b % 32u)) >> (~1u % 32u)) % 32u)));
    return Struct_1(vec3<u32>(75490u, ~0u, ~13882u), abs(firstLeadingBit(arg_2.b)), all(arg_1), reverseBits(func_2(firstTrailingBit(vec4<u32>(44269u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_2.a.x, arg_2.a.x))).d), min(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, global1.e.x), reverseBits(arg_2.e))), vec2<i32>(-1i, global1.e.x)));
}

fn func_1() -> f32 {
    global1 = func_4(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-53156i, select(u_input.b, -18968i, true), -15319i), -global1.d << (countOneBits(vec3<u32>(53927u, 11560u, u_input.a.x)) % vec3<u32>(32u))), global1.d), vec3<bool>(global3.x, global1.c, true), func_2(~(~vec4<u32>(global1.b, global1.b, global1.a.x, u_input.a.x))));
    var var_0 = global3.x;
    let var_1 = 307f;
    global1 = func_2(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, select(firstLeadingBit(_wgslsmith_clamp_u32(56840u, 0u, 28183u)), 15598u, true)));
    global1 = func_2(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(u_input.a.x), ~global1.b, abs(global1.a.x), u_input.a.x), vec4<u32>(19795u, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 4294967295u, global1.a.x) << (~vec4<u32>(u_input.a.x, u_input.a.x, 48763u, u_input.a.x) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(0u << (global1.a.x % 32u), u_input.a.x, 40568u, ~62385u))));
    return -353f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), 1327f) - 351f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.e.x, 49053i, 2147483647i), global1.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~reverseBits(global2[_wgslsmith_index_u32(4294967295u, 7u)]), ~(~global2[_wgslsmith_index_u32(1977u, 7u)])), global1.a.xx), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(771u, 4294967295u), func_4(vec3<i32>(0i, global1.e.x, 1i), select(vec3<bool>(false, true, global3.x), vec3<bool>(global1.c, false, true), vec3<bool>(global3.x, true, true)), Struct_1(vec3<u32>(0u, global2[_wgslsmith_index_u32(18642u, 7u)], u_input.a.x), global1.a.x, global3.x, vec3<i32>(2147483647i, u_input.b, global1.e.x), vec2<i32>(u_input.b, 31087i))).a.xy), global1.b));
}

