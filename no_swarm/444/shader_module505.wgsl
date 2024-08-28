struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(529f, -1645f, -650f, -981f, 116f, -266f, 104f, 334f, 2196f, -2394f, -231f, 143f, -2095f, 1951f, 810f, -1000f, -1553f, -1181f, 842f, 1263f, -1000f, 1000f, -621f, -925f, 1516f);

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global3: array<vec3<f32>, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(~vec4<i32>(select(~31579i, countOneBits(-28505i), true), _wgslsmith_dot_vec3_i32(max(global1[_wgslsmith_index_u32(5365u, 16u)], global1[_wgslsmith_index_u32(25044u, 16u)]), -global1[_wgslsmith_index_u32(4294967295u, 16u)]), firstLeadingBit(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-21547i, -38261i))), -10191i, !all(select(vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(4294967295u, 25u)], select(true, true, false))));
    global1 = array<vec3<i32>, 16>();
    let var_1 = Struct_1(u_input.b, firstTrailingBit(vec4<u32>(15520u, 39190u, 17600u, min(0u, u_input.a.x))), var_0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1037f, 193f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 25u)], -677f)) * 1905f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1052f)), _wgslsmith_div_f32(449f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -896f))), !(!select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(var_0.c, true, false, true), vec4<bool>(true, var_0.c, true, var_0.c))))), -(vec2<i32>(var_0.b, 17638i) >> (vec2<u32>(u_input.a.x, firstTrailingBit(u_input.b)) % vec2<u32>(32u))));
    var var_2 = 1790u;
    var var_3 = ~0u ^ (~u_input.a.x ^ u_input.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-240f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(var_1.a) ^ abs(6951u), 25u)] - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1296f + 312f), _wgslsmith_f_op_f32(f32(-1f) * -299f))))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~4294967295u), 25u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(685f, 1376f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3364u, 25u)])) * global0[_wgslsmith_index_u32(var_1.a, 25u)])));
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(firstTrailingBit(reverseBits(u_input.b ^ 18945u)), 9242u, u_input.b, u_input.a.x);
    let var_1 = ~(-1293i);
    let var_2 = _wgslsmith_f_op_f32(func_3());
    let var_3 = -_wgslsmith_add_i32(var_1, ~(var_1 << (91565u % 32u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-968f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.x, 25u)], 656f)), _wgslsmith_f_op_f32(1366f * var_2))), 141f))));
    return Struct_2(max(abs(var_0.yz), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.wy) << (u_input.a % vec2<u32>(32u))) | var_0.zz);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a.x, 25u)];
    var var_1 = func_2();
    let var_2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, u_input.b, var_1.a.x), vec3<u32>(4294967295u, u_input.b, 40589u)), _wgslsmith_sub_vec3_u32(vec3<u32>(98549u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, arg_0.a.x, 4294967295u)) & (vec3<u32>(105831u, u_input.b, 1u) | vec3<u32>(37946u, 0u, u_input.a.x)), vec3<u32>(69584u, 25894u >> (var_1.a.x % 32u), ~u_input.b)), vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, 0u, arg_1.x, arg_1.x)), ~vec4<u32>(var_1.a.x, arg_1.x, arg_1.x, 77377u)), 35650u, 1u));
    global2 = array<vec3<bool>, 25>();
    global2 = array<vec3<bool>, 25>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>(u_input.b, ~u_input.b));
    let var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x, 25u)]);
    var var_2 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_1(Struct_2(var_0.a), vec2<u32>(32688u, var_0.a.x), Struct_3(vec4<i32>(-2147483647i, 0i, -1i, -8677i), 69507i, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(false, true, true))), vec2<bool>(23611u > ~u_input.a.x, func_1(func_2(), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(var_0.a.x, var_0.a.x)), Struct_3(vec4<i32>(2147483647i, 54280i, 0i, -2147483647i), -44619i, true))));
    var var_3 = ~_wgslsmith_div_vec2_u32(var_0.a, func_2().a & min(~var_0.a, vec2<u32>(u_input.a.x, u_input.b) | vec2<u32>(4294967295u, 1u)));
    let var_4 = !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~(~(~vec2<u32>(0u, 0u)))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -15259i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-21998i, -2147483647i, 2147483647i, -2147483647i), vec4<i32>(0i, 1i, 311i, 6007i), false), ~vec4<i32>(-2147483647i, 2147483647i, -1i, -49703i))), firstTrailingBit((vec3<i32>(33992i, 21462i, -2147483647i) | global1[_wgslsmith_index_u32(13297u, 16u)]) | vec3<i32>(13929i, -4941i, 18623i)), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(0i, 53397i, -17482i)), _wgslsmith_div_vec3_i32(vec3<i32>(-78644i, -7118i, 2147483647i), global1[_wgslsmith_index_u32(var_0.a.x, 16u)]) & reverseBits(global1[_wgslsmith_index_u32(var_3.x, 16u)]))), select(min(vec3<u32>(~u_input.a.x, reverseBits(1u), 1u), ~(~vec3<u32>(26093u, var_3.x, 17271u))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.a.x, 0u), _wgslsmith_div_u32(4294967295u, u_input.b)), var_0.a.x, _wgslsmith_mult_u32(4294967295u, abs(u_input.a.x))), select(var_4, !vec3<bool>(var_2.x, true, var_2.x), all(var_4.xy))), -1i);
}

