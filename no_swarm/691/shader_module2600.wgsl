struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(0i, -11417i, -72971i, i32(-2147483648));

var<private> global1: array<f32, 13>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 5866i, global0[_wgslsmith_index_u32(458u, 4u)], 19579i);
    global0 = array<i32, 4>();
    let var_1 = ~vec4<u32>(~u_input.a, abs(1u), arg_0.a >> (_wgslsmith_mult_u32(~u_input.c, firstTrailingBit(2909u)) % 32u), ~select(_wgslsmith_sub_u32(arg_0.a, arg_0.a), ~58771u, true));
    let var_2 = Struct_3(~u_input.a, all(!(!select(vec2<bool>(false, arg_0.b), vec2<bool>(true, arg_0.b), arg_0.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(arg_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.c, arg_0.c, vec4<bool>(true, arg_0.b, false, arg_0.b))) + _wgslsmith_f_op_vec4_f32(sign(arg_0.c)))))));
    var var_3 = Struct_2(var_2.b, Struct_1(any(vec3<bool>(true, arg_0.b, any(vec3<bool>(arg_0.b, true, false)))), var_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(364f + 1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f))))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> vec3<bool> {
    global0 = array<i32, 4>();
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_f_op_f32(-517f - 136f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 795f))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), Struct_2(true, Struct_1(true, vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, 13425i, 4836i))), abs(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -37853i, u_input.d, global0[_wgslsmith_index_u32(arg_2, 4u)]), vec4<i32>(-23333i, global0[_wgslsmith_index_u32(arg_2, 4u)], global0[_wgslsmith_index_u32(20845u, 4u)], -38536i)), vec4<i32>(arg_0, arg_0, arg_0, -56408i))) | vec4<i32>(u_input.b, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 41680i, 55096i), vec4<i32>(arg_0, -2147483647i, u_input.b, -15290i))), max(-1i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -790f, arg_1, global1[_wgslsmith_index_u32(6189u, 13u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], -889f, -427f) + vec4<f32>(global1[_wgslsmith_index_u32(25467u, 13u)], 130f, 1319f, -1128f))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2, 13u)]), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_f_op_f32(-1266f - arg_1)), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1849f, -1000f, arg_1, 1507f) - vec4<f32>(-1055f, -406f, global1[_wgslsmith_index_u32(u_input.c, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]))))));
    let var_1 = ~(reverseBits(~max(vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.a, 4156u))) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 21924u), countOneBits(vec2<u32>(55268u, 0u))));
    var var_2 = var_0.b.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -740f) + var_0.a) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-var_0.a)))));
    return vec3<bool>((((18215i | var_2.b.x) | reverseBits(var_0.b.b.b.x)) ^ max(-6524i, _wgslsmith_clamp_i32(0i, 0i, -19848i))) > arg_0, false, var_2.a);
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_3(~u_input.a, true, vec4<f32>(_wgslsmith_f_op_f32(-1335f * global1[_wgslsmith_index_u32(27245u, 13u)]), global1[_wgslsmith_index_u32(u_input.a & ~firstTrailingBit(2170u), 13u)], _wgslsmith_f_op_f32(-358f - 518f), -918f));
    global0 = array<i32, 4>();
    var var_1 = 1u;
    let var_2 = ~arg_0.yw;
    let var_3 = vec3<bool>(var_0.b, any(!func_4(~global0[_wgslsmith_index_u32(var_2.x, 4u)], _wgslsmith_f_op_f32(func_3(Struct_3(85486u, false, var_0.c))), 907u)), true);
    return _wgslsmith_f_op_f32(func_3(Struct_3(var_2.x, u_input.b <= (0i >> (_wgslsmith_mod_u32(13626u, var_0.a) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) * -3598f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_2.x, 13u)], -721f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 13u)]))))));
}

fn func_1() -> Struct_4 {
    let var_0 = 2320u;
    let var_1 = -1000f;
    global0 = array<i32, 4>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(151f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0, 13u)] + global1[_wgslsmith_index_u32(u_input.a, 13u)])))), global1[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(func_2(~countOneBits(abs(vec4<u32>(4294967295u, var_0, u_input.c, u_input.c))))), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(vec4<u32>(u_input.c, 11313u, u_input.a, u_input.c)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-236f)))))));
    var_2 = vec4<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(~(~66413u)), 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1528f))));
    return Struct_4(Struct_2(any(!func_4(u_input.b, var_2.x, var_0).xy), Struct_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), _wgslsmith_mod_vec4_i32(~vec4<i32>(1i, u_input.d, global0[_wgslsmith_index_u32(0u, 4u)], u_input.d), -vec4<i32>(2147483647i, -1i, 55863i, global0[_wgslsmith_index_u32(var_0, 4u)])))), Struct_3(u_input.a, var_2.x > _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1122f, -1000f, global1[_wgslsmith_index_u32(u_input.a, 13u)], 559f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1804f, global1[_wgslsmith_index_u32(var_0, 13u)], var_1, 581f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1885f, var_2.x, var_2.x), vec4<f32>(global1[_wgslsmith_index_u32(var_0, 13u)], global1[_wgslsmith_index_u32(var_0, 13u)], 644f, global1[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(true, true, false, true)))))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, u_input.b), vec3<i32>(global0[_wgslsmith_index_u32(var_0, 4u)], 0i, u_input.d)), global0[_wgslsmith_index_u32(1660u, 4u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a, 4u)], 0i), u_input.d));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_0 = arg_0.b.b;
    global1 = array<f32, 13>();
    return Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.c.wz - vec2<f32>(801f, 1191f)) * arg_0.b.c.wx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, 657f)) + arg_0.b.c.xy), vec2<bool>(true, !arg_0.a.a))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2013f, -521f) + arg_0.b.c.x), 1179f)), arg_0.a, vec4<i32>(-2147483647i, arg_0.a.b.b.x, ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(max(9360u, 10184u), 4u)], arg_0.c.x), u_input.b), _wgslsmith_div_vec4_f32(arg_0.b.c, arg_0.b.c));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_2(false, func_5(func_1()).b.b);
    let var_1 = min(var_0.b.b.x, global0[_wgslsmith_index_u32(u_input.a, 4u)]);
    return u_input.c < ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    global1 = array<f32, 13>();
    let var_0 = select(vec4<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true & (true && any(vec3<bool>(true, false, false))), func_6(func_5(func_1()), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-885f, 354f, global1[_wgslsmith_index_u32(u_input.c, 13u)]))))), func_5(func_1()).b.b.a), !select(vec4<bool>(1u == u_input.a, true, select(true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(global1[_wgslsmith_index_u32(u_input.a, 13u)] > global1[_wgslsmith_index_u32(0u, 13u)])), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), -1000f != func_1().b.c.x));
    let var_1 = func_1().a.b;
    global0 = array<i32, 4>();
    global1 = array<f32, 13>();
    global1 = array<f32, 13>();
    var var_2 = func_5(Struct_4(func_1().a, func_1().b, var_1.b)).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(43504u, u_input.a)), vec2<u32>(u_input.c, 1u), select(var_0.zy, var_0.zz, false))));
}

