struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: vec4<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> bool {
    var var_0 = u_input.c;
    var var_1 = 1344u < ~_wgslsmith_add_u32(u_input.c & (1u << (arg_0.x % 32u)), 8483u);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(40668u, 21u)], !any(vec4<bool>(true, true, all(vec2<bool>(global1.x, true)), global1.x && global1.x)), !(!select(vec4<bool>(true, false, global1.x, false), vec4<bool>(global1.x, false, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, global1.x, global1.x, true), true))));
    var var_3 = -vec4<i32>(_wgslsmith_mult_i32(~u_input.e.x, u_input.b) | 82846i, -abs(-21468i), 2147483647i, max(u_input.e.x, -32027i));
    var_0 = 80188u;
    return var_2.b;
}

fn func_2() -> vec2<bool> {
    global1 = select(vec4<bool>(true, all(vec2<bool>(false, !global1.x)), any(vec3<bool>(false, true, global1.x)), true), !vec4<bool>(global1.x, u_input.c > u_input.c, global1.x || func_3(vec3<u32>(55900u, 1u, 4294967295u)), false), !global1.x);
    var var_0 = Struct_1(!global1.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-372f, 507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1862f, 360f)) + _wgslsmith_f_op_f32(f32(-1f) * -167f))))), 0u, !select(global1.yzz, vec3<bool>(true, global1.x, false & global1.x), select(select(global0[_wgslsmith_index_u32(u_input.c, 21u)], vec3<bool>(false, true, global1.x), global1.x), global1.zxw, any(vec2<bool>(true, global1.x)))));
    global1 = select(select(!(!(!vec4<bool>(false, var_0.a, true, true))), select(select(vec4<bool>(var_0.d.x, false, false, global1.x), !vec4<bool>(false, var_0.d.x, global1.x, global1.x), global1.x), vec4<bool>(var_0.a, true, false, !var_0.a), vec4<bool>(true && global1.x, true, true, -14317i >= u_input.b)), all(global1.zzy)), vec4<bool>(!(!(var_0.b.x > 646f)), (u_input.a.x != (u_input.a.x << (u_input.c % 32u))) && (var_0.b.x != _wgslsmith_div_f32(340f, var_0.b.x)), !all(vec4<bool>(var_0.a, var_0.d.x, false, true)), select(global1.x, true, true)), true);
    let var_1 = _wgslsmith_div_u32(~(~_wgslsmith_div_u32(max(1360u, u_input.c), ~123417u)), var_0.c);
    var var_2 = countOneBits(4294967295u);
    return var_0.d.zy;
}

fn func_1(arg_0: f32) -> u32 {
    global1 = vec4<bool>(477f == _wgslsmith_f_op_f32(-arg_0), false, global1.x, !any(func_2()));
    global1 = select(vec4<bool>(all(vec4<bool>(!global1.x, false, global1.x, global1.x)), true, false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(arg_0)))) <= arg_0), !vec4<bool>(true, func_3(vec3<u32>(17143u, u_input.c, 3142u)), !(!global1.x), global1.x), vec4<bool>(global1.x, all(select(select(global1.www, global0[_wgslsmith_index_u32(u_input.c, 21u)], global1.x), global0[_wgslsmith_index_u32(4294967295u, 21u)], any(vec2<bool>(global1.x, global1.x)))), all(!select(vec2<bool>(global1.x, true), global1.wx, global1.yy)), any(!vec2<bool>(global1.x, global1.x))));
    let var_0 = select(global1.x, global1.x, true);
    var var_1 = vec2<bool>(all(select(select(select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, global1.x, false), vec4<bool>(true, var_0, var_0, false)), select(vec4<bool>(false, var_0, global1.x, false), vec4<bool>(true, true, global1.x, global1.x), global1.x), var_0), select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, var_0, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x)), !vec4<bool>(var_0, false, var_0, true), all(global0[_wgslsmith_index_u32(4294967295u, 21u)])), select(vec4<bool>(global1.x, global1.x, global1.x, true), select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, false, var_0, var_0)), any(vec4<bool>(var_0, global1.x, false, global1.x))))), any(!select(global0[_wgslsmith_index_u32(0u, 21u)], select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, var_0, true)), true)));
    var var_2 = any(!select(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 4294967295u), 21u)], select(select(global0[_wgslsmith_index_u32(9473u, 21u)], vec3<bool>(true, false, global1.x), false), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(var_0, false, false), global1.zwz), var_0), global1.wxx));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(528f)))), 1183f);
    global0 = array<vec3<bool>, 21>();
    let var_1 = max(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(1u, 26100u)), select(23514u, 0u, global1.x)), ~u_input.c, func_1(_wgslsmith_f_op_f32(f32(-1f) * -458f))), min(~(~u_input.c), ~reverseBits(u_input.c))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u) << (firstTrailingBit(vec2<u32>(u_input.c, 30522u)) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.c)));
    var var_2 = u_input.e;
    global1 = vec4<bool>(!(!global1.x), false, func_2().x, (-7321i & abs(var_2.x ^ u_input.b)) < countOneBits(~(i32(-1i) * -1i)));
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(func_1(-1138f)), _wgslsmith_sub_u32(4294967295u, u_input.c)), ~_wgslsmith_div_vec2_u32(var_1, firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(25665u, u_input.c)))));
    var var_4 = global1.xx;
    let var_5 = vec3<bool>(false, 1690f >= var_0, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(27858u), ~(~77253u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1517f, 2656f))))), var_2.x);
}

