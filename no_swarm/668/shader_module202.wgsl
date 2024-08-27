struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = ~1i;
    let var_1 = Struct_3(vec3<i32>(-34948i, -(arg_0.a >> (firstTrailingBit(4294967295u) % 32u)), ((u_input.d << (0u % 32u)) >> (_wgslsmith_add_u32(u_input.b.x, 4294967295u) % 32u)) | -_wgslsmith_div_i32(arg_0.a, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-398f, 774f, all(vec2<bool>(true, false))))));
    var var_2 = var_1;
    var_2 = Struct_3(~(~max(~arg_0.b, select(arg_0.b, var_2.a, true))), var_1.b);
    var_0 = -(i32(-1i) * -(countOneBits(-2215i) << (u_input.b.x % 32u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * -1402f)), -178f, _wgslsmith_div_f32(var_1.b, var_1.b))))));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-300f, _wgslsmith_div_f32(-445f, 1853f), _wgslsmith_div_f32(-1775f, 558f), 967f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(-57605i, arg_0))))))), vec4<bool>(!all(vec2<bool>(false, false)), !(countOneBits(11327u) >= firstTrailingBit(u_input.b.x)), true, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) <= _wgslsmith_mult_u32(select(4294967295u, u_input.b.x, true), 1u)), Struct_1(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(0i, vec3<i32>(0i, u_input.a, 1i)))).x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(783f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) + _wgslsmith_f_op_f32(max(1351f, -1016f))))), -(arg_0.zy | _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(2147483647i, arg_0.x)), reverseBits(arg_0.yx))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, var_0.c.a.x, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-245f - var_0.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-503f, -328f, _wgslsmith_f_op_f32(var_0.c.a.x * var_0.c.a.x), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.a.x, -1743f, var_0.c.a.x, 1094f) + var_0.a)))), true)), select(select(vec4<bool>(true, select(var_0.b.x, false, true), any(var_0.b.zyz), arg_0.x <= u_input.a), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) <= _wgslsmith_f_op_f32(sign(-767f))), var_0.b, true), var_0.c, countOneBits(arg_0.yx));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(-(~0i), vec3<i32>(1i, _wgslsmith_mod_i32(var_1.d.x, var_1.d.x), -39598i)))), var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xy)))), -294f), _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.d.x, ~var_1.d.x), vec2<i32>(-1i, ~15193i)));
    var var_2 = vec3<i32>(u_input.c, -countOneBits(arg_0.x), abs(var_0.d.x)) | vec3<i32>(_wgslsmith_mod_i32(-30176i, 7092i), var_0.d.x, -arg_0.x);
    var var_3 = var_1.c.a;
    return select(vec4<bool>(all(select(!vec4<bool>(var_1.b.x, var_0.b.x, false, true), select(var_1.b, var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x)), var_0.b)), false, ~_wgslsmith_div_u32(54258u, u_input.b.x) >= select(u_input.b.x & u_input.b.x, 0u, var_1.b.x), true), vec4<bool>(-13379i <= _wgslsmith_mod_i32(-var_1.d.x, ~u_input.c), var_0.b.x, var_0.b.x, 551f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.a.x, 1331f))))), vec4<bool>(true, var_1.b.x, false & all(vec2<bool>(var_0.b.x, false)), all(var_1.b.wyx)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    var var_0 = u_input.b.zxy;
    let var_1 = ~(~max(~(~u_input.b), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(40520u, 55310u), vec2<u32>(29805u, u_input.b.x)), arg_2.a.x << (u_input.b.x % 32u), 1u)));
    var var_2 = arg_1.c;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, arg_0)), var_2.a, vec2<bool>(true, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.a.xx, vec2<f32>(var_2.b, 699f))), _wgslsmith_f_op_vec2_f32(-arg_1.a.xy)), !vec2<bool>(arg_1.b.x, arg_2.b.x))))), 1000f);
    let var_3 = true;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x));
    var var_1 = Struct_3(-vec3<i32>(u_input.c, _wgslsmith_div_i32(u_input.c, u_input.a), -42959i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1767f, -1000f), _wgslsmith_f_op_f32(sign(-1235f)))))) * _wgslsmith_f_op_f32(f32(-1f) * -593f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(func_4(-1858f, Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-426f, -1078f, 1322f, var_1.b))), func_2(vec3<i32>(u_input.d, -12652i, u_input.d)), Struct_1(vec2<f32>(883f, -294f), var_1.b), var_1.a.yz << (u_input.b.yw % vec2<u32>(32u))), Struct_4(vec2<u32>(u_input.b.x, 32555u), vec3<bool>(true, false, true))))));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(327f + 383f), -631f, false)))) + 1792f));
    var var_3 = Struct_3(vec3<i32>(u_input.d, var_1.a.x, _wgslsmith_div_i32(-2147483647i, -40188i) >> (abs(0u) % 32u)), -989f);
    return Struct_3(select(var_1.a, abs(var_3.a), select(vec3<bool>(all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, false)), any(vec2<bool>(false, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true))), var_1.b);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec3<bool>) -> bool {
    var var_0 = 22311i;
    var_0 = reverseBits(~(~(~_wgslsmith_div_i32(-61420i, arg_1.a.x))));
    var var_1 = all(!select(func_2(vec3<i32>(arg_0.a, 37496i, arg_2.a)), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), _wgslsmith_div_i32(-1i, 2147483647i) == -arg_1.a.x));
    var_1 = all(func_2(firstTrailingBit(vec3<i32>(24107i, 1i, firstLeadingBit(arg_2.b.x)))).xy);
    var var_2 = !arg_3.x;
    return any(select(func_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -8616i, 2147483647i, -49018i), vec4<i32>(arg_0.a, arg_2.b.x, arg_0.a, u_input.d)), reverseBits(arg_0.a), 2147483647i)), vec4<bool>(arg_3.x, (u_input.b.x | u_input.b.x) == (u_input.b.x & u_input.b.x), !(!arg_3.x), false), vec4<bool>(!arg_3.x, all(vec4<bool>(arg_3.x, true, true, false)) && arg_3.x, arg_3.x, any(vec3<bool>(arg_3.x, arg_3.x, false)) || select(arg_3.x, arg_3.x, arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(vec4<i32>(u_input.a, u_input.d, u_input.c, -37968i) ^ vec4<i32>(u_input.c, u_input.a, 0i, 0i))) >> (~(u_input.b | u_input.b) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.d, u_input.c, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(28881i, 11608i, u_input.c, 2735i), vec4<i32>(2147483647i, u_input.a, 1i, -3611i), vec4<i32>(u_input.c, -1i, -1i, u_input.a))), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.d, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.c, u_input.a, 33714i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1889f, 545f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -449f), 2087f) + 1244f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1028f)))));
    var_0 = u_input.d;
    var var_2 = -vec3<i32>(27670i, u_input.d, select(_wgslsmith_add_i32(u_input.a >> (u_input.b.x % 32u), 1i), u_input.a, true));
    var var_3 = Struct_4(_wgslsmith_sub_vec2_u32(min(~vec2<u32>(u_input.b.x, 31316u), u_input.b.yx) << (vec2<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 1u) % vec2<u32>(32u)), u_input.b.yz), vec3<bool>(true == any(vec4<bool>(true, true, true, true)), func_5(Struct_5(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 1i, 7561i, -2147483647i), vec4<i32>(u_input.a, u_input.a, var_2.x, u_input.a)), max(vec3<i32>(var_2.x, -34125i, -13072i), vec3<i32>(2147483647i, 19457i, 32938i))), func_1(), Struct_5(-var_2.x, -vec3<i32>(u_input.d, 1i, -35103i)), vec3<bool>(true, true, any(vec4<bool>(false, true, false, false)))), true));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -1183f, 1206f, 1525f) - vec4<f32>(var_1.b, 534f, -1235f, var_1.b)))))), vec4<bool>(false, true, true, false), Struct_1(vec2<f32>(-367f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1294f, var_1.b, var_3.b.x)), _wgslsmith_div_f32(var_1.b, -1101f))))), var_2.yy);
    let var_5 = Struct_2(vec4<f32>(-760f, -945f, _wgslsmith_f_op_f32(-var_1.a.x), var_4.c.a.x), var_4.b, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.a.x, var_4.a.x) - vec2<f32>(var_4.a.x, var_1.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f))))), var_2.yy);
    var_3 = Struct_4(u_input.b.xx, !func_2(~(-vec3<i32>(-1i, u_input.c, 2147483647i))).yxx);
    var var_6 = var_4.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_i32(_wgslsmith_sub_i32(-7484i, i32(-1i) * -14770i), _wgslsmith_clamp_i32(countOneBits(-822i), -2147483647i, -2147483647i)), max(-var_4.d.x, _wgslsmith_mod_i32(~(-2147483647i), var_5.d.x))), -_wgslsmith_mod_i32(-2147483647i, ~(-1757i)), u_input.b.xzz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.a.x)))));
}

