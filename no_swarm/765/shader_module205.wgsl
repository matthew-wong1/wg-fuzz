struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, -18452i), vec2<i32>(-37987i, -2147483647i)), select(abs(vec2<i32>(global0.b.a, global0.b.a)), -vec2<i32>(0i, global0.b.a), select(true, false, false))), global0.b.a));
    var var_1 = !global0.d.xy;
    global0 = Struct_2(global0.a, Struct_1(~global0.b.a), global0.a, select(vec3<bool>(!any(global0.d.zy), false, all(select(vec4<bool>(true, global0.d.x, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x)))), global0.d, false));
    let var_2 = var_1.x;
    let var_3 = -abs(vec2<i32>(16610i, global0.b.a) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) & ~vec2<i32>(~var_0.a << (u_input.c % 32u), max(global0.b.a, var_0.a));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a)));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_0 = vec3<f32>(-1955f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global0.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))), _wgslsmith_f_op_f32(f32(-1f) * -897f))));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.a, -459f, global0.d.x)))), var_0.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-var_0.x)))))), Struct_1(_wgslsmith_div_i32(-2147483647i, ~(global0.b.a ^ -8013i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.c))))), global0.d);
    global1 = array<Struct_1, 30>();
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f) * 1046f), 646f, true)), var_0.x, 524f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.a)), var_0.x, var_0.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-107f, arg_0.x)))))), global0.c, -215f) - _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 - arg_0), vec3<f32>(arg_0.x, 1689f, global0.a)))));
    var var_1 = global0.b;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(global0.c)), Struct_1(_wgslsmith_mult_i32(var_1.a, ~(~global0.b.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), global0.d);
    var var_3 = select(select(select(!var_2.d.zz, vec2<bool>(arg_2.x, arg_2.x), true), !var_2.d.zy, false), !(!(!select(global0.d.zx, vec2<bool>(true, arg_2.x), global0.d.zz))), !all(select(select(global0.d.zy, global0.d.xz, true), global0.d.yy, select(global0.d.yy, vec2<bool>(true, arg_2.x), arg_2.x))));
    var var_4 = -1709f;
    return global1[_wgslsmith_index_u32(u_input.b, 30u)];
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global0.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, global0.c, global0.c))), vec3<f32>(-1250f, _wgslsmith_f_op_f32(func_3()), -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1803f, _wgslsmith_f_op_f32(f32(-1f) * -1939f), _wgslsmith_f_op_f32(global0.c + global0.c)))), vec3<u32>(u_input.c, 106792u, ~abs(min(4294967295u, 72314u))), vec2<bool>(false, false));
    let var_1 = min(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 25459u), vec2<u32>(u_input.c, u_input.c)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 1u, u_input.a), vec4<u32>(4294967295u, 54599u, 73021u, 66551u)), 4486u), ~abs(vec4<u32>(85308u, u_input.b, u_input.c, u_input.c))), select(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 0u, 1u, 4050u), select(vec4<u32>(31148u, 22744u, u_input.a, 4294967295u), vec4<u32>(u_input.c, 0u, 23429u, u_input.c), true)), vec4<u32>(u_input.b, 4294967295u, ~1u, ~u_input.a), select(select(vec4<bool>(global0.d.x, false, global0.d.x, true), vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), vec4<bool>(global0.d.x, true, global0.d.x, global0.d.x)), vec4<bool>(false, global0.d.x, false, false), false))), ~select((vec4<u32>(9732u, 20521u, 4294967295u, 79066u) | vec4<u32>(0u, 52628u, 19357u, u_input.b)) >> (abs(vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, 4294967295u, 11566u, 0u), vec4<bool>(global0.d.x, !global0.d.x, global0.a <= -162f, global0.d.x)));
    let var_2 = !global0.d.x;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-691f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), 380f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))), -662f), select(!global0.d, !global0.d, !vec3<bool>(global0.d.x, true, select(true, global0.d.x, global0.d.x)))));
    let var_1 = u_input.b | ~(~(u_input.a >> (u_input.b % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(func_1())))), Struct_1(global0.b.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -983f)), _wgslsmith_f_op_f32(min(-707f, _wgslsmith_f_op_f32(f32(-1f) * -1036f)))), !(!select(select(global0.d, global0.d, global0.d.x), select(vec3<bool>(false, global0.d.x, false), global0.d, vec3<bool>(false, false, false)), !global0.d.x)));
    global0 = Struct_2(-183f, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(sign(726f)), _wgslsmith_f_op_f32(func_1()))), reverseBits(abs(vec3<u32>(var_1, var_1, 1u))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(global0.b.a)).x + _wgslsmith_f_op_f32(214f * var_2.a)) - global0.a), vec3<bool>(var_2.d.x, true, false));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_0.x, global0.c, 270f) + vec4<f32>(var_0.x, var_0.x, 172f, 573f)) * vec4<f32>(var_0.x, 1000f, -2601f, var_2.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_0.x, var_2.c, var_2.a), vec4<f32>(global0.c, 1243f, var_0.x, 1000f), vec4<bool>(false, true, true, true)))))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_3.x), Struct_1(-29153i), _wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f + 1069f)))), global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1576f, false)) - _wgslsmith_div_f32(var_3.x, -245f)), -237f, _wgslsmith_f_op_f32(global0.a * var_2.c)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -1333f, _wgslsmith_f_op_f32(max(-865f, var_2.c)))), 37812i | (2147483647i << (var_1 % 32u)), var_3.yzx, vec4<u32>((_wgslsmith_mod_u32(20682u, 25138u) & _wgslsmith_add_u32(var_1, 22118u)) | 4294967295u, u_input.c, ~reverseBits(var_1), var_1), -func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, global0.a)), vec3<u32>(67669u, u_input.b | u_input.c, 1u), vec2<bool>(global0.d.x, var_2.d.x || global0.d.x)).a);
}

