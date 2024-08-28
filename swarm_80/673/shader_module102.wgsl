struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-1i, -77193i);

var<private> global1: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec2<bool> {
    global0 = array<i32, 2>();
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 54363i), u_input.d), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(3800i, 32895i, -43319i), vec3<i32>(arg_1.x, global0[_wgslsmith_index_u32(48004u, 2u)], arg_1.x))), ~countOneBits(arg_1.x), global1.a.x)), -vec4<i32>(arg_1.x | ~(-2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(57808i, global0[_wgslsmith_index_u32(global1.e.a.x, 2u)], u_input.d.x), vec3<i32>(-290i, -87354i, -27681i)), _wgslsmith_dot_vec2_i32(reverseBits(arg_1), abs(arg_1)), firstLeadingBit(u_input.d.x)), min(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global1.a.x, arg_1.x, -13038i)), -vec4<i32>(arg_1.x, 49334i, u_input.d.x, global0[_wgslsmith_index_u32(global1.c, 2u)]))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.x, arg_1.x), -global0[_wgslsmith_index_u32(62606u, 2u)]), abs(arg_1.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-1468i, 53860i), u_input.d.x >> (40324u % 32u)), -global1.a.x)));
    var var_1 = select(!vec3<bool>(true, -1462f == _wgslsmith_f_op_f32(trunc(-1116f)), false), vec3<bool>(arg_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c, 17455u, u_input.c.x), vec4<u32>(u_input.a, 66161u, 0u, u_input.a)) > 4294967295u, arg_2.x), true);
    global0 = array<i32, 2>();
    var var_2 = ~(i32(-1i) * -2147483647i);
    return select(arg_2, arg_2, !select(!(!vec2<bool>(true, var_1.x)), select(!vec2<bool>(false, arg_2.x), !var_1.zx, var_1.yz), all(var_1.yy)));
}

fn func_2(arg_0: Struct_5) -> i32 {
    return -32497i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), all(vec3<bool>(false, false, true))), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -global1.a & -vec2<i32>(2147483647i, global1.b), vec2<bool>(true, true)));
    var var_1 = -vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~(~4294967295u), 2u)], _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global1.b, global1.a.x), func_2(Struct_5(vec4<bool>(true, true, var_0.x, var_0.x), Struct_2(u_input.d, global0[_wgslsmith_index_u32(u_input.a, 2u)], 0u, global1.e, Struct_1(global1.e.a)), vec4<u32>(u_input.b, 0u, 8751u, u_input.a), global1.e, 1538f)), min(2147483647i, global0[_wgslsmith_index_u32(1u, 2u)]))), firstLeadingBit(firstTrailingBit(~4647i)), -1i << (u_input.a % 32u));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1707f - 157f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1073f, 144f)), 607f, func_1(1616f, vec2<i32>(-2680i, var_1.x), vec2<bool>(var_0.x, true)).x)) + 1512f))));
    var var_3 = Struct_2(~vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), -10167i) >> (u_input.c.zx % vec2<u32>(32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 14347i) & vec2<i32>(~u_input.d.x, max(global1.a.x, -1i)), max(_wgslsmith_sub_vec2_i32(u_input.d & global1.a, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.d.x, global0[_wgslsmith_index_u32(global1.d.a.x, 2u)]))), abs(~global1.a))), 1u, Struct_1(global1.d.a), Struct_1(vec3<u32>(36708u, 8907u, _wgslsmith_mult_u32(4294967295u, ~global1.d.a.x))));
    var var_4 = Struct_3(select(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(!var_0.x, true, true), !(!var_0.x)), vec3<bool>(~var_3.b >= (i32(-1i) * -20146i), var_0.x, var_0.x), !var_0.x == (any(vec3<bool>(var_0.x, false, true)) || any(vec2<bool>(var_0.x, false)))), !(!vec3<bool>(var_0.x, true, all(vec3<bool>(var_0.x, false, var_0.x)))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(35201u, global1.c), vec2<u32>(1u, 7712u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(countOneBits(var_4.c), 2u)]);
}

