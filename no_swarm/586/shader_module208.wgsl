struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec3<f32>(-992f, _wgslsmith_f_op_f32(min(1555f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -221f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1027f)))))), -1081f);
    var var_1 = vec4<i32>(~(firstTrailingBit(u_input.c) & 16922i), min(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(u_input.c, -4107i, u_input.c, u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), min(vec4<i32>(0i, -2147483647i, u_input.c, 0i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), countOneBits(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, u_input.c), -u_input.c))), -14324i, u_input.c);
    var var_2 = any(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(all(vec3<bool>(false, false, true)), true, false)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true)), true)), !(!any(vec2<bool>(false, false)))));
    var_1 = vec4<i32>(~51066i, -2147483647i, var_1.x, _wgslsmith_div_i32(u_input.c, reverseBits(firstTrailingBit(8901i))));
    let var_3 = Struct_3(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(u_input.b), vec3<u32>(4294967295u, 27232u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, u_input.b.x), ~u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 1u, u_input.b.x), u_input.b), vec3<u32>(53110u, 6095u, 2343u)), u_input.b.x)), !vec3<bool>(all(vec3<bool>(false, true, false)), !any(vec2<bool>(true, true)), true), -_wgslsmith_sub_i32(~firstTrailingBit(u_input.c), countOneBits(2147483647i)));
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<i32>(arg_0.x, u_input.c);
    let var_1 = Struct_1(firstTrailingBit(vec2<u32>(~4294967295u, ~1u)), !select(vec3<bool>(true, true, true), arg_2.b, var_0.x == ~var_0.x), true);
    let var_2 = _wgslsmith_f_op_f32(sign(566f));
    let var_3 = Struct_2(!vec2<bool>(func_3(), _wgslsmith_f_op_f32(var_2 - 294f) == var_2), var_1, var_1, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, 417f, var_2))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2120f, -1128f, -630f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, 557f), vec3<f32>(var_2, 1381f, var_2), vec3<bool>(arg_2.b.x, true, arg_2.c))))))), !select(select(vec4<bool>(false, true, false, true), !vec4<bool>(true, var_1.b.x, true, true), true), !select(vec4<bool>(true, var_1.b.x, false, true), vec4<bool>(true, true, var_1.b.x, var_1.b.x), vec4<bool>(arg_2.b.x, true, true, false)), true));
    let var_4 = Struct_1(countOneBits(vec2<u32>(min(~1u, 0u), ~firstLeadingBit(1u))), var_3.b.b, var_3.c.b.x);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u & select(_wgslsmith_add_u32(var_1.a.x, 1u), _wgslsmith_mod_u32(u_input.b.x, 0u), true), reverseBits(var_4.a.x)), max(~u_input.b.zz, var_3.b.a & reverseBits(~vec2<u32>(u_input.a, 1u))));
}

