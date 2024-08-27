struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(606f, true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.a)))), true);
    global0 = Struct_1(global0.a, true);
    global0 = Struct_1(_wgslsmith_f_op_f32(261f + global0.a), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, -35178i), u_input.a, firstTrailingBit(u_input.a)) >= -2147483647i);
    var var_0 = arg_0.a.x;
    var_0 = arg_0.a.x;
    return global0.a;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(arg_0, true, false, _wgslsmith_clamp_vec2_u32(reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 35623u), vec2<u32>(106243u, 4294967295u))), min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 2529u))), ~_wgslsmith_div_vec2_u32(vec2<u32>(33817u, 39889u), vec2<u32>(27410u, 21873u))), vec2<u32>(~(~93866u), firstLeadingBit(287u) << (0u % 32u))), ~0u);
    var_0 = Struct_2(var_0.a, any(vec2<bool>(!var_0.c, true)), ~select(-1i, u_input.a, true) < -1i, ~_wgslsmith_mod_vec2_u32(var_0.d, var_0.d), var_0.e);
    let var_1 = ~_wgslsmith_div_vec4_u32(max(abs(vec4<u32>(83838u, var_0.e, var_0.d.x, var_0.e)) << (~vec4<u32>(4294967295u, var_0.e, var_0.d.x, var_0.e) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, var_0.d.x, 34290u) | ~vec4<u32>(var_0.e, 1u, 36211u, var_0.d.x)), abs(~vec4<u32>(4294967295u, 4294967295u, var_0.d.x, 45290u)) << (firstLeadingBit(~vec4<u32>(19107u, 30888u, 22078u, 59808u)) % vec4<u32>(32u)));
    let var_2 = Struct_2(Struct_1(arg_0.a, var_0.c), !(u_input.a <= firstLeadingBit(u_input.a >> (21199u % 32u))), any(!vec4<bool>(var_0.a.b & var_0.b, global0.b, arg_0.b, var_0.b)), ~vec2<u32>(~0u, var_1.x) >> ((~(~vec2<u32>(var_0.d.x, 14670u)) >> (abs(vec2<u32>(4294967295u, var_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_u32(1u, ~(~(~var_0.d.x))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -1000f)))), true), !(~_wgslsmith_dot_vec4_u32(vec4<u32>(50105u, 66518u, var_2.e, var_0.d.x), vec4<u32>(11370u, var_1.x, 24489u, 58025u)) < 0u), var_0.a.a <= _wgslsmith_f_op_f32(ceil(arg_0.a)), vec2<u32>(~((var_2.e | 1u) >> (0u % 32u)), 15478u), ~_wgslsmith_dot_vec3_u32(var_1.xzy, vec3<u32>(~var_2.d.x, var_0.d.x, var_1.x ^ var_1.x)));
    return arg_0.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(-1360f, global0.b), func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a, -2807f, true)), _wgslsmith_f_op_f32(func_3(Struct_3(arg_0.ww), -2147483647i)))), false)), !global0.b, _wgslsmith_sub_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(4294967295u, arg_0.x))), select(~arg_0.xw, abs(~arg_0.xz), select(vec2<bool>(true, true), vec2<bool>(true, global0.b), false))), _wgslsmith_mult_u32(arg_0.x, arg_0.x));
    var var_1 = select(vec4<bool>(any(select(vec3<bool>(global0.b, true, true), select(vec3<bool>(global0.b, false, true), vec3<bool>(false, false, global0.b), var_0.b), false)), all(vec2<bool>(var_0.a.b, global0.b)) != true, global0.b, var_0.a.b), select(!vec4<bool>(!var_0.c, true, !var_0.b, true), select(!(!vec4<bool>(global0.b, false, var_0.a.b, var_0.b)), select(!vec4<bool>(global0.b, true, true, true), !vec4<bool>(true, var_0.a.b, true, global0.b), false), any(vec4<bool>(var_0.b, var_0.b, false, global0.b))), select(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(global0.b, false, var_0.b, false), true), !vec4<bool>(global0.b, false, false, true), var_0.c)), vec4<bool>((false || func_4(var_0.a)) || var_0.c, false, false, var_0.c));
    var_1 = !select(vec4<bool>(true, any(vec4<bool>(var_0.c, var_0.c, var_0.a.b, var_0.b)), !(global0.a == 1014f), true), !vec4<bool>(var_0.b, true, any(vec4<bool>(true, false, false, true)), true), any(!(!vec4<bool>(false, var_0.b, true, false))));
    let var_2 = Struct_3(~firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.xw, arg_0.zz)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, -1729f))))));
    return select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.c == true, global0.b, false, false), !(!(!(!vec4<bool>(var_1.x, var_1.x, false, false)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-1000f * global0.a), any(arg_1.wwz));
    let var_0 = select(!vec2<bool>(global0.b, all(vec2<bool>(arg_1.x, global0.b))), vec2<bool>(any(arg_1), global0.b), !(!(arg_1.x | !global0.b)));
    return vec4<bool>(true, global0.b, !(!func_2(min(vec4<u32>(81691u, 1639u, 39637u, 899u), vec4<u32>(1u, 1u, 4294967295u, 0u)), arg_0.zx ^ vec2<i32>(22306i, -17700i)).x), _wgslsmith_clamp_i32(-_wgslsmith_add_i32(2147483647i, arg_0.x), -_wgslsmith_div_i32(arg_0.x, -10255i), 2147483647i) <= arg_0.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = Struct_1(arg_2.a.a, !func_5(_wgslsmith_mult_vec3_i32(vec3<i32>(-11388i, u_input.a, 47170i), vec3<i32>(u_input.a, u_input.a, -49817i)) & vec3<i32>(1i, 1i, 1i), select(vec4<bool>(var_0.c, true, var_0.b, true), !arg_0, true)).x);
    var var_2 = 852f;
    var_1 = var_0.a;
    var_0 = Struct_2(Struct_1(var_0.a.a, var_1.a <= _wgslsmith_f_op_f32(round(-840f))), _wgslsmith_f_op_f32(f32(-1f) * -1730f) <= _wgslsmith_f_op_f32(ceil(-633f)), true, min(min(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_2.d.x), ~vec2<u32>(arg_2.e, 88085u)), var_0.d), var_0.d), _wgslsmith_add_u32(var_0.e, 1u | _wgslsmith_clamp_u32(~22535u, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.x, 3592u), vec2<u32>(arg_2.e, 12078u)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a * 1242f) - _wgslsmith_f_op_f32(f32(-1f) * -734f))), var_1.b), any(arg_0.zx), global0.b || (global0.a <= 150f), arg_2.d, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, var_0.d.x)), ~vec2<u32>(arg_2.e, 4294967295u)));
}

