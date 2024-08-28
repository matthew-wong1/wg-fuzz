struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 32>;

var<private> global2: vec3<f32> = vec3<f32>(303f, -1000f, -471f);

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: u32 = 52187u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_1(firstLeadingBit(-72452i), abs(u_input.d), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global0.c, -countOneBits(global0.c)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, 53403i, 314i, -103631i), global0.c), -vec4<i32>(-1i, u_input.c, global0.a, -55935i)), vec4<i32>(-52503i, ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, global0.b), vec3<i32>(global0.b, u_input.c, global0.a)), 35565i))), ~_wgslsmith_mult_u32(global0.d, global0.e), 4294967295u);
    global3 = array<vec2<i32>, 13>();
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-3271f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = !vec4<bool>(true && !(var_0.a <= -1i), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true)) | (u_input.a > u_input.a), 1730f < global2.x);
    return !(var_0.d != ~0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1239f, _wgslsmith_f_op_f32(sign(-334f)), arg_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(247f)), global2.x, -113f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(800f, -434f, global2.x) + vec3<f32>(-1492f, -1000f, 455f)))));
    var var_0 = !func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 2194f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.yy)) + global2.xx)));
    global0 = Struct_1(_wgslsmith_sub_i32(0i, select(0i, _wgslsmith_mod_i32(31621i, -u_input.c), any(vec2<bool>(false, true)))), -(abs(u_input.c) & global0.a), countOneBits(global0.c), global0.e, select(global0.d, _wgslsmith_mod_u32(~min(115225u, 4294967295u), global0.d), select(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)) | true, true)));
    var var_1 = reverseBits(19234u) & arg_1.x;
    var_1 = firstLeadingBit(34486u);
    return u_input.d & (-4931i | u_input.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.d, abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(~(-54343i), firstTrailingBit(global0.a)), ~abs(u_input.d))), global0.c, ~(~(~u_input.a)), 12590u);
    global2 = arg_2.zwx;
    return Struct_1(-1i, _wgslsmith_dot_vec4_i32(global0.c, vec4<i32>(_wgslsmith_add_i32(~global0.a, -2147483647i), u_input.d, var_0.c.x, -73472i)), global0.c, var_0.e, u_input.b.x);
}

fn func_1() -> i32 {
    global0 = func_4(vec4<bool>(true, true, !any(vec2<bool>(false, false)) | all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), _wgslsmith_mult_u32(global0.d, _wgslsmith_add_u32(u_input.a, 0u)) >= _wgslsmith_mult_u32(global0.d | 68635u, 4294967295u)), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, false)))), select(false, (i32(-1i) * -1i) > func_2(global2.xx, u_input.b.wxx), true)), vec4<f32>(-2230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))) + 1769f), -200f, _wgslsmith_f_op_f32(step(global2.x, -394f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global2.yy, vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(489f, -1458f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-812f, global2.x) * global2.yz), global2.zy))));
    let var_0 = func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec3<bool>(false, false, true)) == true, !any(vec2<bool>(false, false)), true)), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true), vec2<bool>(true, true)), func_3(global2.yx)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(global2.x, -980f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1502f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global2.x))), global2.yy)));
    global3 = array<vec2<i32>, 13>();
    var var_1 = abs(~(~52074i));
    let var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(vec2<u32>(global0.e, 93447u), ~vec2<u32>(global0.d, global0.e)), u_input.b.yw), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, var_0.e), vec2<u32>(9528u << (var_0.d % 32u), ~0u)));
    return -16973i;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    return ~vec4<i32>(u_input.c, u_input.c ^ ((-24695i << (0u % 32u)) << (~u_input.b.x % 32u)), global0.c.x, select(~1i, -17869i, 1i <= global0.b) << (1u % 32u));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-419f)), global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f * -156f) * _wgslsmith_f_op_f32(-arg_3.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-110f, 1126f, global2.x), vec3<f32>(-994f, -901f, 300f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -992f, global2.x))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(floor(arg_3.x)), -1000f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, arg_3.x, global2.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, arg_3.x, -1000f), vec3<f32>(1104f, -145f, global2.x))))))));
    return func_4(!vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), !any(vec3<bool>(false, false, false)), all(vec3<bool>(true, false, false)), firstTrailingBit(global0.e) > 1u), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>((2212i >= global0.b) | false, !any(vec3<bool>(false, true, false))), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1026f * -670f), -855f, _wgslsmith_div_f32(-1279f, 1193f), 1395f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -114f, 567f, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-634f, -1286f, global2.x, arg_3.x), vec4<f32>(-2509f, -676f, 737f, global2.x)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), (u_input.b.x >= u_input.b.x) && true))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-453f, arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 13>();
    let var_0 = func_6(Struct_1(_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(40550u, 13u)], firstTrailingBit(_wgslsmith_mod_vec2_i32(global3[_wgslsmith_index_u32(global0.d, 13u)], vec2<i32>(2147483647i, 0i)))), u_input.c, func_5(func_1() > ~(-18348i), func_4(vec4<bool>(true, true, true, true), vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1146f, global2.x, global2.x, -396f) + vec4<f32>(global2.x, global2.x, -1856f, global2.x)), global2.xy)), 70039u, _wgslsmith_mult_u32(global0.e, 22180u)), 28203i, Struct_1(-2147483647i, u_input.c & _wgslsmith_mod_i32(-2147483647i, 66003i), _wgslsmith_sub_vec4_i32(vec4<i32>(-18047i & u_input.d, global0.a, 1i, global0.b), _wgslsmith_clamp_vec4_i32(global0.c, _wgslsmith_add_vec4_i32(global0.c, global0.c), -vec4<i32>(-22895i, 46158i, global0.c.x, global0.b))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.yxx, vec3<u32>(25057u, 4294967295u, 10723u)), u_input.b.ywz), ~firstTrailingBit(u_input.b.xxy)), 4294967295u), _wgslsmith_f_op_vec2_f32(abs(global2.xy)));
    let var_1 = Struct_1(0i >> (~countOneBits(~global0.e) % 32u), ~_wgslsmith_sub_i32(-global0.b, func_6(var_0, 2147483647i, Struct_1(1776i, u_input.c, var_0.c, 0u, var_0.d), global2.zx).b >> (~19025u % 32u)), select(vec4<i32>(firstLeadingBit(u_input.c), _wgslsmith_mult_i32(var_0.c.x, global0.b), ~global0.a, ~1i), var_0.c, false), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(3005u), 1u) >> (~(~u_input.b.yy) % vec2<u32>(32u)), u_input.b.zy));
    var var_2 = func_4(select(vec4<bool>(all(vec3<bool>(true, true, true)) && true, true, (var_1.a >> (var_1.d % 32u)) == -43406i, true), vec4<bool>(true, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), true, any(vec3<bool>(true, true, true))), true), !vec2<bool>(true, func_3(global2.zy)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)), -967f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, _wgslsmith_f_op_f32(trunc(-387f)))));
    var var_3 = min(1u, countOneBits(countOneBits(global0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(f32(-1f) * -346f)), global2.x, _wgslsmith_f_op_f32(round(global2.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -394f, global2.x) * vec3<f32>(233f, 1183f, global2.x))) + vec3<f32>(_wgslsmith_f_op_f32(floor(1220f)), -1459f, -1000f))));
}

