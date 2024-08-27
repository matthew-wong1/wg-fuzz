struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(52454u, false, vec4<i32>(-18474i, 0i, 2147483647i, 94212i)), Struct_1(60605u, false, vec4<i32>(-43086i, 45748i, 0i, 125241i)), Struct_1(7085u, false, vec4<i32>(-1246i, 24284i, 53593i, -1i)), Struct_1(23395u, false, vec4<i32>(0i, -1i, 1i, -1i)), Struct_1(4294967295u, true, vec4<i32>(-56605i, -21361i, 94281i, 23210i)), Struct_1(26653u, false, vec4<i32>(0i, 24855i, 41154i, -1i)), Struct_1(4294967295u, true, vec4<i32>(-1404i, -18172i, 1i, 29624i)), Struct_1(4294967295u, false, vec4<i32>(i32(-2147483648), 4338i, 836i, -44350i)), Struct_1(41925u, false, vec4<i32>(18734i, 98749i, 3761i, -1i)), Struct_1(1u, true, vec4<i32>(i32(-2147483648), -31872i, 4810i, i32(-2147483648))), Struct_1(4294967295u, true, vec4<i32>(1i, 0i, 2147483647i, 31076i)), Struct_1(53247u, false, vec4<i32>(2147483647i, -1i, -49836i, 0i)), Struct_1(4894u, false, vec4<i32>(1i, 1i, 41941i, -1i)), Struct_1(0u, false, vec4<i32>(-1i, -12601i, -7078i, -1i)), Struct_1(4294967295u, true, vec4<i32>(-24914i, 21752i, 2147483647i, -806i)), Struct_1(4294967295u, false, vec4<i32>(0i, 0i, 35301i, 0i)), Struct_1(1u, false, vec4<i32>(-70172i, -1i, -1i, 4874i)), Struct_1(0u, true, vec4<i32>(10882i, 13377i, -1i, -6436i)), Struct_1(15749u, true, vec4<i32>(1833i, 2147483647i, -47194i, i32(-2147483648))), Struct_1(42476u, false, vec4<i32>(-8641i, 1i, -468i, i32(-2147483648))), Struct_1(129307u, true, vec4<i32>(2147483647i, 2147483647i, 0i, 46758i)));

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 935f, arg_0))))))));
    var var_1 = Struct_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(arg_0 * 1220f), -445f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.x, 1000f)))), arg_0, select(arg_1.b, global2.x, false)))), 68294u, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.a, (29166u ^ arg_1.a) << (reverseBits(4294967295u) % 32u)), 21u)], vec3<u32>(0u, 78402u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) << (30484u % 32u)) | _wgslsmith_mult_vec3_u32(abs(abs(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), min(abs(global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), ~vec3<u32>(76482u, u_input.c.x, u_input.c.x))));
    global2 = !select(!vec4<bool>(global2.x, select(arg_1.b, global2.x, var_1.a.b), arg_1.b | global2.x, any(global2.wy)), !(!vec4<bool>(true, global2.x, var_1.a.b, false)), var_1.d.b);
    let var_2 = global1[_wgslsmith_index_u32(arg_1.a ^ u_input.d.x, 21u)];
    return arg_0;
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1451f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(461f)), global1[_wgslsmith_index_u32(~4294967295u, 21u)])), all(global2.wy))))) * 882f);
    let var_1 = max(u_input.b, u_input.b);
    var var_2 = !all(!select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(false, false, global2.x, global2.x), false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, global2.x, global2.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-248f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(108f, -705f)) * -1003f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)) * 240f))));
    return ~(~(~u_input.d.x & 55770u)) ^ ~_wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(u_input.c.x)), max(4294967295u >> (u_input.c.x % 32u), u_input.c.x));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = vec4<f32>(-1303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x + arg_3.b.x)) - _wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(step(465f, arg_3.b.x))))), -1000f, arg_3.b.x);
    let var_1 = ~(-(vec4<i32>(arg_0, -18871i, _wgslsmith_div_i32(-27733i, arg_0), u_input.e) << ((~u_input.c & u_input.c) % vec4<u32>(32u))));
    let var_2 = func_2() != arg_2;
    var var_3 = _wgslsmith_div_f32(arg_3.b.x, var_0.x);
    let var_4 = ~(~vec2<u32>(4294967295u, 49374u));
    return select(!(!vec4<bool>(select(var_2, global2.x, global2.x), !arg_3.d.b, var_2, false)), vec4<bool>(true, !(all(global2.zww) & (arg_3.a.b && true)), all(select(select(vec4<bool>(arg_3.d.b, global2.x, false, global2.x), vec4<bool>(true, arg_3.d.b, false, global2.x), arg_3.d.b), !vec4<bool>(arg_3.d.b, arg_3.a.b, global2.x, true), arg_3.a.c.x < arg_0)), all(!vec2<bool>(arg_3.a.b, true))), select(vec4<bool>(false, false, any(vec3<bool>(true, arg_3.a.b, var_2)), all(vec2<bool>(false, global2.x))), !select(select(vec4<bool>(global2.x, arg_3.a.b, false, arg_3.a.b), vec4<bool>(false, var_2, global2.x, arg_3.d.b), global2.x), vec4<bool>(true, var_2, true, var_2), false), arg_3.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 1177f, 795f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1649f, 1684f, -1282f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1320f, -2105f, 1347f)))), any(func_1(-2147483647i, 25309u, u_input.d.x, Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], vec3<f32>(-1959f, -125f, -152f), u_input.c.x, global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(10562u, 29u)])))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2092f, 866f, -766f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1090f, 1441f, 973f) + vec3<f32>(-668f, 389f, -623f))))))));
    global1 = array<Struct_1, 21>();
    var var_1 = firstTrailingBit(~firstTrailingBit(u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.yy))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1390f), var_2.x)), var_2.x))), var_0.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.yx)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) - vec2<f32>(var_0.x, var_2.x)))));
}

