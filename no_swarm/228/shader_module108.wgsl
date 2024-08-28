struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_2(any(vec2<bool>(true, true)) | any(vec2<bool>(true, true)), Struct_1(-u_input.a, all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(arg_1.x - arg_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(-arg_3.x)) - arg_1.wyz), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))))), Struct_1(-u_input.a ^ firstTrailingBit(max(u_input.a, vec4<i32>(49726i, u_input.c.x, -2147483647i, -33043i))), select(!any(vec3<bool>(false, true, true)), (u_input.c.x >= -1i) | false, _wgslsmith_f_op_f32(sign(arg_0.x)) == _wgslsmith_f_op_f32(abs(-713f))), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_1.ywz), select(vec2<bool>(false, true), vec2<bool>(false, true), ~1u < ~arg_2)));
    let var_1 = select(~(~vec2<u32>(~66467u, u_input.b)), abs(reverseBits(vec2<u32>(firstTrailingBit(41585u), ~43383u))), select(select(select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, false), true), var_0.c.e, var_0.a || false), select(select(vec2<bool>(var_0.c.b, false), var_0.b.e, vec2<bool>(var_0.a, true)), vec2<bool>(false, true), true), vec2<bool>(var_0.b.e.x, var_0.b.e.x)), select(vec2<bool>(true, var_0.b.e.x & true), vec2<bool>(true, true), var_0.c.e), select(var_0.b.e, !(!var_0.c.e), var_0.c.e)));
    let var_2 = Struct_3(Struct_1((u_input.a ^ -var_0.b.a) | abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, var_0.c.a.x, 14420i), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 8389i))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2466f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(628f * 1000f)), _wgslsmith_f_op_f32(exp2(arg_0.x))), var_0.b.e), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_1, _wgslsmith_div_vec2_u32(~vec2<u32>(3395u, u_input.b), var_1 ^ var_1)), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, arg_2), _wgslsmith_sub_u32(57180u, 26157u)), ~53551u), _wgslsmith_div_u32(var_1.x, u_input.b)), -1180f, Struct_2(var_0.b.e.x, Struct_1(vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, -44273i, var_0.b.a.x), vec4<i32>(2147483647i, 56714i, var_0.b.a.x, 0i)), -u_input.c.x, -19772i), var_0.b.b, arg_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(var_0.b.d)))), select(var_0.c.e, select(var_0.b.e, var_0.b.e, var_0.c.e), vec2<bool>(var_0.a, var_0.b.e.x))), Struct_1(_wgslsmith_div_vec4_i32(var_0.b.a, var_0.b.a) & var_0.c.a, !(var_0.b.c <= 216f), _wgslsmith_f_op_f32(step(arg_0.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-248f, arg_0.x, 1077f), vec3<f32>(arg_3.x, -589f, 1357f), vec3<bool>(var_0.a, false, var_0.c.b))) + _wgslsmith_f_op_vec3_f32(-var_0.c.d)), !var_0.b.e)));
    let var_3 = _wgslsmith_add_i32(-62797i, abs(var_0.b.a.x));
    let var_4 = Struct_2(any(select(!vec4<bool>(var_2.d.a, var_0.a, true, true), vec4<bool>(var_2.a.e.x, true, true, false), any(vec3<bool>(true, var_0.b.b, var_2.d.a)))) && (max(firstLeadingBit(-9126i), var_3 >> (41880u % 32u)) >= _wgslsmith_add_i32(countOneBits(40347i), _wgslsmith_mult_i32(2147483647i, var_3))), Struct_1(-firstTrailingBit(~vec4<i32>(1i, 31400i, var_0.c.a.x, var_3)), any(!(!vec3<bool>(true, var_0.c.b, var_2.d.c.b))), _wgslsmith_f_op_f32(select(-1051f, _wgslsmith_f_op_f32(-var_0.c.d.x), all(vec4<bool>(var_2.d.b.b, var_2.d.b.e.x, var_2.a.e.x, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.zzx, vec3<f32>(arg_0.x, 1458f, 2298f)), var_2.a.d) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.wzx + var_2.d.c.d)))), var_2.a.e), Struct_1(var_2.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(1000f)))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.d.x + arg_0.x))), arg_1.x, vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(670f, -1000f, false)) + _wgslsmith_f_op_f32(step(-645f, 671f)))), !(!select(var_2.a.e, var_0.c.e, vec2<bool>(var_0.c.b, var_2.a.b)))));
    return select(true, var_4.a, all(vec4<bool>(var_2.a.e.x, true, var_0.a, !var_4.a)));
}

