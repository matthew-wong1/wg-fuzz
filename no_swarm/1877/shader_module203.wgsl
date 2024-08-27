struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
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

var<private> global0: array<f32, 25>;

var<private> global1: array<f32, 7>;

var<private> global2: array<Struct_5, 4> = array<Struct_5, 4>(Struct_5(vec2<i32>(0i, 1i)), Struct_5(vec2<i32>(51319i, -24824i)), Struct_5(vec2<i32>(5177i, 5755i)), Struct_5(vec2<i32>(i32(-2147483648), i32(-2147483648))));

var<private> global3: array<f32, 27>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global3 = array<f32, 27>();
    global3 = array<f32, 27>();
    let var_0 = Struct_3(~_wgslsmith_div_i32(~1i, ~(i32(-1i) * -2147483647i)), global4.a, ~(~1u) >> (countOneBits(select(~1u, 4050u, true)) % 32u));
    var var_1 = -28398i & global4.a.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 27u)] * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c | 4294967295u, 7u)] + -553f))));
    return reverseBits(vec2<u32>(var_0.c, 1u)) | ~max(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, var_0.c), abs(vec2<u32>(0u, var_0.c))), vec2<u32>(~var_0.c, ~var_0.c));
}

fn func_2() -> f32 {
    var var_0 = 1f;
    let var_1 = select(~countOneBits(~func_3()), ~countOneBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 77053u), _wgslsmith_clamp_vec2_u32(vec2<u32>(60107u, 27467u), vec2<u32>(4294967295u, 20676u), vec2<u32>(52966u, 38874u)))), all(select(global4.b, vec4<bool>(global4.b.x, any(global4.b.yx), global4.b.x, any(global4.b.zz)), global4.b.x)));
    global4 = Struct_2(Struct_1(max(_wgslsmith_mult_i32(0i, i32(-1i) * -1i), ~global4.a.a)), !select(global4.b, select(!vec4<bool>(true, global4.b.x, global4.b.x, global4.b.x), vec4<bool>(true, false, false, true), !vec4<bool>(global4.b.x, false, global4.b.x, global4.b.x)), all(vec3<bool>(true, true, true))));
    let var_2 = Struct_3(global4.a.a, global4.a, var_1.x);
    let var_3 = vec4<i32>(global4.a.a, -u_input.b, -2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_2.b.a, var_2.b.a, var_2.b.a) & vec4<i32>(346i, global4.a.a, 2147483647i, u_input.e.x), ~vec4<i32>(2147483647i, global4.a.a, global4.a.a, global4.a.a)), firstLeadingBit(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.a.a, 0i, 2147483647i, var_2.a), vec4<i32>(var_2.b.a, var_2.a, 15321i, var_2.a))))));
    return global0[_wgslsmith_index_u32(~var_2.c, 25u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(arg_3.x))), -522f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(28738u, 27u)]) * global3[_wgslsmith_index_u32(arg_2, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 7u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 377f)) - _wgslsmith_div_f32(-2059f, _wgslsmith_f_op_f32(-106f + arg_3.x)))));
    let var_1 = -366f;
    var var_2 = vec2<bool>(global4.b.x, arg_1.x);
    let var_3 = 46997u;
    let var_4 = global4.a;
    return Struct_2(Struct_1(-arg_0.a.a), vec4<bool>(false, global4.b.x, true, false));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = vec2<bool>(!(_wgslsmith_div_i32(-arg_0.a.a, 1i) < _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e.x, u_input.e.x), ~0i, -6491i)), any(func_1(Struct_2(arg_3.b, global4.b), select(arg_0.b.wx, global4.b.zz, 1122f <= global3[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_mult_u32(_wgslsmith_sub_u32(58422u, arg_3.c), ~arg_3.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-821f, -116f, global0[_wgslsmith_index_u32(arg_3.c, 25u)], -1331f) + vec4<f32>(global3[_wgslsmith_index_u32(27985u, 27u)], -510f, -1259f, 1000f))))).b.zw));
    global3 = array<f32, 27>();
    var var_1 = u_input.e.x;
    let var_2 = arg_3;
    var var_3 = Struct_4(global4.a, vec3<bool>(arg_2.c > abs(4294967295u), var_0.x, all(vec4<bool>(arg_0.b.x || true, !arg_1, var_0.x, any(vec3<bool>(global4.b.x, global4.b.x, global4.b.x))))), vec2<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(var_2.c), 25u)], -210f), vec4<u32>(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(var_2.c, 6337u, 16948u, arg_2.c)), ~vec4<u32>(var_2.c, var_2.c, 1u, arg_3.c), !global4.b), ~(~vec4<u32>(54253u, 0u, arg_2.c, 1u))), ~var_2.c, ~15308u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(9866u, var_2.c, var_2.c), max(vec3<u32>(0u, arg_2.c, 114144u), vec3<u32>(var_2.c, var_2.c, arg_2.c))), min(reverseBits(vec3<u32>(var_2.c, arg_3.c, 49137u)), vec3<u32>(arg_2.c, 26906u, 4294967295u)))));
    return firstTrailingBit(arg_0.a.a) >> (_wgslsmith_dot_vec4_u32(var_3.d, vec4<u32>(var_2.c, 1u, ~(~4294967295u), arg_2.c)) % 32u);
}

fn func_5(arg_0: vec4<i32>) -> StorageBuffer {
    global4 = Struct_2(func_1(func_1(func_1(Struct_2(global4.a, global4.b), select(global4.b.yx, vec2<bool>(true, true), vec2<bool>(global4.b.x, true)), 5046u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -489f, global1[_wgslsmith_index_u32(0u, 7u)]))), !(!global4.b.wy), ~72314u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(35205u, 7u)], 903f, 1759f, global1[_wgslsmith_index_u32(0u, 7u)]))))), vec2<bool>(global4.b.x, false), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(980u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-233f + global1[_wgslsmith_index_u32(49916u, 7u)]), 1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(12367u, 7u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 27u)] + global3[_wgslsmith_index_u32(4294967295u, 27u)])), vec4<f32>(_wgslsmith_f_op_f32(func_2()), -360f, _wgslsmith_f_op_f32(abs(1399f)), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 7u)]), !(global3[_wgslsmith_index_u32(41770u, 27u)] != global3[_wgslsmith_index_u32(4294967295u, 27u)])))).a, global4.b);
    let var_0 = global2[_wgslsmith_index_u32(1u, 4u)];
    let var_1 = Struct_5(_wgslsmith_clamp_vec2_i32(arg_0.xz, var_0.a, reverseBits(u_input.e)));
    return StorageBuffer(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, min(7798u, 0u)), 1u), 27u)] + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(20347u, 27u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 63923i;
    var var_1 = -748f;
    var var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~5418u, _wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, 36114u) >> (1u % 32u), 28692u), ~(~vec2<u32>(1u, 1u)))), 25u)];
    var var_4 = Struct_1(u_input.d.x);
    let x = u_input.a;
    s_output = func_5(vec4<i32>(var_0 | var_0, -var_4.a, min(-1i, func_4(func_1(Struct_2(global4.a, vec4<bool>(false, global4.b.x, true, global4.b.x)), vec2<bool>(true, false), 1u, vec4<f32>(756f, global3[_wgslsmith_index_u32(0u, 27u)], -903f, global1[_wgslsmith_index_u32(4294967295u, 7u)])), all(global4.b.zwx), Struct_3(-28280i, global4.a, 66503u), Struct_3(global4.a.a, Struct_1(10673i), 14856u))), -22732i));
}

