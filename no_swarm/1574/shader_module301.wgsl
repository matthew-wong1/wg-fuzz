struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = firstLeadingBit(u_input.a);
    var var_1 = vec2<bool>(true, any(vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), !any(vec3<bool>(false, false, true)), true, true)));
    var var_2 = firstLeadingBit(var_0);
    var_2 = ~((vec3<i32>(-3428i, var_2.x, _wgslsmith_add_i32(2147483647i, u_input.a.x)) ^ reverseBits(var_0)) | vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(var_0, _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 47736i, var_0.x), vec3<i32>(var_0.x, -2147483647i, 0i))), _wgslsmith_div_i32(~29714i, var_2.x)));
    var var_3 = vec3<bool>(select(!(var_1.x || var_1.x), true, true) || true, abs(~4294967295u) == (1u & _wgslsmith_clamp_u32(~83713u, ~0u, ~62274u)), true);
    return select(vec3<bool>(true, any(vec2<bool>(true, var_3.x)), all(vec2<bool>(var_1.x, u_input.a.x <= var_0.x))), vec3<bool>(all(vec3<bool>(!var_1.x, all(vec3<bool>(var_1.x, false, false)), var_3.x)), all(!vec4<bool>(false, true, var_1.x, var_1.x)), all(var_3.zz)), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = !vec4<bool>(arg_0.a.x > 4294967295u, true, any(vec4<bool>(true, true, true, true)) || true, -(u_input.a.x | u_input.a.x) <= ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x));
    var var_1 = vec4<bool>(select((~0u > (52261u ^ arg_0.a.x)) || (true != var_0.x), true && !(u_input.a.x >= 2147483647i), select(~arg_0.a.x >= ~arg_0.a.x, all(!var_0.zy), var_0.x)), any(select(vec2<bool>(false, var_0.x), select(select(var_0.wy, var_0.yw, var_0.x), !vec2<bool>(var_0.x, var_0.x), select(var_0.xy, var_0.yy, true)), any(func_3()))), all(var_0.wwx) | (-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -6939i, u_input.a.x), u_input.a) > (0i << (_wgslsmith_div_u32(arg_0.a.x, arg_0.a.x) % 32u))), true);
    let var_2 = ~(~_wgslsmith_clamp_u32(countOneBits(_wgslsmith_mod_u32(4294967295u, arg_0.a.x)), max(~arg_0.a.x, abs(12900u)), ~reverseBits(4294967295u)));
    var_1 = select(select(!vec4<bool>(var_2 < 27005u, true, !var_0.x, true), select(!var_0, !var_0, select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_1.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x))), !any(select(var_1.zy, var_0.yx, var_0.yw))), select(var_0, vec4<bool>(all(vec4<bool>(false, var_1.x, false, var_0.x)), all(vec4<bool>(false, var_0.x, var_0.x, var_1.x)), !var_0.x, any(!vec4<bool>(false, var_0.x, var_0.x, true))), var_0), vec4<bool>(_wgslsmith_f_op_f32(147f - arg_1.x) > _wgslsmith_f_op_f32(trunc(-1348f)), any(!select(var_0.yz, var_0.yx, true)), false, all(select(var_0, !vec4<bool>(var_0.x, false, var_1.x, false), select(var_0, var_0, var_0.x)))));
    let var_3 = Struct_2(arg_0, _wgslsmith_div_vec3_u32(~(firstLeadingBit(vec3<u32>(var_2, 0u, arg_0.a.x)) ^ abs(vec3<u32>(arg_0.a.x, 1u, var_2))), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_2, var_2, var_2) | vec3<u32>(19016u, 4294967295u, 12870u), vec3<u32>(0u, 0u, 14314u))));
    return Struct_1(abs(var_3.a.a));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = vec2<i32>(max(-2147483647i, u_input.a.x) ^ _wgslsmith_dot_vec3_i32(u_input.a, min(u_input.a, u_input.a)), select(u_input.a.x, 1i, false));
    let var_1 = vec4<i32>(26621i, var_0.x, _wgslsmith_mod_i32(0i, ~0i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, ~(i32(-1i) * -50309i)), ~(-u_input.a.x & (u_input.a.x << (78470u % 32u))), abs(max(-1i, firstLeadingBit(0i)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-253f, _wgslsmith_f_op_f32(sign(-1090f)))) - _wgslsmith_f_op_f32(min(-260f, 918f))), _wgslsmith_f_op_f32(floor(-232f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2012f, _wgslsmith_f_op_f32(round(-1301f))))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(997f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f * _wgslsmith_f_op_f32(sign(325f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) - _wgslsmith_f_op_f32(f32(-1f) * -835f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(725f, 443f))))), false)));
    var var_4 = (~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 72133u, arg_1.a.x), vec3<u32>(arg_2.a.x, arg_3.a.a.x, 1u))) & _wgslsmith_mod_vec3_u32(~min(vec3<u32>(arg_2.a.x, 44667u, arg_1.a.x), vec3<u32>(arg_2.a.x, arg_1.a.x, 21338u)), abs(firstTrailingBit(vec3<u32>(arg_3.a.a.x, 11393u, 4294967295u))))) << (_wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(0u, arg_3.a.a.x, 37710u))), (min(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(arg_1.a.x, 4294967295u, 60275u)) | ~vec3<u32>(5007u, 60476u, arg_2.a.x)) << (~(vec3<u32>(0u, 0u, 4294967295u) << (vec3<u32>(arg_3.a.a.x, arg_2.a.x, arg_3.a.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(max(-667f, _wgslsmith_f_op_f32(f32(-1f) * -750f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2079f)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(-1359f - arg_0.x))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(any(vec2<bool>(true, true)), func_2(Struct_1(vec2<u32>(48221u, 28401u)), arg_0, vec2<f32>(1015f, arg_0.x)), Struct_1(vec2<u32>(4294967295u, 38569u)), Struct_3(Struct_1(vec2<u32>(0u, 55850u)), vec2<bool>(true, true)))) * -705f)));
    var var_1 = Struct_4(arg_0, abs(vec4<u32>(0u, 1u, ~countOneBits(4294967295u), ~(~20777u))), vec4<bool>(true, true, true, true));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-var_1.a), var_1.b, vec4<bool>(!any(var_1.c), true, any(func_3()), var_1.c.x));
    var_1 = Struct_4(arg_0, vec4<u32>(var_1.b.x, max(1u, 4294967295u) ^ _wgslsmith_dot_vec4_u32(var_1.b, var_1.b), ~75826u, var_1.b.x) << ((~vec4<u32>(18597u, 79147u, var_1.b.x, 0u) >> (countOneBits(var_1.b) % vec4<u32>(32u))) % vec4<u32>(32u)), select(select(!vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), var_1.c, vec4<bool>(true, !var_1.c.x, all(vec4<bool>(var_1.c.x, true, true, false)), u_input.a.x < u_input.a.x)), select(var_1.c, vec4<bool>(all(vec2<bool>(var_1.c.x, var_1.c.x)), false, true, any(vec2<bool>(var_1.c.x, var_1.c.x))), select(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x), select(var_1.c, var_1.c, var_1.c), select(vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.c.x), var_1.c, vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)))), var_1.c.x));
    var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, arg_0.x, -1555f))))), ~max(~(~var_1.b), max(~vec4<u32>(var_1.b.x, 4294967295u, 2709u, var_1.b.x), vec4<u32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x) & vec4<u32>(21354u, var_1.b.x, 26318u, 18044u))), vec4<bool>(var_1.c.x | var_1.c.x, all(var_1.c.yxw), !(true || var_1.c.x), var_1.c.x));
    return 4294967295u ^ ~var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-668f, -1772f, 917f, 771f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-579f, 889f, -122f, -401f) - vec4<f32>(-226f, -597f, -576f, -1151f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1284f, -183f)), 536f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1096f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-821f, -490f, 847f, -831f)))))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1955f), var_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -826f), vec4<f32>(892f, var_0.x, var_0.x, -319f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1215f, 250f))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-705f, var_0.x, var_0.x, -2054f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1979f, 2341f, 550f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 309f, -1120f, var_0.x))))));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, ~1u), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xzz)), vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), 1520f)));
    var_1 = 1u;
    let var_2 = Struct_4(var_0.wyz, vec4<u32>(countOneBits(5942u), ~(firstLeadingBit(62087u) >> (reverseBits(0u) % 32u)), firstLeadingBit(~_wgslsmith_mod_u32(20379u, 28195u)), select(~_wgslsmith_sub_u32(0u, 0u), ~func_1(var_0.zwy, var_0.yw), true)), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, select(true, false, false), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true)));
    var var_3 = -1346f;
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.a))), var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(56800u, -u_input.a.x);
}

