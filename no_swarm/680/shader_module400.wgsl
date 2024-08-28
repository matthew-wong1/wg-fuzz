struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: array<vec4<f32>, 18>;

var<private> global3: array<i32, 25>;

var<private> global4: u32 = 17663u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0, arg_0) + vec3<f32>(629f, 411f, -350f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(335f - arg_0), _wgslsmith_div_f32(-1209f, arg_0), _wgslsmith_f_op_f32(-arg_0)))));
    global4 = ~reverseBits(abs(~100188u));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-1i, firstLeadingBit(global3[_wgslsmith_index_u32(~(~50119u), 25u)])), u_input.c, (_wgslsmith_dot_vec4_i32(vec4<i32>(36305i, global3[_wgslsmith_index_u32(u_input.b, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<i32>(16211i, u_input.c, u_input.c, -1i) & vec4<i32>(u_input.c, -665i, 0i, -2147483647i)) | (global3[_wgslsmith_index_u32(u_input.a, 25u)] ^ 33609i)) & ~u_input.c);
    var var_3 = Struct_3(global1.wx, Struct_2(var_2), select(vec4<u32>(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 18u)] >> (18439u % 32u)), ~1u, u_input.b, 0u), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(126241u, 18u)], u_input.b, u_input.b, 4803u), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(13929u, 18u)], global0[_wgslsmith_index_u32(75737u, 18u)], u_input.a, 14656u), vec4<u32>(1u, 0u, 47394u, 1u)) ^ (vec4<u32>(u_input.a, 51242u, u_input.a, u_input.b) | vec4<u32>(11428u, u_input.b, 4294967295u, u_input.b))), !any(!vec4<bool>(global1.x, global1.x, global1.x, true))), -(~(vec4<i32>(1i, 2798i, 55380i, u_input.c) << ((vec4<u32>(9778u, 4294967295u, u_input.a, 16024u) & vec4<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 24802u, 22570u, global0[_wgslsmith_index_u32(9601u, 18u)])) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1029f));
    return reverseBits(var_3.c);
}

fn func_2(arg_0: Struct_2) -> bool {
    global3 = array<i32, 25>();
    global1 = !(!vec4<bool>(!global1.x, (arg_0.a.x | global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], 25u)]) > firstTrailingBit(global3[_wgslsmith_index_u32(1u, 25u)]), true, global1.x));
    let var_0 = Struct_3(select(global1.ww, global1.xz, select(vec2<bool>(true, global1.x), vec2<bool>(all(vec4<bool>(false, false, global1.x, true)), global1.x), vec2<bool>(global1.x, global1.x == global1.x))), arg_0, vec4<u32>(0u | _wgslsmith_clamp_u32(1u, 1u, reverseBits(4294967295u)), ~(74308u | global0[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(3780u, 9718u), vec2<u32>(u_input.b, 78325u)), vec2<u32>(u_input.b, 2735u)), vec2<u32>(4294967295u, 63241u)), global0[_wgslsmith_index_u32(countOneBits(0u), 18u)]), vec4<i32>(-16834i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.a.x, -2147483647i), -87385i), -_wgslsmith_clamp_i32(26130i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 25u)], 0i), -1i) >> (func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(836f - 468f))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1f)))));
    var var_1 = _wgslsmith_f_op_f32(min(1749f, _wgslsmith_div_f32(-1000f, var_0.e)));
    let var_2 = true;
    return global1.x;
}

