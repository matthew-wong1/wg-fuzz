struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 27> = array<i32, 27>(15987i, 2147483647i, 1i, 0i, 0i, -55249i, -3435i, 23594i, 1i, 11050i, 21152i, 7105i, -22035i, 65060i, 0i, -1i, -26538i, -21592i, 24047i, 0i, -31928i, -33342i, 37065i, 14279i, 1i, i32(-2147483648), 15531i);

var<private> global2: vec4<f32> = vec4<f32>(-488f, 1214f, -744f, -407f);

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(5103u, 48865u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(43402u, 4294967295u), vec2<u32>(59837u, 0u), vec2<u32>(4294967295u, 20040u), vec2<u32>(34845u, 84627u), vec2<u32>(43655u, 4294967295u), vec2<u32>(42534u, 53592u), vec2<u32>(57460u, 1u), vec2<u32>(10921u, 767u), vec2<u32>(43051u, 1u), vec2<u32>(57830u, 1u), vec2<u32>(0u, 3748u), vec2<u32>(1u, 0u), vec2<u32>(42877u, 39717u), vec2<u32>(0u, 8237u), vec2<u32>(133840u, 2460u), vec2<u32>(14854u, 1u), vec2<u32>(1u, 1138u));

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-934f, 1000f, arg_1.b, 500f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, arg_1.a, global2.x), vec4<f32>(-2101f, arg_1.a, -379f, arg_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -897f, 565f, -736f))), vec4<f32>(_wgslsmith_f_op_f32(select(global2.x, 1000f, false)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(arg_1.a * 1747f), _wgslsmith_f_op_f32(min(arg_1.a, 1747f))), vec4<bool>(true, arg_1.c < -47464i, true, true))))));
    let var_0 = Struct_1(-376f, _wgslsmith_f_op_f32(-1428f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_1.b), true))), global1[_wgslsmith_index_u32(arg_0.x, 27u)]);
    global0 = global4.yz;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1f + -821f), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -1006f), global2.x), -min(-21725i, ~(~(-28660i))));
    let var_2 = -10121i;
    return var_0.a;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~countOneBits(u_input.e);
    var var_1 = 708f;
    let var_2 = global2.x;
    let var_3 = Struct_1(-189f, arg_0.a, global4.x | (~0i & _wgslsmith_sub_i32(global4.x, arg_0.c)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-arg_0.b)), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1419f) <= _wgslsmith_f_op_f32(1022f + arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(896f))), -var_3.c);
    return !vec3<bool>(!(1839f <= _wgslsmith_f_op_f32(-410f * var_4.a)), true, (global2.x <= _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.d.x, 6877u, 0u), arg_0))) & select(false, true, true));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = all(!func_2(Struct_1(_wgslsmith_f_op_f32(max(global2.x, 106f)), _wgslsmith_f_op_f32(-674f * global2.x), ~17372i)));
    var var_1 = u_input.e;
    var var_2 = global4.x;
    let var_3 = !vec4<bool>(all(vec3<bool>(true, true, true)), true, !any(vec4<bool>(false, false, false, false)) == any(vec2<bool>(false, false)), true | all(vec2<bool>(true, false)));
    global1 = array<i32, 27>();
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - global2.x), select(func_1(vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(0u, 27u)], global0.x)), global0.x, _wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global4.x) > ~(-263i)));
    let var_1 = 1i;
    let var_2 = Struct_1(235f, _wgslsmith_f_op_f32(-502f + global2.x), _wgslsmith_sub_i32(~global0.x, func_1(global4.xy)));
    var var_3 = 97458u;
    global0 = _wgslsmith_add_vec2_i32(u_input.e.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, -_wgslsmith_clamp_i32(global0.x, u_input.e.x, 32739i)), vec2<i32>(-_wgslsmith_div_i32(u_input.e.x, 1i), (i32(-1i) * -49366i) | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -33643i), global4.zx))));
    global4 = firstLeadingBit(_wgslsmith_mult_vec3_i32(abs(firstTrailingBit(u_input.e)), vec3<i32>(~var_1, _wgslsmith_div_i32(i32(-1i) * -31311i, -var_0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_2.c, 0i, global0.x) & vec4<i32>(var_2.c, 63757i, 0i, global1[_wgslsmith_index_u32(24833u, 27u)]), vec4<i32>(0i, var_0.c, 11362i, global0.x)))));
    let var_4 = true;
    let var_5 = select(~abs(55216u), 0u, true) & u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-u_input.e), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, -582f, global2.x))) * global2.zxx))));
}

