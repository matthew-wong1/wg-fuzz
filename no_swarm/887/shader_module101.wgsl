struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(137f, -558f, 752f);

var<private> global1: array<Struct_4, 10>;

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(34374u, 14451u, 4294967295u), vec3<u32>(0u, 1u, 29585u), vec3<u32>(4294967295u, 8812u, 48002u), vec3<u32>(36985u, 1u, 1753u), vec3<u32>(69608u, 4294967295u, 11452u), vec3<u32>(0u, 24539u, 0u), vec3<u32>(63374u, 4294967295u, 59839u), vec3<u32>(4294967295u, 13418u, 1u), vec3<u32>(33012u, 1408u, 32440u), vec3<u32>(27285u, 1u, 1u), vec3<u32>(1u, 29873u, 4294967295u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec3<bool>(false, !all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), all(vec2<bool>(true, true)))), true);
    var var_1 = select(min(-(vec4<i32>(u_input.a.x, u_input.b.x, -79342i, arg_3.x) ^ select(vec4<i32>(arg_0.a, 4138i, arg_0.a, arg_0.a), vec4<i32>(arg_1.a, u_input.a.x, arg_1.a, arg_1.a), false)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 0i, _wgslsmith_mod_i32(46617i, u_input.b.x)), abs(vec4<i32>(1i, 1i, 1i, 1i)))), vec4<i32>(firstLeadingBit(~(-arg_3.x)), -_wgslsmith_mult_i32(select(27427i, arg_1.a, var_0.x), ~arg_3.x), ~(-1i), -1731i), !(arg_3.x <= arg_1.a));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), -614f, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, arg_2)), arg_0, u_input.a);
    var var_3 = true;
    global3 = array<vec3<u32>, 11>();
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(select(4294967295u, 42586u, false), min(17873u, 0u)), 1u)), vec2<u32>(select(~1u, 1u, all(!vec2<bool>(var_0.x, false))), ~1u));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) + -1840f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -323f), !arg_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-165f)))), false)), _wgslsmith_f_op_f32(-global0.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -981f, 585f) - vec3<f32>(global0.x, global0.x, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -999f, _wgslsmith_f_op_f32(f32(-1f) * -391f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, 152f, -492f), vec3<f32>(1000f, global0.x, global0.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(371f, global0.x, global0.x) - vec3<f32>(701f, global0.x, -185f))))), select(global0.x < 858f, false, (_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(0u, 11u)], vec3<u32>(1u, 4294967295u, 1u)) | ~1u) <= func_3(Struct_2(u_input.b.x), Struct_2(57306i), -401f, -u_input.b))));
    let var_1 = false;
    global3 = array<vec3<u32>, 11>();
    let var_2 = global2[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(Struct_2(6039i), Struct_2(u_input.b.x), global0.x, u_input.b), 1u, 1u, ~0u), select(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(13706u, 4294967295u, 1u, 51629u)), !vec4<bool>(arg_0.x, arg_0.x, true, arg_1))) << (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(80508u, 0u), vec2<u32>(25443u, 1u))) % 32u)), 15u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-747f - _wgslsmith_f_op_f32(select(-401f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1618f))), _wgslsmith_f_op_f32(583f + _wgslsmith_f_op_f32(sign(global0.x))), all(vec2<bool>(true, true)))), true)));
    var var_1 = Struct_2(2147483647i);
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) - _wgslsmith_f_op_f32(215f * 1000f))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), true))), global0.x, Struct_2(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, arg_1.x), u_input.a.yz), ~arg_1.yx)), _wgslsmith_div_vec3_i32(u_input.a, u_input.a));
    let var_3 = Struct_4(vec3<f32>(var_2.b, _wgslsmith_f_op_f32(ceil(527f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))), global0.x, var_2.c, arg_1);
    var var_4 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, true);
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    global1 = array<Struct_4, 10>();
    global3 = array<vec3<u32>, 11>();
    let var_0 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, _wgslsmith_mult_i32(44127i, _wgslsmith_mult_i32(arg_2.x, arg_2.x)), _wgslsmith_add_i32(-2147483647i, abs(61526i)), arg_2.x << (~arg_3.a % 32u)), -vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), -arg_2.x, arg_2.x, arg_2.x >> (arg_3.a % 32u))));
    let var_1 = !(!vec3<bool>(!any(vec2<bool>(arg_0, arg_0)), !arg_1.x, arg_0));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(global0.x + 1329f), -1000f, 1178f);
    return global2[_wgslsmith_index_u32(arg_3.a, 15u)];
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global1 = array<Struct_4, 10>();
    let var_0 = any(vec2<bool>(all(vec3<bool>(arg_0.b, any(vec2<bool>(true, arg_0.b)), arg_0.b)), arg_0.b && true));
    var var_1 = _wgslsmith_f_op_f32(func_2(!(!vec3<bool>(true, all(vec3<bool>(true, arg_0.b, true)), false)), !(!all(select(vec2<bool>(true, false), vec2<bool>(var_0, false), var_0)))));
    let var_2 = Struct_1(reverseBits(4294967295u));
    global3 = array<vec3<u32>, 11>();
    return Struct_2(-(~func_4(false, vec2<bool>(true, var_0), vec2<i32>(1i, u_input.a.x), Struct_1(var_2.a)).a) >> (_wgslsmith_mult_u32(max(var_2.a, 4294967295u), _wgslsmith_mult_u32(var_2.a, var_2.a ^ 16978u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 10>();
    var var_0 = 31736u;
    var var_1 = func_5(func_4(true, !select(vec2<bool>(true, false), vec2<bool>(true, false), u_input.a.x <= u_input.a.x), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x ^ u_input.a.x, 1i), 0i), Struct_1(_wgslsmith_mod_u32(func_1(0u, u_input.a), select(4294967295u, 0u, false)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -464f, 360f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, -1112f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2373f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, global0.x, 152f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))))));
    global1 = array<Struct_4, 10>();
    var_1 = Struct_2(~(~abs(u_input.b.x)));
    var var_2 = global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(24519u, 44442u, 51415u, 4294967295u), vec4<u32>(45371u, 1u, 63380u, 24709u), true), vec4<u32>(func_1(89226u, vec3<i32>(1i, var_1.a, -1i)), 1u, _wgslsmith_mod_u32(4294967295u, 1u), 4294967295u))), 10u)];
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2239f, var_3, var_3, global0.x) * vec4<f32>(-956f, 867f, -676f, -289f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 1354f, var_2.b, var_3) * vec4<f32>(global0.x, -300f, var_2.b, -1000f)), all(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, var_2.b, var_3, -324f))))))), var_2.a, -(~_wgslsmith_mod_i32(firstTrailingBit(var_2.d.x), -22099i)));
}

