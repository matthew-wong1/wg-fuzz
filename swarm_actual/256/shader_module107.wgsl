struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 6>;

var<private> global2: array<u32, 30> = array<u32, 30>(74946u, 52668u, 0u, 26693u, 5704u, 35217u, 31809u, 1u, 1u, 73421u, 53185u, 36906u, 1u, 42631u, 26561u, 0u, 22684u, 4294967295u, 7516u, 51569u, 0u, 74305u, 1u, 4294967295u, 66700u, 30933u, 20021u, 4294967295u, 1u, 4294967295u);

var<private> global3: Struct_1 = Struct_1(38425i, 8125u, vec3<u32>(47838u, 4277u, 12957u));

var<private> global4: i32 = 43087i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec2<bool> {
    let var_0 = !(!vec3<bool>(true & (84305u != global2[_wgslsmith_index_u32(4294967295u, 30u)]), false, all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), arg_0))));
    return select(var_0.zx, !select(vec2<bool>(true, true), vec2<bool>(!var_0.x, arg_0), select(vec2<bool>(true, false), var_0.yx, var_0.x)), var_0.yx);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(-550f, _wgslsmith_f_op_f32(-2050f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(160f, _wgslsmith_f_op_f32(f32(-1f) * -732f), all(vec3<bool>(false, true, false)))))), _wgslsmith_f_op_f32(880f + -991f));
    var var_1 = select(select(vec4<bool>(true & all(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, true)) != all(vec3<bool>(false, true, false)), all(func_3(true, Struct_1(0i, 0u, arg_0.c), arg_0.c.x))), vec4<bool>(any(vec4<bool>(true, true, true, true)), func_3(true, Struct_1(global3.a, 15692u, vec3<u32>(arg_0.b, 62939u, 107571u)), reverseBits(global3.c.x)).x, true, func_3(true, Struct_1(u_input.a, 4294967295u, global3.c), 12035u).x), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)))), vec4<bool>(true, !(global3.a >= -2147483647i) == true, global2[_wgslsmith_index_u32(~(arg_0.c.x & global3.b), 30u)] >= (global3.b & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c.x, global3.b), 30u)]), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), !(!vec4<bool>(select(false, true, false), all(vec3<bool>(false, true, true)), true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(216f * _wgslsmith_f_op_f32(trunc(-2147f))));
    let var_3 = ~firstTrailingBit(~(~select(u_input.a, arg_0.a, false)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-411f * _wgslsmith_f_op_f32(317f * var_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 235f) * _wgslsmith_f_op_f32(round(var_2)))) + -887f) != var_2;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<Struct_2, 6>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    global2 = array<u32, 30>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = Struct_1(arg_0.a, ~(~_wgslsmith_clamp_u32(var_1.a.b, global3.c.x, global3.c.x)) & 126788u, ~vec3<u32>(var_1.a.b, ~reverseBits(global2[_wgslsmith_index_u32(72017u, 30u)]), _wgslsmith_dot_vec3_u32(arg_1.c, vec3<u32>(74143u, 69062u, 4294967295u))));
    return vec4<bool>(true | (_wgslsmith_mult_u32(arg_1.c.x, arg_0.b) != (var_0.a.b & 1u)), true, var_0.c.x != -global3.a, func_3(!(!any(vec3<bool>(true, false, false))), var_1.a, var_2.b).x);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = !vec3<bool>(any(func_4(func_2(Struct_1(u_input.a, global2[_wgslsmith_index_u32(38453u, 30u)], global3.c)), func_2(Struct_1(-11724i, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69616u, 30u)], 30u)], global3.c)))), all(!vec3<bool>(arg_0, arg_0, true)), arg_0);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(24516u, 30u)], 40066u << (abs(0u) % 32u)) << (global2[_wgslsmith_index_u32(4127u, 30u)] % 32u), 6u)];
    global2 = array<u32, 30>();
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_1.a.c, global3.c), 6u)];
    let var_3 = func_2(var_1.a).a;
    return global2[_wgslsmith_index_u32(~(~62497u) ^ (abs(global3.c.x) >> (global3.c.x % 32u)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-18519i, ~(~(~0u)) ^ func_1(true), global3.c);
    let var_0 = Struct_2(Struct_1(u_input.a, 25453u, firstLeadingBit(vec3<u32>(~global2[_wgslsmith_index_u32(23722u, 30u)], 4616u, 1u << (global2[_wgslsmith_index_u32(4294967295u, 30u)] % 32u)))), countOneBits(~abs(firstTrailingBit(vec4<i32>(-2147483647i, 4224i, global3.a, u_input.a)))), abs(vec2<i32>(u_input.a >> (~1u % 32u), min(8375i, u_input.a | 1i))));
    let var_1 = var_0.a.c.x;
    let var_2 = Struct_1(~_wgslsmith_mod_i32(var_0.c.x, 1286i), global3.b, var_0.a.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, 1389f, 1557f, 501f) * _wgslsmith_div_vec4_f32(vec4<f32>(2344f, -366f, -176f, -164f), vec4<f32>(1422f, 323f, -1212f, -796f)))))));
    var var_4 = any(select(vec2<bool>(true, select(func_3(true, Struct_1(23776i, 162611u, var_0.a.c), 4294967295u).x, -2147483647i <= var_0.b.x, true)), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c | select(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 42843u, var_1), var_0.a.c)), ~vec3<u32>(1787u, 47650u, 1u), any(vec4<bool>(true, true, true, true))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.b.yw, var_0.b.zz), ~13423i, _wgslsmith_dot_vec4_i32(vec4<i32>(58685i, -2147483647i, var_0.b.x, u_input.a), var_0.b), 2147483647i), _wgslsmith_mult_vec4_i32(var_0.b, -var_0.b)), _wgslsmith_f_op_f32(-var_3.x));
}

