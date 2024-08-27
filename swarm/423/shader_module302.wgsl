struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec3<bool>(true, false, true), 0i, 2453u, Struct_2(true, false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, false, false), -82171i, 6586u, Struct_2(true, false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, false, true), 30293i, 37553u, Struct_2(false, true, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(false, true, true), 27049i, 0u, Struct_2(true, true, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, true, false), 1i, 81431u, Struct_2(true, false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, false, true), 24642i, 100300u, Struct_2(true, true, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(true, true, true), 84816i, 0u, Struct_2(false, true, vec3<bool>(false, false, false))), Struct_3(vec3<bool>(true, true, true), 1i, 5968u, Struct_2(true, false, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(false, false, false), i32(-2147483648), 7239u, Struct_2(true, false, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(true, false, false), -13134i, 9725u, Struct_2(true, true, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(false, false, true), -1i, 16839u, Struct_2(true, false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(true, true, true), 1i, 0u, Struct_2(true, false, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(false, false, true), i32(-2147483648), 4294967295u, Struct_2(true, false, vec3<bool>(false, false, false))), Struct_3(vec3<bool>(false, false, true), -1i, 71122u, Struct_2(true, true, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(false, true, false), -1i, 58768u, Struct_2(true, true, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(true, false, false), 1i, 1u, Struct_2(false, true, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(false, false, true), 69055i, 46897u, Struct_2(false, true, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(false, false, false), -33449i, 6023u, Struct_2(true, false, vec3<bool>(true, true, true))), Struct_3(vec3<bool>(false, true, true), 1i, 1u, Struct_2(true, false, vec3<bool>(false, false, true))), Struct_3(vec3<bool>(false, true, false), 65495i, 4294967295u, Struct_2(false, false, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(true, true, true), 2147483647i, 4294967295u, Struct_2(false, true, vec3<bool>(false, true, false))), Struct_3(vec3<bool>(false, false, false), 1i, 1u, Struct_2(false, true, vec3<bool>(false, false, false))), Struct_3(vec3<bool>(true, true, false), -18246i, 23567u, Struct_2(true, true, vec3<bool>(true, false, true))), Struct_3(vec3<bool>(true, true, true), 0i, 40599u, Struct_2(false, true, vec3<bool>(true, false, false))), Struct_3(vec3<bool>(true, false, false), -15024i, 1u, Struct_2(false, false, vec3<bool>(false, false, true))), Struct_3(vec3<bool>(false, false, true), -5338i, 16043u, Struct_2(true, true, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(true, false, false), 45417i, 4294967295u, Struct_2(false, false, vec3<bool>(false, true, true))), Struct_3(vec3<bool>(true, false, true), 31393i, 0u, Struct_2(false, false, vec3<bool>(true, true, false))), Struct_3(vec3<bool>(true, false, true), 2147483647i, 1u, Struct_2(false, true, vec3<bool>(false, true, true))));

var<private> global1: f32 = -502f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(abs(1u), -607f);
    var var_1 = ~firstLeadingBit(vec4<i32>(abs(u_input.b), -1i, 1i, -44358i));
    var var_2 = vec4<i32>(_wgslsmith_div_i32(5030i, ~firstLeadingBit(max(var_1.x, 63862i))), ~0i, var_1.x, -18029i);
    let var_3 = var_0.b;
    let var_4 = Struct_2(~((10693u >> (arg_0.x % 32u)) >> ((arg_0.x | u_input.c.x) % 32u)) >= ~(~_wgslsmith_mod_u32(4294967295u, u_input.c.x)), (true & (_wgslsmith_f_op_f32(f32(-1f) * -520f) < _wgslsmith_f_op_f32(ceil(-1271f)))) || true, select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), -2147483647i >= -u_input.a), vec3<bool>(!all(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !all(vec4<bool>(true, false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true)))));
    return !select(select(select(!vec4<bool>(false, var_4.c.x, var_4.c.x, false), select(vec4<bool>(true, var_4.b, false, false), vec4<bool>(false, var_4.b, false, var_4.c.x), var_4.c.x), false), !select(vec4<bool>(var_4.a, var_4.a, var_4.c.x, var_4.c.x), vec4<bool>(var_4.b, var_4.b, true, var_4.b), var_4.a), !(!vec4<bool>(var_4.c.x, true, false, var_4.a))), !vec4<bool>(all(vec3<bool>(var_4.b, var_4.a, var_4.c.x)), true, true, true), select(!select(vec4<bool>(false, false, var_4.c.x, var_4.b), vec4<bool>(true, false, false, var_4.a), var_4.b), select(select(vec4<bool>(false, false, false, var_4.c.x), vec4<bool>(var_4.b, true, false, true), vec4<bool>(false, var_4.b, false, false)), !vec4<bool>(var_4.c.x, false, false, var_4.b), all(vec2<bool>(true, true))), select(vec4<bool>(false, false, var_4.c.x, false), vec4<bool>(false, var_4.b, var_4.a, var_4.b), vec4<bool>(true, true, var_4.c.x, false))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(arg_0, all(select(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(true, arg_0, true, true), false), !func_3(u_input.c), select(arg_0, any(vec3<bool>(false, arg_0, true)), u_input.c.x != 42874u))), !func_3(u_input.c).xwz);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1144f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(216f + 331f) + -205f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-567f * -187f))), 12739i > u_input.e)))));
    var var_2 = var_0;
    var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(floor(var_1)))))) + 2322f);
    return _wgslsmith_f_op_f32(-var_1);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1367f + -446f);
    var var_1 = _wgslsmith_f_op_f32(func_2(true));
    var_1 = _wgslsmith_f_op_f32(ceil(331f));
    let var_2 = abs(u_input.c.yy ^ ((u_input.c.zy >> (u_input.c.zy % vec2<u32>(32u))) >> (u_input.c.wz % vec2<u32>(32u))));
    var var_3 = !select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !func_3(u_input.c).x), vec3<bool>(true, true, true));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_4(vec2<i32>(u_input.e, 65789i));
    var var_1 = abs(vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a, -(~vec2<i32>(var_0.a.x, u_input.e))), -u_input.a, ~(-45628i)));
    var_1 = -vec3<i32>(var_0.a.x, -19676i, var_0.a.x);
    var var_2 = var_0.a.x;
    let var_3 = var_0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-176f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.x, arg_0.b), arg_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 29>();
    let var_0 = true;
    let var_1 = vec3<bool>(false, false, all(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(false, var_0, var_0, var_0), true), !(!vec4<bool>(false, var_0, false, var_0)), true)));
    global1 = -1069f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(abs(~u_input.c.x), -511f), var_0, Struct_2(all(vec2<bool>(var_0, true)), !func_1(u_input.b, 0u, 55001u), vec3<bool>(false, true, var_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, 868f), vec3<f32>(725f, -1314f, 827f))) - vec3<f32>(-267f, 719f, _wgslsmith_f_op_f32(max(954f, 1000f)))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-357f)))));
    let var_2 = Struct_3(var_1, -u_input.e, 28008u, Struct_2(var_1.x, !var_0, !(!var_1)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f - 547f)), 161f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-982f, -996f, -388f) - vec3<f32>(-394f, 275f, -635f))))))), vec3<f32>(-1000f, -1000f, -1009f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(39651i, -1i, max(reverseBits(var_2.b), ~var_2.b)));
}

