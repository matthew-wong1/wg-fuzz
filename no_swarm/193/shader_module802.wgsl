struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = vec4<bool>(true, all(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), 2939u > u_input.a)), select(any(vec3<bool>(u_input.a < u_input.a, true, all(vec2<bool>(false, true)))), (_wgslsmith_f_op_f32(step(-598f, -423f)) == -1000f) & all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !any(vec3<bool>(true, true, true))), true);
    var_0 = !select(!select(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, false, var_0.x, true), var_0.x), vec4<bool>(var_0.x, false, false, false), !var_0.x), vec4<bool>(var_0.x, all(var_0.yy), true, 282f == _wgslsmith_f_op_f32(trunc(-2572f))), !select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), true), vec4<bool>(false, true, false, var_0.x), any(var_0.zx)));
    var_0 = vec4<bool>(all(var_0.yxw), any(vec3<bool>(!(!var_0.x), !any(var_0.wwy), false)), var_0.x, false);
    var var_1 = vec2<u32>(u_input.a, u_input.a);
    var var_2 = false;
    return reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(1295u, var_1.x, var_1.x), vec3<u32>(0u, u_input.a | ~17378u, ~var_1.x << (90782u % 32u))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_add_u32(u_input.a, 0u) | _wgslsmith_dot_vec3_u32(~(func_3(-22074i) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 10589u, u_input.a), vec3<u32>(11854u, u_input.a, u_input.a)) % vec3<u32>(32u))), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) << (~(vec3<u32>(u_input.a, 0u, 3761u) | vec3<u32>(65954u, 0u, 1u)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_sub_u32(~((u_input.a ^ var_0) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), ~vec2<u32>(1u, var_0))), min(_wgslsmith_dot_vec3_u32(min(firstLeadingBit(vec3<u32>(1u, u_input.a, var_0)), abs(vec3<u32>(var_0, 50930u, u_input.a))), vec3<u32>(abs(var_0), ~4294967295u, ~1u)), var_0));
    var var_2 = -_wgslsmith_div_vec2_i32(~vec2<i32>(abs(0i), -31000i), vec2<i32>(select(1i, 1i, all(vec4<bool>(false, false, true, true))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(33553i, 2147483647i)), vec2<i32>(1i, 1i))));
    var var_3 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, u_input.a, 36174u, var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 27630u, var_1, var_1), vec4<u32>(var_1, var_1, 0u, 33376u)), ~vec4<u32>(34782u, 78374u, var_0, var_0)) & vec4<u32>(61973u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 10404u), 1u, ~u_input.a), vec4<u32>(u_input.a, 69685u, 0u, 4294967295u)));
    var var_4 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), u_input.a < var_1), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(true, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), true), true)), vec2<bool>(all(vec3<bool>(true, var_3.x > 4294967295u, any(vec3<bool>(true, true, false)))), false), true);
    return -38249i;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    let var_0 = abs(~(min(_wgslsmith_sub_u32(u_input.a, arg_1), arg_1 | 1446u) << (u_input.a % 32u)));
    let var_1 = vec3<i32>(~(~(-1i) & arg_0), _wgslsmith_add_i32(-_wgslsmith_sub_i32(firstTrailingBit(-30617i), abs(-14495i)), countOneBits(~arg_0) >> (select(~4294967295u, u_input.a ^ arg_1, any(vec3<bool>(arg_2.x, arg_2.x, false))) % 32u)), abs(_wgslsmith_mod_i32(arg_0, ~(-2147483647i))));
    let var_2 = -reverseBits(firstLeadingBit(var_1.yz));
    var var_3 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 8219u, 1u), ~vec4<u32>(1u, arg_1, arg_1, var_0)) & ~vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.a, var_0), ~var_0, min(16056u, u_input.a)));
    let var_4 = _wgslsmith_add_u32(var_0, ~_wgslsmith_add_u32(0u, 4294967295u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-815f + _wgslsmith_f_op_f32(-510f * -1509f))))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(925f)))) * 1172f) * _wgslsmith_f_op_f32(func_4(func_2(), arg_0.x, !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(622f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(345f + -674f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1254f) + -508f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1574f * -225f)))));
    var var_1 = ~_wgslsmith_mult_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-308i, -33699i, -1i, -15521i), vec4<i32>(50043i, 19431i, -17362i, -1i))) << (((_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, arg_0.x, 0u), firstLeadingBit(vec4<u32>(68144u, arg_0.x, 4294967295u, u_input.a))) ^ vec4<u32>(~arg_0.x, min(1u, 98843u), arg_0.x & arg_0.x, _wgslsmith_clamp_u32(arg_0.x, 1u, u_input.a))) & abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.a, 3332u, 1u), vec4<u32>(u_input.a, u_input.a, 15558u, 11021u)), vec4<u32>(arg_0.x, u_input.a, u_input.a, arg_0.x) | vec4<u32>(u_input.a, 4294967295u, 38144u, u_input.a)))) % vec4<u32>(32u));
    var_1 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(reverseBits(vec4<i32>(16632i, var_1.x, -548i, var_1.x)), -vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), vec4<i32>(-1i, firstTrailingBit(var_1.x), select(21949i, -17264i, false), _wgslsmith_div_i32(var_1.x, 1i))), ~(~firstLeadingBit(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<i32>(var_1.x, var_1.x, 1i, 13426i | firstTrailingBit(var_1.x)));
    var_1 = -select(vec4<i32>(var_1.x, 2147483647i, 0i, 32558i), -vec4<i32>(-2147483647i, 13985i, 34124i, _wgslsmith_div_i32(var_1.x, var_1.x)), !vec4<bool>(true, true, true, any(vec4<bool>(true, true, false, true))));
    return Struct_2(Struct_1(-1i, vec2<bool>(all(vec2<bool>(false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_add_u32(arg_0.x, firstLeadingBit(~arg_0.x)), -2147483647i), -var_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-698f, -141f, -1600f), vec3<bool>(false, true, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-608f, -1373f, -796f) * vec3<f32>(609f, 827f, 1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1394f, 268f, -1000f)))))), -24251i);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = -249f;
    let var_1 = Struct_2(func_1(~(~reverseBits(vec2<u32>(1u, arg_3.c)))).a, -2147483647i, arg_0.c, _wgslsmith_div_i32(-max(abs(-5557i), ~(-2147483647i)), arg_3.a));
    let var_2 = _wgslsmith_f_op_f32(floor(var_1.c.x));
    var var_3 = arg_3;
    var var_4 = Struct_2(arg_3, -arg_0.b, func_1(vec2<u32>(~(~u_input.a), 1u)).c, -1934i);
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.a.c, u_input.a), ~vec2<u32>(1u, arg_2.c), vec2<u32>(1u, arg_2.c)), vec2<u32>(1u, ~65652u)), ~(vec2<u32>(1u, 18386u) << (~vec2<u32>(1u, arg_0.a.c) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(var_3.c, ~u_input.a))) >> ((vec2<u32>(~arg_2.c, u_input.a) & max(countOneBits(countOneBits(vec2<u32>(0u, 94158u))), ~countOneBits(vec2<u32>(0u, 1u)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, 1u) ^ ~(~(~(~vec2<u32>(u_input.a, u_input.a))));
    var_0 = ~_wgslsmith_add_vec2_u32(~(~vec2<u32>(u_input.a, 33279u)) >> (vec2<u32>(54606u >> (var_0.x % 32u), ~4294967295u) % vec2<u32>(32u)), ~(~select(vec2<u32>(8019u, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(false, true))));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.x, 4254u) | abs(min(vec2<u32>(var_0.x, 89382u), vec2<u32>(u_input.a, u_input.a))), min(~(vec2<u32>(var_0.x, u_input.a) >> (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))), ~vec2<u32>(40691u, u_input.a) ^ countOneBits(vec2<u32>(var_0.x, var_0.x)))));
    var_0 = firstLeadingBit(func_5(func_1(~max(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 12986u))), 1i | -func_1(vec2<u32>(u_input.a, u_input.a)).a.a, Struct_1(~firstLeadingBit(-24800i), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), ~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 70310u, u_input.a, u_input.a), vec4<u32>(var_0.x, 3402u, var_0.x, 1u)) % 32u), countOneBits(1i)), func_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(u_input.a, 1u), vec2<u32>(var_0.x, 33942u))).a));
    let var_1 = !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, -28199i < _wgslsmith_dot_vec4_i32(vec4<i32>(8755i, 2147483647i, 1769i, -25408i), vec4<i32>(0i, 0i, 10610i, -12310i)), true), !any(vec2<bool>(true, true)));
    var var_2 = func_1(vec2<u32>(4294967295u, 57808u)).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(59561u, 64892u)), 133779u & (~16098u | (u_input.a ^ 0u)), 1u), ~(~min(vec3<u32>(4294967295u, 53874u, var_2.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.c, 39236u, 20194u), vec3<u32>(18027u, var_2.c, 34189u)))), var_2.a, func_3(func_2()), _wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1916f)) + -247f)));
}

