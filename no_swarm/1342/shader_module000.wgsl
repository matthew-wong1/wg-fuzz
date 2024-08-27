struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 10492u);

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: Struct_3;

var<private> global3: i32 = 0i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = select(any(!vec3<bool>(global2.c.c.x, global2.c.c.x, all(global2.c.c))), global2.c.c.x, false);
    var var_1 = firstLeadingBit(13301i);
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(300f, arg_0, _wgslsmith_f_op_f32(step(-270f, arg_0)), arg_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 210f, global2.a.x, 207f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, global2.d.a, -2390f, arg_0)))))));
    global1 = array<vec2<bool>, 22>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-global2.a), vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(42663u, 4294967295u, global0.x), ~vec3<u32>(global2.c.b, 0u, 0u)), global0.x), global2.c, global2.d);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> u32 {
    var var_0 = -21875i;
    var var_1 = !vec4<bool>(select(_wgslsmith_dot_vec2_i32(global2.c.a, vec2<i32>(-2147483647i, -2147483647i)) < _wgslsmith_sub_i32(-1i, arg_0.c.a.x), all(vec3<bool>(arg_0.c.c.x, global2.c.c.x, arg_0.c.c.x)), all(vec4<bool>(true, true, arg_0.c.c.x, false))), false, all(!select(vec3<bool>(true, global2.c.c.x, false), vec3<bool>(global2.c.c.x, true, true), true)), all(vec2<bool>(arg_0.c.c.x, false)));
    var var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -348f) - global2.c.d.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_0.a.x).d.a) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - 1165f))))));
    global0 = func_2(var_2.a.x).b;
    var var_3 = func_2(-821f).c;
    return ~countOneBits(arg_0.c.b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = func_2(arg_1.a);
    var var_1 = Struct_2(var_0.c.a, global2.c.b, select(var_0.c.c, arg_2.yx, arg_2.x), global2.d, arg_1);
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.d.a, global2.a.x)))))), var_0.b, Struct_2(u_input.a.zy, func_3(func_2(320f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.a, -251f, 1870f))), global2.c.c, func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a + 1642f), _wgslsmith_f_op_f32(-381f * -813f)))).d, Struct_1(_wgslsmith_f_op_f32(select(266f, -786f, var_1.c.x)))), var_0.c.d);
    var var_2 = var_0.c.e;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-683f, _wgslsmith_f_op_f32(global2.c.e.a * global2.d.a))))) * var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -972f));
    return 2730u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(1u, global0.x);
    let var_1 = ~(-reverseBits(~vec4<i32>(17448i, -2147483647i, u_input.b, u_input.b)) << (vec4<u32>(abs(global0.x), 1u, 4294967295u, func_1(true, Struct_1(global2.c.d.a), vec4<bool>(false, true, global2.c.c.x, global2.c.c.x))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 618f, 355f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.e.a, global2.c.d.a, global2.c.d.a)), select(vec3<bool>(global2.c.c.x, false, false), vec3<bool>(false, global2.c.c.x, global2.c.c.x), false))) + vec3<f32>(global2.d.a, -1036f, 368f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, 1000f, -346f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.a, -296f, 1677f))) * vec3<f32>(global2.c.d.a, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x + global2.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, _wgslsmith_f_op_f32(abs(global2.a.x)), -1000f)));
    var_0 = ~global0.x;
    let var_3 = ~global2.b;
    global3 = i32(-1i) * -31423i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1356f))))), 1680f, _wgslsmith_f_op_f32(f32(-1f) * -320f)), var_3.x | 97418u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.c.e.a, _wgslsmith_f_op_f32(step(-831f, var_2.x)), -1000f))))));
}

