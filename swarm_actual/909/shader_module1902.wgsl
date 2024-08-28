struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1149f, 581f, 491f, 1000f);

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec4<u32>(1u, 23062u, 0u, 0u));

var<private> global3: Struct_3 = Struct_3(Struct_2(vec4<u32>(0u, 11017u, 0u, 0u)), vec2<f32>(-859f, 2064f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = reverseBits(-u_input.d);
    var var_1 = select(arg_1, vec4<bool>(any(!arg_1), !(false || arg_1.x) & true, false, u_input.b >= 42673i), any(!vec3<bool>(global3.b.x >= global3.b.x, true, any(arg_1.wy))));
    var var_2 = vec3<bool>(any(select(arg_1, arg_1, vec4<bool>(!arg_1.x, u_input.a != 4294967295u, global3.b.x > global0.x, !arg_1.x))), select(!any(!var_1.xz), var_1.x, any(select(var_1.wzx, vec3<bool>(true, var_1.x, arg_1.x), true))), any(arg_1.xw));
    var var_3 = Struct_3(global3.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global3.b.x))))));
    var_3 = Struct_3(Struct_2(reverseBits(vec4<u32>(~global2.a.x, _wgslsmith_dot_vec3_u32(var_3.a.a.zxy, global3.a.a.wyy), ~global3.a.a.x, var_3.a.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_3.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.b * vec2<f32>(1000f, var_3.b.x))) - vec2<f32>(_wgslsmith_div_f32(2138f, -459f), _wgslsmith_f_op_f32(var_3.b.x * 1000f)))));
    return !(!(!(!var_1.wxx)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.a.x, arg_3.x, 50907u), vec4<u32>(1u << (u_input.a % 32u), global3.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14873u, 4294967295u, u_input.a), vec4<u32>(0u, arg_0.a.x, global2.a.x, global3.a.a.x)), arg_3.x) >> (~global2.a % vec4<u32>(32u))));
    global1 = false;
    global2 = arg_0;
    global2 = Struct_2(~arg_0.a);
    var_0 = Struct_2(~_wgslsmith_sub_vec4_u32(~global2.a, _wgslsmith_div_vec4_u32(var_0.a, global2.a)) >> (~(~(~arg_0.a)) % vec4<u32>(32u)));
    return !select(!select(func_3(vec3<i32>(2147483647i, 1i, u_input.e.x), vec4<bool>(false, false, true, true)), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, false), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), 47785u == _wgslsmith_mult_u32(global2.a.x, ~global2.a.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = u_input.d.x <= 10486i;
    var_0 = all(vec2<bool>(true, !any(vec4<bool>(false, true, true, true))));
    var var_1 = false;
    var_0 = true || !any(!func_2(Struct_2(vec4<u32>(u_input.a, 43850u, 0u, 22961u)), Struct_1(u_input.c, vec3<i32>(u_input.b, 1i, 0i)), 30289u, arg_0.xx));
    global2 = global3.a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.a;
    var var_0 = func_1(global2.a, Struct_3(Struct_2(abs(select(vec4<u32>(u_input.a, 1u, global3.a.a.x, 0u), global3.a.a, vec4<bool>(false, false, false, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(438f)) - _wgslsmith_div_f32(-835f, -1357f)), _wgslsmith_f_op_f32(f32(-1f) * -141f))));
    let var_1 = Struct_1(~abs(-1i), -u_input.d.xxy);
    let var_2 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1041f, 510f, -133f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1688f, global3.b.x, global0.x, 1628f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-288f, 1000f), _wgslsmith_f_op_f32(-global0.x), -787f, _wgslsmith_f_op_f32(min(global3.b.x, global3.b.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, -475f, 430f, 2279f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, -1000f, 767f) * vec4<f32>(905f, var_0.b.x, 1284f, 512f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, global0.x, -1653f, -676f)))), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))))));
    global1 = (var_0.a.a.x == ~0u) && false;
    var var_3 = -var_1.a;
    var var_4 = firstTrailingBit(-vec2<i32>(-1i, select(u_input.b, abs(-30368i), u_input.c > u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, -1319f, _wgslsmith_sub_u32(min(_wgslsmith_dot_vec4_u32(global3.a.a, vec4<u32>(1u, 4745u, 86668u, u_input.a)) >> (_wgslsmith_mod_u32(40122u, global3.a.a.x) % 32u), _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_clamp_u32(17297u, u_input.a, 38485u), 18207u)), firstTrailingBit(0u)), countOneBits(~global2.a.xy));
}

