struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 33625u, 0u);

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec4<u32> {
    global0 = ~vec3<u32>(firstTrailingBit(0u), 0u, arg_0);
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -58555i, u_input.a.x), vec4<i32>(-54979i, u_input.a.x, -1i, 4792i)) | ~vec4<i32>(-28624i, u_input.a.x, 7426i, -8395i), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)) & u_input.a.x;
    global1 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-912f + 795f)), _wgslsmith_f_op_f32(min(-1462f, _wgslsmith_f_op_f32(1153f * -1479f))), 2375f, -574f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(966f - -887f), _wgslsmith_f_op_f32(f32(-1f) * -904f), 1954f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, 1128f, -2400f, -1673f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-222f, -270f, 1000f, -298f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(345f, -2709f, -102f, -1011f), vec4<f32>(-1933f, 1583f, 1611f, 702f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1014f, 716f, -360f, -822f))), all(vec2<bool>(false, false)))))));
    var var_2 = vec2<u32>(arg_0, _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(38550u, global0.x, global0.x, arg_0), vec4<u32>(global0.x, global0.x, 1u, 1u)), vec4<bool>(true, true, true, true)), vec4<u32>(_wgslsmith_clamp_u32(1u, global0.x, 0u), 54233u, firstLeadingBit(global0.x), global0.x & global0.x), !(arg_0 <= 1u)), select(~max(vec4<u32>(arg_0, arg_0, global0.x, global0.x), vec4<u32>(arg_0, global0.x, global0.x, 1u)), reverseBits(~vec4<u32>(4294967295u, 69003u, 50005u, 60074u)), vec4<bool>(true, true, true, true))));
    return vec4<u32>(_wgslsmith_mod_u32(~max(1u, 0u), 1u), abs(max(reverseBits(42919u), ~(4294967295u | arg_0))), var_2.x, 1640u);
}

fn func_2() -> bool {
    var var_0 = func_3(global0.x);
    global0 = max(~var_0.xwy, var_0.zxz);
    global0 = vec3<u32>(~(var_0.x ^ _wgslsmith_dot_vec2_u32(global0.xx, ~var_0.yy)), var_0.x, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(var_0.yxw, vec3<u32>(var_0.x, global0.x, var_0.x))), var_0.yyz | var_0.zzw));
    global1 = array<Struct_1, 25>();
    global0 = var_0.wyw;
    return all(select(select(vec4<bool>(true, select(true, true, true), false, true), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, global0.x >= global0.x), vec4<bool>(true, false, true, true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = ~arg_1.d.x ^ ~41290i;
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x >> (16706u % 32u), ~27738u, global0.x), ~vec3<u32>(global0.x, global0.x, ~abs(global0.x)));
    let var_1 = select(vec4<bool>(func_2(), false, true, true), vec4<bool>(!(!func_2()), any(arg_1.a) | all(!arg_1.a), true, !(arg_1.c || true)), vec4<bool>(true, arg_1.c, 0u > firstTrailingBit(global0.x >> (global0.x % 32u)), firstTrailingBit(~u_input.a.x) >= _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -27378i), arg_1.d.yz)));
    global0 = vec3<u32>(global0.x, 49060u << (global0.x % 32u), global0.x);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f * arg_1.b.x) - _wgslsmith_f_op_f32(-934f + 735f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-819f * 1044f))) - arg_1.b.x)));
    return vec2<bool>(any(!(!vec3<bool>(false, arg_1.c, true))), select(var_1.x, !(!(arg_1.e | var_1.x)), !any(select(vec3<bool>(arg_1.c, true, arg_1.a.x), vec3<bool>(false, true, var_1.x), arg_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(u_input.a.x, global1[_wgslsmith_index_u32(global0.x, 25u)]), select(vec2<bool>(false, false), vec2<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(false, true), vec2<bool>(select(false, false, true), global0.x != 0u))), vec2<bool>(true, true));
    var var_1 = global1[_wgslsmith_index_u32(~func_3(global0.x).x, 25u)];
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(abs(func_3(global0.x).x), global0.x), 56964u);
    let var_3 = Struct_1(vec4<bool>(all(vec2<bool>(true, any(vec3<bool>(true, true, var_0.x)))), any(var_1.a), 239f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(ceil(var_1.b.x)), !var_0.x)), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_f32(-627f, _wgslsmith_f_op_f32(step(-1051f, _wgslsmith_f_op_f32(f32(-1f) * -393f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))))), var_0.x, -countOneBits(-(vec3<i32>(1i, -4387i, u_input.a.x) ^ u_input.a)), any(var_0));
    global1 = array<Struct_1, 25>();
    var_2 = vec2<u32>(var_2.x << (var_2.x % 32u), 4294967295u);
    let var_4 = Struct_1(select(vec4<bool>(func_2(), var_1.e, 66510u != global0.x, var_0.x), !select(!vec4<bool>(var_0.x, var_0.x, false, true), var_1.a, !vec4<bool>(var_0.x, false, true, false)), global0.x > 4294967295u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1.b)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_3.b.x, var_3.b.x) + vec3<f32>(-325f, var_3.b.x, 829f)))))), any(func_1(~var_3.d.x, var_3)), -(~var_3.d), true);
    var var_5 = _wgslsmith_mod_vec4_i32(vec4<i32>(11425i, -var_1.d.x, _wgslsmith_div_i32(var_4.d.x, var_4.d.x), reverseBits(-3565i)) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 93566u, 0u, 6306u) & vec4<u32>(39076u, var_2.x, var_2.x, global0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 76462u, 29621u, var_2.x), vec4<u32>(var_2.x, 72610u, 4294967295u, global0.x), vec4<u32>(global0.x, var_2.x, 16709u, 1u))) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d.x, var_3.d.x, 19728i, 44168i) & vec4<i32>(8735i, 1i, var_4.d.x, -21639i), vec4<i32>(var_1.d.x, 1i, var_3.d.x, -18055i) & vec4<i32>(-20887i, 0i, var_3.d.x, -1i))) << (~vec4<u32>(var_2.x, _wgslsmith_mult_u32(global0.x, var_2.x) | (56352u >> (global0.x % 32u)), _wgslsmith_clamp_u32(firstLeadingBit(var_2.x), ~var_2.x, _wgslsmith_mod_u32(global0.x, 59240u)), 34745u >> (_wgslsmith_clamp_u32(65895u, 57265u, 1u) % 32u)) % vec4<u32>(32u));
    global1 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, select(var_2.x, _wgslsmith_mod_u32(~global0.x, select(var_2.x, ~4294967295u, true)), ((-48682i | var_1.d.x) != -1i) | var_3.c), max(var_2.x, 0u), vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(569f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_4.b.x)), var_1.b.x)), _wgslsmith_f_op_f32(round(var_4.b.x))));
}

