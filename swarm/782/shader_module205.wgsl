struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = -26354i;
    let var_1 = Struct_2(!select(vec4<bool>(true, true, all(vec2<bool>(false, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), true & all(vec2<bool>(true, false))), countOneBits(vec2<u32>(~abs(0u), 0u)), -_wgslsmith_sub_i32(~(-14287i), u_input.a));
    let var_2 = Struct_3(-2147483647i);
    let var_3 = var_1.a.wy;
    let var_4 = Struct_1(~7976u, !var_3.x, select(var_1.a, vec4<bool>(true, var_3.x, var_1.a.x, var_1.a.x), var_3.x), _wgslsmith_f_op_f32(-316f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(296f - 170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-433f - -348f))))));
    return var_1.b;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(func_3(), vec2<u32>(88872u, 4294967295u))) >> (select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 16754u, 0u), vec4<u32>(5487u, 1u, 17689u, 0u)), 1u), abs(vec2<u32>(1u, 1u)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true))) % vec2<u32>(32u)), vec2<u32>(17270u, _wgslsmith_clamp_u32(~54703u, firstLeadingBit(56609u), 1u) & _wgslsmith_mod_u32(~58440u, _wgslsmith_div_u32(24456u, 1u))));
    var var_1 = vec2<u32>(~var_0.x, countOneBits(var_0.x));
    var var_2 = _wgslsmith_sub_vec4_i32(max(-(~vec4<i32>(4707i, 1i, u_input.a, 0i)), abs(-vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))), ~vec4<i32>(firstTrailingBit(3266i), u_input.a, ~u_input.a, -u_input.a)) | ((min(-vec4<i32>(-2147483647i, 1i, u_input.a, 16341i), -vec4<i32>(2147483647i, -1i, -1i, 1i)) >> (~vec4<u32>(var_1.x, 12672u, 23479u, var_1.x) % vec4<u32>(32u))) >> (vec4<u32>(1u, 42703u, var_0.x, func_3().x) % vec4<u32>(32u)));
    var var_3 = true;
    let var_4 = Struct_2(select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true)), true), max(~var_0, _wgslsmith_mult_vec2_u32(~var_0 & select(var_0, var_0, vec2<bool>(false, false)), ~var_0)), min(var_2.x, (min(var_2.x, 18247i) << (~62422u % 32u)) >> (~var_1.x % 32u)));
    return -20923i;
}

fn func_4(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_3(u_input.a);
    var_0 = Struct_3(countOneBits(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, -2147483647i)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(u_input.a, arg_0)), select(vec2<i32>(-3073i, var_0.a), vec2<i32>(u_input.a, arg_0), false), true))));
    var var_1 = Struct_1(reverseBits(62609u), any(vec4<bool>(any(vec2<bool>(true, true)), true, all(vec3<bool>(true, true, true)), true)), vec4<bool>(true, !any(vec4<bool>(true, false, true, true)), !all(vec3<bool>(true, true, true)), true), 1000f);
    var var_2 = var_1.b == var_1.c.x;
    var_1 = Struct_1(0u, var_1.b, select(!vec4<bool>(!var_1.b, var_1.d < var_1.d, true, var_1.c.x), !var_1.c, var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.d), -1223f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -560f), -637f)))));
    return vec4<bool>(select(false, var_1.a != (7960u & var_1.a), true), true, any(select(!select(var_1.c, vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.b), true), select(!vec4<bool>(var_1.b, true, var_1.c.x, var_1.b), var_1.c, all(vec2<bool>(var_1.b, var_1.c.x))), var_1.c)), false);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 1u, _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(15280u, 77853u, 71489u, 4294967295u), vec4<u32>(105321u, 1u, 1u, 4554u)), vec4<u32>(30228u, 1u, 59711u, 20766u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(26498u, 1u, 1u, 4294967295u), ~vec4<u32>(23267u, 58092u, 99936u, 30067u), ~vec4<u32>(45424u, 4294967295u, 53306u, 1u)))), any(func_4(func_2() | -1i)), func_4(2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)));
    var_0 = Struct_1(1u, !all(func_4(_wgslsmith_sub_i32(u_input.a, u_input.a)).xxy), vec4<bool>(any(vec4<bool>(any(vec3<bool>(var_0.b, var_0.b, false)), true == var_0.c.x, var_0.b, true)), false, false, var_0.c.x), var_0.d);
    let var_1 = !var_0.c.yy;
    var_0 = Struct_1(min(~countOneBits(0u), var_0.a), true, select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, var_1.x && true, func_4(~1i).x, var_1.x), (select(var_0.a, var_0.a, var_1.x) & func_3().x) > var_0.a), _wgslsmith_f_op_f32(-var_0.d));
    var var_2 = ~(~vec3<u32>(abs(4294967295u), var_0.a, var_0.a) ^ ~vec3<u32>(var_0.a >> (var_0.a % 32u), var_0.a & var_0.a, 13420u));
    return Struct_1(0u, false & all(!vec3<bool>(true, false, var_0.c.x)), func_4(-10421i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d))) - 576f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-845f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, 724u), ~(vec2<u32>(41282u, var_0.a) << (vec2<u32>(1u, 66386u) % vec2<u32>(32u)))), vec2<u32>(var_0.a, min(var_0.a, var_0.a)), vec2<u32>(var_0.a, (1u >> (var_0.a % 32u)) << (38539u % 32u))));
    let var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)), firstLeadingBit(-67917i)), vec2<i32>(2147483647i << (~var_1.x % 32u), u_input.a)) | 0i;
    let var_3 = Struct_3(var_2);
    let var_4 = abs(abs(reverseBits(2147483647i))) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a, var_3.a, false), _wgslsmith_div_i32(2147483647i, -6343i)), vec2<i32>(1i, 1i) | vec2<i32>(var_2, var_3.a)), 18866i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(214f + var_0.d), vec2<f32>(var_0.d, var_0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d, -1137f, 1000f, -739f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, 750f, -2158f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2159f, _wgslsmith_f_op_f32(ceil(233f)), _wgslsmith_f_op_f32(sign(var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -400f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-132f, 301f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d - -1580f), _wgslsmith_f_op_f32(var_0.d + var_0.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-840f)), _wgslsmith_f_op_f32(-var_0.d))), var_0.d), func_1().c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, 1244f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(257f, -333f, 1000f) * vec3<f32>(-1110f, var_0.d, 1381f))))))));
}

