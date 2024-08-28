struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = -440f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_2)), _wgslsmith_f_op_vec3_f32(-arg_2), vec3<bool>(false, arg_3.x, false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(arg_2)))))))));
    let var_2 = arg_0;
    let var_3 = var_2;
    return _wgslsmith_f_op_f32(var_2.c.a + _wgslsmith_f_op_f32(f32(-1f) * -1006f));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1181f + _wgslsmith_f_op_f32(123f + _wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(40176i, 0i, -2147483647i, 0i), vec3<u32>(arg_0, u_input.b, 1u), Struct_1(arg_1, vec3<bool>(false, true, true), -8018i, vec3<i32>(-3628i, 2147483647i, 23331i))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1078f, arg_1) - vec3<f32>(-564f, -1223f, arg_1)), vec4<bool>(true, true, true, true)))))));
    var var_1 = Struct_2(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(47118i, -48169i, -47793i)), max(25226i, 2147483647i) | _wgslsmith_clamp_i32(24851i, 1i, 3400i), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -16732i, -4762i), vec3<i32>(17664i, 4685i, 8898i)), 1i)), u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1518f, _wgslsmith_f_op_f32(f32(-1f) * -288f)) + _wgslsmith_f_op_f32(f32(-1f) * -1988f)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true)), i32(-1i) * -(6925i >> (arg_0 % 32u)), countOneBits(firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, 0i, 11927i))))));
    let var_2 = u_input.a.x & _wgslsmith_mult_u32(var_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.x, 0u), abs(abs(vec3<u32>(arg_0, 1u, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.a - _wgslsmith_f_op_f32(var_1.c.a * var_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f - arg_1) * var_0)));
    let var_4 = true & !(true && var_1.c.b.x);
    return Struct_2(~abs(vec4<i32>(-2147483647i, -1089i, 0i, -31455i) >> (vec4<u32>(0u, 1u, u_input.b, var_1.b.x) % vec4<u32>(32u))), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(768u, 0u, 59397u), vec3<u32>(arg_0, 4294967295u, var_2)), u_input.a) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, var_1.b.x, 4294967295u), u_input.a), var_1.b) % vec3<u32>(32u)), var_1.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = func_2(~max(0u, ~154u), arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(arg_1.b.x, 163f).c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_3, vec4<bool>(arg_1.c.b.x, false, true, true), vec3<f32>(arg_3.c.a, arg_1.c.a, 954f), vec4<bool>(arg_1.c.b.x, true, var_0.c.b.x, false))))) - -282f));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(~1i, -min(2147483647i, 38498i), -62754i ^ arg_1.c.c, 1i), vec4<i32>(_wgslsmith_div_i32(0i, -var_0.c.d.x), -arg_1.a.x, -22491i, -_wgslsmith_mult_i32(arg_3.a.x, 2147483647i))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1355f, arg_3.c.a, -1664f, 906f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-2543f)), arg_1.c.a, func_2(~1u, _wgslsmith_f_op_f32(-412f + -907f)).c.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), 1636f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_0.c.a, -1996f, -1005f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.a)), arg_3.c.a, _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_div_f32(-977f, var_1)))));
    let var_4 = reverseBits(~1u << (var_0.b.x % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 28866u, 6342u), ~vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b) & select(vec4<u32>(u_input.b, u_input.a.x, 38046u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 10795u, 26758u), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2563f))), -620f)) + -128f));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.a))))))), arg_0.a, 899f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec3<f32>(493f, -1249f, -217f), Struct_2(vec4<i32>(-2147483647i, 1i, -33728i, 3898i), u_input.a, Struct_1(223f, vec3<bool>(false, true, false), 2147483647i, vec3<i32>(31598i, 0i, -1i))), vec4<i32>(2147483647i, -2147483647i, -50951i, -15556i), Struct_2(vec4<i32>(23890i, 10168i, -1i, -2147483647i), vec3<u32>(u_input.b, 98242u, u_input.b), Struct_1(-2134f, vec3<bool>(true, true, false), -2147483647i, vec3<i32>(-1i, 23922i, 12230i))))), _wgslsmith_f_op_f32(1735f - 388f)))), !vec3<bool>(true, u_input.a.x == u_input.a.x, true), 1i, vec3<i32>(~(-15626i), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(0i, -2147483647i, -7371i)), _wgslsmith_add_i32(firstTrailingBit(-1i), -2147483647i))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-189f, -139f, var_0.a), vec3<f32>(var_0.a, var_0.a, 603f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, var_0.a)))), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, var_0.c, 49989i), vec4<i32>(-41807i, -1i, 0i, var_0.d.x)), reverseBits(u_input.a), func_2(23475u, -638f).c), vec4<i32>(i32(-1i) * -38091i, var_0.d.x << (u_input.a.x % 32u), min(var_0.c, var_0.c), 1i), func_2(~55148u, -241f))), var_0.a), select(!(!var_0.b), var_0.b, vec3<bool>(!var_0.b.x | any(var_0.b), 675f >= _wgslsmith_f_op_f32(-var_0.a), !all(vec2<bool>(false, var_0.b.x)))), func_2(~(u_input.a.x ^ 4056u), var_0.a).c.d.x >> (~u_input.a.x % 32u), ~(~max(func_2(u_input.a.x, 278f).c.d, ~var_0.d)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(func_4(func_4(func_2(6995u, var_0.a).c)).a, -278f)), var_0.b, ~var_0.c, ~abs(select(var_0.d, vec3<i32>(-48143i, var_0.c, -2147483647i), var_0.b)));
    let var_1 = func_2(u_input.b, func_4(func_4(func_2(4294967295u, _wgslsmith_f_op_f32(min(544f, 196f))).c)).a);
    var var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(min(vec2<u32>(48011u, u_input.b), vec2<u32>(u_input.b, 7134u)), var_1.b.yz) & ~u_input.a.xy, vec2<u32>(66831u, u_input.a.x)), vec2<u32>(4294967295u, var_1.b.x), ~(~(~(~vec2<u32>(1u, 0u)))));
    var var_3 = reverseBits(var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, ~var_0.d.x, _wgslsmith_mod_vec2_u32(vec2<u32>(select(72197u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), true), 485u), _wgslsmith_mod_vec2_u32(~var_1.b.xz, vec2<u32>(var_2.x, var_1.b.x) & ~vec2<u32>(var_2.x, 39960u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(var_1.c.a * var_1.c.a)))), reverseBits(-var_1.a));
}

