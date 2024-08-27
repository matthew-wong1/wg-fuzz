struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 2147483647i, 0i);

var<private> global1: array<Struct_1, 29>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 3>;

var<private> global4: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(789f, -259f, 1188f, -317f), vec4<f32>(-939f, 689f, -1146f, 1533f), vec4<f32>(1646f, -1666f, -1000f, 309f), vec4<f32>(605f, 1000f, 295f, -2923f), vec4<f32>(-1131f, 210f, -762f, 531f), vec4<f32>(-1002f, 120f, -684f, -1283f), vec4<f32>(345f, -500f, 429f, -1000f), vec4<f32>(851f, -1385f, -1000f, 967f), vec4<f32>(-1869f, 482f, -494f, -124f), vec4<f32>(347f, -1085f, 1927f, -1012f), vec4<f32>(901f, 1000f, -1000f, -2082f), vec4<f32>(708f, -793f, 127f, -497f), vec4<f32>(-250f, -1041f, -388f, 1779f), vec4<f32>(-1339f, 220f, 564f, 562f), vec4<f32>(1324f, -566f, 112f, -630f), vec4<f32>(-2588f, -1000f, -216f, 568f), vec4<f32>(1000f, 197f, 373f, -1130f), vec4<f32>(359f, -429f, -1000f, -1592f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    var var_0 = select(select(!(!(!vec4<bool>(arg_0.e.x, false, arg_0.e.x, false))), !(!(!vec4<bool>(arg_0.e.x, true, arg_0.e.x, arg_0.e.x))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0.e.x, false, false)))), !select(select(select(vec4<bool>(arg_0.e.x, false, arg_0.e.x, true), vec4<bool>(arg_0.e.x, false, arg_0.e.x, false), arg_0.e.x), !vec4<bool>(arg_0.e.x, arg_0.e.x, false, arg_0.e.x), !vec4<bool>(arg_0.e.x, true, true, arg_0.e.x)), select(vec4<bool>(arg_0.e.x, arg_0.e.x, arg_0.e.x, true), select(vec4<bool>(arg_0.e.x, false, true, arg_0.e.x), vec4<bool>(false, false, arg_0.e.x, arg_0.e.x), arg_0.e.x), arg_0.e.x), vec4<bool>(true, arg_0.e.x, all(vec4<bool>(false, true, arg_0.e.x, arg_0.e.x)), arg_0.e.x & false)), !(!vec4<bool>(arg_0.e.x || false, true, true, global0.x == -413i)));
    global3 = array<f32, 3>();
    global2 = global1[_wgslsmith_index_u32(arg_0.a, 29u)];
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), 37291u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 37403u, arg_0.a), firstLeadingBit(vec4<u32>(arg_0.a, 1591u, u_input.b, 73693u))), ~firstLeadingBit(35192u)), vec4<u32>(0u, 1u, 0u, min(_wgslsmith_mod_u32(44764u, u_input.b), ~arg_0.a))), Struct_2(global1[_wgslsmith_index_u32(54330u, 29u)]), arg_0.c, 7061i, !(!select(vec2<bool>(false, true), vec2<bool>(arg_0.e.x, arg_0.e.x), u_input.b < 42691u)));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_div_f32(arg_0.c.x, 1286f))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -308f), _wgslsmith_f_op_f32(trunc(448f)))), ~global2.a.x != global2.a.x, any(vec4<bool>(var_0.x, !all(vec2<bool>(var_0.x, true)), arg_0.a > 1u, arg_0.e.x)), arg_0.e.x);
    return arg_0.e;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    global4 = array<vec4<f32>, 18>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(421f, arg_1.c.x)), 1437f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1333f * arg_2.c.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3[_wgslsmith_index_u32(arg_1.a, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1143f * -200f)))), _wgslsmith_f_op_f32(-arg_2.c.x))), _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.x, arg_2.c.x) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(60452u, 3u)] - -1566f)))));
    let var_1 = arg_1.b;
    global0 = vec3<i32>(-8390i, i32(-1i) * -2147483647i, arg_1.d);
    let var_2 = !select(select(!vec4<bool>(false, arg_2.e.x, arg_2.e.x, arg_2.e.x), !(!vec4<bool>(arg_2.e.x, arg_0, arg_1.e.x, true)), select(vec4<bool>(arg_1.e.x, false, arg_1.e.x, true), !vec4<bool>(arg_1.e.x, arg_1.e.x, arg_2.e.x, arg_2.e.x), all(vec4<bool>(true, arg_1.e.x, arg_1.e.x, arg_0)))), !vec4<bool>(1135f < arg_1.c.x, false, arg_1.e.x, true), false);
    return countOneBits(~select(abs(1u), arg_1.a ^ _wgslsmith_add_u32(arg_1.a, arg_1.a), !arg_1.e.x));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(func_4(true, Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 11399u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b)) >> (~4294967295u % 32u), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1391f, 415f) * vec2<f32>(global3[_wgslsmith_index_u32(11927u, 3u)], global3[_wgslsmith_index_u32(14381u, 3u)])), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2107f, -1525f)))), countOneBits(-14734i), func_3(Struct_3(4294967295u, Struct_2(Struct_1(u_input.a)), vec2<f32>(-621f, global3[_wgslsmith_index_u32(0u, 3u)]), u_input.a.x, vec2<bool>(false, true)), 481f)), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(27087u, 35189u), vec2<u32>(1u, 53122u)) >> (_wgslsmith_mult_u32(u_input.b, 2930u) % 32u), Struct_2(Struct_1(vec2<i32>(-1i, global2.a.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 3u)], -163f))), 1i, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_2(global1[_wgslsmith_index_u32(u_input.b, 29u)]), _wgslsmith_div_vec2_f32(vec2<f32>(138f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2102f - 309f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 943f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 3u)], -1281f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(1u, 3u)]) - vec2<f32>(1138f, 2823f))))), _wgslsmith_dot_vec3_i32(~((vec3<i32>(global2.a.x, -1i, -1i) | vec3<i32>(-47244i, -39485i, -1i)) ^ reverseBits(vec3<i32>(global0.x, 2394i, -5234i))), vec3<i32>(global2.a.x, _wgslsmith_dot_vec2_i32(global2.a, ~global0.zz), global2.a.x | -2147483647i)), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_3(Struct_3(93429u, Struct_2(Struct_1(u_input.a)), vec2<f32>(-288f, 883f), global2.a.x, vec2<bool>(false, true)), global3[_wgslsmith_index_u32(54767u, 3u)]), vec2<bool>(true, any(vec4<bool>(true, false, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(-var_0.c.x), all(select(vec3<bool>(select(false, var_0.e.x, var_0.e.x), true, u_input.a.x != -2147483647i), select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.e.x, false, true), vec3<bool>(var_0.e.x, var_0.e.x, false)), !vec3<bool>(var_0.e.x, false, var_0.e.x), select(vec3<bool>(var_0.e.x, var_0.e.x, true), vec3<bool>(true, var_0.e.x, var_0.e.x), vec3<bool>(false, var_0.e.x, var_0.e.x))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, var_0.e.x), vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), vec3<bool>(false, var_0.e.x, true)), global2.a.x == -2147483647i)))));
    var var_2 = !all(var_0.e);
    var var_3 = vec4<bool>(true, true, var_0.e.x, !var_0.e.x);
    let var_4 = Struct_3(1u, var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(903f * -199f) - 1155f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(u_input.b, 3u)]), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.b, 3u)])))))), 10466i, vec2<bool>(!var_0.e.x, var_3.x));
    return _wgslsmith_dot_vec3_i32(-(vec3<i32>(firstLeadingBit(global2.a.x), 2147483647i | global2.a.x, global2.a.x >> (14589u % 32u)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(39668u, 1u, var_4.a), vec3<u32>(34432u, u_input.b, u_input.b)) % vec3<u32>(32u))), vec3<i32>(-2147483647i, global0.x, abs(-34067i)));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.e.x;
    global2 = Struct_1(_wgslsmith_clamp_vec2_i32(min(-abs(vec2<i32>(global2.a.x, global0.x)), -_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b.a.a.x, global2.a.x), arg_0.b.a.a)), select(vec2<i32>(2147483647i, global2.a.x), _wgslsmith_mod_vec2_i32(global0.yz, vec2<i32>(global0.x, -27262i)), select(!arg_0.e, vec2<bool>(true, arg_0.e.x), any(arg_0.e))), u_input.a));
    var var_1 = vec2<i32>(-(global2.a.x & func_2()), u_input.a.x);
    var var_2 = vec2<bool>(arg_0.e.x, true);
    let var_3 = (global0.zx & countOneBits(global2.a)) ^ global2.a;
    return !vec4<bool>(true, !(!(arg_0.a > arg_0.a)), arg_0.e.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(func_1(Struct_3(u_input.b, Struct_2(global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<f32>(-555f, global3[_wgslsmith_index_u32(u_input.b, 3u)]), -13906i, vec2<bool>(false, true))), vec4<bool>(true, true, true, true), false), func_1(Struct_3(4294967295u, Struct_2(global1[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(29566u, 3u)]), global2.a.x, vec2<bool>(false, false))), vec4<bool>(false, true, any(vec2<bool>(false, true)), true)), vec4<bool>(func_3(Struct_3(40370u, Struct_2(Struct_1(global0.yx)), vec2<f32>(-653f, global3[_wgslsmith_index_u32(u_input.b, 3u)]), global0.x, vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1758f)).x, ~u_input.b < reverseBits(u_input.b), true, !(global3[_wgslsmith_index_u32(u_input.b, 3u)] <= global3[_wgslsmith_index_u32(8620u, 3u)])), true);
    let var_1 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>((u_input.b >> (u_input.b % 32u)) << (56767u % 32u), ~_wgslsmith_div_u32(19489u, 1u), u_input.b)), ~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.b, 68590u), vec3<u32>(u_input.b, u_input.b, 1u)) | ~(~vec3<u32>(67830u, u_input.b, 4294967295u)));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(~var_1.yy, var_1.xz), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.b), var_1.xz), 29u)]), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1919f * global3[_wgslsmith_index_u32(u_input.b, 3u)]) + global3[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(21731u, 3u)])))), global3[_wgslsmith_index_u32(var_1.x, 3u)]), _wgslsmith_mod_i32(min(func_2(), firstLeadingBit(_wgslsmith_mult_i32(global2.a.x, global0.x))), func_2()), var_0.ww);
    let var_3 = u_input.b;
    var var_4 = global1[_wgslsmith_index_u32(var_1.x, 29u)];
    var_4 = var_2.b.a;
    global0 = vec3<i32>(firstLeadingBit(i32(-1i) * -u_input.a.x) & -abs(i32(-1i) * -14835i), -47228i, i32(-1i) * -firstLeadingBit(~(-9803i)));
    global4 = array<vec4<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i, 2147483647i), u_input.b, global3[_wgslsmith_index_u32(var_3, 3u)], _wgslsmith_dot_vec4_i32(vec4<i32>(~(var_2.b.a.a.x << (var_3 % 32u)), func_2() & 1i, 0i, _wgslsmith_add_i32(i32(-1i) * -8264i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 63924i, global0.x), vec3<i32>(-1i, var_4.a.x, -1i)))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global2.a.x, global2.a.x, global0.x), vec4<i32>(u_input.a.x, global0.x, -2147483647i, var_2.b.a.a.x)))));
}

