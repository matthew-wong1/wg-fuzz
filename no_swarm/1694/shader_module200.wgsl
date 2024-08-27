struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = false;

var<private> global2: vec2<i32> = vec2<i32>(-62368i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * _wgslsmith_f_op_f32(-1000f + -260f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-784f * -1752f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1186f), -1000f)) - _wgslsmith_f_op_f32(round(-1000f)))))));
    let var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, _wgslsmith_div_i32(abs(arg_1.b.x), arg_0)), -max(firstLeadingBit(vec2<i32>(var_0.b.x, 28659i)), ~(var_0.b & arg_1.b)));
    global2 = var_2;
    global2 = vec2<i32>(-3924i, _wgslsmith_mult_i32(var_0.b.x, _wgslsmith_div_i32(arg_1.b.x, _wgslsmith_div_i32(var_0.b.x, _wgslsmith_mult_i32(15660i, 2268i)))));
    return var_0.d.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(true, any(vec3<bool>(true, !arg_0.x | false, any(select(vec2<bool>(false, true), arg_0, vec2<bool>(arg_0.x, false))))));
    let var_1 = Struct_2(Struct_1(0u, arg_0), vec2<i32>(1i, 19352i), vec4<bool>(true, true, false, true), Struct_1(_wgslsmith_mult_u32(~arg_1.x, abs(arg_1.x)) ^ func_3(-global2.x, Struct_2(Struct_1(0u, var_0), vec2<i32>(0i, global2.x), vec4<bool>(false, true, false, var_0.x), Struct_1(arg_1.x, arg_0))), vec2<bool>(true, false)));
    var var_2 = var_1.d;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_mod_u32(var_3.x, 16304u);
    return select(arg_1.x, ~(~1882u), select(!(!all(vec4<bool>(var_0.x, var_0.x, var_2.b.x, false))), !((24220i == global2.x) || !arg_0.x), any(!var_1.c)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(406f, 585f, -2145f) - vec3<f32>(951f, 100f, -1006f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1269f + -239f), _wgslsmith_f_op_f32(333f * -257f), _wgslsmith_div_f32(1006f, -1000f))))));
    return Struct_2(arg_1, vec2<i32>(_wgslsmith_dot_vec3_i32(~abs(vec3<i32>(52190i, 36835i, 0i)), vec3<i32>(-12120i ^ u_input.a, i32(-1i) * -2147483647i, 0i)), 0i), select(vec4<bool>(var_0.x > _wgslsmith_f_op_f32(f32(-1f) * -180f), false, all(select(vec4<bool>(arg_1.b.x, true, false, arg_1.b.x), vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_1.b.x), vec4<bool>(true, false, false, true))), !arg_1.b.x), select(!(!vec4<bool>(arg_1.b.x, true, arg_1.b.x, true)), vec4<bool>(select(arg_1.b.x, arg_1.b.x, arg_1.b.x), all(arg_1.b), any(vec2<bool>(arg_1.b.x, false)), arg_1.b.x | arg_1.b.x), any(arg_1.b)), true), Struct_1(~max(0u, ~67212u), select(arg_1.b, arg_1.b, vec2<bool>(arg_1.b.x, false))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global0 = abs(-2147483647i);
    global0 = -58105i;
    let var_0 = func_4(_wgslsmith_add_u32(0u, abs(func_2(arg_2.c.wx, vec2<u32>(1u, 4294967295u))) >> (_wgslsmith_mod_u32(27959u, _wgslsmith_div_u32(14795u, 1u)) % 32u)), arg_2.d);
    let var_1 = !select(var_0.a.b, !var_0.d.b, true);
    global2 = abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(20716i, u_input.a), -14242i), _wgslsmith_mult_vec2_i32(arg_2.b, reverseBits(arg_2.b)), -arg_2.b));
    return _wgslsmith_add_u32(abs(func_2(arg_2.c.xw, ~(~vec2<u32>(60051u, arg_2.a.a)))), firstLeadingBit(~(~func_4(var_0.d.a, arg_2.a).a.a)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = ~global2.x;
    var var_1 = ~_wgslsmith_mod_i32(0i << (func_1(Struct_2(Struct_1(arg_2.x, vec2<bool>(arg_1.x, true)), arg_0, arg_1, Struct_1(arg_2.x, arg_1.wx)), arg_1.x, Struct_2(Struct_1(1u, arg_1.zz), arg_0, vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), Struct_1(1u, vec2<bool>(arg_1.x, false))), vec3<f32>(477f, -894f, 1000f)) % 32u), _wgslsmith_div_i32(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global2.x, -2147483647i), vec3<i32>(arg_0.x, var_0, -1i)))) >> (~arg_2.x % 32u);
    var var_2 = select(arg_1, vec4<bool>(arg_1.x, arg_1.x, any(vec3<bool>(arg_1.x || true, true, true)), !(arg_1.x == (arg_2.x <= 4294967295u))), !select(arg_1, arg_1, vec4<bool>(false, any(vec3<bool>(false, false, false)), false, true)));
    let var_3 = func_4(0u, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_2.x, 24828u) & firstLeadingBit(vec3<u32>(arg_2.x, 4294967295u, arg_2.x)), vec3<u32>(arg_2.x, select(arg_2.x, arg_2.x, arg_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 86140u), arg_2))), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-54632i, 3419i), arg_0) != _wgslsmith_sub_i32(global2.x, arg_0.x), true))).a;
    var var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(173f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(733f)), -977f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(425f)) + _wgslsmith_f_op_f32(sign(2805f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1193f, 368f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-145f, -200f) - vec2<f32>(842f, -140f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-546f, -1543f))), vec2<f32>(917f, 1000f)) + vec2<f32>(-1565f, _wgslsmith_f_op_f32(-1218f - -196f))))));
    return func_4(52892u, func_4(abs(var_3.a), func_4(0u, Struct_1(_wgslsmith_sub_u32(arg_2.x, var_3.a), !var_3.b)).d).d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(82642u, max(38971u, 0u))), firstLeadingBit(~vec2<u32>(1u, 1u) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(7424u, 4294967295u), ~vec2<u32>(4294967295u, 63202u), select(vec2<u32>(42705u, 0u), vec2<u32>(4294967295u, 86871u), true)) % vec2<u32>(32u))));
    let var_1 = func_5(~(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, 2147483647i))) >> (~(~(~vec2<u32>(1213u, var_0))) % vec2<u32>(32u)), vec4<bool>(true, !all(vec4<bool>(false, false, false, true)) && true, true, true), vec2<u32>(70464u, _wgslsmith_clamp_u32(10581u >> (var_0 % 32u), func_1(Struct_2(Struct_1(var_0, vec2<bool>(true, true)), vec2<i32>(global2.x, u_input.a), vec4<bool>(true, true, false, true), Struct_1(33577u, vec2<bool>(true, true))), true, Struct_2(Struct_1(var_0, vec2<bool>(true, false)), vec2<i32>(u_input.a, 0i), vec4<bool>(true, false, false, true), Struct_1(21908u, vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1534f, -978f, -1000f))), ~(0u << (var_0 % 32u)))));
    global0 = 1i;
    var var_2 = _wgslsmith_mod_i32(-(~u_input.a), ~select(global2.x, ~17147i, false)) >> (var_1.a.a % 32u);
    global2 = func_5(var_1.b, func_4(0u, var_1.d).c, ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_1.d.a, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(0u, var_1.a.a), vec2<u32>(4294967295u, var_0))), vec2<u32>(_wgslsmith_mult_u32(var_1.d.a, 0u), var_1.d.a >> (var_0 % 32u)))).b;
    let var_3 = Struct_1(1u, func_5(var_1.b, select(!(!var_1.c), var_1.c, ~44955u >= _wgslsmith_mod_u32(var_0, var_1.d.a)), ~vec2<u32>(1u, 1u)).d.b);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(289f - -1332f)))))));
    let var_5 = func_5(~(-firstLeadingBit(~var_1.b)), vec4<bool>(var_1.a.b.x, 566f == var_4, any(var_1.c), !var_1.c.x), vec2<u32>(40057u, 1u)).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_5.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(30946u, 30859u), vec2<u32>(1u, 6728u))), ~(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a, 26486u, 4982u), vec3<u32>(var_1.a.a, 6609u, var_1.a.a)) >> (reverseBits(vec3<u32>(var_5.a, 12879u, var_1.d.a)) % vec3<u32>(32u)))), var_3.a, ~countOneBits(select(select(vec3<i32>(global2.x, 3978i, 23900i), vec3<i32>(-21037i, var_1.b.x, var_1.b.x), false), vec3<i32>(global2.x, -25605i, var_1.b.x), var_1.c.xxy)));
}

