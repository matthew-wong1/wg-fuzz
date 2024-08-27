struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(select(4294967295u, 19060u, true), u_input.e.x ^ u_input.a, 4294967295u), u_input.e);
    var var_1 = !(!vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), true, any(vec4<bool>(true, true, false, true)) == true, select(true, u_input.b <= 0i, all(vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1470f)), -596f) + 1164f);
    let var_3 = Struct_3(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -301f), Struct_1(any(vec2<bool>(false, any(vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), 1i, vec3<i32>(_wgslsmith_mod_i32(9920i, -128294i) >> (countOneBits(u_input.e.x) % 32u), u_input.b | abs(-9510i), _wgslsmith_mult_i32(u_input.d, -2147483647i) & 9682i)), Struct_1((any(vec4<bool>(var_1.x, false, true, var_1.x)) || var_1.x) & true, u_input.b, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-50510i, 0i), _wgslsmith_div_i32(u_input.b, u_input.b), u_input.b & u_input.b), abs(vec3<i32>(2147483647i, u_input.d, -2147483647i)))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.b)), var_3.b);
    return var_3;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(true, -722f, Struct_1(func_2().c.a, firstLeadingBit(_wgslsmith_sub_i32(u_input.d, -1i) << ((43254u >> (u_input.a % 32u)) % 32u)), vec3<i32>(abs(~u_input.b), 1i, u_input.d << (45470u % 32u))), Struct_1(true, 0i, _wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.d), u_input.d, -u_input.b), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.d, -25656i), vec3<i32>(u_input.d, 8076i, u_input.d)))));
    var_0 = Struct_3(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), var_0.d, var_0.c);
    var_0 = func_2();
    let var_1 = _wgslsmith_add_i32(reverseBits(1i), select(-(i32(-1i) * -1i), _wgslsmith_mult_i32(-33070i, i32(-1i) * -20302i), var_0.a));
    let var_2 = firstTrailingBit(firstTrailingBit(abs(~(~vec4<u32>(u_input.c.x, 1u, u_input.a, 11594u)))));
    return vec4<bool>(var_0.c.a, !(!var_0.a), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.c.a, var_0.c.a), vec3<bool>(var_0.c.a, true, var_0.d.a), var_0.a), vec3<bool>(false, true, false))), all(vec3<bool>(var_0.a, var_0.d.a, true)));
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_3 {
    let var_0 = u_input.c;
    var var_1 = 61335i;
    let var_2 = 0u;
    let var_3 = vec4<i32>(arg_0, min(-1i, u_input.b), arg_0, -1i);
    return func_2();
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> vec3<f32> {
    var var_0 = func_2();
    var_0 = Struct_3(false, -579f, func_2().d, func_2().d);
    var_0 = func_4(var_0.c.c.x, !all(func_3()));
    var_0 = Struct_3(false, -265f, func_4(max(select(-1i, reverseBits(1i), var_0.b > -653f), 16271i), !(-32220i > u_input.d)).d, var_0.c);
    var var_1 = Struct_2(firstTrailingBit(arg_2), var_0.c, func_2().c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(var_0.b - 1012f), func_2().b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1572f), 864f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0)), var_0, var_0), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), -663f, _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1481f * var_0), -373f, _wgslsmith_f_op_f32(304f + -370f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2514f, -266f, -1170f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -860f, var_0) + vec3<f32>(344f, var_0, 434f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, 1997f) * vec3<f32>(var_0, var_0, 536f)), true)))));
    var_1 = _wgslsmith_f_op_vec3_f32(func_1(true, _wgslsmith_mult_i32(2281i, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(u_input.d, u_input.b)), vec2<i32>(~u_input.b, reverseBits(u_input.b)))), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(1u, u_input.c.x)), 4294967295u, countOneBits(29664u), u_input.a)), false));
    var var_2 = Struct_3(func_4(-1i, true).c.c.x <= -5823i, var_1.x, func_4(u_input.b, func_3().x).c, func_2().d);
    var var_3 = Struct_1(false | (2147483647i > _wgslsmith_dot_vec3_i32(var_2.c.c ^ vec3<i32>(50437i, u_input.b, -1i), -var_2.c.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(func_4(u_input.b, false).c.b, _wgslsmith_mult_i32(max(var_2.d.b, var_2.d.b), i32(-1i) * -1i), _wgslsmith_mod_i32(18736i, firstLeadingBit(35720i))), var_2.d.c), -min(-(~var_2.c.c), (var_2.d.c & vec3<i32>(0i, -1i, u_input.d)) << (u_input.e % vec3<u32>(32u))));
    let var_4 = _wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3.c.x, -25884i, 20797i), vec4<i32>(-48581i, var_2.c.c.x, 0i, -2147483647i), vec4<i32>(1i, var_2.c.c.x, 0i, -2147483647i)), -vec4<i32>(var_2.d.c.x, var_3.c.x, 0i, 21974i))), _wgslsmith_div_vec4_i32(min(firstLeadingBit(min(vec4<i32>(-24012i, var_3.c.x, 17382i, u_input.b), vec4<i32>(u_input.b, var_2.c.b, var_2.c.b, 1i))), max(-vec4<i32>(2147483647i, 0i, u_input.d, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_3.c.x, 28199i, var_3.c.x), vec4<i32>(-11929i, var_3.b, -2147483647i, var_3.c.x)))), vec4<i32>(_wgslsmith_clamp_i32(func_4(u_input.b, true).c.b, abs(1i), var_3.b), -1i | _wgslsmith_dot_vec4_i32(vec4<i32>(858i, var_3.b, 2147483647i, u_input.d), vec4<i32>(u_input.d, var_2.c.b, var_2.c.b, var_3.b)), ~firstTrailingBit(-7484i), _wgslsmith_mod_i32(21388i, -7485i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3.c));
}

