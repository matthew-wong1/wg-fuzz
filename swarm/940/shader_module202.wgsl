struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1663f)) + 1174f))), -596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-315f, 2141f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-170f, -622f, true))))), ~select(u_input.c.yz, u_input.c.zz | ~u_input.c.xz, false), -select(-(vec4<i32>(u_input.b.x, -31052i, u_input.b.x, u_input.a) >> (vec4<u32>(48626u, 50459u, 4294967295u, 32833u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -18261i, u_input.b.x), vec4<i32>(0i, u_input.c.x, -1i, 4441i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, 0i, u_input.a), vec4<i32>(32894i, 2147483647i, u_input.c.x, 92i))), -u_input.b.x < -u_input.a));
    let var_1 = -var_0.c;
    var var_2 = firstTrailingBit(firstTrailingBit(u_input.c.x));
    let var_3 = -168f;
    var var_4 = abs(vec4<i32>(0i, _wgslsmith_add_i32(abs(~u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-19193i, -36014i), reverseBits(-14007i))), u_input.c.x, reverseBits(-50073i)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + _wgslsmith_f_op_f32(-var_0.a.x)), var_3) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + -1551f), _wgslsmith_f_op_f32(-2387f + var_3), _wgslsmith_f_op_f32(-1599f + -133f))), var_0.a);
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(1328f, -1533f))))) + _wgslsmith_f_op_vec3_f32(func_3(false))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 2111i), vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.c.x)) | 31595i, u_input.b.x), ~(~(~u_input.c.xy))), _wgslsmith_sub_vec4_i32((~vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.a) ^ -vec4<i32>(u_input.a, u_input.b.x, u_input.c.x, 0i)) << ((~vec4<u32>(34172u, arg_1, 2946u, arg_1) >> ((vec4<u32>(arg_1, 8582u, arg_1, arg_1) ^ vec4<u32>(0u, arg_1, 15760u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~select(vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.a), -vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.c.x), 0u > arg_1)));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(290f - _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), _wgslsmith_f_op_f32(-var_0.a.x), -888f), select(var_0.c.ww, _wgslsmith_mult_vec2_i32(-(vec2<i32>(1i, 1i) ^ vec2<i32>(-51030i, u_input.c.x)), min(~var_0.b, vec2<i32>(var_0.b.x, 0i))), !all(vec4<bool>(true, true, true, true))), firstLeadingBit(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(29186i, var_0.c.x, var_0.c.x, 196i)), vec4<i32>(_wgslsmith_sub_i32(var_0.c.x, -32572i), i32(-1i) * -8306i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), vec2<i32>(5286i, 2147483647i)), -79482i))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)), _wgslsmith_f_op_vec3_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(func_3(true)))), select(var_0.c.xw, -abs(u_input.b.yy ^ vec2<i32>(-24896i, -1i)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), 27806u > arg_1))), abs(~_wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(-46894i, u_input.b.x, -4169i, var_0.c.x))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -187f)), 394f, arg_0), vec2<i32>(abs(_wgslsmith_dot_vec2_i32(u_input.c.yy, abs(var_0.b))), _wgslsmith_div_i32(-36330i, -21697i) >> (0u % 32u)), vec4<i32>(min(~(-1i), 32068i) >> (arg_1 % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, var_0.c.x), var_0.c.x), (var_0.b | vec2<i32>(-382i, u_input.a)) >> (vec2<u32>(73697u, 40489u) % vec2<u32>(32u))), 0i, u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x - 1000f), -383f)) * 1234f)));
    return _wgslsmith_add_u32(52808u, 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = func_2(arg_1.a.x, reverseBits(11048u));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var_1 = var_2;
    var_0 = ~arg_0.x;
    return vec4<bool>(true, false | (5044u == ~_wgslsmith_mod_u32(arg_0.x, 4294967295u)), false, abs(-_wgslsmith_add_i32(arg_1.b.x, var_1.b.x)) <= _wgslsmith_mult_i32(arg_1.b.x, _wgslsmith_div_i32(~arg_1.c.x, ~45161i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = !any(select(!func_1(vec2<u32>(11436u, 30030u), Struct_1(vec3<f32>(2294f, -1206f, -975f), u_input.b.yz, vec4<i32>(u_input.a, u_input.a, u_input.b.x, 16527i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), u_input.c.x >= u_input.b.x), vec4<bool>(true, true, true, true)));
    var var_2 = true | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(step(869f, 619f))) - -1117f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(trunc(949f)))) - _wgslsmith_div_f32(-1046f, -1551f)));
    var_0 = abs(firstLeadingBit(86336u));
    var var_3 = vec3<bool>(var_1, any(vec3<bool>(all(!vec3<bool>(var_1, var_1, false)), all(vec4<bool>(false, var_1, true, false)), !var_1)), true);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-171f, 1378f, -131f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, -667f, 383f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1408f, _wgslsmith_f_op_f32(233f - -145f), _wgslsmith_div_f32(620f, -154f)))))), _wgslsmith_div_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.b.yx, countOneBits(vec2<i32>(-1i, u_input.b.x))), abs(vec2<i32>(select(21165i, -9725i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -49147i), vec2<i32>(-1i, -36750i))))), min(vec4<i32>(u_input.a, u_input.b.x >> (~4294967295u % 32u), _wgslsmith_sub_i32(u_input.c.x, u_input.b.x) >> ((1u >> (0u % 32u)) % 32u), ~1i), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(1i, u_input.b.x, 2147483647i, 1i) & vec4<i32>(8321i, u_input.b.x, u_input.a, u_input.a)), countOneBits(max(vec4<i32>(-3773i, -35848i, u_input.c.x, 15607i), vec4<i32>(u_input.c.x, 74156i, 1i, -1i))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(53403i, u_input.c.x, u_input.a, u_input.a), vec4<i32>(u_input.b.x, -2147483647i, u_input.a, u_input.a), vec4<i32>(0i, u_input.c.x, 0i, u_input.c.x)), firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.b.x))))));
    var var_5 = firstTrailingBit(~4294967295u);
    var_3 = !vec3<bool>(var_1, (_wgslsmith_dot_vec2_i32(var_4.c.xy, vec2<i32>(u_input.a, var_4.c.x)) <= firstLeadingBit(var_4.c.x)) && true, func_1(~vec2<u32>(4294967295u, 24078u), Struct_1(vec3<f32>(-590f, var_4.a.x, var_4.a.x), firstTrailingBit(vec2<i32>(u_input.a, 9419i)), abs(var_4.c))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))))), abs(_wgslsmith_add_u32(select(1u, 1u, any(var_3.yx)), 1u)), 4294967295u, abs(~max(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u))), ~(~min(-2147483647i, 1i) << (~(~0u) % 32u)));
}

