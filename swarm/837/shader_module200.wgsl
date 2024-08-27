struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, vec4<f32>(541f, -1956f, 701f, -609f)), Struct_1(false, vec4<f32>(-901f, 1001f, 771f, 799f)), Struct_1(true, vec4<f32>(-1000f, 1173f, -818f, -790f)), Struct_1(false, vec4<f32>(718f, -129f, -138f, 1000f)), Struct_1(false, vec4<f32>(-1797f, -1340f, -1380f, 365f)), Struct_1(false, vec4<f32>(1000f, -196f, -1000f, -1000f)));

var<private> global3: array<i32, 13>;

var<private> global4: array<u32, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = vec4<bool>(any(!vec3<bool>(arg_3, false, false)), !arg_0.a, true, all(vec4<bool>(all(select(vec4<bool>(arg_2.a, false, true, true), vec4<bool>(true, arg_0.a, var_0.a, false), arg_0.a)), arg_2.a, arg_0.a, ~global4[_wgslsmith_index_u32(1u, 10u)] > firstLeadingBit(u_input.e))));
    var var_2 = arg_0.b;
    var var_3 = global4[_wgslsmith_index_u32(4294967295u, 10u)];
    var var_4 = vec2<bool>(!(~abs(0u) < _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.e, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 58316u, global4[_wgslsmith_index_u32(u_input.e, 10u)]), vec3<u32>(2554u, global4[_wgslsmith_index_u32(1u, 10u)], u_input.a)), 83544u)), false);
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(false, arg_2.b);
    let var_1 = var_0.b.xzx;
    global4 = array<u32, 10>();
    var var_2 = select(select(u_input.b, -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))), -2147483647i, all(vec2<bool>(true, !(1i != global3[_wgslsmith_index_u32(4294967295u, 13u)]))));
    var var_3 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_2.a, true), vec2<bool>(var_0.a, arg_0.a), vec2<bool>(arg_0.a, var_0.a)), vec2<bool>(true, true)), !vec2<bool>(true, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(54437u, 10u)], 10u)], 10u)] >= global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.e, 10u)], 10u)], 10u)]), true), vec2<bool>(true, true), true);
    return -212f;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(937f * 242f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(630f)), -168f))) > _wgslsmith_f_op_f32(func_4(Struct_1(all(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(true, vec4<f32>(-467f, 587f, -1626f, 1426f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, -551f, -694f) + vec3<f32>(-1018f, -1590f, 523f)), global2[_wgslsmith_index_u32(26527u, 6u)], true))), ~(~u_input.a), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(round(-1052f)), _wgslsmith_f_op_f32(f32(-1f) * -493f), 2697f, -474f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 728f), vec2<f32>(-1000f, 2558f))), vec2<f32>(729f, -368f)))))));
    let var_0 = vec3<u32>(firstTrailingBit(~_wgslsmith_sub_u32(14886u, global4[_wgslsmith_index_u32(58619u, 10u)])) << (_wgslsmith_clamp_u32(~1u, ~47168u, u_input.e) % 32u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(2989u, 10u)], u_input.c.x), 29652u);
    let var_1 = -((i32(-1i) * -2147483647i) ^ arg_0);
    global2 = array<Struct_1, 6>();
    var var_2 = !vec2<bool>(-1293f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-669f))), _wgslsmith_f_op_f32(floor(-391f)) == _wgslsmith_f_op_f32(-361f - _wgslsmith_div_f32(319f, -145f)));
    return var_0.x;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.x, -1000f, arg_3.x, arg_3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, -170f, arg_3.x, arg_3.x) - vec4<f32>(arg_3.x, -788f, arg_3.x, arg_3.x))))))));
    let var_1 = Struct_1(!all(vec3<bool>(u_input.c.x > 4294967295u, var_0.a, all(vec3<bool>(false, false, var_0.a)))), vec4<f32>(-274f, 275f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(global2[_wgslsmith_index_u32(~0u, 6u)], countOneBits(4294967295u), Struct_1(true, var_0.b), _wgslsmith_f_op_vec2_f32(trunc(arg_3.xx)))))), _wgslsmith_f_op_f32(arg_3.x - arg_3.x)));
    var var_2 = Struct_1(!var_0.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_1(var_1.a, var_0.b), 11278u, global2[_wgslsmith_index_u32(~10105u, 6u)], _wgslsmith_f_op_vec2_f32(trunc(var_1.b.xy)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(579f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f - arg_3.x) - arg_3.x))), arg_3.x));
    let var_3 = ~vec3<u32>(arg_0, 27967u, arg_0);
    var_0 = var_1;
    return var_2.b.yzy;
}

fn func_1(arg_0: i32) -> vec3<f32> {
    global4 = array<u32, 10>();
    global4 = array<u32, 10>();
    global3 = array<i32, 13>();
    global4 = array<u32, 10>();
    return _wgslsmith_f_op_vec3_f32(func_5(global4[_wgslsmith_index_u32(func_2(arg_0), 10u)], ~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(30970u, 13u)], -global3[_wgslsmith_index_u32(1u ^ u_input.e, 13u)]), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(39956u), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), 83587u, u_input.a | 86814u), ~(~vec4<u32>(0u, global4[_wgslsmith_index_u32(0u, 10u)], u_input.c.x, global4[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 10u)], 0u, global4[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u), vec4<u32>(1u, 0u, 4294967295u, global4[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<u32>(15685u, 4294967295u, u_input.e, 1u)) ^ ~vec4<u32>(u_input.c.x, 4294967295u, 38244u, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-574f, 791f, 215f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(483f, -1385f, 2160f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(0u);
    var var_1 = -477f;
    global2 = array<Struct_1, 6>();
    var var_2 = reverseBits(countOneBits(vec4<i32>(i32(-1i) * -2147483647i, 2147483647i, u_input.d, -51021i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(207f, -1721f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1458f, 936f, -2128f) + vec3<f32>(1632f, 825f, -737f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, -633f, -339f)), _wgslsmith_f_op_vec3_f32(func_1(u_input.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -126f, 798f)))))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c.x), ~60679u), abs(u_input.c)), _wgslsmith_div_u32(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0, 10u)], 10u)]), 1u) << (firstLeadingBit(0u) % 32u), 46670u, abs(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-183f)), -413f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * 380f))) - -875f));
}

