struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = any(vec4<bool>(!global2.b.a, global2.b.a, any(!(!vec3<bool>(global2.b.a, global2.b.a, true))), true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.c.b.x, _wgslsmith_f_op_f32(-arg_0.c.c.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.c.a, arg_0.c.b.x, true))))) - arg_0.c.b.x));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_3(select(!vec4<bool>(global2.b.a, !global2.b.a, true, !global2.b.a), select(select(select(vec4<bool>(global2.b.a, false, false, arg_0), vec4<bool>(arg_0, false, arg_0, false), false), vec4<bool>(arg_0, true, global2.b.a, global2.b.a), u_input.c.x <= u_input.b), !vec4<bool>(global2.b.a, false, arg_0, true), select(vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0, global2.b.a, true), true)), false), Struct_2(!select(global2.b.a, arg_0, arg_0) & true), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-758f, -1061f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(296f, -1143f, 1401f) + vec3<f32>(-1000f, 1217f, 968f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-524f)), -2615f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(arg_0, true, false, false), global2.b, Struct_1(-493f, vec3<f32>(1532f, -952f, -778f), vec2<f32>(188f, 472f)), global2.b))), 443f, arg_0)))), Struct_2(any(vec4<bool>(true, arg_0, false, global2.b.a)) || arg_0));
    let var_1 = _wgslsmith_f_op_f32(func_3(Struct_3(vec4<bool>(false, true, false, any(vec2<bool>(true, true))), global2.b, Struct_1(_wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.c.b), _wgslsmith_f_op_vec3_f32(select(var_0.c.b, var_0.c.b, var_0.a.zwz)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1822f, var_0.c.c.x))))), Struct_2(all(var_0.a.xxx)))));
    var var_2 = abs(countOneBits(countOneBits(u_input.c)) | abs(vec3<u32>(abs(14632u), 1u, global2.a | 1u)));
    let var_3 = vec3<f32>(var_0.c.a, var_1, _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f - var_1) + _wgslsmith_f_op_f32(-var_1)))));
    let var_4 = vec4<bool>(any(var_0.a), var_0.d.a, true, u_input.d.x != ~(~(-2147483647i) >> ((global2.a & u_input.c.x) % 32u)));
    return _wgslsmith_add_vec2_u32(max(u_input.a, max(vec2<u32>(~global2.a, 28766u), firstLeadingBit(~vec2<u32>(4294967295u, 33064u)))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.yz, reverseBits(u_input.c.zy)), abs(vec2<u32>(global2.a, global2.a))) << (u_input.c.zz % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = vec2<i32>(-12241i, 0i);
    return ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(global2.a, 5828u), func_2(true)) << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a & ~select(u_input.c.xy, ~u_input.c.zz, global1[_wgslsmith_index_u32(func_1(Struct_3(vec4<bool>(global2.b.a, false, global2.b.a, global2.b.a), global2.b, Struct_1(-708f, vec3<f32>(-947f, 1318f, 1146f), vec2<f32>(-220f, -883f)), global2.b), ~vec2<i32>(u_input.d.x, 11477i), abs(vec3<i32>(-11969i, u_input.d.x, 1i))), 15u)]);
    global2 = Struct_4(_wgslsmith_mult_u32(~530u, global2.a), Struct_2(global2.b.a));
    global2 = Struct_4(u_input.b, Struct_2(!all(select(vec2<bool>(false, true), global1[_wgslsmith_index_u32(var_0.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]))));
    global1 = array<vec2<bool>, 15>();
    let var_1 = Struct_2(any(select(!vec4<bool>(false, global2.b.a, global2.b.a, global2.b.a), vec4<bool>(false, all(vec3<bool>(global2.b.a, global2.b.a, false)), true == global2.b.a, global2.b.a), vec4<bool>(!global2.b.a, global2.a > 67349u, global2.b.a, any(vec2<bool>(global2.b.a, false))))));
    let var_2 = u_input.d.xw;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(676f - 948f), _wgslsmith_f_op_f32(max(671f, -1240f)), _wgslsmith_f_op_f32(1465f * 1681f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_4 = -var_2 << (min(var_0, u_input.a) % vec2<u32>(32u));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~select(abs(~vec4<u32>(12318u, global2.a, 19705u, 23633u)), abs(~vec4<u32>(4294967295u, 1060u, 1u, var_0.x)), false), var_2.x, vec4<u32>(57008u, 1u, 65746u, func_2(true).x) >> (vec4<u32>(~4294967295u >> (~4294967295u % 32u), ~(~u_input.b), firstTrailingBit(var_0.x), _wgslsmith_add_u32(0u, global2.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, var_0.x), u_input.c.zz) % 32u)) % vec4<u32>(32u)), min(_wgslsmith_sub_vec4_i32(u_input.d & u_input.d, countOneBits(u_input.d)), vec4<i32>(var_2.x, u_input.d.x, var_2.x, -var_2.x)) & abs(vec4<i32>(~var_2.x, i32(-1i) * -33030i, 1i, -38143i)), ~var_4 << (u_input.c.yz % vec2<u32>(32u)));
}

