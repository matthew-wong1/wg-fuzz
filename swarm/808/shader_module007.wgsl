struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: bool = false;

var<private> global2: array<u32, 19>;

var<private> global3: array<i32, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -472f);
    var var_1 = ~(~(~4294967295u));
    global0 = array<Struct_2, 21>();
    global3 = array<i32, 27>();
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, firstTrailingBit(u_input.a.x)), u_input.e.x, ~u_input.e.x ^ (u_input.d >> (4294967295u % 32u))), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(6946u, 23817u, 6446u), u_input.e.wzy))) == 0u;
    return ~u_input.a.yy;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, all(vec3<bool>(false, false, false)), true, true)));
    var var_1 = Struct_4(Struct_3(select(select(var_0.a, select(vec4<bool>(false, var_0.a.x, false, false), var_0.a, var_0.a), u_input.e.x < u_input.e.x), vec4<bool>(false, var_0.a.x & var_0.a.x, any(vec3<bool>(true, var_0.a.x, var_0.a.x)), var_0.a.x), var_0.a.x)), firstTrailingBit(_wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 19u)], 27u)], u_input.b.x, u_input.b.x), vec3<i32>(-1i, 0i, -2147483647i)), vec3<i32>(u_input.c, -23581i, 25051i), var_0.a.zxx), vec3<i32>(0i >> (u_input.e.x % 32u), 1i >> (global2[_wgslsmith_index_u32(46719u, 19u)] % 32u), global3[_wgslsmith_index_u32(u_input.e.x, 27u)]))));
    global0 = array<Struct_2, 21>();
    var var_2 = vec2<u32>(0u, 7036u);
    global1 = true | any(var_0.a);
    return !var_1.a.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = var_0.a.x;
    global2 = array<u32, 19>();
    global3 = array<i32, 27>();
    var var_2 = abs(4294967295u);
    return Struct_1(u_input.d, ~abs(arg_0.b), vec2<u32>(countOneBits(arg_3.c.a), arg_0.c.x), arg_0.d);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    return func_4(Struct_1(0u, _wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(~4294967295u, 27u)], 1i), _wgslsmith_add_vec2_u32((u_input.e.yw ^ u_input.e.zw) << (~vec2<u32>(68929u, 6129u) % vec2<u32>(32u)), func_2(!vec4<bool>(arg_1.x, arg_1.x, true, false))), _wgslsmith_f_op_f32(2430f * -415f)), Struct_3(select(!func_3(), vec4<bool>(arg_1.x, arg_1.x, false, all(vec3<bool>(arg_1.x, arg_1.x, true))), arg_1.x)), true, Struct_2(~vec4<u32>(4294967295u, arg_0, 16532u, 83697u) | ~vec4<u32>(19805u, 2790u, u_input.a.x, arg_0), Struct_1(84876u, ~(~1320i), min(~u_input.e.yw, ~vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_0)), _wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(f32(-1f) * -1202f))), Struct_1(u_input.d, ~(global3[_wgslsmith_index_u32(4294967295u, 27u)] ^ 19860i), vec2<u32>(5u, 4294967295u) & u_input.e.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global3 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -693f);
    var var_1 = ~(~u_input.e);
    let var_2 = func_1(4294967295u, select(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), func_3().xy, select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(abs(271f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-231f, -632f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-257f, var_2.d) + vec2<f32>(var_2.d, -457f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 1031f))))))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(8748u, vec2<bool>(4294967295u < global2[_wgslsmith_index_u32(31337u, 19u)], true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(6040u, -53663i, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], 19u)], 4294967295u), -106f))) * func_1(u_input.d, vec2<bool>(false, true)).d) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1116f), _wgslsmith_f_op_f32(round(-521f)))))), -1171f);
    var var_1 = select(!(!vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true)), vec4<bool>(false, any(func_3()), true, func_3().x), all(vec4<bool>(!all(vec2<bool>(true, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), !(var_0.x <= var_0.x), true)));
    global0 = array<Struct_2, 21>();
    global3 = array<i32, 27>();
    var var_2 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.c ^ global3[_wgslsmith_index_u32(u_input.a.x, 27u)]) | u_input.b, vec2<i32>(-1i, -2147483647i) & (vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 27u)]) & select(u_input.b, vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(80249u, 27u)]), vec2<bool>(true, var_1.x))));
    var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_f32(-801f, -1442f), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global3[_wgslsmith_index_u32(1u, 27u)], -27350i), vec3<i32>(global3[_wgslsmith_index_u32(26332u, 27u)], var_2.x, var_2.x)) << (global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(max(u_input.e.x, global2[_wgslsmith_index_u32(34197u, 19u)]), 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)]), 19u)] % 32u)), -(~1748i), u_input.a.zx);
}

