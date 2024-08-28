struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = -1005f;
    var var_1 = 4294967295u << (u_input.b.x % 32u);
    var_1 = select(~33327u, _wgslsmith_clamp_u32(abs(u_input.b.x), _wgslsmith_mult_u32(10815u, ~4294967295u), arg_2), -366f >= var_0);
    var_1 = countOneBits(~arg_2) >> ((_wgslsmith_sub_u32(~0u, u_input.a) ^ ~0u) % 32u);
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(var_0 + var_0);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = countOneBits(_wgslsmith_mod_vec3_u32(min(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) & u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(69782u, u_input.b.x, 4294967295u)), max(vec3<u32>(u_input.b.x, 80703u, 25742u) >> (vec3<u32>(1u, arg_2, 4294967295u) % vec3<u32>(32u)), vec3<u32>(arg_2, 4294967295u, 52509u)))));
    var_0 = select(u_input.b, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(arg_0.x + -2744f))) <= 1f);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)) - arg_0.x), (vec4<u32>(75338u, 1u, var_0.x, u_input.a) & vec4<u32>(~arg_2, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(46719u, 11801u)), firstLeadingBit(var_0.x), var_0.x)) >> (reverseBits(vec4<u32>(arg_2, 4294967295u, min(0u, var_0.x), abs(arg_2))) % vec4<u32>(32u)));
    let var_2 = vec3<i32>(u_input.d, -(~1i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.c << (vec4<u32>(arg_2, 28056u, 3421u, 1u) % vec4<u32>(32u)), select(~vec4<i32>(-1i, -1i, arg_1, arg_1), vec4<i32>(u_input.d, arg_1, 1i, arg_1), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), ~u_input.c), u_input.c));
    var var_3 = Struct_1(~var_1.b.ywx & u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, arg_0.x, -815f, var_1.a))))), abs(var_1.b.zw), !vec4<bool>(true, var_0.x == var_0.x, ~var_2.x != 0i, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(select(true, true, false), any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)), vec4<bool>(true, all(vec3<bool>(false, false, false)), var_0.x != 14596u, false)), (arg_0.x <= var_1.a) || false));
    return var_3.e.x;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    var var_0 = vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true))) || true, select(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))), any(vec4<bool>(true, true, true, false))), true);
    var_0 = vec3<bool>(all(vec3<bool>(false, false, func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(512f, 592f), arg_2.zx, vec2<bool>(true, var_0.x))), 1085i, ~arg_1.x))), any(select(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, false, var_0.x), false), select(vec4<bool>(true, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), !var_0.x), select(vec4<bool>(true, true, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x)))), _wgslsmith_clamp_i32(-2147483647i, ~(~u_input.e), reverseBits(-1i)) < 25626i);
    var_0 = vec3<bool>(all(vec2<bool>(var_0.x, (u_input.b.x > arg_1.x) & true)), all(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x))) && any(select(!vec4<bool>(var_0.x, true, true, var_0.x), !vec4<bool>(false, true, var_0.x, var_0.x), any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), var_0.x);
    var var_1 = Struct_3(arg_0, firstTrailingBit(firstLeadingBit(select(vec4<u32>(0u, u_input.b.x, arg_1.x, 59376u), vec4<u32>(arg_1.x, 4294967295u, 75982u, 20184u) ^ vec4<u32>(28621u, 4294967295u, 28958u, u_input.a), u_input.a <= arg_1.x))));
    var_0 = !(!select(!(!vec3<bool>(var_0.x, false, var_0.x)), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, true, false), !vec3<bool>(var_0.x, var_0.x, true))));
    return _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~var_1.b, var_1.b), ~vec4<u32>(var_1.b.x ^ arg_1.x, _wgslsmith_div_u32(72693u, arg_1.x), arg_1.x, 0u)), u_input.c, _wgslsmith_dot_vec3_u32(max(countOneBits(abs(vec3<u32>(0u, 36392u, 1u))), select(_wgslsmith_mult_vec3_u32(var_1.b.zxw, vec3<u32>(26892u, var_1.b.x, 2994u)), ~var_1.b.wwx, select(vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, var_0.x), true))), vec3<u32>(_wgslsmith_clamp_u32(62069u, reverseBits(23313u), u_input.b.x << (var_1.b.x % 32u)), ~_wgslsmith_mod_u32(4294967295u, 10170u), _wgslsmith_mult_u32(select(arg_1.x, u_input.b.x, false), u_input.a))), any(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x)), vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, false)))) || var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-239f)) - -459f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), u_input.c, u_input.a, false))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f + -294f)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b.x), vec3<u32>(u_input.a, 56203u, u_input.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, 1177f, -416f)), _wgslsmith_f_op_f32(583f * -248f))), 460f));
    let var_1 = vec2<bool>(true, !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), any(vec2<bool>(false, true)))));
    let var_2 = var_0;
    var var_3 = -_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.wzw, max(u_input.c.zzy, _wgslsmith_sub_vec3_i32(u_input.c.zxw, vec3<i32>(0i, 51109i, u_input.e)))));
    var_3 = -2147483647i;
    var var_4 = reverseBits(-2147483647i);
    var var_5 = vec4<i32>(~u_input.d, u_input.d, _wgslsmith_dot_vec2_i32(u_input.c.xz, ~u_input.c.yz >> ((u_input.b.yx | u_input.b.xx) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(firstTrailingBit(max(u_input.c, u_input.c)), ~reverseBits(vec4<i32>(u_input.c.x, -27813i, 0i, u_input.e)))) & vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.d, 26051i, 26230i), vec3<i32>(-1i, u_input.d, u_input.c.x)), _wgslsmith_mult_vec3_i32(u_input.c.zwz, u_input.c.yww)), u_input.e), u_input.e, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(38037i, -1i, 0i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(36481u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.b.x, 21566u)) % vec3<u32>(32u)), -u_input.c.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 452f, 697f)), vec3<f32>(1734f, var_0, 851f), all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, -472f, 1566f) - vec3<f32>(-1070f, var_0, -159f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_0)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, -263f), vec3<f32>(var_0, 1000f, var_0)), vec3<bool>(var_1.x, false, var_1.x))))), firstTrailingBit(~var_5.ww), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(932f * _wgslsmith_f_op_f32(ceil(769f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.a), u_input.c, 60015u, false)) - var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-var_0), u_input.b, vec3<f32>(var_0, 236f, -264f), -550f))), select(!var_1.x & true, true, all(!vec3<bool>(true, true, var_1.x))))));
}

