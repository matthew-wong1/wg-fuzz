struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_1(1i, !(!vec2<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), !arg_0)), vec2<bool>(any(vec3<bool>(arg_0, !arg_0, arg_0)), false));
    var var_1 = Struct_1(var_0.a, select(!select(!vec2<bool>(false, var_0.c.x), vec2<bool>(false, false), all(vec4<bool>(arg_0, true, false, var_0.b.x))), var_0.c, var_0.b), vec2<bool>(false, any(var_0.b)));
    var var_2 = _wgslsmith_div_u32(u_input.b.x, firstLeadingBit(~82962u)) << (0u % 32u);
    var_2 = abs(~(~firstLeadingBit(~u_input.a)));
    let var_3 = Struct_1(var_0.a, !var_1.c, vec2<bool>(false, !var_1.b.x));
    return true & (!(!all(vec4<bool>(var_0.c.x, false, true, var_0.b.x))) | !var_3.b.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> bool {
    var var_0 = arg_0.x || true;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + arg_2.x)));
    var_0 = any(!arg_0.yx);
    return !any(select(vec3<bool>(false, func_3(arg_0.x, vec4<f32>(-1403f, -566f, -1000f, arg_2.x)), !arg_1.c.x), vec3<bool>(any(vec4<bool>(false, true, arg_1.c.x, false)), false, any(vec4<bool>(false, arg_0.x, false, arg_0.x))), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2434f * -2263f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1480f - _wgslsmith_f_op_f32(f32(-1f) * -1642f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-274f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f * 1010f))), _wgslsmith_f_op_f32(abs(243f)))));
    let var_2 = vec4<bool>(any(var_0.b), arg_2.c.x, any(!select(select(vec3<bool>(false, arg_2.b.x, var_0.c.x), vec3<bool>(arg_0.b.x, true, arg_0.b.x), vec3<bool>(arg_2.c.x, arg_0.c.x, true)), !vec3<bool>(arg_2.b.x, true, true), vec3<bool>(var_0.b.x, true, false))), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) >= -503f));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-2166f * _wgslsmith_f_op_f32(-457f + var_1.x)), _wgslsmith_div_f32(1143f, _wgslsmith_f_op_f32(max(-935f, 2482f))))), var_1.xy));
    var_3 = vec2<f32>(var_3.x, 699f);
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(select(arg_2.a, arg_2.a, 1054f < var_3.x), arg_1.x | arg_1.x), ~(~arg_0.a)), !arg_2.c, select(vec2<bool>(var_2.x, true), select(!vec2<bool>(var_0.c.x, true), var_2.ww, true), any(var_2)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> Struct_1 {
    return func_4(Struct_1(-3025i, arg_1.yx, vec2<bool>(true, !(!arg_1.x))), select(vec2<i32>(~(-1i), u_input.c), ~(-vec2<i32>(u_input.c, -92711i) << (_wgslsmith_div_vec2_u32(u_input.b.zw, vec2<u32>(u_input.d.x, 0u)) % vec2<u32>(32u))), !vec2<bool>(func_2(vec4<bool>(false, arg_1.x, arg_3, true), Struct_1(u_input.c, vec2<bool>(false, arg_1.x), arg_1.zy), vec3<f32>(-540f, 1058f, arg_2), arg_0), false)), Struct_1(~(-5448i), select(arg_1.zx, !select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true), true), true), !(!arg_1.zz)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = func_1(arg_1.x, !select(select(vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(arg_0.b.x, false, false), select(vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(true, arg_0.b.x, false), arg_0.c.x)), select(vec3<bool>(arg_0.b.x, true, true), !vec3<bool>(arg_0.c.x, arg_0.c.x, true), !vec3<bool>(false, arg_0.c.x, true)), select(select(vec3<bool>(false, arg_0.c.x, false), vec3<bool>(arg_0.c.x, true, true), vec3<bool>(arg_0.b.x, false, false)), !vec3<bool>(arg_0.b.x, true, arg_0.c.x), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1598f, -975f)))))), arg_0.b.x);
    var_0 = Struct_1(abs(~select(~(-2147483647i), countOneBits(var_0.a), arg_0.c.x)), func_4(arg_0, vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, 7722i), vec2<i32>(-1i, var_0.a)), arg_0).b, !(!(!select(arg_0.b, vec2<bool>(true, arg_0.c.x), true))));
    let var_1 = vec4<bool>(!arg_0.c.x, func_2(vec4<bool>(true, select(u_input.c >= 49103i, arg_0.c.x | var_0.b.x, false), true, var_0.b.x), Struct_1(_wgslsmith_add_i32(arg_0.a, -var_0.a), arg_0.b, arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-288f, -1000f, -105f), vec3<f32>(-572f, -616f, 362f))))), 1u), func_3(func_1(arg_1.x, select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(arg_0.c.x, true, var_0.b.x), true), _wgslsmith_f_op_f32(f32(-1f) * -430f), arg_0.c.x).c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, -215f, -463f, 1042f))) & !arg_0.b.x, false);
    var var_2 = func_4(Struct_1(-u_input.e, select(vec2<bool>(!var_0.c.x, true), !var_1.zz, var_1.x), var_1.xx), _wgslsmith_add_vec2_i32(select(~countOneBits(vec2<i32>(var_0.a, -1i)), -(~vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_mod_u32(112442u, 49539u) >= min(arg_1.x, u_input.b.x)), vec2<i32>(abs(_wgslsmith_sub_i32(var_0.a, u_input.c)), -abs(u_input.c))), Struct_1(arg_0.a, select(!var_1.wx, vec2<bool>(true, true), !select(vec2<bool>(true, var_0.c.x), arg_0.c, false)), func_4(Struct_1(59261i, arg_0.b, vec2<bool>(true, false)), select(vec2<i32>(arg_0.a, 60710i), max(vec2<i32>(u_input.e, 1i), vec2<i32>(arg_0.a, u_input.c)), var_0.c.x), Struct_1(-var_0.a, func_1(1u, vec3<bool>(true, true, false), -397f, arg_0.c.x).b, select(vec2<bool>(true, arg_0.c.x), var_1.wy, vec2<bool>(var_1.x, var_1.x)))).c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1626f)))))));
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_1;
    let var_1 = !any(!vec3<bool>(arg_1.x, arg_2.b.x, var_0.x)) | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(abs(arg_0.x)))) < 1000f);
    let var_2 = func_4(func_4(func_4(Struct_1(u_input.c ^ -14011i, vec2<bool>(arg_2.b.x, false), vec2<bool>(true, var_1)), vec2<i32>(47461i, 1i | arg_2.a), arg_2), select(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a, arg_2.a), vec2<i32>(2147483647i, 10094i)), -firstTrailingBit(vec2<i32>(-50442i, -2147483647i)), !arg_1.xz), func_4(Struct_1(arg_2.a, vec2<bool>(true, false), var_0.zz), -(~vec2<i32>(-21608i, u_input.e)), func_1(_wgslsmith_sub_u32(49590u, u_input.b.x), var_0.yzy, _wgslsmith_f_op_f32(floor(arg_0.x)), all(arg_1.yxx)))), _wgslsmith_clamp_vec2_i32(abs(select(firstLeadingBit(vec2<i32>(7589i, u_input.c)), select(vec2<i32>(arg_2.a, u_input.e), vec2<i32>(arg_2.a, 21403i), var_1), var_0.x)), select(-vec2<i32>(u_input.e, u_input.e) << (u_input.b.xx % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(23272i, 15479i), vec2<i32>(1i, arg_2.a)), select(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.c, u_input.c), true)), func_4(Struct_1(arg_2.a, vec2<bool>(var_1, arg_1.x), arg_2.c), vec2<i32>(arg_2.a, 0i), arg_2).c), vec2<i32>(-54738i, 1i)), func_4(func_5(func_4(func_4(arg_2, vec2<i32>(u_input.c, u_input.e), arg_2), firstTrailingBit(vec2<i32>(-2147483647i, -18161i)), Struct_1(55248i, arg_1.zx, vec2<bool>(true, true))), u_input.b), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(2147483647i, -1i)), vec2<i32>(2147483647i, u_input.e)), vec2<i32>(0i, -2147483647i) >> (vec2<u32>(arg_3.x, 41099u) % vec2<u32>(32u))), Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-11331i, 0i, -12397i, 0i)), -vec4<i32>(u_input.c, -54396i, -6695i, 8235i)), vec2<bool>(arg_1.x, var_0.x), vec2<bool>(any(arg_1), var_1))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(284f * 1799f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -228f;
    var_0 = 536f;
    var var_1 = !(select(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true) | func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 453f))), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(false, true, true)), u_input.c != 1i), func_5(func_1(1u, vec3<bool>(false, false, true), -225f, true), countOneBits(vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.a))), ~_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.a))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-489f, -3193f)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-713f)), 915f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-620f * -671f) - -316f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f * -1000f) - _wgslsmith_f_op_f32(-1243f - 366f)))), 1255f);
    var var_3 = Struct_1(u_input.c, select(vec2<bool>(true, true), !func_5(func_4(Struct_1(-1i, vec2<bool>(false, false), vec2<bool>(true, false)), vec2<i32>(u_input.e, u_input.c), Struct_1(21521i, vec2<bool>(true, false), vec2<bool>(false, false))), abs(vec4<u32>(1u, 77211u, u_input.b.x, 87888u))).c, func_4(func_5(Struct_1(u_input.e, vec2<bool>(false, true), vec2<bool>(false, false)), abs(u_input.b)), vec2<i32>(-39088i, u_input.c | u_input.e), func_5(Struct_1(u_input.c, vec2<bool>(true, true), vec2<bool>(true, true)), ~vec4<u32>(u_input.b.x, u_input.b.x, 22637u, 20203u))).b), vec2<bool>(true, func_4(func_1(u_input.a | 23848u, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(round(-1193f)), true), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 0i), -vec2<i32>(-23860i, 2147483647i)), func_1(u_input.a >> (u_input.b.x % 32u), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(var_2.x - 444f), false)).c.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-790f + var_2.x)))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, var_3.a, var_3.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, var_3.a, u_input.e), vec3<i32>(var_3.a, 0i, var_3.a))));
}

