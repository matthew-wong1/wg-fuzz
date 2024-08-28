struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: vec3<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-130f, 236f), vec2<f32>(983f, 1624f), vec2<f32>(-589f, 758f), vec2<f32>(399f, -1090f), vec2<f32>(-892f, 229f), vec2<f32>(-1367f, -1000f), vec2<f32>(-1926f, -572f), vec2<f32>(2838f, -523f), vec2<f32>(-1297f, 429f), vec2<f32>(-842f, 1435f), vec2<f32>(-1000f, -1497f), vec2<f32>(-1153f, -2976f), vec2<f32>(1127f, 818f), vec2<f32>(-376f, -651f), vec2<f32>(133f, -1970f), vec2<f32>(-1276f, 802f), vec2<f32>(-345f, 358f), vec2<f32>(-266f, -867f), vec2<f32>(-318f, -1368f));

var<private> global4: array<vec2<f32>, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = ~global2.xyy;
    global3 = array<vec2<f32>, 19>();
    global0 = array<bool, 31>();
    global3 = array<vec2<f32>, 19>();
    global3 = array<vec2<f32>, 19>();
    return Struct_1(45362u | u_input.a);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = false;
    global4 = array<vec2<f32>, 6>();
    global1 = select(vec3<bool>(false, !(!global1.x && all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)]))), true), !select(!select(vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, global0[_wgslsmith_index_u32(arg_1.a, 31u)]), false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global1.x, global1.x), _wgslsmith_div_i32(global2.x, 1i) <= _wgslsmith_sub_i32(global2.x, global2.x)), !(!global0[_wgslsmith_index_u32(~arg_1.a & firstLeadingBit(arg_1.a), 31u)]));
    let var_1 = !select(vec2<bool>(global0[_wgslsmith_index_u32(~1u, 31u)], select(global0[_wgslsmith_index_u32(u_input.a, 31u)] | global0[_wgslsmith_index_u32(u_input.a, 31u)], false, false)), !global1.zx, false);
    global2 = ~select(vec4<i32>(~global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, global2.x, 0i), vec4<i32>(global2.x, 1i, global2.x, 1i)) ^ (i32(-1i) * -2147483647i), _wgslsmith_mod_i32(1i, 1i), abs(~(-2147483647i))), ~reverseBits(select(vec4<i32>(-1i, -7661i, global2.x, global2.x), vec4<i32>(-17885i, global2.x, global2.x, -1i), global0[_wgslsmith_index_u32(41640u, 31u)])), vec4<bool>(global1.x, var_1.x, false, global0[_wgslsmith_index_u32(u_input.a, 31u)]));
    return Struct_2(~_wgslsmith_mult_vec3_u32(abs(firstTrailingBit(vec3<u32>(arg_1.a, 1u, 58094u))), vec3<u32>(abs(arg_1.a), 1u, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 388f, 566f, -138f)))))), Struct_1(u_input.a));
}

fn func_1() -> Struct_3 {
    let var_0 = func_3(819f, func_2());
    global1 = select(vec3<bool>(true, false, any(vec4<bool>(!global1.x, global0[_wgslsmith_index_u32(u_input.a, 31u)] & false, select(global0[_wgslsmith_index_u32(u_input.a, 31u)], true, false), any(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 31u)]))))), vec3<bool>(global1.x, true, false), !(!vec3<bool>(-1000f < var_0.b.x, global1.x, !global0[_wgslsmith_index_u32(var_0.c.a, 31u)])));
    global2 = countOneBits(~vec4<i32>(_wgslsmith_mult_i32(-2147483647i, global2.x) ^ global2.x, _wgslsmith_mod_i32(21923i, ~global2.x), -27025i, -31402i));
    var var_1 = var_0;
    global0 = array<bool, 31>();
    return Struct_3(~1i, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(72444u, countOneBits(var_1.c.a)), var_0.c.a, 2925u), u_input.a), all(vec3<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(1819u, 31u)], false, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, true))), any(vec2<bool>(true, global0[_wgslsmith_index_u32(25484u, 31u)])), global1.x)), u_input.a, Struct_1(_wgslsmith_mod_u32(~var_1.a.x, 53941u) ^ ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(926f, _wgslsmith_f_op_f32(-824f - -489f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(100f, 999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f - -254f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))))));
    let var_1 = Struct_1(firstTrailingBit(39044u));
    var var_2 = func_1();
    var var_3 = func_1().e;
    var var_4 = _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(var_1.a >> (1u % 32u), 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(0u, var_1.a), var_2.e.a << (21599u % 32u), func_2().a), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_3.a, var_3.a), vec3<u32>(u_input.a, var_3.a, 4294967295u)), vec3<u32>(u_input.a, 0u, 57220u))), u_input.a, var_1.a), global2.x, 266f, func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_4.x))), func_3(-1387f, var_1).c).b.x);
}

