struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = arg_1;
    let var_1 = true;
    let var_2 = reverseBits(firstTrailingBit(select(0i, _wgslsmith_add_i32(~2147483647i, 1i), false)));
    global0 = Struct_1(!var_0.a, vec4<u32>(u_input.a, var_0.b.x, 48543u, arg_2.x));
    var_0 = Struct_1(false, ~min(min(global0.b >> (vec4<u32>(var_0.b.x, arg_2.x, 0u, global0.b.x) % vec4<u32>(32u)), ~vec4<u32>(arg_2.x, 1u, 42140u, arg_1.b.x)), min(global0.b, vec4<u32>(arg_2.x, 0u, u_input.a, u_input.a))));
    return 65936u;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    global0 = Struct_1(true, vec4<u32>(46513u, func_3(vec2<f32>(_wgslsmith_f_op_f32(281f * -1154f), _wgslsmith_f_op_f32(-143f + -1708f)), Struct_1(global0.a, global0.b), global0.b.yw ^ (vec2<u32>(4294967295u, u_input.a) | vec2<u32>(13357u, 1u))), global0.b.x, global0.b.x));
    let var_0 = max(abs(vec2<u32>(u_input.a, select(u_input.a, max(18875u, 4294967295u), false))), ~global0.b.ww);
    global0 = Struct_1(global0.a == false, global0.b);
    let var_1 = !all(select(vec3<bool>(true, true, all(vec2<bool>(false, global0.a))), select(select(vec3<bool>(false, true, global0.a), vec3<bool>(false, false, true), vec3<bool>(true, global0.a, global0.a)), vec3<bool>(true, global0.a, global0.a), select(vec3<bool>(false, global0.a, true), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, false, global0.a))), !(!vec3<bool>(global0.a, true, false))));
    let var_2 = Struct_1(var_1 || global0.a, ~vec4<u32>(1u, firstTrailingBit(50863u), 35541u, u_input.a) >> (global0.b % vec4<u32>(32u)));
    return -1i;
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(global0.a, vec4<u32>(~(_wgslsmith_clamp_u32(global0.b.x, u_input.a, 13072u) | (global0.b.x << (u_input.a % 32u))), _wgslsmith_sub_u32(2450u, _wgslsmith_sub_u32(1u, ~u_input.a)), u_input.a, ~1u));
    var var_0 = _wgslsmith_f_op_f32(round(-1000f));
    let var_1 = ~_wgslsmith_mod_i32(-15003i, arg_0.x);
    let var_2 = vec3<f32>(583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-494f, _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(step(-1319f, 1741f))))) + _wgslsmith_f_op_f32(sign(164f))));
    let var_3 = 1u;
    return Struct_1(true, vec4<u32>(~(~(var_3 | u_input.a)), u_input.a, ~_wgslsmith_mult_u32(global0.b.x, u_input.a), min(~4294967295u, 15329u) ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.b.x, u_input.a), reverseBits(var_3))));
}

fn func_1() -> Struct_1 {
    global0 = func_4(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(func_2(vec3<i32>(0i, 0i, 1i), 1i), _wgslsmith_mod_i32(2147483647i, 40703i)), ~2147483647i, -(~(-2147483647i)), -2147483647i)));
    let var_0 = Struct_1(any(!select(vec3<bool>(true, global0.a, false), vec3<bool>(global0.a, global0.a, global0.a), false)), min(~reverseBits(~global0.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, global0.b.x, u_input.a, 17513u), select(global0.b, vec4<u32>(4294967295u, u_input.a, 31131u, 40139u), vec4<bool>(global0.a, true, true, global0.a))), ~abs(vec4<u32>(global0.b.x, 0u, 56258u, 1u)), ~(~global0.b))));
    var var_1 = func_4(~_wgslsmith_clamp_vec4_i32(-(vec4<i32>(-68096i, 3106i, 1i, 0i) << (global0.b % vec4<u32>(32u))), ~vec4<i32>(-31493i, 2147483647i, 0i, -2147483647i), reverseBits(~vec4<i32>(-7122i, -17947i, 1i, 0i))));
    let var_2 = ~1u;
    var var_3 = func_4(select(-(vec4<i32>(35570i, 1i, 13172i, 1i) >> (~vec4<u32>(var_2, u_input.a, var_2, 4294967295u) % vec4<u32>(32u))), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(29963i, 11647i, -70820i, -1i), vec4<i32>(-5077i, 83061i, -1i, -2147483647i))), select(true, true, global0.a)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, ~(~global0.b));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -207f))), 1f), 248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2346f), _wgslsmith_div_f32(1677f, 185f))), global0.a))));
    global0 = Struct_1(var_0.a, var_0.b << ((_wgslsmith_clamp_vec4_u32(var_0.b, var_0.b, global0.b) & vec4<u32>(~var_0.b.x, global0.b.x, global0.b.x, _wgslsmith_add_u32(1501u, global0.b.x))) % vec4<u32>(32u)));
    global0 = func_1();
    let var_2 = !global0.a;
    var var_3 = Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-31870i, 55166i, 0i, 16138i), vec4<i32>(-20005i, 2147483647i, -8115i, -21324i)), ~(-21716i)), ~1i) >= ~_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -20336i), vec2<i32>(0i, 26687i))), ~_wgslsmith_mod_vec4_u32(func_1().b, vec4<u32>(global0.b.x, max(var_0.b.x, 0u), reverseBits(60888u), ~var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1044f, ~(-32453i), reverseBits(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-16253i, 3351i, -2147483647i, 28108i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, 0i, -1i), vec4<i32>(1i, 1i, 0i, 36321i), vec4<i32>(28304i, 30182i, -1i, 27772i)))) | _wgslsmith_add_vec4_i32(vec4<i32>(select(16279i, -2147483647i, false), abs(-24250i), 1i, 0i), firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))));
}

