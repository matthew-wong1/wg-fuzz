struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = arg_2;
    global0 = array<Struct_3, 12>();
    let var_1 = !(!select(!arg_1.a, arg_1.a, !all(arg_1.a.zxz)));
    let var_2 = vec2<bool>(_wgslsmith_clamp_u32(0u, arg_3, 28558u) <= ~(~arg_3), !any(!(!var_1)));
    global0 = array<Struct_3, 12>();
    return vec3<bool>(var_1.x, arg_1.a.x, true);
}

fn func_2() -> vec4<bool> {
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(select(func_3(vec2<i32>(-36104i, -2147483647i), Struct_1(vec4<bool>(true, true, true, false)), Struct_2(vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.a)), 1u), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), func_3(vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<bool>(false, true, false, true)), Struct_2(vec4<i32>(46860i, u_input.a, u_input.a, u_input.a)), 1u).x), func_3(firstTrailingBit(vec2<i32>(1i, -2147483647i)), Struct_1(vec4<bool>(false, false, true, true)), Struct_2(vec4<i32>(18282i, u_input.a, -8434i, u_input.d)), u_input.c.x ^ 1u), u_input.d <= reverseBits(u_input.a)));
    let var_1 = select(select(vec3<bool>(u_input.c.x > ~1u, !var_0.x, false), select(vec3<bool>(true, false, var_0.x), vec3<bool>(!var_0.x, true, var_0.x == true), func_3(abs(vec2<i32>(2147483647i, u_input.a)), Struct_1(vec4<bool>(var_0.x, false, var_0.x, true)), Struct_2(vec4<i32>(13722i, 2147483647i, 0i, u_input.a)), ~0u)), select(vec3<bool>(true, true, var_0.x), vec3<bool>(!var_0.x, false || var_0.x, true), vec3<bool>(true, any(var_0.xx), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.x, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), false), func_3(~vec2<i32>(9703i, -1i), Struct_1(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), Struct_2(vec4<i32>(u_input.a, -21452i, 2147483647i, u_input.d)), ~u_input.b)), !func_3(-vec2<i32>(u_input.d, u_input.a), Struct_1(vec4<bool>(var_0.x, false, var_0.x, true)), Struct_2(vec4<i32>(13906i, u_input.d, u_input.a, u_input.d)), ~48736u), select(!func_3(vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<bool>(var_0.x, var_0.x, false, false)), Struct_2(vec4<i32>(u_input.d, -2147483647i, u_input.a, u_input.a)), 4294967295u), vec3<bool>(!var_0.x, !var_0.x, !var_0.x), !vec3<bool>(true, var_0.x, false))), vec3<bool>(!var_0.x, var_0.x, 52307u >= u_input.b));
    var_0 = select(var_1, vec3<bool>(func_3(vec2<i32>(u_input.a, u_input.d), Struct_1(!vec4<bool>(false, true, var_1.x, true)), Struct_2(~vec4<i32>(u_input.a, -1i, 0i, -27772i)), ~u_input.c.x).x, true, true), func_3(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(u_input.a, -20739i)) | ~vec2<i32>(-1i, 29253i), Struct_1(!(!vec4<bool>(var_0.x, var_0.x, var_1.x, false))), Struct_2(vec4<i32>(_wgslsmith_sub_i32(u_input.d, -16110i), u_input.a & u_input.a, max(20167i, -26101i), u_input.a & u_input.a)), ~_wgslsmith_div_u32(max(84098u, 40573u), 4294967295u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1682f)));
    var var_3 = reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, firstLeadingBit(u_input.b), 1u, ~52744u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.c.x, u_input.b), vec4<u32>(47926u, u_input.c.x, u_input.c.x, 4294967295u))));
    return select(select(select(select(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, var_1.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_0.x)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.x, true, var_1.x), true), select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.x, var_1.x, var_1.x), false)), any(vec2<bool>(false, true))), vec4<bool>(true, false, true, true), var_1.x), vec4<bool>(~(~26225u) < u_input.c.x, var_1.x && (select(false, var_1.x, var_0.x) | false), !func_3(min(vec2<i32>(0i, u_input.d), vec2<i32>(2147483647i, -1i)), Struct_1(vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x)), Struct_2(vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.d)), 4294967295u).x, var_1.x), select(!vec4<bool>(1i >= u_input.d, true, -417f < var_2, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(var_2 + -1762f) >= _wgslsmith_f_op_f32(-var_2))));
}

fn func_1(arg_0: vec2<f32>) -> vec2<i32> {
    let var_0 = 19506u;
    var var_1 = Struct_1(!select(func_2(), vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(vec2<i32>(13939i, u_input.d), Struct_1(vec4<bool>(false, true, true, true)), Struct_2(vec4<i32>(u_input.a, 14609i, u_input.a, 0i)), 48753u).x, false, true)));
    var var_2 = -u_input.d;
    return -(~(-_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.d)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(34184u, ~u_input.c.x, 1u);
    let var_1 = ~u_input.b;
    global0 = array<Struct_3, 12>();
    var var_2 = _wgslsmith_div_u32(var_1, 1u);
    var_2 = _wgslsmith_mod_u32((1u | ~min(20127u, var_0.x)) | _wgslsmith_mult_u32(57767u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 48256u, 53917u, var_0.x), vec4<u32>(75374u, 4294967295u, 51998u, var_1))), ~38127u);
    let var_3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(-2147483647i, -1i))), max(-vec2<i32>(-1i, 32648i), ~vec2<i32>(u_input.d, 1i))), ~max(vec2<i32>(27418i, u_input.d), vec2<i32>(-1i, u_input.d) | vec2<i32>(u_input.a, -1i)), -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 11860i), vec2<i32>(0i, 21870i)), vec2<i32>(u_input.a, 17568i))) | _wgslsmith_div_vec2_i32(~func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-407f, -1106f)))), countOneBits(vec2<i32>(-15081i, u_input.d)));
    let var_4 = !vec3<bool>(reverseBits(54743u) <= var_1, true, func_2().x);
    var_0 = vec3<u32>(~15987u, abs(u_input.c.x), 1u);
    var var_5 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(countOneBits(max(u_input.c.x, 4294967295u)), firstTrailingBit(_wgslsmith_mult_u32(var_1, var_0.x))), _wgslsmith_div_u32(~(u_input.b >> (var_1 % 32u)), firstLeadingBit(~8951u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1018f)) - _wgslsmith_f_op_f32(459f - 1512f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(566f, -1743f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1516f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-839f * -115f) - _wgslsmith_f_op_f32(step(-1587f, -2027f))))), var_0.zz, _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.c.x, var_0.x, var_0.x)), min(countOneBits(vec4<u32>(0u, u_input.c.x, 30492u, u_input.b)), vec4<u32>(var_1, u_input.c.x, 42396u, 69766u) ^ vec4<u32>(var_1, 2409u, 8735u, u_input.c.x))) >> (~_wgslsmith_add_vec4_u32(~vec4<u32>(9276u, 61088u, var_1, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(44143u, 0u, 2519u, 33996u), vec4<u32>(91607u, u_input.c.x, 0u, 0u))) % vec4<u32>(32u)), min(4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)));
}

