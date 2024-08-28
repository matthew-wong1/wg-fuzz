struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-9842i, 22640i, -51932i, 0i, 2147483647i, -1i, -1i, 0i, i32(-2147483648), -4745i, -19495i, -865i, i32(-2147483648), -25598i, 23362i, -8303i, -57095i, -27321i, 0i, 0i);

var<private> global1: Struct_1 = Struct_1(false, 1u, -422f, false);

var<private> global2: vec3<u32> = vec3<u32>(34716u, 55696u, 4294967295u);

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -409f), -1028f, global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(538f)))))));
    var var_1 = -1000f;
    let var_2 = global2.x & global1.b;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_div_f32(-1420f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_f32(-global1.c))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-135f, 1276f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-792f, var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -480f))), vec4<f32>(-984f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.x - 1000f), -858f))), vec4<bool>(_wgslsmith_f_op_f32(global1.c + var_0.a.x) > _wgslsmith_f_op_f32(abs(global1.c)), all(vec2<bool>(false, global1.a)), global1.d, global1.a))));
    return var_2;
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = 0u & ~_wgslsmith_clamp_u32((global1.b & 4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global1.b, global2.x), vec3<u32>(global1.b, global1.b, 4294967295u)), func_3(arg_0, _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.b)), 0u);
    var var_1 = !vec3<bool>((global1.d || !global1.d) & global1.a, true, global1.a);
    global2 = ~countOneBits(~vec3<u32>(~1u, _wgslsmith_div_u32(var_0, 62313u), 35177u));
    var_1 = !vec3<bool>(var_1.x, false, true);
    global3 = array<Struct_1, 19>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1175f * arg_0.a.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c))), 1f, _wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(arg_2, global1.c, 473f, arg_2))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 - 2016f), arg_2))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -577f)))), global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(558f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1985f)), _wgslsmith_f_op_f32(arg_2 * 249f))) + _wgslsmith_f_op_f32(-arg_2)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1346f * -200f), -1438f, _wgslsmith_f_op_f32(715f + var_0.x), _wgslsmith_f_op_f32(-global1.c))))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.a.zwx - vec3<f32>(_wgslsmith_f_op_f32(select(1490f, global1.c, false)), -1522f, _wgslsmith_div_f32(779f, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, global1.c, -131f)))));
    global3 = array<Struct_1, 19>();
    return Struct_2(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = u_input.b.xx;
    let var_1 = !global1.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(arg_1, -1143f, 454f, arg_1)))) >= _wgslsmith_f_op_f32(-461f + arg_2.a.x), _wgslsmith_mod_u32(global1.b, ~countOneBits(global1.b) | (~0u & ~global2.x)), arg_1, select(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1252f, 582f)) > global1.c, true));
    let var_2 = u_input.c;
    let var_3 = global1.a;
    return -720f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 19>();
    global2 = ~vec3<u32>(global2.x, 62885u, ~3339u);
    let var_0 = u_input.a.yw;
    var var_1 = global1.c;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))));
    global2 = countOneBits(vec3<u32>(80448u, _wgslsmith_dot_vec2_u32(~global2.yz, min(vec2<u32>(global1.b, global2.x), vec2<u32>(global1.b, 63826u))) | _wgslsmith_sub_u32(~global1.b, ~27465u), _wgslsmith_div_u32(~29968u, _wgslsmith_div_u32(_wgslsmith_mod_u32(global2.x, 1u), _wgslsmith_mod_u32(4294967295u, 30503u)))));
    var var_3 = ~vec2<u32>(~4294967295u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(func_4(func_1(vec3<i32>(u_input.b.x, 42195i, u_input.b.x), -8607i, 786f), _wgslsmith_f_op_f32(floor(global1.c)), func_1(vec3<i32>(global0[_wgslsmith_index_u32(var_3.x, 20u)], global0[_wgslsmith_index_u32(global2.x, 20u)], var_0.x), 18708i, var_2))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * var_2)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1365f, global1.c), vec2<f32>(var_2, 1178f))), vec2<f32>(2733f, 1053f)))), global1.c);
}

