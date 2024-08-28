struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: vec3<i32>;

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-758f, -243f, -1000f, 396f), vec4<f32>(470f, 874f, 513f, 1000f), vec4<f32>(-1553f, -1266f, 1000f, -544f), vec4<f32>(1379f, -280f, -566f, -622f), vec4<f32>(-529f, 212f, 1326f, 1532f), vec4<f32>(1781f, -191f, 213f, 1501f), vec4<f32>(983f, 1772f, -509f, 164f), vec4<f32>(-1683f, -495f, 629f, 1207f), vec4<f32>(-1000f, -727f, -696f, -1000f), vec4<f32>(-1537f, 440f, 427f, 1000f), vec4<f32>(701f, -568f, 582f, -1522f), vec4<f32>(-508f, -1271f, -1660f, 232f), vec4<f32>(-2156f, -765f, -307f, -849f), vec4<f32>(-822f, 528f, 1000f, -476f), vec4<f32>(114f, 534f, 629f, 2301f), vec4<f32>(-506f, -1595f, 1900f, 1080f), vec4<f32>(738f, 1562f, 1157f, -594f), vec4<f32>(552f, -923f, 1786f, -850f));

var<private> global4: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    global2 = !arg_1.b.c.x;
    global3 = array<vec4<f32>, 18>();
    global3 = array<vec4<f32>, 18>();
    var var_0 = Struct_3(Struct_2(arg_1.a, Struct_1(0i, max(arg_1.b.b, vec2<u32>(arg_1.a, arg_1.a)), arg_1.b.c, ~(-35180i)), _wgslsmith_f_op_f32(1392f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * -645f) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.a, 22u)], -646f)))), -(~(-_wgslsmith_mult_vec2_i32(u_input.b.zz, global1.yz))));
    var var_1 = !any(vec2<bool>(true, global1.x >= -7288i));
    return 187f;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec2<f32>) -> f32 {
    var var_0 = !select(select(!arg_1.b.c, arg_1.b.c, vec4<bool>(true, arg_0.x, false, arg_0.x && true)), select(vec4<bool>(false, select(arg_1.b.c.x, false, arg_0.x), true, false), select(arg_1.d.c, select(vec4<bool>(true, arg_1.d.c.x, false, true), vec4<bool>(arg_1.d.c.x, false, arg_0.x, true), arg_0.x), any(vec4<bool>(false, arg_0.x, arg_1.b.c.x, true))), arg_1.b.c), _wgslsmith_f_op_f32(-723f + _wgslsmith_f_op_f32(-857f * -1000f)) > global4.x);
    global0 = array<f32, 22>();
    var var_1 = arg_1;
    var var_2 = Struct_1(global1.x, var_1.d.b, !vec4<bool>(!arg_0.x, all(arg_1.b.c), all(!var_0.xyy), true), 8375i);
    global3 = array<vec4<f32>, 18>();
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~firstTrailingBit(~var_2.b.x)), 22u)];
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = ~_wgslsmith_add_u32(~(~_wgslsmith_div_u32(1u, 378u)), 20648u);
    let var_1 = arg_0.x <= _wgslsmith_f_op_f32(func_3(!vec2<bool>(true, var_0 > 115871u), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0[_wgslsmith_index_u32(var_0, 22u)], _wgslsmith_f_op_f32(-390f - global4.x), arg_0.x), Struct_1(~54245i, ~vec2<u32>(18923u, var_0), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), Struct_1(~global1.x, vec2<u32>(var_0, var_0), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1131f, _wgslsmith_f_op_f32(-1289f + -1976f)))));
    let var_2 = vec3<u32>(3243u, _wgslsmith_add_u32(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), ~var_0), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 12084u, 69724u), select(vec4<u32>(55307u, 57637u, var_0, var_0), vec4<u32>(var_0, var_0, var_0, 1u), vec4<bool>(var_1, var_1, var_1, var_1))), 10684u)) | ~(~(~(~vec3<u32>(26108u, var_0, 41388u))));
    return Struct_1(-2079i, ~firstLeadingBit(~var_2.yx), select(select(vec4<bool>(false, !var_1, false, !var_1), vec4<bool>(all(vec3<bool>(var_1, var_1, true)), true, var_1, !var_1), !(!vec4<bool>(false, var_1, var_1, true))), vec4<bool>(var_1 & var_1, any(vec3<bool>(var_1, true, var_1)) | false, var_1, var_1), !select(select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, true, false, var_1), true), !vec4<bool>(var_1, true, false, var_1), var_1)), _wgslsmith_dot_vec2_i32(-u_input.b.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x ^ u_input.b.x, abs(-20132i)), u_input.b.xx, (vec2<i32>(u_input.b.x, -1i) ^ vec2<i32>(10422i, 0i)) | countOneBits(global1.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(981f * global4.x)), -210f), 1199f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(i32(-1i) * -58780i, Struct_2(103233u, Struct_1(-1i, vec2<u32>(4294967295u, 1u), vec4<bool>(false, true, true, true), 2147483647i), -1909f)))))));
    var var_1 = Struct_3(Struct_2(~reverseBits(firstLeadingBit(var_0.b.x)), Struct_1(min(_wgslsmith_sub_i32(var_0.a, 1i), u_input.b.x), var_0.b, var_0.c, max(global1.x, u_input.a) ^ firstTrailingBit(51908i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f * -674f)) - _wgslsmith_f_op_f32(global4.x + global4.x))), global1.xy);
    var var_2 = 1i;
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(5554u, 48629u, var_0.b.x), 18u)], _wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(var_0.b.x, 18u)], vec4<f32>(var_1.a.c, 1213f, 1160f, var_1.a.c), vec4<bool>(false, false, var_0.c.x, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c, global0[_wgslsmith_index_u32(var_0.b.x, 22u)], global4.x, -105f), global3[_wgslsmith_index_u32(var_0.b.x, 18u)]) - vec4<f32>(1176f, 1054f, 679f, 234f)))))), func_2(vec3<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)], 1389f, _wgslsmith_f_op_f32(step(global4.x, _wgslsmith_f_op_f32(-var_1.a.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(357f, -228f, var_1.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, -1245f, var_1.a.c) * vec3<f32>(1243f, global0[_wgslsmith_index_u32(var_1.a.b.b.x, 22u)], -776f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-808f, global4.x, global4.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, global4.x, -1228f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(134f, 1003f, global4.x) + vec3<f32>(628f, -207f, -931f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-118f, -496f, global4.x), vec3<f32>(396f, global0[_wgslsmith_index_u32(67674u, 22u)], 150f)))))), Struct_1(34182i, vec2<u32>(58171u, var_0.b.x), !var_1.a.b.c, var_0.a));
    var_2 = ~(~(var_0.a & select(_wgslsmith_mod_i32(1i, -1i), 2147483647i, all(vec4<bool>(var_0.c.x, false, false, var_1.a.b.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

