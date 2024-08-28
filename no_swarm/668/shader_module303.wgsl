struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(831f, -1445f, -498f, -1303f, -936f, 1000f, 1145f, 993f, 2187f, 1194f, 477f);

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-474f, -1000f), vec2<f32>(351f, -2799f), vec2<f32>(-1033f, 1000f), vec2<f32>(414f, 404f), vec2<f32>(-919f, -436f), vec2<f32>(574f, 701f), vec2<f32>(238f, -1000f), vec2<f32>(1501f, -940f), vec2<f32>(415f, -904f), vec2<f32>(-838f, 700f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_3(~(i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1360f, arg_0, _wgslsmith_f_op_f32(round(1416f)), 1688f))));
    global1 = array<vec2<f32>, 10>();
    global1 = array<vec2<f32>, 10>();
    var var_1 = ~(_wgslsmith_mod_vec4_i32(min(abs(vec4<i32>(-5445i, -5259i, var_0.a, 2147483647i)), firstTrailingBit(vec4<i32>(-2147483647i, -87646i, 2147483647i, 1i))), vec4<i32>(0i, _wgslsmith_mult_i32(-58447i, var_0.a), -22591i, u_input.a)) << (vec4<u32>(~0u, ~34460u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(16083u, 3297u), vec2<u32>(0u, 0u)), ~4294967295u), 85210u) % vec4<u32>(32u)));
    var_0 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(454f, -1919f, arg_0, 447f), var_0.b))))));
    return var_0.b.x != _wgslsmith_f_op_f32(step(561f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global1 = array<vec2<f32>, 10>();
    var var_0 = Struct_5(func_3(_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 581f, -405f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 303f, arg_1.d.x, 881f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(431f, global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.x, 575f) - vec4<f32>(arg_2.x, arg_2.x, arg_1.d.x, arg_1.d.x)))))))), select(vec2<bool>(all(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, false)), (arg_1.c == true) | arg_1.c), vec2<bool>(func_3(_wgslsmith_f_op_f32(156f * arg_1.d.x)), arg_1.c), arg_1.c), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(~arg_0.x, _wgslsmith_add_i32(u_input.a, arg_1.a.x), _wgslsmith_add_i32(arg_1.a.x, arg_1.e.x), arg_0.x ^ u_input.a)), firstTrailingBit(~(vec4<i32>(u_input.a, u_input.a, -2147483647i, -53289i) | arg_1.a)), -arg_1.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(41512u, 11u)], _wgslsmith_f_op_f32(arg_2.x - global0[_wgslsmith_index_u32(arg_1.b.x, 11u)]), var_0.b.x, -634f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.b)) * _wgslsmith_f_op_vec4_f32(exp2(var_0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    var var_2 = abs(1i);
    let var_3 = ~firstTrailingBit(vec4<i32>(~arg_1.e.x, -836i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.e.x, arg_1.e.x), var_0.d.xxz), var_0.d.x) >> (arg_1.b % vec4<u32>(32u)));
    return 0u;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = -20844i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(885f, global0[_wgslsmith_index_u32(1u, 11u)], -1600f), vec3<f32>(-421f, global0[_wgslsmith_index_u32(31581u, 11u)], 1166f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(34274u, 11u)]) * vec3<f32>(global0[_wgslsmith_index_u32(1u, 11u)], -657f, -126f)))))));
    var var_2 = select(1u, firstLeadingBit(func_2(select(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, arg_0.x), true), Struct_1(-vec4<i32>(u_input.a, 46882i, u_input.a, 40381i), ~vec4<u32>(1u, 4294967295u, 0u, 1u), any(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -246f, global0[_wgslsmith_index_u32(0u, 11u)]) + vec3<f32>(-191f, 2620f, global0[_wgslsmith_index_u32(38727u, 11u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(-7193i, -7304i, u_input.a), vec3<i32>(51482i, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-342f, global0[_wgslsmith_index_u32(23217u, 11u)], -667f))))), false);
    var_0 = 4918i;
    return firstTrailingBit(countOneBits((_wgslsmith_dot_vec2_u32(vec2<u32>(16266u, 46624u), vec2<u32>(4294967295u, 15370u)) << (1u % 32u)) >> (~1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(func_1(vec2<i32>(u_input.a, u_input.a)), 4294967295u) << (25550u % 32u), _wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(44475u, 36780u, 1u)), _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u) | 4294967295u)));
    global1 = array<vec2<f32>, 10>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-180f, global0[_wgslsmith_index_u32(4294967295u, 11u)])) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 11u)])))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(select(var_0.x, 44026u, false), 11u)])));
    global1 = array<vec2<f32>, 10>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstTrailingBit(~vec3<u32>(42198u, var_0.x, var_0.x))), firstTrailingBit(~(~vec3<u32>(4294967295u, var_0.x, var_0.x)))), var_0.x), 11u)];
    let var_3 = Struct_4(1u, Struct_1(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 14072i), vec4<i32>(u_input.a, -12900i, u_input.a, -2147483647i))) >> (vec4<u32>(var_0.x, var_0.x, firstLeadingBit(var_0.x), var_0.x) % vec4<u32>(32u)), countOneBits(~countOneBits(vec4<u32>(1u, var_0.x, var_0.x, var_0.x))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-179f, 694f, var_1.x)))), vec3<i32>(reverseBits(u_input.a), u_input.a, reverseBits(u_input.a >> (var_0.x % 32u)))), ~(~(~var_0)) ^ var_0);
    let var_4 = var_3.b;
    var var_5 = Struct_3(2147483647i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.x, global0[_wgslsmith_index_u32(var_4.b.x, 11u)], global0[_wgslsmith_index_u32(5170u, 11u)], -573f)))))))));
    var_1 = var_5.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_0.x, 4294967295u), var_4.b.xzy)) >> (var_3.b.b.yyw % vec3<u32>(32u)), abs(vec4<u32>(~(~0u), var_0.x | ~var_4.b.x, ~_wgslsmith_dot_vec3_u32(var_4.b.wzy, var_4.b.wyw), ~var_0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_4.d * vec3<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_3.c.x, 11u)])), _wgslsmith_f_op_f32(var_1.x + -863f), 224f)))), var_5.b.x);
}

