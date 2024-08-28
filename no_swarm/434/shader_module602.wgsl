struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = !(!select(vec3<bool>(all(vec4<bool>(true, true, true, false)), u_input.a.x <= u_input.a.x, all(vec2<bool>(false, true))), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-465f, -910f, -446f, -309f) - vec4<f32>(-1089f, -179f, 309f, -134f))))), Struct_1(_wgslsmith_clamp_u32(~(~27617u), u_input.a.x, 17602u), ~u_input.a.x, all(vec2<bool>(!var_0.x, var_0.x)), ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), ~countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x & 2147483647i)), _wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 18580u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 18876u, 0u, 45657u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.zz), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -473f))), 1f), -1711f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1053f + 644f), _wgslsmith_f_op_f32(sign(-1185f)), !var_0.x))))));
    let var_2 = Struct_1(44828u, 15090u >> (~var_1.b.a % 32u), !var_1.b.c, var_1.d.x);
    var var_3 = true;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -113f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1103f) * _wgslsmith_f_op_f32(trunc(1301f))) - -257f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1279f, _wgslsmith_div_f32(284f, var_1.e.x))) * -1136f), -124f)));
    return var_1.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<f32> {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 31>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1772f - _wgslsmith_f_op_f32(min(-663f, _wgslsmith_f_op_f32(f32(-1f) * -787f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1322f, _wgslsmith_f_op_f32(102f * -1000f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(round(505f))))), _wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1256f, 892f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3())))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_0 = Struct_1(46126u, 91683u, true, firstLeadingBit(35026u));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(exp2(arg_1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-684f, arg_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    var var_2 = false;
    return Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.d, u_input.a.x), firstLeadingBit(var_0.a)), var_0.d), u_input.a.zx), u_input.a.x, any(select(!vec4<bool>(true, var_0.c, var_0.c, false), !vec4<bool>(var_0.c, var_0.c, true, true), vec4<bool>(true, true, true, true))) & true, 0u);
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1038f, -338f, -850f, 681f), vec4<f32>(795f, 381f, -665f, -781f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(253f, -249f, -358f, -1050f) * vec4<f32>(-1349f, -353f, -932f, 1000f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 195f, -565f, 467f), vec4<f32>(1000f, 1000f, -169f, 797f), vec4<bool>(true, false, false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(-860f, 1306f, -546f, 762f), vec4<f32>(420f, 2183f, 163f, -669f))))))), func_4(u_input.c.yxx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(6692u, u_input.a.x, true, 0u), vec3<u32>(0u, u_input.a.x, 1197u), Struct_1(u_input.a.x, 1u, true, 4294967295u))))), u_input.c.x & u_input.b.x), -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(2147483647i, -1i, u_input.b.x)), min(-vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<i32>(-1i, u_input.b.x, 29676i))), global0[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-466f)), -509f, 931f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-527f, -272f, -1000f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2051f, 613f, 1448f), vec3<f32>(995f, -1000f, -2421f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-178f, -123f, -134f) + vec3<f32>(-713f, -102f, 152f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(389f, 904f, 447f)))))));
    var var_1 = 1i;
    var_1 = _wgslsmith_dot_vec2_i32(var_0.c.yx, -var_0.c.xz);
    let var_2 = true;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + vec4<f32>(-633f, 1179f, var_0.a.x, -3017f)), _wgslsmith_f_op_vec4_f32(func_3()), var_2)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(abs(var_0.e.x)), 293f, var_0.a.x) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1010f, var_0.e.x, -1156f, 2405f), vec4<f32>(var_0.a.x, -472f, var_0.a.x, var_0.a.x), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.a.x, var_0.e.x, var_0.a.x) - vec4<f32>(var_0.e.x, var_0.e.x, 403f, 1539f)))))), Struct_1(4294967295u, u_input.a.x, any(!(!vec4<bool>(false, var_2, var_0.b.c, var_2))), 0u), _wgslsmith_mod_vec3_i32(u_input.c.yxy & var_0.c, -vec3<i32>(-u_input.b.x, ~2147483647i, var_0.c.x)), firstLeadingBit(min(countOneBits(global0[_wgslsmith_index_u32(~u_input.a.x, 31u)]), vec2<u32>(abs(1u), 1u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, -610f, var_0.e.x)));
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = Struct_1(0u, ~34901u, false, var_0);
    let var_2 = u_input.a.x;
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1347f)), _wgslsmith_f_op_f32(296f * -289f), var_1.c & true)) + -1479f), -1000f, 1f), Struct_1(_wgslsmith_sub_u32(4294967295u, var_2), _wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.a), _wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), any(!select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, var_1.c), false)), 0u), _wgslsmith_add_vec3_i32(u_input.c.yyw, -u_input.c.zxw), reverseBits(~(~firstTrailingBit(global0[_wgslsmith_index_u32(var_1.d, 31u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-483f, -1609f, -2793f)))))));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    let var_4 = !(!(!(!vec2<bool>(false, var_3.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.wxy, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 9260u, 0u), vec4<u32>(var_1.b, 0u, u_input.a.x, 1u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, var_2, 0u, 110269u), vec4<u32>(var_0, var_2, var_1.a, var_3.b.d)), ~vec4<u32>(var_0, 1u, 0u, 60949u))), vec4<u32>(~_wgslsmith_add_u32(u_input.a.x, var_1.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(24321u, u_input.a.x, var_0, var_3.d.x), vec4<u32>(16011u, u_input.a.x, u_input.a.x, 75813u)), vec4<u32>(67447u, u_input.a.x, var_2, var_3.d.x) >> (vec4<u32>(0u, var_0, 7276u, 4294967295u) % vec4<u32>(32u))), ~var_2, reverseBits(firstTrailingBit(var_3.d.x)))), _wgslsmith_clamp_vec2_i32(u_input.c.xx, vec2<i32>(60285i, 0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 0u, var_2, 10831u), vec4<u32>(4294967295u, var_1.d, 1u, var_0)) % 32u)), ~var_3.c.xz), vec3<u32>(var_2, func_4(~(-vec3<i32>(-2147483647i, -9707i, -7545i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-434f, var_3.a.x, var_3.e.x, var_3.a.x))), u_input.c.x).d, ~(~var_1.d)), _wgslsmith_mod_vec2_i32(u_input.b, firstTrailingBit(abs(_wgslsmith_div_vec2_i32(var_3.c.yz, u_input.c.zw)))));
}

