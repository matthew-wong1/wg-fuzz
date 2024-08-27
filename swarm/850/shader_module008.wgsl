struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = !select(select(vec3<bool>(arg_1.e.c >= -896f, all(vec4<bool>(arg_1.c, arg_1.c, false, arg_1.c)), arg_1.c), select(select(vec3<bool>(false, arg_1.c, true), vec3<bool>(true, arg_0.c, arg_0.c), false), vec3<bool>(true, true, true), arg_1.c), select(select(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(true, false, arg_0.c), false), select(vec3<bool>(false, arg_0.c, true), vec3<bool>(arg_0.c, true, true), vec3<bool>(arg_1.c, arg_0.c, false)), any(vec2<bool>(true, true)))), select(select(vec3<bool>(arg_1.c, arg_1.c, false), select(vec3<bool>(arg_1.c, arg_0.c, true), vec3<bool>(arg_0.c, arg_0.c, true), vec3<bool>(true, arg_1.c, arg_0.c)), !vec3<bool>(arg_1.c, false, false)), vec3<bool>(true, false, true), vec3<bool>(all(vec3<bool>(arg_1.c, arg_0.c, arg_1.c)), false, true)), select(select(vec3<bool>(arg_0.c, arg_0.c, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, arg_0.c), vec3<bool>(false, arg_1.c, arg_0.c)), select(vec3<bool>(arg_0.c, true, arg_1.c), vec3<bool>(true, true, true), false)), vec3<bool>(2147483647i >= arg_0.b.x, false, true), !any(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c))));
    let var_1 = Struct_2(Struct_1(arg_1.e.a, _wgslsmith_f_op_f32(sign(1093f)), -468f, ~(~arg_0.d.d)), arg_0.b, all(vec4<bool>(all(var_0.zx), arg_0.c, false, var_0.x)), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(831f, _wgslsmith_f_op_f32(min(577f, arg_0.e.c))), _wgslsmith_f_op_f32(step(arg_0.d.c, _wgslsmith_f_op_f32(-424f - arg_1.e.a))))), _wgslsmith_f_op_f32(-arg_1.e.c), _wgslsmith_f_op_f32(-1000f - arg_0.d.c), min(arg_0.e.d & 49030u, arg_0.e.d) << (u_input.a % 32u)), arg_1.d);
    var var_2 = arg_1.b.x;
    var var_3 = var_1.c;
    var var_4 = countOneBits(-2147483647i);
    return ~1u;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 533f)) - 1000f))));
    var var_1 = countOneBits(~(i32(-1i) * -1i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), _wgslsmith_f_op_f32(-var_0.x), 396f, u_input.a);
    return Struct_1(-578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -661f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a + 1954f), _wgslsmith_f_op_f32(select(var_0.x, 250f, false))))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, var_2.d, 0u, var_2.d)), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)) >> (reverseBits(func_3(Struct_2(Struct_1(2232f, var_0.x, var_0.x, 4294967295u), vec2<i32>(-6317i, 2147483647i), false, Struct_1(1047f, var_2.b, -355f, 37717u), Struct_1(var_2.c, -884f, var_2.c, 1u)), Struct_2(Struct_1(773f, -1012f, var_2.b, 46571u), vec2<i32>(1i, -14739i), true, Struct_1(-1000f, -138f, var_2.c, 0u), Struct_1(var_2.b, var_0.x, var_0.x, 0u)))) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1275f * arg_0.d.a), arg_0.d.a, arg_0.d.b);
    let var_1 = var_0.x;
    var var_2 = Struct_2(arg_0.a, arg_0.b, var_1 < var_0.x, arg_0.d, func_2());
    let var_3 = arg_0.b.x;
    var var_4 = func_2();
    return Struct_2(func_2(), _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(var_2.b, var_2.b, vec2<i32>(8590i, var_3))), abs(-var_2.b)) | _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), -vec2<i32>(-31076i, arg_1) & vec2<i32>(-1i, var_3)), select(false, false && select(true, true, true), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-105f))), _wgslsmith_f_op_f32(arg_0.e.b + _wgslsmith_f_op_f32(-277f - 1545f)))), var_1, u_input.a), arg_0.d);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(890f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f), _wgslsmith_f_op_f32(f32(-1f) * -1212f)), 1f, reverseBits(_wgslsmith_mult_u32(u_input.a, u_input.a))), vec2<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-7532i, -27095i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 3275i), vec2<i32>(-16112i, -54050i)))), select(select(var_0, var_0 & false, !var_0), any(select(vec3<bool>(true, var_0, true), vec3<bool>(true, var_0, false), vec3<bool>(var_0, true, var_0))), var_0), func_2(), Struct_1(-1000f, _wgslsmith_f_op_f32(min(-1389f, _wgslsmith_f_op_f32(-506f * -235f))), _wgslsmith_f_op_f32(-920f + -799f), u_input.a)), -1i << (min(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 0u), u_input.a)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.c)));
    var_1 = Struct_2(var_1.a, vec2<i32>(max(var_1.b.x, 24179i), _wgslsmith_mod_i32(~1i << (u_input.a % 32u), 1i ^ -var_1.b.x)), all(select(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), false), !select(vec2<bool>(var_0, var_0), vec2<bool>(var_1.c, true), var_0), !(!vec2<bool>(var_0, false)))), func_4(func_4(func_4(func_4(Struct_2(Struct_1(810f, -1297f, 1086f, u_input.a), vec2<i32>(-42163i, var_1.b.x), false, var_1.d, Struct_1(var_1.d.b, var_1.e.b, var_1.e.a, 4294967295u)), var_1.b.x), 45212i), reverseBits(var_1.b.x)), firstLeadingBit(2147483647i)).e, func_4(func_4(Struct_2(var_1.e, var_1.b << (vec2<u32>(var_1.a.d, u_input.a) % vec2<u32>(32u)), var_1.c | var_0, func_2(), func_2()), _wgslsmith_clamp_i32(1i, var_1.b.x, var_1.b.x) << (~4294967295u % 32u)), min(1i, -(var_1.b.x << (var_1.e.d % 32u)))).d);
    let var_3 = -21456i >> (~var_1.e.d % 32u);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), vec2<i32>(_wgslsmith_mod_i32(~select(-1i, 0i, false), min(0i, -25890i >> (u_input.a % 32u))), 48075i), false, func_2(), func_1());
    let var_1 = Struct_1(var_0.a.b, _wgslsmith_f_op_f32(-var_0.d.a), var_0.a.c, countOneBits(var_0.a.d));
    var var_2 = func_4(var_0, var_0.b.x);
    let var_3 = vec4<u32>(max(max(23926u, 4294967295u), var_2.d.d), ~_wgslsmith_clamp_u32(~0u, u_input.a, var_0.e.d >> (6121u % 32u)), var_0.e.d, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_add_u32(~0u, ~var_1.d), func_1().d)) << (vec4<u32>(func_4(Struct_2(var_0.e, var_2.b | var_2.b, false, var_0.a, Struct_1(var_1.b, var_1.b, 1148f, var_1.d)), _wgslsmith_div_i32(countOneBits(1i), var_2.b.x)).a.d, var_2.d.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.d, max(4294967295u, 4294967295u)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.d.d, 0u), vec2<u32>(7446u, var_1.d), vec2<u32>(var_2.d.d, 0u)), abs(vec2<u32>(var_0.a.d, 1u)))), var_1.d) % vec4<u32>(32u));
    var var_4 = var_0;
    let var_5 = ~(~(-463i));
    let var_6 = Struct_2(Struct_1(var_1.c, var_0.a.c, 1130f, ~0u), -(~(-(var_0.b | var_4.b))), true, var_0.e, Struct_1(-256f, var_2.d.b, var_1.c, 4294967295u));
    var_4 = Struct_2(Struct_1(-722f, _wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(-var_6.a.a)), _wgslsmith_f_op_f32(var_2.d.a - 229f), 4294967295u), var_0.b, ~var_0.b.x != var_4.b.x, func_1(), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.c - -1112f))), _wgslsmith_f_op_f32(exp2(var_0.e.a))));
}

