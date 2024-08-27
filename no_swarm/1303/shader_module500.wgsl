struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 25>;

var<private> global2: vec3<u32> = vec3<u32>(57052u, 57771u, 8999u);

var<private> global3: array<i32, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, global3[_wgslsmith_index_u32(global2.x, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], 0i) << (firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 20361u, 45981u)) % vec4<u32>(32u))) & vec4<i32>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(~global2.x, 32u)], 4583i, _wgslsmith_add_i32(-22082i, -93184i)), max(max(vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(global2.x, 32u)], u_input.a, 1i) ^ vec4<i32>(u_input.c.x, -25350i, 2147483647i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -38383i, -1i, global3[_wgslsmith_index_u32(24354u, 32u)]), vec4<i32>(global3[_wgslsmith_index_u32(11065u, 32u)], u_input.a, -12444i, -2147483647i), vec4<i32>(4923i, -2147483647i, global3[_wgslsmith_index_u32(u_input.e.x, 32u)], -61909i))), ~(vec4<i32>(8459i, -1i, u_input.d, -30369i) ^ vec4<i32>(u_input.a, 31561i, u_input.d, global3[_wgslsmith_index_u32(global2.x, 32u)]))) ^ select(-_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global2.x, 32u)], -7382i, u_input.a, -2147483647i), vec4<i32>(u_input.d, -4522i, u_input.c.x, 0i)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(0i, u_input.d, -7252i, -5609i)), vec4<i32>(global3[_wgslsmith_index_u32(u_input.e.x, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(26498u, 32u)], u_input.a)), !all(arg_0)));
    var var_1 = Struct_4(!(!arg_0.x));
    global3 = array<i32, 32>();
    let var_2 = _wgslsmith_mod_i32(i32(-1i) * -47551i, -var_0.x & ~27504i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-462f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1281f + 201f))))));
    return u_input.a <= min(var_0.x, 2147483647i);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    return firstLeadingBit(reverseBits(vec3<u32>(global2.x, 73132u, _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.b, global2.x)))) | countOneBits(vec3<u32>(7471u, ~global2.x, _wgslsmith_mult_u32(0u, 40848u))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    global1 = array<Struct_2, 25>();
    global2 = _wgslsmith_add_vec3_u32(vec3<u32>(abs(19927u), 47782u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(0u, 0u)), arg_2) & ~(~0u)), func_3(!(!func_2(vec4<bool>(true, true, global0.x, global0.x), vec2<bool>(global0.x, global0.x)))));
    let var_0 = arg_1;
    return !any(!select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, true), vec2<bool>(false, true), true), vec2<bool>(false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!vec2<bool>(global0.x, !global0.x), !(!vec2<bool>(any(vec4<bool>(global0.x, true, false, false)), false)), select(select(vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(global0.x, false, global0.x, true))), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), _wgslsmith_sub_u32(global2.x, 29734u) >= 1u), vec2<bool>(true, true), all(vec4<bool>(func_1(-690f, Struct_1(u_input.d, vec4<i32>(-47589i, 12009i, global3[_wgslsmith_index_u32(1u, 32u)], 1i), vec4<f32>(-1813f, 413f, 493f, 378f), vec4<f32>(-1046f, -437f, 1000f, -536f)), 61554u, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 32u)], vec4<i32>(1i, u_input.d, u_input.a, -48398i), vec4<f32>(-311f, -195f, -320f, -402f), vec4<f32>(344f, 1273f, -253f, 573f))), all(vec2<bool>(global0.x, global0.x)), !global0.x, true))));
    var var_0 = select(select(!select(!vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, global0.x))), select(!(!vec4<bool>(global0.x, false, false, true)), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), false), true), vec4<bool>(true, !(u_input.d != global3[_wgslsmith_index_u32(global2.x, 32u)]), global0.x, !(!global0.x))), select(select(!vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, true, global0.x, all(vec3<bool>(global0.x, false, global0.x))), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x))), !(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, false, true))), vec4<bool>(!func_1(-418f, Struct_1(u_input.a, vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(global2.x, 32u)], -2411i, u_input.a), vec4<f32>(-1000f, -237f, -784f, -691f), vec4<f32>(-720f, 297f, 1190f, -1361f)), u_input.e.x, Struct_1(0i, vec4<i32>(7839i, global3[_wgslsmith_index_u32(u_input.b, 32u)], u_input.d, global3[_wgslsmith_index_u32(u_input.b, 32u)]), vec4<f32>(-2090f, 125f, -1000f, -1617f), vec4<f32>(2119f, -143f, -450f, 112f))), !all(vec2<bool>(global0.x, global0.x)), false, !func_2(vec4<bool>(global0.x, false, true, false), vec2<bool>(global0.x, true)))), !(!vec4<bool>(true, false, false, false != global0.x)));
    let var_1 = !(!var_0.xyz);
    var_0 = vec4<bool>(false, true, (u_input.b > firstTrailingBit(3279u & u_input.e.x)) && all(var_1.zx), global3[_wgslsmith_index_u32(~(countOneBits(global2.x) | u_input.e.x), 32u)] > _wgslsmith_div_i32(global3[_wgslsmith_index_u32(~abs(u_input.e.x), 32u)], 0i));
    global3 = array<i32, 32>();
    var_0 = !(!vec4<bool>(true, true, all(vec3<bool>(true, false, global0.x)), var_0.x));
    var var_2 = !(u_input.c.x > -1i);
    var var_3 = select(select(var_0.zxy, vec3<bool>(var_0.x, !all(var_1), any(!var_1.xy)), !(!(!var_0.ywy))), vec3<bool>(-(global3[_wgslsmith_index_u32(50590u, 32u)] & -17400i) < _wgslsmith_add_i32(_wgslsmith_mult_i32(49295i, -39694i), u_input.d ^ 32906i), var_1.x | false, any(var_0.zzy)), vec3<bool>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-600f, 692f))), Struct_1(u_input.a, ~vec4<i32>(global3[_wgslsmith_index_u32(global2.x, 32u)], global3[_wgslsmith_index_u32(global2.x, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], 11198i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, -280f, 1938f, 372f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1794f, 1064f, -617f, 908f)))), ~abs(18750u), Struct_1(0i | u_input.d, vec4<i32>(2147483647i, 6213i, u_input.a, 1i), vec4<f32>(716f, 1286f, -1000f, -1755f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(852f, 458f, 751f, 2596f))))), var_0.x || global0.x, (53007u != u_input.b) | var_1.x));
    let var_4 = Struct_3(true);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(u_input.c), firstLeadingBit(u_input.c), true), u_input.e.x, vec3<u32>(u_input.b, global2.x, _wgslsmith_mult_u32(global2.x, global2.x)), -1157f);
}

