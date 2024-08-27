struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 1u, 1u)), any(vec3<bool>(true, false, true))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(132071u, 79810u, 0u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 108902u, 0u), ~vec3<u32>(1u, 244u, 1u))), vec3<u32>(85626u, ~(~31914u), ~_wgslsmith_mod_u32(96408u, 71163u)), ~(~(~vec3<u32>(4294967295u, 4294967295u, 46162u)))));
    var var_1 = u_input.a.x;
    global0 = array<vec2<f32>, 27>();
    let var_2 = vec4<bool>(true, true, true, true);
    return all(vec3<bool>(var_2.x, var_2.x, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    global0 = array<vec2<f32>, 27>();
    var var_0 = u_input.a;
    var var_1 = vec4<bool>(arg_0.x, true, true, false);
    var var_2 = Struct_2(_wgslsmith_mult_vec4_i32(-(abs(vec4<i32>(1i, var_0.x, u_input.c, var_0.x)) >> (~vec4<u32>(arg_1.x, 60095u, arg_1.x, 4294967295u) % vec4<u32>(32u))), -vec4<i32>(var_0.x, -2147483647i, var_0.x, u_input.a.x)), vec2<i32>(u_input.c, _wgslsmith_add_i32(max(-2147483647i, var_0.x), -7553i) ^ u_input.a.x), ~arg_1.x, Struct_1(vec2<i32>(1i, u_input.b.x), reverseBits(var_0.x), 4294967295u, arg_0));
    var var_3 = var_2.d.d.x;
    return var_1.wyx;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = !func_4(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(func_3(), true), true), _wgslsmith_mult_vec2_u32(~vec2<u32>(21532u, 0u), vec2<u32>(countOneBits(0u), 1u)));
    var var_1 = _wgslsmith_f_op_f32(step(291f, _wgslsmith_f_op_f32(f32(-1f) * -607f)));
    let var_2 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(u_input.c, -1i), u_input.b.x, _wgslsmith_sub_i32(-1i, -2147483647i)), countOneBits(u_input.b));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1423f)), arg_0)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(abs(452f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-788f, -255f)) - _wgslsmith_f_op_f32(sign(arg_0)))))));
    var var_3 = Struct_4(Struct_1(-max(var_2.zx << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x))), ~(-39225i), reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(16826u, 1u, 25693u, 5065u)), vec4<u32>(15751u, 63994u, 84148u, 0u))), var_0.zx));
    return countOneBits(-2147483647i << (0u % 32u)) ^ _wgslsmith_clamp_i32(var_3.a.b, reverseBits(-(~(-1i))), -u_input.a.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_3(vec4<u32>(~7390u, 0u, 1u, ~arg_2.a.c));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.b.xz, max(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~arg_2.a.a, _wgslsmith_mod_vec2_i32(arg_2.a.a, vec2<i32>(-32041i, arg_2.a.a.x))), vec2<i32>(u_input.b.x, -2147483647i)), ~(~abs(vec2<i32>(arg_2.a.b, u_input.c)))));
    var var_2 = select(select(select(select(!vec4<bool>(arg_2.a.d.x, false, arg_0.x, arg_2.a.d.x), select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, arg_2.a.d.x, false, arg_1), arg_2.a.d.x), false), vec4<bool>(true, arg_1, arg_0.x, true), arg_2.a.c < var_0.a.x), !vec4<bool>(false | arg_3.x, true, !arg_2.a.d.x, true), select(vec4<bool>(arg_2.a.d.x && true, arg_0.x, any(arg_0), any(arg_0)), select(select(vec4<bool>(false, true, true, arg_3.x), vec4<bool>(arg_0.x, arg_0.x, false, true), false), !vec4<bool>(true, arg_1, arg_2.a.d.x, false), select(vec4<bool>(arg_1, true, false, arg_0.x), vec4<bool>(true, arg_3.x, arg_3.x, true), true)), _wgslsmith_f_op_f32(select(-843f, -1100f, arg_1)) < -989f)), select(select(vec4<bool>(any(vec2<bool>(arg_1, arg_0.x)), true, true, !arg_0.x), vec4<bool>(true, arg_1 && false, var_0.a.x == 1u, arg_1 || true), arg_2.a.c < arg_2.a.c), vec4<bool>(true, false, arg_0.x, any(vec3<bool>(arg_3.x, true, false)) | true), select(!(!vec4<bool>(arg_1, arg_3.x, arg_2.a.d.x, false)), select(!vec4<bool>(false, true, arg_3.x, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_2.a.d.x, true, true), arg_3.x), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(arg_3.x, arg_3.x, arg_2.a.d.x, arg_3.x)), all(vec4<bool>(arg_0.x, false, true, arg_1)), true, any(vec2<bool>(arg_0.x, arg_3.x))))), !select(!(!vec4<bool>(arg_1, arg_1, false, arg_3.x)), select(!vec4<bool>(arg_3.x, false, arg_2.a.d.x, false), select(vec4<bool>(true, false, arg_2.a.d.x, true), vec4<bool>(true, true, arg_2.a.d.x, true), true), vec4<bool>(false, false, false, arg_2.a.d.x)), !any(vec4<bool>(arg_3.x, false, arg_2.a.d.x, arg_2.a.d.x))));
    global0 = array<vec2<f32>, 27>();
    var var_3 = var_0.a.x >> (~0u % 32u);
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = vec3<u32>(arg_1.a.c, arg_1.a.c & 1u, arg_1.a.c) >> (~(vec3<u32>(_wgslsmith_mult_u32(arg_1.a.c, 17924u), _wgslsmith_div_u32(1u, 24453u), _wgslsmith_mult_u32(61342u, 55463u)) >> (vec3<u32>(4294967295u, firstLeadingBit(84722u), arg_1.a.c) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = !vec3<bool>(arg_1.a.d.x, true, arg_1.a.d.x);
    var var_2 = func_5(select(select(select(!var_1.xz, select(var_1.xy, arg_1.a.d, false), var_1.x), select(vec2<bool>(var_1.x, arg_1.a.d.x), vec2<bool>(true, true), !arg_1.a.d), false), vec2<bool>(false, true), var_1.yx), true, arg_1, !vec2<bool>(!any(var_1.zx), ~u_input.b.x < func_2(arg_2)));
    let var_3 = 2147483647i;
    let var_4 = 52172i;
    return -1i <= var_4;
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    return Struct_1(firstTrailingBit(~(~(vec2<i32>(u_input.c, 0i) >> (vec2<u32>(22770u, 53813u) % vec2<u32>(32u))))), u_input.a.x ^ abs(-_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), abs(firstTrailingBit(~71954u)), vec2<bool>(func_3(), any(select(vec4<bool>(true, arg_0.x, true, false), arg_0, !vec4<bool>(false, arg_0.x, arg_0.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    var var_0 = u_input.b.yz;
    var var_1 = func_6(!(!vec4<bool>(false, func_1(73662i, Struct_4(Struct_1(u_input.a, -15071i, 0u, vec2<bool>(false, true))), 432f), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-956f))) + _wgslsmith_f_op_f32(max(-1220f, _wgslsmith_f_op_f32(max(-826f, _wgslsmith_f_op_f32(-214f + 317f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1552f - -1572f)))), ~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_1.a.x, var_1.b, var_0.x)), vec3<i32>(-1i) * -u_input.b));
}

