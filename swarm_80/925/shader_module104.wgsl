struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(2224f - 1536f);
    let var_2 = Struct_1(vec2<u32>(firstTrailingBit(select(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.zz), firstTrailingBit(0u), false)), _wgslsmith_mult_u32(1u, ~u_input.a)), -(select(abs(vec2<i32>(55161i, u_input.d)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, u_input.d)), vec2<bool>(true, false)) << ((vec2<u32>(4294967295u, 62561u) & u_input.b.xy) % vec2<u32>(32u))));
    var var_3 = max(u_input.b & u_input.b, u_input.b);
    var var_4 = Struct_3(15085i ^ var_2.b.x, reverseBits(select(vec2<u32>(~var_2.a.x, firstLeadingBit(27095u)), ~(~var_3.zz), (-11477i <= var_2.b.x) & false)));
    return select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, false));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    let var_0 = !(!all(!select(arg_2.d.xyy, arg_2.d.xyz, arg_2.d.yzx)));
    let var_1 = select(arg_0.a, vec2<u32>(arg_2.a.a.x, arg_2.a.a.x), all(vec4<bool>(_wgslsmith_f_op_f32(sign(1000f)) > _wgslsmith_div_f32(arg_2.c, 1959f), true, true, var_0 || arg_2.d.x)));
    let var_2 = arg_0.a.x;
    let var_3 = !all(select(!arg_2.d.zw, select(!arg_2.d.xx, !arg_2.d.xw, vec2<bool>(var_0, arg_2.d.x)), func_3()));
    let var_4 = Struct_1(select(arg_2.a.a << (u_input.b.xw % vec2<u32>(32u)), arg_0.a, !select(arg_2.d.xx, arg_2.d.zz, vec2<bool>(false, var_0))) & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.wy, vec2<u32>(arg_0.a.x, 4294967295u)) >> (arg_0.a % vec2<u32>(32u)), arg_1), arg_0.b);
    return true;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = select(arg_0.yy, vec2<bool>(!(!all(arg_0.xy)), all(select(arg_0.xy, select(arg_0.zz, vec2<bool>(false, arg_0.x), arg_0.zx), !vec2<bool>(false, arg_0.x)))), vec2<bool>(true && any(!vec4<bool>(false, true, arg_0.x, false)), false));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(countOneBits(abs(_wgslsmith_div_i32(-33414i, u_input.d))), _wgslsmith_add_i32(countOneBits(u_input.d) ^ -1i, u_input.d)), _wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), vec4<i32>(u_input.d, u_input.d, 27971i, u_input.d))) << (firstTrailingBit(vec4<u32>(u_input.c, u_input.a, 1u, 3382u) & u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d >> (firstTrailingBit(u_input.a) % 32u))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-337f - 1951f), _wgslsmith_f_op_f32(f32(-1f) * -141f)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(940f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-740f, -320f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-378f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-936f)), -1111f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1041f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2145f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(999f))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 + _wgslsmith_f_op_vec3_f32(sign(var_3))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.x, var_3.x, var_3.x)))))) - vec3<f32>(1131f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(741f - _wgslsmith_f_op_f32(step(var_3.x, -369f))) - var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1632f) - -161f)));
    return Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, ~u_input.b.x), ~(~vec2<u32>(u_input.c, u_input.c))), vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(16155i, -12877i), 22127i >> (u_input.a % 32u)))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(~vec2<u32>(u_input.b.x, firstLeadingBit(u_input.b.x)), firstTrailingBit(select(countOneBits(arg_1.zz), _wgslsmith_mult_vec2_i32(vec2<i32>(-16285i, arg_1.x), arg_1.yx), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), func_4(select(vec3<bool>(true, func_2(Struct_1(vec2<u32>(arg_0, u_input.a), vec2<i32>(arg_1.x, -2147483647i)), vec2<u32>(u_input.a, u_input.b.x), Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.c), vec2<i32>(-2147483647i, -9417i)), Struct_1(vec2<u32>(arg_0, arg_0), arg_1.ww), 1000f, vec4<bool>(true, true, true, true))), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f * _wgslsmith_f_op_f32(ceil(1474f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(391f, 1938f, true)))) + 1f))), vec4<bool>(true, true, true, true));
    var_0 = Struct_2(func_4(var_0.d.zww), Struct_1(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(var_0.a.a.x, 25170u)), ~abs(vec2<u32>(1u, u_input.c))), abs(arg_1.xy)), var_0.c, !vec4<bool>(20129i <= _wgslsmith_div_i32(arg_1.x, arg_1.x), false, false, true));
    var_0 = Struct_2(func_4(var_0.d.yzz), Struct_1(reverseBits(func_4(vec3<bool>(true, true, true)).a), var_0.b.b), var_0.c, var_0.d);
    let var_1 = select(select(reverseBits(vec2<i32>(arg_1.x, var_0.a.b.x)) << (~vec2<u32>(33543u, 32266u) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -10312i, u_input.d), select(var_0.d.yw, var_0.d.zz, var_0.d.x)), arg_1.xx, func_3()) << ((u_input.b.zx & select(_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.yx), min(var_0.b.a, u_input.b.zz), var_0.d.zx)) % vec2<u32>(32u));
    var var_2 = select(select(select(var_0.d.zwx, var_0.d.wwx, !var_0.d.wyy), vec3<bool>(var_0.d.x, true, true), select(vec3<bool>(true, false, var_0.d.x && var_0.d.x), !vec3<bool>(false, var_0.d.x, true), var_0.d.xxx)), var_0.d.wzx, var_0.d.ywy);
    return Struct_3(_wgslsmith_mult_i32(var_0.b.b.x, ~(-var_0.b.b.x)), vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(arg_0, u_input.c)), arg_0) ^ max(vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, var_0.a.a.x), arg_0), var_0.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c, -(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.d, 2147483647i, -1i), vec4<i32>(-30487i, 2147483647i, u_input.d, 1i)))));
    var var_1 = func_4(vec3<bool>(false, true, true));
    var_1 = func_4(select(vec3<bool>(true, false, true), vec3<bool>(all(vec2<bool>(true, false)), true, func_3().x), vec3<bool>(func_2(Struct_1(vec2<u32>(22297u, 10802u), vec2<i32>(var_1.b.x, 0i)), ~var_0.b, Struct_2(Struct_1(var_1.a, vec2<i32>(2147483647i, 20940i)), Struct_1(vec2<u32>(u_input.c, 9023u), vec2<i32>(u_input.d, var_0.a)), 148f, vec4<bool>(false, false, true, true))), true, all(func_3()))));
    var_1 = Struct_1(vec2<u32>(~(~u_input.c), 4294967295u), ~var_1.b >> (vec2<u32>(select(1u, _wgslsmith_div_u32(24758u, 54998u), true), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(93687u, var_1.a.x, 94889u), _wgslsmith_add_u32(u_input.a, var_0.b.x), max(var_1.a.x, 1u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1854f + 224f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1352f, 873f) - vec2<f32>(-531f, 246f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, -296f)), vec2<f32>(-1556f, -2267f), func_3())))))), true));
    var var_3 = firstLeadingBit(0i);
    var var_4 = !select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(false, all(vec3<bool>(true, true, true)), !(var_0.a >= -2147483647i)), 0u <= firstLeadingBit(firstTrailingBit(1u)));
    var_4 = vec3<bool>(var_2.x < var_2.x, any(vec2<bool>(any(vec2<bool>(var_4.x, true)), false)), select(!(!(false || var_4.x)), var_4.x, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(max(var_2.x, 330f))) * -505f)), var_2.x, -_wgslsmith_mod_vec4_i32(~(~vec4<i32>(21524i, 15374i, u_input.d, -8161i)), vec4<i32>(-var_1.b.x, var_1.b.x, _wgslsmith_div_i32(u_input.d, u_input.d), 2147483647i << (u_input.a % 32u))));
}

