struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, arg_0.x, arg_0.x) << (_wgslsmith_mult_vec3_u32(u_input.a.xyw, vec3<u32>(u_input.a.x, 6857u, u_input.a.x)) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, -9247i, -14898i), ~vec3<i32>(-1i, arg_0.x, arg_0.x))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.x < arg_0.x, true, select(false, false, true))), vec4<bool>(!select(true, false, false), true, true, true), all(vec2<bool>(true, any(vec3<bool>(false, true, true))))));
    var_0 = Struct_2(0i, var_0.b);
    var var_1 = Struct_1(var_0.a, ~(~u_input.a.wyz), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(10679i, 16817i, 1i), vec3<i32>(var_0.a, var_0.a, arg_0.x))), -(i32(-1i) * -2147483647i), var_0.a)), var_0.b.x == !any(var_0.b.wzw));
    var_0 = Struct_2(1i, var_0.b);
    var_0 = Struct_2(var_0.a, vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f * -625f) + -155f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1669f)) * 843f), true, all(vec4<bool>(any(var_0.b.ww), all(var_0.b.xz), var_1.d, var_0.b.x)), var_1.d));
    return 4981u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = select(select(vec3<bool>(26028u <= func_3(vec2<i32>(11320i, 2147483647i)), arg_1.x, abs(u_input.a.x) >= func_3(vec2<i32>(0i, 1i))), vec3<bool>(select(arg_0.x <= -867f, arg_1.x, u_input.a.x > u_input.a.x), true, !(!arg_1.x)), vec3<bool>((false && arg_1.x) | true, !arg_1.x || arg_1.x, false)), select(!vec3<bool>(select(arg_1.x, arg_1.x, false), true, any(vec4<bool>(false, arg_1.x, true, arg_1.x))), select(select(!vec3<bool>(arg_1.x, true, true), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, false, true), vec3<bool>(true, arg_1.x, false))), vec3<bool>(any(arg_1), true, true), select(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, false, arg_1.x)), vec3<bool>(arg_1.x, arg_1.x, true), !vec3<bool>(arg_1.x, false, arg_1.x))), vec3<bool>(arg_1.x, 4294967295u != func_3(vec2<i32>(2147483647i, 0i)), !arg_1.x)), arg_1.x);
    var_0 = select(select(select(!(!vec3<bool>(false, var_0.x, true)), !select(vec3<bool>(var_0.x, arg_1.x, arg_1.x), vec3<bool>(false, var_0.x, false), vec3<bool>(arg_1.x, var_0.x, true)), all(select(vec2<bool>(true, arg_1.x), vec2<bool>(false, arg_1.x), vec2<bool>(false, false)))), !vec3<bool>(true, true, all(vec3<bool>(arg_1.x, false, true))), arg_1.x), !(!select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, arg_1.x), false), select(vec3<bool>(var_0.x, var_0.x, arg_1.x), vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, arg_1.x)), all(vec3<bool>(false, true, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), 941f)) != _wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(ceil(arg_0.x))));
    var var_1 = select(-(~1i), -(i32(-1i) * -27953i), select(!(any(vec3<bool>(true, var_0.x, var_0.x)) && true), true != !(!var_0.x), true));
    var var_2 = _wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -2147483647i, -1i, -1i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(countOneBits(-34145i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, 0i), vec3<i32>(2147483647i, -15578i, 73671i)), 1i, arg_1.x), 1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-30522i, -6065i, -2147483647i, 14009i), vec4<i32>(-13969i, 13177i, -13677i, -39750i))))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~select(u_input.a.x, u_input.a.x, var_0.x), select(80264u & u_input.a.x, u_input.a.x ^ 0u, true), (u_input.a.x >> (u_input.a.x % 32u)) >> (51283u % 32u), u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 32703u))) % vec4<u32>(32u));
    var_0 = vec3<bool>(true, var_0.x, ~0u <= countOneBits(firstLeadingBit(u_input.a.x) & ~u_input.a.x));
    return -22451i;
}

