struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: Struct_1;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_2(21530u, arg_0.b, vec2<i32>(arg_0.c.x, firstLeadingBit(_wgslsmith_sub_i32(1i, arg_0.c.x))) ^ vec2<i32>(abs(arg_0.c.x), firstLeadingBit(arg_0.c.x)));
    let var_1 = (reverseBits(24119u) <= abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(global2.b, arg_0.b)))) & (arg_1 & !arg_1);
    var var_2 = countOneBits(~(arg_0.c.x << (_wgslsmith_dot_vec2_u32(arg_0.b.yz, arg_0.b.yz) % 32u)) >> (select(~(~28493u), _wgslsmith_mod_u32(54380u, arg_2) << (~1u % 32u), !select(false, var_1, global1.d)) % 32u));
    global2 = arg_0;
    return abs(max(1u, select(0u, 1u, _wgslsmith_div_u32(1u, 42417u) > var_0.a)));
}

fn func_2() -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(-893f, -294f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_div_f32(376f, -393f)) - global1.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), 724f)), -923f);
    let var_1 = Struct_2(19840u, ~vec3<u32>(func_3(Struct_2(80412u, vec3<u32>(global2.a, 0u, 1u), global2.c), false, global2.b.x, var_0), u_input.a & _wgslsmith_clamp_u32(63623u, global1.b, global2.a), ~29215u), global2.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(-698f)), global2.a, -790f, true, global1.e);
    let var_3 = -_wgslsmith_add_i32(firstTrailingBit(abs(1i)), -13263i);
    var var_4 = global2.a;
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 555f, -1994f, -1622f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.b, 4294967295u, arg_1.x, 27656u), vec4<u32>(0u, 48416u, 1u, 4294967295u))), vec3<u32>(abs(~_wgslsmith_add_u32(6980u, 3555u)), 1u, ~(~(global2.a >> (0u % 32u)))), global2.c);
    var var_1 = var_0;
    global0 = array<vec3<u32>, 20>();
    var var_2 = Struct_1(global1.a, ~(33045u << (var_1.b.x % 32u)), 1400f, any(select(vec3<bool>(true, global1.d, true), select(select(vec3<bool>(global1.d, true, global1.d), vec3<bool>(false, global1.d, global1.d), true), select(vec3<bool>(false, global1.d, false), vec3<bool>(global1.d, global1.d, true), global1.d), vec3<bool>(global1.d, global1.d, global1.d)), vec3<bool>(true, true, true))), firstLeadingBit(select(24123u, ~(~arg_1.x), all(vec2<bool>(true, true)))));
    var var_3 = var_2.d;
    return var_0;
}

fn func_1() -> vec2<f32> {
    let var_0 = max(~global2.c.x, global2.c.x);
    global0 = array<vec3<u32>, 20>();
    global2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), vec2<u32>(abs(4294967295u >> (global2.b.x % 32u)) ^ ~(~0u), 5877u));
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(-433f)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(17488u, u_input.a, global2.b.x), ~global2.a), global2.a >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u), ~4294967295u), global1.c, !global1.d, ~1u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -865f), reverseBits(_wgslsmith_mod_u32(min(~1102u, func_4(vec4<f32>(global1.c, global1.c, global1.c, -207f), global2.b.zz).a), ~(~global2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(f32(-1f) * -495f)) * _wgslsmith_f_op_f32(ceil(global1.a)))), !any(!vec3<bool>(global1.d, global1.d, global1.d)) | (69493i != _wgslsmith_mult_i32(2147483647i & var_0, reverseBits(-2147483647i))), global2.b.x);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1455f, global1.c)), _wgslsmith_f_op_f32(sign(908f)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    var var_0 = all(select(arg_2, vec4<bool>(_wgslsmith_mod_u32(global1.b, 84925u) >= ~global2.b.x, false, global1.d, all(vec2<bool>(true, true))), true));
    var var_1 = Struct_1(-1377f, global1.e << (global2.b.x % 32u), arg_1, global1.d, _wgslsmith_mod_u32(_wgslsmith_div_u32(global1.b, global1.b), ~1u) >> (global2.a % 32u));
    let var_2 = ~min(1010u, 1u);
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_1, var_1.c)))) - var_1.c))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), true, 25091u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-2171f, 24258u, -864f, global1.d, 55095u | _wgslsmith_add_u32(firstTrailingBit(global1.b) & _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(26038u, 20u)], global2.b), firstLeadingBit(_wgslsmith_mult_u32(27471u, 129081u))));
    global1 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 1520f) + vec2<f32>(1384f, global1.c))), vec2<f32>(-1975f, _wgslsmith_f_op_f32(global1.c - global1.a)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.c) - vec2<f32>(global1.c, global1.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c, global1.a), vec2<f32>(global1.a, 598f))), vec2<f32>(global1.c, 2426f)), global1.d))), global1.a, !(!(!select(vec4<bool>(global1.d, true, false, true), vec4<bool>(true, global1.d, global1.d, true), vec4<bool>(false, true, global1.d, true)))), -2147483647i);
    global2 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, 528f, 1163f, global1.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.c, global1.c, global1.c, global1.c), vec4<f32>(global1.c, global1.a, -1000f, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, -451f, -2424f, -522f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-211f, -1577f, global1.a, global1.c), vec4<f32>(639f, global1.c, 740f, 918f), false))), vec4<bool>(true, true, true, global1.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.c, -754f, global1.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-157f, -742f, global1.c, 465f) - vec4<f32>(global1.c, global1.c, -1475f, global1.a))) - vec4<f32>(_wgslsmith_f_op_f32(step(246f, -417f)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -878f), -909f)))), select(global2.b.yy, reverseBits(select(reverseBits(global2.b.zx), vec2<u32>(31927u, u_input.a), vec2<bool>(global1.d, false))), !global1.d));
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    global0 = array<vec3<u32>, 20>();
    global1 = func_5(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(268f, 873f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 1082f) + vec2<f32>(636f, -796f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) - vec2<f32>(global1.a, 1971f)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-847f)) + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -672f)))), !(!(!(!vec4<bool>(true, true, global1.d, true)))), global2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x, global2.c, global0[_wgslsmith_index_u32(~min(4294967295u, 7862u), 20u)], _wgslsmith_mod_u32(~(func_5(vec2<f32>(-912f, -520f), global1.a, vec4<bool>(global1.d, global1.d, global1.d, global1.d), -1i).b | ~u_input.a), u_input.a), ~countOneBits(firstLeadingBit(~vec2<u32>(0u, 0u))));
}

