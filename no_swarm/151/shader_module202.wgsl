struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(arg_1));
    var var_1 = Struct_2(1958u);
    var_1 = Struct_2(reverseBits(17320u));
    let var_2 = !select(vec4<bool>(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zx) == 49989u, arg_3, true, arg_3), select(select(select(vec4<bool>(arg_3, false, true, true), vec4<bool>(false, arg_3, true, arg_3), vec4<bool>(false, false, true, arg_3)), vec4<bool>(true, arg_3, true, true), select(vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, true), vec4<bool>(false, false, arg_3, true))), !vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(select(false, arg_3, arg_3), u_input.b == 1i, arg_3, false)), any(vec2<bool>(u_input.b > u_input.b, !arg_3)));
    var var_3 = var_2.wzx;
    return _wgslsmith_dot_vec4_u32(abs(min(~(vec4<u32>(var_1.a, 1u, u_input.a.x, 1u) >> (vec4<u32>(u_input.a.x, 12880u, 62602u, 0u) % vec4<u32>(32u))), ~vec4<u32>(arg_2, 0u, var_1.a, arg_2) & ~vec4<u32>(1u, var_1.a, u_input.a.x, u_input.a.x))), ~(~vec4<u32>(53500u, 4294967295u, arg_2, 4294967295u)));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = ~vec4<u32>(min(~(55314u & u_input.a.x), 0u), _wgslsmith_add_u32(u_input.a.x << (~0u % 32u), max(1u, 48413u)), arg_3.a, firstLeadingBit(u_input.a.x));
    var var_1 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.x, max(22053u, var_0.x)), u_input.a.xx), var_0.zw >> (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), arg_3.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(22155u, var_0.x, arg_3.a), vec3<u32>(96444u, var_0.x, arg_3.a) & u_input.a)) % vec2<u32>(32u)), arg_3.c, abs(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(arg_3.d, vec4<i32>(0i, u_input.b, -16228i, arg_3.d.x)), arg_3.d.x << (arg_3.a % 32u), ~u_input.b), vec4<i32>(2147483647i, countOneBits(1i), u_input.b, 52596i))));
    var var_2 = _wgslsmith_mult_vec4_u32(select(max(vec4<u32>(~var_1.b.x, var_1.b.x, select(43881u, var_0.x, arg_3.c.x), ~4294967295u), vec4<u32>(~1u, _wgslsmith_sub_u32(0u, arg_3.b.x), ~13407u, _wgslsmith_add_u32(4294967295u, u_input.a.x))), vec4<u32>(func_3(-880f, _wgslsmith_div_vec4_f32(vec4<f32>(-734f, arg_0, -343f, -916f), vec4<f32>(arg_1.x, arg_0, -1233f, -126f)), ~var_0.x, !var_1.c.x), 0u << ((u_input.a.x << (1u % 32u)) % 32u), ~abs(var_0.x), u_input.a.x), !vec4<bool>(all(vec4<bool>(var_1.c.x, true, false, false)), false | arg_3.c.x, !arg_3.c.x, !var_1.c.x)), ~min(var_0, var_0));
    let var_3 = true;
    let var_4 = true;
    return arg_3.d;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(~vec4<u32>(~_wgslsmith_div_u32(4294967295u, 1u), 0u, 1u, ~16668u));
    let var_1 = Struct_1(~(~(~_wgslsmith_div_u32(22766u, u_input.a.x))), firstTrailingBit(~_wgslsmith_div_vec2_u32(~u_input.a.xz, firstLeadingBit(vec2<u32>(0u, var_0.x)))), vec2<bool>(reverseBits(u_input.a.x) > 1u, true), func_4(-576f, vec2<f32>(-363f, _wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1103f)))), Struct_1(min(~28284u, func_3(100f, vec4<f32>(1000f, -481f, 1134f, -1710f), var_0.x, true)), _wgslsmith_clamp_vec2_u32(var_0.yw >> (vec2<u32>(var_0.x, u_input.a.x) % vec2<u32>(32u)), ~vec2<u32>(u_input.a.x, 1u), _wgslsmith_add_vec2_u32(var_0.yx, vec2<u32>(var_0.x, u_input.a.x))), vec2<bool>(true, true), select(countOneBits(vec4<i32>(u_input.b, -1i, -49151i, -37738i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, -12843i), vec4<i32>(u_input.b, -2147483647i, u_input.b, 2147483647i)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))))));
    let var_2 = ~abs(select(firstTrailingBit(~var_0.yxw), vec3<u32>(var_0.x, min(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(var_0.x, 4294967295u)), !(!vec3<bool>(var_1.c.x, false, false))));
    let var_3 = _wgslsmith_div_f32(1513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-253f * -1000f), -1000f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -855f)))));
    var var_4 = Struct_1(func_3(var_3, vec4<f32>(_wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(sign(-1292f)), _wgslsmith_f_op_f32(f32(-1f) * -1144f), var_3), 32179u, (i32(-1i) * -u_input.b) > -_wgslsmith_mult_i32(u_input.b, var_1.d.x)), vec2<u32>(1u, abs(12831u)), select(!select(select(var_1.c, var_1.c, vec2<bool>(var_1.c.x, var_1.c.x)), select(vec2<bool>(false, var_1.c.x), var_1.c, vec2<bool>(false, false)), var_1.c), vec2<bool>(true, select(var_3 == 503f, false, select(var_1.c.x, var_1.c.x, false))), select(vec2<bool>(any(vec4<bool>(var_1.c.x, false, var_1.c.x, false)), var_1.d.x != var_1.d.x), vec2<bool>(true, var_1.c.x), vec2<bool>(var_1.c.x & var_1.c.x, var_1.c.x))), ~min(~var_1.d, ~vec4<i32>(2147483647i, -2147483647i, var_1.d.x, var_1.d.x) | ~vec4<i32>(-45676i, var_1.d.x, u_input.b, var_1.d.x)));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(arg_1.c.b.yz, u_input.a.zy);
    let var_1 = vec2<u32>(u_input.a.x, var_0.x);
    let var_2 = func_2();
    var_0 = reverseBits(~select(vec2<u32>(1u, ~18457u), min(select(vec2<u32>(1u, 19829u), vec2<u32>(var_2.b.x, var_0.x), true), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), arg_1.a.b.wy)), var_2.c.x));
    let var_3 = select(!(!vec4<bool>(var_2.c.x, all(vec3<bool>(false, true, true)), any(var_2.c), arg_1.b.c.x)), vec4<bool>(arg_1.b.c.x, !(!(-1i > arg_2.x)), true, all(!select(vec4<bool>(true, true, false, false), vec4<bool>(arg_1.b.c.x, var_2.c.x, arg_1.b.c.x, arg_1.b.c.x), vec4<bool>(var_2.c.x, true, var_2.c.x, true)))), true);
    return Struct_2(2117u);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(arg_0.a, max(~vec4<u32>(0u, u_input.a.x, arg_0.b.x, 0u), vec4<u32>(28818u, 1u, 84492u, 1u) | vec4<u32>(u_input.a.x, 0u, 94275u, arg_0.b.x)) ^ arg_0.b, -abs(min(vec3<i32>(-1i, arg_0.c.x, 59672i), vec3<i32>(-59083i, 0i, 1i))), arg_1), func_2(), arg_0);
    var var_1 = var_0.a.d.x;
    var_0 = Struct_4(Struct_3(func_1(var_0.a.a.a, Struct_4(var_0.c, func_2(), arg_0), ~(~var_0.b.d)), vec4<u32>(9073u, 1u, ~func_2().b.x, arg_0.a.a), _wgslsmith_clamp_vec3_i32(-firstTrailingBit(vec3<i32>(2147483647i, arg_0.c.x, u_input.b)), vec3<i32>(-arg_0.c.x, -15612i, _wgslsmith_sub_i32(29925i, arg_0.c.x)), func_4(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -2110f))), arg_0.d.x, Struct_1(arg_0.a.a, u_input.a.xy, var_0.b.c, vec4<i32>(32374i, var_0.a.c.x, arg_0.c.x, var_0.c.c.x))).xwy), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(814f, -966f, -737f, var_0.a.d.x), _wgslsmith_f_op_vec4_f32(round(arg_0.d))))), var_0.b, Struct_3(arg_0.a, countOneBits(~arg_0.b), -(~max(vec3<i32>(-2147483647i, 1i, arg_0.c.x), var_0.b.d.ywx)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 226f, -2387f, arg_0.d.x) - arg_0.d)))))));
    var_0 = Struct_4(Struct_3(func_1(u_input.a.x, Struct_4(var_0.a, Struct_1(u_input.a.x, vec2<u32>(var_0.b.a, arg_0.b.x), vec2<bool>(false, false), var_0.b.d), Struct_3(Struct_2(1u), arg_0.b, vec3<i32>(var_0.c.c.x, 2147483647i, -1i), arg_1)), ~var_0.b.d), ~vec4<u32>(1u, var_0.b.b.x, u_input.a.x, ~19162u), vec3<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec4_i32(var_0.b.d, vec4<i32>(9578i, -20798i, -2147483647i, var_0.c.c.x))), 4546i, 43678i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d) + var_0.a.d))), func_2(), Struct_3(var_0.c.a, select(arg_0.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 62285u), var_0.a.b), vec4<bool>(func_2().c.x, false, true, var_0.b.c.x)), var_0.a.c, arg_0.d));
    var var_2 = ~(~abs(_wgslsmith_add_u32(var_0.c.a.a, arg_0.b.x) >> (53612u % 32u)));
    return func_1(arg_0.b.x | arg_0.a.a, Struct_4(Struct_3(func_1(4294967295u, Struct_4(Struct_3(var_0.c.a, var_0.a.b, var_0.c.c, vec4<f32>(748f, arg_1.x, arg_0.d.x, arg_1.x)), Struct_1(62855u, var_0.a.b.zz, var_0.b.c, vec4<i32>(-44895i, u_input.b, -1137i, -1i)), Struct_3(arg_0.a, arg_0.b, vec3<i32>(-1i, -2147483647i, var_0.b.d.x), arg_0.d)), -var_0.b.d), vec4<u32>(abs(6340u), ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, arg_0.a.a), _wgslsmith_dot_vec2_u32(var_0.b.b, arg_0.b.zz)), -var_0.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.d) - vec4<f32>(arg_0.d.x, var_0.c.d.x, arg_0.d.x, var_0.c.d.x))), Struct_1(min(var_0.b.b.x ^ 5700u, ~65781u), _wgslsmith_clamp_vec2_u32(u_input.a.xy, min(u_input.a.yz, vec2<u32>(u_input.a.x, 11806u)), ~vec2<u32>(26237u, 0u)), vec2<bool>(true & var_0.b.c.x, 4294967295u > var_0.b.a), var_0.b.d), Struct_3(var_0.c.a, var_0.a.b, -firstLeadingBit(vec3<i32>(-2549i, u_input.b, -2147483647i)), arg_1)), vec4<i32>(_wgslsmith_dot_vec2_i32(~var_0.b.d.zw, -vec2<i32>(-5977i, -982i)), 9865i, -_wgslsmith_mult_i32(-1i, arg_0.c.x), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(func_5(Struct_3(func_1(u_input.a.x, Struct_4(Struct_3(Struct_2(u_input.a.x), vec4<u32>(76726u, u_input.a.x, 0u, 74672u), vec3<i32>(u_input.b, -2147483647i, u_input.b), vec4<f32>(1665f, 124f, 210f, 1313f)), Struct_1(2220u, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false), vec4<i32>(u_input.b, 2147483647i, 0i, 12641i)), Struct_3(Struct_2(u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 75215u, u_input.a.x), vec3<i32>(u_input.b, u_input.b, u_input.b), vec4<f32>(-1438f, 267f, -447f, -1459f))), vec4<i32>(u_input.b, 28606i, u_input.b, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 31235u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)), vec3<i32>(29176i, u_input.b, 1i), vec4<f32>(-1318f, 257f, 1610f, 1256f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(501f, 1365f, 705f, -1234f) - vec4<f32>(-1000f, -892f, -623f, 316f))))), ~vec4<u32>(0u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~4294967295u), vec3<i32>(func_4(1493f, vec2<f32>(-1055f, -1510f), 538f, Struct_1(u_input.a.x, u_input.a.zy, vec2<bool>(false, false), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))).x ^ -27805i, -29298i, ~(~(-32625i))), vec4<f32>(_wgslsmith_f_op_f32(-664f + _wgslsmith_f_op_f32(f32(-1f) * -787f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-1005f, 730f), _wgslsmith_f_op_f32(floor(291f))), -596f, 1388f)), Struct_1(_wgslsmith_mod_u32(~4294967295u, countOneBits(u_input.a.x)), ~vec2<u32>(~u_input.a.x, ~u_input.a.x), vec2<bool>(true, true), _wgslsmith_div_vec4_i32(~(-vec4<i32>(1i, 0i, -46456i, u_input.b)), func_4(-383f, vec2<f32>(-526f, 1672f), 1000f, Struct_1(11697u, vec2<u32>(19042u, 0u), vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.b, 44951i, 9431i))) | max(vec4<i32>(0i, 1i, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))), Struct_3(Struct_2(u_input.a.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 19618u), vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u)) | _wgslsmith_mod_u32(u_input.a.x, 3720u), 1u, ~(~4294967295u), u_input.a.x), abs(abs(vec3<i32>(u_input.b, u_input.b, u_input.b))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-847f - -734f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f * -336f) - 821f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, 1000f)))));
    let var_1 = 1u;
    var_0 = Struct_4(var_0.a, Struct_1(20739u, vec2<u32>(u_input.a.x, firstLeadingBit(var_1) << (_wgslsmith_add_u32(1u, var_1) % 32u)), vec2<bool>(any(select(vec2<bool>(true, false), var_0.b.c, var_0.b.c.x)), any(vec3<bool>(var_0.b.c.x, var_0.b.c.x, true))), -var_0.b.d), var_0.c);
    var var_2 = Struct_1(~firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(var_1), _wgslsmith_mult_u32(0u, 91909u))), ~vec2<u32>(var_1, _wgslsmith_clamp_u32(var_1, var_1, 4294967295u) & (var_1 << (54561u % 32u))), select(vec2<bool>(true, var_0.b.c.x), var_0.b.c, select(vec2<bool>(var_0.b.c.x, true && var_0.b.c.x), vec2<bool>(true, true), vec2<bool>(var_0.b.c.x, true))), ~(-vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.c.yx, vec2<i32>(u_input.b, var_0.b.d.x)), var_0.b.d.x, ~u_input.b, -30958i)));
    var var_3 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(-15659i);
}

