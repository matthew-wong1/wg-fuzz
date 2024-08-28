struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-69800i, 0i, 45754i, -22405i));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 1285f, -625f);

var<private> global2: Struct_2;

var<private> global3: f32 = 766f;

var<private> global4: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(28151u, 56380u, 30540u), vec3<u32>(4294967295u, 1u, 13715u), vec3<u32>(36589u, 466u, 10495u), vec3<u32>(53955u, 0u, 18832u), vec3<u32>(1u, 15257u, 27863u), vec3<u32>(12520u, 131094u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 28951u), vec3<u32>(0u, 0u, 48677u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    let var_0 = Struct_2(global2.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) + global1.x);
    var var_2 = min(arg_0, 26817i);
    global0 = Struct_2(abs(vec4<i32>(-2147483647i, reverseBits(var_0.a.x), var_0.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.zx, vec2<i32>(-10406i, arg_0), vec2<i32>(0i, u_input.e.x)), ~var_0.a.ww))));
    global0 = var_0;
    return all(!select(vec4<bool>(arg_1, all(vec4<bool>(arg_1, arg_1, false, false)), arg_1, 229f <= global1.x), !select(vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, true, false, true), vec4<bool>(true, arg_1, arg_1, arg_1)), vec4<bool>(select(true, false, true), u_input.c < 18317u, arg_1, any(vec2<bool>(arg_1, arg_1)))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    var var_1 = Struct_1(reverseBits(vec4<i32>(~(-53770i), 1i, min(global0.a.x, global0.a.x), arg_0 >> (arg_1.x % 32u))) >> (~(~vec4<u32>(17026u, arg_1.x, 0u, 29634u)) % vec4<u32>(32u)), (max(global2.a.x, firstLeadingBit(arg_0)) >> (4294967295u % 32u)) & global0.a.x);
    let var_2 = (global1.x > _wgslsmith_div_f32(-635f, _wgslsmith_f_op_f32(exp2(global1.x)))) | func_3(select(_wgslsmith_clamp_i32(1i, -1i, -146057i), var_1.b, true), any(vec2<bool>(true, true)));
    var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, abs(reverseBits(u_input.e.x)), global0.a.x, -countOneBits(u_input.e.x)), vec4<i32>(firstLeadingBit(-4494i), i32(-1i) * -1i, firstTrailingBit(global2.a.x | 7668i), arg_0)), 0i);
    let var_3 = !vec2<bool>(~(~952u) > u_input.c, all(select(select(vec3<bool>(false, var_2, var_2), vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, false)), vec3<bool>(var_2, true, true), true)));
    return Struct_2(max(select(vec4<i32>(-64500i, _wgslsmith_sub_i32(-20942i, 0i), ~0i, _wgslsmith_mult_i32(u_input.e.x, 2147483647i)), global0.a, !var_3.x), countOneBits(global0.a)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: u32) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(-(-vec4<i32>(global2.a.x, global0.a.x, u_input.e.x, 3294i) >> (~vec4<u32>(arg_2, arg_2, arg_2, 0u) % vec4<u32>(32u))), global0.a, ~global0.a), u_input.e.x);
    var var_1 = func_2(_wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.a.x, global2.a.x), var_0.b, var_0.a.x), ~countOneBits(reverseBits(vec4<u32>(arg_2, 91183u, u_input.c, 1u))));
    global0 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b, select(-26903i, ~u_input.b, !arg_1.x), global0.a.x, ~(-46312i)), global0.a), ~vec4<u32>(u_input.c, arg_2, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 1u, u_input.d, 4208u), firstLeadingBit(vec4<u32>(5115u, u_input.a, 12415u, u_input.d)))));
    global0 = func_2(global0.a.x, vec4<u32>(~47017u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(15664u, 37289u, arg_2), vec3<u32>(u_input.d, 123905u, 0u)), 15658u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30009u), vec2<u32>(u_input.d, 0u)), _wgslsmith_clamp_u32(0u, arg_2, u_input.a))) ^ ~abs(~vec4<u32>(1u, arg_2, 52222u, 75476u)));
    var var_2 = var_0;
    return vec4<i32>(u_input.e.x, 2898i, u_input.e.x, ~func_2(1i, vec4<u32>(abs(u_input.a), ~u_input.a, ~60154u, ~arg_2)).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-(~(-64471i)), global0.a.x);
    let var_1 = Struct_2(global0.a);
    global2 = Struct_2(_wgslsmith_div_vec4_i32(func_1(global1.x, vec2<bool>(true, true), ~u_input.c), ~vec4<i32>(global2.a.x, u_input.b, 0i, global2.a.x) << (abs(vec4<u32>(66368u, u_input.d, u_input.d, 0u)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(firstTrailingBit(var_1.a), vec4<i32>(var_0, global2.a.x, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.e.x), var_1.a.xx))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -2714f))), _wgslsmith_div_f32(872f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(abs(674f))))) + _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * global1.x))));
    let var_3 = !select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, -379f > var_2.x, any(vec3<bool>(false, false, false))), true), vec3<bool>(select(var_2.x != -788f, var_1.a.x > 2147483647i, all(vec3<bool>(true, true, false))), func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 37853i, -25150i), global0.a), true), true), any(vec2<bool>(true, true)));
    global0 = Struct_2(global0.a);
    var var_4 = 47819u;
    let var_5 = 4061i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(9261i, 38693i), var_1.a.ww, ~(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, global0.a.x), vec2<i32>(7524i, -21246i)), func_1(3006f, var_3.xy, 61587u).yy) | -u_input.e.yz));
}

