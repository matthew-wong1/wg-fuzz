struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<bool> {
    var var_0 = 578f;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(551f, -1485f, arg_0, 1185f), _wgslsmith_div_vec4_f32(vec4<f32>(444f, 419f, -190f, -1045f), vec4<f32>(1844f, arg_0, arg_0, arg_0))) * vec4<f32>(-329f, 372f, _wgslsmith_f_op_f32(f32(-1f) * -445f), -422f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -554f, -732f, 474f) * vec4<f32>(-818f, -141f, arg_0, -397f)))))))), !(true || (arg_1 <= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.b.x, arg_1)))));
    var_0 = _wgslsmith_f_op_f32(step(arg_0, var_1.a.x));
    var_0 = -157f;
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(506f, 2020f, arg_0, var_1.a.x))) * var_1.a)) - vec4<f32>(arg_0, var_1.a.x, 1736f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(291f)) + arg_0))), false);
    return vec4<bool>(!any(select(select(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, true, true, false), true), select(vec4<bool>(var_1.b, true, false, false), vec4<bool>(false, var_1.b, var_1.b, var_1.b), var_1.b), true)), true, false, !any(!select(vec4<bool>(true, true, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), var_1.b)));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = 14647i;
    var_0 = abs(arg_1.x);
    var_0 = -_wgslsmith_add_i32(-1i | ~_wgslsmith_mult_i32(-1i, arg_0), u_input.a);
    var_0 = _wgslsmith_mult_i32(~(-min(arg_2.a.x, u_input.a)), arg_1.x << (u_input.b.x % 32u)) ^ -9454i;
    let var_1 = !func_3(_wgslsmith_div_f32(-387f, -440f), u_input.b.x);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b + arg_2.b)), !func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.d.x))), ~u_input.b.x).x);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(vec4<i32>((i32(-1i) * -35163i) ^ _wgslsmith_sub_i32(countOneBits(u_input.a), u_input.a), ~(_wgslsmith_mod_i32(u_input.a, -1i) & reverseBits(u_input.a)), countOneBits(-44199i), u_input.a), vec4<f32>(805f, -1985f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.a.x, arg_1.x), arg_1.x))), arg_2.a.x), vec3<bool>(!func_3(-178f, ~1562u).x, arg_0.b, func_2(-u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, 16155i), vec3<i32>(-2147483647i, 10191i, u_input.a)), Struct_1(vec4<i32>(29469i, -4390i, 2147483647i, -32763i), arg_0.a, vec3<bool>(true, arg_2.b, arg_2.b), arg_0.a.xx), _wgslsmith_f_op_f32(-arg_1.x)).b != !arg_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1013f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.d.x);
    let var_2 = Struct_2(Struct_1(vec4<i32>(u_input.a, 5983i, _wgslsmith_mod_i32(-1i, -u_input.a), _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(-31194i, 7674i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, 854f, arg_2.a.x, -185f) * vec4<f32>(var_0.b.x, arg_2.a.x, var_0.d.x, 846f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_2.a.x, 256f, arg_2.a.x)))), select(var_0.c, select(func_3(907f, u_input.b.x).yyx, select(vec3<bool>(true, false, arg_2.b), vec3<bool>(true, false, true), var_0.c), !var_0.c), true), _wgslsmith_f_op_vec2_f32(step(var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.yy)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, var_0.b.x), vec2<f32>(arg_1.x, var_0.d.x), var_0.c.zy)))))));
    var var_3 = all(vec3<bool>(false, !func_2(u_input.a, var_0.a.yww, var_2.a, 244f).b & arg_2.b, !(arg_2.b | var_2.a.c.x)));
    var_3 = var_0.c.x;
    return !(!func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-306f, 145f) + _wgslsmith_f_op_f32(floor(747f))), 1u).wz);
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_2.c;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - -457f);
    let var_3 = arg_3;
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = func_2(_wgslsmith_div_i32(-(~u_input.a), arg_2.a.x), arg_1.a.wyw, func_5(vec2<bool>(_wgslsmith_f_op_f32(1774f * -1923f) == _wgslsmith_f_op_f32(arg_3.a.x - -348f), 1i != _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.a.x), vec2<i32>(-5141i, -2147483647i))), arg_1.a.x, arg_1, func_2(min(firstLeadingBit(4025i), ~(-1i)), arg_2.a.yzw & arg_2.a.zyw, func_5(select(vec2<bool>(true, false), arg_2.c.xx, vec2<bool>(arg_1.c.x, arg_1.c.x)), abs(0i), Struct_1(arg_1.a, vec4<f32>(arg_3.a.x, -479f, 962f, arg_2.b.x), vec3<bool>(false, false, arg_1.c.x), arg_3.a.yz), arg_3), _wgslsmith_f_op_f32(arg_3.a.x + _wgslsmith_f_op_f32(abs(-690f))))), _wgslsmith_f_op_f32(-1110f * 1151f));
    let var_1 = func_5(func_5(vec2<bool>(arg_2.c.x, true), _wgslsmith_clamp_i32(u_input.a, ~(arg_1.a.x << (arg_0 % 32u)), ~(0i << (arg_0 % 32u))), func_5(arg_2.c.zy, ~arg_2.a.x, func_5(vec2<bool>(true, var_0.b), 1i, func_5(arg_1.c.xx, 19172i, Struct_1(vec4<i32>(-10572i, arg_1.a.x, arg_2.a.x, -7013i), vec4<f32>(arg_1.d.x, -819f, var_0.a.x, -1000f), vec3<bool>(var_0.b, arg_3.b, false), vec2<f32>(-1955f, -448f)), arg_3), Struct_3(arg_1.b, true)), func_2(firstTrailingBit(-1i), -vec3<i32>(u_input.a, -3503i, -2147483647i), arg_2, 1020f)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.d.x), _wgslsmith_f_op_f32(floor(1000f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -282f)), func_3(_wgslsmith_f_op_f32(1933f * arg_2.d.x), u_input.b.x).x)).c.xy, ~arg_2.a.x >> (83233u % 32u), Struct_1(_wgslsmith_div_vec4_i32(-arg_1.a, arg_2.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-109f, -1000f, arg_2.b.x, arg_2.d.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.d.x, arg_3.a.x, arg_2.d.x, -1580f), vec4<f32>(472f, arg_3.a.x, arg_2.d.x, 168f), vec4<bool>(false, true, var_0.b, true)))))), select(vec3<bool>(true, !var_0.b, true), vec3<bool>(var_0.b, false, true), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a.xy * vec2<f32>(-1071f, arg_3.a.x))))), func_2(u_input.a, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(7852i, 1i, 1i), vec3<i32>(-2147483647i, arg_2.a.x, -53930i) >> (vec3<u32>(u_input.b.x, 0u, 69279u) % vec3<u32>(32u)))), arg_2, arg_2.b.x));
    var var_2 = func_5(select(func_5(!arg_1.c.zz, func_5(vec2<bool>(true, true), -1i, Struct_1(arg_1.a, arg_1.b, vec3<bool>(arg_3.b, false, var_0.b), vec2<f32>(var_0.a.x, arg_3.a.x)), func_2(2147483647i, arg_2.a.yyw, Struct_1(arg_1.a, vec4<f32>(-1978f, -501f, 1109f, 1513f), vec3<bool>(false, false, true), vec2<f32>(938f, 470f)), -651f)).a.x, Struct_1(vec4<i32>(2147483647i, arg_1.a.x, arg_2.a.x, arg_1.a.x), vec4<f32>(var_0.a.x, -427f, var_1.b.x, -447f), func_5(arg_1.c.xz, arg_1.a.x, arg_1, arg_3).c, var_0.a.yx), func_2(-arg_2.a.x, vec3<i32>(u_input.a, arg_1.a.x, -11784i) << (vec3<u32>(66743u, 0u, 1u) % vec3<u32>(32u)), func_5(var_1.c.yy, -1i, arg_2, Struct_3(vec4<f32>(1000f, -756f, -506f, -883f), arg_2.c.x)), -1690f)).c.yz, vec2<bool>(arg_1.c.x, true), !func_5(select(vec2<bool>(var_0.b, true), vec2<bool>(var_1.c.x, var_0.b), arg_1.c.yz), 0i, arg_1, Struct_3(arg_3.a, arg_1.c.x)).c.yx), -13642i, var_1, func_2(countOneBits(~(~12920i)), var_1.a.yzy, func_5(func_4(arg_3, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(855f, -1000f, -364f), vec3<f32>(-506f, -751f, 794f))), func_2(31398i, vec3<i32>(u_input.a, -23312i, var_1.a.x), arg_2, 1759f)), 1i, Struct_1(vec4<i32>(arg_1.a.x, u_input.a, arg_1.a.x, 1i) << (vec4<u32>(0u, arg_0, arg_0, arg_0) % vec4<u32>(32u)), arg_2.b, !arg_2.c, _wgslsmith_f_op_vec2_f32(sign(var_0.a.yw))), Struct_3(vec4<f32>(var_0.a.x, 210f, var_0.a.x, 1234f), false)), -1000f));
    let var_3 = Struct_2(var_1);
    var var_4 = func_5(vec2<bool>(true, var_0.b), -(~arg_1.a.x), func_5(func_4(Struct_3(vec4<f32>(var_2.d.x, -1377f, var_1.d.x, arg_1.d.x), all(vec4<bool>(var_3.a.c.x, true, arg_3.b, var_2.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b.zwz))), arg_3), _wgslsmith_div_i32(~abs(25378i), arg_2.a.x), arg_1, func_2(-31191i, var_2.a.zww, func_5(arg_1.c.yz, 1i, var_3.a, Struct_3(var_1.b, var_3.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1087f - -1000f)))), func_2(-(30917i << (1u % 32u)), vec3<i32>(min(reverseBits(1i), u_input.a), 2147483647i, _wgslsmith_div_i32(arg_1.a.x & 5068i, 35968i)), Struct_1(reverseBits(select(vec4<i32>(var_3.a.a.x, 1i, var_2.a.x, -27844i), var_1.a, var_3.a.c.x)), vec4<f32>(var_0.a.x, 209f, arg_2.b.x, var_0.a.x), vec3<bool>(var_2.c.x, all(vec2<bool>(false, false)), var_2.c.x), _wgslsmith_f_op_vec2_f32(exp2(var_2.b.yy))), -1000f));
    return func_2(~arg_1.a.x, _wgslsmith_div_vec3_i32(arg_2.a.zzy, vec3<i32>(reverseBits(~arg_1.a.x), max(firstTrailingBit(arg_2.a.x), _wgslsmith_sub_i32(10840i, 2147483647i)), -(~(-49333i)))), func_5(!(!(!var_1.c.xz)), 8880i, var_1, func_2(var_1.a.x, _wgslsmith_sub_vec3_i32(min(var_2.a.zxw, vec3<i32>(arg_2.a.x, 54734i, var_4.a.x)), arg_2.a.wxw), var_1, arg_2.d.x)), _wgslsmith_f_op_f32(trunc(1374f)));
}

