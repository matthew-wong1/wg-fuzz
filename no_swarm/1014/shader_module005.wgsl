struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<bool>(true, true, false, false), vec3<f32>(-1000f, 170f, 1165f), true), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(1194f, 1000f, 1000f), true), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(707f, -1000f, -338f), false), Struct_1(vec4<bool>(true, false, false, false), vec3<f32>(1263f, 116f, -710f), true), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(195f, 388f, 1270f), false), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(-418f, 565f, 1387f), false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-432f, -199f, -1405f), false), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1871f, 1068f, -1224f), true), Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(518f, -432f, -703f), true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(692f, 604f, 1470f), false), Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1000f, 268f, -1816f), true), Struct_1(vec4<bool>(false, true, false, false), vec3<f32>(846f, -118f, 886f), false), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(502f, 268f, -1237f), false), Struct_1(vec4<bool>(false, false, true, true), vec3<f32>(1342f, -1000f, -1000f), false), Struct_1(vec4<bool>(false, false, true, false), vec3<f32>(-1725f, 1022f, 757f), true), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(712f, 673f, 416f), false));

var<private> global1: array<u32, 8>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, false, false, true, true, true, true, false, true, true, false, true, false, true, true, true, false);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -278f))))), arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x))) * arg_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1343f, -1688f, _wgslsmith_f_op_f32(step(arg_0.b.x, var_0.x)), -1000f))));
    var var_1 = Struct_1(!(!select(select(vec4<bool>(arg_0.c, false, false, arg_0.c), arg_0.a, vec4<bool>(false, true, true, arg_0.a.x)), !vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xyw) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1806f, arg_0.b.x, 1854f) - _wgslsmith_div_vec3_f32(vec3<f32>(-247f, 741f, arg_0.b.x), vec3<f32>(-182f, var_0.x, -993f)))))), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(21536u, 8u)], 6777u), 22161u), 18u)]);
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 476f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(361f, var_0.x)) * arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + var_1.b.x))));
    let var_2 = global0[_wgslsmith_index_u32((15592u ^ u_input.d) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c | u_input.c, 8452u), ~min(u_input.d, 113856u), firstTrailingBit(u_input.a)), ~vec3<u32>(4294967295u, u_input.d, 4294967295u)) % 32u), 16u)];
    return select(var_1.a, var_1.a, vec4<bool>(false, var_2.a.x, var_1.c, all(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)]))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!select(func_3(Struct_1(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.c, 18u)]), vec3<f32>(-450f, 1653f, -863f), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 18u)]), _wgslsmith_sub_vec2_i32(u_input.e, u_input.e)), !vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(91077u, 18u)]), all(func_3(Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(27942u, 18u)], false, global2[_wgslsmith_index_u32(12534u, 18u)]), vec3<f32>(-1205f, -112f, -369f), global2[_wgslsmith_index_u32(u_input.a, 18u)]), u_input.e))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(101f, 414f))))), 161f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - 1158f) - _wgslsmith_f_op_f32(floor(404f))), _wgslsmith_f_op_f32(round(589f)))), !(all(select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false))) && true));
    var var_1 = !(!(!var_0.c));
    let var_2 = Struct_1(!vec4<bool>(true, true, !global2[_wgslsmith_index_u32(max(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 8u)]), 18u)], all(select(var_0.a, vec4<bool>(var_0.c, false, true, false), false))), _wgslsmith_f_op_vec3_f32(floor(var_0.b)), !(~u_input.c <= global1[_wgslsmith_index_u32(0u, 8u)]));
    global0 = array<Struct_1, 16>();
    global2 = array<bool, 18>();
    return global0[_wgslsmith_index_u32(~1u, 16u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(arg_0.b.x + arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1062f)))) - _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1013f * arg_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.x, 2128f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f - arg_0.b.x)))));
    var var_1 = Struct_1(func_3(func_2(), reverseBits(~vec2<i32>(u_input.b, 9072i) | abs(vec2<i32>(-2147483647i, -2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * arg_2.b.x)), arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x + arg_0.b.x))), func_3(Struct_1(func_3(Struct_1(arg_2.a, vec3<f32>(arg_3.b.x, arg_0.b.x, -2025f), arg_3.a.x), u_input.e), _wgslsmith_f_op_vec3_f32(arg_3.b + var_0.yxy), !arg_3.a.x), vec2<i32>(1i, reverseBits(u_input.e.x))).x & true);
    global1 = array<u32, 8>();
    var var_2 = func_2();
    var var_3 = func_2();
    return firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(15190u, 8u)], min(u_input.c, _wgslsmith_clamp_u32(~29694u, arg_1, u_input.c))));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = select(~func_4(func_2(), 1u ^ (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 8u)], 8u)], 8u)] & global1[_wgslsmith_index_u32(0u, 8u)]), global0[_wgslsmith_index_u32(31061u, 16u)], func_2()), _wgslsmith_sub_vec2_u32(func_4(func_2(), u_input.d, func_2(), func_2()), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.d), abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], u_input.a, global1[_wgslsmith_index_u32(4294967295u, 8u)]))), ~0u)), func_2().a.yw);
    var var_1 = vec2<u32>(0u, 4294967295u >> (_wgslsmith_div_u32(1u, 10553u) % 32u));
    return _wgslsmith_div_u32((var_0.x | (var_0.x & ~4294967295u)) ^ abs(func_4(func_2(), 73353u, func_2(), Struct_1(vec4<bool>(arg_0, false, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 8u)], 18u)]), vec3<f32>(-609f, 732f, -1962f), arg_0)).x), _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(~vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.c))), ~(~abs(vec4<u32>(0u, 0u, var_0.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d, 0u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], u_input.c, global1[_wgslsmith_index_u32(4192u, 8u)])), 0u, 0u, 54588u), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], 96239u, u_input.c, 0u) & min(vec4<u32>(7947u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 8u)], 8u)], 1639u, 20479u), vec4<u32>(138954u, global1[_wgslsmith_index_u32(1u, 8u)], 4294967295u, 71443u))), ~vec4<u32>(~u_input.d, global1[_wgslsmith_index_u32(~u_input.d, 8u)], 0u, func_1(global2[_wgslsmith_index_u32(66069u, 18u)]))) >> (_wgslsmith_add_u32(0u, 5048u) % 32u), 16u)];
    let var_1 = global0[_wgslsmith_index_u32(~25118u & ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20035u, 8u)], 8u)]), vec4<u32>(u_input.d, 89543u, 0u, 0u)) & _wgslsmith_mod_u32(8046u, 4294967295u))), 16u)];
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(-(~u_input.b)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -41316i, u_input.e.x), vec3<i32>(-34831i, -2147483647i, u_input.e.x)) | -vec3<i32>(21634i, u_input.b, -2324i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec3<i32>(1686i, u_input.e.x, u_input.e.x)), var_0.a.wyw), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.e.x) & (vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i) >> (vec3<u32>(1u, 32000u, u_input.c) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b, -45106i), vec3<i32>(u_input.e.x, u_input.b, u_input.e.x), vec3<i32>(0i, 1i, u_input.e.x)), firstLeadingBit(vec3<i32>(u_input.e.x, 0i, u_input.b))))));
    var var_3 = select(vec4<bool>(false, global2[_wgslsmith_index_u32(~(~35507u), 18u)], var_0.a.x, true), select(func_2().a, func_2().a, global2[_wgslsmith_index_u32(~u_input.c ^ max(~global1[_wgslsmith_index_u32(8675u, 8u)], ~0u), 18u)]), false);
    var var_4 = func_2();
    var_3 = func_2().a;
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, 8975i, -21864i), -vec4<i32>(u_input.b, 1i, 36818i, -2147483647i))), ~(~(~vec2<u32>(4294967295u, 4294967295u)) & ~func_4(Struct_1(var_0.a, vec3<f32>(692f, var_0.b.x, var_0.b.x), true), global1[_wgslsmith_index_u32(28415u, 8u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)])), -firstTrailingBit(vec3<i32>(-u_input.b, u_input.b, u_input.b)));
}