fn func_1() -> Struct_2 {
    let var_0 = select(global1.zww, !select(global1.zxw, vec3<bool>(global1.x || true, all(global1.zx), true), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(24310u, 25u)], u_input.c) >= abs(global3[_wgslsmith_index_u32(u_input.b, 25u)])), select(vec3<bool>(false, select(true, global1.x, func_2(Struct_2(vec3<i32>(u_input.c, -48918i, -61959i)))), any(global1.xxw) | select(global1.x, true, global1.x)), select(!vec3<bool>(false, global1.x, true), vec3<bool>(-49240i < global3[_wgslsmith_index_u32(u_input.b, 25u)], true, true), true), global1.x));
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(~firstLeadingBit(vec3<u32>(29627u, 0u, 0u)) | firstLeadingBit(~vec3<u32>(0u, u_input.b, 1u))), reverseBits(vec3<u32>(func_3(_wgslsmith_f_op_f32(select(1000f, 119f, var_0.x))).x, 0u, global0[_wgslsmith_index_u32(~35827u, 18u)])));
    global1 = select(select(select(!select(vec4<bool>(true, global1.x, var_0.x, global1.x), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x)), vec4<bool>(select(var_0.x, true, var_0.x), !global1.x, var_0.x, true), vec4<bool>(false, var_0.x, true, !var_0.x)), !select(vec4<bool>(var_0.x, false, false, false), select(vec4<bool>(var_0.x, global1.x, true, true), vec4<bool>(var_0.x, global1.x, false, var_0.x), vec4<bool>(global1.x, false, var_0.x, var_0.x)), global1.x == var_0.x), var_0.x), vec4<bool>(true, !var_0.x, !(-550f != _wgslsmith_f_op_f32(step(-279f, 1376f))), global1.x), var_0.x);
    global3 = array<i32, 25>();
    let var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 77875u, 21987u, 33692u), firstLeadingBit(vec4<u32>(u_input.a, var_1.x, 4294967295u, global0[_wgslsmith_index_u32(var_1.x, 18u)]))), reverseBits(~vec4<u32>(6477u, u_input.b, var_1.x, u_input.a))), min(firstLeadingBit(~vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), (vec4<u32>(1998u, 4294967295u, var_1.x, 24763u) ^ vec4<u32>(66486u, global0[_wgslsmith_index_u32(0u, 18u)], u_input.a, 1u)) & abs(vec4<u32>(global0[_wgslsmith_index_u32(47951u, 18u)], global0[_wgslsmith_index_u32(u_input.b, 18u)], 1u, 1u))) & vec4<u32>(64715u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.zy, var_1.zz), 25870u), ~_wgslsmith_mod_u32(75570u, var_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 108312u, global0[_wgslsmith_index_u32(0u, 18u)], 15571u), ~vec4<u32>(42105u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(46432u, 18u)]))));
    return Struct_2(~(~(~vec3<i32>(global3[_wgslsmith_index_u32(var_2.x, 25u)], -38947i, global3[_wgslsmith_index_u32(var_1.x, 25u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<u32, 18>();
    var var_1 = select(vec4<bool>(all(vec4<bool>(select(global1.x, global1.x, global1.x), all(vec4<bool>(false, global1.x, false, global1.x)), func_2(Struct_2(var_0.a)), any(vec4<bool>(false, global1.x, true, false)))), !global1.x, true, select(true, global1.x, !global1.x)), vec4<bool>(true, all(select(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x), global1.x), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, false, true, true), false))), false, !global1.x), global1.x);
    var var_2 = firstTrailingBit(-vec4<i32>(-14987i, 22337i, -1i, var_0.a.x));
    global3 = array<i32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-821f)), 1000f, _wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(-5395i, var_0.a.x)), firstLeadingBit(min(-vec2<i32>(2147483647i, var_0.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -1i), var_2.xw)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-171f, -974f), vec2<f32>(-419f, -1000f))), vec2<f32>(-2257f, 1622f))), select(vec3<u32>(0u, _wgslsmith_sub_u32(u_input.a, 14155u), min(~global0[_wgslsmith_index_u32(u_input.a, 18u)], ~u_input.a)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -289f))).yzw, select(!vec3<bool>(true, var_1.x, true), select(select(var_1.wzz, global1.zwz, global1.zyy), var_1.zyy, select(vec3<bool>(true, global1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), global1.x)), global1.xxz)));
}

