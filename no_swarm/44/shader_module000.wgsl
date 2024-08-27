struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(43463u, 1u), vec2<u32>(1u, 10166u), vec2<u32>(0u, 77551u), vec2<u32>(32985u, 6547u), vec2<u32>(4294967295u, 116452u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 23259u), vec2<u32>(0u, 39923u), vec2<u32>(52604u, 2385u), vec2<u32>(1u, 11029u), vec2<u32>(1u, 28319u), vec2<u32>(2572u, 0u), vec2<u32>(92188u, 4294967295u), vec2<u32>(0u, 63552u));

var<private> global2: array<Struct_1, 6>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-1667f, -141f, -406f), vec3<u32>(32665u, 36836u, 88806u));

var<private> global4: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec4<i32> {
    global1 = array<vec2<u32>, 15>();
    var var_0 = select(vec3<bool>(any(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), arg_1)), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(arg_1, true, true)), any(vec3<bool>(true, false, arg_1)), false), true), select(select(vec3<bool>(arg_1, arg_1, false), !vec3<bool>(arg_1, arg_1, true), true), !vec3<bool>(true, false, arg_1), !vec3<bool>(false, arg_1, false)), true), false);
    global1 = array<vec2<u32>, 15>();
    global0 = array<vec4<i32>, 6>();
    global2 = array<Struct_1, 6>();
    return reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -21018i, abs(2147483647i), firstTrailingBit(_wgslsmith_clamp_i32(0i, 58816i, 1i))), -u_input.c));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.a.a.x - _wgslsmith_div_f32(1441f, -1549f)), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-global3.a.x)), arg_1.b.a.a.x), -1379f), ~vec3<u32>(global3.b.x, abs(global3.b.x), 28952u));
    var var_1 = var_0;
    var var_2 = arg_1.b;
    let var_3 = Struct_3(firstTrailingBit(select(_wgslsmith_sub_vec4_i32(vec4<i32>(3782i, arg_0, arg_0, 5919i), func_3(vec3<u32>(var_1.b.x, var_2.a.b.x, var_0.b.x), true)), vec4<i32>(2147483647i, 18291i, arg_1.a.x, _wgslsmith_mult_i32(arg_0, -2147483647i)), any(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(1365f, var_2.a.a.x)), _wgslsmith_f_op_f32(ceil(-241f)), 1000f), ~min(vec3<u32>(4294967295u, var_0.b.x, 45673u), var_0.b))), firstTrailingBit(29516i));
    let var_4 = _wgslsmith_div_f32(-187f, -279f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.a.a)) * global3.a))), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, arg_1.b.a.b.x, ~1u), _wgslsmith_div_vec3_u32(~vec3<u32>(55047u, 72706u, var_1.b.x), firstLeadingBit(vec3<u32>(u_input.a.x, global3.b.x, var_2.a.b.x))))));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec4<bool> {
    global3 = func_2(-countOneBits(20959i), Struct_3(u_input.c, Struct_2(global2[_wgslsmith_index_u32(~arg_1 << (~1u % 32u), 6u)]), 0i));
    let var_0 = 226f;
    global4 = arg_0;
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(arg_1, 6u)], Struct_2(global2[_wgslsmith_index_u32(49436u, 6u)]), u_input.c.x);
    let var_2 = !arg_0;
    return !vec4<bool>(!any(select(vec3<bool>(true, false, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, true, false))), false, all(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(arg_0, var_2, arg_0), arg_0)) || false, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_3(vec4<i32>(-_wgslsmith_sub_i32(-2147483647i, u_input.c.x) & -u_input.c.x, 0i, _wgslsmith_clamp_i32(1i, 7143i, ~u_input.b), -2147483647i), Struct_2(func_2(u_input.b, Struct_3(u_input.c, Struct_2(Struct_1(global3.a, global3.b)), 1i))), firstLeadingBit(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -11088i, -33160i), _wgslsmith_mod_vec3_i32(u_input.c.zyy, u_input.c.xxw)), u_input.b)));
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(u_input.c.wz, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), -vec2<i32>(var_0.a.x, var_0.c)), -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_0.a.x), vec2<i32>(var_0.a.x, u_input.c.x)));
    global2 = array<Struct_1, 6>();
    let var_2 = var_0;
    let var_3 = var_2;
    return vec3<i32>(~(abs(_wgslsmith_mult_i32(u_input.b, -55807i)) & var_3.a.x), 13561i, firstTrailingBit(var_3.c));
}

