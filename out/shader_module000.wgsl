struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(-495f, -1644f);

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-608f, arg_2.a.x) + vec2<f32>(-814f, global1.x)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(arg_2.a.x * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -270f)));
    return arg_2.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), -120f, 1487f, global1.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, 1022f, -1386f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1304f, -1744f, global1.x, -776f) + vec4<f32>(-786f, global1.x, -1000f, 899f)), vec4<bool>(true, true, true, true)))), true, any(vec2<bool>(all(vec4<bool>(true, true, true, true)), true)), ~(~u_input.d.x) | 11736u), global3[_wgslsmith_index_u32(~global2.x, 25u)], ~(~u_input.e.x ^ firstTrailingBit(u_input.b.x)) >= -3626i, global3[_wgslsmith_index_u32(1u, 25u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(530f, 1521f))), _wgslsmith_f_op_f32(select(-884f, 405f, var_0.c)), -1801f, _wgslsmith_f_op_f32(round(-341f)))), all(vec4<bool>(func_3(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-412f, global1.x, var_0.a.a.x, 912f), true, var_0.d.b, u_input.d.x), Struct_1(vec4<f32>(-860f, -326f, -967f, -1254f), var_0.c, var_0.b.c, u_input.c.x)), true, var_0.a.c || false, false)), !var_0.b.b, var_0.d.d);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-158f - -286f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), var_0.b.a.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(124f - -480f), 1469f, 1f), var_0.a.a.wwy, !select(vec3<bool>(var_1.c, false, false), vec3<bool>(var_0.b.c, true, false), false)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + _wgslsmith_div_f32(global1.x, var_0.b.a.x)))), 1386f, -286f));
    global3 = array<Struct_1, 25>();
    global4 = array<Struct_2, 9>();
    return global3[_wgslsmith_index_u32(u_input.c.x, 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> bool {
    var var_0 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, 257f, 731f, global1.x) - vec4<f32>(-593f, 336f, 1000f, global1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1315f, global1.x, arg_0.a.x, 1000f) - vec4<f32>(-122f, 1499f, arg_2.b.a.x, arg_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.a), !(arg_0.d >= 13462u))), arg_2.b.b, arg_2.a.b, ~firstLeadingBit(~global2.x)), true, func_2());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.x)))));
    let var_2 = u_input.c;
    var var_3 = u_input.b;
    var var_4 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.d, countOneBits(1u)), 9u)];
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(41728u, arg_0.d.d), 25u)];
    var var_1 = false;
    global4 = array<Struct_2, 9>();
    var var_2 = !arg_2.wzy;
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-func_2().a.wz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.a.yw)))))));
    return Struct_1(var_0.a, !(!(abs(1u) < (global2.x >> (var_0.d % 32u)))), true, global2.x);
}

fn func_1() -> StorageBuffer {
    global3 = array<Struct_1, 25>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-750f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(387f)), _wgslsmith_f_op_f32(trunc(555f))))))));
    let var_0 = -2147483647i;
    let var_1 = Struct_2(func_5(global4[_wgslsmith_index_u32(~70143u, 9u)], u_input.d.x, vec4<bool>(false, true, true, func_4(global3[_wgslsmith_index_u32(0u, 25u)], func_2(), global4[_wgslsmith_index_u32(u_input.a.x | global2.x, 9u)], u_input.c.zxw))), global3[_wgslsmith_index_u32(0u, 25u)], true, Struct_1(vec4<f32>(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1000f)), _wgslsmith_f_op_f32(round(global1.x)), 838f), select(true, true, u_input.e.x <= (u_input.b.x ^ 10539i)), !select(all(vec3<bool>(false, false, false)), true, true), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.c.xzy, abs(vec3<u32>(global2.x, 57795u, global2.x))), 34843u)));
    global1 = func_2().a.zy;
    return StorageBuffer(u_input.b.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a.x)))), var_1.a.a.xwy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(floor(global1.x)))), ~(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.d.yy) >> (global2.x % 32u)) ^ _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

