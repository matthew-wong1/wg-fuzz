struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec3<bool>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_4) -> vec3<f32> {
    global2 = select(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, arg_1.b.c, true, global2.x), true), select(vec4<bool>(arg_1.b.c, arg_1.b.c, arg_1.a.x, arg_1.a.x), vec4<bool>(true, true, false, true), global2.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.a, true, true, arg_1.b.c), vec4<bool>(global2.x, global1.x, arg_0.x, arg_0.x)), !vec4<bool>(global2.x, false, global1.x, true), all(vec4<bool>(global2.x, true, global0.x, true)))), !(!vec4<bool>(global1.x, true, select(false, true, false), false)), select(vec4<bool>(true, all(!arg_0), _wgslsmith_f_op_f32(-arg_1.b.d.x) != arg_1.c, all(!global0.xx)), select(vec4<bool>(arg_2.a, any(vec4<bool>(true, arg_2.a, true, false)), false, true), !(!vec4<bool>(true, global2.x, global2.x, false)), !select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, arg_1.b.c, arg_1.b.c, arg_1.a.x), false)), true));
    global1 = select(!select(!select(arg_0, global0.xzz, false), vec3<bool>(all(vec2<bool>(false, true)), true, false && arg_2.a), arg_1.a.x), vec3<bool>(all(vec2<bool>(any(arg_1.a), true)), ((arg_1.b.b | 4294967295u) & select(arg_1.b.b, arg_1.b.b, false)) == 1u, any(select(vec4<bool>(false, global0.x, global2.x, false), !vec4<bool>(arg_2.a, global0.x, global1.x, arg_0.x), true))), vec3<bool>(arg_0.x, true, !global0.x));
    let var_0 = vec3<bool>(true, _wgslsmith_add_u32(firstLeadingBit(4294967295u), arg_1.b.b) != 17594u, !all(select(vec3<bool>(true, global0.x, global0.x), global2.zww, global2.x)) && global1.x);
    var var_1 = !(!var_0.x);
    var var_2 = var_0.yx;
    return vec3<f32>(_wgslsmith_f_op_f32(round(668f)), arg_1.c, -109f);
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_5(global2.wy, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1798f, 629f, arg_0.x))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(global0.www, Struct_5(global2.wz, Struct_3(vec3<f32>(arg_0.x, arg_0.x, 1379f), 28737u, global1.x, arg_0.xzw, u_input.a), arg_0.x, 27734u), Struct_4(true)))))), 0u, !all(global0.zwx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.zxz, arg_0.zzx)), 43098i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1552f)), abs(_wgslsmith_sub_u32(14726u, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(38200u, 0u, 0u, 1u), vec4<u32>(65726u, 19724u, 17738u, 11913u))))));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.b | ~abs(var_0.b.b), 1u), abs(_wgslsmith_clamp_vec2_u32(abs(abs(vec2<u32>(var_0.b.b, 4294967295u))), ~reverseBits(vec2<u32>(var_0.b.b, var_0.b.b)), vec2<u32>(1u, firstTrailingBit(var_0.b.b)))));
    let var_2 = Struct_4(any(global0.xxx));
    global0 = vec4<bool>(any(vec3<bool>(any(!global0.wxy), var_0.a.x, true)), !(!global0.x), true, global0.x);
    var var_3 = var_0.b;
    return !(!(var_2.a && (!var_0.a.x | !var_2.a)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> vec4<i32> {
    global1 = vec3<bool>(-2147483647i <= -u_input.a, global2.x, global1.x);
    let var_0 = vec2<i32>(abs(-37596i), -u_input.a);
    global0 = vec4<bool>(true, !(!select(true, global1.x, global2.x)) || global1.x, max(2147483647i, firstLeadingBit(u_input.a)) < var_0.x, !func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, arg_1.x, -510f, arg_1.x)))));
    let var_1 = select(global0.yx, !global2.zx, -191f == arg_1.x);
    global0 = select(vec4<bool>(var_1.x, true && any(global2.zyw), false, !(!any(global2.xzx))), vec4<bool>(global1.x, 1u <= _wgslsmith_clamp_u32(arg_0 << (arg_0 % 32u), 0u, 53414u), true, all(vec2<bool>(arg_0 != 0u, all(vec4<bool>(true, true, true, var_1.x))))), select(!select(vec4<bool>(true, true, global1.x, false), select(vec4<bool>(true, var_1.x, true, global2.x), vec4<bool>(true, true, false, true), global0.x), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(var_1.x, var_1.x, global2.x, var_1.x), !vec4<bool>(var_1.x, false, true, true), select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, global0.x, var_1.x, false), vec4<bool>(var_1.x, global0.x, global1.x, global2.x))), !vec4<bool>(true, global0.x, global1.x, global0.x), select(select(vec4<bool>(global1.x, true, global0.x, global2.x), vec4<bool>(false, true, global1.x, global0.x), vec4<bool>(global1.x, var_1.x, global1.x, true)), select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, false, true, true)), true)), vec4<bool>(any(vec3<bool>(global2.x, global2.x, true)), global0.x, true, true)));
    return vec4<i32>(u_input.a, abs(var_0.x), 2147483647i, countOneBits(-u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.a);
    global2 = vec4<bool>(any(vec3<bool>(1u < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33529u, 16178u), vec3<u32>(4294967295u, 0u, 4294967295u)), !(u_input.a < u_input.a), global1.x)), true, false, global2.x | false);
    var_0 = 1i;
    let var_1 = vec3<i32>(-1i) * -vec3<i32>(40479i, ~u_input.a << (select(20791u, 1u, true) % 32u), 1i);
    let var_2 = Struct_4(!all(!(!vec4<bool>(false, global0.x, false, global1.x))));
    var var_3 = func_1(4294967295u, vec2<f32>(1f, _wgslsmith_f_op_f32(sign(1f))));
    global1 = global2.zwx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f));
}

