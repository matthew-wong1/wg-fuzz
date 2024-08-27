struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec4<u32> {
    return vec4<u32>(4294967295u, abs(u_input.a), ~85491u, u_input.a);
}

fn func_3() -> f32 {
    var var_0 = !(!all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)])) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(2804u, 19u)], -136f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 19u)] - _wgslsmith_f_op_f32(f32(-1f) * -1466f))), 775f), -591f);
    var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a != 22989u, true, all(vec3<bool>(true, false, false))))) & !any(vec3<bool>(true, u_input.a > u_input.a, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-520f, var_1.x))) + var_1.x))));
    global0 = array<f32, 19>();
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.d;
    let var_1 = ~(~var_0.c) >> ((vec3<u32>(arg_2.a.x & max(u_input.a, 1u), u_input.a, _wgslsmith_div_u32(~arg_2.d.b, firstTrailingBit(u_input.a))) | (~arg_1.a.wzz & firstTrailingBit(select(arg_1.a.yyx, arg_2.a, vec3<bool>(arg_1.b.a, arg_1.b.a, arg_2.d.a))))) % vec3<u32>(32u));
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(abs(-1402f)))) - -892f);
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = array<f32, 19>();
    var var_0 = Struct_3(~vec4<u32>(arg_2 >> (0u % 32u), 152425u, u_input.a, select(31100u, arg_1.b, false) ^ 69570u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b, 19u)]))), Struct_3(vec4<u32>(0u, min(18947u, 0u), max(arg_2, 118573u), ~arg_1.b), func_2(-1791f, Struct_3(vec4<u32>(18742u, 4294967295u, arg_2, arg_1.b), arg_1), Struct_2(vec3<u32>(50735u, arg_2, arg_1.b), arg_1.a, vec3<u32>(0u, u_input.a, 1u), arg_1, Struct_1(arg_1.a, 0u, vec3<i32>(arg_1.c.x, -2147483647i, -8264i))))), Struct_2(vec3<u32>(arg_2, ~5270u, u_input.a), true, vec3<u32>(~u_input.a, arg_2 & arg_2, ~59779u), Struct_1(arg_1.a, _wgslsmith_mod_u32(arg_2, 63852u), max(vec3<i32>(arg_3, 1i, arg_1.c.x), vec3<i32>(arg_3, arg_1.c.x, 2918i))), arg_1)));
    var_0 = Struct_3(~vec4<u32>(~arg_2, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.b, arg_2, arg_2), var_0.a.wzz), var_0.a.wwz), arg_2 << (func_1().x % 32u), 33948u), arg_1);
    var var_1 = vec4<bool>(false, (func_2(-562f, Struct_3(vec4<u32>(1u, 1u, arg_1.b, var_0.a.x), var_0.b), Struct_2(var_0.a.yzy, false, vec3<u32>(4294967295u, arg_2, var_0.a.x), Struct_1(false, arg_2, vec3<i32>(-1i, arg_1.c.x, -36557i)), Struct_1(true, 25369u, vec3<i32>(3799i, arg_3, 0i)))).a == any(!vec3<bool>(var_0.b.a, arg_1.a, false))) != var_0.b.a, false, ~(-2147483647i) < _wgslsmith_div_i32(arg_1.c.x, i32(-1i) * -var_0.b.c.x));
    var_1 = select(select(vec4<bool>(var_0.b.a, var_0.b.a, func_2(arg_0.x, Struct_3(var_0.a, Struct_1(var_1.x, 63257u, vec3<i32>(2147483647i, arg_3, 48025i))), Struct_2(vec3<u32>(u_input.a, 114284u, 1u), var_1.x, vec3<u32>(arg_2, 35471u, u_input.a), Struct_1(var_0.b.a, var_0.a.x, vec3<i32>(arg_1.c.x, 1i, 47252i)), arg_1)).a | var_0.b.a, any(var_1.zz)), !(!vec4<bool>(arg_1.a, arg_1.a, var_0.b.a, false)), vec4<bool>(global0[_wgslsmith_index_u32(~var_0.b.b, 19u)] < _wgslsmith_f_op_f32(-1000f + arg_0.x), global0[_wgslsmith_index_u32(~arg_2, 19u)] != _wgslsmith_f_op_f32(sign(arg_0.x)), arg_1.a, all(vec2<bool>(var_1.x, var_0.b.a)))), !vec4<bool>(true, arg_1.a, all(var_1.xzz), true), select(select(select(vec4<bool>(arg_1.a, false, var_0.b.a, true), !vec4<bool>(var_0.b.a, true, arg_1.a, var_1.x), !vec4<bool>(true, var_0.b.a, true, true)), !select(vec4<bool>(var_1.x, true, true, var_0.b.a), vec4<bool>(false, var_0.b.a, arg_1.a, true), vec4<bool>(false, true, true, var_0.b.a)), arg_1.a), !(!vec4<bool>(var_0.b.a, arg_1.a, false, arg_1.a)), !(!arg_1.a) | all(vec3<bool>(false, var_0.b.a, true))));
    return var_0.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-509f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~4294967295u), 19u)])));
    global0 = array<f32, 19>();
    let var_1 = Struct_3(func_1(), func_5(Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 46375u, u_input.a) >> (vec4<u32>(36091u, 1954u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 15473u, 8199u) | vec4<u32>(u_input.a, u_input.a, 14945u, 1u)), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(936f, -614f)), func_2(var_0, Struct_3(vec4<u32>(31053u, u_input.a, 918u, 4294967295u), Struct_1(true, 4294967295u, vec3<i32>(12945i, 1i, -1i))), Struct_2(vec3<u32>(0u, 1u, 28992u), false, vec3<u32>(22306u, 80030u, 4294967295u), Struct_1(true, 1u, vec3<i32>(-46238i, 24635i, -3915i)), Struct_1(false, u_input.a, vec3<i32>(-1i, 56610i, 0i)))), _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-19108i, 2388i), vec2<i32>(23011i, 1i)))), Struct_2(vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 7347u), 4294967295u), false, abs(vec3<u32>(397u, 1u, u_input.a)), Struct_1(true, ~98697u, -vec3<i32>(2147483647i, -17836i, -18437i)), func_2(_wgslsmith_f_op_f32(-1820f + -137f), Struct_3(vec4<u32>(4294967295u, 1u, 22880u, 40166u), Struct_1(true, u_input.a, vec3<i32>(33335i, 1i, -57836i))), Struct_2(vec3<u32>(4294967295u, u_input.a, u_input.a), true, vec3<u32>(0u, u_input.a, u_input.a), Struct_1(true, 137646u, vec3<i32>(-2147483647i, -2147483647i, 17179i)), Struct_1(false, u_input.a, vec3<i32>(10774i, -11141i, -33847i))))), firstLeadingBit(1i)));
    global0 = array<f32, 19>();
    let var_2 = ~(~(~u_input.a));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, 4294967295u, var_1.a.x), vec2<f32>(267f, _wgslsmith_f_op_f32(-432f + -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(20448u, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2003f)) + -511f), _wgslsmith_f_op_f32(1477f + var_0)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(16110u, 19u)], var_0, global0[_wgslsmith_index_u32(var_2, 19u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(12294u, 19u)], -404f, -180f) * vec3<f32>(216f, 541f, 482f))), vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14839u, 19u)] - -794f), _wgslsmith_div_f32(485f, global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(49960u, 19u)] + 124f))))), (vec2<u32>(func_1().x, var_1.b.b) >> (var_1.a.zx % vec2<u32>(32u))) | var_1.a.xz);
}

