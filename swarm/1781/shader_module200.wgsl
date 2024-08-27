struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(-(~1i), ~(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.zw, vec2<i32>(5857i, u_input.b.x)), u_input.b.zz, u_input.b.yy & vec2<i32>(u_input.b.x, 0i))));
    let var_1 = Struct_3(47335u);
    var var_2 = Struct_2(Struct_1(abs(var_0.a) << (0u % 32u), abs(-vec2<i32>(0i, -38368i))), Struct_1(-var_0.b.x, vec2<i32>(var_0.b.x << (5974u % 32u), u_input.b.x)), all(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, true, true)), vec4<bool>(any(vec4<bool>(true, true, arg_0.x, true)), arg_0.x, arg_0.x, false), true)), ~_wgslsmith_mod_u32(u_input.a & 0u, u_input.a));
    var var_3 = abs(firstLeadingBit(1u));
    var var_4 = !arg_0.x;
    return select(vec2<i32>(var_2.a.b.x, ~var_2.a.b.x), u_input.b.yy ^ (-var_0.b >> (firstTrailingBit(vec2<u32>(1u, 57763u)) % vec2<u32>(32u))), !select(vec2<bool>(!var_2.c, !arg_0.x), vec2<bool>(!arg_0.x, arg_0.x), arg_0));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_3(u_input.a);
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_u32(arg_1, var_1.a);
    return any(vec3<bool>(true, true, true));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(max(~(u_input.b.x << (33448u % 32u)), -_wgslsmith_mod_i32(u_input.b.x, var_0)) >> (8947u % 32u), ~vec2<i32>(-47345i, u_input.b.x));
    let var_2 = -1i;
    let var_3 = Struct_2(var_1, var_1, func_4(func_3(vec2<bool>(arg_0.x, u_input.b.x != 21181i)), u_input.a, var_1, vec3<i32>(var_2, func_3(arg_0.zz).x, var_2) & _wgslsmith_clamp_vec3_i32(~u_input.b.xwz, _wgslsmith_sub_vec3_i32(vec3<i32>(4424i, -1i, u_input.b.x), vec3<i32>(2147483647i, var_2, u_input.b.x)), _wgslsmith_mod_vec3_i32(u_input.b.wyz, u_input.b.ywz))), firstLeadingBit(~firstTrailingBit(~u_input.a)));
    let var_4 = var_1;
    return var_4;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = Struct_3(countOneBits(_wgslsmith_mod_u32(abs(17141u), 51699u)));
    let var_2 = u_input.b;
    var var_3 = arg_0;
    var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(40028u, ~(~37776u), 3331u, ~u_input.a), ~(vec4<u32>(1u, arg_0.d, 87668u, 99807u) >> (select(vec4<u32>(var_3.d, 22193u, 30889u, arg_0.d), vec4<u32>(var_3.d, var_3.d, 47943u, arg_0.d), arg_1) % vec4<u32>(32u)))));
    return arg_0.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_2(func_5(Struct_2(func_2(vec3<bool>(arg_1.x, arg_1.x, true)), Struct_1(u_input.b.x, firstTrailingBit(vec2<i32>(-1i, 2147483647i))), all(arg_1) && true, reverseBits(arg_0.x)), vec4<bool>(!arg_1.x, true, true, !all(vec4<bool>(true, true, arg_1.x, true)))), func_5(Struct_2(Struct_1(func_3(vec2<bool>(false, arg_1.x)).x, vec2<i32>(u_input.b.x, 2147483647i) >> (arg_0.zw % vec2<u32>(32u))), func_5(Struct_2(Struct_1(u_input.b.x, u_input.b.wy), Struct_1(-29878i, u_input.b.yw), arg_1.x, arg_0.x), select(vec4<bool>(arg_1.x, false, false, false), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, false))), true, 1u), !vec4<bool>(-1i >= u_input.b.x, true, false, true)), false, min(~u_input.a, 6165u));
    var_0 = Struct_2(var_0.b, func_5(Struct_2(Struct_1(abs(var_0.a.a), vec2<i32>(2147483647i, var_0.a.a) | vec2<i32>(2147483647i, -30972i)), var_0.b, !var_0.c | true, abs(var_0.d) >> (~41617u % 32u)), vec4<bool>(true, var_0.c, func_3(vec2<bool>(false, false)).x <= 2147483647i, arg_1.x & all(vec3<bool>(false, var_0.c, var_0.c)))), all(select(!select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), arg_1.x), select(!vec4<bool>(true, arg_1.x, var_0.c, true), select(vec4<bool>(var_0.c, true, arg_1.x, false), vec4<bool>(true, var_0.c, false, arg_1.x), true), 1i != var_0.a.b.x), true)), abs(~var_0.d ^ 45351u));
    var_0 = Struct_2(var_0.b, func_5(Struct_2(var_0.b, var_0.a, false, u_input.a), vec4<bool>(true, true, any(select(vec3<bool>(arg_1.x, false, var_0.c), vec3<bool>(arg_1.x, arg_1.x, var_0.c), arg_1.x)), true)), var_0.c, ~0u);
    var_0 = Struct_2(var_0.b, Struct_1(-(~var_0.b.b.x), _wgslsmith_mult_vec2_i32(var_0.a.b, var_0.b.b ^ u_input.b.wy) >> (~(~arg_0.zw) % vec2<u32>(32u))), select(any(!arg_1), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(748f, -349f), _wgslsmith_f_op_f32(select(199f, -1010f, false)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -467f))), all(vec3<bool>(var_0.c, false, true))), 1u);
    let var_1 = func_5(Struct_2(Struct_1(-_wgslsmith_div_i32(1i, u_input.b.x), var_0.a.b), func_2(vec3<bool>(!arg_1.x, all(vec4<bool>(true, var_0.c, arg_1.x, true)), func_4(vec2<i32>(u_input.b.x, 866i), u_input.a, Struct_1(var_0.a.b.x, u_input.b.yz), u_input.b.ywx))), all(select(arg_1, vec2<bool>(true, arg_1.x), arg_1.x)) | true, 4294967295u), select(vec4<bool>(true, !(true & var_0.c), any(vec2<bool>(var_0.c, var_0.c)), !all(vec4<bool>(true, true, true, true))), select(select(!vec4<bool>(false, false, arg_1.x, arg_1.x), select(vec4<bool>(var_0.c, var_0.c, arg_1.x, arg_1.x), vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(var_0.c, true, arg_1.x, true)), select(vec4<bool>(true, true, true, var_0.c), vec4<bool>(false, false, false, var_0.c), vec4<bool>(var_0.c, arg_1.x, true, var_0.c))), vec4<bool>(all(vec4<bool>(false, var_0.c, arg_1.x, var_0.c)), var_0.c, true, arg_1.x), any(vec4<bool>(true, true, true, true))), reverseBits(17258u << (u_input.a % 32u)) <= _wgslsmith_mod_u32(u_input.a, arg_0.x | u_input.a)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(385f, _wgslsmith_f_op_f32(377f + -462f))))))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f * _wgslsmith_f_op_f32(trunc(-215f))))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1.x;
    var_0 = !all(select(select(!vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true), true), select(select(arg_1.yz, arg_1.yx, true), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_3.c, true), arg_1.yy), true), u_input.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d, 0u, 70916u), vec3<u32>(arg_3.d, 1u, 66887u))));
    var var_1 = vec4<u32>(firstTrailingBit(0u), u_input.a, 56528u, ~4294967295u) | ~(~min(vec4<u32>(u_input.a, arg_3.d, 29522u, arg_3.d), firstLeadingBit(vec4<u32>(arg_0.a, 18521u, 4294967295u, 64971u))));
    var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~var_1.x, firstTrailingBit(arg_3.d) & 4294967295u, _wgslsmith_mult_u32(arg_3.d, arg_3.d), ~var_1.x), ~(~(~vec4<u32>(arg_3.d, 1u, 4294967295u, 4294967295u))));
    var var_2 = vec3<bool>(!arg_1.x, arg_3.c, true);
    return 19467u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(Struct_3(43847u), select(vec3<bool>(true, true, func_1(vec4<u32>(36074u, u_input.a, u_input.a, u_input.a), vec2<bool>(false, false))), vec3<bool>(true, any(vec2<bool>(true, false)), func_4(u_input.b.yy, 35626u, Struct_1(1i, vec2<i32>(-1796i, u_input.b.x)), vec3<i32>(u_input.b.x, 19128i, -68032i))), true), func_5(Struct_2(Struct_1(u_input.b.x, u_input.b.yw), func_5(Struct_2(Struct_1(2722i, u_input.b.zy), Struct_1(-30831i, vec2<i32>(u_input.b.x, u_input.b.x)), false, 44798u), vec4<bool>(true, false, false, false)), true, _wgslsmith_div_u32(1u, 4294967295u)), vec4<bool>(true, true, true, true)), Struct_2(func_5(Struct_2(Struct_1(-76963i, u_input.b.zy), Struct_1(u_input.b.x, vec2<i32>(26116i, 2147483647i)), false, u_input.a), vec4<bool>(true, false, false, false)), Struct_1(-17520i, vec2<i32>(1i, -1i)), all(vec3<bool>(true, true, true)), u_input.a)));
    let var_1 = Struct_2(func_5(Struct_2(Struct_1(34738i, ~u_input.b.xx), func_5(Struct_2(Struct_1(u_input.b.x, u_input.b.zx), Struct_1(u_input.b.x, vec2<i32>(-18156i, 1i)), true, 1u), vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true)), u_input.a), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(abs(u_input.b.x), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.b.x, -42792i), select(vec4<i32>(-52560i, u_input.b.x, 1i, u_input.b.x), vec4<i32>(2147483647i, -1i, -39824i, u_input.b.x), vec4<bool>(false, true, false, true)))), vec2<i32>(u_input.b.x, -14039i)), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), countOneBits(_wgslsmith_sub_u32(~var_0.a, u_input.a) & ~firstLeadingBit(u_input.a)));
    let var_2 = Struct_3(~20927u);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-859f, 486f, 232f, 1213f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1180f, -473f, 711f, -193f), vec4<f32>(312f, -590f, -459f, 349f)))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-429f, -384f)) * _wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(1324f * -267f))), -1101f, 501f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1048f + 468f) * _wgslsmith_f_op_f32(f32(-1f) * -771f)))))));
    let var_4 = ~firstTrailingBit(~_wgslsmith_mod_u32(var_1.d, 15143u) >> (98017u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(abs(~vec3<i32>(var_1.a.a, -20963i, 111132i)), u_input.b.xxw), _wgslsmith_f_op_vec2_f32(ceil(var_3.xy)));
}

