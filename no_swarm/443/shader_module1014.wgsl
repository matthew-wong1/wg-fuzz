struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(~1u, arg_0.b, -1219f, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d))))), ~u_input.a.xy | vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, 0i, 18944i)), ~4966i << (arg_0.a % 32u)));
    return ~var_0.e;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    return arg_0.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-170f, arg_0.x)), 351f);
    let var_1 = Struct_1(1u, vec4<bool>(func_4(Struct_1(_wgslsmith_sub_u32(u_input.e, u_input.e), !vec4<bool>(arg_2.x, true, arg_2.x, false), _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_vec2_f32(select(arg_0.xz, vec2<f32>(-537f, 467f), arg_2.zx)), func_3(Struct_1(u_input.e, vec4<bool>(arg_2.x, arg_2.x, arg_1, arg_2.x), arg_0.x, vec2<f32>(arg_0.x, -3309f), vec2<i32>(1i, -34896i)))), vec4<i32>(-52567i, 0i, ~9274i, _wgslsmith_add_i32(1i, -3181i))), arg_1, arg_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(283f)))) == _wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(trunc(-866f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zy * vec2<f32>(1f, 642f))), ~(-u_input.a.zy) ^ -(~u_input.a.yy));
    global0 = var_1.e.x;
    let var_2 = ~(1i & abs(var_1.e.x));
    let var_3 = _wgslsmith_mod_i32(~(-(~(~u_input.c))), u_input.a.x);
    return vec3<i32>(1i, ~_wgslsmith_mod_i32(~var_1.e.x & var_2, i32(-1i) * -11631i), i32(-1i) * -13830i);
}

fn func_5(arg_0: i32) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(false, true, select(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(select(0i, -1i, false) ^ _wgslsmith_add_i32(-1i, arg_0), arg_0), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, -2147483647i, arg_0)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-6741i, arg_0, arg_0, 0i)), reverseBits(-vec4<i32>(u_input.b, -8081i, -1i, 1i)))), -u_input.a);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(926f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1660f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_div_f32(-2061f, -794f), true)))));
    let var_2 = ~countOneBits(min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 14097u, 42891u, 1u), vec4<u32>(u_input.e, 1u, u_input.e, 17012u))), _wgslsmith_add_vec4_u32(vec4<u32>(21207u, 4324u, 29754u, u_input.e), vec4<u32>(89703u, 27338u, 4294967295u, 0u)) & ~vec4<u32>(u_input.e, 1u, u_input.d, u_input.e)));
    var var_3 = Struct_1(1u, vec4<bool>(_wgslsmith_clamp_i32(~47823i, -10300i, 11630i) != 2147483647i, all(vec2<bool>(all(vec3<bool>(false, true, var_0)), var_0)), 1000f < var_1.x, true), -410f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, var_1.x) + vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -542f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 1953f)))))), false)), abs(select(u_input.a.zy, u_input.a.zx, select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(false, var_0)), !vec2<bool>(var_0, var_0)))));
    return Struct_1((11067u & firstLeadingBit(~u_input.e)) >> ((~reverseBits(82077u) & var_3.a) % 32u), !(!var_3.b), var_3.c, vec2<f32>(2645f, 615f), select(vec2<i32>(10379i, var_3.e.x), select(var_3.e >> (_wgslsmith_mult_vec2_u32(var_2.xw, vec2<u32>(33673u, 49753u)) % vec2<u32>(32u)), u_input.a.xy, vec2<bool>(var_0, all(var_3.b.yy))), var_3.b.xx));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.x, -1i, -1i, -35290i), vec4<i32>(1i, u_input.b, 1i, -2147483647i)), 2147483647i), abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-14380i, 0i, arg_1.e.x), u_input.a), 25075i))) >> (arg_3.a % 32u);
    let var_0 = i32(-1i) * -(~(~(-arg_3.e.x)));
    var var_1 = func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, -27165i, arg_1.e.x, arg_0.e.x), abs(vec4<i32>(arg_3.e.x, 996i, arg_3.e.x, 0i)) ^ ~vec4<i32>(2959i, -2147483647i, 35155i, arg_0.e.x)) & ~_wgslsmith_add_i32(3361i, ~(-1i)));
    global0 = _wgslsmith_mod_i32(~(-13895i), 27602i);
    var var_2 = _wgslsmith_f_op_f32(var_1.c - arg_2);
    return Struct_1(reverseBits(arg_3.a), arg_0.b, arg_2, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x * -948f) - _wgslsmith_f_op_f32(-arg_0.c)), arg_2), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1269f))), var_1.d.x))), -(~(~(~u_input.a.yy))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_6(func_5(_wgslsmith_dot_vec3_i32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1495f, 1073f, -729f)), true, select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0, true), false)), u_input.a)), func_5(-u_input.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-641f)) * -130f))))), func_5(u_input.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.d.x, -956f, -945f, 310f), vec4<f32>(var_0.d.x, var_0.c, 243f, -1448f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, var_0.d.x, 1000f, 1409f), vec4<f32>(var_0.c, 558f, 194f, var_0.c))))), !(!var_0.b))))));
    global0 = var_0.e.x;
    let var_2 = -2147483647i;
    var_1 = vec4<f32>(572f, func_6(Struct_1(4294967295u, var_0.b, var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 667f), abs(u_input.a.yy)), var_0, _wgslsmith_f_op_f32(ceil(551f)), Struct_1(_wgslsmith_add_u32(max(u_input.d, 4294967295u), max(50146u, u_input.e)), func_5(var_0.e.x).b, var_0.d.x, vec2<f32>(1000f, _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), vec2<i32>(var_2, _wgslsmith_mod_i32(-2147483647i, var_2)))).c, _wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1000f)), var_0.c) + -1000f));
    return var_0;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_dot_vec4_i32(-min(firstLeadingBit(-vec4<i32>(arg_0.e.x, u_input.c, arg_0.e.x, 44094i)), ~(-vec4<i32>(-62525i, arg_0.e.x, u_input.b, -1i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, arg_0.e.x, 0i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, 2147483647i, arg_0.e.x), vec4<i32>(arg_0.e.x, 2273i, -233i, 46451i)) << (reverseBits(vec4<u32>(0u, u_input.e, 1u, u_input.d)) % vec4<u32>(32u))));
    global0 = 1i;
    let var_0 = func_6(arg_0, Struct_1(func_6(func_6(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0.c), arg_0), arg_0, _wgslsmith_f_op_f32(-453f * arg_0.c), arg_0).a, vec4<bool>(true, false, arg_0.d.x < _wgslsmith_f_op_f32(f32(-1f) * -289f), !arg_0.b.x && false), 1372f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1722f, -994f), vec2<f32>(-652f, arg_0.d.x))), vec2<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_add_i32(u_input.b, arg_0.e.x)), ~(u_input.c << (u_input.d % 32u)))), 1183f, arg_0).b;
    global0 = min(_wgslsmith_add_i32(_wgslsmith_div_i32(~(arg_0.e.x & arg_0.e.x), 2147483647i), arg_0.e.x), -13932i);
    var var_1 = func_5(-(_wgslsmith_clamp_i32(~4194i, -29962i, 6655i) ^ _wgslsmith_clamp_i32(arg_0.e.x & 2147483647i, abs(u_input.c), -arg_0.e.x)));
    return arg_0;
}

