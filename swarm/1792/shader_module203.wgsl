struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1449f, Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(2147483647i, -54070i), true, 22128u, Struct_1(565f, vec2<bool>(false, false), -15208i)), vec2<f32>(-572f, -264f), vec2<f32>(722f, 1334f));

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = arg_0.b.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(global0.d));
    return min(~(~(vec4<u32>(11001u, 0u, global0.b.d, 1u) << (vec4<u32>(990u, 1u, 96450u, u_input.c) % vec4<u32>(32u)))), reverseBits(min(vec4<u32>(59542u, u_input.c, 1u, u_input.c), vec4<u32>(u_input.c, 4294967295u, global0.b.a.x, global0.b.a.x)))) ^ (vec4<u32>(~global0.b.d, 4294967295u, 4294967295u, max(35286u, _wgslsmith_mod_u32(0u, 39285u))) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.d, u_input.c, 0u, u_input.c), vec4<u32>(global0.b.a.x, u_input.c, u_input.c, 83445u)), ~vec4<u32>(u_input.c, 4294967295u, 4294967295u, 17375u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    global1 = u_input.b.x;
    var var_0 = global0.b.a.yx;
    var_0 = _wgslsmith_mult_vec2_u32(countOneBits(~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, u_input.c), vec2<u32>(29338u, 51118u), vec2<u32>(u_input.c, u_input.c)))), vec2<u32>(min(~17914u << (u_input.c % 32u), 1u << (global0.b.d % 32u)), ~40626u));
    let var_1 = vec4<u32>(1u, ~0u, global0.b.d ^ ~u_input.c, ~reverseBits(8046u)) & (~select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.a.x, global0.b.a.x, 4355u, 48273u), vec4<u32>(u_input.c, 1u, 76590u, 1u)), abs(vec4<u32>(global0.b.d, var_0.x, 1u, 1u)), arg_3.a >= 292f) & ~func_3(Struct_3(vec3<i32>(2147483647i, -47516i, 8812i), Struct_1(615f, vec2<bool>(global0.b.e.b.x, true), -17833i), arg_3.a), all(arg_1), !vec3<bool>(false, false, arg_3.b.x), arg_1));
    var var_2 = any(vec4<bool>(arg_1.x, any(vec3<bool>(global0.b.e.b.x, global0.a > arg_2.x, true)), !(-922f <= _wgslsmith_f_op_f32(-arg_3.a)), all(!arg_1.yyy)));
    return true || !(arg_2.x > _wgslsmith_f_op_f32(f32(-1f) * -732f));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mult_u32(1u, global0.b.d) | 1u;
    let var_1 = select(select(select(global0.b.e.b, select(!vec2<bool>(global0.b.c, global0.b.e.b.x), select(global0.b.e.b, global0.b.e.b, true), any(global0.b.e.b)), vec2<bool>(global0.b.e.b.x, func_2(global0.b.b.x, vec4<bool>(false, global0.b.e.b.x, global0.b.e.b.x, global0.b.c), vec4<f32>(457f, 906f, global0.b.e.a, global0.b.e.a), global0.b.e))), !(!vec2<bool>(global0.b.c, true)), global0.b.e.b), global0.b.e.b, select(select(select(select(global0.b.e.b, vec2<bool>(global0.b.c, global0.b.e.b.x), global0.b.c), select(global0.b.e.b, vec2<bool>(global0.b.c, true), global0.b.c), false), vec2<bool>(!global0.b.e.b.x, global0.b.e.b.x), !(9577u < global0.b.d)), vec2<bool>(!(!global0.b.c), global0.b.c), true));
    let var_2 = global0.b.c;
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.e.a - 278f), _wgslsmith_f_op_f32(-407f * 715f), 403f, _wgslsmith_f_op_f32(-1000f + global0.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.c.x, global0.b.e.a, 962f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, global0.a, global0.c.x, 1000f))), !vec4<bool>(global0.b.c, false, true, false))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(global0.b.e.a)), global0.d.x, global0.c.x, _wgslsmith_f_op_f32(abs(764f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1085f, global0.b.e.a, -560f, global0.c.x) * vec4<f32>(-398f, 1784f, global0.d.x, global0.a)) + vec4<f32>(_wgslsmith_f_op_f32(sign(-1575f)), global0.d.x, _wgslsmith_f_op_f32(ceil(global0.d.x)), -1501f)), !vec4<bool>(global0.b.e.b.x, var_3 >= arg_2.x, false, true))));
    return -min(-select(~var_3, 1i, any(global0.b.e.b)), ~(~(-668i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.a, -u_input.b.x, -2147483647i), vec3<i32>(max(0i, -2147483647i), global0.b.e.c, func_1(-1i, 4294967295u, vec2<i32>(-27032i, 0i))))), ~(-(u_input.b ^ (u_input.b >> (vec3<u32>(u_input.c, global0.b.d, 0u) % vec3<u32>(32u))))));
    var var_0 = min(max(select(max(vec4<i32>(u_input.a, global0.b.b.x, 29639i, 2147483647i) >> (vec4<u32>(17982u, global0.b.d, u_input.c, 6837u) % vec4<u32>(32u)), -vec4<i32>(1i, -40508i, 16778i, u_input.d)), -(~vec4<i32>(0i, u_input.a, u_input.b.x, 2386i)), !(!vec4<bool>(global0.b.e.b.x, global0.b.e.b.x, false, global0.b.c))), vec4<i32>(abs(-23374i) >> (~u_input.c % 32u), u_input.a << (1668u % 32u), global0.b.b.x, i32(-1i) * -global0.b.e.c)), abs(vec4<i32>(-(~(-6683i)), select(0i << (u_input.c % 32u), 1763i, all(vec4<bool>(global0.b.c, global0.b.e.b.x, false, global0.b.c))), -_wgslsmith_clamp_i32(global0.b.e.c, 36203i, u_input.d), 38155i)));
    var var_1 = !(!(!(!global0.b.c) && true));
    global1 = ~firstTrailingBit(var_0.x);
    var var_2 = Struct_3(u_input.b, global0.b.e, global0.d.x);
    var var_3 = vec4<u32>(4294967295u, 1u, ~u_input.c, ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(1322f, 38992u, -1511f, -9823i);
}