fn func_2() -> f32 {
    let var_0 = vec4<bool>(!any(vec2<bool>(true, true)), !all(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, u_input.b >= 0u)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)) == all(vec2<bool>(false, true)))), !((all(vec4<bool>(true, false, false, false)) && false) && func_3(vec2<f32>(1000f, 2109f), _wgslsmith_f_op_vec4_f32(vec4<f32>(759f, 1199f, -370f, -595f) + vec4<f32>(386f, -2506f, 770f, -1109f)), _wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, 195f)))));
    var var_1 = Struct_1(u_input.a, var_0.x, _wgslsmith_f_op_f32(-1464f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1026f - 564f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1343f, 1816f)) * _wgslsmith_f_op_f32(f32(-1f) * -1265f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1174f - 533f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1817f, -1036f, false)) * _wgslsmith_div_f32(747f, _wgslsmith_f_op_f32(select(468f, -661f, var_0.x)))), -385f), vec2<bool>(true, !var_0.x));
    var var_2 = Struct_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -2147483647i) | u_input.a.xz, u_input.c.yz) < _wgslsmith_div_i32(var_1.a.x, -1i >> (~u_input.b % 32u)), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, 22605i, 8378i, u_input.c.x), (var_1.a >> (vec4<u32>(113398u, u_input.b, 4294967295u, 68641u) % vec4<u32>(32u))) >> (vec4<u32>(1u, u_input.b, 44391u, u_input.b) % vec4<u32>(32u))), var_1.e.x, var_1.c, _wgslsmith_f_op_vec3_f32(-var_1.d), var_0.yx), Struct_1(u_input.a, true, 842f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d + var_1.d)), vec3<f32>(-319f, -551f, _wgslsmith_f_op_f32(step(-872f, var_1.c))))), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_1.e.x), false)), var_1.a.x != var_1.a.x)));
    var var_3 = u_input.b;
    var_3 = min(4294967295u, u_input.b);
    return _wgslsmith_f_op_f32(2055f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-184f))), _wgslsmith_f_op_f32(-1f))));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1391f + -982f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-659f, 391f))) - _wgslsmith_f_op_f32(func_2()))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    var var_1 = select(u_input.a.yzw, _wgslsmith_div_vec3_i32(u_input.c, u_input.a.wzx), vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(45734u, 18186u)) >= 4567u));
    var_1 = firstTrailingBit(min(min(vec3<i32>(-1i) * -vec3<i32>(var_1.x, 39868i, -1i), vec3<i32>(2147483647i, _wgslsmith_mod_i32(u_input.c.x, -65116i), _wgslsmith_div_i32(var_1.x, u_input.c.x))), ~vec3<i32>(1i, -13697i, -2147483647i) | select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, var_1.x), u_input.a.yzz), u_input.a.zxy, vec3<bool>(true, true, true))));
    var_1 = u_input.c;
    var var_2 = Struct_2(select(!(var_1.x != var_1.x) || any(vec2<bool>(true, true)), _wgslsmith_div_f32(-262f, -1673f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(294f))), true), Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(2147483647i, -1i, 44968i, 30300i) & vec4<i32>(u_input.c.x, -46084i, 48644i, -10753i)), var_1.x, _wgslsmith_mod_i32(2147483647i, var_1.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(17191u, u_input.b)) % 32u), _wgslsmith_clamp_i32(~u_input.c.x, var_1.x & u_input.c.x, var_1.x >> (11201u % 32u))), false | any(vec4<bool>(true, true, true, true)), 1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1075f, -744f, 537f))))), select(vec2<bool>(false, true), vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)))), Struct_1(vec4<i32>(~4987i, _wgslsmith_mult_i32(2147483647i, u_input.c.x), min(var_1.x, u_input.c.x), var_1.x ^ 21178i) | -u_input.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1599f - 1477f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(378f, 920f, -504f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1412f, 789f, -540f), vec3<f32>(563f, -1149f, -1049f), vec3<bool>(false, false, false))))), vec2<bool>(!any(vec2<bool>(false, false)), false)));
    return min(~countOneBits(vec4<u32>(abs(u_input.b), u_input.b, min(4294967295u, u_input.b), 52855u & u_input.b)), vec4<u32>(~u_input.b, max(firstLeadingBit(19640u), ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 36876u), vec4<u32>(1226u, u_input.b, 120617u, 19435u)), _wgslsmith_mod_u32(1u, 1u)) >> (reverseBits(~(~vec4<u32>(30928u, 81548u, u_input.b, u_input.b))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(~_wgslsmith_dot_vec2_i32(u_input.a.wz, vec2<i32>(-52637i, 0i)) ^ ~(~(-9847i))), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.c.x >> (u_input.b % 32u), u_input.a.x), u_input.a.x), _wgslsmith_mult_i32(firstLeadingBit(u_input.c.x), -(u_input.a.x & -u_input.a.x)), ((_wgslsmith_div_i32(6501i, u_input.a.x) >> (4294967295u % 32u)) & u_input.a.x) & u_input.c.x);
    let var_1 = !select(any(vec2<bool>(select(true, true, false), any(vec2<bool>(false, false)))), !(any(vec4<bool>(false, true, false, true)) || false), select(true, all(vec3<bool>(true, true, true)) && false, false));
    let var_2 = ~0u;
    var var_3 = ~func_1();
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(636f, -944f), vec2<f32>(-2400f, -1569f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(947f, 325f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-947f, -564f, true)) - _wgslsmith_div_f32(-1095f, 2244f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(802f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-225f * 1309f), -245f), _wgslsmith_f_op_f32(f32(-1f) * -1334f))));
    var var_5 = Struct_4(abs(vec3<i32>(max(countOneBits(0i), reverseBits(1i)), -1i ^ (var_0.x & u_input.c.x), -u_input.c.x)));
    var_5 = Struct_4(_wgslsmith_add_vec3_i32(u_input.a.xxz, ~countOneBits(vec3<i32>(-18778i, 37880i, -43362i) ^ var_0.xzw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(max(23259u, ~(~30852u)), _wgslsmith_div_u32(~5257u, countOneBits(firstTrailingBit(var_3.x)))), ~u_input.a.x);
}

