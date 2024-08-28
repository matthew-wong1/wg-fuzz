struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_3 = Struct_3(Struct_1(77370u, vec2<i32>(0i, 1i), 1u), 1u, Struct_2(-104f));

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u, vec2<i32>(-48018i, 2147483647i), 4294967295u), Struct_1(1u, vec2<i32>(36109i, 13293i), 0u), Struct_1(3546u, vec2<i32>(-4520i, i32(-2147483648)), 1u), Struct_1(0u, vec2<i32>(i32(-2147483648), -1i), 0u), Struct_1(0u, vec2<i32>(-3446i, -1i), 4294967295u), Struct_1(28249u, vec2<i32>(0i, 122996i), 4294967295u), Struct_1(0u, vec2<i32>(-1i, 29939i), 1u), Struct_1(1u, vec2<i32>(0i, i32(-2147483648)), 28551u), Struct_1(42869u, vec2<i32>(-1875i, 0i), 406u), Struct_1(0u, vec2<i32>(-1i, -1i), 1u), Struct_1(7345u, vec2<i32>(40476i, i32(-2147483648)), 0u), Struct_1(1u, vec2<i32>(-952i, 0i), 0u), Struct_1(21813u, vec2<i32>(2361i, 26494i), 0u), Struct_1(22191u, vec2<i32>(-33478i, -11672i), 18148u), Struct_1(43529u, vec2<i32>(69731i, -9593i), 0u), Struct_1(7672u, vec2<i32>(i32(-2147483648), -12696i), 73606u), Struct_1(0u, vec2<i32>(44920i, -17679i), 4294967295u), Struct_1(4294967295u, vec2<i32>(1i, 0i), 52291u), Struct_1(1u, vec2<i32>(88722i, 0i), 36564u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -592f), global0.c.a, true))))), global0.c.a, _wgslsmith_f_op_f32(-global0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c.a)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(706f, 637f, global0.c.a, 1001f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a, global0.c.a, global0.c.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 2745f, global0.c.a, global0.c.a), vec4<f32>(var_0.x, var_0.x, var_0.x, global0.c.a)))))))))));
    let var_2 = 4294967295u <= global0.a.a;
    var var_3 = any(select(select(select(vec4<bool>(false, var_2, true, true), select(global1[_wgslsmith_index_u32(arg_1, 5u)], global1[_wgslsmith_index_u32(20549u, 5u)], vec4<bool>(var_2, false, true, var_2)), true), !(!global1[_wgslsmith_index_u32(4294967295u, 5u)]), select(vec4<bool>(var_2, var_2, var_2, false), global1[_wgslsmith_index_u32(reverseBits(arg_1), 5u)], true)), select(global1[_wgslsmith_index_u32(44293u, 5u)], global1[_wgslsmith_index_u32(abs(firstLeadingBit(u_input.a)), 5u)], true), global1[_wgslsmith_index_u32(~0u, 5u)]));
    global1 = array<vec4<bool>, 5>();
    return global0.a.b.x;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    global0 = Struct_3(global0.a, 4294967295u, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a))));
    global1 = array<vec4<bool>, 5>();
    var var_0 = min(_wgslsmith_div_i32(arg_0, firstTrailingBit(global0.a.b.x) | ~func_3(vec2<u32>(u_input.a, u_input.a), global0.a.a)), i32(-1i) * -func_3(abs(vec2<u32>(global0.a.a, 24282u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a, 4294967295u, 1u), vec3<u32>(30230u, 34785u, u_input.a))));
    let var_1 = false;
    var var_2 = false;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-159f, -408f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~vec3<u32>(~4294967295u, 4294967295u, 36734u);
    global1 = array<vec4<bool>, 5>();
    let var_1 = func_2(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.b.x, 2147483647i, global0.a.b.x, arg_3.a.b.x), vec4<i32>(global0.a.b.x, arg_3.a.b.x, arg_3.a.b.x, 19857i)), min(vec4<i32>(arg_3.a.b.x, 2147483647i, 1i, global0.a.b.x), vec4<i32>(arg_3.a.b.x, global0.a.b.x, -2147483647i, global0.a.b.x))), max(-vec4<i32>(0i, 1i, 2147483647i, -24241i), vec4<i32>(5009i, -1i, -22015i, -1i))), select(global1[_wgslsmith_index_u32(22626u, 5u)], vec4<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, arg_2.x), 5u)]), true, true, any(vec3<bool>(false, false, false)) || true), true), Struct_2(arg_3.c.a));
    let var_2 = arg_0.x;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1886f));
    return func_2(global0.a.b.x, select(global1[_wgslsmith_index_u32(arg_3.b, 5u)], vec4<bool>(true, func_2(global0.a.b.x, vec4<bool>(false, true, true, false), global0.c).a == _wgslsmith_f_op_f32(var_1.a + 1593f), true, !(arg_3.b < global0.a.a)), _wgslsmith_f_op_f32(sign(-301f)) > var_1.a), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -489f)));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(global0.a.b.x, -(~(-(~(-1i)))));
    var var_1 = global0.c;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.a.a, 30533u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, arg_0), vec2<u32>(global0.a.a, u_input.a)), ~86353u)), ~_wgslsmith_mod_u32(~u_input.a, ~4294967295u)), 19u)], ~4294967295u, Struct_2(arg_1.a));
    let var_3 = Struct_1(~(_wgslsmith_mod_u32(0u, ~var_2.a.c) | _wgslsmith_sub_u32(abs(51534u), 42295u)), _wgslsmith_add_vec2_i32(~(-vec2<i32>(global0.a.b.x, var_0.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_2.a.b.x, 41842i), countOneBits(-var_2.a.b))), u_input.a);
    var var_4 = func_2(-var_0.x, select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~var_2.a.a, ~_wgslsmith_add_u32(arg_0, var_3.a), var_2.b ^ countOneBits(global0.a.a)), 5u)], vec4<bool>(true, any(vec3<bool>(true, true, true)), false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), true), func_2(~var_2.a.b.x, global1[_wgslsmith_index_u32(select(~min(4294967295u, 15380u), 0u, !(var_2.a.b.x <= 9138i)), 5u)], arg_1));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.a, 1107f)));
}