fn func_1() -> vec4<i32> {
    let var_0 = !(!select(vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(false, false, true, false)), true, true), vec3<bool>(true, select(true, false, false), all(vec3<bool>(true, false, false)))));
    let var_1 = func_6(reverseBits(u_input.b.x), func_5(func_4(func_2(abs(1i), firstLeadingBit(vec3<i32>(-13551i, u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.a, -5754i, u_input.a, u_input.a), vec4<f32>(-1654f, -1174f, 210f, 1800f), var_0, vec2<f32>(-261f, -208f)), -611f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1366f, 102f, -340f) * vec3<f32>(-825f, -286f, -291f))), func_2(_wgslsmith_add_i32(-2147483647i, u_input.a), vec3<i32>(u_input.a, 0i, 1i) >> (vec3<u32>(22961u, 39196u, u_input.b.x) % vec3<u32>(32u)), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), vec4<f32>(-1000f, -979f, 564f, 106f), var_0, vec2<f32>(-324f, -1305f)), -1435f)), _wgslsmith_clamp_i32(~u_input.a, -1i, -29809i), Struct_1(max(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-838f, -883f, -691f, 398f), vec4<f32>(-456f, 334f, 1101f, -907f), vec4<bool>(true, false, var_0.x, var_0.x)))), vec3<bool>(all(var_0.yx), !var_0.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, -663f) + vec2<f32>(1496f, 1445f)))), Struct_3(vec4<f32>(-779f, -724f, _wgslsmith_f_op_f32(1000f * -2472f), _wgslsmith_f_op_f32(-725f * -308f)), !(!var_0.x))), Struct_1(countOneBits(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), vec4<f32>(-1761f, _wgslsmith_f_op_f32(f32(-1f) * -497f), 173f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(373f - 1000f)))), vec3<bool>(any(!vec4<bool>(true, false, var_0.x, var_0.x)), !(!var_0.x), func_2(_wgslsmith_mod_i32(0i, u_input.a), ~vec3<i32>(-20298i, 15366i, u_input.a), Struct_1(vec4<i32>(19646i, 21308i, 83598i, 43239i), vec4<f32>(283f, 203f, 2182f, -213f), var_0, vec2<f32>(1130f, 153f)), -1171f).b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(min(121f, _wgslsmith_f_op_f32(-1459f + 257f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1184f)))), _wgslsmith_f_op_f32(abs(943f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) - 248f)), u_input.b.x != _wgslsmith_mod_u32(_wgslsmith_sub_u32(30562u, u_input.b.x), _wgslsmith_div_u32(73105u, u_input.b.x))));
    return -_wgslsmith_sub_vec4_i32(vec4<i32>(4341i, firstTrailingBit(u_input.a) << (20868u % 32u), countOneBits(-19645i), -(i32(-1i) * -1i)), vec4<i32>(min(0i, reverseBits(u_input.a)), ~_wgslsmith_div_i32(u_input.a, u_input.a), abs(-35977i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, 39902i, u_input.a, -10687i))));
}

