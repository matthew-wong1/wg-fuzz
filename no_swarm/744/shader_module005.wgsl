struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 99256u), vec2<u32>(1u, 4294967295u), vec2<u32>(48268u, 81809u), vec2<u32>(4294967295u, 51061u), vec2<u32>(20098u, 17296u), vec2<u32>(78334u, 1u), vec2<u32>(0u, 64u), vec2<u32>(64773u, 1u), vec2<u32>(0u, 44475u), vec2<u32>(81363u, 0u));

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    global1 = array<vec2<u32>, 11>();
    global0 = Struct_1(global0.a, false);
    global2 = _wgslsmith_mult_i32(i32(-1i) * -69398i, u_input.d);
    let var_0 = _wgslsmith_div_u32(global0.a, reverseBits(~0u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1774f)), 1f, 1105f));
    return 0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(abs(arg_1.a), any(vec2<bool>(false, true))));
    let var_1 = arg_1.a;
    global0 = arg_1;
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(23624u, func_3(u_input.b.x, var_0.a.a), ~arg_1.a, select(u_input.b.x, global0.a, arg_0.x)), vec4<u32>(max(1u, 4294967295u), 34487u, global0.a >> (4077u % 32u), 11263u)), !global0.b));
    var var_3 = global0.b;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(641f * _wgslsmith_f_op_f32(467f + -813f)), _wgslsmith_f_op_f32(sign(-1021f)))))));
    var var_1 = 1000f;
    global2 = _wgslsmith_clamp_i32(abs(-8438i), 2147483647i, ~(-2147483647i));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1958f);
    var var_3 = min(-2147483647i, u_input.a);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(global0.a, 11u)], ~(global1[_wgslsmith_index_u32(arg_0.a, 11u)] << (vec2<u32>(u_input.b.x, global0.a) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(1u, 11u)], u_input.b.ww), reverseBits(vec2<u32>(60327u, 60413u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 38305u, global0.a) | ~global0.a, arg_0.a), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, abs(46794u)), ~arg_0.a)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(func_4(func_2(vec2<bool>(true, arg_0), Struct_1(29408u, arg_0))), firstLeadingBit(global0.a)), select(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(66243u, 0u)), u_input.b.xz & u_input.b.wx), _wgslsmith_sub_vec2_u32(~vec2<u32>(38377u, 1u), u_input.b.xy), true));
    var var_1 = ~global0.a;
    var var_2 = select(select(select(!select(vec2<bool>(arg_3.a.b, true), vec2<bool>(arg_2.b, global0.b), vec2<bool>(arg_2.b, true)), vec2<bool>(!arg_0, global0.b), true), select(!(!vec2<bool>(false, arg_2.b)), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), vec2<bool>(arg_3.a.b, arg_2.b)), select(vec2<bool>(arg_0, true), vec2<bool>(arg_3.a.b, global0.b), arg_3.a.b), true), vec2<bool>(global0.b, arg_1 >= -1018f)), select(true, false, arg_2.a > _wgslsmith_sub_u32(u_input.b.x, 29411u))), vec2<bool>(all(select(vec4<bool>(global0.b, arg_3.a.b, arg_0, arg_0), select(vec4<bool>(true, true, global0.b, true), vec4<bool>(global0.b, arg_2.b, arg_2.b, true), vec4<bool>(global0.b, true, false, false)), global0.b & arg_2.b)), all(vec2<bool>(func_2(vec2<bool>(false, arg_0), Struct_1(13562u, false)).b, true))), all(!(!(!vec2<bool>(arg_0, arg_3.a.b)))));
    var_1 = var_0.x;
    var var_3 = var_2.x;
    return abs(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global0 = Struct_1(80885u, !(global0.b || true));
    let var_0 = Struct_1(~u_input.b.x, true);
    let var_1 = Struct_1(_wgslsmith_div_u32(func_1(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - 1703f))), var_0, Struct_2(Struct_1(23918u, false))), 0u), true);
    let var_2 = Struct_1(~firstLeadingBit(4294967295u), var_0.b);
    global1 = array<vec2<u32>, 11>();
    global2 = u_input.d;
    var var_3 = Struct_2(var_0);
    var var_4 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(888f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1336f, -234f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), -1106f), vec3<u32>(~(select(global0.a, 6869u, var_2.b) >> (9966u % 32u)), global0.a, 4294967295u), vec4<u32>(44658u, u_input.b.x, _wgslsmith_div_u32(~19025u, 1u) ^ select(func_3(var_3.a.a, 77981u), ~var_2.a, true), 0u));
}

