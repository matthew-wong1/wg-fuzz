struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_2.wy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1118f, arg_2.x))), Struct_1(~firstTrailingBit(firstLeadingBit(u_input.a.yyy)), all(vec2<bool>(arg_0 && arg_0, true)), -168f), u_input.a, u_input.c);
    var var_1 = vec2<u32>(_wgslsmith_add_u32(max(firstLeadingBit(arg_3), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39825u), u_input.b.xz)), 4609u), ~1u) | var_0.c.yz;
    var_1 = ~u_input.b.zy;
    let var_2 = vec3<i32>(_wgslsmith_add_i32(~u_input.c, var_0.d), abs(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-29785i, 1i, u_input.c), ~u_input.c), 2147483647i)), ~var_0.d | (-2147483647i | u_input.c));
    var_1 = ~(~(~var_0.b.a.yx));
    return firstTrailingBit(~max(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, var_0.b.a.x, 19028u), vec4<u32>(0u, 1u, var_1.x, 127198u)), var_0.c), select(~vec4<u32>(var_1.x, u_input.b.x, 4294967295u, 1u), var_0.c, true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = select(select(vec3<bool>(true, true, true), !vec3<bool>(u_input.c < u_input.c, any(vec4<bool>(true, true, arg_0.b.b, arg_0.b.b)), arg_0.b.b), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.c.zy, arg_0.c.yw), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c.x, arg_2.x), arg_0.b.a.zx, vec2<u32>(0u, 4294967295u))) >= ((u_input.d ^ arg_0.c.x) ^ abs(15471u))), vec3<bool>(true, true, true), true);
    var_0 = select(!vec3<bool>(var_0.x, var_0.x, arg_0.b.b), vec3<bool>(any(!(!vec4<bool>(arg_0.b.b, false, true, arg_0.b.b))), arg_0.a.x < _wgslsmith_f_op_f32(-1134f * _wgslsmith_div_f32(1007f, arg_0.b.c)), all(vec2<bool>(true, true))), select(select(select(!vec3<bool>(var_0.x, false, arg_0.b.b), !vec3<bool>(arg_0.b.b, var_0.x, true), var_0.x), !vec3<bool>(var_0.x, var_0.x, true), var_0.x), !(!select(vec3<bool>(true, arg_0.b.b, false), vec3<bool>(var_0.x, true, arg_0.b.b), true)), !(!arg_0.b.b | true)));
    let var_1 = arg_0;
    let var_2 = Struct_1(var_1.b.a, false, 356f);
    var_0 = !select(vec3<bool>(false, true, arg_0.b.b), select(vec3<bool>(false, true, any(vec4<bool>(var_2.b, var_0.x, true, true))), select(select(vec3<bool>(var_0.x, var_1.b.b, true), vec3<bool>(var_1.b.b, true, var_1.b.b), vec3<bool>(arg_0.b.b, var_0.x, false)), select(vec3<bool>(true, var_1.b.b, var_1.b.b), vec3<bool>(arg_0.b.b, var_2.b, var_0.x), true), false), vec3<bool>(var_1.b.b, any(vec4<bool>(true, false, true, false)), true)), any(select(!vec4<bool>(var_2.b, var_2.b, var_1.b.b, false), !vec4<bool>(var_1.b.b, true, false, false), false)));
    return abs(abs(arg_0.d));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, arg_0.c)))), arg_0, ~abs(vec4<u32>(u_input.b.x, arg_0.a.x, _wgslsmith_mult_u32(u_input.d, arg_0.a.x), arg_0.a.x)), ~func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.c)), arg_0, func_3(arg_0.b, arg_0.c, vec4<f32>(-916f, arg_0.c, 274f, 458f), 48794u), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(509f, -246f, arg_0.c) + vec3<f32>(arg_0.c, arg_0.c, 904f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.c), vec3<f32>(955f, arg_0.c, arg_0.c))), ~arg_0.a));
    let var_1 = var_0.b;
    var var_2 = !(!all(!vec2<bool>(var_1.b, var_1.b)));
    var var_3 = (vec3<u32>(_wgslsmith_sub_u32(0u, var_1.a.x), func_3(any(vec4<bool>(arg_0.b, var_1.b, var_1.b, var_1.b)), -1278f, vec4<f32>(1816f, 919f, arg_0.c, var_1.c), arg_0.a.x).x, abs(_wgslsmith_sub_u32(32198u, arg_0.a.x))) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.x, 4294967295u, 1u) | firstLeadingBit(vec3<u32>(arg_0.a.x, arg_0.a.x, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_1.a.x), vec3<u32>(var_0.c.x, 1508u, arg_0.a.x), var_0.c.wzx)) % vec3<u32>(32u))) | ~(~(var_1.a & firstLeadingBit(var_1.a)));
    var_2 = var_0.b.b;
    return Struct_1(var_1.a, arg_0.b, arg_0.c);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x >> (21168u % 32u), ~(~20288u)), arg_1.c.zw) | ~_wgslsmith_mult_vec2_u32(vec2<u32>(abs(arg_1.c.x), ~u_input.d), u_input.b.yx);
    var var_1 = arg_1;
    var var_2 = all(vec3<bool>(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_1.b.b), var_1.b.b)), !any(vec2<bool>(var_1.b.b, arg_1.b.b))));
    var var_3 = u_input.a;
    let var_4 = countOneBits(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, arg_1.d), vec4<i32>(2147483647i, u_input.c, arg_1.d, u_input.c))) << (~var_1.c % vec4<u32>(32u))) ^ abs(-(vec4<i32>(1i, -11682i, var_1.d, var_1.d) >> (vec4<u32>(u_input.b.x, u_input.a.x, arg_1.c.x, 1u) % vec4<u32>(32u))) | max(vec4<i32>(-21559i, 2147483647i, -54451i, 1i), vec4<i32>(var_1.d, -13312i, -19115i, -22369i)));
    return func_2(Struct_1(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, 64882u, u_input.b.x)), vec3<u32>(_wgslsmith_clamp_u32(1u, arg_1.b.a.x, u_input.a.x), 76241u, 13153u)), false, -1000f));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(firstTrailingBit(max(u_input.b, u_input.b ^ ~vec3<u32>(34104u, u_input.b.x, 16155u))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.c.c)) * arg_2));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2238f, 533f)) + vec2<f32>(-1047f, _wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1922f)), arg_2))), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + 543f), Struct_3(arg_1, Struct_1(~vec3<u32>(arg_3.c.a.x, var_0.a.x, 61552u), true, _wgslsmith_f_op_f32(1575f + var_0.c)), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.d, arg_3.c.a.x, 39274u, u_input.a.x), u_input.a, vec4<bool>(true, arg_3.c.b, var_0.b, var_0.b)), u_input.a & u_input.a), u_input.c)), ~vec4<u32>(~_wgslsmith_div_u32(20761u, var_0.a.x), var_0.a.x, func_2(Struct_1(vec3<u32>(107226u, var_0.a.x, 56333u), true, arg_2)).a.x, var_0.a.x), ~u_input.c);
    let var_2 = arg_3;
    let var_3 = -9002i > (_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_1.d, var_1.d, u_input.c, -1i)), -vec4<i32>(u_input.c, 8933i, 2147483647i, 47276i)), vec4<i32>(abs(var_1.d), -var_1.d, var_1.d ^ 1i, 2147483647i)) & var_1.d);
    let var_4 = any(!select(!vec3<bool>(false, var_3, var_0.b), select(vec3<bool>(true, var_3, var_2.c.b), !vec3<bool>(false, arg_3.a.b, var_3), !vec3<bool>(false, var_1.b.b, false)), any(vec2<bool>(var_1.b.b, var_0.b))));
    return arg_3;
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = 29763u << (firstLeadingBit(4294967295u) % 32u);
    var var_1 = func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2037f, 319f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-981f, -364f), vec2<f32>(-1340f, -849f)) - vec2<f32>(422f, 956f))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1860f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f))), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1970f, _wgslsmith_f_op_f32(ceil(-637f)))))), Struct_2(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-986f - 1532f) * 1f), Struct_3(vec2<f32>(454f, 768f), func_2(Struct_1(vec3<u32>(arg_0.x, 13333u, 4294967295u), false, -1223f)), max(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.c, u_input.c))), 1063f, func_5(func_5(-510f, Struct_3(vec2<f32>(1181f, 295f), Struct_1(u_input.a.yyz, true, 817f), u_input.a, 1i)).c, Struct_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1384f, -129f), vec2<f32>(-403f, -1000f))), func_5(-146f, Struct_3(vec2<f32>(-1301f, 2354f), Struct_1(arg_0, true, -1255f), u_input.a, u_input.c)), ~vec4<u32>(arg_0.x, arg_0.x, 48426u, 14352u), func_4(Struct_3(vec2<f32>(-592f, -225f), Struct_1(vec3<u32>(u_input.d, 112118u, 4294967295u), false, -1867f), u_input.a, u_input.c), vec3<f32>(-1463f, 1529f, -498f), u_input.b)))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(980f, var_1.c.c, -1556f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.c, -133f, var_1.b))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b, -345f, 850f))), !(!vec3<bool>(var_1.c.b, var_1.a.b, var_1.a.b)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -520f))), func_2(Struct_1(u_input.a.xzy, var_1.a.b, 146f)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.c, 1863f)) - _wgslsmith_f_op_f32(-var_1.b)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.c * -1842f), _wgslsmith_f_op_f32(1677f - -552f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1512f + -771f))), var_1.b, _wgslsmith_f_op_f32(sign(-161f))));
    var var_3 = var_2.x;
    let var_4 = func_5(_wgslsmith_div_f32(-2405f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.x))))))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b * var_2.x), _wgslsmith_f_op_f32(-440f + var_1.c.c)) * var_2.yz), Struct_1(arg_0, all(vec2<bool>(var_1.a.b, false)), _wgslsmith_f_op_f32(ceil(-1013f))), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.c, 7539i))))).c;
    return select(vec4<bool>(func_2(var_1.c).b, true, true, var_1.c.b), select(!(!select(vec4<bool>(true, true, true, var_1.c.b), vec4<bool>(var_1.a.b, var_1.a.b, false, true), vec4<bool>(var_1.a.b, var_1.a.b, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(!(!var_1.a.b), var_1.c.b, select(true, var_1.a.b & var_1.c.b, false), true)), u_input.a.x <= u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 1u;
    var var_2 = vec2<bool>(var_0, var_0);
    var_2 = vec2<bool>(var_2.x, false);
    var var_3 = vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u);
    var var_4 = func_1(vec3<u32>(4294967295u, 0u, var_1));
    var var_5 = 1u >= var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-520f, -782f)) + _wgslsmith_f_op_f32(max(1087f, -157f))), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(437f, 363f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -541f) - vec2<f32>(-1580f, 1001f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-872f, -892f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, -798f))), _wgslsmith_f_op_f32(floor(1f)), func_6(vec2<f32>(2237f, 909f), _wgslsmith_f_op_vec2_f32(vec2<f32>(553f, 1260f) * vec2<f32>(-431f, 1279f)), _wgslsmith_div_f32(-1000f, -589f), func_6(vec2<f32>(1000f, 1097f), vec2<f32>(-1000f, -1279f), 322f, Struct_2(Struct_1(vec3<u32>(33982u, var_3.x, 29888u), false, 2809f), -217f, Struct_1(vec3<u32>(var_3.x, 39797u, u_input.b.x), var_0, -882f))))).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(820f - func_6(vec2<f32>(-1465f, 484f), vec2<f32>(1000f, 776f), -284f, Struct_2(Struct_1(var_3.xwz, var_4.x, -113f), 207f, Struct_1(var_3.wzy, true, -102f))).c.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), -462f, _wgslsmith_f_op_f32(trunc(846f)), _wgslsmith_f_op_f32(1326f - 1750f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, 1336f, -2398f, 752f)))))), -39650i);
}

