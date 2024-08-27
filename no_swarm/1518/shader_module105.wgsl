struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec3<i32> {
    let var_0 = 1f;
    var var_1 = ~(_wgslsmith_add_vec2_i32(reverseBits(-vec2<i32>(u_input.a, u_input.a)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -20934i), vec2<i32>(-2147483647i, -13099i), vec2<i32>(1i, -1i))) << (abs(vec2<u32>(0u, ~4294967295u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_1.x, ~u_input.a), 1i, 0i ^ (var_1.x | u_input.a)), vec3<i32>(0i << (firstLeadingBit(4294967295u) % 32u), select(-2147483647i, _wgslsmith_sub_i32(6847i, u_input.a), all(vec2<bool>(true, true))), 2147483647i), vec3<i32>(~u_input.a, countOneBits(u_input.a), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, 114i), abs(u_input.a)))), select(vec3<i32>(_wgslsmith_div_i32(~u_input.a, 1i), _wgslsmith_sub_i32(var_1.x, 2147483647i >> (1u % 32u)), u_input.a), vec3<i32>(u_input.a, -66251i, var_1.x), -_wgslsmith_div_i32(var_1.x, var_1.x) >= _wgslsmith_mult_i32(firstLeadingBit(u_input.a), 1856i | var_1.x)));
    var_1 = (-vec2<i32>(_wgslsmith_add_i32(var_2.x, u_input.a), var_2.x) << (~vec2<u32>(~4294967295u, 4294967295u) % vec2<u32>(32u))) & (-min(min(var_2.zx, vec2<i32>(-74629i, 0i)), ~vec2<i32>(var_2.x, var_2.x)) ^ vec2<i32>(i32(-1i) * -3152i, _wgslsmith_add_i32(var_2.x, countOneBits(-2147483647i))));
    var var_3 = true;
    return firstTrailingBit(-vec3<i32>(u_input.a, _wgslsmith_sub_i32(2147483647i, 1i), var_2.x) | (var_2 >> (vec3<u32>(~27417u, 1u, 1u) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_3 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(78460u, 3233u) & arg_1), ~vec2<u32>(min(arg_1.x, arg_1.x), ~arg_1.x));
    var_0 = 65874u;
    let var_1 = -vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.zx, arg_0.yx), -(vec2<i32>(u_input.a, 23386i) | vec2<i32>(arg_0.x, u_input.a))), 0i, -2147483647i);
    let var_2 = vec2<i32>(2147483647i, -29745i);
    let var_3 = Struct_5(u_input.a, Struct_1(var_2.x, firstTrailingBit(func_3())), _wgslsmith_div_i32(reverseBits(~_wgslsmith_dot_vec3_i32(arg_0, var_1)), -arg_0.x));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-561f - 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -534f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1484f)), arg_2) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-767f, 290f, true)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2), false)), false)))), Struct_2(var_3.b, Struct_1(~var_3.b.b.x << (~0u % 32u), vec3<i32>(firstTrailingBit(-2147483647i), var_3.a, var_2.x | 67196i)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.zy, vec2<i32>(-15482i, 10411i)), var_3.b.b.yy), -39350i, firstLeadingBit(1i))), Struct_2(var_3.b, Struct_1(min(27368i & var_3.c, _wgslsmith_sub_i32(var_1.x, var_1.x)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_2.x, var_2.x), var_1), _wgslsmith_div_vec3_i32(var_1, vec3<i32>(arg_0.x, var_1.x, arg_0.x)), true)), -var_3.b.b));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> i32 {
    let var_0 = func_2(firstLeadingBit(select(arg_1.xxx, arg_1.zzy, _wgslsmith_f_op_f32(round(arg_0)) < -1563f)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(68511u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(52308u, 32117u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), ~min(28207u, 43451u)), _wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(arg_0 - 355f))))));
    let var_1 = Struct_5(-_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(2147483647i, 38606i, _wgslsmith_div_i32(0i, -2147483647i)), ~0i), var_0.d.a, 72762i);
    var var_2 = var_1;
    var var_3 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4483u, 15403u), ~4294967295u, select(1u, 47485u, true), 1u), vec4<u32>(1u, firstTrailingBit(1u), 0u, firstTrailingBit(33552u))), 39398u, ~1u, 1u);
    var var_4 = Struct_1(var_0.d.b.a, vec3<i32>(26250i, 1i, min(_wgslsmith_mod_i32(u_input.a, 16306i), i32(-1i) * -35217i) >> (_wgslsmith_add_u32(~var_3.x, ~34478u) % 32u)));
    return abs(~(-func_3().x));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 652f, -1481f))), false))), select(vec4<bool>(true | all(vec2<bool>(false, false)), arg_2.x <= arg_2.x, true, false), vec4<bool>(true, true, true, true), vec4<bool>(!all(vec2<bool>(false, true)), true, false, true))));
    let var_1 = func_2(reverseBits(vec3<i32>(~arg_0, 18365i, 1i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~4294967295u), vec2<u32>(0u, 42965u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, -702f)) - _wgslsmith_f_op_f32(select(var_0.x, arg_2.x, false)))).d;
    var var_2 = Struct_5(countOneBits(firstTrailingBit(u_input.a)), Struct_1(-1i << (~4294967295u % 32u), vec3<i32>(-2147483647i, ~(-arg_1.a.a), (u_input.a & 2147483647i) | var_1.a.b.x)), var_1.b.a);
    let var_3 = vec3<bool>(!select(true, true, false) | true, max(48240i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, 0i, -20122i, 1i), vec4<i32>(var_1.a.a, var_2.a, -19349i, var_1.a.a)))) <= var_1.a.a, true);
    var_2 = Struct_5(arg_1.c.x, func_2(var_2.b.b, ~(~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1739f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x))).c.a, -34832i);
    return Struct_2(Struct_1(u_input.a, ~(arg_1.a.b << (vec3<u32>(106243u, 1u, 40574u) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 24035u, 35182u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), Struct_1(abs(23327i), func_2(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, var_1.a.a, var_2.b.a), var_1.a.b << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), ~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-var_0.x)).d.b.b), ~(-(~_wgslsmith_add_vec3_i32(var_2.b.b, var_2.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(min(func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-953f - 660f))), vec4<i32>(16366i, u_input.a, -32065i, 0i) ^ max(vec4<i32>(u_input.a, -3034i, -2147483647i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -35634i))), _wgslsmith_mult_i32(u_input.a, u_input.a)), Struct_2(Struct_1(21291i, -(~vec3<i32>(u_input.a, u_input.a, u_input.a))), Struct_1(-1i, vec3<i32>(-16172i, u_input.a, 1i)), firstTrailingBit(-(vec3<i32>(14243i, -53243i, -45316i) & vec3<i32>(u_input.a, -1i, 12831i)))), vec4<f32>(-1000f, func_2(vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.a, 2147483647i)), vec2<u32>(_wgslsmith_mod_u32(51538u, 31227u), 8164u), func_2(vec3<i32>(0i, u_input.a, u_input.a) | vec3<i32>(2147483647i, u_input.a, u_input.a), vec2<u32>(0u, 4294967295u), _wgslsmith_f_op_f32(1993f + 1964f)).b.x).b.x, func_2(max(_wgslsmith_sub_vec3_i32(vec3<i32>(37179i, -648i, u_input.a), vec3<i32>(u_input.a, 0i, 0i)), vec3<i32>(u_input.a, u_input.a, u_input.a)), min(vec2<u32>(1u, 1u), reverseBits(vec2<u32>(19067u, 42192u))), _wgslsmith_f_op_f32(796f * _wgslsmith_f_op_f32(981f - -547f))).a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1014f * -133f), 2033f)), 1141f))));
    var var_1 = _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(8182u, 1u, 28320u, 21412u))) >> (firstLeadingBit(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(4772u, 0u), vec2<u32>(1087u, 59545u))), 82150u, firstTrailingBit(_wgslsmith_sub_u32(min(4294967295u, 13263u), firstTrailingBit(125405u))), ~53363u));
    var var_2 = ~var_0.c;
    var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(~var_1.wx), _wgslsmith_mod_vec2_u32(var_1.wx, ~var_1.xy)), 0u), var_1.x, var_1.x, var_1.x);
    var_0 = Struct_2(func_2(var_0.c, ((var_1.xw | vec2<u32>(var_1.x, 1u)) | vec2<u32>(var_1.x, var_1.x)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(16949u, 15096u), ~vec2<u32>(4294967295u, var_1.x)), 462f).c.b, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~var_2.x, var_2.x ^ -50727i, _wgslsmith_sub_i32(var_2.x, var_0.a.b.x), 0i), select(vec4<i32>(u_input.a, 0i, -2147483647i, var_0.a.a) & vec4<i32>(1i, 47494i, 50996i, 10582i), select(vec4<i32>(var_2.x, 0i, 0i, -7886i), vec4<i32>(var_2.x, var_0.c.x, -79828i, var_2.x), vec4<bool>(false, false, false, true)), false)), var_0.b.b), vec3<i32>(_wgslsmith_div_i32(u_input.a, 0i), var_2.x, 1i));
    var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(var_0.b.b, vec3<i32>(var_2.x, 2147483647i, var_0.c.x)), ~func_1(476f, vec4<i32>(-1671i, 22213i, -16100i, var_0.a.a))), vec3<i32>(-(~(-82433i)), i32(-1i) * -var_0.c.x, _wgslsmith_mod_i32(-13994i, func_1(755f, vec4<i32>(var_2.x, u_input.a, 77869i, var_2.x))))), min(vec3<i32>(-1i) * -vec3<i32>(u_input.a, -33471i, var_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_2.x) << ((vec3<u32>(var_1.x, 7729u, var_1.x) << (var_1.wwy % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, -2147483647i, -8616i))));
    let var_3 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1.x << (42193u % 32u)), -415f, max(func_3().x, var_3), -var_0.b.b.x);
}

