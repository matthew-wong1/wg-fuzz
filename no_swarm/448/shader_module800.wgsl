struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: Struct_1 = Struct_1(35395u, vec4<i32>(1i, 2147483647i, -23468i, 29134i), vec2<i32>(-7007i, 2147483647i), -5920i, vec2<f32>(-159f, -1121f));

var<private> global2: array<u32, 10> = array<u32, 10>(1u, 18996u, 27751u, 1u, 21201u, 4294967295u, 83150u, 41391u, 72984u, 0u);

var<private> global3: vec2<u32>;

var<private> global4: Struct_3 = Struct_3(Struct_2(false, vec4<u32>(77677u, 4294967295u, 44506u, 36470u), Struct_1(1u, vec4<i32>(33896i, -18404i, 10129i, 0i), vec2<i32>(1i, 2147483647i), 13726i, vec2<f32>(-2359f, 865f))), 21421i, Struct_2(false, vec4<u32>(4294967295u, 0u, 57330u, 1834u), Struct_1(65478u, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, -39149i), vec2<i32>(2147483647i, 43704i), 32347i, vec2<f32>(-286f, 423f))), vec4<u32>(16435u, 0u, 25651u, 0u), Struct_1(1u, vec4<i32>(-1i, -1i, 2147483647i, 9604i), vec2<i32>(41580i, 21476i), -44425i, vec2<f32>(-821f, -1155f)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    global4 = Struct_3(Struct_2(global4.c.a, min(~global4.a.b, global4.d), global4.c.c), -37090i, global4.c, ~global4.a.b, Struct_1(~u_input.d.x, -(~(-vec4<i32>(global4.c.c.c.x, global1.c.x, -1i, u_input.b.x))), global1.c, -_wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(global1.c.x, 0i))), vec2<f32>(796f, -820f)));
    global0 = array<Struct_3, 10>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.e.e.x + _wgslsmith_f_op_f32(552f + global1.e.x)))));
    global0 = array<Struct_3, 10>();
    let var_1 = -1008f;
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global4.d.x, 88199u), 10u)];
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = ~(~abs(0i)) << ((33332u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~global4.d.yz, ~vec2<u32>(0u, arg_0.e.a)), global3.x) % 32u)) % 32u);
    var var_1 = _wgslsmith_mult_u32(25059u, u_input.d.x >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, global4.c.b.x, 50008u, global1.a)), global4.c.b) % 32u));
    let var_2 = func_2();
    global3 = arg_0.d.ww;
    var var_3 = 15464i;
    return var_2.d.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(arg_0.c.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a.c.e.x + _wgslsmith_f_op_f32(max(-1520f, _wgslsmith_f_op_f32(select(arg_0.c.e.x, 354f, false))))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), func_2().a.c.e.x, _wgslsmith_f_op_f32(floor(arg_0.c.e.x)), func_2().c.c.e.x);
    var var_2 = u_input.d.x;
    var var_3 = func_2().c;
    global0 = array<Struct_3, 10>();
    return global0[_wgslsmith_index_u32(global1.a, 10u)];
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global3 = global4.a.b.yx;
    var var_0 = func_4(global4.a, _wgslsmith_clamp_u32(25243u, func_3(func_2(), func_2().c), _wgslsmith_mod_u32(~global4.d.x, func_2().d.x)));
    var var_1 = Struct_2(global4.c.a, min(~vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(u_input.d, var_0.a.b.xw), ~global2[_wgslsmith_index_u32(4294967295u, 10u)], global1.a), func_4(func_2().a, global3.x).a.b), var_0.c.c);
    let var_2 = func_4(global4.a, min(12082u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(global3.x, 142989u, 6243u) | vec3<u32>(1u, 105113u, 11457u)), _wgslsmith_div_vec3_u32(func_2().c.b.xzz, _wgslsmith_sub_vec3_u32(vec3<u32>(global4.a.b.x, u_input.d.x, 4294967295u), var_0.c.b.zyx)))));
    global1 = func_4(func_4(Struct_2(global4.c.a, _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 1u), vec4<u32>(var_0.c.c.a, 42203u, 79347u, 0u), false), func_4(var_2.a, var_1.c.a).c.b), var_1.c), ~var_0.d.x).c, select(_wgslsmith_add_u32(_wgslsmith_mult_u32(9441u, _wgslsmith_div_u32(24220u, 1u)), ~1u | max(global4.c.c.a, 65291u)), global4.e.a, false)).c.c;
    return Struct_2(any(select(vec3<bool>(var_2.c.a, var_1.a, any(vec3<bool>(var_0.c.a, global4.c.a, true))), vec3<bool>(var_1.a, false, false), vec3<bool>(true, all(vec4<bool>(var_0.c.a, global4.a.a, var_2.a.a, false)), var_2.b >= 2147483647i))), var_0.d, Struct_1(~(~func_3(Struct_3(Struct_2(var_1.a, vec4<u32>(var_2.a.c.a, 8604u, global3.x, 0u), Struct_1(global4.d.x, global4.c.c.b, vec2<i32>(472i, var_0.e.d), -1i, var_0.e.e)), -1i, Struct_2(global4.a.a, vec4<u32>(var_2.a.c.a, 1u, 52116u, 24932u), global4.a.c), vec4<u32>(63551u, global4.c.c.a, global2[_wgslsmith_index_u32(u_input.d.x, 10u)], 4294967295u), Struct_1(var_0.d.x, global4.c.c.b, global1.c, global4.c.c.d, var_1.c.e)), Struct_2(var_2.c.a, var_0.d, var_0.a.c))), global4.c.c.b, select(~var_1.c.c, -global1.c, any(vec4<bool>(global4.c.a, global4.c.a, var_2.a.a, false))), -firstLeadingBit(-var_1.c.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(306f, var_2.a.c.e.x), vec2<f32>(1056f, 597f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.e.e.x))))), global1.e.x));
    var_0 = Struct_2(select(-1i >= firstTrailingBit(global1.d), var_0.a, firstTrailingBit(25321u) >= _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.a, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.a, 14248u), var_0.b.yw, u_input.d))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(73045u, 36162u, 66275u, global2[_wgslsmith_index_u32(17464u, 10u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], 30129u, 88229u, 62344u), var_0.b))), global4.c.c);
    global3 = countOneBits(_wgslsmith_add_vec2_u32(u_input.d, select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, u_input.d.x), func_4(global4.a, 37724u).c.b.zw), firstTrailingBit(u_input.d), vec2<bool>(var_0.a, func_4(Struct_2(var_0.a, vec4<u32>(global3.x, var_0.c.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 10u)], 10u)], 0u), Struct_1(global3.x, vec4<i32>(-74673i, 1i, var_0.c.b.x, global4.a.c.b.x), u_input.b.wx, -2147483647i, vec2<f32>(var_0.c.e.x, 2748f))), global4.e.a).a.a))));
    global0 = array<Struct_3, 10>();
    var var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(var_0.c.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global1.a), -162f, _wgslsmith_mod_vec4_i32(vec4<i32>(global4.c.c.b.x, var_0.c.d, _wgslsmith_dot_vec3_i32(~global1.b.wwx, _wgslsmith_mult_vec3_i32(vec3<i32>(global4.c.c.b.x, -39885i, -29244i), u_input.b.xxw)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, -33907i), func_2().e.d, u_input.c)), min(vec4<i32>(17158i, 9970i, u_input.b.x, global4.c.c.b.x), u_input.b)), 19070i);
}

