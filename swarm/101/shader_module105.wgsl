struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = all(vec3<bool>(any(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), 1000f != _wgslsmith_f_op_f32(floor(-395f)), false));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(!(!select(true, true, true)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))))), true);
    var_0 = var_1.x & var_1.x;
    var_1 = !(!(!vec2<bool>(false, var_1.x)));
    let var_2 = Struct_1(vec4<u32>(u_input.c, countOneBits(_wgslsmith_mod_u32(u_input.c, u_input.c)), u_input.c << (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u), ~(~4294967295u)) >> (~select(~vec4<u32>(18321u, 4294967295u, 0u, u_input.c), vec4<u32>(26667u, u_input.c, u_input.c, 4294967295u) ^ vec4<u32>(u_input.c, 58480u, u_input.c, 1u), var_1.x) % vec4<u32>(32u)), vec4<bool>(var_1.x, _wgslsmith_f_op_f32(-1045f * -2046f) < _wgslsmith_f_op_f32(sign(2000f)), select(!(u_input.a.x >= -2147483647i), var_1.x, var_1.x), var_1.x), u_input.c, ~52975u, select(!select(vec4<bool>(false, true, false, false), !vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, var_1.x, false, var_1.x)), select(select(select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, true, var_1.x, true), true), vec4<bool>(var_1.x, var_1.x, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, false, var_1.x)), vec4<bool>(var_1.x || var_1.x, false, true, false), var_1.x), select(!vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, true, any(vec2<bool>(false, var_1.x)), all(vec4<bool>(true, var_1.x, var_1.x, var_1.x))), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2058f, -1000f, 487f))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, var_0.x, var_0.x) * vec3<f32>(var_0.x, 761f, 452f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 585f) - var_0.x), _wgslsmith_f_op_f32(-var_0.x), 1145f)));
    var var_1 = ~1u;
    let var_2 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-927f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    return Struct_1(~vec4<u32>(1u, firstTrailingBit(var_2.a.x), 1u, _wgslsmith_add_u32(u_input.c, arg_1.d)), !select(!(!vec4<bool>(arg_2, arg_1.b.x, true, arg_1.b.x)), arg_1.e, var_2.e), 20131u, firstLeadingBit(69903u) >> (max(_wgslsmith_mult_u32(u_input.c | u_input.c, 56943u), u_input.c) % 32u), !var_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = func_2(abs(firstLeadingBit(-(~vec3<i32>(u_input.a.x, -16426i, u_input.b)))), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(17267u), _wgslsmith_mod_u32(3818u, arg_1.x), _wgslsmith_clamp_u32(0u, 56701u, 4294967295u), arg_0.a.x), arg_0.a >> (~arg_0.a % vec4<u32>(32u))), !(!(!arg_0.b)), _wgslsmith_mult_u32(min(4294967295u, arg_0.a.x), 0u), u_input.c, arg_0.e), true);
    var var_1 = func_2(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(i32(-1i) * -65596i, 0i, _wgslsmith_add_i32(u_input.b, u_input.b))), _wgslsmith_add_vec3_i32(~(vec3<i32>(15354i, 52510i, 3326i) | vec3<i32>(27568i, u_input.a.x, 54342i)), -(vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(-21015i, 1i, -2147483647i))), vec3<i32>(u_input.a.x, u_input.a.x, (u_input.b & u_input.a.x) ^ -38077i)), Struct_1(reverseBits(arg_0.a), !var_0.e, countOneBits((4294967295u | arg_0.a.x) & ~28026u), ~arg_1.x << (~1u % 32u), arg_0.e), any(!(!(!var_0.b.ww))));
    let var_2 = 1889f;
    let var_3 = func_2(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.b, u_input.a.x, -26809i), vec3<i32>(-36354i, 15827i, -2147483647i)), vec3<i32>(u_input.a.x, 50074i, u_input.b)), min(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, -1i, -1i)) >> ((vec3<u32>(arg_0.d, arg_0.a.x, 4294967295u) << (vec3<u32>(arg_1.x, arg_0.d, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (arg_0.a.yyy % vec3<u32>(32u)), func_2(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(29867i, u_input.a.x, u_input.a.x)) >> (vec3<u32>(0u, u_input.c, u_input.c) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 28505i, -1i), vec3<i32>(u_input.b, 2147483647i, -2147483647i), vec3<i32>(u_input.a.x, u_input.b, u_input.a.x))), Struct_1(vec4<u32>(reverseBits(43948u), var_0.d, _wgslsmith_add_u32(1u, 29714u), 34359u), !arg_0.e, var_1.a.x, abs(abs(var_1.a.x)), !vec4<bool>(false, true, var_0.e.x, var_1.e.x)), func_2(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, -51384i)), var_0, var_0.b.x).b.x), !all(var_0.e.wx));
    var_1 = func_2(~vec3<i32>(-2147483647i, abs(i32(-1i) * -2147483647i), u_input.b), arg_0, var_0.b.x);
    return !func_2(-vec3<i32>(u_input.a.x, i32(-1i) * -36763i, min(u_input.a.x, u_input.b)), var_0, var_0.e.x).e.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1257f, 1109f) * _wgslsmith_f_op_f32(f32(-1f) * -242f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-815f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(639f))))), _wgslsmith_f_op_f32(-260f + _wgslsmith_f_op_f32(abs(-287f))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2463f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1567f, 2270f)))))));
    let var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_1(Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<bool>(false, false, false, true), 0u, u_input.c, vec4<bool>(false, false, true, false)), vec3<u32>(558u, u_input.c, 0u)), all(vec2<bool>(false, false)) & true), select(select(select(func_1(Struct_1(vec4<u32>(1u, u_input.c, 57690u, 52881u), vec4<bool>(true, false, false, true), 1u, 50643u, vec4<bool>(true, false, false, true)), vec3<u32>(24342u, 1u, 30066u)), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !func_2(vec3<i32>(7569i, 28007i, u_input.a.x), Struct_1(vec4<u32>(u_input.c, u_input.c, u_input.c, 16062u), vec4<bool>(false, false, false, true), 4294967295u, u_input.c, vec4<bool>(true, false, false, true)), true).e.wxx), vec3<bool>(true, true, true), vec3<bool>((12872u > u_input.c) & all(vec2<bool>(false, false)), any(func_1(Struct_1(vec4<u32>(4411u, u_input.c, 43551u, u_input.c), vec4<bool>(false, false, true, false), u_input.c, 1u, vec4<bool>(true, false, true, false)), vec3<u32>(39078u, u_input.c, u_input.c)).xz), _wgslsmith_f_op_f32(min(895f, var_0.x)) == _wgslsmith_f_op_f32(var_0.x + 755f))), vec3<bool>(func_1(func_2(firstLeadingBit(vec3<i32>(-12307i, -1i, u_input.a.x)), func_2(vec3<i32>(u_input.a.x, -21849i, -8074i), Struct_1(vec4<u32>(0u, u_input.c, u_input.c, 0u), vec4<bool>(true, false, false, false), 109603u, u_input.c, vec4<bool>(false, true, true, true)), false), true), vec3<u32>(_wgslsmith_mult_u32(39072u, 0u), 44293u, 0u)).x, !all(vec4<bool>(true, true, true, true)), true));
    var var_2 = func_2(vec3<i32>(u_input.b, -1i, (_wgslsmith_dot_vec2_i32(vec2<i32>(58020i, -6158i), vec2<i32>(u_input.a.x, -16102i)) << (countOneBits(u_input.c) % 32u)) | 9032i), Struct_1(vec4<u32>(_wgslsmith_sub_u32(12304u, 3858u), abs(_wgslsmith_mod_u32(u_input.c, u_input.c)), ~(~74621u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 12234u), vec2<u32>(u_input.c, 0u))), !select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, false, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x)), !vec4<bool>(var_1.x, false, var_1.x, false)), 1u, u_input.c, !(!(!vec4<bool>(var_1.x, var_1.x, true, true)))), var_1.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))) - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(588f)))));
    let var_4 = _wgslsmith_mult_u32(~(~44796u), _wgslsmith_mod_u32(reverseBits(0u), ~var_2.a.x)) ^ ~((~675u | _wgslsmith_clamp_u32(u_input.c, 28821u, 5497u)) ^ 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.www), var_0.xwx)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), -1i << (_wgslsmith_sub_u32(max(var_4, u_input.c), (var_2.d << (var_2.d % 32u)) | u_input.c) % 32u), var_2.a.x, var_0, u_input.c);
}

