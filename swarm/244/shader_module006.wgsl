struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 0i);

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(32579i, vec2<u32>(24576u, 4294967295u)), Struct_3(-71752i, vec2<u32>(48325u, 11943u)), Struct_3(28290i, vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> bool {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), !(u_input.b.x == -54658i), all(vec4<bool>(true, true, false, false)), 4294967295u == _wgslsmith_add_u32(u_input.a, 1u)), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(false, true, false)))), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(~arg_0.b.x, 2u)])), false, all(vec4<bool>(true, true, true, true)), !select(false, 149f >= arg_2.x, arg_0.a > 10989i)), true);
    var_0 = vec4<bool>(true, true, var_0.x, any(!select(var_0.yw, !vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x))));
    var var_1 = arg_2.x;
    var_0 = vec4<bool>(true, false, false, false);
    global1 = array<vec3<bool>, 2>();
    return any(!vec3<bool>(select(var_0.x, var_0.x && false, !var_0.x), !var_0.x, any(select(var_0.yx, vec2<bool>(var_0.x, true), var_0.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = vec2<bool>(true, func_3(Struct_3(_wgslsmith_div_i32(global0.x, -u_input.b.x), arg_0), Struct_1(52920i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), arg_1.zz) + arg_1.xx), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(-1386f - -779f), _wgslsmith_f_op_f32(arg_1.x - 712f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_div_f32(-1453f, -1059f))), 4294967295u >> (u_input.a % 32u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(sign(1030f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 904f) - arg_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), all(vec2<bool>(arg_2.x, all(vec2<bool>(true, arg_2.x)))))), _wgslsmith_f_op_f32(896f - 785f));
    global1 = array<vec3<bool>, 2>();
    global2 = array<Struct_3, 3>();
    let var_2 = Struct_5(global2[_wgslsmith_index_u32(u_input.a, 3u)], vec3<u32>(u_input.a, arg_0.x, ~(abs(u_input.a) << (_wgslsmith_clamp_u32(0u, arg_0.x, arg_0.x) % 32u))));
    return var_2.a.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> i32 {
    global2 = array<Struct_3, 3>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-299f - -708f), -2487f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(267f)))))));
    global2 = array<Struct_3, 3>();
    global0 = min(vec4<i32>(-func_2(~vec2<u32>(1u, 76646u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 1175f, -320f, -1511f)), !vec4<bool>(true, false, arg_0.x, arg_2.x), false), countOneBits(global0.x), 1i, _wgslsmith_div_i32(-abs(global0.x), global0.x)), min(vec4<i32>(-1i) * -abs(vec4<i32>(50975i, u_input.b.x, 0i, global0.x)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(global0.x, global0.x, u_input.b.x, 1i) ^ u_input.b, vec4<i32>(2147483647i, -2147483647i, u_input.b.x, u_input.b.x) & u_input.b), u_input.b)));
    global2 = array<Struct_3, 3>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1((i32(-1i) * -u_input.b.x) ^ func_1(vec2<bool>(false, false), ~vec4<u32>(27927u, 27771u, 0u, u_input.a), vec2<bool>(false, false)), vec2<f32>(-1459f, _wgslsmith_f_op_f32(-963f * -988f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(-915f * -1000f), 189f, -703f))), !vec4<bool>(true, false, (global0.x | u_input.b.x) <= global0.x, !all(vec3<bool>(true, true, false))), Struct_1(-min(-2147483647i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1600f, -1125f), vec2<f32>(1203f, 183f), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(787f, 158f, 467f), vec3<f32>(291f, 920f, -640f)))))));
    var var_1 = Struct_4(vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-305f))))));
    global2 = array<Struct_3, 3>();
    var_0 = Struct_2(var_0.a, vec4<bool>(!(!(u_input.a <= u_input.a)), true, all(vec4<bool>(false, var_0.a.b.x == -199f, true, any(vec4<bool>(var_0.b.x, true, var_0.b.x, false)))), !all(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), Struct_1(~1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1199f, var_0.c.b.x) - _wgslsmith_f_op_vec2_f32(-var_1.a))), var_0.a.c));
    let var_2 = Struct_3(u_input.b.x & ~(-min(u_input.b.x, u_input.b.x)), ~vec2<u32>(37564u, u_input.a));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.xxw);
}

