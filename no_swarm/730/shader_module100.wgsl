struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(450f, 406f, -454f), vec4<bool>(false, true, true, true));

var<private> global1: array<vec3<f32>, 19>;

var<private> global2: Struct_3 = Struct_3(false, Struct_1(vec3<f32>(-315f, 782f, 1019f), vec4<bool>(true, false, true, false)), true, vec2<f32>(-1273f, 519f));

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: Struct_3 = Struct_3(false, Struct_1(vec3<f32>(1000f, 1142f, -737f), vec4<bool>(true, true, true, true)), true, vec2<f32>(-1129f, 1000f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> f32 {
    return _wgslsmith_f_op_f32(-global4.b.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    global4 = Struct_3(any(!select(!global0.b.yxx, select(vec3<bool>(global2.a, global2.b.b.x, global4.c), vec3<bool>(global4.b.b.x, true, true), global2.b.b.xzx), false)), Struct_1(global2.b.a, !(!(!global2.b.b))), any(select(vec4<bool>(false, true, !global4.c, true), global4.b.b, false)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.a.xz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.xz) * vec2<f32>(1000f, -290f)) - global4.d))));
    var var_0 = global4.c;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(arg_0.b, 857f, arg_0.b), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, 1561f, -1000f))))), select(select(global0.b, !select(global4.b.b, vec4<bool>(false, true, false, global0.b.x), global4.b.b.x), vec4<bool>(!global0.b.x, arg_0.d.x < -1i, all(global0.b.zz), all(global0.b.wy))), vec4<bool>(false & all(vec4<bool>(false, false, true, true)), global2.a, u_input.a > 48473u, true), arg_0.a));
    var var_2 = false;
    let var_3 = Struct_1(vec3<f32>(-136f, _wgslsmith_f_op_f32(-arg_0.b), 1000f), !vec4<bool>(all(var_1.b) & (700f > global4.b.a.x), true || global2.b.b.x, !(global4.c && arg_0.a), !(!arg_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a.x) + _wgslsmith_f_op_f32(sign(var_3.a.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -210f))))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = -2899f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-423f * global0.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -371f)))), _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(global4.b.a * vec3<f32>(745f, global4.d.x, global0.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(29030u, u_input.a), 22u)]), global4.b.b.yw, vec2<i32>(-2147483647i >> (1u % 32u), _wgslsmith_mod_i32(-5300i, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global4.b.a.x)))) - vec4<f32>(681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(false, global2.b.a.x, u_input.a, vec2<i32>(arg_0, u_input.b)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) + _wgslsmith_f_op_f32(-609f + global2.d.x)), -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.a.x)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - global2.b.a.x))) * -812f));
    let var_3 = _wgslsmith_div_i32(56132i, u_input.c | -2147483647i);
    global1 = array<vec3<f32>, 19>();
    return Struct_3(any(!vec4<bool>(global2.c, global0.b.x, any(global4.b.b.xwx), any(global0.b))), global2.b, true, _wgslsmith_f_op_vec2_f32(max(global0.a.xy, global0.a.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 22>();
    var var_0 = func_1(-14294i);
    global0 = func_1(u_input.b >> (~u_input.a % 32u)).b;
    let var_1 = 665f;
    global1 = array<vec3<f32>, 19>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1229f, 1080f, -502f), vec3<f32>(-1000f, global4.b.a.x, var_1), vec3<bool>(false, false, global0.b.x))))))), func_1(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, u_input.b)), vec2<i32>(-2147483647i, countOneBits(-2147483647i)))).b.b);
    let var_3 = -2147483647i;
    var_0 = Struct_3(all(func_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, 792i, var_3, 12602i), vec4<i32>(u_input.c, var_3, -7729i, u_input.b)), abs(vec4<i32>(u_input.b, -9129i, -61367i, u_input.b)))).b.b.yw), func_1(_wgslsmith_div_i32(var_3, -1i)).b, var_2.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b.a.x, -2194f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 399f) * vec2<f32>(-309f, global0.a.x))))))));
    global3 = array<vec4<bool>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((63705u << (~u_input.a % 32u)) << (select(u_input.a, 1u, true) % 32u), u_input.a, u_input.a, u_input.a), u_input.b, vec2<i32>(min(~21484i, 0i), u_input.c));
}

