struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(8079u, 31204u, 117264u), -8074i, true, i32(-2147483648), true), Struct_1(vec3<u32>(42358u, 53247u, 0u), 28351i, false, -40565i, false), Struct_1(vec3<u32>(50287u, 1u, 1073u), 2147483647i, false, -324i, true), Struct_1(vec3<u32>(32574u, 42905u, 43072u), 12092i, true, 2147483647i, true), Struct_1(vec3<u32>(76315u, 15852u, 16692u), -32119i, true, 0i, true), Struct_1(vec3<u32>(1u, 1u, 67246u), 1i, true, 15655i, true), Struct_1(vec3<u32>(30849u, 26443u, 28805u), 1i, true, -8223i, false), Struct_1(vec3<u32>(0u, 1u, 8343u), 22277i, false, 43427i, false), Struct_1(vec3<u32>(990u, 4294967295u, 6470u), -995i, true, -63447i, false), Struct_1(vec3<u32>(0u, 76641u, 36982u), i32(-2147483648), false, 27338i, false), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 2147483647i, false, -1i, false), Struct_1(vec3<u32>(1u, 4294967295u, 1u), 8738i, false, 37008i, false), Struct_1(vec3<u32>(13019u, 1u, 0u), -6168i, true, 1i, false), Struct_1(vec3<u32>(0u, 9346u, 4294967295u), 2147483647i, false, 1i, true), Struct_1(vec3<u32>(1u, 12860u, 1u), -2349i, true, 56082i, true));

var<private> global3: vec3<f32> = vec3<f32>(618f, 1658f, -1431f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - vec3<f32>(-565f, 1574f, global3.x)))))));
    global1 = select(!vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -224f) >= _wgslsmith_div_f32(global3.x, 818f), global1.x), !(!(!select(vec2<bool>(global1.x, false), vec2<bool>(true, arg_2), false))), !(!(!all(vec4<bool>(global0.b, true, false, arg_0)))));
    global0 = Struct_3(~u_input.d.x, !(!all(select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, arg_0, false, true)))), vec3<i32>(arg_1.x, i32(-1i) * -_wgslsmith_add_i32(9334i, global0.c.x), min(2147483647i, reverseBits(reverseBits(global0.c.x)))));
    global0 = Struct_3(-countOneBits(u_input.d.x) & u_input.b.x, true, arg_1);
    let var_0 = arg_1.x;
    return u_input.c.x;
}

fn func_2() -> i32 {
    global1 = vec2<bool>(false, global1.x);
    global2 = array<Struct_1, 15>();
    let var_0 = Struct_3(abs(global0.c.x), !(~global0.c.x >= _wgslsmith_div_i32(abs(u_input.b.x), -2147483647i)), _wgslsmith_div_vec3_i32(select(global0.c, vec3<i32>(2147483647i, u_input.d.x, -545i), vec3<bool>(false, true, global0.b)) & vec3<i32>(global0.a, global0.a, u_input.d.x), global0.c) & -u_input.b);
    var var_1 = Struct_2(vec2<u32>(21812u, min(func_3(true, u_input.b, true), _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(1u, 60686u, u_input.e.x)), 22912u))), Struct_1(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.e.x, 17855u), u_input.c)), 37068i, true, global0.c.x, false), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(floor(-2535f))));
    var_1 = Struct_2(_wgslsmith_clamp_vec2_u32(var_1.b.a.xx, vec2<u32>(var_1.b.a.x, 1u), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, 19522u), var_1.a))), var_1.b, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2268f * global3.x))), _wgslsmith_f_op_f32(exp2(var_1.c))))));
    return i32(-1i) * -1i;
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_2(u_input.a, Struct_1(vec3<u32>(79614u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, 16760u)), vec4<u32>(u_input.e.x, u_input.a.x, u_input.e.x, 103305u)), 1u), 60010i, global1.x, func_2(), global0.b), 1168f);
    global0 = Struct_3(var_0.b.d, true, vec3<i32>(1i, 1i, global0.c.x ^ 0i) | _wgslsmith_mod_vec3_i32(-global0.c, -(~vec3<i32>(var_0.b.d, u_input.b.x, -3489i))));
    var var_1 = 0u;
    var var_2 = var_0;
    global1 = !(!vec2<bool>(!var_0.b.c, true));
    return !vec3<bool>(false, !var_0.b.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = vec4<u32>(u_input.a.x, u_input.c.x, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(37076u, 3324u)), 4294967295u) | ~u_input.a.x, ~(~((u_input.c.x & 4294967295u) << (u_input.c.x % 32u))));
    var var_2 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-526f, _wgslsmith_div_f32(global3.x, global3.x))) * -651f)), 445f);
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~(~var_1), ~(~var_1)), ~max(max(var_1.x, 36881u), ~u_input.a.x), reverseBits(u_input.c.x)), -1i, false, 10810i, all(select(func_1(), select(vec3<bool>(global0.b, global1.x, global1.x), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, true, false), vec3<bool>(global0.b, global0.b, false)), global0.b || true), global1.x)));
    global2 = array<Struct_1, 15>();
    var var_4 = 1000f;
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.x, _wgslsmith_add_i32(0i, ~u_input.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.x)))));
}

