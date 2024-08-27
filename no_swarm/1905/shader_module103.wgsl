struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<f32>(-589f, 283f, 1558f, -164f), vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), Struct_2(Struct_1(vec4<f32>(2289f, -230f, -589f, 209f), vec3<u32>(1u, 29939u, 59499u), vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), vec2<u32>(0u, 0u), Struct_1(vec4<f32>(187f, -958f, -276f, 452f), vec3<u32>(871u, 1u, 54824u), vec3<bool>(false, true, false), vec4<bool>(true, false, true, false)), 15625u), Struct_1(vec4<f32>(829f, -530f, -366f, 108f), vec3<u32>(1u, 1u, 93657u), vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)), 1u, 34150u);

var<private> global1: array<bool, 23>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-2847i, 3240i, 57330i), vec3<i32>(26280i, 1i, i32(-2147483648)), vec3<i32>(70802i, -6046i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(-41584i, 0i, -1i), vec3<i32>(2147483647i, i32(-2147483648), -35374i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(-17927i, 0i, -11645i), vec3<i32>(-40551i, -40473i, -16855i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 83688i, 2147483647i));

var<private> global3: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    var var_0 = global0.b;
    var var_1 = Struct_1(vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(abs(global0.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a.x, _wgslsmith_div_f32(var_0.a.a.x, -593f))), 1366f), reverseBits(global0.b.a.b), global0.c.d.xwx, var_0.c.d);
    let var_2 = vec3<i32>(0i, 28535i, u_input.a.x) >> (~abs(~vec3<u32>(u_input.b, 100439u, 27818u)) % vec3<u32>(32u));
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(var_0.c.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x)))));
    return vec3<bool>(!any(global0.a.c.yz), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 38272u, global0.c.b.x, global0.e) << (vec4<u32>(global0.a.b.x, u_input.b, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(var_1.b.x, var_0.d, var_0.d, 62088u)), select(vec4<u32>(global0.c.b.x, 1u, 1u, u_input.b) >> (vec4<u32>(u_input.b, var_0.b.x, u_input.b, 37933u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 20573u, global0.b.d), vec4<u32>(u_input.b, 25348u, 7763u, global0.a.b.x)), any(var_0.a.d)))), 23u)], !any(vec3<bool>(any(var_0.c.c.yx), false, global1[_wgslsmith_index_u32(abs(u_input.b), 23u)])));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = -297f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(arg_1.a.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_1.c.a.x, 300f), arg_1.a.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.b.c.a, global0.c.a))))), arg_1.c.b, global0.c.d.yxz, vec4<bool>(true, all(func_3(~global0.d)), !all(global0.b.c.d), !(!any(vec2<bool>(global0.a.d.x, false)))));
    var var_2 = 1i;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-369f, _wgslsmith_f_op_f32(sign(1000f)), global0.b.a.a.x, _wgslsmith_f_op_f32(global0.c.a.x - var_1.a.x)))), ~_wgslsmith_mod_vec3_u32(global0.a.b, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, 41816u), var_1.b)), !var_1.c, var_1.d), global0.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a))), min(min(firstTrailingBit(vec3<u32>(42011u, global0.c.b.x, var_1.b.x)), global0.b.a.b), _wgslsmith_sub_vec3_u32(select(vec3<u32>(50289u, u_input.b, arg_0), var_1.b, true), arg_1.c.b)), global0.b.a.d.yyy, var_1.d), global0.d, arg_1.a.b.x);
    var var_4 = ((_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.zxz, vec3<i32>(4191i, u_input.a.x, -12076i)), _wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(global0.c.b.x, 15u)], vec3<i32>(u_input.a.x, u_input.a.x, -9157i))) != -1275i) || true) || false;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(1478f, _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))), _wgslsmith_f_op_f32(max(791f, -659f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.c.a.x)))), firstLeadingBit(global0.b.c.b), var_3.c.c, vec4<bool>(all(var_3.a.d), var_1.d.x, true, var_3.b.a.d.x & var_3.a.d.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: f32) -> Struct_1 {
    return func_2(1u, Struct_2(Struct_1(vec4<f32>(-912f, _wgslsmith_f_op_f32(-global0.b.a.a.x), -1406f, _wgslsmith_f_op_f32(f32(-1f) * -1641f)), global0.b.a.b, select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 23u)], global0.b.a.d.x), vec3<bool>(global1[_wgslsmith_index_u32(global0.a.b.x, 23u)], global1[_wgslsmith_index_u32(global0.e, 23u)], false), global0.c.d.x), vec3<bool>(global0.c.c.x, true, false), all(vec4<bool>(true, global1[_wgslsmith_index_u32(6026u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], true))), global0.a.d), ~(vec2<u32>(global0.e, 9960u) & ~vec2<u32>(global0.a.b.x, u_input.b)), global0.c, ~2496u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = Struct_3(func_1(vec2<bool>(!all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], false, global0.a.d.x, true)), global0.c.c.x && false), 18021i, global0.c.a.x, _wgslsmith_f_op_f32(sign(-321f))), global0.b, global0.b.c, 1u, 0u);
    let var_1 = global0.b;
    let var_2 = var_1.a.d.zyw;
    let var_3 = func_1(vec2<bool>(any(var_1.c.d), global1[_wgslsmith_index_u32(~global0.e & global0.e, 23u)] & any(func_3(u_input.b).zz)), -max(-(u_input.a.x >> (15783u % 32u)), _wgslsmith_sub_i32(4221i, -u_input.a.x)), var_1.c.a.x, _wgslsmith_f_op_f32(max(-761f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x)), _wgslsmith_div_f32(var_1.c.a.x, 249f))))).b.xx;
    let var_4 = var_1.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(max(global0.c.b.xy, vec2<u32>(var_1.d, 1u)), vec2<u32>(4294967295u, 4294967295u)) & ~1u, vec2<i32>(firstLeadingBit(u_input.a.x), -_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(var_0, 15u)], vec3<i32>(0i, u_input.a.x, u_input.a.x)) & _wgslsmith_mod_i32(min(u_input.a.x, u_input.a.x), u_input.a.x)), vec4<f32>(526f, _wgslsmith_div_f32(520f, _wgslsmith_f_op_f32(global0.a.a.x * _wgslsmith_f_op_f32(round(global0.a.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1178f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f * var_1.c.a.x) + 1192f), all(!global0.b.c.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1510f * 401f) * var_1.a.a.x))), firstLeadingBit(~(~countOneBits(38459u))), firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.a.xzw, firstLeadingBit(vec3<i32>(-1i, 23730i, u_input.a.x)))));
}

