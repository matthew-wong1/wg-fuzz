struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    return any(select(select(vec4<bool>(false, true, true, all(vec3<bool>(false, false, false))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, !any(vec4<bool>(true, true, false, true))), vec4<bool>(true, !any(vec3<bool>(true, true, false)), true, true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(f32(-1f) * -886f)))), _wgslsmith_f_op_f32(-1f))));
    var var_2 = var_0;
    var var_3 = select(vec4<bool>(true, arg_1.a.x, true & !arg_1.a.x, -_wgslsmith_mod_i32(54568i, u_input.a.x) < ~(-12051i)), !vec4<bool>(all(!var_0.a.xz), true, func_3(), (u_input.a.x ^ u_input.a.x) <= -u_input.a.x), true);
    var var_4 = var_0;
    return !(!(!arg_1.a));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = Struct_1(vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-622f + 1153f), _wgslsmith_f_op_f32(round(-1723f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-234f, -2464f)) - -2724f), arg_2.a.x), arg_2.b, ~(~abs(~arg_2.c)));
    let var_1 = Struct_1(arg_3, ~arg_2.c.x, arg_2.c);
    var_0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-357f))), true)));
    var_0 = Struct_1(func_4(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, arg_2.c.x, 21360u, var_0.c.x), vec4<u32>(var_0.b, arg_2.b, 1u, 4294967295u), vec4<u32>(var_1.b, var_0.c.x, 0u, 10173u)), vec4<u32>(~var_1.b, firstTrailingBit(4294967295u), var_1.b & var_0.b, var_1.c.x)), Struct_1(select(vec3<bool>(false, true, var_0.a.x), arg_2.a, vec3<bool>(var_0.a.x, arg_2.a.x, arg_2.a.x)), arg_2.b, vec2<u32>(~var_1.b, 3925u)), select(vec3<bool>(func_3(), arg_1 != arg_1, arg_0), vec3<bool>(true, true, true | var_1.a.x), arg_2.a.x)), firstLeadingBit(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(7859u, var_0.c.x)))), var_0.c >> (vec2<u32>(select(var_1.c.x, _wgslsmith_sub_u32(1u, arg_2.b), false), select(var_1.c.x, ~1u, func_4(vec4<u32>(0u, 46641u, 4294967295u, var_1.b), Struct_1(vec3<bool>(arg_0, false, false), var_0.c.x, vec2<u32>(var_0.b, var_1.c.x)), vec3<bool>(arg_3.x, false, arg_3.x)).x)) % vec2<u32>(32u)));
    return select(vec2<bool>(arg_3.x, any(vec3<bool>(39083u > var_0.c.x, arg_0, true))), vec2<bool>(arg_0, var_0.a.x), select(!var_0.a.xz, select(arg_3.xy, var_0.a.xx, true), var_1.a.zx));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !arg_0.a.xx;
    var_0 = func_4(~_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0.b, _wgslsmith_add_u32(arg_0.c.x, 48366u), _wgslsmith_mod_u32(arg_0.c.x, 1u), 18953u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(95497u, 0u, 94218u, 69151u), vec4<u32>(arg_0.b, arg_0.b, arg_0.c.x, 55537u)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(arg_0.c.x, 23631u)), _wgslsmith_div_u32(arg_0.c.x, 78646u), arg_0.b << (4294967295u % 32u))), Struct_1(arg_0.a, arg_0.c.x >> (~(~arg_0.b) % 32u), ~vec2<u32>(38344u, arg_0.c.x)), arg_0.a).zx;
    var_0 = select(func_4(~vec4<u32>(arg_0.b, 92037u, min(1u, 49392u), arg_0.b), arg_0, arg_0.a).yz, arg_0.a.yy, func_4(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.c.x, arg_0.b, 1u, arg_0.c.x), vec4<u32>(arg_0.b, 64987u, 51903u, arg_0.c.x), vec4<u32>(1u, arg_0.c.x, 0u, 1u)), firstLeadingBit(min(vec4<u32>(4294967295u, arg_0.b, arg_0.c.x, 1u), vec4<u32>(6001u, 4294967295u, 61592u, arg_0.c.x)))), Struct_1(!select(arg_0.a, arg_0.a, false), ~arg_0.c.x, arg_0.c), !arg_0.a).xy);
    var_0 = vec2<bool>(false, all(!(!vec4<bool>(var_0.x, var_0.x, arg_0.a.x, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, -2133f, 2438f, 958f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2298f, 993f, 2340f, 626f), vec4<f32>(-178f, -631f, -1530f, -253f))) * vec4<f32>(-1000f, 574f, 235f, -675f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(559f, -1335f, -753f, -207f)))))));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = ~(4294967295u >> ((~_wgslsmith_div_u32(arg_1.b, arg_1.b) >> (_wgslsmith_clamp_u32(68037u, 22246u, 16380u) % 32u)) % 32u));
    var var_1 = arg_1;
    var_1 = func_5(Struct_1(vec3<bool>(all(func_2(false, 34552i, Struct_1(vec3<bool>(true, var_1.a.x, false), 0u, vec2<u32>(var_0, var_0)), vec3<bool>(false, arg_1.a.x, arg_0))), true, true && var_1.a.x), arg_1.b, reverseBits(~abs(vec2<u32>(38477u, var_0)))), -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a) ^ ~reverseBits(i32(-1i) * -2147483647i), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 24106i, u_input.a.x, 2895i) << (vec4<u32>(var_0, 1u, var_1.c.x, arg_1.c.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -4596i, u_input.a.x, 7401i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 39388i, 2147483647i, 1i), vec4<i32>(23542i, -2147483647i, 17905i, u_input.a.x)) & vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)));
    var_1 = func_5(Struct_1(vec3<bool>(any(select(vec4<bool>(true, arg_2, true, false), vec4<bool>(arg_0, true, arg_0, true), true)), !all(vec3<bool>(arg_2, true, arg_1.a.x)), false), var_0, select(arg_1.c >> (~var_1.c % vec2<u32>(32u)), arg_1.c, !func_4(vec4<u32>(arg_1.c.x, var_1.b, var_1.b, 0u), arg_1, var_1.a).xz)), u_input.a.x, vec4<i32>(0i, countOneBits(u_input.a.x), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, max(0i, u_input.a.x), ~reverseBits(0i))));
    let var_2 = vec2<f32>(-187f, _wgslsmith_f_op_f32(698f * -1093f));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = !(!(!select(select(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, true, false)), select(vec4<bool>(arg_0.a.x, true, true, false), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), vec4<bool>(true, arg_0.a.x, false, arg_0.a.x)), !vec4<bool>(arg_0.a.x, false, true, true))));
    var_0 = select(vec4<bool>(!func_3(), false, true, var_0.x), select(vec4<bool>(arg_0.a.x, !func_5(arg_0, -18545i, vec4<i32>(u_input.a.x, -25925i, u_input.a.x, u_input.a.x)).a.x, _wgslsmith_f_op_f32(-arg_2) <= _wgslsmith_f_op_f32(f32(-1f) * -612f), (arg_0.c.x < 27276u) & arg_0.a.x), !select(!vec4<bool>(true, var_0.x, false, true), !vec4<bool>(true, var_0.x, arg_0.a.x, true), var_0.x), select(!select(vec4<bool>(false, var_0.x, arg_0.a.x, var_0.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(u_input.a.x > 21815i, arg_0.a.x, arg_0.a.x, true), true)), true);
    var var_1 = Struct_1(!(!(!(!vec3<bool>(arg_0.a.x, var_0.x, var_0.x)))), 0u, _wgslsmith_div_vec2_u32(vec2<u32>(49873u, arg_0.b), vec2<u32>(abs(~arg_0.c.x), 0u)));
    let var_2 = Struct_1(var_1.a, arg_0.b, reverseBits(var_1.c ^ _wgslsmith_add_vec2_u32(var_1.c, arg_0.c)));
    var_1 = var_2;
    return ~var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(reverseBits(u_input.a.x) == u_input.a.x, _wgslsmith_f_op_f32(round(519f)) <= _wgslsmith_f_op_f32(select(326f, 1043f, true)), false), _wgslsmith_add_u32(4294967295u, func_6(func_1(true, Struct_1(vec3<bool>(true, false, true), 4294967295u, vec2<u32>(52708u, 0u)), false, _wgslsmith_f_op_f32(f32(-1f) * -1515f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(721f, -458f, 145f)))), _wgslsmith_f_op_f32(-258f + 1f))), vec2<u32>(4263u, 1u));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(1000f - 1f);
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-183f)))))) + 194f)));
    let var_3 = min(var_0.c.x, _wgslsmith_mod_u32(var_0.b, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(99658u, var_0.b), 1u)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))));
    let var_5 = ~(~(~(~_wgslsmith_mod_u32(1473u, var_3))));
    let var_6 = Struct_1(func_5(var_0, -(~(-u_input.a.x)), reverseBits(max(max(vec4<i32>(u_input.a.x, 1i, 8868i, -2147483647i), vec4<i32>(-2147483647i, var_1, -2147483647i, var_1)), vec4<i32>(u_input.a.x, u_input.a.x, var_1, u_input.a.x)))).a, abs(var_5), max(~vec2<u32>(1u, _wgslsmith_add_u32(0u, 23638u)), var_0.c));
    let var_7 = !var_6.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_6.b, 4294967295u, max(~_wgslsmith_mod_u32(var_5, 29225u), var_3)), 43779i);
}

