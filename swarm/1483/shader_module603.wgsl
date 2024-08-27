struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> u32 {
    let var_0 = select(select(!(!vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), !(!vec4<bool>(false, false, arg_0.a, false)), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a, false, true, arg_0.a), true), !vec4<bool>(false, arg_0.a, true, arg_0.a), select(arg_0.a, true, arg_0.a)), !select(vec4<bool>(false, arg_0.a, true, true), vec4<bool>(arg_0.a, true, false, arg_0.a), false), any(select(vec2<bool>(arg_0.a, true), vec2<bool>(false, false), vec2<bool>(arg_0.a, false))))), vec4<bool>(all(vec4<bool>(arg_0.a, any(vec4<bool>(arg_0.a, arg_0.a, true, false)), arg_0.a & false, true)), arg_0.a, false, all(!select(vec4<bool>(false, false, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, true)))), all(vec4<bool>(any(vec2<bool>(true, false)), true, false, !arg_0.a)));
    let var_1 = arg_1;
    var var_2 = ~(~1u) ^ u_input.c.x;
    let var_3 = arg_0.b;
    let var_4 = max(~min(min(vec4<u32>(1u, 1u, arg_1, var_3.c.x), vec4<u32>(arg_1, arg_0.b.c.x, arg_1, 4773u)) >> (vec4<u32>(u_input.c.x, 55986u, var_3.c.x, 49752u) % vec4<u32>(32u)), u_input.c), reverseBits(u_input.c));
    return u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, -808f, arg_2.a.a.x)) - arg_2.a.a) + vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.a.x + -776f), arg_2.a.a.x, _wgslsmith_f_op_f32(round(arg_0))))));
    let var_2 = Struct_4(false, Struct_3(arg_2.a, -abs(vec3<i32>(u_input.e.x, arg_2.b.x, u_input.d.x)), vec2<u32>(~(~arg_2.c.x), _wgslsmith_clamp_u32(func_3(Struct_4(true, Struct_3(arg_2.a, arg_2.b, vec2<u32>(u_input.c.x, arg_2.c.x))), arg_2.c.x), abs(arg_2.c.x), u_input.c.x))));
    var var_3 = _wgslsmith_mult_vec2_u32(~reverseBits(firstTrailingBit(arg_2.c >> (u_input.c.yy % vec2<u32>(32u)))), countOneBits(var_2.b.c));
    var var_4 = arg_2;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(359f - -694f), var_1.x, 1029f) - vec3<f32>(_wgslsmith_f_op_f32(-798f * var_4.a.a.x), 673f, 411f))), var_2.b.b & vec3<i32>(reverseBits(u_input.e.x), -(~(-12148i)), var_2.b.b.x), vec2<u32>(_wgslsmith_mod_u32(63385u ^ arg_2.c.x, ~firstLeadingBit(4294967295u)), arg_2.c.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1274f * 2217f)))), min(arg_1.b.c.x, firstTrailingBit(u_input.c.x)) == ~29002u, Struct_3(arg_1.b.a, abs(vec3<i32>(0i, -1i, -17505i)), vec2<u32>(_wgslsmith_sub_u32(1u, arg_1.b.c.x), func_3(arg_1, 4294967295u)))).a, ~(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(arg_3.xxw, vec3<i32>(1i, arg_3.x, 0i), vec3<i32>(0i, 0i, arg_1.b.b.x))), arg_1.b.c);
    var_0 = Struct_3(func_2(arg_1.b.a.a.x, !all(!arg_0), Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, var_0.a.a.x, 657f))), u_input.d, firstLeadingBit(reverseBits(u_input.c.yw)))).a, vec3<i32>(~select(var_0.b.x, -35604i, arg_1.a) ^ u_input.e.x, reverseBits(_wgslsmith_clamp_i32(-1i | arg_1.b.b.x, -2147483647i, 0i)), 1i), vec2<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, u_input.c.x, 4294967295u), vec4<u32>(54709u, var_0.c.x, var_0.c.x, 0u)) ^ 10982u, func_3(Struct_4(true, Struct_3(var_0.a, vec3<i32>(5968i, 0i, arg_1.b.b.x), u_input.c.zz)), ~1u))));
    let var_1 = var_0.c.x;
    let var_2 = select(vec2<bool>(true, !(!all(vec4<bool>(arg_0.x, false, true, true)))), vec2<bool>(arg_1.a, ~(~var_0.b.x) < (i32(-1i) * -65551i)), arg_0.x);
    var_0 = Struct_3(var_0.a, -vec3<i32>(_wgslsmith_dot_vec2_i32(-arg_1.b.b.xy, _wgslsmith_sub_vec2_i32(arg_1.b.b.yy, vec2<i32>(0i, arg_1.b.b.x))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -153f), -866f < var_0.a.a.x, Struct_3(Struct_1(arg_1.b.a.a), vec3<i32>(0i, u_input.d.x, arg_3.x), u_input.c.xy)).b.x, abs(var_0.b.x)), ~(~arg_1.b.c));
    return ~var_0.b.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(274f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -578f)));
    var_0 = _wgslsmith_clamp_i32(9568i, -func_4(select(!arg_0.yz, arg_0.yz, arg_0.zy), Struct_4(any(vec2<bool>(false, arg_0.x)), func_2(var_1.x, false, Struct_3(Struct_1(vec3<f32>(-1339f, -650f, 652f)), vec3<i32>(u_input.b, u_input.b, u_input.e.x), u_input.c.zx))), -2147483647i, select(vec4<i32>(u_input.b, 45765i, 2147483647i, 0i), vec4<i32>(u_input.a, 2147483647i, 0i, u_input.e.x) & vec4<i32>(-2147483647i, u_input.a, u_input.d.x, u_input.b), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, false, true), true))), u_input.b);
    var_0 = i32(-1i) * -77442i;
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - 761f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 115f)))));
    return Struct_3(func_2(var_1.x, arg_0.x & true, Struct_3(func_2(_wgslsmith_f_op_f32(f32(-1f) * -2056f), true, func_2(868f, false, Struct_3(Struct_1(vec3<f32>(var_1.x, 171f, var_1.x)), u_input.d, vec2<u32>(1u, u_input.c.x)))).a, -_wgslsmith_mod_vec3_i32(u_input.d, u_input.d), vec2<u32>(min(4294967295u, u_input.c.x), reverseBits(u_input.c.x)))).a, max(vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, 59588i), -2147483647i), i32(-1i) * -36934i), u_input.d), ~u_input.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!(true | (any(vec4<bool>(true, true, true, true)) | true)), func_1(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), !all(vec4<bool>(true, true, true, false)), !(u_input.b >= u_input.e.x))));
    var_0 = Struct_4(var_0.a, Struct_3(func_1(select(!vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), false)).a, (firstTrailingBit(vec3<i32>(2147483647i, 0i, -1i)) | vec3<i32>(var_0.b.b.x, 27398i, var_0.b.b.x)) << (u_input.c.wyy % vec3<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.c.zx, vec2<u32>(~u_input.c.x, 0u))));
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(5786i >> (_wgslsmith_mod_u32(4294967295u, func_1(vec3<bool>(true, false, true)).c.x) % 32u), -_wgslsmith_mod_i32(u_input.a, abs(u_input.d.x))), u_input.d.x);
    let var_2 = reverseBits(u_input.e);
    let var_3 = ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(-1i, var_2.x, -22815i, 26628i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.b.x, -2147483647i, var_0.b.b.x, var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.b.b.x, var_0.b.b.x, u_input.e.x), vec4<i32>(var_0.b.b.x, -2147483647i, -37378i, -14234i))));
    let var_4 = Struct_2(!(!any(!vec2<bool>(var_0.a, var_0.a))), Struct_1(vec3<f32>(var_0.b.a.a.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1677f))), var_3.x);
    var var_5 = var_4;
    var var_6 = select(vec2<bool>(var_0.a, false), select(vec2<bool>(true, var_5.a), !vec2<bool>(var_5.a, true), !select(!vec2<bool>(var_0.a, var_5.a), select(vec2<bool>(var_0.a, var_5.a), vec2<bool>(var_5.a, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), vec2<bool>(false, ~u_input.c.x > ~_wgslsmith_add_u32(97007u, u_input.c.x)));
    var_6 = vec2<bool>(true, var_6.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1621f, -821f), var_0.b.a.a.yz, var_5.a)))), vec2<f32>(528f, 1000f)), min(vec2<u32>(83642u, max(1u, 1129u)), _wgslsmith_mult_vec2_u32(~var_0.b.c, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.c.yy))), -select(vec3<i32>(_wgslsmith_mod_i32(2147483647i, -768i), -var_3.x, firstTrailingBit(50682i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.b.x, 2147483647i, u_input.e.x) | vec3<i32>(-40205i, var_3.x, 0i), vec3<i32>(52316i, var_3.x, 4532i)), var_6.x), var_3.x >> ((var_0.b.c.x & 2308u) % 32u), select(_wgslsmith_sub_vec4_i32(select(countOneBits(var_3), -vec4<i32>(var_1.x, var_2.x, 4911i, u_input.e.x), vec4<bool>(false, true, var_6.x, var_6.x)), vec4<i32>(_wgslsmith_mod_i32(16332i, var_0.b.b.x), _wgslsmith_div_i32(-23927i, var_0.b.b.x), 2147483647i, firstTrailingBit(0i))), ~var_3, var_5.a));
}

