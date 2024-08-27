struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-1980f, -247f, -723f, -1656f), vec4<f32>(1168f, -1785f, 473f, 349f), vec4<f32>(-651f, -1449f, -1000f, -1361f), vec4<f32>(1112f, 1080f, -690f, -369f), vec4<f32>(451f, 1213f, -1135f, -679f), vec4<f32>(-1000f, 105f, -771f, 509f), vec4<f32>(1000f, -2109f, -453f, -330f), vec4<f32>(262f, 209f, -1000f, 1598f), vec4<f32>(721f, 1000f, -2053f, 572f), vec4<f32>(1034f, -1000f, -1112f, -353f), vec4<f32>(298f, 1000f, 1519f, 2053f), vec4<f32>(-165f, -103f, 1859f, -1274f), vec4<f32>(-1624f, -1000f, -378f, 814f), vec4<f32>(108f, -1458f, 102f, -1294f), vec4<f32>(1113f, 1919f, 427f, 118f), vec4<f32>(-910f, 1417f, 1243f, -1931f), vec4<f32>(1209f, 1357f, 1423f, -1109f), vec4<f32>(2009f, -555f, -1009f, -768f), vec4<f32>(-271f, 367f, 103f, -1289f), vec4<f32>(-1417f, -1000f, 778f, -271f), vec4<f32>(-929f, 573f, 605f, -1622f), vec4<f32>(-1487f, 160f, -267f, -2201f), vec4<f32>(384f, 1341f, -801f, -1417f), vec4<f32>(500f, 1644f, -218f, 379f), vec4<f32>(1616f, -1212f, -1418f, -1058f));

var<private> global1: array<vec3<u32>, 3>;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(false, false, vec4<bool>(true, false, false, false)), Struct_2(false, true, vec4<bool>(true, false, false, false)), Struct_2(true, false, vec4<bool>(false, false, false, false)), Struct_2(true, true, vec4<bool>(false, false, false, true)), Struct_2(true, false, vec4<bool>(true, false, false, true)), Struct_2(false, false, vec4<bool>(true, false, true, false)), Struct_2(true, true, vec4<bool>(true, false, false, false)), Struct_2(false, true, vec4<bool>(false, true, false, true)), Struct_2(false, true, vec4<bool>(false, false, true, true)), Struct_2(false, true, vec4<bool>(false, true, true, true)), Struct_2(true, false, vec4<bool>(false, true, true, false)), Struct_2(true, false, vec4<bool>(true, false, false, false)), Struct_2(true, false, vec4<bool>(false, false, false, false)), Struct_2(true, false, vec4<bool>(true, true, true, false)));

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    global1 = array<vec3<u32>, 3>();
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(2284u, ~u_input.b), arg_0.zy << (vec2<u32>(u_input.b ^ arg_0.x, _wgslsmith_sub_u32(u_input.b, 21241u)) % vec2<u32>(32u))), 14u)];
    global4 = -117f;
    global1 = array<vec3<u32>, 3>();
    let var_1 = select(arg_2.c.x, !(34421i != u_input.a.x), all(var_0.c.xxz));
    return !vec4<bool>(17941u == min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 2873u, u_input.b), arg_0)), all(!var_0.c.xy), true, false);
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = ~abs(min(~abs(u_input.b), 18703u));
    let var_1 = true;
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    global1 = array<vec3<u32>, 3>();
    global2 = !(!(!(-u_input.a.x >= _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    return -492f;
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~(arg_0.x | (arg_0.x >> (arg_0.x % 32u)))) & 21166u, 14u)];
    global2 = any(select(select(select(!vec3<bool>(var_0.a, true, var_0.a), select(vec3<bool>(true, true, false), var_0.c.xyy, false), var_0.c.ywx), var_0.c.zwx, var_0.c.www), var_0.c.xwx, vec3<bool>(func_1(arg_0, -1470f, Struct_2(var_0.a, false, vec4<bool>(true, var_0.b, var_0.a, false))).x, var_0.a, true)));
    global3 = array<Struct_2, 14>();
    global3 = array<Struct_2, 14>();
    global0 = array<vec4<f32>, 25>();
    return _wgslsmith_f_op_f32(step(2366f, -1178f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(0i < select(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), 29173i, true)), any(vec2<bool>(true, false)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 21630u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(39963u, 72983u, u_input.b, 4294967295u)), _wgslsmith_f_op_f32(-1802f - -783f), global3[_wgslsmith_index_u32(u_input.b, 14u)]), select(0u < u_input.b, any(vec2<bool>(true, false)), true))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)), _wgslsmith_f_op_f32(func_2(var_0.c.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(true, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-396f - -1162f) * 1f))));
    let var_2 = Struct_1(vec2<u32>(0u, 0u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1216f - -1000f) * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - var_1.x) + _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)))))), _wgslsmith_f_op_f32(func_3(~vec4<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, 3237u), u_input.b, _wgslsmith_mult_u32(15535u, u_input.b)))));
    var var_3 = global3[_wgslsmith_index_u32(~(~firstLeadingBit(~117103u)), 14u)];
    let var_4 = !var_0.c.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(1u & ~_wgslsmith_dot_vec2_u32(min(var_2.a, vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, 26723u)), 3u)], reverseBits(68485i), ~_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.c.x, -8639i), vec2<i32>(~1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-838f, var_1.x)), vec4<i32>(_wgslsmith_sub_i32(~(-1i), min(-35632i, abs(u_input.c.x))), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(36005i, 9813i, 2147483647i, u_input.a.x)), -vec4<i32>(-25617i, 4440i, u_input.a.x, u_input.a.x)), -5783i << (1u % 32u), reverseBits(-1i)));
}