fn func_1() -> u32 {
    var var_0 = select(vec2<bool>(!(!(global0.a.b.x <= -16243i)), true), vec2<bool>(any(vec4<bool>(true, true, true, u_input.a > global0.a.c)), false), false);
    var var_1 = _wgslsmith_f_op_f32(trunc(global0.c.a));
    var var_2 = Struct_3(Struct_1(28685u, _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(8087i, global0.a.b.x)), firstTrailingBit(vec2<i32>(global0.a.b.x, global0.a.b.x))), ~_wgslsmith_div_u32(_wgslsmith_add_u32(40207u, u_input.a), 0u)), 7554u, func_5(~global0.b, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a, 582f, -789f, global0.c.a)) + vec4<f32>(global0.c.a, -540f, global0.c.a, global0.c.a)), _wgslsmith_f_op_f32(-global0.c.a), min(min(vec2<u32>(global0.a.c, 4294967295u), vec2<u32>(u_input.a, global0.b)), vec2<u32>(41064u, 109608u)), Struct_3(Struct_1(0u, global0.a.b, 1u), u_input.a, func_2(global0.a.b.x, vec4<bool>(true, var_0.x, false, true), global0.c)))));
    global0 = Struct_3(Struct_1(6378u, vec2<i32>(2147483647i, max(_wgslsmith_sub_i32(6144i, 47600i), _wgslsmith_mult_i32(global0.a.b.x, -716i))), firstTrailingBit(54826u)), ~(~var_2.b), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(332f, 525f, global0.c.a, -504f)))), 1396f, ~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(1u, global0.b)), vec2<u32>(var_2.b, 23571u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), abs(vec2<u32>(90801u, u_input.a))), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.a.a, global0.b, global0.a.a), ~1u), 19u)], abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a, 0u, 15995u), vec3<u32>(37884u, 1u, 6234u))), var_2.c)));
    let var_3 = firstLeadingBit(2147483647i);
    return ~(~(~var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a, ~u_input.a, true) & global0.b;
    var var_1 = vec3<i32>(7208i, ~global0.a.b.x, ~(~15600i));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~_wgslsmith_add_u32(0u, 10015u)) | ~(~reverseBits(vec2<u32>(0u, global0.b))), abs(~(~vec2<u32>(global0.b, 1u)) & _wgslsmith_mult_vec2_u32(~vec2<u32>(global0.b, global0.b), vec2<u32>(15060u, 4294967295u)))), 19u)];
    var_2 = Struct_1(4294967295u, ~(-vec2<i32>(~var_2.b.x, countOneBits(0i))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 18927u), vec2<u32>(var_2.c, var_2.a))) | ~var_2.c));
    var var_3 = vec4<bool>(any(vec2<bool>(true, true)), true && (((68022i << (1u % 32u)) < global0.a.b.x) == !any(vec2<bool>(false, true))), func_1() > ~1u, any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

