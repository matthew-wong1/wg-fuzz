struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1690u, 2933u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<vec2<u32>, 6>();
    let var_0 = Struct_2(~global1.a, (_wgslsmith_div_i32(abs(0i), global1.b) ^ reverseBits(-global0[_wgslsmith_index_u32(4294967295u, 1u)])) << ((reverseBits(_wgslsmith_sub_u32(30385u, 0u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.a, 18754u, global1.a), vec4<u32>(7690u, global1.a, 8792u, u_input.a))) % 32u), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)));
    let var_1 = vec2<f32>(-375f, _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * _wgslsmith_f_op_f32(floor(var_0.d)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.d, var_1.x)) - 1f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(trunc(var_1.x)), true))))), var_0.d));
    var var_3 = Struct_1(arg_1.a);
    return arg_0.b;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_2(46388u, arg_1, false, _wgslsmith_f_op_f32(-global1.d));
    global1 = Struct_2(~var_0.a, u_input.c.x, var_0.c, global1.d);
    let var_1 = select(!(!(!vec4<bool>(var_0.c, arg_0, false, global1.c))), !(!vec4<bool>(false, var_0.c, true, false)), select(select(!select(vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(arg_0, var_0.c, true, arg_0), global1.c), !select(vec4<bool>(arg_0, false, arg_0, global1.c), vec4<bool>(var_0.c, arg_0, var_0.c, true), false), select(select(vec4<bool>(global1.c, global1.c, false, false), vec4<bool>(true, false, arg_0, false), global1.c), !vec4<bool>(true, true, global1.c, true), global1.c)), func_3(Struct_5(arg_0 & true, select(vec4<bool>(false, false, arg_0, var_0.c), vec4<bool>(true, true, var_0.c, false), vec4<bool>(global1.c, var_0.c, global1.c, arg_0)), Struct_1(vec3<bool>(false, true, false)), true), Struct_1(!vec3<bool>(false, false, var_0.c))), func_3(Struct_5(true, select(vec4<bool>(true, arg_0, true, global1.c), vec4<bool>(global1.c, true, arg_0, true), vec4<bool>(var_0.c, false, global1.c, false)), Struct_1(vec3<bool>(var_0.c, true, false)), false), Struct_1(vec3<bool>(var_0.c, false, arg_0)))));
    var var_2 = Struct_5(global1.c & var_0.c, !var_1, Struct_1(vec3<bool>(true, !var_1.x, global1.c)), any(vec4<bool>(global1.c, true, global1.d >= 206f, global1.c)));
    return func_3(Struct_5(!(107f == _wgslsmith_f_op_f32(step(-1603f, var_0.d))), var_2.b, var_2.c, !global1.c), var_2.c).yyy;
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_4(Struct_1(!func_2(true, 38754i)), false, vec3<bool>(abs(_wgslsmith_div_u32(0u, 25842u)) <= firstTrailingBit(~87571u), true && !(global1.d > global1.d), any(!func_3(Struct_5(true, vec4<bool>(true, global1.c, false, false), Struct_1(vec3<bool>(global1.c, true, global1.c)), global1.c), Struct_1(vec3<bool>(false, global1.c, false))).zx)));
    global2 = array<vec2<u32>, 6>();
    var var_1 = Struct_4(Struct_1(!vec3<bool>(global1.c, func_2(true, global0[_wgslsmith_index_u32(41369u, 1u)]).x, true)), func_2(var_0.c.x, _wgslsmith_add_i32(u_input.b.x, global1.b)).x && !global1.c, !var_0.c);
    var_0 = Struct_4(var_1.a, var_1.a.a.x, var_0.a.a);
    var var_2 = any(var_1.a.a);
    return !select(var_1.a.a, var_1.a.a, vec3<bool>(_wgslsmith_f_op_f32(-global1.d) >= -1854f, true, any(!vec4<bool>(var_1.a.a.x, true, false, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.b);
    global1 = Struct_2(_wgslsmith_clamp_u32(~global1.a, 4294967295u, 4294967295u), abs(_wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(var_0.a), 43876i), global1.b)), global1.c && (global1.a == u_input.d.x), _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d + 587f), global1.d, global1.c | global1.c))))));
    let var_1 = Struct_4(Struct_1(!select(select(vec3<bool>(false, global1.c, global1.c), vec3<bool>(true, false, global1.c), vec3<bool>(false, global1.c, global1.c)), select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(global1.c, global1.c, false), vec3<bool>(global1.c, true, global1.c)), select(vec3<bool>(true, false, false), vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-global1.d) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d), global1.d)), -1000f), select(!func_1(abs(vec2<u32>(global1.a, 0u))), !(!vec3<bool>(false, false, global1.c)), all(vec4<bool>(true, global1.c && false, global1.c, func_3(Struct_5(false, vec4<bool>(global1.c, global1.c, global1.c, global1.c), Struct_1(vec3<bool>(global1.c, global1.c, false)), false), Struct_1(vec3<bool>(false, global1.c, global1.c))).x))));
    let var_2 = global1.d;
    global2 = array<vec2<u32>, 6>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2255f + global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d, global1.d)) + _wgslsmith_div_f32(-118f, 1030f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.d - global1.d), _wgslsmith_f_op_f32(trunc(global1.d)), -2161f) - vec3<f32>(_wgslsmith_f_op_f32(abs(-835f)), _wgslsmith_f_op_f32(f32(-1f) * -385f), _wgslsmith_div_f32(global1.d, global1.d)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, -782f)), 900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - global1.d) * -1094f))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, global1.d);
}

