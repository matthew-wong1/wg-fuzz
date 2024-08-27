struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> u32 {
    global0 = vec2<bool>(global0.x, arg_1.a.x);
    let var_0 = Struct_2(Struct_1(select(select(vec2<bool>(global0.x, false), select(arg_1.a, arg_0.a, true), !vec2<bool>(false, arg_0.a.x)), !(!arg_1.a), select(!arg_1.a, select(vec2<bool>(global0.x, arg_1.a.x), arg_1.a, true), !arg_0.a)), vec2<i32>(-1i, arg_1.b.x), min(44609u, arg_3.x)), _wgslsmith_sub_vec2_i32(~max(vec2<i32>(arg_1.b.x, arg_0.b.x) ^ vec2<i32>(2147483647i, -25931i), vec2<i32>(23820i, arg_0.b.x)), _wgslsmith_sub_vec2_i32(u_input.b, -arg_1.b)), Struct_1(!(!arg_0.a), vec2<i32>(u_input.b.x, u_input.b.x), abs(49169u)), max(vec2<u32>(1u, 4294967295u) | _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(21125u, 4294967295u), vec2<u32>(arg_3.x, 0u)), ~vec2<u32>(0u, u_input.a.x)), vec2<u32>(arg_0.c, arg_3.x ^ (arg_0.c & arg_1.c))));
    var var_1 = ~_wgslsmith_mod_vec3_i32(~vec3<i32>(~0i, var_0.b.x >> (arg_3.x % 32u), _wgslsmith_mod_i32(arg_2, 1i)), select(vec3<i32>(arg_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.b.x, arg_2, arg_0.b.x), vec4<i32>(-22409i, -64i, u_input.b.x, 40520i)), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), select(vec3<i32>(32398i, -18862i, u_input.b.x), abs(vec3<i32>(29909i, arg_2, arg_1.b.x)), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, arg_1.a.x, var_0.a.a.x), false)), true));
    let var_2 = arg_3.x;
    let var_3 = vec3<bool>(select((true || var_0.a.a.x) || true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1160f, 609f)) + 178f) <= 290f), false, all(vec3<bool>(true || any(vec3<bool>(arg_1.a.x, true, false)), !var_0.c.a.x, true == arg_1.a.x)));
    return arg_3.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: f32) -> vec4<f32> {
    global0 = vec2<bool>(true, true);
    var var_0 = func_3(Struct_1(select(!select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), global0.x), vec2<bool>(global0.x | global0.x, true), false), vec2<i32>(~max(0i, 2147483647i), -1i), u_input.a.x), Struct_1(vec2<bool>(all(vec2<bool>(true, global0.x)), true), reverseBits(vec2<i32>(arg_0.x, arg_0.x)) | u_input.b, ~(~(u_input.c.x >> (2160u % 32u)))), -arg_1, countOneBits(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.a.x), ~4294967295u), ~25796u, ~0u)));
    global0 = vec2<bool>(!(!global0.x), true);
    let var_1 = ~u_input.a.x;
    let var_2 = all(!vec3<bool>(true, !global0.x, global0.x || any(vec2<bool>(global0.x, global0.x))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-334f - arg_2), _wgslsmith_f_op_f32(254f * 190f))), -688f), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1076f - -619f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + 1132f))), _wgslsmith_f_op_f32(abs(arg_2)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-50305i, 13739i, 0i), 59140i, _wgslsmith_f_op_f32(262f * -348f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(953f, -1000f, 1248f, -186f))))) - vec4<f32>(-1435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1260f))), _wgslsmith_f_op_f32(select(-366f, _wgslsmith_f_op_f32(floor(-314f)), all(vec3<bool>(arg_1, global0.x, arg_0.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -320f), 183f)))));
    let var_1 = arg_3.a.b.x | -40587i;
    global0 = select(!arg_0.a, arg_0.a, arg_3.c.a);
    let var_2 = Struct_4(!(!(!(!vec4<bool>(arg_1, true, arg_0.a.x, true)))), select(select(select(!vec3<bool>(false, true, global0.x), select(vec3<bool>(arg_3.a.a.x, false, false), vec3<bool>(false, global0.x, true), arg_0.a.x), select(vec3<bool>(arg_3.c.a.x, false, arg_1), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1), vec3<bool>(global0.x, true, global0.x))), select(!vec3<bool>(arg_0.a.x, false, false), select(vec3<bool>(false, global0.x, false), vec3<bool>(true, true, false), vec3<bool>(arg_0.a.x, true, arg_1)), arg_1), vec3<bool>(arg_2 == 4294967295u, global0.x, arg_3.a.a.x && false)), select(select(!vec3<bool>(arg_0.a.x, global0.x, arg_3.a.a.x), vec3<bool>(false, arg_1, global0.x), select(vec3<bool>(arg_0.a.x, arg_1, false), vec3<bool>(false, false, false), vec3<bool>(arg_1, arg_3.c.a.x, true))), select(!vec3<bool>(arg_1, true, arg_0.a.x), vec3<bool>(true, false, true), !arg_0.a.x), !arg_1), false), arg_3, Struct_1(vec2<bool>(false, any(vec4<bool>(false, true, true, arg_1)) & (arg_3.c.c < 28474u)), -u_input.b, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~u_input.c.x, 4294967295u), _wgslsmith_mult_u32(u_input.c.x, arg_2) & ~u_input.c.x)));
    global0 = var_2.a.yy;
    return _wgslsmith_f_op_f32(min(1000f, var_0.x)) < 1672f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = !select(vec2<bool>(true, global0.x), !(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true))), select(select(!vec2<bool>(false, global0.x), select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), func_1(Struct_1(vec2<bool>(global0.x, global0.x), vec2<i32>(u_input.b.x, u_input.b.x), var_0), false, 0u, Struct_2(Struct_1(vec2<bool>(global0.x, global0.x), u_input.b, var_0), u_input.b, Struct_1(vec2<bool>(true, false), vec2<i32>(u_input.b.x, 45433i), var_0), u_input.a.zz))), select(vec2<bool>(global0.x, global0.x), !vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false))));
    var var_1 = Struct_3(Struct_1(select(vec2<bool>(global0.x, false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), any(vec3<bool>(global0.x, true, true))), global0.x), u_input.b, abs(~(18669u << (var_0 % 32u)))), Struct_1(vec2<bool>(any(!vec2<bool>(global0.x, true)), !(global0.x | global0.x)), vec2<i32>(~(-11456i << (0u % 32u)), u_input.b.x), ~22861u), !(!vec2<bool>(all(vec3<bool>(global0.x, false, global0.x)), all(vec4<bool>(global0.x, false, global0.x, true)))), select(-(~abs(u_input.b)), _wgslsmith_add_vec2_i32(-vec2<i32>(-12124i, u_input.b.x), u_input.b), vec2<bool>(all(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, true, false))), min(1i, u_input.b.x) > _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))));
    let var_2 = _wgslsmith_clamp_i32(-countOneBits(-u_input.b.x), ~(~9516i), ~_wgslsmith_sub_i32(var_1.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(66850i, var_1.d.x, -52646i)) & var_1.a.b.x));
    let var_3 = Struct_3(Struct_1(vec2<bool>(true, true), max(select(var_1.b.b, _wgslsmith_mod_vec2_i32(var_1.b.b, u_input.b), !var_1.b.a), vec2<i32>(var_2, abs(2147483647i))), _wgslsmith_mult_u32((u_input.c.x & var_1.a.c) | _wgslsmith_sub_u32(var_1.b.c, u_input.c.x), ~u_input.c.x | 1u)), Struct_1(vec2<bool>(false, true | var_1.c.x), vec2<i32>(-34815i, _wgslsmith_mult_i32(-1i, 1i) & firstTrailingBit(-1i)), abs(firstLeadingBit(_wgslsmith_add_u32(4294967295u, u_input.a.x)))), vec2<bool>(false, true), vec2<i32>(1i, select(-27836i, countOneBits(-var_2), true)));
    var_1 = Struct_3(var_3.a, var_1.b, select(!var_1.b.a, select(vec2<bool>(true, any(vec3<bool>(false, global0.x, var_3.a.a.x))), vec2<bool>(true, true), true), vec2<bool>(var_3.c.x, false && any(vec4<bool>(var_1.b.a.x, global0.x, var_1.c.x, global0.x)))), countOneBits(var_3.a.b));
    var var_4 = var_3;
    var var_5 = var_3.a;
    var var_6 = !vec3<bool>(all(!vec3<bool>(global0.x, var_5.a.x, true)) & true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) * -1530f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(201f)) - _wgslsmith_f_op_f32(round(1000f))), true != !any(vec2<bool>(false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-2147483647i << (var_4.a.c % 32u), var_2, firstLeadingBit(var_5.b.x)) >> (_wgslsmith_div_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(var_3.a.c, var_1.b.c, 67681u), ~vec3<u32>(52637u, 0u, var_3.a.c))) % vec3<u32>(32u)));
}

