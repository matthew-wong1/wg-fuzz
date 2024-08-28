struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<u32>(1u, 13707u, 0u, 84954u), vec4<i32>(-1i, 2147483647i, -7958i, -1i)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 38840u), vec4<i32>(0i, 59223i, 9653i, 2147483647i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 27>();
    let var_0 = Struct_1(~reverseBits(~global1.a.a ^ global1.a.a), global1.a.b & (_wgslsmith_mod_vec4_i32(global1.b.b, vec4<i32>(global1.a.b.x, -23815i, -28901i, global1.b.b.x)) << (vec4<u32>(0u ^ global1.b.a.x, 5395u, 57941u, ~global1.a.a.x) % vec4<u32>(32u))));
    var var_1 = select(vec3<bool>(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), all(vec2<bool>(true, any(vec2<bool>(true, false)))), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, true))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true), vec3<bool>(abs(65019u) == ~global1.a.a.x, all(vec3<bool>(true, true, true)), true)), !(!(global1.b.a.x > var_0.a.x)));
    var_1 = vec3<bool>(true, any(!(!(!vec3<bool>(true, var_1.x, var_1.x)))), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.b.x, 1i, -22218i), vec3<i32>(var_0.b.x, var_0.b.x, global1.a.b.x)), 7712i) <= var_0.b.x);
    global0 = array<vec2<f32>, 27>();
    return global1.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    global1 = Struct_3(func_2(), func_2());
    var var_0 = vec4<bool>(true, true, true, true);
    global0 = array<vec2<f32>, 27>();
    let var_1 = select(var_0.wzz, var_0.wwz, var_0.x);
    var_0 = vec4<bool>((abs(-42291i) == -global1.a.b.x) & true, any(select(!select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(false, all(vec4<bool>(true, true, var_1.x, false)), true, !var_1.x), select(!vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, true, true, var_0.x), var_0.x || false))), var_0.x, false);
    return all(var_1);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(-220f, 1f), _wgslsmith_div_f32(-479f, 1334f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1783f, -995f)), _wgslsmith_f_op_f32(-881f + -379f))))), -142f);
    var var_1 = Struct_2(-244f);
    global0 = array<vec2<f32>, 27>();
    global1 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.a, arg_0.a >> (vec4<u32>(global1.a.a.x, 0u, 6840u, 1u) % vec4<u32>(32u))), vec4<u32>(global1.b.a.x, 1u, ~5233u, arg_0.a.x), firstTrailingBit(select(vec4<u32>(21674u, 11616u, 1u, 26084u), arg_0.a, arg_1))), vec4<i32>(global1.b.b.x << (arg_0.a.x % 32u), _wgslsmith_clamp_i32(-2147483647i, arg_0.b.x, -global1.a.b.x), u_input.a.x, reverseBits(u_input.c ^ arg_0.b.x))), func_2());
    var_1 = Struct_2(-140f);
    return global1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, false)))), false), select(!vec2<bool>(66028u >= arg_0.a.x, any(vec3<bool>(false, false, true))), vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true))), any(vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(1i << (firstTrailingBit(arg_1.x) % 32u), _wgslsmith_div_i32(-2147483647i, arg_3.x), -countOneBits(-1i)), ~u_input.c);
    var var_2 = Struct_3(func_2(), global1.a);
    var var_3 = var_0;
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(firstLeadingBit(4294967295u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, global1.b.a.x, 22950u), global1.b.a.zwy), ~47764u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_1.x, arg_0.a.x, arg_1.x), select(arg_0.a, var_2.b.a, vec4<bool>(false, false, true, var_3.x))), 36499u), select(_wgslsmith_clamp_vec4_u32(var_2.b.a, _wgslsmith_mult_vec4_u32(vec4<u32>(80848u, 0u, global1.b.a.x, 1u), vec4<u32>(12932u, 1u, 1u, 80618u)), ~arg_0.a), vec4<u32>(var_2.a.a.x, firstTrailingBit(arg_0.a.x), _wgslsmith_dot_vec3_u32(var_2.b.a.xzx, var_2.a.a.xxy), 0u), true)), 4294967295u);
    return vec4<bool>(var_0.x, false, !var_0.x, !(true | var_3.x));
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = func_5(func_4(func_2(), func_3(~select(arg_1, vec3<u32>(32615u, 52661u, 3915u), false), Struct_2(_wgslsmith_div_f32(arg_2, arg_2)), u_input.b.xy)), abs(arg_1.zy) << (~vec2<u32>(~arg_1.x, arg_1.x) % vec2<u32>(32u)), _wgslsmith_mult_i32(-2147483647i >> (_wgslsmith_dot_vec2_u32(global1.b.a.yw, arg_1.zy) % 32u), u_input.c), global1.b.b.yyz);
    let var_1 = !func_5(Struct_1(~global1.b.a | (global1.a.a << (global1.a.a % vec4<u32>(32u))), select(vec4<i32>(global1.a.b.x, global1.a.b.x, global1.b.b.x, global1.a.b.x), -vec4<i32>(33613i, -16662i, u_input.c, u_input.c), vec4<bool>(false, arg_0, true, false))), firstTrailingBit(vec2<u32>(47450u, global1.b.a.x)), u_input.b.x, global1.a.b.wwy).zwy;
    global0 = array<vec2<f32>, 27>();
    var var_2 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_1.x, global1.a.a.x)), select(global1.a.a.x, global1.b.a.x, false), 1u)), countOneBits(vec3<u32>(~4294967295u, (global1.a.a.x >> (7223u % 32u)) | ~global1.a.a.x, 0u)));
    var var_3 = ~(~(~vec3<u32>(~73187u, _wgslsmith_add_u32(var_2.x, 19883u), global1.a.a.x | global1.b.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 342f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-210f, 248f))), _wgslsmith_f_op_f32(func_1(true, global1.b.a.xxz, 675f)), _wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(f32(-1f) * -392f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-230f, -2423f, -201f, 850f) - vec4<f32>(-1000f, -479f, -319f, -908f)))))));
    var var_1 = vec4<u32>(global1.a.a.x, ~20908u, 96174u | ~((global1.a.a.x & 4294967295u) | ~global1.b.a.x), global1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_i32(54932i, global1.b.b.x, _wgslsmith_div_i32(24984i, u_input.a.x)) == 0i, ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(24652u, global1.a.a.x, var_1.x), var_1.xwy)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-955f + var_0.x)))), vec2<u32>(55250u, global1.a.a.x), ~(~(~(~var_1.yy))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(global1.b.a.x), ~9347u), 4294967295u), max((global1.a.a.zz & vec2<u32>(var_1.x, 10685u)) ^ vec2<u32>(4294967295u, 7206u), vec2<u32>(54881u, global1.a.a.x >> (global1.b.a.x % 32u)))));
}

