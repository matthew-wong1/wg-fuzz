struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: Struct_2 = Struct_2(vec4<u32>(9454u, 4294967295u, 4294967295u, 2008u), true, Struct_1(vec4<f32>(1047f, 108f, 873f, 1506f), 0i));

var<private> global1: i32 = 81398i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    let var_0 = ~1u;
    global0 = Struct_2(vec4<u32>(~(~var_0), 4294967295u, ~max(4294967295u, select(arg_0.x, 0u, true)), global0.a.x), global0.b && ((true || (global0.b && global0.b)) && any(select(vec4<bool>(false, false, true, true), vec4<bool>(global0.b, false, global0.b, global0.b), global0.b))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_div_f32(global0.c.a.x, -591f), _wgslsmith_div_f32(324f, 1136f)), global0.c.a, select(!vec4<bool>(false, true, global0.b, global0.b), !vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(true, true, true, true)))), 1i));
    let var_1 = Struct_5(Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(arg_0.xww, ~global0.a.yzz), _wgslsmith_sub_u32(u_input.a, ~1u), _wgslsmith_clamp_u32(var_0 << (arg_0.x % 32u), 42374u, _wgslsmith_clamp_u32(1u, arg_0.x, 99651u))), true, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(global0.c.a, vec4<f32>(-516f, 1182f, -1363f, 828f))))), _wgslsmith_div_i32(~2147483647i, ~(-2147483647i)))), global0.c, vec4<i32>(firstTrailingBit(u_input.c), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.c.b, _wgslsmith_div_i32(-1i, global0.c.b)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(0i, 0i), vec2<bool>(global0.b, global0.b)), vec2<i32>(u_input.d.x, 0i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), -59337i), ~u_input.c, _wgslsmith_mult_i32(reverseBits(1i), u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(489f))), global0.c.a.x), _wgslsmith_mod_u32(1u, countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, 13281u), reverseBits(global0.a.x)))));
    var var_2 = _wgslsmith_mult_u32(reverseBits(arg_0.x), ~arg_0.x);
    var_2 = ~firstTrailingBit(4294967295u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a.x) - var_1.b.a.x), _wgslsmith_f_op_f32(min(-1076f, _wgslsmith_f_op_f32(1000f + 1096f))), 575f) * global0.c.a) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1274f * global0.c.a.x) + _wgslsmith_f_op_f32(-1350f * -868f)), var_1.b.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.x - 133f)))), _wgslsmith_f_op_f32(-global0.c.a.x)));
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> i32 {
    let var_0 = -280f;
    let var_1 = arg_0.b;
    global0 = Struct_2(arg_0.a.a, global0.b, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + -565f), -1488f), 2147483647i));
    var var_2 = Struct_3(-2147483647i, vec4<f32>(-208f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.a.x - arg_0.a.c.a.x), _wgslsmith_f_op_f32(-var_1.a.x)))), 850f, 888f), arg_0.a);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(u_input.a, var_2.c.a.x, u_input.a, 1u))), arg_0.b.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, arg_0.d.x, var_1.a.x, arg_0.a.c.a.x) + var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(161f, global0.c.a.x, var_1.a.x, var_0) * vec4<f32>(arg_1, arg_1, -1304f, var_2.b.x)), global0.b != false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(var_2.c.a.x, var_2.c.a.x, arg_0.a.a.x, 1u))))), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(~var_2.c.c.b, _wgslsmith_mod_i32(-2147483647i, -2793i), 0i)), max(var_2.a, var_2.c.c.b)));
    return -1i;
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(firstLeadingBit(-4627i), countOneBits(u_input.b.x), func_2(Struct_5(Struct_2(vec4<u32>(global0.a.x, global0.a.x, 44893u, global0.a.x), true, global0.c), global0.c, vec4<i32>(u_input.b.x, -1i, -8984i, -35414i), global0.c.a.xw, u_input.a), global0.c.a.x))));
    let var_1 = !vec2<bool>(true, !global0.b);
    global0 = Struct_2(vec4<u32>(u_input.a, 60646u, reverseBits(~(40483u ^ u_input.a)), 0u), var_1.x, global0.c);
    var var_2 = global0.a.zy;
    global1 = _wgslsmith_mult_i32(44704i, 1i ^ _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(var_0, u_input.b), u_input.b));
    return Struct_2(firstTrailingBit(global0.a) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(28088u, u_input.a), u_input.a | var_2.x, ~u_input.a, _wgslsmith_add_u32(global0.a.x, 1u)), ~global0.a | global0.a), true & all(select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(true, true, true), 471f < global0.c.a.x)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 2147483647i;
    let var_0 = Struct_5(func_1(), global0.c, select(max(vec4<i32>(-2147483647i, -u_input.b.x, _wgslsmith_clamp_i32(1i, -1i, 74936i), -24031i), (vec4<i32>(-21059i, -24807i, 13472i, 16167i) << (vec4<u32>(0u, global0.a.x, 4294967295u, 119586u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 26271i, global0.c.b, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, 50597i, -1i))), ~(-(~vec4<i32>(global0.c.b, 17089i, 6634i, 2147483647i))), !all(select(vec3<bool>(global0.b, true, false), vec3<bool>(false, false, global0.b), vec3<bool>(false, true, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.x + global0.c.a.x) + _wgslsmith_f_op_f32(-global0.c.a.x)) * global0.c.a.x), -748f), 12680u & global0.a.x);
    var var_1 = var_0;
    global0 = var_0.a;
    let var_2 = select(-385f >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.c.a.x)))), -890f)), true, var_1.a.b);
    global1 = reverseBits(u_input.c) ^ (_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, -27619i), ~var_1.c.x >> (abs(var_0.a.a.x) % 32u), -1i) ^ var_0.c.x);
    global0 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-46652i);
}

