struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<vec2<i32>, 8>;

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> bool {
    global0 = array<i32, 30>();
    global1 = ~(~(~u_input.c.x));
    global1 = 0u;
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 670f, arg_3.x, arg_3.x)), vec4<f32>(arg_3.x, arg_3.x, 423f, arg_3.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 407f, arg_3.x, -1503f), arg_3) + vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x))))), Struct_2(~u_input.c.x, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(sign(1531f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3.x))))));
    let var_1 = ~vec2<u32>(_wgslsmith_mult_u32(abs(~2041u), _wgslsmith_dot_vec4_u32(reverseBits(u_input.c), ~vec4<u32>(u_input.c.x, var_0.b.a, 3665u, 4294967295u))), var_0.b.a);
    return select(all(vec3<bool>(!(!arg_1), var_0.a.x < -152f, (true && arg_0) & any(vec2<bool>(true, arg_1)))), arg_0, true);
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_2, 30>();
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-931f, 308f, 842f, 1626f), vec4<f32>(1173f, 2195f, 497f, 1157f)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(344f)), -984f, 1000f, _wgslsmith_f_op_f32(-1f))), global4[_wgslsmith_index_u32(4294967295u | u_input.c.x, 30u)]);
    global0 = array<i32, 30>();
    global4 = array<Struct_2, 30>();
    global3 = array<vec2<i32>, 8>();
    return Struct_1(true, select(!vec4<bool>(func_3(true, true, false, var_0.a), true, false, true), vec4<bool>(true, true, (u_input.c.x & var_0.b.a) <= (var_0.b.a | 1u), false), true), vec2<u32>(~var_0.b.a, ~u_input.c.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<i32, 30>();
    var var_0 = func_2();
    var var_1 = select(var_0.b, select(!var_0.b, select(!vec4<bool>(true, var_0.a, true, false), vec4<bool>(true, all(var_0.b.zw), true, true), vec4<bool>(var_0.a, all(vec3<bool>(false, var_0.a, false)), all(var_0.b.zzw), func_2().b.x)), !select(var_0.b, var_0.b, select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.b.x, var_0.b.x, var_0.a, var_0.a), var_0.b))), var_0.b);
    let var_2 = var_0.c.x & abs(var_0.c.x);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-506f, _wgslsmith_f_op_f32(-216f - -1293f), _wgslsmith_f_op_f32(241f - 829f), _wgslsmith_f_op_f32(f32(-1f) * -1839f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -691f, 654f, -864f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, 1460f, -326f, -367f))))), Struct_2(var_2, vec3<i32>(_wgslsmith_mod_i32(18125i, -21244i), countOneBits(-41064i), arg_0.x), _wgslsmith_f_op_f32(-1307f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-396f)) - _wgslsmith_div_f32(1000f, 661f)))));
    return global4[_wgslsmith_index_u32(var_0.c.x, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~(~6640u), select(1u, firstTrailingBit(1u), true), u_input.c.x);
    var var_1 = !(!(_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(~var_0.x, 8u)], abs(global3[_wgslsmith_index_u32(73411u, 8u)])) > (firstTrailingBit(28379i) ^ u_input.b)));
    var var_2 = func_1(u_input.a);
    var_1 = all(vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.c)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-598f, var_3, -1000f, var_3), vec4<f32>(var_3, -204f, 1891f, var_3)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.c, var_3, 372f, 1505f), vec4<f32>(var_2.c, -822f, var_3, var_3))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, var_3, var_2.c) * vec4<f32>(var_3, var_3, 546f, var_2.c))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, -924f, 1118f, -212f))))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-630f, -763f, var_3, -521f))) * vec4<f32>(var_2.c, var_2.c, var_3, var_2.c))), vec4<f32>(_wgslsmith_div_f32(var_2.c, -1770f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3, var_3)), -462f), _wgslsmith_f_op_f32(306f * 1302f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) * _wgslsmith_f_op_f32(max(1446f, var_2.c)))))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.b);
}

