struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<f32>(-1566f, 872f, 1430f), -5622i, 4294967295u, vec2<i32>(0i, -45826i), 1u), Struct_1(vec3<f32>(-2001f, -570f, 1473f), -13456i, 1u, vec2<i32>(39802i, -11785i), 1u), Struct_1(vec3<f32>(-1656f, -281f, 1000f), -60047i, 4294967295u, vec2<i32>(7331i, 2147483647i), 1u), Struct_1(vec3<f32>(-1444f, -589f, -596f), 29820i, 0u, vec2<i32>(-1i, 7962i), 62494u), Struct_1(vec3<f32>(793f, -352f, 810f), 1i, 1u, vec2<i32>(36319i, 2147483647i), 1u), Struct_1(vec3<f32>(-1371f, 888f, 374f), -13303i, 32129u, vec2<i32>(1i, -8029i), 33653u), Struct_1(vec3<f32>(693f, -712f, -226f), 1i, 38844u, vec2<i32>(-43222i, 0i), 4294967295u), Struct_1(vec3<f32>(-525f, 1200f, -182f), -1i, 4294967295u, vec2<i32>(90725i, -1i), 43703u), Struct_1(vec3<f32>(-235f, -347f, -828f), -20844i, 31553u, vec2<i32>(i32(-2147483648), -1i), 10834u), Struct_1(vec3<f32>(1308f, 784f, -798f), 0i, 0u, vec2<i32>(i32(-2147483648), -34459i), 12045u), Struct_1(vec3<f32>(1731f, 1000f, -135f), -36093i, 1u, vec2<i32>(2147483647i, 2147483647i), 37537u), Struct_1(vec3<f32>(-389f, 1250f, 2447f), i32(-2147483648), 20341u, vec2<i32>(i32(-2147483648), -25387i), 12528u), Struct_1(vec3<f32>(674f, -409f, -721f), 1i, 8637u, vec2<i32>(-13909i, 13258i), 0u));

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = global0.a.zy;
    global1 = array<Struct_1, 13>();
    let var_1 = arg_2.yx;
    let var_2 = global1[_wgslsmith_index_u32(1u, 13u)];
    global0 = global1[_wgslsmith_index_u32(~u_input.e.x >> (arg_1.x % 32u), 13u)];
    return select(vec4<bool>(all(select(!vec4<bool>(arg_2.x, arg_2.x, true, false), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), var_0.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a.x + var_2.a.x), 2027f), arg_2.x, !var_1.x), select(vec4<bool>(arg_2.x, all(!vec4<bool>(false, false, var_1.x, var_1.x)), select(global2.d.x < global2.b, arg_2.x, true), any(vec4<bool>(var_1.x, arg_2.x, true, var_1.x)) & (-285f < global0.a.x)), !(!vec4<bool>(arg_2.x, true, arg_2.x, false)), var_1.x & all(var_1)), !vec4<bool>(all(arg_2), !arg_2.x | all(vec2<bool>(false, arg_2.x)), all(select(vec3<bool>(false, arg_2.x, false), arg_2, true)), select(var_1.x, var_1.x, var_1.x)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    let var_0 = global0.c;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a + arg_0.a) * vec3<f32>(global0.a.x, 396f, -2433f))))), -(~(~abs(-1i))), ~(~_wgslsmith_div_u32(global0.c, u_input.e.x) & countOneBits(~global0.c)), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(22387i, arg_0.b))), global2.d.x << (4294967295u % 32u)), 1u);
    global2 = global1[_wgslsmith_index_u32(arg_0.e, 13u)];
    let var_2 = Struct_1(arg_0.a, arg_0.d.x, 4481u, ~(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.d.x, var_1.b), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -39714i), vec2<i32>(global2.d.x, 0i))) | vec2<i32>(2147483647i >> (arg_0.e % 32u), 1286i)), 39480u);
    global2 = arg_0;
    return global0.d.x;
}

fn func_2() -> i32 {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(reverseBits(0u)), ~59423u, global0.e), countOneBits(global0.e));
    var var_1 = Struct_1(global0.a, _wgslsmith_div_i32(-1i, _wgslsmith_div_i32(global2.d.x, 2147483647i)), max(global2.c, ~1u), firstLeadingBit(vec2<i32>(-2147483647i, global2.d.x)) >> (select(u_input.e.xx, (u_input.e.zy << (vec2<u32>(u_input.e.x, 4294967295u) % vec2<u32>(32u))) | ~vec2<u32>(global0.e, global0.e), true) % vec2<u32>(32u)), _wgslsmith_div_u32(~global2.e, 60814u));
    var_0 = u_input.e.x;
    let var_2 = global1[_wgslsmith_index_u32((var_1.c ^ _wgslsmith_add_u32(~u_input.e.x, global2.e)) << ((30574u | global2.c) % 32u), 13u)];
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(func_3(global1[_wgslsmith_index_u32(reverseBits(~1u), 13u)], vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.d.x, -2147483647i), -vec2<i32>(1i, u_input.b), true), vec2<i32>(var_1.d.x, var_1.b) << (u_input.e.zx % vec2<u32>(32u))), 2147483647i, _wgslsmith_add_i32(-1i, 1i & u_input.b)), u_input.a);
    return ~abs(var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !(!(1u <= global0.c)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a.x)) - _wgslsmith_f_op_f32(min(global2.a.x, 347f))) >= global0.a.x), select(vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false)), all(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), false), !func_1(vec2<i32>(u_input.c.x, u_input.b), u_input.e.zx, vec3<bool>(true, false, false)), all(vec3<bool>(false, true, true))), vec4<bool>(u_input.c.x < 2147483647i, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), global0.a.x == global2.a.x)), !(1f > _wgslsmith_f_op_f32(global2.a.x * global2.a.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var var_1 = vec3<i32>(func_2(), u_input.a.x, -_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(53241i, -1i, global0.b), -(global0.d.x >> (19891u % 32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.b, -34608i), global0.b)));
    var var_2 = !var_0.xzx;
    let var_3 = abs(vec4<u32>(global2.e, countOneBits(abs(global2.e)), countOneBits(global0.e & 4294967295u), u_input.e.x) | vec4<u32>(~1u & (0u ^ global2.e), 1u, _wgslsmith_sub_u32(4294967295u, global0.e), _wgslsmith_mult_u32(global2.c, ~global2.c)));
    var var_4 = false;
    var var_5 = _wgslsmith_mult_i32(firstLeadingBit(26323i), _wgslsmith_dot_vec4_i32(-vec4<i32>(global0.d.x, u_input.c.x, global0.b, 0i), firstTrailingBit(vec4<i32>(37570i, global0.d.x, 5657i, -15054i))) & _wgslsmith_dot_vec4_i32(vec4<i32>(-13164i, -57280i, -11148i, 1i) ^ (u_input.c << (vec4<u32>(global2.e, 9090u, u_input.e.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(~0i, 84963i, _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(70322i, global0.b)), min(0i, u_input.a.x))));
    var var_6 = ~firstTrailingBit(5975u) & var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b & 26293i);
}

