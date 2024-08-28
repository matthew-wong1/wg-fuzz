struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(17891u, 4294967295u, 1u, 62565u), 4896i, true, 0i, 0i), vec2<u32>(1u, 17557u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> i32 {
    global0 = Struct_2(Struct_1(~(~vec4<u32>(arg_1.a.a.x, 3516u, 6077u, arg_1.a.a.x)) >> (vec4<u32>(_wgslsmith_div_u32(arg_1.a.a.x, arg_1.a.a.x), 1u, 4294967295u, ~arg_1.a.a.x) % vec4<u32>(32u)), global0.a.d >> (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(14121u, 1u, 27150u, 11178u)), vec4<u32>(arg_1.a.a.x, 62255u, global0.a.a.x, 1u) | vec4<u32>(0u, 0u, arg_1.a.a.x, u_input.b.x)) % 32u), !arg_0, _wgslsmith_dot_vec2_i32(-u_input.d, abs(vec2<i32>(global0.a.b, arg_1.a.b))) & countOneBits(-global0.a.b), reverseBits(abs(_wgslsmith_sub_i32(0i, -2147483647i)))), ~(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.a.x, 1u), vec2<u32>(u_input.b.x, 12522u))) | select(select(u_input.a, global0.b, vec2<bool>(arg_1.a.c, global0.a.c)), vec2<u32>(97107u, global0.b.x), arg_1.a.c)));
    global0 = Struct_2(global0.a, arg_1.a.a.xz);
    global0 = Struct_2(arg_1.a, global0.b);
    global0 = Struct_2(Struct_1(select(vec4<u32>(u_input.b.x, ~28055u, u_input.c, ~1u), arg_1.a.a, !(!vec4<bool>(false, arg_1.a.c, false, true))), 1i, arg_1.c.x <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x)), _wgslsmith_dot_vec3_i32(firstTrailingBit(select(vec3<i32>(-22088i, arg_1.a.d, global0.a.b), vec3<i32>(arg_1.a.e, global0.a.e, -2147483647i), true)), ~vec3<i32>(4766i, 1i, arg_1.a.d) << ((u_input.b | arg_1.a.a.yzw) % vec3<u32>(32u))), arg_1.a.d), arg_1.a.a.wy);
    var var_0 = true;
    return arg_1.a.d;
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    global0 = Struct_2(global0.a, max(global0.b, _wgslsmith_add_vec2_u32(min(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(23173u, 4294967295u)), u_input.a)));
    let var_0 = Struct_4(Struct_3(Struct_1((vec4<u32>(global0.a.a.x, 0u, 1u, 78762u) << (vec4<u32>(1u, 4294967295u, u_input.a.x, global0.b.x) % vec4<u32>(32u))) ^ global0.a.a, _wgslsmith_div_i32(func_3(global0.a.c, Struct_3(Struct_1(vec4<u32>(4294967295u, 27912u, 16253u, global0.b.x), global0.a.d, true, arg_1, 748i), vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, 573f, arg_0))), -global0.a.d), global0.a.c, -39529i, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 3009i), u_input.d))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(464f, -241f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1049f, arg_0)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(select(arg_0, 1449f, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -761f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2089f, 236f)))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(floor(-1222f))))));
    var var_1 = Struct_2(global0.a, max(global0.a.a.ww, ~(~firstLeadingBit(global0.b))));
    let var_2 = Struct_4(Struct_3(Struct_1(var_0.a.a.a, var_0.a.a.d, any(select(vec3<bool>(var_1.a.c, var_0.a.a.c, var_0.a.a.c), vec3<bool>(global0.a.c, var_0.a.a.c, false), var_0.a.a.c)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.b, -1i, -1i, 40738i), vec4<i32>(0i, -49778i, 1i, u_input.d.x)), -global0.a.b), countOneBits(-13036i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, var_0.a.c.x, arg_0))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-657f, 2420f, -197f)))), var_0.a.b));
    let var_3 = u_input.d.x;
    return -(1i ^ ~var_3);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(global0.b, ~(~max(arg_1.a.wy | global0.b, abs(vec2<u32>(31594u, arg_1.a.x)))));
    global0 = Struct_2(Struct_1(arg_1.a, min(2147483647i, u_input.d.x), !arg_1.c, _wgslsmith_div_i32(u_input.d.x, arg_0), global0.a.e), global0.a.a.zw);
    global0 = Struct_2(arg_1, select(vec2<u32>(~0u, 20428u), abs(min(vec2<u32>(global0.b.x, 24283u), arg_1.a.wy)), global0.a.c | true));
    let var_1 = false;
    var var_2 = -960f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1169f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(561f)) - -1157f))));
}

