struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<vec2<u32>, 6>;

var<private> global3: array<u32, 4>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(-2747i, abs(10517u)), Struct_1(global0.a, _wgslsmith_mult_u32(u_input.a, global0.b & 6230u)), Struct_1(global0.a, reverseBits(_wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(83877u, 6u)], firstLeadingBit(vec2<u32>(4294967295u, u_input.a))))), !(true != any(vec3<bool>(true, true, false))));
    global3 = array<u32, 4>();
    global3 = array<u32, 4>();
    var var_1 = Struct_2(Struct_1(global0.a, _wgslsmith_add_u32(u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, ~var_0.c.b), 4u)])), var_0.b, Struct_1(var_0.b.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(66108u, 4u)], 4294967295u, 0u), vec4<u32>(0u, 1u, 0u, u_input.a)) & 1u, ~_wgslsmith_mult_u32(u_input.a, 1u))), true);
    var var_2 = var_1.b;
    return -1i;
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = select(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_0.a.a, -14744i, 577i), ~firstTrailingBit(vec3<i32>(38372i, arg_0.c.a, -22359i)), vec3<i32>(-2147483647i, 2147483647i, global0.a) >> (vec3<u32>(13809u, global0.b, arg_0.c.b) % vec3<u32>(32u))), -(vec3<i32>(-1i) * -vec3<i32>(arg_0.c.a, 1i, arg_0.b.a))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, global0.a, arg_0.b.a), select(vec3<i32>(global0.a, -41068i, global0.a), vec3<i32>(global0.a, -26074i, 8472i), false)), !all(vec3<bool>(arg_0.d, !arg_0.d, arg_0.d)));
    let var_1 = all(!vec4<bool>(!(u_input.a >= 4294967295u), arg_0.d, false, !arg_0.d));
    var var_2 = -500f;
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -170f)))))));
    global2 = array<vec2<u32>, 6>();
    return var_1 && false;
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_2 {
    global1 = 1i;
    var var_0 = Struct_1(max(arg_0, -52679i), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(101257u, ~global0.b), firstTrailingBit(global0.b) | 4294967295u) << ((global0.b >> (~0u % 32u)) % 32u), 4u)]);
    global1 = 15066i;
    global1 = -arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1663f))))), -1407f) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1535f, -1353f) - _wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-687f, -1000f)), _wgslsmith_f_op_f32(1308f + 670f))), 538f));
    return Struct_2(Struct_1(_wgslsmith_mult_i32(countOneBits(46090i), -1i), 0u), Struct_1(-(~(-arg_0)), abs((u_input.a | global0.b) & var_0.b)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -12845i), vec2<i32>(i32(-1i) * -1i, global0.a)), ~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 1u) & 27692u), false);
}

fn func_1() -> vec4<bool> {
    global1 = _wgslsmith_mult_i32(-42623i, ~5140i);
    var var_0 = vec4<bool>(select(true, false, _wgslsmith_mod_u32(4294967295u, countOneBits(global0.b)) < firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 110598u), vec2<u32>(0u, 1u)), 4u)])), select(true | !all(vec3<bool>(false, true, false)), u_input.a <= ~(u_input.a ^ 0u), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(false, true))))), true, true);
    var var_1 = func_4(func_2(), all(select(vec2<bool>(true, true), vec2<bool>(func_3(Struct_2(Struct_1(global0.a, 4294967295u), Struct_1(global0.a, 18605u), Struct_1(global0.a, u_input.a), var_0.x)), any(vec3<bool>(var_0.x, true, var_0.x))), true & !var_0.x)));
    global3 = array<u32, 4>();
    var var_2 = var_1.c;
    return !vec4<bool>(!var_1.d, false, select(var_1.b.a, 2147483647i, var_0.x) <= (_wgslsmith_clamp_i32(19145i, global0.a, -1i) & ~3272i), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!func_1()), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)));
    var var_1 = -153f;
    let var_2 = var_0.xxw;
    let var_3 = Struct_2(func_4(7164i, !var_2.x || var_0.x).a, Struct_1(17369i, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.b, 6291u) >> (14156u % 32u), min(~global0.b, 8578u))), func_4(_wgslsmith_div_i32(14310i, 1i), var_0.x).b, true);
    var var_4 = firstTrailingBit(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 6u)], firstLeadingBit(vec2<u32>(var_3.a.b, 0u)))), global3[_wgslsmith_index_u32(0u, 4u)], 40933u));
    var var_5 = var_3;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1772f * 947f), 1f));
    var var_6 = select(false, false, var_0.x);
    global2 = array<vec2<u32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-230f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, 1000f)), 230f)) + -604f), false)), ~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(var_4.x, 4u)], var_5.c.b, 4294967295u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(var_4.x, 4u)], 11829u, 1u, var_3.c.b)), ~vec4<u32>(32465u, 45589u, var_3.c.b, global3[_wgslsmith_index_u32(1u, 4u)]), all(var_0.zw))), ~countOneBits(~select(var_5.a.b, var_3.a.b, true)));
}

