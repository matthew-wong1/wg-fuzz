struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), -28061i), vec2<i32>(43840i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(-1i, -7155i), vec2<i32>(6568i, 2147483647i), vec2<i32>(-71194i, -2296i), vec2<i32>(-15333i, 0i), vec2<i32>(1i, 0i));

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(5318i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(0i, 31621i, -28179i, -53122i), vec4<i32>(-16366i, 20197i, 2147483647i, -1i));

var<private> global2: i32 = 0i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    let var_0 = vec4<bool>(false, true, true, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-331f, -1000f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) + _wgslsmith_f_op_f32(round(-159f)))), 2115f));
    let var_2 = !(!select(var_0.zwz, !vec3<bool>(true, var_0.x, var_0.x), true));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -569f);
    var var_3 = !var_2;
    return !select(var_2, !var_2, var_3.x);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_1(select(vec3<bool>(all(vec4<bool>(true, false, false, true)), false, true), select(vec3<bool>(true, any(vec2<bool>(false, false)), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), true), true, ~(~(~(-13086i))));
    var var_1 = 4294967295u;
    var var_2 = any(!select(!vec3<bool>(var_0.b, var_0.a.x, var_0.b), !var_0.a, !var_0.a)) | all(!var_0.a);
    var var_3 = any(!(!select(vec4<bool>(true, true, true, var_0.b), select(vec4<bool>(var_0.a.x, false, true, var_0.b), vec4<bool>(false, false, true, var_0.b), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), vec4<bool>(false, true, true, false))));
    let var_4 = Struct_2(Struct_1(func_3(), var_0.b, var_0.c));
    return Struct_4(true, Struct_2(var_0), firstTrailingBit(vec3<u32>(1u, countOneBits(0u >> (1u % 32u)), min(20054u, firstTrailingBit(12946u)))), var_4, all(select(vec2<bool>(all(vec3<bool>(false, false, true)), var_4.a.b), !(!var_0.a.yy), var_0.b)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<i32>) -> bool {
    let var_0 = min(4294967295u, ~(~(~max(arg_1.c.x, arg_1.c.x))));
    var var_1 = func_2().b.a.a;
    let var_2 = ~(-(_wgslsmith_dot_vec2_i32(arg_2.ww, min(vec2<i32>(-57379i, 1i), global0[_wgslsmith_index_u32(var_0, 9u)])) & (~(-18728i) >> (select(var_0, 35692u, false) % 32u))));
    global0 = array<vec2<i32>, 9>();
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, firstTrailingBit(var_2)), abs((-2147483647i | var_2) & 0i)), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.b.a.c), select(arg_2.yz, arg_2.xy, false))), countOneBits(u_input.a) | u_input.a);
    return var_1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = any(vec3<bool>(any(vec2<bool>(false, true)), true, func_4(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), func_2(), vec4<i32>(i32(-1i) * -36238i, -u_input.a, abs(-11660i), 2147483647i))));
    global1 = array<vec4<i32>, 3>();
    global2 = -(u_input.a >> (~_wgslsmith_add_u32(4294967295u, firstLeadingBit(4294967295u)) % 32u));
    let var_1 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), true, ~firstTrailingBit(13361i))), -1219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f * _wgslsmith_div_f32(916f, 1153f)))));
    var var_2 = vec4<bool>(var_1.a.a.a.x, any(!var_1.a.a.a.xx), var_1.a.a.c != _wgslsmith_mod_i32(var_1.a.a.c, -66582i), true);
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 11677u;
    let var_1 = func_1();
    let var_2 = countOneBits(_wgslsmith_mult_vec3_u32(~(vec3<u32>(var_0, var_0, 24037u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, 0u, var_0), vec3<u32>(4294967295u, var_0, 4294967295u))), vec3<u32>(~_wgslsmith_sub_u32(var_0, var_0), ~abs(0u), 0u)));
    let var_3 = vec3<i32>(var_1.c, -var_1.c, -func_1().c | 1i);
    global0 = array<vec2<i32>, 9>();
    let var_4 = !select(var_1.a, var_1.a, !select(var_1.a, vec3<bool>(true, true, var_1.b), func_1().a));
    global0 = array<vec2<i32>, 9>();
    var var_5 = ~4294967295u;
    global2 = ~(i32(-1i) * -41969i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-831f, 1917f) * vec2<f32>(-735f, -1252f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-598f, -561f) * vec2<f32>(1636f, -149f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) + _wgslsmith_f_op_f32(ceil(897f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1494f, -312f)), 1340f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-634f))), -866f))));
}

