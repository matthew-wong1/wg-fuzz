struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = false | all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), true)));
    let var_1 = select(true, var_0, all(select(select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0), !vec2<bool>(true, var_0)), select(!vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), var_0), any(!vec4<bool>(true, true, var_0, false)))));
    var var_2 = arg_1.b.x;
    let var_3 = arg_1.b.zxx >> (vec3<u32>(abs(121423u), ~(~arg_1.a ^ (1u << (arg_1.a % 32u))), 4294967295u) % vec3<u32>(32u));
    var var_4 = Struct_3(-_wgslsmith_sub_vec2_i32(firstTrailingBit(abs(arg_1.b.xw)), -vec2<i32>(1i, u_input.a.x)), vec3<bool>(any(vec4<bool>(false, true, false, var_1 && false)), true, true), firstLeadingBit(~(-26789i)), Struct_1(~arg_1.a, firstTrailingBit(vec4<i32>(-23117i, 4630i, 2147483647i, var_3.x) << (~vec4<u32>(arg_1.a, 1u, 10188u, 0u) % vec4<u32>(32u))), 4294967295u ^ _wgslsmith_mult_u32(abs(arg_1.a), ~arg_1.a)));
    return firstLeadingBit(-(~vec4<i32>(-1i, 2147483647i, u_input.a.x, 22657i) >> (countOneBits(vec4<u32>(29324u, arg_1.a, 78032u, 4294967295u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = Struct_3(u_input.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), all(vec2<bool>(true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), true), u_input.a.x, Struct_1(0u, func_3(vec2<f32>(_wgslsmith_div_f32(688f, -1000f), -305f), Struct_1(_wgslsmith_sub_u32(arg_0, arg_0), -vec4<i32>(-96156i, u_input.a.x, u_input.a.x, u_input.a.x), ~arg_0), -u_input.a, select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), -vec4<i32>(-4386i, u_input.a.x, 1i, -3279i), true)), arg_0));
    var var_1 = Struct_1(arg_0, var_0.d.b, var_0.d.a);
    let var_2 = vec4<bool>(true || any(!vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x)), var_0.b.x, ~34301i >= ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1852f, -152f) - vec2<f32>(-1053f, 235f)), var_0.d, select(var_1.b.xz, var_1.b.xz, true), select(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 49427i), var_0.d.b, vec4<bool>(false, true, var_0.b.x, false))).x, var_0.b.x);
    var var_3 = ~abs(firstTrailingBit(select(vec4<i32>(var_1.b.x, var_1.b.x, u_input.a.x, var_1.b.x), vec4<i32>(var_0.c, u_input.a.x, -6305i, var_0.c), true)) >> (vec4<u32>(_wgslsmith_div_u32(4294967295u, 17541u), var_1.c, reverseBits(1u), ~var_1.a) % vec4<u32>(32u)));
    let var_4 = -15723i;
    return var_4;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -_wgslsmith_dot_vec2_i32(arg_2.b.yz, arg_2.b.zy) << (abs(47910u) % 32u);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_div_f32(776f, 902f))))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(min(-902f, -993f))), _wgslsmith_f_op_f32(min(-1148f, _wgslsmith_f_op_f32(floor(-638f))))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(241f, var_2.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -775f)))))));
    var_2 = vec2<f32>(714f, var_2.x);
    return Struct_2(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 303f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-555f, 2255f)), var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 542f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, 643f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-564f, -540f, 299f, var_2.x), vec4<f32>(-423f, var_2.x, -1160f, var_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1790f, var_2.x, -319f, var_2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(var_2.x, -902f))) * -140f), var_1, vec3<u32>(_wgslsmith_mod_u32(var_1.a, _wgslsmith_mult_u32(var_1.a, 92408u) & ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.c, ~4294967295u, arg_2.c, _wgslsmith_mod_u32(arg_2.a, var_1.c)), firstLeadingBit(~vec4<u32>(4294967295u, var_1.c, 1u, 0u))), ~(~10832u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = ~(~_wgslsmith_sub_u32(~arg_1.c, 49386u));
    var var_1 = ~countOneBits(~(vec4<u32>(8198u, 14638u, var_0, 17144u) & vec4<u32>(arg_0.d.a, arg_0.d.a, var_0, 4294967295u))) >> (_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(arg_0.d.c, var_0, 41974u, 0u))), vec4<u32>(5694u, ~arg_1.c, _wgslsmith_clamp_u32(arg_1.c, var_0, arg_0.d.c), select(33534u, var_0, false)) ^ abs(vec4<u32>(21728u, var_0, arg_1.c, 1u))) % vec4<u32>(32u));
    let var_2 = func_4(arg_0.d.b.yx, _wgslsmith_sub_i32(func_2(1u & arg_1.c), arg_1.b.x) < _wgslsmith_sub_i32(~2147483647i, max(arg_0.d.b.x >> (4294967295u % 32u), -1i)), Struct_1(~1u, arg_0.d.b, ~_wgslsmith_clamp_u32(arg_1.c, ~39603u, countOneBits(14060u))));
    let var_3 = _wgslsmith_mult_vec3_i32(-firstTrailingBit(vec3<i32>(arg_2, -14412i, arg_2)), _wgslsmith_div_vec3_i32(~(vec3<i32>(-1i) * -arg_1.b.wxw), var_2.a.b.wwx));
    let var_4 = arg_0;
    return Struct_3(select(countOneBits(arg_0.d.b.yz) | firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(var_3.x, 0i), vec2<i32>(var_4.c, arg_0.c))), ~var_2.a.b.yx, !(!arg_0.b.xx)), !vec3<bool>(!arg_0.b.x, all(vec4<bool>(arg_0.b.x, false, true, false)), false), ~_wgslsmith_clamp_i32((var_3.x | 37992i) | firstLeadingBit(-2241i), ~(~0i), -33175i), arg_0.d);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = ~vec2<u32>(arg_0.d.a, ~_wgslsmith_clamp_u32(~4605u, ~arg_0.d.a, firstLeadingBit(4294967295u)));
    var var_1 = vec4<i32>(0i, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(0i, 48832i) >> (_wgslsmith_sub_u32(0u, var_0.x) % 32u))), 33720i, firstLeadingBit(17749i));
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~0u, arg_0.d.c), vec2<u32>(~select(~44696u, 5800u, select(false, arg_0.b.x, false)), 16778u));
    var var_2 = arg_1.c;
    let var_3 = func_1(Struct_3(vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 3362i), vec2<i32>(-1i, var_1.x))), -arg_0.a.x), arg_0.b, 8045i, func_4(var_1.zx, arg_1.b.x, func_4(select(arg_1.a, arg_1.a, vec2<bool>(arg_0.b.x, arg_0.b.x)), arg_1.b.x, arg_0.d).d).a), Struct_1(~min(arg_0.d.a, ~0u), ~_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -8899i, 2147483647i, -12296i), ~arg_0.d.b), _wgslsmith_mod_u32(1u & ~arg_0.d.c, reverseBits(_wgslsmith_mod_u32(arg_1.d.c, 48594u)))), var_1.x).d;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f + 765f))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1154f))), _wgslsmith_f_op_f32(f32(-1f) * -634f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -245f, arg_1.x) * vec3<f32>(arg_1.x, 965f, arg_1.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_2 = arg_2.d;
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-715f)) - arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) + 899f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), func_4(abs(vec2<i32>(31193i, arg_0.b.x)), false, func_1(arg_2, arg_0, 0i).d).c))));
    let var_3 = arg_2.b;
    return var_2.a;
}