fn func_1() -> Struct_2 {
    var var_0 = ((~(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, u_input.a)) & vec4<u32>(func_2(vec4<i32>(u_input.c, -1i, -64048i, u_input.c), u_input.a, Struct_1(u_input.b.xy, vec3<bool>(false, false, true), false)), ~0u, 86227u, min(78070u, u_input.b.x))) & vec4<u32>(~0u, u_input.a, 9116u, u_input.b.x)) >> (~(vec4<u32>(16639u | u_input.a, ~1u, 1u, u_input.b.x) ^ vec4<u32>(_wgslsmith_clamp_u32(29385u, 20971u, u_input.b.x), ~94335u, abs(u_input.b.x), 77321u)) % vec4<u32>(32u));
    var var_1 = vec2<bool>(any(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, true, true), true)), true);
    let var_2 = Struct_1(var_0.xw, select(select(!select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, true), false), vec3<bool>(select(var_1.x, var_1.x, false), u_input.c > 25378i, !var_1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, false, var_1.x), var_1.x), !vec3<bool>(true, var_1.x, var_1.x))), select(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x), select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), true)), vec3<bool>(func_3(), any(vec2<bool>(var_1.x, true)), true), vec3<bool>(var_1.x, var_1.x, var_1.x)), true), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(793f, 584f)));
    let var_4 = var_3.x;
    return Struct_2(!select(!(!var_2.b.zz), var_2.b.xz, all(vec4<bool>(var_1.x, false, false, var_2.b.x)) == (var_2.b.x || var_2.b.x)), var_2, var_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1394f + var_3.x), _wgslsmith_f_op_f32(-var_3.x), var_3.x)), select(select(select(!vec4<bool>(false, false, var_2.c, true), !vec4<bool>(var_1.x, var_1.x, var_2.b.x, true), false), !(!vec4<bool>(var_2.c, var_1.x, var_2.b.x, var_1.x)), !var_1.x), select(!(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !vec4<bool>(var_2.c, var_1.x, false, var_2.b.x), !select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(var_2.b.x, var_1.x, false, false))), !var_2.b.x));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.a, ~(~(~61257u) & arg_0.b.a.x), u_input.a);
    var_0 = min(vec3<u32>(var_0.x, 68841u, 4294967295u), vec3<u32>(43002u, 1u, 6830u));
    let var_1 = arg_0.d.x;
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(8419i, u_input.c), vec2<i32>(u_input.c, u_input.c))), countOneBits(vec2<i32>(u_input.c, ~(0i >> (u_input.a % 32u)))), firstTrailingBit(~vec2<i32>(~(-17592i), ~13738i)));
    return arg_0.c;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_clamp_i32(u_input.c, arg_3, -7722i) >> (arg_2.a.x % 32u), arg_3 ^ abs(u_input.c)), -abs(vec2<i32>(-1i) * -vec2<i32>(arg_3, u_input.c)));
    let var_1 = u_input.b.zy;
    let var_2 = Struct_3(vec3<u32>(~_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(3093u, 28920u, 4294967295u)), var_1.x, arg_1.a.x), func_1().b.b, -53835i);
    var var_3 = arg_1.b.x;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3782f)), 498f)), _wgslsmith_f_op_f32(672f + 436f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f * 899f)), _wgslsmith_f_op_f32(f32(-1f) * -1609f))) * _wgslsmith_f_op_f32(trunc(-121f))), -469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_1().d.x, 1f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(-508f + -643f)) - 1338f)));
    return Struct_3(~u_input.b, func_4(Struct_2(!(!arg_2.b.zx), Struct_1(~u_input.b.yy, vec3<bool>(false, arg_2.c, false), false & arg_1.b.x), Struct_1(select(u_input.b.zy, var_1, vec2<bool>(false, arg_2.b.x)), arg_2.b, var_2.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1374f), -1067f, _wgslsmith_f_op_f32(f32(-1f) * -879f)), !(!vec4<bool>(true, true, arg_2.b.x, true)))).b, countOneBits(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~5194u, func_4(func_1()), Struct_1(vec2<u32>(u_input.a, 16079u) >> (vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, 1u), u_input.a) % vec2<u32>(32u)), !vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))), false), u_input.c);
    var var_1 = _wgslsmith_mod_i32(var_0.c, ~u_input.c);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, ~var_0.c, var_0.c), ~(-(~(vec3<i32>(10511i, -1i, u_input.c) << (var_0.a % vec3<u32>(32u))))));
    let var_3 = func_1().c.b.xy;
    let var_4 = ~(~(_wgslsmith_mult_vec2_u32(var_0.a.xx | vec2<u32>(37096u, var_0.a.x), ~u_input.b.zz) >> (~(vec2<u32>(u_input.b.x, 30707u) & u_input.b.xz) % vec2<u32>(32u))));
    let var_5 = ~(i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(943f)) + 330f))), var_5, 0i ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.c, _wgslsmith_mult_i32(1i, 2147483647i)), _wgslsmith_div_i32(~var_0.c, -39245i)), _wgslsmith_add_i32(u_input.c, u_input.c));
}

