struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-6285i, -1i, -1610i, 20545i), vec4<i32>(-2844i, 2147483647i, -24854i, -73602i), vec4<i32>(638i, 4146i, -47837i, 0i), vec4<i32>(-1i, -56939i, 22599i, 2147483647i), vec4<i32>(-15681i, 2147483647i, -1i, -1i), vec4<i32>(20317i, -1i, -58746i, 2147483647i), vec4<i32>(-34606i, 23019i, i32(-2147483648), -46099i), vec4<i32>(1i, 3295i, 15546i, -41478i), vec4<i32>(0i, -10322i, -26649i, 0i), vec4<i32>(2147483647i, 12309i, 1i, -1i), vec4<i32>(-1i, -3399i, 47183i, 38613i), vec4<i32>(0i, 56893i, -1i, i32(-2147483648)), vec4<i32>(22537i, -28760i, 0i, i32(-2147483648)), vec4<i32>(17983i, 1i, 7895i, 51159i), vec4<i32>(i32(-2147483648), 9494i, 4707i, 4578i), vec4<i32>(0i, 0i, 25607i, 9484i), vec4<i32>(0i, -36254i, 2147483647i, 2147483647i));

var<private> global2: Struct_2;

var<private> global3: vec2<f32>;

var<private> global4: i32 = 1i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = !(!(!global0.yw));
    var var_1 = ~reverseBits(~min(vec2<u32>(1u, 0u), vec2<u32>(1u, 49101u)));
    let var_2 = Struct_2(select(vec3<i32>(global2.a.x, u_input.a.x, -u_input.a.x) ^ ((global2.a | global2.a) << (~vec3<u32>(var_1.x, 0u, var_1.x) % vec3<u32>(32u))), global2.a, global0.xzw));
    let var_3 = Struct_4(abs(1i));
    var var_4 = !(!vec4<bool>(global0.x, any(!vec3<bool>(global0.x, true, false)), var_0.x, 40710i > -u_input.a.x));
    return _wgslsmith_f_op_f32(trunc(arg_0));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    global3 = arg_0.zw;
    let var_0 = 0i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_1.a, false)));
    var var_2 = select(vec4<bool>(global0.x, true, any(global0.yx), !(!global0.x & global0.x)), select(vec4<bool>(_wgslsmith_f_op_f32(1099f + arg_1.a) > _wgslsmith_f_op_f32(min(1079f, global3.x)), true, !all(global0.wx), true), !vec4<bool>(false | global0.x, true, any(vec4<bool>(global0.x, false, global0.x, global0.x)), global0.x), all(select(global0.xxx, !global0.zwz, global0.xxx))), !select(!(!vec4<bool>(global0.x, false, global0.x, global0.x)), select(vec4<bool>(false, false, true, global0.x), !vec4<bool>(global0.x, global0.x, false, true), !vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(all(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x, any(vec4<bool>(false, global0.x, false, false)), true)));
    let var_3 = true;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = true;
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global3.x, arg_0, -604f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-930f, arg_0, global3.x, -299f))))))), Struct_1(global3.x), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, ~9710u)), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(13883u, 0u), ~vec2<u32>(13830u, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39107u), vec2<u32>(1u, 55406u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(138979u, 0u), firstTrailingBit(vec2<u32>(9969u, 0u))))), u_input.a.x);
    global2 = Struct_2(vec3<i32>(_wgslsmith_add_i32(~min(global2.a.x, 9723i), ~(-u_input.a.x)), 1i, ~min(_wgslsmith_sub_i32(0i, u_input.a.x), u_input.a.x >> (1u % 32u))));
    let var_2 = Struct_4(23730i);
    global0 = select(select(!select(!vec4<bool>(arg_1.x, arg_1.x, false, global0.x), select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, true, arg_1.x, true), global0.x)), vec4<bool>(false, true, true, arg_1.x), arg_1.x), vec4<bool>(!all(select(vec2<bool>(arg_1.x, global0.x), global0.wx, vec2<bool>(arg_1.x, global0.x))), arg_1.x, global0.x, global0.x), true);
    return Struct_3(14911i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, -28699i), _wgslsmith_add_i32(1i, ~(-18048i)));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-2571i ^ global2.a.x, 2147483647i), -25440i, global2.a.x, -66793i);
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1051f + _wgslsmith_f_op_f32(max(global3.x, 522f)))))), vec2<bool>(firstLeadingBit(~var_1.x) > global2.a.x, global3.x <= 264f));
    var var_3 = global0.x;
    var var_4 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), global0.wz);
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-362f)), _wgslsmith_f_op_f32(func_3(global3.x, false)))))) + _wgslsmith_f_op_f32(-2132f - global3.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), 2073f, !global0.x)), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_div_f32(520f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) * _wgslsmith_f_op_f32(-global3.x))), countOneBits(-2147483647i) != _wgslsmith_sub_i32(~var_2.a, ~(-1i)))));
    global4 = i32(-1i) * -reverseBits(abs(_wgslsmith_mult_i32(11357i, var_2.a)));
    let var_6 = u_input.a << (vec2<u32>(0u, ~(~4742u) >> (countOneBits(_wgslsmith_sub_u32(39800u, 1u)) % 32u)) % vec2<u32>(32u));
    var var_7 = -2005f;
    let x = u_input.a;
    s_output = StorageBuffer(~39104u, vec4<f32>(-545f, _wgslsmith_f_op_f32(min(-167f, var_5.x)), global3.x, global3.x), -global2.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, ~9365u, ~4294967295u), ~(~vec4<u32>(30780u, 1u, 28594u, 1u))), _wgslsmith_clamp_u32(~0u, 1u, ~select(1u, 57347u, false))));
}