fn func_1() -> Struct_5 {
    let var_0 = global0.a.a.x;
    var var_1 = u_input.b.x;
    var var_2 = abs(countOneBits(firstTrailingBit(u_input.d.x)) & global0.a.e);
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_add_i32(-4130i, -1i) | func_2(1000f, u_input.d.x), Struct_1(_wgslsmith_mod_vec4_u32(global0.a.a, global0.a.a), global0.a.b, global0.a.c, -26169i, 23648i))), _wgslsmith_f_op_f32(1392f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f + -2014f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2045f, 738f, global0.a.c)) + _wgslsmith_f_op_f32(step(-1005f, 122f))))));
    let var_4 = vec4<f32>(734f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.x)), -527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x))), -503f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x * var_3.x)))))));
    return Struct_5(Struct_4(Struct_3(global0.a, vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-647f * var_3.x), -2827f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, -154f, var_4.x))))), 119758u, vec2<bool>(global0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_5(func_1().a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.b.x, 1u), 1u), !select(vec2<bool>(true, all(vec2<bool>(global0.a.c, false))), vec2<bool>(func_1().c.x, arg_1.c.x || true), arg_1.c));
    global0 = Struct_2(func_1().a.a.a, _wgslsmith_mod_vec2_u32(~vec2<u32>(func_1().b, u_input.b.x), ~(~global0.b)));
    global0 = Struct_2(Struct_1(~global0.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-5161i ^ arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(50580i, -34556i, var_1.a.a.a.d), vec3<i32>(0i, 39805i, arg_2.a.b))), -_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(arg_3, -1i))), any(select(vec4<bool>(arg_2.a.c, true, arg_1.c.x, arg_1.c.x), select(vec4<bool>(true, arg_1.a.a.a.c, true, false), vec4<bool>(true, var_0, false, global0.a.c), true), true)), 0i, arg_1.a.a.a.e), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.a.a.x, 6619u), arg_1.a.a.a.a.yz ^ ~vec2<u32>(4294967295u, arg_2.a.a.x)) >> (arg_1.a.a.a.a.zz % vec2<u32>(32u)));
    var var_2 = var_1.a;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(vec2<f32>(-178f, 872f), func_1(), func_1().a.a, 1i), vec2<u32>(_wgslsmith_mod_u32(31591u, ~select(u_input.c, 19676u, false)), 30576u));
    global0 = Struct_2(func_1().a.a.a, max(var_0.b, global0.b));
    global0 = Struct_2(global0.a, u_input.a);
    var var_1 = max(_wgslsmith_div_i32(-_wgslsmith_mod_i32(2147483647i ^ u_input.d.x, ~var_0.a.b), ~(-24142i) & u_input.d.x), ~(-(func_3(global0.a.c, Struct_3(var_0.a, vec3<f32>(-457f, 807f, 146f), vec3<f32>(2034f, 822f, 227f))) << (abs(var_0.a.a.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-(~(-vec3<i32>(-24690i, -4706i, -2147483647i))), vec3<i32>(global0.a.e & ~var_0.a.e, reverseBits(-94057i | var_0.a.e), 0i)), u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_1().a.a.b.x))), u_input.b.x);
}

