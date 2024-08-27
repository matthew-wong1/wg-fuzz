struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(~reverseBits(-vec4<i32>(u_input.a.x, -2147483647i, 0i, u_input.a.x)) & -_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 2147483647i), reverseBits(vec4<i32>(u_input.a.x, 2147483647i, -1i, u_input.a.x))), reverseBits(vec2<i32>(u_input.a.x, (u_input.a.x | u_input.a.x) | _wgslsmith_sub_i32(u_input.a.x, 2147483647i))), false, u_input.a.zx);
    var_0 = Struct_1(vec4<i32>(~(-39963i), countOneBits(u_input.a.x), var_0.a.x, var_0.d.x), _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, -38441i), select(var_0.b, u_input.a.xx ^ vec2<i32>(var_0.b.x, -2147483647i), var_0.c & true) | ~reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))), select(select(!var_0.c, true, false & var_0.c) & var_0.c, var_0.c, var_0.c && ((var_0.b.x << (0u % 32u)) > -2147483647i)), select(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.a.x, var_0.d.x))), reverseBits(var_0.a.xw | u_input.a.xz) | ((u_input.a.yx ^ var_0.a.zz) >> (~vec2<u32>(673u, u_input.b) % vec2<u32>(32u))), vec2<bool>(true, true)));
    var_0 = Struct_1(vec4<i32>(max(u_input.a.x, -1i) & u_input.a.x, u_input.a.x, var_0.a.x, u_input.a.x), vec2<i32>(~(u_input.a.x ^ (i32(-1i) * -40082i)), _wgslsmith_mult_i32(var_0.d.x, 0i)), any(vec3<bool>(var_0.c, select(all(vec2<bool>(true, var_0.c)), any(vec2<bool>(false, var_0.c)), true), !all(vec4<bool>(var_0.c, true, true, var_0.c)))), min(vec2<i32>(reverseBits(1i), i32(-1i) * -52026i), -_wgslsmith_sub_vec2_i32(vec2<i32>(23357i, var_0.d.x), _wgslsmith_mod_vec2_i32(var_0.d, var_0.a.yz))));
    var var_1 = Struct_1(var_0.a, ~(-(~_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_0.a.x), vec2<i32>(var_0.b.x, u_input.a.x)))), !(var_0.d.x > -5382i), -_wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(0i, u_input.a.x)), vec2<i32>(var_0.b.x, var_0.d.x), !vec2<bool>(var_0.c, var_0.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.d.x, -57068i), _wgslsmith_div_vec2_i32(u_input.a.yz, vec2<i32>(var_0.a.x, -15762i)))));
    var var_2 = _wgslsmith_mod_i32(abs(var_0.a.x), -reverseBits(var_1.b.x & 1i)) >> (18247u % 32u);
    return !any(vec3<bool>(true, false, ~u_input.b <= firstLeadingBit(42583u)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1007f);
    let var_1 = func_3(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(1000f, var_0))));
    var var_2 = vec2<bool>(true, -446f != _wgslsmith_f_op_f32(var_0 + var_0));
    var_2 = vec2<bool>(u_input.b > firstLeadingBit(u_input.b), var_1 || (true & !(1u != u_input.b)));
    var_2 = vec2<bool>(false, !(!(!any(vec2<bool>(true, false)))));
    return Struct_1(firstTrailingBit(-(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 0i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 6511i), vec4<i32>(31389i, u_input.a.x, u_input.a.x, 0i)))), vec2<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_div_i32(u_input.a.x, -2147483647i)), min(_wgslsmith_clamp_i32(u_input.a.x, -45245i, 72545i), 1i)), ~_wgslsmith_mult_i32(16430i, u_input.a.x >> (40291u % 32u))), var_1, vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yz), -55698i));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_1(max(-select(min(arg_0.a, arg_0.a), func_2().a, any(vec3<bool>(arg_0.c, true, false))), vec4<i32>(~(~arg_0.b.x), abs(-u_input.a.x), _wgslsmith_dot_vec4_i32(~var_0.a, vec4<i32>(0i, 0i, var_0.b.x, u_input.a.x)), -(var_0.d.x ^ 0i))), ~_wgslsmith_div_vec2_i32(abs(_wgslsmith_mult_vec2_i32(var_0.d, vec2<i32>(arg_0.b.x, 55676i))), ~vec2<i32>(u_input.a.x, 1i)), !(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b, u_input.b, 1u)), abs(vec3<u32>(0u, 1u, u_input.b))) < u_input.b), select(vec2<i32>(2147483647i, ~(var_0.a.x ^ var_0.b.x)), firstLeadingBit(var_0.a.xz), var_0.c));
    var_0 = func_2();
    var_0 = Struct_1(max(abs(_wgslsmith_mod_vec4_i32(~var_0.a, ~var_0.a)), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(15329i, var_0.d.x, -53775i, -7431i), arg_0.a))), arg_0.d, all(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.c, false, false, true), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, 2147483647i) < _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x))), vec2<i32>(arg_0.a.x << (~u_input.b % 32u), -15182i));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-263f, _wgslsmith_f_op_f32(699f - 275f))))))) == _wgslsmith_f_op_f32(f32(-1f) * -296f);
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, -35375i, u_input.a.x), vec4<i32>(-4770i, 14585i, u_input.a.x, 14392i), vec4<bool>(false, false, false, true)), min(vec4<i32>(34513i, -2533i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) & vec4<i32>(0i, _wgslsmith_sub_i32(u_input.a.x, 16912i), -44769i, countOneBits(19141i)), vec4<i32>(-1i, ~1i, ~u_input.a.x, ~u_input.a.x)), select(~vec2<i32>(u_input.a.x, -26166i), u_input.a.yy, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(false, false))), select(any(vec2<bool>(true, true)), true, true))), func_4(func_2()), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.yx, _wgslsmith_clamp_vec2_i32(u_input.a.zz, u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x)) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -2147483647i), -5375i)), firstTrailingBit(func_2().b) | ~(~vec2<i32>(-1i, 0i))));
    var_0 = func_2();
    var_0 = Struct_1(select(~(-var_0.a), -var_0.a, true), _wgslsmith_mult_vec2_i32(countOneBits(firstTrailingBit(_wgslsmith_clamp_vec2_i32(var_0.b, u_input.a.yx, var_0.a.wz))), -(~var_0.d)), var_0.c, select(-_wgslsmith_mod_vec2_i32(vec2<i32>(-35287i, 12834i), u_input.a.zy), reverseBits(vec2<i32>(-65702i, 2147483647i)) & -vec2<i32>(var_0.b.x, u_input.a.x), vec2<bool>(var_0.c, var_0.c)) << (vec2<u32>(26777u, _wgslsmith_sub_u32(~u_input.b, ~u_input.b)) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2917f, -583f, 740f) - vec3<f32>(-1000f, 238f, -344f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, 559f, 1000f))), true))) - vec3<f32>(-1372f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-202f + _wgslsmith_div_f32(183f, 469f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1165f, -159f), _wgslsmith_f_op_f32(trunc(-909f))))));
    var var_2 = !vec3<bool>(false, var_0.c, func_4(func_2()));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, 1000f, 1311f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 233f, 455f) * vec3<f32>(var_1.x, 2098f, 367f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(-376f)), _wgslsmith_f_op_f32(-var_1.x), var_1.x))))), 67471u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) - var_1.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.zz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = func_1();
}