fn func_8(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(~(~arg_0.a), vec4<bool>(true || (arg_0.b.x | (828f < arg_0.d.x)), false, any(vec2<bool>(arg_0.b.x && arg_0.b.x, false)), arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -371f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d)), func_3(Struct_1(func_5(2147483647i).a ^ firstLeadingBit(arg_0.a), arg_0.b, _wgslsmith_f_op_f32(func_7(arg_0).d.x + _wgslsmith_f_op_f32(arg_0.d.x - 152f)), arg_0.d, reverseBits(u_input.a.yy) & ~arg_0.e)));
    let var_1 = !var_0.b;
    var var_2 = true;
    var_2 = var_1.x;
    let var_3 = _wgslsmith_clamp_vec3_u32(select(~(~vec3<u32>(u_input.e, u_input.d, var_0.a)), ~(~vec3<u32>(u_input.d, u_input.e, var_0.a)), func_7(arg_0).b.x) >> (~_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(7232u, 1u, arg_0.a)), vec3<u32>(var_0.a, u_input.e, 4294967295u) | vec3<u32>(var_0.a, 3068u, var_0.a), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), ~(~(vec3<u32>(u_input.e, var_0.a, u_input.e) << (vec3<u32>(u_input.e, 0u, var_0.a) % vec3<u32>(32u))) << (abs(~vec3<u32>(0u, 1u, 9141u)) % vec3<u32>(32u))), vec3<u32>(abs(0u), min(12993u, _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(u_input.e, u_input.e))), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.a, 0u), arg_0.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.a, 35447u), arg_0.a))));
    return _wgslsmith_f_op_f32(-397f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * 510f) - _wgslsmith_f_op_f32(576f + arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -64887i;
    let var_0 = _wgslsmith_f_op_f32(func_8(func_7(func_1(false))));
    var var_1 = func_5(7936i);
    var var_2 = _wgslsmith_mod_i32(-11023i << (var_1.a % 32u), _wgslsmith_add_i32(reverseBits(reverseBits(u_input.b) | -1i), ~reverseBits(-u_input.c)));
    let var_3 = reverseBits(~var_1.e.x);
    var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_1.a, abs(u_input.d)));
}