fn func_7(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = func_1(func_1(func_1(func_1(func_1(Struct_3(u_input.a, arg_0.zxy, -14641i, arg_2), arg_2, -2147483647i), func_1(Struct_3(vec2<i32>(arg_3.b.x, u_input.a.x), arg_0.wxw, u_input.a.x, Struct_1(0u, arg_3.b, 4294967295u)), arg_2, 52997i).d, -1i), Struct_1(select(76589u, arg_3.a, arg_0.x), _wgslsmith_mod_vec4_i32(arg_3.b, arg_2.b), ~arg_3.a), arg_3.b.x), func_1(Struct_3(countOneBits(vec2<i32>(arg_3.b.x, -2147483647i)), select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0.wwy, false), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.b.x, arg_3.b.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_2.b.x, arg_2.b.x, 37932i)), Struct_1(60189u, vec4<i32>(arg_2.b.x, arg_2.b.x, 24509i, 33440i), arg_2.a)), arg_2, ~(~arg_2.b.x)).d, 1i), func_4(-arg_3.b.wz, true, arg_3).d, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(352f, 2070f) + vec2<f32>(-167f, -342f)))), func_4(min(~arg_2.b.ww, firstTrailingBit(u_input.a)), !(!arg_0.x), func_1(func_1(Struct_3(vec2<i32>(1i, 0i), arg_0.xzy, 1i, arg_3), Struct_1(12455u, vec4<i32>(arg_2.b.x, 11526i, 0i, arg_2.b.x), arg_3.c), 0i), Struct_1(arg_1, arg_3.b, arg_1), _wgslsmith_div_i32(18407i, 2147483647i)).d).d, vec2<i32>(u_input.a.x, -61577i), arg_2.b).x).d;
    var var_2 = func_4(arg_3.b.xx, true, func_4(abs(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 1i), var_1.b.yy))), !func_1(Struct_3(arg_3.b.xz, arg_0.ywz, u_input.a.x, Struct_1(arg_2.a, var_1.b, 4294967295u)), func_4(arg_2.b.yz, arg_0.x, var_1).d, -1i).b.x, func_1(func_1(func_1(Struct_3(arg_3.b.wy, arg_0.xxx, 0i, arg_2), arg_2, 13539i), func_4(vec2<i32>(-1i, arg_2.b.x), false, arg_3).a, 0i & arg_2.b.x), Struct_1(_wgslsmith_mod_u32(47213u, 1u), arg_2.b, 1u), reverseBits(var_1.b.x)).d).a).a;
    let var_3 = arg_3;
    var var_4 = func_1(func_1(func_1(Struct_3(vec2<i32>(1i, 1i), select(arg_0.xxz, vec3<bool>(arg_0.x, arg_0.x, true), arg_0.wyy), var_1.b.x | arg_2.b.x, func_1(Struct_3(u_input.a, arg_0.xwz, arg_3.b.x, Struct_1(7527u, vec4<i32>(var_2.b.x, var_3.b.x, 0i, 0i), 0u)), arg_2, 0i).d), Struct_1(0u, -arg_2.b, _wgslsmith_add_u32(var_2.c, 4294967295u)), 6759i), Struct_1(~0u, vec4<i32>(i32(-1i) * -24267i, arg_2.b.x & var_2.b.x, -arg_2.b.x, _wgslsmith_div_i32(u_input.a.x, var_2.b.x)), 0u), var_3.b.x), var_1, _wgslsmith_mult_i32(reverseBits(~2147483647i), 2147483647i) | ~(~arg_3.b.x)).d;
    return func_1(Struct_3(min(vec2<i32>(-24252i, func_1(Struct_3(vec2<i32>(var_1.b.x, -25852i), arg_0.zyw, arg_2.b.x, Struct_1(49718u, vec4<i32>(0i, -12704i, var_2.b.x, u_input.a.x), var_2.c)), Struct_1(var_3.c, var_1.b, arg_1), 2147483647i).a.x), ~var_3.b.wx), vec3<bool>(arg_0.x, !arg_0.x, true), _wgslsmith_dot_vec2_i32(var_4.b.zx, vec2<i32>(2147483647i, 0i)), Struct_1(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(9545u, arg_2.a, 4294967295u)), select(vec3<u32>(var_4.a, 47653u, 49429u), vec3<u32>(arg_1, 0u, var_2.c), arg_0.xxx)), vec4<i32>(abs(var_4.b.x), var_2.b.x, 39059i, -2203i), func_4(_wgslsmith_div_vec2_i32(var_1.b.zz, vec2<i32>(0i, 12015i)), true || arg_0.x, var_3).d.c)), Struct_1(var_4.c, -(~(-vec4<i32>(72445i, -1i, var_4.b.x, var_4.b.x))), ~_wgslsmith_div_u32(4294967295u, abs(50916u))), var_1.b.x | var_4.b.x).d;
}

