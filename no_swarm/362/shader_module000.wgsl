struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(1u, vec3<bool>(false, false, false), 0i);

var<private> global2: array<i32, 16>;

var<private> global3: Struct_4 = Struct_4(false, Struct_1(1u, true));

var<private> global4: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, u_input.a.x, 71440u, 1u), u_input.a), u_input.a), select(vec3<bool>(any(global1.b.zy), true, false), select(!global1.b, global1.b, global1.b.x), select(global1.b, global1.b, global3.b.b)), ~(~(~u_input.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-439f, arg_1)), vec3<u32>(~u_input.a.x | ~1u, 0u, global3.b.a), global3.b);
    let var_1 = select(!global1.b, var_0.a.b, false);
    global1 = var_0.a;
    let var_2 = -min(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-10404i, 18568i, u_input.b, global1.c)), vec4<i32>(u_input.b, 38654i, 1i, -19603i) | ~vec4<i32>(-2147483647i, global1.c, 32279i, 41592i), vec4<i32>(_wgslsmith_sub_i32(-52508i, 0i), 0i, 59058i, 0i)), select(~firstTrailingBit(vec4<i32>(var_0.a.c, global1.c, global2[_wgslsmith_index_u32(4294967295u, 16u)], 3695i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(12869i, global1.c, global2[_wgslsmith_index_u32(var_0.c.x, 16u)], global2[_wgslsmith_index_u32(1u, 16u)]) & vec4<i32>(-17710i, -2147483647i, 40461i, u_input.b), vec4<i32>(0i, -1i, global1.c, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 15180i, 53765i, -30761i), vec4<i32>(2147483647i, 1i, var_0.a.c, 33298i))), vec4<bool>(var_1.x, var_0.d.b, false || var_1.x, false)));
    var var_3 = vec3<f32>(var_0.b.x, arg_1, 1304f);
    return var_1.x;
}

fn func_2() -> bool {
    var var_0 = func_3(!vec2<bool>(any(!global1.b.xy), !(0u != global3.b.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(ceil(-753f))))))));
    global0 = true;
    global2 = array<i32, 16>();
    global4 = array<vec2<bool>, 15>();
    var var_1 = select(min(_wgslsmith_dot_vec4_u32(select(u_input.a, ~u_input.a, all(vec3<bool>(false, global1.b.x, global3.b.b))), _wgslsmith_mult_vec4_u32(~vec4<u32>(22176u, 19687u, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, global3.b.a, global3.b.a, global3.b.a))), global3.b.a), _wgslsmith_add_u32(countOneBits(0u), 4294967295u), any(global1.b));
    return all(vec3<bool>(true, !func_3(!global4[_wgslsmith_index_u32(global3.b.a, 15u)], _wgslsmith_f_op_f32(915f - -398f)), all(!vec4<bool>(global1.b.x, false, true, true))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = firstTrailingBit(vec3<i32>(select(global1.c, _wgslsmith_clamp_i32(global1.c, u_input.b | 1i, 2147483647i), !all(global1.b)), ~(~global1.c), u_input.b));
    var var_1 = all(!arg_2.wx);
    global2 = array<i32, 16>();
    let var_2 = ~(~_wgslsmith_add_u32(firstLeadingBit(global3.b.a), firstTrailingBit(arg_1.x)));
    let var_3 = global3.b;
    return Struct_2(1u, !(!vec3<bool>(func_2(), func_3(vec2<bool>(true, global1.b.x), arg_0.x), func_2())), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(abs(u_input.b), global1.c, 1i)), countOneBits(select(vec3<i32>(0i, -4212i, 2147483647i), vec3<i32>(9956i, 0i, 1i), arg_2.www))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> vec4<f32> {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    var var_0 = global3.b;
    global1 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-406f, arg_3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-611f * arg_3.x))), arg_3.x) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x))), -129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), u_input.a.xy, select(select(select(!vec4<bool>(false, global3.b.b, true, var_0.b), vec4<bool>(false, false, false, arg_1), vec4<bool>(global1.b.x, global1.b.x, arg_1, true)), vec4<bool>(all(vec4<bool>(global1.b.x, arg_1, global3.a, false)), arg_3.x >= arg_3.x, select(global3.b.b, global3.b.b, global3.a), false), !select(vec4<bool>(global1.b.x, global3.b.b, true, true), vec4<bool>(global3.b.b, false, true, arg_1), true)), vec4<bool>(all(!vec2<bool>(true, global3.a)), false, !(arg_3.x < arg_3.x), func_2()), false));
    var var_1 = !(!(!(!(!vec4<bool>(arg_1, global3.b.b, true, true)))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_i32(-1i, ~1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(~vec4<u32>(39862u, global1.a, 82719u, 9064u), true, global1.c << (0u % 32u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1086f, -397f, 1248f, 2075f), vec4<f32>(-1432f, 1000f, -684f, -1700f)))))) * vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = _wgslsmith_mod_vec4_i32(firstLeadingBit(~min(-vec4<i32>(2147483647i, 2147483647i, global1.c, -1i), firstTrailingBit(vec4<i32>(global1.c, 2147483647i, global1.c, -32133i)))), -abs(-min(vec4<i32>(2147483647i, u_input.b, 23693i, -2147483647i), vec4<i32>(global1.c, global1.c, u_input.b, 1i))));
    global4 = array<vec2<bool>, 15>();
    global3 = Struct_4(firstTrailingBit(u_input.a.x) <= (~_wgslsmith_mod_u32(global3.b.a, u_input.a.x) | 46740u), Struct_1(global1.a, false));
    let var_3 = Struct_4(!(!(abs(global1.a) == reverseBits(global3.b.a))), Struct_1(abs(global3.b.a), !global1.b.x && !global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(~var_2.zx, countOneBits(vec2<i32>(-1i) * -vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], -1i))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(48601u, u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a, global3.b.a), vec2<u32>(18744u, global1.a) | u_input.a.zy)), u_input.a.ywz, _wgslsmith_mult_vec3_u32(max(vec3<u32>(select(83578u, 4294967295u, true), var_3.b.a, var_3.b.a & global1.a), u_input.a.yyy ^ vec3<u32>(global1.a, global1.a, 1u)), u_input.a.xzx));
}

