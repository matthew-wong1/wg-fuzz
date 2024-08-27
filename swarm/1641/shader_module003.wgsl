struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-565f, 615f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1402f, -174f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(295f, -671f)), vec2<f32>(1248f, 1000f))), vec2<f32>(1263f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-150f)), _wgslsmith_f_op_f32(f32(-1f) * -1040f))), vec2<bool>(arg_0 != ~arg_0, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))))));
    var var_1 = select(select(vec4<bool>(all(vec4<bool>(false, true, true, true)), false, false, all(vec3<bool>(true, true, true)) && true), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), !(all(vec4<bool>(true, true, false, true)) || true)), vec4<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)) && select(false, all(vec2<bool>(false, true)), false), all(vec3<bool>(true, true, true)), any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), true);
    let var_2 = u_input.b;
    let var_3 = 592f;
    var_1 = vec4<bool>(!any(select(var_1.wzy, select(vec3<bool>(true, false, var_1.x), vec3<bool>(var_1.x, false, true), var_1.x), !vec3<bool>(var_1.x, true, false))), true & any(var_1.yxz), false, !all(var_1.xy));
    return false;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(arg_0.x), ~110516u, 0u, 63989u), arg_0));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.b.a)))), arg_1.x & true)), _wgslsmith_f_op_f32(step(-407f, _wgslsmith_f_op_f32(-arg_2.b.a))), -167f);
    var var_2 = u_input.b;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-932f, arg_2.b.c.x, false)) - -704f), _wgslsmith_f_op_f32(floor(861f)))));
    let var_3 = min(~(~max(vec2<u32>(1346u, arg_0.x), reverseBits(vec2<u32>(1u, 0u)))), ~((_wgslsmith_div_vec2_u32(u_input.a, arg_0.xz) | (vec2<u32>(u_input.a.x, 4294967295u) ^ vec2<u32>(0u, 26590u))) >> (u_input.a % vec2<u32>(32u))));
    return true;
}

fn func_4(arg_0: bool, arg_1: bool) -> vec4<f32> {
    let var_0 = -235f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -1696f, _wgslsmith_f_op_f32(exp2(var_0)), var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1875f, -2059f, var_0, var_0), vec4<f32>(1181f, var_0, 1898f, var_0)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 493f, -407f))))));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), 739f, 1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -829f, 370f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, 1014f, 1053f))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -887f, _wgslsmith_f_op_f32(-495f - arg_0)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1565f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-arg_0), false))), select(~(-vec4<i32>(u_input.c, -13753i, 11506i, -29052i)) | _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b, 0i, 1i)), reverseBits(vec4<i32>(u_input.b, 13511i, -25412i, u_input.c))), vec4<i32>(-32562i, _wgslsmith_add_i32(firstTrailingBit(8642i), -2147483647i), _wgslsmith_sub_i32(-8916i, i32(-1i) * -5240i), -1i), !select(!vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, var_0, var_0, var_0), func_2(u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(any(!vec4<bool>(var_0, var_0, false, var_0)), func_3(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 17643u, u_input.a.x, u_input.a.x), var_0), vec4<bool>(var_0, var_0, true, var_0), Struct_3(95759u, Struct_2(1000f, vec4<i32>(-6193i, u_input.b, u_input.c, u_input.c), vec4<f32>(var_1.x, 356f, -1781f, 475f), Struct_1(vec3<i32>(-1i, u_input.b, u_input.c), vec2<i32>(u_input.b, u_input.c), u_input.a.x, vec2<i32>(12765i, u_input.b)), 547f))))))), Struct_1(_wgslsmith_sub_vec3_i32(~(vec3<i32>(u_input.b, u_input.c, -1i) & vec3<i32>(u_input.b, u_input.b, 1i)), -(vec3<i32>(u_input.b, u_input.c, u_input.b) ^ vec3<i32>(u_input.c, -24740i, -30678i))), vec2<i32>(u_input.b, ~u_input.b) & (abs(vec2<i32>(u_input.c, u_input.c)) << (~u_input.a % vec2<u32>(32u))), 36058u, vec2<i32>(47173i, 1i)), _wgslsmith_f_op_f32(1097f - _wgslsmith_f_op_f32(round(arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(var_2.c.zyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(422f - arg_0), _wgslsmith_f_op_f32(-arg_0), arg_0)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(min(-474f, var_1.x)))), ~abs(vec4<i32>(abs(5582i), ~(-55116i), 24291i, select(var_2.d.b.x, var_2.d.b.x, var_0))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)), false)), var_2.d, 536f);
    return -486f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(676f, -1000f, 908f), vec3<f32>(-414f, -1000f, 1038f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, 1000f, 620f)))));
    var var_1 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(20553i, u_input.b), vec2<i32>(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(37771i, 82635i))) ^ -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.b, -12422i)));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-573f))), _wgslsmith_f_op_f32(-322f * _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(-841f, 196f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -935f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_4(false, var_2.x)).yxz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, -327f))), (var_2.x && !var_2.x) & var_2.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, var_2.x)) - vec3<f32>(104f, var_3.x, 394f)) * _wgslsmith_f_op_vec4_f32(func_4(!var_2.x, true)).wwx) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0 * var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, 1672f) + var_0), any(vec3<bool>(var_2.x, var_2.x, true)))))));
    var var_4 = min(-(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(13228i, u_input.c, u_input.b), vec3<i32>(0i, 40236i, u_input.c)), reverseBits(vec3<i32>(u_input.b, -1i, -1i)), vec3<i32>(1i, u_input.c, u_input.c)) & vec3<i32>(60535i, 0i, u_input.c)), vec3<i32>(u_input.c, max(firstLeadingBit(-29922i), _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, u_input.c), u_input.c)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c, u_input.b), abs(vec2<i32>(u_input.b, u_input.b)), var_2.zz), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(34418i, 10542i))))));
    var var_5 = Struct_1(vec3<i32>(-u_input.c, _wgslsmith_mod_i32(~_wgslsmith_add_i32(u_input.c, var_4.x), min(var_4.x, 1i)), var_4.x), vec2<i32>(19862i, -32645i), min(~u_input.a.x, u_input.a.x), ~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(0i, var_4.x)), var_4.zx, -vec2<i32>(1i, 1i)), -var_4.zz));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x, abs(~vec3<i32>(2147483647i, _wgslsmith_clamp_i32(21966i, var_5.a.x, var_5.d.x), reverseBits(var_4.x))), var_5.a, ~firstLeadingBit(vec4<u32>(~1u, _wgslsmith_clamp_u32(u_input.a.x, var_5.c, 1u), ~var_5.c, countOneBits(u_input.a.x))), 1i);
}

