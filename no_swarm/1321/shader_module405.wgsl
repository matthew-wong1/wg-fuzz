struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = any(vec3<bool>(!arg_0.a.a, arg_0.a.a | !(!arg_0.b.a), false));
    global0 = all(select(!vec2<bool>(select(false, true, arg_0.b.a), true), select(!vec2<bool>(false, arg_0.a.a), !select(vec2<bool>(true, arg_0.a.a), vec2<bool>(arg_0.b.a, true), vec2<bool>(arg_0.a.a, arg_0.b.a)), true), !vec2<bool>(arg_0.b.a, arg_0.a.b != -27790i)));
    global0 = !(arg_0.a.a == any(vec4<bool>(!arg_0.b.a, any(vec3<bool>(arg_0.b.a, arg_0.b.a, true)), select(true, arg_0.a.a, false), arg_0.a.a)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(exp2(arg_0.c.a.x)), arg_0.c.a.x));
    let var_1 = reverseBits(reverseBits(reverseBits(~vec2<i32>(u_input.a.x, u_input.a.x))));
    return !any(!select(select(vec4<bool>(arg_0.b.a, true, true, false), vec4<bool>(false, arg_0.a.a, true, arg_0.b.a), vec4<bool>(true, true, false, arg_0.a.a)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, arg_0.a.a))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    global0 = select(all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)) & func_3(Struct_3(Struct_1(false, -70715i, u_input.b), Struct_1(true, u_input.a.x, 4294967295u), Struct_2(vec2<f32>(arg_0, 321f)))), !(!all(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(-arg_0) < arg_0) || false;
    global0 = any(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    global0 = true | !(!(_wgslsmith_f_op_f32(-arg_0) == arg_0));
    let var_0 = i32(-1i) * -((firstTrailingBit(-1i) ^ u_input.a.x) << (arg_1.x % 32u));
    let var_1 = Struct_3(Struct_1(true, _wgslsmith_add_i32(var_0, u_input.d.x), u_input.b), Struct_1(any(vec2<bool>(true, false)) != true, var_0 ^ _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, u_input.d.x), 0i), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(arg_1, arg_1), ~(~vec4<u32>(11321u, arg_1.x, 4294967295u, u_input.b)))), Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(293f, arg_0) * vec2<f32>(arg_0, -649f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(685f, 310f)))))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = reverseBits(vec4<i32>(1i, arg_2.x | arg_1.b.b, reverseBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.b, arg_1.a.b), arg_2.wz), abs(0i), 2147483647i)), max(~1922i, 2139i) | _wgslsmith_add_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(9272i, -35609i, -3271i, -48305i), vec4<i32>(u_input.d.x, arg_0.x, u_input.c.x, -26600i)))));
    let var_2 = select(vec3<bool>(any(vec2<bool>(true, true)), arg_1.b.a, any(select(!vec3<bool>(arg_1.b.a, true, true), vec3<bool>(arg_1.a.a, false, arg_1.a.a), vec3<bool>(arg_1.b.a, true, arg_1.b.a)))), !vec3<bool>(true, true, arg_1.a.a & arg_1.b.a), all(select(select(vec4<bool>(true, arg_1.a.a, true, arg_1.a.a), vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.a.a, arg_1.b.a), vec4<bool>(arg_1.a.a, arg_1.b.a, true, true)), !vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, arg_1.a.a), select(vec4<bool>(arg_1.b.a, arg_1.a.a, true, arg_1.b.a), vec4<bool>(arg_1.b.a, arg_1.a.a, arg_1.a.a, true), false))) && false);
    global0 = false;
    let var_3 = var_0;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.a + _wgslsmith_f_op_vec2_f32(-arg_1.c.a)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = func_4(u_input.d, Struct_3(Struct_1(true, 1i, u_input.e.x), Struct_1(true, _wgslsmith_clamp_i32(0i, u_input.d.x, 37055i), select(select(u_input.e.x, u_input.e.x, true), _wgslsmith_add_u32(4294967295u, u_input.e.x), true)), func_2(-254f, ~countOneBits(vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, u_input.b)))), firstTrailingBit(abs(u_input.c >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 16962u, u_input.e.x, u_input.b), vec4<u32>(29240u, 1u, u_input.b, u_input.b)) % vec4<u32>(32u)))), _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(u_input.e.x, ~u_input.e.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(f32(-1f) * -1408f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), func_2(-2024f, vec4<u32>(31078u, u_input.e.x, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, u_input.b, 69597u, 15553u) % vec4<u32>(32u))).a.x, true)), 973f));
    global0 = true;
    let var_2 = Struct_3(Struct_1(any(vec2<bool>(true, false)), u_input.a.x, ~select(68466u ^ u_input.e.x, abs(59169u), true)), Struct_1(true, i32(-1i) * -2147483647i, 1u), Struct_2(_wgslsmith_f_op_vec2_f32(round(var_1.xz))));
    var var_3 = 0u;
    return any(!vec2<bool>(true, var_2.b.a)) && (var_2.a.a && var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec4<bool>(false, select(true, false, true), all(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), func_1(vec2<i32>(-1i, 0i), Struct_2(vec2<f32>(1611f, -680f))))), true));
    let var_0 = Struct_4(func_2(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(213f, -120f), -1421f)), vec4<u32>(u_input.b, 27748u, 1u, u_input.e.x) >> (vec4<u32>(u_input.b, u_input.e.x, 1u, u_input.e.x) % vec4<u32>(32u))).a.x, ~abs(vec4<u32>(0u, 0u, u_input.b, u_input.e.x))), abs(select(reverseBits(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.e.x))), ~vec3<u32>(u_input.e.x, 60725u, u_input.b), vec3<bool>(true, true, true))), Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), true)), ~1i, ~u_input.b));
    var var_1 = _wgslsmith_mult_i32(-21882i, var_0.c.b);
    var_1 = ~var_0.c.b;
    var var_2 = -153f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f), 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(var_0.b.x | 44961u, ~52354u, _wgslsmith_sub_u32(abs(var_0.c.c), ~u_input.e.x))), -284f);
}

