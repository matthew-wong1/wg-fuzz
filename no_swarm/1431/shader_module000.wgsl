struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(-181f, vec2<i32>(-1i, 2147483647i | u_input.b), all(select(!vec4<bool>(false, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, false), false)), 1i));
    let var_2 = select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, var_1.a.c), select(vec3<bool>(arg_0.a.c, true, var_1.a.c), vec3<bool>(false, var_1.a.c, true), vec3<bool>(var_1.a.c, arg_0.a.c, true)), vec3<bool>(false, var_1.a.c, var_1.a.c)), vec3<bool>(any(vec4<bool>(var_1.a.c, false, false, false)), var_0.a.c, arg_0.a.c)), !(!select(select(vec3<bool>(false, var_0.a.c, arg_0.a.c), vec3<bool>(true, arg_0.a.c, true), true), !vec3<bool>(arg_0.a.c, arg_0.a.c, var_1.a.c), vec3<bool>(false, true, false))));
    return 19804u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = -201f;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -878f);
    let var_2 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -583f);
    let var_3 = arg_2.x;
    return !select(!(!(!vec4<bool>(false, false, false, arg_0.c))), select(vec4<bool>(all(vec2<bool>(true, true)), !arg_1.c, true, !arg_1.c), vec4<bool>(true, true, true, true), arg_0.c), any(select(vec2<bool>(true, true), select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, arg_0.c), arg_0.c), true)));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -327f)), _wgslsmith_f_op_f32(ceil(-1344f)))), ~vec2<i32>(_wgslsmith_mod_i32(u_input.a, -39149i), 1i), any(func_4(Struct_1(-1000f, vec2<i32>(u_input.a, 45369i), false, 6243i), Struct_1(-202f, vec2<i32>(u_input.b, -1i), false, u_input.b), vec2<f32>(-403f, -301f), func_3(Struct_2(Struct_1(298f, vec2<i32>(u_input.b, 13577i), false, u_input.b)), vec4<f32>(348f, 566f, -342f, -1346f), 338f))), _wgslsmith_mult_i32(u_input.a, firstTrailingBit(~u_input.b))));
    var_0 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_sub_vec2_i32(~var_0.a.b, -var_0.a.b), var_0.a.c, 15546i));
    let var_1 = !(!func_4(var_0.a, var_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.a.a)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.a, var_0.a.a), vec2<f32>(1715f, -776f), vec2<bool>(var_0.a.c, var_0.a.c)))), 0u));
    var var_2 = 0u;
    var var_3 = var_0.a;
    return _wgslsmith_mod_i32(~((u_input.b & 0i) >> (_wgslsmith_clamp_u32(69403u, 0u, 12999u) % 32u)), -(u_input.b ^ 2147483647i)) | ~(-1i);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~arg_2), firstLeadingBit(20712u), arg_2, 1u), vec4<u32>(arg_2, ~(~17234u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 116989u, arg_2, 8712u), vec4<u32>(arg_2, arg_2, 4294967295u, 0u))), 0u) & (vec4<u32>(~arg_2, countOneBits(arg_2), arg_2, arg_2) >> (vec4<u32>(abs(arg_2), 1u, 1u, arg_2) % vec4<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1281f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), abs(vec2<i32>(~arg_1.b.x, func_2())), any(select(vec4<bool>(true, arg_3.a.c, true, func_4(arg_3.a, arg_1, arg_0.xx, var_0.x).x), vec4<bool>(true, select(arg_1.c, arg_1.c, arg_3.a.c), true, any(vec4<bool>(arg_1.c, arg_3.a.c, arg_3.a.c, false))), !select(vec4<bool>(true, true, true, arg_1.c), vec4<bool>(arg_3.a.c, arg_3.a.c, true, true), true))), 2147483647i);
    let var_2 = arg_3.a;
    let var_3 = Struct_1(_wgslsmith_div_f32(122f, -536f), ~arg_3.a.b, true, _wgslsmith_div_i32(arg_1.b.x, (31485i & u_input.a) >> (min(var_0.x, 0u) % 32u)) | (arg_3.a.d & u_input.b));
    let var_4 = arg_3;
    return true;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<u32>(~(~42707u), _wgslsmith_sub_u32(4294967295u, abs(arg_2.x)), 1u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.x, arg_2.x), 44943u));
    var var_1 = Struct_2(Struct_1(1381f, abs(-vec2<i32>(-1i, u_input.a)), arg_1.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(19090i, u_input.a, -25865i, u_input.b), vec4<i32>(u_input.b, 0i, u_input.a, -2437i)) << (~var_0.x % 32u))));
    var_1 = Struct_2(var_1.a);
    let var_2 = var_1.a;
    var_1 = Struct_2(var_1.a);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.a.a)), -163f))), vec2<i32>(17575i, _wgslsmith_sub_i32(var_2.b.x, -17080i)), !(firstTrailingBit(31310i) > (var_1.a.b.x >> (54530u % 32u))), -(~_wgslsmith_add_i32(-2147483647i, var_2.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-42287i, u_input.a), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)) | ~_wgslsmith_sub_vec2_i32(vec2<i32>(24054i, 1i), vec2<i32>(u_input.b, u_input.b)), true, firstTrailingBit(min(reverseBits(u_input.a), -14842i))));
    let var_1 = u_input.b;
    var var_2 = ~min(vec3<u32>(countOneBits(47500u), ~(~0u), ~abs(16586u)), ~select(vec3<u32>(4294967295u, 4294967295u, 0u), firstLeadingBit(vec3<u32>(4294967295u, 92634u, 37645u)), var_0.a.c));
    var_2 = vec3<u32>(var_2.x, ~32054u, var_2.x);
    let var_3 = func_5(var_0.a.a, select(select(!vec4<bool>(false, var_0.a.c, var_0.a.c, false), vec4<bool>(!var_0.a.c, any(vec4<bool>(false, false, var_0.a.c, true)), any(vec3<bool>(false, false, true)), func_1(vec3<f32>(-323f, -610f, var_0.a.a), Struct_1(var_0.a.a, vec2<i32>(-14813i, var_1), var_0.a.c, var_0.a.b.x), 4294967295u, Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, 2147483647i)))), true), select(vec4<bool>(var_0.a.c, true, var_0.a.c, all(vec2<bool>(true, var_0.a.c))), !vec4<bool>(var_0.a.c, true, true, var_0.a.c), 10737u > max(var_2.x, var_2.x)), !(u_input.b == 0i)), ~vec3<u32>(var_2.x, ~_wgslsmith_clamp_u32(var_2.x, var_2.x, var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_2.x), var_2.yy) | _wgslsmith_mult_u32(69377u, var_2.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(324f)))), -237f))));
    let var_4 = select(-max(select(vec4<i32>(u_input.a, u_input.a, u_input.b, var_1), vec4<i32>(0i, -2147483647i, 1i, var_0.a.b.x), var_3.a.c), firstLeadingBit(vec4<i32>(2105i, var_1, u_input.a, var_3.a.d))), vec4<i32>(_wgslsmith_mod_i32(var_0.a.d, 17609i), select(-576i, max(0i, u_input.b), var_0.a.c), var_3.a.b.x, abs(var_0.a.b.x)), select(!select(vec4<bool>(true, var_3.a.c, var_0.a.c, false), vec4<bool>(true, false, false, false), vec4<bool>(var_0.a.c, var_3.a.c, false, var_0.a.c)), !(!vec4<bool>(false, var_3.a.c, false, var_3.a.c)), _wgslsmith_f_op_f32(-var_0.a.a) < -544f)) >> (vec4<u32>(countOneBits(4294967295u), 35081u, var_2.x, _wgslsmith_mult_u32(var_2.x, 1u)) % vec4<u32>(32u));
    let var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a)), ~firstTrailingBit(var_3.a.b), var_3.a.c && (!var_0.a.c && true), 1i));
    var_2 = min(select(vec3<u32>(max(var_2.x, var_2.x), ~27834u, 1u), reverseBits(abs(vec3<u32>(var_2.x, var_2.x, 45729u))), var_3.a.c), firstLeadingBit(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(var_2.x, var_2.x, var_2.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, var_2.x, 38960u), vec3<u32>(109924u, 51719u, var_2.x))))) | ~vec3<u32>(~1u, 11556u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(33170u, var_2.x), 1u, _wgslsmith_clamp_u32(var_2.x, 1u, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~((~vec4<u32>(var_2.x, 0u, var_2.x, 111039u) << (~vec4<u32>(1u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))) >> (select(vec4<u32>(var_2.x, 39591u, 0u, 6197u), abs(vec4<u32>(var_2.x, 33827u, 0u, 8949u)), !vec4<bool>(var_5.a.c, var_0.a.c, false, var_0.a.c)) % vec4<u32>(32u))), 4294967295u, var_2.yy, ~firstTrailingBit(firstTrailingBit(var_2.x)));
}

