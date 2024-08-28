struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(627f, -427f, 303f), vec3<f32>(-858f, -719f, -667f), vec3<f32>(-1606f, -1936f, -169f), vec3<f32>(-320f, -439f, -1026f), vec3<f32>(848f, -220f, -240f), vec3<f32>(1142f, -1421f, 748f), vec3<f32>(751f, -1000f, -721f), vec3<f32>(1753f, 283f, -115f), vec3<f32>(-589f, -1028f, 1228f), vec3<f32>(1000f, -239f, 1811f), vec3<f32>(1338f, 522f, -448f), vec3<f32>(593f, -140f, 1095f));

var<private> global3: array<i32, 25> = array<i32, 25>(42986i, -551i, -1i, -8647i, 3739i, 1i, -1i, 42726i, 0i, 1i, -1i, -14165i, 1i, 377i, -23668i, 1i, 19058i, 44065i, 13245i, -1319i, 0i, 14366i, i32(-2147483648), -1i, 2147483647i);

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    var var_0 = u_input.a;
    var var_1 = any(global4.zxx);
    var var_2 = select(!select(select(select(vec4<bool>(false, true, global1.b.a, global1.b.a), vec4<bool>(true, true, global1.b.a, global4.x), false), !vec4<bool>(false, true, global1.b.a, global4.x), false), vec4<bool>(global1.b.a, false & global4.x, global1.b.a, true), false), !(!(!(!vec4<bool>(global4.x, true, false, true)))), select(!select(!vec4<bool>(global1.b.a, global4.x, global1.b.a, global1.b.a), vec4<bool>(true, global1.b.a, global1.b.a, global1.b.a), !vec4<bool>(global4.x, true, false, global1.b.a)), !vec4<bool>(all(vec4<bool>(true, global1.b.a, global4.x, true)), true, global1.b.a | global4.x, global1.a.x > -472f), !select(vec4<bool>(true, true, global1.b.a, global1.b.a), vec4<bool>(false, false, global4.x, false), global4.x | false)));
    var var_3 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_add_u32(0u, 0u), u_input.b & ~1u) << (_wgslsmith_dot_vec2_u32((vec2<u32>(1u, 25839u) | vec2<u32>(5622u, u_input.b)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, u_input.b) >> (vec2<u32>(20470u, u_input.b) % vec2<u32>(32u))) % 32u), ~u_input.b & (max(1u, _wgslsmith_add_u32(28788u, u_input.b)) << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47913u, 51426u, 4294967295u, 56893u), vec4<u32>(46474u, 57576u, u_input.b, 1u)), abs(u_input.b)) % 32u)), _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(5128u, abs(53949u)), ~vec2<u32>(u_input.b, 35524u))));
    var var_4 = global1.b;
    return vec2<f32>(_wgslsmith_f_op_f32(min(-166f, _wgslsmith_f_op_f32(step(-1650f, global1.a.x)))), -857f);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> vec2<f32> {
    global3 = array<i32, 25>();
    return _wgslsmith_f_op_vec2_f32(func_3());
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 598f)), _wgslsmith_f_op_vec2_f32(-global1.a.yx), global4.yw))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.xy), global1.a.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1553f, _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(false, vec2<i32>(global1.b.b.x, 0i)), vec3<f32>(global1.a.x, -961f, -2557f), u_input.b)), -10532i != _wgslsmith_add_i32(global1.b.b.x, global3[_wgslsmith_index_u32(u_input.b, 25u)])))));
    global4 = vec4<bool>(global1.b.a, global4.x & (~reverseBits(14201i) <= ~firstTrailingBit(-23887i)), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(-var_0.x)))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-595f * global1.a.x))))));
    var var_1 = vec3<bool>(global4.x & !((11817u != u_input.b) & global4.x), global4.x, global4.x);
    global4 = vec4<bool>(global4.x, var_1.x, global4.x, global1.b.a && global1.b.a);
    global2 = array<vec3<f32>, 12>();
    return StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1029f)), global1.a.x, !any(global4.zxw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * global1.a.x)))), global1.b.b.x ^ ((_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(10586u, 25u)], 2147483647i) & 1i) << (u_input.b % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, global4.x, global1.b.a, global4.x);
    global2 = array<vec3<f32>, 12>();
    var var_1 = !all(var_0.wx);
    var var_2 = !(!select(vec3<bool>(false != global4.x, global4.x, u_input.b >= 24085u), select(!vec3<bool>(global4.x, false, false), vec3<bool>(false, global1.b.a, global1.b.a), select(global4.wzx, global4.xzy, false)), select(select(var_0.xwy, vec3<bool>(var_0.x, true, false), global4.zyw), vec3<bool>(true, var_0.x, global1.b.a), vec3<bool>(true, false, true))));
    let x = u_input.a;
    s_output = func_1();
}

