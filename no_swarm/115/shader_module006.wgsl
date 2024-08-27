struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_4(Struct_2(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, false))), Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), -1316f, 1i), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a) & u_input.c.xy, vec2<u32>(1u, u_input.c.x)), 3115u)), Struct_2(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1336f, 977f))), i32(-1i) * -u_input.d), 1u));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b.b, 949f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.b) + var_0.a.b.b)));
    var var_2 = Struct_2(var_0.a.a, Struct_1(select(vec3<bool>(all(var_0.a.b.a), false, false), vec3<bool>(false, true, true), var_0.a.a.zwx), var_0.a.b.b, var_0.a.b.c), ~(~(~0u)));
    var_2 = var_0.b;
    let var_3 = -(-_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-1i, u_input.e.x, 48296i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.b.c, var_2.b.c, var_2.b.c), vec3<i32>(var_2.b.c, -34392i, -1i))) & (countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(45436i, -34347i, var_2.b.c), vec3<i32>(-24320i, -1i, 1i))) & vec3<i32>(firstLeadingBit(u_input.d), 1i, 10580i)));
    return !(!select(vec3<bool>(var_2.a.x, false, select(true, true, var_0.a.b.a.x)), select(!var_0.a.a.yzw, !vec3<bool>(var_2.b.a.x, var_0.b.a.x, var_2.a.x), var_2.b.a.x), vec3<bool>(true, true, true)));
}

fn func_2() -> bool {
    var var_0 = Struct_2(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false))), Struct_1(!func_3(), _wgslsmith_f_op_f32(f32(-1f) * -1254f), u_input.d), u_input.c.x);
    var var_1 = 1u;
    let var_2 = Struct_2(vec4<bool>(true & (func_3().x && false), true || (u_input.b.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(1134u, u_input.c.x, 31800u), u_input.c)), var_0.a.x, true & var_0.a.x), Struct_1(!func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-727f)) - _wgslsmith_div_f32(var_0.b.b, 1225f))), ~u_input.d), ~0u);
    let var_3 = Struct_2(vec4<bool>(true, _wgslsmith_sub_i32(var_2.b.c, var_2.b.c) >= _wgslsmith_mult_i32(~u_input.e.x, var_2.b.c), !var_2.b.a.x, all(vec2<bool>(true, true))), Struct_1(select(!var_0.a.zxz, vec3<bool>(true, true, true), var_0.b.a.x), var_0.b.b, -(~var_0.b.c)), ~_wgslsmith_add_u32(reverseBits(select(var_0.c, 4294967295u, true)), 34981u));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b.b + var_3.b.b), var_2.b.b, _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(-631f + _wgslsmith_f_op_f32(var_3.b.b * -1000f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2314f, -1000f, var_3.b.b, _wgslsmith_div_f32(var_3.b.b, var_3.b.b)) + vec4<f32>(_wgslsmith_f_op_f32(var_0.b.b - var_0.b.b), 1049f, var_2.b.b, 1000f)))));
    return false;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(select(!(!select(vec4<bool>(true, arg_1.b.a.x, false, arg_1.e), vec4<bool>(arg_1.e, false, arg_1.e, true), true)), select(select(!vec4<bool>(arg_1.e, arg_1.b.a.x, false, arg_1.b.a.x), select(vec4<bool>(arg_1.b.a.x, arg_1.e, false, arg_1.e), vec4<bool>(arg_1.e, true, arg_1.e, false), false), true && arg_1.e), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, func_2()), vec4<bool>(!arg_1.b.a.x, arg_1.b.a.x, !arg_1.b.a.x, true)), !(_wgslsmith_f_op_f32(arg_1.a * arg_1.b.b) > _wgslsmith_f_op_f32(min(-328f, arg_1.c)))), Struct_1(arg_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1162f, arg_1.c) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.b), 250f))), -1i), _wgslsmith_clamp_u32(~1u, firstTrailingBit(abs(abs(u_input.a))), 4294967295u));
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(vec4<bool>(any(func_3()), all(select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.b.a.x), vec4<bool>(arg_0.a.x, arg_0.b.a.x, false, false), u_input.c.x > arg_0.c)), arg_0.b.a.x, true), arg_0.b, arg_0.c);
    return ~(~(~(1u & ~arg_0.c)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool) -> StorageBuffer {
    var var_0 = -_wgslsmith_mod_vec3_i32(~max(vec3<i32>(u_input.e.x, u_input.d, u_input.d), vec3<i32>(u_input.e.x, u_input.d, -1i)) << (vec3<u32>(select(29380u, arg_1.x, arg_2), 32482u, 0u ^ arg_0.x) % vec3<u32>(32u)), ~vec3<i32>(u_input.d, u_input.d, 1i) ^ select(firstTrailingBit(vec3<i32>(u_input.d, -38797i, u_input.e.x)), abs(vec3<i32>(u_input.d, -5780i, -2147483647i)), !vec3<bool>(false, arg_2, arg_2)));
    var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.d), ~(~max(vec3<i32>(var_0.x, -2147483647i, u_input.d), vec3<i32>(38770i, u_input.d, 1i))));
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(712f, -942f, arg_2)) + _wgslsmith_f_op_f32(-624f * -281f))), _wgslsmith_f_op_f32(floor(817f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-951f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(759f))))) - _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -979f)))));
    var_0 = ~vec3<i32>(var_1, 23891i, -2147483647i) >> (u_input.c % vec3<u32>(32u));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-676f, -1376f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, -2008f) + vec2<f32>(-676f, 1403f)), arg_2 && false)), vec2<f32>(_wgslsmith_f_op_f32(-319f + -298f), _wgslsmith_f_op_f32(f32(-1f) * -298f)), arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -665f) * vec2<f32>(-864f, 585f)), _wgslsmith_div_vec2_f32(vec2<f32>(-744f, -1418f), vec2<f32>(463f, 582f)))))), _wgslsmith_mod_u32(u_input.b.x & arg_0.x, _wgslsmith_clamp_u32(7472u, arg_0.x, ~(~1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-432f))) - -1443f), vec4<i32>(~abs(-45131i), i32(-1i) * -2147483647i, u_input.e.x, u_input.e.x), firstLeadingBit(-(-vec4<i32>(var_0.x, -2147483647i, u_input.e.x, var_1) & select(vec4<i32>(1i, u_input.d, -2147483647i, var_1), vec4<i32>(u_input.e.x, 2147483647i, var_0.x, -10343i), vec4<bool>(arg_2, arg_2, false, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(u_input.b.zz, vec4<u32>(18336u, func_4(func_1(vec2<u32>(u_input.c.x, 52512u), Struct_3(339f, Struct_1(vec3<bool>(true, false, false), 1000f, u_input.d), 271f, u_input.c.zz, false))), 29698u, ~abs(45347u)) >> ((~(~vec4<u32>(24379u, u_input.b.x, 91593u, u_input.b.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), !(func_1(u_input.b.yx, Struct_3(764f, Struct_1(vec3<bool>(true, false, true), 681f, 16818i), -1465f, vec2<u32>(u_input.a, u_input.b.x), true)).b.c < 1i));
}