fn func_7(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(arg_1, ~vec4<i32>(u_input.a, u_input.a, u_input.a, 6325i)), func_5(select(func_3(arg_0, 0u).wx, func_4(Struct_3(vec4<f32>(472f, arg_0, arg_0, -1140f), true), vec3<f32>(arg_0, -589f, arg_0), Struct_3(vec4<f32>(-187f, -875f, arg_0, arg_0), false)), true), -1i, func_5(vec2<bool>(true, true), u_input.a, func_5(vec2<bool>(true, true), arg_1.x, Struct_1(arg_1, vec4<f32>(arg_0, -742f, arg_0, -1229f), vec3<bool>(false, true, true), vec2<f32>(arg_0, arg_0)), Struct_3(vec4<f32>(arg_0, arg_0, arg_0, 1402f), true)), func_6(u_input.b.x, Struct_1(arg_1, vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<bool>(true, true, false), vec2<f32>(688f, arg_0)), Struct_1(arg_1, vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<bool>(true, true, true), vec2<f32>(-125f, 785f)), Struct_3(vec4<f32>(arg_0, arg_0, 1644f, -1200f), true))), func_2(arg_1.x, arg_1.xyy, Struct_1(arg_1, vec4<f32>(937f, -195f, arg_0, arg_0), vec3<bool>(false, false, true), vec2<f32>(arg_0, arg_0)), arg_0)).b, func_5(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), -74398i, Struct_1(vec4<i32>(32575i, 2147483647i, 0i, -1i), vec4<f32>(arg_0, -328f, arg_0, 1017f), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))), func_2(_wgslsmith_mult_i32(16485i, arg_1.x), arg_1.yzx, func_5(vec2<bool>(true, false), u_input.a, Struct_1(arg_1, vec4<f32>(-103f, arg_0, arg_0, arg_0), vec3<bool>(true, true, false), vec2<f32>(arg_0, -803f)), Struct_3(vec4<f32>(-1570f, -112f, 1228f, arg_0), true)), _wgslsmith_div_f32(arg_0, -172f))).c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, arg_0))), _wgslsmith_div_vec2_f32(vec2<f32>(-1098f, 2638f), vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), func_4(func_2(-2147483647i, vec3<i32>(-1i, arg_1.x, u_input.a), Struct_1(vec4<i32>(-1i, -1i, 56734i, arg_1.x), vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<bool>(false, false, false), vec2<f32>(arg_0, arg_0)), 620f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 215f)), func_2(1i, arg_1.xwy, Struct_1(arg_1, vec4<f32>(arg_0, -1132f, -151f, -206f), vec3<bool>(true, true, false), vec2<f32>(arg_0, arg_0)), 667f))))));
    var_0 = Struct_2(func_5(select(select(var_0.a.c.zx, func_3(-401f, 1u).zx, func_3(var_0.a.b.x, 1u).wz), func_5(vec2<bool>(true, var_0.a.c.x), u_input.a << (28637u % 32u), func_5(var_0.a.c.yx, arg_1.x, Struct_1(vec4<i32>(-12448i, arg_1.x, 1i, arg_1.x), vec4<f32>(var_0.a.b.x, var_0.a.d.x, var_0.a.b.x, arg_0), vec3<bool>(false, var_0.a.c.x, false), vec2<f32>(-1000f, -1000f)), Struct_3(vec4<f32>(arg_0, arg_0, var_0.a.d.x, var_0.a.b.x), var_0.a.c.x)), func_2(4707i, var_0.a.a.zzw, Struct_1(vec4<i32>(u_input.a, u_input.a, 15900i, u_input.a), vec4<f32>(arg_0, var_0.a.b.x, 925f, -788f), vec3<bool>(var_0.a.c.x, false, var_0.a.c.x), vec2<f32>(362f, 913f)), 1903f)).c.xz, func_5(vec2<bool>(var_0.a.c.x, true), _wgslsmith_clamp_i32(var_0.a.a.x, u_input.a, 29585i), func_5(var_0.a.c.yz, arg_1.x, var_0.a, Struct_3(var_0.a.b, var_0.a.c.x)), func_2(-13315i, var_0.a.a.wzy, Struct_1(vec4<i32>(u_input.a, var_0.a.a.x, 0i, var_0.a.a.x), var_0.a.b, var_0.a.c, vec2<f32>(-523f, arg_0)), 1583f)).c.zx), 1051i, var_0.a, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, arg_0, var_0.a.d.x, var_0.a.b.x))), !(false != var_0.a.c.x))));
    var var_1 = Struct_2(Struct_1(countOneBits(select(countOneBits(arg_1), ~vec4<i32>(arg_1.x, u_input.a, u_input.a, var_0.a.a.x), !vec4<bool>(true, true, var_0.a.c.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(244f, arg_0, false)), var_0.a.b.x, _wgslsmith_f_op_f32(step(var_0.a.b.x, 183f)), var_0.a.d.x)), vec3<bool>(func_4(func_2(arg_1.x, vec3<i32>(3050i, -45391i, 2147483647i), var_0.a, var_0.a.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, var_0.a.b.x, -107f)), func_2(var_0.a.a.x, vec3<i32>(arg_1.x, var_0.a.a.x, u_input.a), var_0.a, arg_0)).x, var_0.a.c.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, 741f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.d.x, -609f))))));
    var_1 = Struct_2(func_5(!func_3(var_1.a.d.x, u_input.b.x).yx, _wgslsmith_dot_vec4_i32(var_0.a.a, -var_0.a.a), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-19345i, -52237i, arg_1.x, arg_1.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 35581u, u_input.b.x) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a, -2147483647i, -28627i, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, var_1.a.b.x, 970f, var_0.a.b.x)), !var_1.a.c, vec2<f32>(_wgslsmith_f_op_f32(sign(1483f)), _wgslsmith_div_f32(111f, arg_0))), Struct_3(var_0.a.b, var_1.a.c.x)));
    var_1 = Struct_2(func_5(!vec2<bool>(all(var_1.a.c.zy), func_5(vec2<bool>(true, var_1.a.c.x), u_input.a, Struct_1(vec4<i32>(1i, 10238i, arg_1.x, arg_1.x), vec4<f32>(var_1.a.d.x, var_1.a.b.x, var_1.a.d.x, var_1.a.b.x), var_1.a.c, var_1.a.b.wx), Struct_3(var_0.a.b, false)).c.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(5767i, var_0.a.a.x, arg_1.x >> (0u % 32u)), 1i), Struct_1(firstLeadingBit(abs(vec4<i32>(51462i, arg_1.x, -60489i, -5887i))), _wgslsmith_f_op_vec4_f32(-var_1.a.b), func_3(1576f, u_input.b.x).wzz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.a.d)))), Struct_3(var_1.a.b, func_4(func_6(1u, var_0.a, Struct_1(var_0.a.a, vec4<f32>(arg_0, 370f, var_1.a.b.x, var_1.a.d.x), vec3<bool>(var_0.a.c.x, var_1.a.c.x, true), var_0.a.d), Struct_3(vec4<f32>(-1000f, 264f, 2556f, var_0.a.d.x), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2260f, 1000f, 727f)), Struct_3(var_1.a.b, var_1.a.c.x)).x)));
    return Struct_2(func_5(var_1.a.c.xx, -1i, func_5(func_4(Struct_3(var_0.a.b, var_0.a.c.x), var_0.a.b.xxw, Struct_3(var_0.a.b, var_0.a.c.x)), _wgslsmith_sub_i32(func_5(vec2<bool>(var_0.a.c.x, false), -2147483647i, var_0.a, Struct_3(var_1.a.b, var_1.a.c.x)).a.x, _wgslsmith_sub_i32(-17074i, var_0.a.a.x)), func_5(!vec2<bool>(false, var_1.a.c.x), -9003i, var_1.a, Struct_3(var_0.a.b, false)), Struct_3(vec4<f32>(var_1.a.b.x, var_1.a.d.x, var_0.a.d.x, 590f), false)), Struct_3(vec4<f32>(103f, 544f, _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(max(-558f, var_0.a.b.x))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(-134f, func_1());
    var_0 = func_7(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d.x, func_6(1035u, var_0.a, var_0.a, func_6(u_input.b.x, Struct_1(var_0.a.a, vec4<f32>(576f, -186f, -1000f, -422f), var_0.a.c, vec2<f32>(-836f, var_0.a.b.x)), var_0.a, Struct_3(vec4<f32>(var_0.a.b.x, var_0.a.d.x, -1747f, 1009f), var_0.a.c.x))).a.x) + var_0.a.d.x), -_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 1i, 1i, var_0.a.a.x) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-21591i, 0i, 0i, -2147483647i), var_0.a.a, var_0.a.a), _wgslsmith_div_vec4_i32(-vec4<i32>(-56412i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, var_0.a.a.x, -27703i, var_0.a.a.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-func_6(u_input.b.x, var_0.a, Struct_1(var_0.a.a, var_0.a.b, vec3<bool>(all(var_0.a.c.zx), var_0.a.b.x > var_0.a.d.x, var_0.a.c.x & true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b.xx) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.d.x, var_0.a.d.x)))), Struct_3(var_0.a.b, var_0.a.c.x)).a.zw);
    var_0 = Struct_2(var_0.a);
    var_0 = func_7(var_1.x, max(-(countOneBits(vec4<i32>(3783i, 9493i, 0i, 0i)) & min(vec4<i32>(var_0.a.a.x, -66173i, 16694i, 2147483647i), var_0.a.a)), var_0.a.a));
    var var_2 = func_6(~(~23804u), func_5(var_0.a.c.zx, -31988i, var_0.a, Struct_3(var_0.a.b, func_6(1u, Struct_1(var_0.a.a, var_0.a.b, vec3<bool>(var_0.a.c.x, false, var_0.a.c.x), var_1), Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, var_1), Struct_3(vec4<f32>(var_0.a.b.x, -1000f, -868f, var_1.x), var_0.a.c.x)).b)), var_0.a, func_6(42796u, func_7(var_0.a.d.x, vec4<i32>(u_input.a, abs(u_input.a), 23306i, ~0i)).a, Struct_1(vec4<i32>(2494i, 1i, _wgslsmith_sub_i32(-2147483647i, var_0.a.a.x), ~var_0.a.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1478f, var_0.a.d.x, var_1.x, -537f), vec4<f32>(466f, -248f, -1541f, -3462f)), var_0.a.b), var_0.a.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, -635f))), Struct_3(func_5(func_7(var_1.x, var_0.a.a).a.c.xy, 1i, var_0.a, func_2(u_input.a, vec3<i32>(-11674i, 39942i, 2147483647i), var_0.a, 213f)).b, !var_0.a.c.x | (true || var_0.a.c.x))));
    var var_3 = Struct_2(func_7(_wgslsmith_f_op_f32(-var_0.a.b.x), select(abs(max(vec4<i32>(-47490i, -22579i, 31764i, -34388i), vec4<i32>(u_input.a, var_0.a.a.x, 0i, var_0.a.a.x))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_0.a.a.x, u_input.a, -1i), vec4<i32>(-38518i, -1275i, -2147483647i, var_0.a.a.x)), var_2.a.x == _wgslsmith_f_op_f32(floor(-935f)))).a);
    let var_4 = 653f;
    var_3 = func_7(_wgslsmith_f_op_f32(abs(var_1.x)), var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4 - var_0.a.b.x), _wgslsmith_f_op_f32(var_4 * func_6(firstLeadingBit(~0u), Struct_1(vec4<i32>(u_input.a, var_3.a.a.x, 10980i, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, -649f, 177f, var_0.a.b.x) * vec4<f32>(-1055f, var_4, var_0.a.b.x, var_4)), !var_3.a.c, vec2<f32>(-2191f, 1935f)), var_0.a, func_2(_wgslsmith_add_i32(var_3.a.a.x, u_input.a), vec3<i32>(1i, var_3.a.a.x, 1i), func_5(vec2<bool>(true, var_3.a.c.x), var_3.a.a.x, var_3.a, Struct_3(var_0.a.b, true)), _wgslsmith_f_op_f32(var_3.a.b.x + var_3.a.b.x))).a.x), 1f, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 25068u), firstLeadingBit(u_input.b.x), ~u_input.b.x, 0u), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, 79792u, 27123u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x))) | countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52342u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 52386u, 4294967295u)), u_input.b.x, select(25046u, u_input.b.x, false), countOneBits(u_input.b.x))));
}