fn func_8(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(~arg_1.b.zzz);
    var_0 = vec3<i32>(var_0.x, _wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(1i, -_wgslsmith_add_i32(arg_1.b.x, -8756i))), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-776f)))))), -1263f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * -1409f))), arg_0.x));
    var var_2 = select(min(arg_1.c << (~arg_1.a % 32u), 1u) >> (arg_1.a % 32u), ~_wgslsmith_mult_u32(arg_1.a, _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_1.c), 16741u)), true);
    var var_3 = func_4(~select(abs(func_1(Struct_3(u_input.a, vec3<bool>(true, true, false), -2147483647i, Struct_1(1u, arg_1.b, 4294967295u)), arg_1, 1i).d.b.yw), ~vec2<i32>(arg_1.b.x, u_input.a.x), !func_1(Struct_3(arg_1.b.xz, vec3<bool>(false, false, true), -4912i, Struct_1(0u, vec4<i32>(1i, arg_1.b.x, -1i, -2147483647i), arg_1.a)), arg_1, 1i).b.zz), true, arg_1);
    return Struct_1(func_1(func_1(func_1(func_1(Struct_3(u_input.a, vec3<bool>(true, true, false), 0i, arg_1), arg_1, -7290i), var_3.a, 63781i), Struct_1(var_3.e.x, var_3.d.b, _wgslsmith_mult_u32(0u, 17816u)), -34697i), Struct_1(~var_3.e.x, vec4<i32>(var_0.x, firstTrailingBit(u_input.a.x), abs(var_3.a.b.x), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(var_0.x, 18335i))), 1u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 0i, arg_1.b.x, u_input.a.x), vec4<i32>(u_input.a.x, var_0.x, 27977i, 1i)) & reverseBits(var_3.a.b), _wgslsmith_sub_vec4_i32(-var_3.a.b, vec4<i32>(1i, 2147483647i, var_0.x, -929i)))).d.c, vec4<i32>(-abs(~1i), ~(_wgslsmith_dot_vec3_i32(var_3.d.b.xxy, var_3.a.b.zzx) & abs(-5706i)), -_wgslsmith_div_i32(1i, abs(u_input.a.x)), min(-40213i, _wgslsmith_add_i32(arg_1.b.x, 2147483647i & arg_1.b.x))), var_3.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-106f, 1018f), _wgslsmith_div_vec2_f32(vec2<f32>(-1175f, -956f), vec2<f32>(1394f, -1000f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(506f))), 1f)), func_7(select(vec4<bool>(true, true, true, true), vec4<bool>(5409i <= u_input.a.x, true, true, false), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), func_6(Struct_1(19042u, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -16654i) << (vec4<u32>(42960u, 1u, 0u, 7565u) % vec4<u32>(32u)), ~5837u), _wgslsmith_f_op_vec2_f32(func_5(func_1(Struct_3(u_input.a, vec3<bool>(true, false, true), -1i, Struct_1(0u, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), 4294967295u)), Struct_1(69664u, vec4<i32>(u_input.a.x, u_input.a.x, -16705i, u_input.a.x), 46946u), 0i), func_1(Struct_3(u_input.a, vec3<bool>(true, false, true), -17442i, Struct_1(48820u, vec4<i32>(48835i, u_input.a.x, u_input.a.x, -37287i), 0u)), Struct_1(86669u, vec4<i32>(1i, -22480i, u_input.a.x, -23766i), 0u), u_input.a.x))), func_1(func_1(Struct_3(u_input.a, vec3<bool>(true, false, true), u_input.a.x, Struct_1(19528u, vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x), 21349u)), Struct_1(4294967295u, vec4<i32>(0i, u_input.a.x, u_input.a.x, 41215i), 1u), u_input.a.x), func_1(Struct_3(u_input.a, vec3<bool>(true, true, false), u_input.a.x, Struct_1(0u, vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x), 97276u)), Struct_1(17231u, vec4<i32>(-36849i, u_input.a.x, u_input.a.x, u_input.a.x), 0u), 0i).d, u_input.a.x & -52683i)), func_1(Struct_3(-vec2<i32>(u_input.a.x, u_input.a.x), vec3<bool>(false, false, true), 48922i, func_4(u_input.a, false, Struct_1(29824u, vec4<i32>(u_input.a.x, u_input.a.x, 43510i, u_input.a.x), 0u)).a), Struct_1(select(66878u, 0u, false), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 6607i), 53901u), u_input.a.x).d, Struct_1(firstLeadingBit(firstLeadingBit(0u)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(2390f, -1000f) + vec2<f32>(-211f, 731f)), Struct_1(28776u, vec4<i32>(14605i, u_input.a.x, -1i, 46870i), 0u), ~u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), 1u)));
    let var_1 = func_1(Struct_3(vec2<i32>(-8522i, i32(-1i) * -25969i), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), func_1(func_1(Struct_3(var_0.b.zw, vec3<bool>(false, true, false), u_input.a.x, Struct_1(var_0.c, vec4<i32>(var_0.b.x, -2147483647i, -1i, 0i), 0u)), Struct_1(0u, vec4<i32>(-1i, u_input.a.x, var_0.b.x, u_input.a.x), var_0.c), u_input.a.x), func_8(vec2<f32>(-457f, -1149f), Struct_1(8018u, var_0.b, 79452u)), ~var_0.b.x).b, vec3<bool>(true, var_0.a <= 1u, true)), func_7(vec4<bool>(true, true, true, true), 53672u, Struct_1(12232u, var_0.b, var_0.a), func_1(Struct_3(var_0.b.xy, vec3<bool>(true, true, true), u_input.a.x, Struct_1(4294967295u, vec4<i32>(17844i, var_0.b.x, 0i, 12847i), 32851u)), Struct_1(57367u, var_0.b, 94807u), -1i).d).b.x >> (func_6(Struct_1(704u, vec4<i32>(-1i, 2147483647i, u_input.a.x, var_0.b.x), var_0.c), vec2<f32>(781f, -1456f), Struct_3(var_0.b.zz, vec3<bool>(false, true, false), 1i, Struct_1(var_0.a, vec4<i32>(var_0.b.x, -2147483647i, var_0.b.x, 27701i), var_0.c))) % 32u), func_7(vec4<bool>(true, true, true, true), var_0.a, Struct_1(abs(var_0.c), var_0.b, firstTrailingBit(26822u)), Struct_1(0u, vec4<i32>(-2147483647i, u_input.a.x, 10485i, -2147483647i), 23132u))), func_8(_wgslsmith_f_op_vec2_f32(-func_4(var_0.b.xx >> (vec2<u32>(var_0.c, 43381u) % vec2<u32>(32u)), true, func_4(var_0.b.yz, true, Struct_1(74927u, var_0.b, var_0.a)).a).b.yy), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3270u, var_0.a, 4294967295u, 97526u), vec4<u32>(var_0.c, 4294967295u, var_0.c, var_0.a)), ~vec4<u32>(var_0.c, 3230u, 70090u, var_0.c)), -max(vec4<i32>(-2147483647i, 41026i, var_0.b.x, 0i), var_0.b), 15019u)), (_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) | u_input.a.x) >> (var_0.a % 32u)).d;
    var_0 = Struct_1(0u, max(-var_1.b, vec4<i32>(var_1.b.x, -1i, -42367i, select(var_1.b.x, var_0.b.x, true))), var_0.a);
    let var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) - _wgslsmith_f_op_f32(-1343f + -1201f)), -587f, -1492f, -154f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, 132f, -279f, -2660f)) * vec4<f32>(244f, -542f, -680f, -1181f)))));
}

