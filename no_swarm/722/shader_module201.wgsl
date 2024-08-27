struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 450f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), -655f))));
    var var_1 = all(vec4<bool>(global0.a <= _wgslsmith_div_f32(487f, _wgslsmith_f_op_f32(round(global0.b.x))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !(2147483647i <= _wgslsmith_clamp_i32(-1i, 60386i, -1i)), false));
    var_1 = false;
    global0 = Struct_3(_wgslsmith_f_op_f32(754f + _wgslsmith_f_op_f32(f32(-1f) * -734f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * global0.b.x), _wgslsmith_f_op_f32(-var_0.x)), global0.b)));
    var var_2 = Struct_2(select(_wgslsmith_add_vec4_u32(vec4<u32>(abs(u_input.a.x), firstTrailingBit(u_input.a.x), 48863u, u_input.a.x), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<u32>(28931u, 4294967295u, u_input.a.x))), vec4<bool>(true, !any(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)) || any(vec4<bool>(false, true, true, true)), true)), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 - var_0))), _wgslsmith_add_i32(select(~1i, 0i, true), reverseBits(max(-1i, 0i))), ~u_input.a.x), Struct_1(select(select(~u_input.a, firstTrailingBit(vec2<u32>(96638u, u_input.a.x)), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a) << (select(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, u_input.a.x), true) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false))), var_0, -_wgslsmith_add_i32(~41635i, select(0i, 2147483647i, true)), u_input.a.x));
    return var_2.a;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = select(arg_0, arg_0 & arg_0, false);
    var var_1 = Struct_2(max(func_3(), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x), arg_1 | arg_3.d, 0u)), arg_3, Struct_1(~func_3().xw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-873f, arg_2, arg_3.b.x), vec3<f32>(arg_2, arg_3.b.x, arg_2)))) * arg_3.b), reverseBits(~(-2147483647i >> (0u % 32u))), ~19295u));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) * _wgslsmith_f_op_f32(abs(arg_3.b.x)))), arg_2, all(!select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(var_0, false, true, false), false)))), 512f);
    var var_2 = func_3();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(step(248f, arg_2)))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(868f)), var_1.c.b.x, 0i < var_1.c.c))))));
    return (var_1.c.a.x << (u_input.a.x % 32u)) | min(var_1.a.x >> ((~arg_3.a.x >> (u_input.a.x % 32u)) % 32u), ~_wgslsmith_mult_u32(4294967295u, countOneBits(arg_3.a.x)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(0i, 30857i, ~(((-2918i >> (arg_3.x % 32u)) & 490i) << (_wgslsmith_mod_u32(0u, func_2(arg_1, u_input.a.x, 1309f, Struct_1(vec2<u32>(1u, 1u), vec3<f32>(arg_0, arg_2.a, arg_2.b.x), -1i, 46267u))) % 32u)));
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(809f, 1419f, 1065f))), vec3<f32>(_wgslsmith_f_op_f32(select(arg_0, global0.a, arg_1)), 1339f, _wgslsmith_f_op_f32(min(-1000f, arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-262f, arg_2.a, arg_0) - vec3<f32>(-874f, global0.b.x, global0.b.x))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1634f, 1554f, arg_0), vec3<f32>(global0.b.x, arg_2.a, 1204f), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(268f, arg_2.a, 173f) + vec3<f32>(767f, 622f, arg_0))))))), _wgslsmith_div_i32(max(var_0, _wgslsmith_mod_i32(var_0, -var_0)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-62741i, -1i) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), select(vec2<i32>(var_0, var_0), vec2<i32>(var_0, 1i), vec2<bool>(false, true))), reverseBits(firstTrailingBit(0i)), !select(arg_1, arg_1, false))), func_2(true || (~arg_3.x == ~1u), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f + arg_2.a)), Struct_1((vec2<u32>(38971u, 1u) << (vec2<u32>(107799u, arg_3.x) % vec2<u32>(32u))) >> (~arg_3.xw % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.b.x, global0.a)), ~var_0, ~(~1u))));
    global1 = 1011f;
    global1 = _wgslsmith_div_f32(-161f, 500f);
    let var_2 = -vec3<i32>(1i, 1i, var_1.c);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> bool {
    var var_0 = -16101i;
    global0 = arg_1;
    var var_1 = Struct_2(func_3(), Struct_1(u_input.a, arg_0.b, ~arg_0.c, 1u), arg_0);
    var var_2 = arg_0;
    var var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.b.x)) * _wgslsmith_div_f32(-1220f, 1872f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - -1336f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(var_2.b.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, -393f) * var_1.b.b.yy)))));
    return any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_0 = Struct_3(arg_0.b.x, _wgslsmith_f_op_vec2_f32(-arg_0.b.xx));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - -949f), arg_2.x, Struct_3(global0.b.x, var_0.b), ~vec4<u32>(arg_1.a.x, 16999u, func_2(arg_0.d < 26569u, 27413u, -1000f, arg_1), 1u)).a.x;
    var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_1.b.x), vec2<f32>(-561f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(-global0.a)))));
    global0 = Struct_3(global0.b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1896f, 1103f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x) - var_0.b)), _wgslsmith_div_vec2_f32(arg_0.b.zx, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.x, -721f))))), var_0.b)));
    return Struct_2(firstTrailingBit(~(~abs(vec4<u32>(u_input.a.x, arg_0.d, 4294967295u, arg_0.d)))), Struct_1(select(~(arg_1.a | u_input.a), func_1(arg_0.b.x, arg_2.x, Struct_3(arg_0.b.x, vec2<f32>(arg_1.b.x, 713f)), vec4<u32>(1u, u_input.a.x, 12246u, 41203u) | vec4<u32>(53460u, arg_1.d, 21915u, 0u)).a, any(vec3<bool>(arg_2.x, true, false))), arg_1.b, _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(arg_1.c, 18092i)), _wgslsmith_div_i32(arg_1.c, -2147483647i)), var_1), Struct_1(arg_0.a, vec3<f32>(694f, _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(758f * global0.b.x)), 406f), abs(arg_1.c), ~abs(1u) >> ((~4294967295u >> ((4294967295u | u_input.a.x) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(24812i, 1i, 1i), _wgslsmith_div_vec3_i32(vec3<i32>(48171i, 0i, 1i), vec3<i32>(-2147483647i, -2147483647i, 1i)), vec3<i32>(23908i, -11258i, 0i) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(-3071i, -2147483647i, 20632i)), reverseBits(vec3<i32>(33289i, -15249i, -5974i))), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)));
    var var_1 = select(firstTrailingBit(4294967295u), u_input.a.x, all(vec3<bool>(true, true, true)));
    var var_2 = func_5(Struct_1(u_input.a ^ _wgslsmith_add_vec2_u32(~u_input.a, u_input.a), vec3<f32>(-964f, global0.b.x, global0.b.x), _wgslsmith_div_i32(var_0.x | var_0.x, _wgslsmith_sub_i32(-4427i, var_0.x)) & 28140i, min(u_input.a.x, abs(~1u))), Struct_1(select(u_input.a ^ u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), vec2<bool>(false, true)) ^ _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.a.x, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-849f, _wgslsmith_f_op_f32(global0.b.x + -1019f), -1623f)), 9538i, 86850u), !vec3<bool>(func_4(func_1(685f, true, Struct_3(global0.a, global0.b), vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x)), Struct_3(-982f, global0.b), ~var_0.x, abs(vec3<u32>(u_input.a.x, 19344u, 0u))), select(true, any(vec3<bool>(false, false, true)), true), !(var_0.x < 0i)));
    global0 = Struct_3(var_2.b.b.x, var_2.b.b.zy);
    let var_3 = func_5(var_2.b, func_1(_wgslsmith_f_op_f32(717f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_div_f32(var_2.c.b.x, var_2.c.b.x))), true, Struct_3(880f, global0.b), var_2.a), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !(global0.b.x <= var_2.b.b.x)));
    let var_4 = any(!select(vec3<bool>(true, 1629i < var_2.c.c, var_2.a.x != var_2.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false));
    var var_5 = ~69169u;
    var var_6 = func_1(var_3.c.b.x, any(select(select(select(vec4<bool>(var_4, true, false, var_4), vec4<bool>(false, var_4, true, false), vec4<bool>(false, var_4, true, true)), select(vec4<bool>(true, var_4, var_4, true), vec4<bool>(var_4, var_4, true, true), var_4), !vec4<bool>(true, var_4, false, true)), select(select(vec4<bool>(var_4, var_4, var_4, false), vec4<bool>(true, var_4, true, false), var_4), select(vec4<bool>(true, var_4, true, var_4), vec4<bool>(false, false, true, var_4), vec4<bool>(var_4, var_4, var_4, false)), select(vec4<bool>(var_4, var_4, var_4, var_4), vec4<bool>(true, var_4, true, false), var_4)), select(select(vec4<bool>(true, true, var_4, true), vec4<bool>(var_4, var_4, var_4, var_4), var_4), select(vec4<bool>(true, true, var_4, true), vec4<bool>(var_4, true, true, true), vec4<bool>(var_4, false, var_4, var_4)), false))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) * -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.b.b.x, global0.b.x), -254f))), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(~var_0.zy)), ~max(u_input.a, u_input.a), var_3.c.b.x);
}

