struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 27268u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<Struct_2, 31>();
    let var_0 = arg_2;
    let var_1 = arg_2.b;
    var var_2 = select(~var_0.b.d, vec2<u32>(select(global1.x, global1.x, arg_2.a.x), 39242u >> ((var_0.b.c & _wgslsmith_sub_u32(0u, var_0.b.d.x)) % 32u)), any(var_0.b.b));
    var var_3 = all(vec4<bool>(var_0.a.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)) <= arg_0, (arg_2.b.a.x | _wgslsmith_add_u32(1u, arg_2.c)) != firstTrailingBit(abs(0u))));
    return true;
}

fn func_2() -> u32 {
    let var_0 = all(!vec4<bool>(!select(false, false, false), any(vec4<bool>(true, true, true, true)), true, true));
    var var_1 = Struct_1(min((firstLeadingBit(vec3<u32>(1u, 63711u, global1.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(3239u, global1.x, global1.x), vec3<u32>(global1.x, 1u, 1u)) % vec3<u32>(32u))) >> ((vec3<u32>(9352u, 20601u, global1.x) ^ select(vec3<u32>(1u, global1.x, 26729u), vec3<u32>(31438u, global1.x, global1.x), var_0)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global1.x, global1.x, global1.x)), vec3<u32>(global1.x, 0u, 20127u), vec3<u32>(global1.x, global1.x, 29198u)), vec3<u32>(0u, ~global1.x, 4294967295u >> (global1.x % 32u)))), !vec3<bool>(global1.x > ~global1.x, any(!vec4<bool>(var_0, var_0, false, true)), any(vec2<bool>(false, false))), _wgslsmith_sub_u32(0u, ~global1.x), ~firstTrailingBit(vec2<u32>(1u, 1u)));
    global0 = array<Struct_2, 31>();
    var var_2 = Struct_2(!select(vec4<bool>(false, func_3(608f, u_input.a, global0[_wgslsmith_index_u32(34093u, 31u)]), !var_0, var_1.b.x), select(!vec4<bool>(false, var_0, var_0, false), !vec4<bool>(false, true, false, var_1.b.x), var_1.b.x), all(select(vec4<bool>(false, var_0, var_0, var_1.b.x), vec4<bool>(false, false, var_1.b.x, var_1.b.x), vec4<bool>(true, false, var_1.b.x, true)))), Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, var_1.d.x, var_1.a.x), var_1.a >> (var_1.a % vec3<u32>(32u))), var_1.b, countOneBits(var_1.c) >> (43902u % 32u), ~(~var_1.d)), _wgslsmith_dot_vec4_u32(vec4<u32>(90395u, ~1u, global1.x, firstTrailingBit(~global1.x)), vec4<u32>(firstTrailingBit(91050u) << (_wgslsmith_div_u32(30550u, 12130u) % 32u), ~global1.x, ~_wgslsmith_mod_u32(var_1.c, global1.x), 1u)));
    let var_3 = vec2<i32>(-29468i, -6082i);
    return var_1.c;
}

fn func_1() -> i32 {
    global1 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(), firstLeadingBit(4294967295u)), firstTrailingBit(~vec2<u32>(1u, 4294967295u)), vec2<u32>(firstLeadingBit(34955u), 39039u)) >> ((min(~vec2<u32>(18649u, global1.x), _wgslsmith_sub_vec2_u32(vec2<u32>(859u, global1.x), vec2<u32>(global1.x, 4294967295u))) & select(~vec2<u32>(global1.x, 109526u), vec2<u32>(global1.x, 0u) ^ vec2<u32>(0u, global1.x), true)) % vec2<u32>(32u)));
    global1 = reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(global1.x, global1.x)), vec2<u32>(27541u, 0u)), vec2<u32>(abs(27767u), 1u | global1.x)) ^ min(~(~vec2<u32>(global1.x, 56616u)), vec2<u32>(max(global1.x, 4294967295u), global1.x)));
    let var_0 = ~vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(global1.x), global1.x), ~global1.x, global1.x, _wgslsmith_div_u32(19718u, 1u)) & vec4<u32>(34620u, 0u, max(~abs(15645u), 0u | ~global1.x), 1u);
    global1 = ~max(~(~vec2<u32>(27344u, 30279u)), var_0.yz);
    let var_1 = Struct_1(var_0.yyy, vec3<bool>(~(~1u) <= ~_wgslsmith_mult_u32(36576u, global1.x), false, all(vec3<bool>(true, all(vec2<bool>(false, true)), select(true, true, true)))), var_0.x, ~vec2<u32>(1u, select(7668u, _wgslsmith_add_u32(59801u, var_0.x), any(vec2<bool>(false, false)))));
    return 35477i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_1();
    var var_1 = 0i;
    global0 = array<Struct_2, 31>();
    var var_2 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, -1059f)) + 1f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) - _wgslsmith_f_op_f32(ceil(-619f))), any(vec2<bool>(true, true)), 4294967295u > _wgslsmith_dot_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 80748u, 0u), vec3<u32>(global1.x, 4294967295u, global1.x)), abs(vec3<u32>(7177u, global1.x, global1.x))), vec3<u32>(~68650u, 0u, 17794u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2794f, 185f, 1652f), vec3<f32>(-150f, -230f, 528f)), vec3<f32>(622f, -787f, -588f), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1442f, -1138f, 1581f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(510f, 847f, 871f)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1330f, _wgslsmith_f_op_f32(step(-692f, 455f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(778f + 443f), _wgslsmith_div_f32(1000f, -412f)))))), !((global1.x > global1.x) && true)));
    global1 = ~(~((vec2<u32>(41003u, 0u) | select(vec2<u32>(global1.x, global1.x), vec2<u32>(58317u, global1.x), vec2<bool>(false, true))) | firstTrailingBit(~vec2<u32>(54579u, 1u))));
    let var_4 = _wgslsmith_f_op_vec2_f32(var_3.yy + var_3.yz);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