fn func_1() -> u32 {
    var var_0 = ~(~1u);
    var_0 = ~_wgslsmith_sub_u32(max(countOneBits(1u), 1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % 32u), 4294967295u);
    let var_1 = func_6(!func_5(-vec3<i32>(2147483647i, -2147483647i, 1i), func_2(firstTrailingBit(vec4<u32>(114876u, 1u, 44286u, 84923u)), vec2<i32>(-1i, u_input.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, _wgslsmith_f_op_f32(1081f - -539f), global0.a))), Struct_2(Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(global0.a + global0.a), all(vec3<bool>(global0.b, true, false)))), any(!vec3<bool>(true, global0.b, false))), false, global0.b, vec2<u32>(1u, 1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(~24365u, _wgslsmith_clamp_u32(3267u, 4294967295u, 4294967295u)), 1u)));
    var var_2 = func_6(!(!vec4<bool>(true, any(vec3<bool>(true, global0.b, true)), true, global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, -969f, var_1.a.a, 305f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -108f, 100f))))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.a.a - global0.a), false), !all(!vec4<bool>(var_1.c, var_1.c, true, var_1.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(599f, global0.a)), -356f) < _wgslsmith_f_op_f32(select(var_1.a.a, _wgslsmith_div_f32(1123f, var_1.a.a), true)), func_6(func_5(select(vec3<i32>(u_input.a, u_input.a, -26996i), vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<bool>(true, var_1.c, var_1.b)), !vec4<bool>(var_1.b, true, false, var_1.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, -574f, 559f, var_1.a.a))), Struct_2(var_1.a, var_1.b, true, var_1.d, abs(480u))).d, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(15662u, var_1.e, 47932u, 1u), firstTrailingBit(vec4<u32>(4294967295u, 47416u, 44710u, 19879u))))));
    global0 = var_1.a;
    return _wgslsmith_add_u32(1u, max(~(~(~var_1.e)), ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a & ~39284i), _wgslsmith_mult_vec2_i32(-max(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a))), -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -19789i), vec2<i32>(1i, u_input.a)), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(1i, u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(global0.a - -1164f))), _wgslsmith_f_op_f32(exp2(global0.a)))))), func_1() | 4294967295u, 31892u);
}

