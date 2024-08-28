struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(1u, 15274u, 1u, 1u), vec4<u32>(0u, 73521u, 7549u, 2195u), vec4<u32>(19024u, 0u, 3267u, 1u), vec4<u32>(73373u, 48100u, 1u, 1937u), vec4<u32>(36740u, 1u, 1u, 4294967295u), vec4<u32>(26290u, 63001u, 4294967295u, 1u), vec4<u32>(0u, 65750u, 31020u, 8660u), vec4<u32>(59920u, 1u, 19061u, 1u), vec4<u32>(13393u, 4294967295u, 4294967295u, 43905u), vec4<u32>(10028u, 4294967295u, 25856u, 290u), vec4<u32>(35721u, 0u, 4294967295u, 0u), vec4<u32>(33958u, 73533u, 4294967295u, 19554u), vec4<u32>(1u, 76055u, 60672u, 1044u), vec4<u32>(2518u, 4294967295u, 20605u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, 19003u), vec4<u32>(67448u, 20019u, 7690u, 14623u), vec4<u32>(6893u, 1u, 24933u, 7394u), vec4<u32>(1u, 0u, 32631u, 12709u), vec4<u32>(0u, 25750u, 83180u, 70356u), vec4<u32>(4294967295u, 1u, 13474u, 37589u), vec4<u32>(1746u, 4294967295u, 22450u, 4294967295u), vec4<u32>(19463u, 4294967295u, 39685u, 4294967295u), vec4<u32>(52178u, 13512u, 7277u, 1u), vec4<u32>(0u, 45650u, 4294967295u, 48089u), vec4<u32>(0u, 4294967295u, 48262u, 4294967295u), vec4<u32>(34645u, 0u, 1u, 39913u), vec4<u32>(1u, 0u, 36373u, 56379u), vec4<u32>(23450u, 4733u, 1u, 1u), vec4<u32>(6409u, 35528u, 16742u, 43802u), vec4<u32>(10693u, 1u, 68237u, 19468u));

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> vec3<i32> {
    var var_0 = arg_0.x;
    let var_1 = arg_0;
    return vec3<i32>(0i, -55824i, u_input.c.x);
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<vec4<u32>, 31>();
    var var_0 = arg_0;
    let var_1 = false;
    global1 = vec3<f32>(_wgslsmith_div_f32(429f, global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) + global1.x));
    var_0 = arg_0;
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    let var_0 = Struct_1(2147483647i, vec4<bool>(false, func_3(Struct_1(arg_0.x, vec4<bool>(true, true, true, true), 1i)) && any(vec4<bool>(true, true, true, false)), false, any(vec3<bool>(func_3(Struct_1(2147483647i, vec4<bool>(true, false, true, true), -1i)), 69240u == u_input.b.x, true))), u_input.a);
    let var_1 = 48539u;
    var var_2 = Struct_1(arg_1, !(!vec4<bool>(global1.x > global1.x, !var_0.b.x, select(false, true, true), var_0.b.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), u_input.c.xy) & u_input.d.x, arg_1));
    global0 = array<vec4<u32>, 31>();
    var var_3 = var_0;
    return min(arg_0.x, countOneBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1752f;
    global0 = array<vec4<u32>, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)) - global1.x), _wgslsmith_f_op_f32(round(var_0))) + global1.zz);
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.a), func_1(u_input.b, var_0, true)) << (~(~vec3<u32>(41212u, 1u, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>((u_input.d.x << (0u % 32u)) >> (1u % 32u), u_input.c.x, _wgslsmith_sub_i32(u_input.d.x, u_input.a))), select(vec4<bool>(!any(vec4<bool>(true, false, true, false)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), vec4<bool>(false, false, false, -u_input.c.x == func_2(u_input.c.yyz, u_input.a)), vec4<bool>(true, true, true, true)), 7351i);
    global0 = array<vec4<u32>, 31>();
    var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x * global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-785f, _wgslsmith_f_op_f32(sign(749f))), vec2<f32>(_wgslsmith_f_op_f32(max(var_0, var_0)), _wgslsmith_f_op_f32(153f - var_1.x)), true)))));
    global0 = array<vec4<u32>, 31>();
    let var_3 = _wgslsmith_add_vec3_i32(countOneBits(u_input.d), _wgslsmith_add_vec3_i32(~(-select(vec3<i32>(var_2.c, -1107i, u_input.d.x), vec3<i32>(-7681i, u_input.c.x, u_input.d.x), var_2.b.zyz)), abs(vec3<i32>(-1i) * -u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.xx) & select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u), true), u_input.b.yx), var_0, var_3.x);
}

