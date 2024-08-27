struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> Struct_3 {
    return Struct_3(0u, select(arg_0, arg_0, arg_0));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(0i);
    let var_1 = Struct_1(-1i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 373f, 1f)))));
    let var_3 = var_1;
    var_0 = Struct_1(reverseBits(var_1.a));
    return -(~var_0.a);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = 90734i;
    global0 = _wgslsmith_mult_i32(func_3(), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-2147483647i, 74158i, 1i)), _wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_0, arg_2.a), vec3<i32>(var_0, var_0, arg_2.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a, -1i, arg_2.a), firstTrailingBit(vec3<i32>(-28514i, var_0, arg_2.a))))));
    global0 = arg_2.a;
    let var_1 = Struct_3(abs(u_input.a.x), select(!(!select(arg_0.b, arg_1.b, vec4<bool>(true, arg_1.b.x, arg_0.b.x, arg_0.b.x))), arg_1.b, !arg_1.b.x));
    var var_2 = Struct_2(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.a, 0i, var_0), vec3<i32>(1i, 14730i, var_0)) << (u_input.b.yyx % vec3<u32>(32u))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(-1i, 2147483647i, -36241i)), var_0 << (var_1.a % 32u), var_0)), Struct_1(firstTrailingBit(-2147483647i)), Struct_1(-60405i), select(vec3<bool>((var_0 | arg_2.a) <= ~var_0, !(!arg_1.b.x), arg_0.b.x), func_1(select(vec4<bool>(arg_1.b.x, arg_0.b.x, arg_1.b.x, var_1.b.x), vec4<bool>(false, true, true, false), false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1815f, 1070f, -126f), vec3<f32>(629f, -150f, 740f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, 264f, -238f)))), true, -2147483647i).b.wyx, arg_0.b.x), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.yzz, ~u_input.b.xzx), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, 34281u, var_1.a), countOneBits(u_input.b.yyy))));
    return var_1.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_3(~4294967295u, select(select(vec4<bool>(0u > u_input.a.x, true, true, true), vec4<bool>(true, false, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0.x, false, false, false), arg_0.x)), func_1(!select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, true, arg_0.x, true), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), -379f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.x, _wgslsmith_mod_i32(-1i, arg_1.a)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1621f)) - 931f) > 1f));
    let var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~28914u, 50978u, 0u), u_input.b.zzz, firstTrailingBit(firstTrailingBit(u_input.b.xzy))), ~u_input.b.zwx);
    var var_2 = vec4<bool>(arg_0.x, !(all(vec3<bool>(true, var_0.b.x, true)) & (true & any(var_0.b))), true, var_0.b.x);
    var var_3 = arg_1;
    global0 = -countOneBits(var_3.a);
    return Struct_3(var_1.x, !var_0.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    global0 = ~_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(1i, ~(-13812i) << (u_input.c % 32u)));
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_sub_i32(select(abs(-2147483647i), -_wgslsmith_div_i32(1i, -82419i), true), -2147483647i));
    var_1 = Struct_1(i32(-1i) * -max(~1472i, min(var_1.a, var_1.a)));
    let var_2 = func_4(!arg_1, Struct_1(var_1.a), _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(min(vec3<i32>(var_1.a, var_1.a, var_1.a), vec3<i32>(9349i, var_1.a, var_1.a)), vec3<i32>(-5396i, var_1.a, -66619i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(var_1.a, 2449i, var_1.a)), abs(vec3<i32>(27211i, var_1.a, var_1.a))), vec3<i32>(-2147483647i << (u_input.c % 32u), ~(-34030i), var_1.a))));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(vec3<bool>(true, func_2(Struct_3(4294967295u, vec4<bool>(true, false, false, false)), func_1(vec4<bool>(true, false, true, true), vec3<f32>(962f, 1962f, -1710f), true, 16658i), Struct_1(0i)), true), Struct_1(-8530i), vec3<i32>(abs(_wgslsmith_mod_i32(-42890i, 2147483647i)), 1i, 1i)), func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(266f, 744f, 738f) - vec3<f32>(-2133f, 232f, 184f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(987f, -556f, -536f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1970f, 1253f))))), !func_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -905f, -210f))), select(false, false, false), max(-2147483647i, 35827i)).b.x, -74732i).b.yzx);
    let var_1 = Struct_2(vec3<i32>(var_0.a, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -49772i) << (u_input.b.zy % vec2<u32>(32u)), countOneBits(vec2<i32>(var_0.a, -3734i)) << (min(vec2<u32>(u_input.b.x, 44268u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), Struct_1(31166i), func_5(Struct_3(u_input.a.x, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false)), vec3<bool>(true, true, true)), vec3<bool>((20534u > (u_input.a.x >> (u_input.c % 32u))) & (abs(1i) < var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(829f))) > 1661f, false), u_input.b.ywz);
    let var_2 = Struct_2(vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(-58877i, var_0.a, var_0.a), 0i), 1i | reverseBits(~var_0.a), 1067i), Struct_1(var_0.a), func_5(func_1(select(select(vec4<bool>(true, var_1.d.x, true, true), vec4<bool>(false, true, var_1.d.x, var_1.d.x), var_1.d.x), !vec4<bool>(true, false, var_1.d.x, true), !var_1.d.x), vec3<f32>(_wgslsmith_f_op_f32(abs(1999f)), _wgslsmith_f_op_f32(sign(-421f)), _wgslsmith_f_op_f32(abs(-228f))), false, var_0.a), vec3<bool>(var_1.d.x, true, (var_0.a ^ var_0.a) > _wgslsmith_div_i32(var_1.a.x, var_1.b.a))), func_1(vec4<bool>(select(func_4(vec3<bool>(true, true, false), Struct_1(var_0.a), vec3<i32>(var_1.b.a, -2147483647i, var_0.a)).b.x, var_1.d.x, var_1.d.x), any(select(vec2<bool>(var_1.d.x, false), var_1.d.zz, vec2<bool>(var_1.d.x, false))), true, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1338f, 1196f, 1251f)))))), !(var_1.d.x != var_1.d.x) & ((var_1.e.x & u_input.c) > _wgslsmith_mult_u32(u_input.c, u_input.b.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(var_1.b.a), select(12461i, var_0.a, var_1.d.x)), abs(-1i))).b.yxy, ~(~(~(~vec3<u32>(4294967295u, var_1.e.x, 78143u)))));
    var_0 = Struct_1(var_2.c.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, -1023f, -1896f)))));
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.x), ~vec4<i32>(countOneBits(-var_0.a), -var_2.b.a ^ 1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a, -57143i), vec2<i32>(var_2.b.a, var_1.c.a)), var_0.a));
}

