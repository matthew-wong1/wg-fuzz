struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec2<f32> {
    var var_0 = Struct_1(vec2<u32>(u_input.d.x & 63135u, countOneBits(1u)));
    var_0 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.d.x, var_0.a.x) ^ 1u));
    var var_1 = true;
    let var_2 = Struct_1(~var_0.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(exp2(arg_0))))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1981f + arg_0), _wgslsmith_f_op_f32(1185f + arg_0))), _wgslsmith_f_op_f32(select(-713f, _wgslsmith_f_op_f32(min(arg_0, arg_0)), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, _wgslsmith_f_op_f32(abs(708f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(376f)), _wgslsmith_f_op_f32(trunc(-1113f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-285f + _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(512f)))));
    var var_1 = ~vec2<u32>(arg_3.a.x, firstTrailingBit(_wgslsmith_mod_u32(~arg_2.a.x, 1u)));
    var var_2 = ~(~4098u);
    let var_3 = firstLeadingBit((_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 56138i, u_input.b, u_input.b) | vec4<i32>(2147483647i, -35442i, u_input.b, -1232i), vec4<i32>(u_input.c, 34180i, 0i, u_input.c)) >> (vec4<u32>(var_1.x, 3332u | arg_1, 47921u, ~1u) % vec4<u32>(32u))) | -_wgslsmith_div_vec4_i32(vec4<i32>(-4126i, 2147483647i, u_input.b, -3216i) ^ vec4<i32>(-38286i, u_input.b, u_input.c, u_input.c), reverseBits(vec4<i32>(u_input.b, 6868i, u_input.c, u_input.b))));
    var var_4 = abs(_wgslsmith_mod_vec2_u32(abs(abs(u_input.a)), _wgslsmith_div_vec2_u32(~u_input.d, vec2<u32>(arg_2.a.x, u_input.a.x)))) >> (arg_2.a % vec2<u32>(32u));
    return !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(true, true, true, true)), !(arg_2.a.x > var_1.x), all(vec4<bool>(true, true, false, true)) || true, all(vec2<bool>(true, true))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, true, true), false), _wgslsmith_f_op_f32(var_0.x * -348f) >= _wgslsmith_div_f32(2157f, var_0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2198f)))), vec2<f32>(_wgslsmith_f_op_f32(796f - 386f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(sign(1000f)))))), abs(~u_input.a.x), arg_0, Struct_1(_wgslsmith_mult_vec2_u32(~vec2<u32>(4413u, 0u), arg_0.a)));
    var_0 = !select(!(!vec4<bool>(true, var_0.x, true, true)), vec4<bool>(!(var_0.x && var_0.x), !all(vec4<bool>(var_0.x, true, false, var_0.x)), true, func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-659f, -596f), vec2<f32>(1526f, -842f), var_0.wy)), u_input.d.x, arg_1, Struct_1(vec2<u32>(15911u, arg_1.a.x))).x), var_0.x);
    var var_1 = firstTrailingBit((1u ^ ~arg_1.a.x) << (~countOneBits(1u) % 32u));
    let var_2 = reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_1.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(58037u, 88601u, arg_0.a.x), vec3<u32>(63333u, 1u, u_input.d.x)), _wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a) ^ ~4294967295u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.x, 51215u, arg_0.a.x), countOneBits(vec3<u32>(arg_1.a.x, u_input.d.x, 8611u)))));
    var var_3 = Struct_1(((select(arg_1.a, vec2<u32>(2776u, 566u), true) << (u_input.d % vec2<u32>(32u))) | reverseBits(~vec2<u32>(66056u, 48018u))) >> (~var_2.yz % vec2<u32>(32u)));
    return Struct_1(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(12898u << (u_input.d.x % 32u), arg_1.a.x ^ 4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(var_2.x, u_input.a.x)), ~u_input.d.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = ~1u;
    let var_1 = all(!vec4<bool>(arg_1.x > u_input.c, true, true, true));
    let var_2 = func_2(Struct_1(arg_0.yz), Struct_1(vec2<u32>(0u, arg_0.x)));
    let var_3 = _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_1.yx), _wgslsmith_mod_vec2_i32(~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1274i, -46371i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.c, u_input.b)), arg_1.zy | vec2<i32>(1i, -25571i), vec2<bool>(var_1, var_1)), min(vec2<i32>(-arg_1.x, arg_1.x | u_input.c), countOneBits(arg_1.zx))));
    var var_4 = !any(select(!vec3<bool>(true, false, var_1), vec3<bool>(select(var_1, var_1, true), true, !var_1), var_1));
    return u_input.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(arg_2.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.a.x, arg_2.a.x), vec3<u32>(u_input.a.x, arg_1.a.x, 0u))), reverseBits(u_input.a.x), _wgslsmith_mult_u32(~(0u | arg_2.a.x), select(~arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_1.a.x, 62713u, 0u), vec4<u32>(79260u, arg_1.a.x, 0u, arg_0.a.x)), any(vec2<bool>(false, true)))), arg_0.a.x), vec4<u32>(_wgslsmith_clamp_u32(select(_wgslsmith_sub_u32(33777u, 10152u), 1u, arg_1.a.x != 5755u), ~u_input.a.x >> (32051u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.a.x, arg_2.a.x, arg_1.a.x), countOneBits(vec3<u32>(31184u, arg_0.a.x, arg_2.a.x)))), u_input.d.x, 1u, 38591u), ~max(firstTrailingBit(~vec4<u32>(0u, 35207u, 4294967295u, 18580u)), abs(vec4<u32>(arg_2.a.x, arg_0.a.x, 21001u, arg_0.a.x) | vec4<u32>(2599u, 41496u, 1u, 510u))));
    let var_1 = 1u;
    let var_2 = select(vec4<bool>(true, all(vec2<bool>(true, true)), false, true), vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), func_4(vec2<f32>(-1627f, 558f), var_0.x, arg_1, arg_1).x)), false, ((41302u << (arg_1.a.x % 32u)) > min(arg_0.a.x, 33798u)) | (_wgslsmith_sub_u32(27870u, var_0.x) == ~1u)), true);
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1068f + 590f)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(279f * -1000f))).x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1678f, 2723f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-418f, 1367f)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-293f)), 1064f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, var_3.x), vec2<f32>(_wgslsmith_div_f32(var_3.x, -857f), var_3.x), all(!vec2<bool>(var_2.x, var_2.x)))) - vec2<f32>(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)), _wgslsmith_f_op_f32(select(1502f, _wgslsmith_f_op_f32(sign(-518f)), all(var_2.zxx))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(round(var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)) * _wgslsmith_f_op_f32(-1577f - -278f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<u32>(~(~u_input.d.x), var_0.a.x)), Struct_1(func_1(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(19802u, 3096u, var_0.a.x), vec3<u32>(1u, var_0.a.x, var_0.a.x), vec3<u32>(0u, u_input.a.x, var_0.a.x)), select(vec3<u32>(var_0.a.x, u_input.a.x, var_0.a.x), vec3<u32>(1079u, u_input.a.x, u_input.a.x), true), vec3<bool>(true, true, true)), -vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.b))), var_0));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f + 1786f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2899f, var_1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(-124f, -662f)))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(198f, var_1.x) * vec2<f32>(var_1.x, -180f)))))));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(115876u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 8619u, u_input.d.x), vec3<u32>(1u, u_input.d.x, var_0.a.x)) << ((var_0.a.x & 0u) % 32u), 1u, firstTrailingBit(var_0.a.x)), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(0u, 4294967295u, var_0.a.x, 46061u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(75518u, 0u, var_0.a.x, u_input.d.x), vec4<u32>(var_0.a.x, var_0.a.x, u_input.d.x, 2967u), vec4<u32>(1u, 0u, 23758u, 34011u)))) ^ abs(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 38091u), 72011u, var_0.a.x, u_input.d.x ^ func_2(Struct_1(vec2<u32>(4190u, 1u)), var_0).a.x));
    let var_3 = var_2.yyz;
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1127f)), _wgslsmith_f_op_f32(abs(710f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + -452f), _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1686f, var_1.x) * vec2<f32>(var_1.x, var_1.x)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, 526f)), vec2<f32>(-580f, -1442f)))));
    var var_4 = func_2(Struct_1(vec2<u32>(var_0.a.x, ~u_input.d.x)), Struct_1(~vec2<u32>(1u, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -521f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(-721f, var_1.x), vec2<f32>(477f, 268f)), true))), _wgslsmith_mod_vec3_u32(~(~var_3), _wgslsmith_add_vec3_u32(var_3, ~vec3<u32>(var_0.a.x, 1u, 0u)) ^ reverseBits(abs(var_3))));
}

