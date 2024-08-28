struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    var var_0 = -(u_input.b ^ max(u_input.b, vec3<i32>(u_input.b.x, -u_input.d.x, -u_input.d.x)));
    var_0 = u_input.b;
    var var_1 = ~(vec3<i32>(_wgslsmith_mod_i32(-4924i, -20930i | u_input.d.x), min(u_input.a, reverseBits(0i)), arg_1.b.x << (~45462u % 32u)) & vec3<i32>(1i >> (min(27175u, u_input.e) % 32u), -43858i, var_0.x));
    let var_2 = vec3<f32>(896f, _wgslsmith_f_op_f32(min(arg_1.a.x, -427f)), 1260f);
    var_0 = vec3<i32>(var_1.x, (_wgslsmith_sub_i32(0i, 44859i) | select(_wgslsmith_mod_i32(-1i, var_1.x), ~63930i, arg_2 || true)) ^ var_1.x, var_1.x);
    return select(select(select(select(!vec2<bool>(arg_2, false), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(false, true), vec2<bool>(arg_2, true), vec2<bool>(arg_2, true))), vec2<bool>(!arg_2, any(vec2<bool>(false, true))), !select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2))), !(!vec2<bool>(arg_2, false)), true), vec2<bool>(true, any(vec3<bool>(all(vec2<bool>(arg_2, true)), any(vec3<bool>(arg_2, false, true)), arg_2))), any(!select(vec2<bool>(true, true), !vec2<bool>(arg_2, arg_2), arg_2)));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1157f, var_0.a.x, 1468f))))), vec2<i32>(firstTrailingBit(max(15723i, ~u_input.d.x)), -(_wgslsmith_div_i32(u_input.b.x, -1i) ^ u_input.d.x)));
    var var_2 = -abs(i32(-1i) * -37170i);
    var_2 = -2147483647i;
    var_0 = arg_0;
    return false;
}

fn func_2() -> i32 {
    var var_0 = (_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-20560i, u_input.c.x) ^ u_input.c, abs(vec2<i32>(30916i, u_input.a)))) < _wgslsmith_div_i32(u_input.a, firstTrailingBit(u_input.c.x))) | (false & select(false, true, true));
    var var_1 = -361f;
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1298f, -1427f) * vec2<f32>(-1382f, -1005f))), vec2<f32>(1f, 1f))), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.e, u_input.e, u_input.e), firstTrailingBit(vec4<u32>(1u, 42224u, u_input.e, u_input.e)) >> (vec4<u32>(u_input.e, u_input.e, 0u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.e), firstTrailingBit(~_wgslsmith_mult_u32(u_input.e, 1u)), func_3(u_input.b.x, Struct_3(vec4<f32>(152f, 357f, 506f, -174f), u_input.d), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))))));
    var var_3 = true;
    var_3 = any(vec2<bool>(false, !any(vec3<bool>(false, false, true)) | all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false))));
    return min(~u_input.b.x, -_wgslsmith_mult_i32(max(u_input.c.x | -1i, u_input.c.x), _wgslsmith_add_i32(u_input.a, 0i)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-767f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-533f, 2222f), -552f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -244f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1142f)), _wgslsmith_f_op_f32(622f + -251f))))), _wgslsmith_mult_vec2_i32(~u_input.c, u_input.b.zy));
    let var_1 = -var_0.b.x;
    let var_2 = vec3<i32>(u_input.a, var_0.b.x, var_0.b.x);
    var var_3 = select(-firstTrailingBit(~var_2), _wgslsmith_add_vec3_i32(-(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.x, u_input.d.x, var_0.b.x), var_2)), vec3<i32>(u_input.c.x, (-44993i >> (u_input.e % 32u)) << (reverseBits(4294967295u) % 32u), func_2())), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-667f, 1323f), -742f)) * var_0.a.xx), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), vec4<u32>(~9065u, ~17238u, countOneBits(0u), ~47501u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(7168u, 1u, 1u, 32031u), vec4<u32>(3267u, 4586u, 0u, 0u), vec4<u32>(1u, 0u, u_input.e, u_input.e)), ~vec4<u32>(43479u, u_input.e, 0u, u_input.e)), abs(~vec4<u32>(1u, 64536u, 56312u, u_input.e)))), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(27533u, u_input.e), abs(u_input.e))) >> (u_input.e % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u >> (u_input.e % 32u), ~_wgslsmith_div_u32(u_input.e, 4294967295u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(u_input.e, 14796u, 1u) >> (vec3<u32>(3362u, u_input.e, 77052u) % vec3<u32>(32u))))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(252f))));
    var var_1 = func_1();
    var_1 = Struct_1(var_1.a, vec4<u32>(4294967295u, _wgslsmith_add_u32(var_1.b.x << (var_1.b.x % 32u), 98797u), var_1.d, firstTrailingBit(_wgslsmith_add_u32(0u, 1u))) & var_1.b, abs(u_input.e), 4294967295u, vec2<bool>(true, func_3(u_input.c.x, Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(182f, -490f, -549f, var_0), vec4<f32>(var_1.a.x, -1519f, var_0, 1519f))), u_input.d), var_1.e.x && (58968u < u_input.e)).x));
    var var_2 = select(select(!vec4<bool>(true, true, true, var_1.e.x), !select(!vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, true), select(vec4<bool>(false, var_1.e.x, var_1.e.x, var_1.e.x), vec4<bool>(var_1.e.x, false, var_1.e.x, true), false), vec4<bool>(var_1.e.x, true, var_1.e.x, var_1.e.x)), true), !(!vec4<bool>(true, 0u < var_1.d, true, var_1.e.x)), all(var_1.e));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, -796f, var_1.a.x, var_0) * vec4<f32>(-668f, var_1.a.x, var_1.a.x, -1000f))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-563f + var_1.a.x), -446f, _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_0, -437f, var_1.a.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, 2275f, var_1.a.x, -2006f) * vec4<f32>(var_0, var_1.a.x, -1219f, -984f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(312f, 2302f, 390f, 828f) * vec4<f32>(var_1.a.x, var_1.a.x, -135f, 1076f)))))), u_input.c);
    let var_4 = _wgslsmith_div_u32(u_input.e, var_1.d);
    var var_5 = _wgslsmith_div_u32(~u_input.e, _wgslsmith_sub_u32(~(4086u & var_4) >> (~79711u % 32u), abs(u_input.e)));
    var var_6 = _wgslsmith_f_op_f32(-var_0);
    var_5 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~var_1.b, ~vec4<u32>(u_input.e, 4294967295u, 1u, u_input.e)) | ~(~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.e, firstLeadingBit(u_input.e), var_1.c), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4, 0u, 66461u), vec3<u32>(108625u, var_4, 4294967295u)) | var_1.b.x, ~(~var_4))) | _wgslsmith_dot_vec2_u32(~func_1().b.xz, ~vec2<u32>(var_1.c, var_4));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.ywz, 20339i);
}

