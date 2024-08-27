struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 4636u), vec2<u32>(u_input.a.x, arg_0.d)) ^ ((vec2<u32>(17366u, 3076u) >> (u_input.d.xz % vec2<u32>(32u))) | u_input.a.yz), u_input.d.ww) < ~reverseBits(~arg_0.d);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-309f, arg_0.a), _wgslsmith_f_op_f32(min(-1420f, arg_0.e.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1056f, arg_0.e.x)))) - 320f)), Struct_2(arg_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f * _wgslsmith_div_f32(-1370f, 638f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-941f, arg_0.a, true)), _wgslsmith_f_op_f32(arg_0.a * arg_0.e.x))))), 1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(arg_0.e)))));
    var var_3 = -_wgslsmith_div_i32(u_input.b, _wgslsmith_clamp_i32(~(u_input.b & arg_0.b.a.a.x), -1i, -8010i));
    var_3 = select(~(-37111i), 13109i, true);
    return !(!vec4<bool>(all(vec2<bool>(var_1, true)) && var_1, false, !var_1, true));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(vec3<i32>(2147483647i, abs(-1i), u_input.b | ~u_input.b)));
    var var_1 = !(!(!(!func_3(Struct_3(-2048f, var_0, 268f, 21765u, vec3<f32>(438f, 588f, 588f))))));
    let var_2 = vec3<i32>(-1i) * -var_0.a.a;
    var_1 = !select(func_3(Struct_3(-785f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -315f), ~u_input.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2683f, 365f, -278f) + vec3<f32>(-121f, -218f, -822f)))), func_3(Struct_3(735f, Struct_2(var_0.a), _wgslsmith_f_op_f32(537f * 441f), u_input.a.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -895f, -499f), vec3<f32>(1069f, -661f, -1237f))))), var_1.x);
    let var_3 = _wgslsmith_add_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a.x, 30048i, 2147483647i, -1415i), vec4<i32>(-2147483647i, 1467i, u_input.b, -46914i)) | ~vec4<i32>(var_0.a.a.x, var_0.a.a.x, -545i, var_0.a.a.x), vec4<i32>(-36900i, ~var_2.x, max(2147483647i, 16525i), -1i)), _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(45897i, var_0.a.a.x, var_2.x, 0i), vec4<i32>(1i, -14667i, var_2.x, 40652i)), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 52464i, 70827i, u_input.b), vec4<i32>(u_input.b, -8192i, 28503i, -1i))))) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, -var_2.x, _wgslsmith_mult_i32(var_2.x, var_2.x), _wgslsmith_add_i32(u_input.b, u_input.b)), max(vec4<i32>(var_2.x, -5412i, var_2.x, 2147483647i), vec4<i32>(u_input.b, var_2.x, var_0.a.a.x, var_2.x) ^ vec4<i32>(0i, -1i, -2147483647i, var_0.a.a.x)) & ~vec4<i32>(-2147483647i, u_input.b, 2147483647i, -44433i));
    return var_2;
}

fn func_1() -> vec3<f32> {
    var var_0 = -2147483647i;
    var_0 = _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(0i, u_input.b, u_input.b), ~vec3<i32>(-12354i, -62717i, -39892i)), func_2(), true), vec3<i32>(u_input.b, u_input.b, firstLeadingBit(u_input.b))) >> (2021u % 32u);
    let var_1 = firstTrailingBit(u_input.b);
    var_0 = _wgslsmith_dot_vec2_i32(abs(min(-vec2<i32>(-38125i, u_input.b), vec2<i32>(1i, 1i))), _wgslsmith_sub_vec2_i32(~(-(~vec2<i32>(u_input.b, u_input.b))), select(_wgslsmith_div_vec2_i32(max(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, var_1)), vec2<i32>(-1i, -2147483647i)), vec2<i32>(_wgslsmith_div_i32(var_1, u_input.b), -var_1), true)));
    var var_2 = u_input.a.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2230f, -301f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(845f, 654f, -1471f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, 1736f, -340f))), all(vec2<bool>(true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, _wgslsmith_f_op_f32(341f + -1193f), _wgslsmith_f_op_f32(f32(-1f) * -186f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 239f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1071f + 144f), 1248f))));
    let var_1 = reverseBits(~vec3<u32>(_wgslsmith_sub_u32(~u_input.d.x, ~34667u), ~firstLeadingBit(32321u), ~u_input.d.x));
    let var_2 = Struct_2(Struct_1(~vec3<i32>(u_input.b << (u_input.c % 32u), _wgslsmith_mult_i32(u_input.b, u_input.b), -1i >> (0u % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-279f, var_0.x, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x)), true)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 103f, -1000f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1234f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-719f, 319f, 251f) + vec3<f32>(var_0.x, var_0.x, 236f)))), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true))))));
    var var_3 = 14072u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * vec3<f32>(var_0.x, -1189f, var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -838f, -1000f) + vec3<f32>(881f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1255f, var_0.x, var_0.x))), vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, false)), false))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -392f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1586f, 686f))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(var_0.x - 1411f))))));
    let var_4 = ~(firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, u_input.d.x, 10208u), var_1), countOneBits(var_1))) | select(var_1, ~vec3<u32>(u_input.d.x, 0u, 17788u), false));
    let var_5 = select(func_3(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(271f, var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)), Struct_2(var_2.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))), var_1.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1320f, var_0.x)), _wgslsmith_f_op_vec3_f32(func_1()))))), vec4<bool>(all(vec2<bool>(true, true)), true, !all(vec4<bool>(false, false, false, false)), !all(vec3<bool>(true, true, true))), !all(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
    let var_6 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-1149f * var_0.x), _wgslsmith_f_op_f32(-1000f - -1244f)), vec3<f32>(_wgslsmith_f_op_f32(-876f * var_0.x), -380f, 184f))) - vec3<f32>(-818f, -400f, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), any(vec2<bool>(true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-1346i, -max(-1i, 27816i), 1i, 4856i), 0u, vec3<f32>(-1607f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(var_6.x))) * -505f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))), 1721f))));
}