fn func_1() -> Struct_3 {
    var var_0 = 5957u;
    var var_1 = 51905i;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(33350i, -countOneBits(_wgslsmith_sub_i32(44914i, 15394i)), -1i, func_2(vec3<f32>(1000f, 369f, 465f), vec2<bool>(true, true)) >> (u_input.a.x % 32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(max(-2147483647i, 2147483647i)), -(~39123i), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(0i, 28333i, 2147483647i)), firstLeadingBit(func_2(vec3<f32>(-211f, -770f, -1000f), vec2<bool>(true, false)))), vec4<i32>(1i, 1i, 1i, 1i) >> (firstLeadingBit(~vec4<u32>(13309u, 328u, u_input.a.x, 4294967295u)) % vec4<u32>(32u))));
    var_1 = var_2;
    var_1 = -reverseBits(var_2);
    return Struct_3(~vec3<i32>(~(-12749i), -(~3431i), max(2147483647i, var_2)), Struct_1(var_2, (u_input.a.zyw & firstTrailingBit(vec3<u32>(1u, 22818u, 4294967295u))) & _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yyy, vec3<u32>(0u, 1u, u_input.a.x), vec3<u32>(33908u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, 104694u, u_input.a.x)), 78178i, !(select(var_2, -2147483647i, true) <= (i32(-1i) * -22325i))), _wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 73612u) | (u_input.a.yxx << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), countOneBits(u_input.a.xww)), u_input.a.zyw), _wgslsmith_clamp_vec4_u32(~vec4<u32>(12632u & u_input.a.x, u_input.a.x, reverseBits(35150u), u_input.a.x), u_input.a, vec4<u32>(~(u_input.a.x << (u_input.a.x % 32u)), ~u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.wzx, u_input.a.xyx), 41771u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec3<i32> {
    let var_0 = arg_0.b;
    var var_1 = func_1().a;
    let var_2 = func_1().b;
    var var_3 = select(vec3<bool>(select(false, true, all(vec2<bool>(false, true))), var_0.d, true), vec3<bool>(any(arg_2), true, var_0.d), any(vec3<bool>(any(vec2<bool>(false, true)), all(!arg_2.yx), any(vec2<bool>(true, true)))));
    var var_4 = arg_2;
    return _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.a, _wgslsmith_add_i32(14413i, i32(-1i) * -1i), abs(~62428i)), vec3<i32>(firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, var_2.c, var_0.c, -25048i), vec4<i32>(arg_0.b.a, var_0.a, -5035i, var_2.c)))), ~(-2147483647i), -1i), func_1().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = vec3<i32>(-(~reverseBits(2147483647i)), min(23514i, ~min(firstTrailingBit(-80192i), firstLeadingBit(27967i))), _wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(2147483647i, 56815i, -29855i), vec3<i32>(1i, -1i, 0i), vec3<bool>(false, true, true))), countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(-2684i, -16230i, 38964i), vec3<i32>(68285i, 0i, -7891i)))));
    var_1 = vec3<i32>(firstTrailingBit(var_1.x), ~var_1.x, var_1.x);
    var_1 = min(~(((vec3<i32>(-32333i, var_1.x, 2147483647i) << (u_input.a.yzy % vec3<u32>(32u))) >> (vec3<u32>(11895u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) ^ func_4(func_1(), vec3<f32>(var_0, -1218f, -1000f), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), abs(vec3<i32>(var_1.x, ~var_1.x, 32193i)) | _wgslsmith_mult_vec3_i32(vec3<i32>(-17141i, -420i, 2147483647i) >> (~u_input.a.zxx % vec3<u32>(32u)), vec3<i32>(var_1.x ^ -2147483647i, var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-func_4(Struct_3(vec3<i32>(-1362i, 0i, 2147483647i), Struct_1(-2147483647i, vec3<u32>(u_input.a.x, 63538u, 0u), var_1.x, false), u_input.a.xxy, vec4<u32>(0u, u_input.a.x, 26558u, u_input.a.x)), vec3<f32>(var_0, var_0, var_0), vec3<bool>(false, true, true)).x, ~(i32(-1i) * -26867i)), -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, 750f, -703f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -515f, -370f, -114f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, var_0, 778f))))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - -2399f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, var_0, 639f))))))), _wgslsmith_mult_u32(~(1u ^ (20207u | u_input.a.x)), ~(~(~u_input.a.x))));
}

