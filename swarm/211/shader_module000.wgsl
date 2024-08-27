struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 20453u;

var<private> global1: Struct_1;

var<private> global2: vec2<u32> = vec2<u32>(32221u, 4294967295u);

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, true, true, true, true, true, false, false, true, false, false, true, true, true, true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = vec3<i32>(global1.d, reverseBits(arg_2.d) >> ((max(global1.c, ~4294967295u) ^ countOneBits(~global2.x)) % 32u), arg_2.d);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-569f)), 161f);
    global3 = array<bool, 18>();
    let var_2 = vec2<f32>(global1.a, arg_2.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2 * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, arg_2.a) - var_2), global3[_wgslsmith_index_u32(4294967295u, 18u)])), vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(853f))))));
    return firstLeadingBit(~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(96199u, arg_2.c, global2.x), vec3<u32>(43229u, 27699u, 78593u)), u_input.d, 1u));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    var var_0 = 1u;
    var_0 = (arg_2.x ^ (_wgslsmith_mult_u32(~arg_2.x, global2.x ^ global2.x) ^ 2650u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, _wgslsmith_sub_u32(0u, arg_2.x << (4672u % 32u)), ~firstLeadingBit(1u)), _wgslsmith_mult_vec3_u32(func_3(u_input.d, arg_2 << (arg_2 % vec2<u32>(32u)), arg_0), vec3<u32>(~global2.x, countOneBits(global1.c), 25161u)));
    global3 = array<bool, 18>();
    let var_1 = vec2<i32>(-11623i, -6198i);
    let var_2 = vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.b, countOneBits(firstTrailingBit(var_1)) & firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.d, 2966i), vec2<i32>(1i, var_1.x), var_1))), var_1.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(517f, 134f))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(-162f, global1.b, reverseBits(0u), -2147483647i | global1.d, global1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f * global1.a) * -431f), ~vec2<u32>(global2.x, 56455u), u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * -1000f))), -726f));
    var var_1 = all(global1.e);
    var_1 = all(!select(!global1.e.yz, !global1.e.yz, true)) & true;
    var var_2 = true;
    var_1 = true;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), false, ~(~(~11233u) >> (global1.c % 32u)), -18362i, select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 18u)], global1.b, _wgslsmith_add_i32(u_input.b.x, -54158i) <= global1.d), select(select(global1.e, !vec3<bool>(false, false, global1.e.x), global1.e), !global1.e, vec3<bool>(global1.b, global1.b, global1.e.x & global3[_wgslsmith_index_u32(global1.c, 18u)])), all(select(!vec3<bool>(global1.e.x, true, true), global1.e, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 18>();
    let var_0 = min(~vec3<i32>(-global1.d, i32(-1i) * -1i, 0i) | (((vec3<i32>(-35378i, u_input.e, u_input.c) >> (vec3<u32>(global1.c, global1.c, global1.c) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, global2.x, u_input.a) % vec3<u32>(32u))) & vec3<i32>(global1.d, min(global1.d, 0i), 8995i)), vec3<i32>(1i, ~(~4610i), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_sub_i32(u_input.e, global1.d)), ~global1.d & abs(-2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 11807i, -2147483647i), vec3<i32>(2147483647i, global1.d, u_input.c)))));
    var var_1 = func_1();
    global0 = var_1.c;
    var var_2 = Struct_1(global1.a, false, _wgslsmith_mult_u32(select(global1.c, 4294967295u, true), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, global1.c, global1.c), ~vec4<u32>(1u, global1.c, 0u, 95675u))), _wgslsmith_dot_vec3_i32(vec3<i32>(~func_1().d, firstTrailingBit(firstTrailingBit(u_input.c)), 25360i), countOneBits(var_0)), select(var_1.e, !global1.e, (~var_1.c >= _wgslsmith_mult_u32(74370u, global2.x)) | any(!global1.e)));
    let var_3 = -_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(-u_input.e), abs(-2147483647i << (u_input.d % 32u)), ~(-15292i)), _wgslsmith_add_vec3_i32(var_0, ~(~var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(1i, i32(-1i) * -17994i)), 4294967295u);
}