fn func_5(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    global3 = func_2(-64216i, Struct_3(vec4<i32>(_wgslsmith_div_i32(max(arg_1.x, u_input.c.x), reverseBits(27510i)), abs(_wgslsmith_clamp_i32(-49943i, u_input.b, u_input.c.x)), u_input.b, 0i), Struct_2(func_2(_wgslsmith_sub_i32(-2147483647i, arg_1.x), Struct_3(vec4<i32>(0i, -1i, arg_1.x, u_input.b), Struct_2(Struct_1(vec3<f32>(global3.a.x, global3.a.x, -1652f), global3.b)), 2147483647i))), -1i));
    let var_0 = Struct_3(vec4<i32>(u_input.b, -((i32(-1i) * -1i) >> ((0u & u_input.a.x) % 32u)), ~func_4(vec4<bool>(true, true, true, true), 1000f, any(vec2<bool>(true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(global3.b.x, arg_0, arg_0, 4294967295u), vec4<u32>(global3.b.x, 22305u, 17380u, 0u))).x, u_input.c.x), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~25558u, ~(~u_input.a.x)), 6u)]), _wgslsmith_mod_i32(u_input.b ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 10005i, arg_1.x, u_input.c.x), u_input.c), (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 1i, arg_1.x), vec3<i32>(arg_1.x, 0i, 0i)) << (_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(28995u, 15u)], vec2<u32>(global3.b.x, global3.b.x)) % 32u)) | -1i));
    var var_1 = ~(arg_0 ^ abs(33848u | var_0.b.a.b.x)) == _wgslsmith_clamp_u32(var_0.b.a.b.x | 0u, var_0.b.a.b.x, ~21558u);
    global2 = array<Struct_1, 6>();
    global4 = false;
    return func_2(_wgslsmith_sub_i32(u_input.b, countOneBits(max(func_3(global3.b, true).x, var_0.c))), Struct_3(~(-(vec4<i32>(-2147483647i, var_0.c, u_input.b, 0i) << (vec4<u32>(var_0.b.a.b.x, 4294967295u, 32572u, u_input.a.x) % vec4<u32>(32u)))), var_0.b, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(u_input.a.x, func_4(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x + -1071f), _wgslsmith_f_op_f32(f32(-1f) * -589f)), any(func_1(true, global3.b.x)), (vec4<u32>(7385u, u_input.a.x, u_input.a.x, 0u) & vec4<u32>(0u, 93174u, u_input.a.x, 0u)) << (firstLeadingBit(vec4<u32>(global3.b.x, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)))));
    let var_1 = u_input.c.x;
    global1 = array<vec2<u32>, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1882f)) * -553f), global3.a.x)));
    var var_3 = Struct_3(min(vec4<i32>(u_input.c.x, 0i, -_wgslsmith_clamp_i32(var_1, -1i, 2147483647i), ~44245i), ~_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 6u)], vec4<i32>(u_input.c.x, var_1, -51830i, 2147483647i)) >> (vec4<u32>(1u, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 26184u, 55099u), global3.b)) % vec4<u32>(32u))), Struct_2(var_0.a), ~_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(abs(-1i), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1882f + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_0.a.a.x))) - var_0.a.a.x), vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2239f, var_2.x))), _wgslsmith_f_op_f32(-func_2(-2147483647i, Struct_3(var_3.a, var_3.b, var_3.a.x)).a.x), true)), -142f, global3.a.x), abs(_wgslsmith_sub_i32(var_1, 21954i)), vec3<f32>(_wgslsmith_f_op_f32(abs(func_5(u_input.a.x ^ 25549u, u_input.c.xxy).a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(276f, -135f))), func_5(1u, -var_3.a.xxw).a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-189f))))));
}

