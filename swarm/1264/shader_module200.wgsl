struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 152f;

var<private> global1: array<bool, 18>;

var<private> global2: array<bool, 7>;

var<private> global3: bool = true;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1() -> vec2<u32> {
    global1 = array<bool, 18>();
    let var_0 = !global4.yx;
    var var_1 = select(!select(select(!vec4<bool>(global4.x, true, false, global4.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], false, global4.x, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], var_0.x)), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(67229u, 7u)] || false, !var_0.x), select(vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(17516u, 7u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global4.x, var_0.x), true)), !vec4<bool>(any(select(global4.zx, var_0, vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], var_0.x))), u_input.a.x >= firstTrailingBit(u_input.a.x), true, all(var_0)), vec4<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(20894i, 1i, 55099i, 0i), vec4<i32>(4107i, 1i, -1i, -43853i)) > ~0i), !global1[_wgslsmith_index_u32(~u_input.a.x, 18u)], false, true));
    global3 = all(!(!var_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1243f, 884f, -131f, -1008f) * vec4<f32>(125f, 1642f, -1240f, 1000f)), vec4<f32>(1264f, 1000f, -116f, 624f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(996f, _wgslsmith_div_f32(1086f, -405f), -155f, _wgslsmith_f_op_f32(571f - 778f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1557f, -2151f, 1576f, 803f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1580f, -1000f, 931f)))))));
    return u_input.a.zx;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_1 {
    return Struct_1(countOneBits(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-10310i, 21363i, 2147483647i), vec3<i32>(-2147483647i, 1i, 2147483647i)), ~select(vec3<i32>(7326i, 40453i, -5500i), vec3<i32>(-24204i, 2147483647i, -1i), vec3<bool>(false, global4.x, global4.x)))), select(select(global4.zy, select(vec2<bool>(true, true), select(global4.xz, vec2<bool>(global4.x, global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(false, true)), vec2<bool>(true, true)), global4.zy), !(!global4.xz), select(!global4.zy, select(global4.yx, select(global4.xx, vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 18u)], global2[_wgslsmith_index_u32(arg_1.x, 7u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(39568u, 18u)])), all(vec4<bool>(true, true, global4.x, false))), !select(global4.xy, global4.xz, vec2<bool>(false, false)))), 1i, _wgslsmith_div_vec4_u32(arg_0, abs(_wgslsmith_div_vec4_u32(arg_0 << (arg_0 % vec4<u32>(32u)), arg_0))), vec2<u32>(50350u, arg_1.x));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = true;
    var var_1 = Struct_2(19679i, func_2(arg_2.d, ~(~(arg_0 ^ u_input.a.yx))).b.x);
    global1 = array<bool, 18>();
    var var_2 = _wgslsmith_f_op_f32(ceil(-711f));
    var var_3 = Struct_2(arg_2.a.x, var_0);
    return StorageBuffer(~((vec4<i32>(1i, arg_2.a.x, arg_2.c, var_3.a) ^ vec4<i32>(2147483647i, var_3.a, -27789i, -2147483647i)) ^ abs(vec4<i32>(arg_2.a.x, -31013i, 22742i, var_1.a))) ^ select(~select(vec4<i32>(var_3.a, var_1.a, var_1.a, var_3.a), vec4<i32>(0i, -1i, 2147483647i, var_1.a), global4.x), select(-vec4<i32>(-1i, 0i, -58107i, -45897i), -vec4<i32>(33852i, var_3.a, arg_2.a.x, 11666i), vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 7u)], true)), vec4<bool>(true, var_3.b, arg_2.c < var_3.a, 4294967295u >= arg_2.d.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1268f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1065f, -933f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(668f, 1404f), vec2<f32>(1255f, 1000f)))), arg_2.b)))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(u_input.a.x, arg_2.e.x, u_input.a.x, u_input.a.x), arg_2.d, vec4<bool>(false, false, var_3.b, var_1.b)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_2.d.x, arg_0.x, arg_1), vec4<u32>(28095u, u_input.a.x, arg_0.x, arg_2.e.x)) | (vec4<u32>(u_input.a.x, arg_2.d.x, 71123u, arg_0.x) >> (arg_2.d % vec4<u32>(32u)))), arg_2.d | abs(_wgslsmith_mult_vec4_u32(vec4<u32>(48197u, 1u, 0u, 1u), arg_2.d))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, 252f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-530f, -1126f), vec2<f32>(-1368f, 1393f), var_3.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1239f, 280f) * vec2<f32>(228f, -2067f))) - vec2<f32>(1f, 1f))), abs(~vec2<i32>(var_3.a, -4218i) >> ((~vec2<u32>(arg_0.x, arg_1) | ~vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(~u_input.a.x, 0u)), 1u);
    let var_1 = _wgslsmith_clamp_u32(u_input.a.x, 1u, 27985u);
    global1 = array<bool, 18>();
    var var_2 = _wgslsmith_clamp_i32(~47019i, 1i, -1i);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1929f + -1766f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(262f)))), 1052f), _wgslsmith_f_op_f32(-674f + 750f), 1489f);
    let var_4 = reverseBits(~(~(~(~u_input.a.x))));
    let x = u_input.a;
    s_output = func_3(~_wgslsmith_add_vec2_u32(min(vec2<u32>(1u, var_1), ~vec2<u32>(1u, var_1)), u_input.a.zz & ~u_input.a.zz), abs(u_input.a.x << (1u % 32u)), func_2(vec4<u32>(u_input.a.x, ~0u, 4294967295u, 46992u) & countOneBits(vec4<u32>(u_input.a.x, var_1, 36311u, 4294967295u)), func_1()));
}

