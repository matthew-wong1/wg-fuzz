struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: Struct_3,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(-(~(i32(-1i) * -3293i)), ~(-u_input.b) | u_input.b), u_input.b ^ _wgslsmith_add_i32(u_input.b, u_input.b & ~(-1i)), -428i);
    var var_1 = any(vec4<bool>(true, !any(vec3<bool>(true, arg_1.b.a, false)), true && (var_0.x > 22970i), true));
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.b.c, u_input.a.x), arg_1.a.ww);
    var var_3 = ~(~min(u_input.c, min(vec4<u32>(66578u, 32851u, u_input.a.x, 56397u), vec4<u32>(49565u, 1u, 4294967295u, 4294967295u))) << (vec4<u32>(max(arg_1.a.x, u_input.c.x << (1u % 32u)), abs(_wgslsmith_dot_vec2_u32(arg_1.a.xw, vec2<u32>(arg_1.b.c, u_input.c.x))), u_input.c.x, ~(u_input.c.x ^ 45738u)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1170f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1556f, 261f)) * _wgslsmith_div_f32(-289f, -954f))));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_5) -> Struct_4 {
    var var_0 = false;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(vec2<bool>(arg_3.d.x, false), Struct_2(arg_3.a.b.a, Struct_1(true, false, 0u))), -1i, 1i << (arg_3.a.b.a.x % 32u), firstTrailingBit(_wgslsmith_mod_i32(arg_3.c.d.x, arg_0.x))), select(select(abs(arg_0), max(arg_0, arg_0), !vec4<bool>(true, arg_3.a.b.b.b, true, arg_3.a.b.b.a)), abs(countOneBits(vec4<i32>(-2147483647i, arg_0.x, -24867i, arg_3.c.d.x))), select(arg_3.a.b.b.b, arg_3.a.c, select(arg_3.d.x, false, false)))) & _wgslsmith_mod_vec4_i32(vec4<i32>(28302i, ~34901i, (arg_3.c.d.x & -21680i) | -2147483647i, _wgslsmith_div_i32(50842i << (arg_2.x % 32u), _wgslsmith_div_i32(u_input.b, 0i))), firstLeadingBit(abs(vec4<i32>(2147483647i, arg_3.c.d.x, -52556i, -17840i))));
    return arg_3.a;
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_4(arg_1.a.a, arg_1.a.b, arg_0);
    let var_1 = func_2(min(vec4<i32>(-func_3(vec2<bool>(arg_1.b.a, true), Struct_2(vec4<u32>(var_0.b.b.c, u_input.c.x, 25346u, u_input.a.x), arg_1.c.a.b)), arg_3.x, func_3(vec2<bool>(true, false), var_0.b), firstLeadingBit(~1719i)), vec4<i32>(22449i, ~(-1i), arg_1.c.d.x, ~44140i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - var_0.a.x), _wgslsmith_f_op_f32(select(var_0.a.x, arg_1.a.a.x, arg_1.c.c.x)), _wgslsmith_div_f32(1288f, var_0.a.x), _wgslsmith_div_f32(-324f, arg_2)) * vec4<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -223f), 802f, _wgslsmith_f_op_f32(abs(arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * arg_1.a.a) + var_0.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.a))))), ~min(arg_1.a.b.a.xx, ~var_0.b.a.zz), arg_1).a;
    return arg_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: u32) -> Struct_4 {
    var var_0 = any(vec4<bool>(func_4(func_2(vec4<i32>(15467i, 14853i, -2147483647i, 1i), _wgslsmith_f_op_vec4_f32(ceil(arg_1.a.a)), vec2<u32>(arg_0.a.a.x, u_input.a.x), arg_1).c, Struct_5(func_2(vec4<i32>(u_input.b, arg_0.d.x, -1i, arg_0.d.x), vec4<f32>(arg_1.a.a.x, -438f, arg_0.b.x, arg_0.b.x), vec2<u32>(arg_0.a.b.c, arg_2), arg_1), arg_1.b, func_4(true, Struct_5(Struct_4(arg_1.a.a, arg_1.c.a, arg_0.c.x), Struct_1(false, arg_0.a.b.b, 56549u), Struct_3(Struct_2(vec4<u32>(arg_2, arg_2, arg_2, arg_2), Struct_1(arg_0.c.x, arg_1.d.x, 0u)), vec2<f32>(-746f, 1326f), vec2<bool>(true, arg_1.d.x), vec2<i32>(u_input.b, u_input.b)), arg_1.d, arg_1.a.a.zxy), arg_1.e.x, vec3<i32>(u_input.b, arg_0.d.x, 17114i)), vec2<bool>(arg_1.c.a.b.a, arg_1.b.a), _wgslsmith_f_op_vec3_f32(arg_1.a.a.xww - vec3<f32>(-722f, -1452f, 1366f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(286f + arg_0.b.x) - 1341f), ~vec3<i32>(-1i, 2309i, 5446i)).a.b.b, func_4(!(arg_1.b.c > 1u), arg_1, 668f, select(vec3<i32>(0i, 1i, 0i) << (u_input.c.zyy % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(u_input.b, arg_1.c.d.x, -13434i)), !arg_1.c.a.b.a)).c.x, func_2(select(reverseBits(vec4<i32>(arg_1.c.d.x, arg_0.d.x, arg_1.c.d.x, 4727i)), vec4<i32>(3499i, 14847i, 1i, arg_0.d.x), !vec4<bool>(arg_1.d.x, arg_0.c.x, true, arg_0.a.b.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.a)), u_input.c.xx, arg_1).b.b.b, arg_0.a.b.a));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.wwy)));
    let var_2 = func_4(!(!arg_0.a.b.a & (2147483647i <= (arg_1.c.d.x | 0i))), Struct_5(arg_1.a, arg_0.a.b, arg_0, select(func_4(all(vec3<bool>(false, false, true)), arg_1, _wgslsmith_f_op_f32(sign(-932f)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_1.c.d.x, 1i), vec3<i32>(arg_1.c.d.x, arg_1.c.d.x, arg_1.c.d.x))).c, !arg_0.c, func_4(true, Struct_5(arg_1.a, Struct_1(true, arg_0.a.b.b, u_input.c.x), arg_0, vec2<bool>(arg_0.c.x, arg_1.d.x), vec3<f32>(arg_1.e.x, 485f, arg_0.b.x)), _wgslsmith_f_op_f32(var_1.x * arg_0.b.x), select(vec3<i32>(-2053i, -34696i, -14507i), vec3<i32>(u_input.b, -1i, 5357i), arg_0.c.x)).c), arg_1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), select(select(~abs(vec3<i32>(arg_1.c.d.x, u_input.b, 95941i)), vec3<i32>(u_input.b, arg_1.c.d.x, -2147483647i) & -vec3<i32>(u_input.b, arg_1.c.d.x, arg_0.d.x), all(!vec3<bool>(arg_1.d.x, arg_1.b.a, false))), ~(vec3<i32>(1i, 0i, arg_0.d.x) & (vec3<i32>(arg_1.c.d.x, arg_0.d.x, -2147483647i) ^ vec3<i32>(arg_0.d.x, -2371i, arg_1.c.d.x))), select(true, arg_1.c.c.x, func_2(reverseBits(vec4<i32>(-13989i, arg_1.c.d.x, arg_1.c.d.x, u_input.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.a.x, 2563f, var_1.x, 720f))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_1.c.a.b.c), arg_0.a.a.zy), Struct_5(arg_1.a, Struct_1(arg_0.a.b.a, true, arg_0.a.a.x), arg_0, vec2<bool>(true, arg_1.d.x), arg_1.a.a.wxx)).b.b.b))).a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2007f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2082f), _wgslsmith_f_op_f32(-arg_1.a.a.x)))));
    return arg_1.a;
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_5(func_4(true, Struct_5(func_2(vec4<i32>(u_input.b, -754i, 2147483647i, u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 992f, arg_0, 1807f)), ~u_input.c.xx, Struct_5(Struct_4(vec4<f32>(arg_0, arg_0, 1405f, arg_0), Struct_2(u_input.c, Struct_1(false, true, 58095u)), false), Struct_1(false, false, u_input.c.x), Struct_3(Struct_2(vec4<u32>(84907u, 23578u, u_input.c.x, 1u), Struct_1(false, false, 0u)), vec2<f32>(728f, -566f), vec2<bool>(true, true), vec2<i32>(5040i, -33197i)), vec2<bool>(false, true), vec3<f32>(-1973f, -565f, arg_0))), Struct_1(0u >= u_input.c.x, 18675u == u_input.c.x, _wgslsmith_add_u32(1u, 1u)), Struct_3(func_2(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<f32>(arg_0, arg_0, -823f, arg_0), u_input.a.xy, Struct_5(Struct_4(vec4<f32>(273f, arg_0, arg_0, 923f), Struct_2(vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, 69812u), Struct_1(true, true, u_input.a.x)), true), Struct_1(false, true, 0u), Struct_3(Struct_2(vec4<u32>(3973u, 1u, u_input.c.x, 11119u), Struct_1(true, false, u_input.c.x)), vec2<f32>(arg_0, arg_0), vec2<bool>(true, true), vec2<i32>(24825i, 1i)), vec2<bool>(false, true), vec3<f32>(-2398f, -455f, 891f))).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -713f)), vec2<bool>(true, true), min(vec2<i32>(24520i, -10048i), vec2<i32>(u_input.b, u_input.b))), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(791f, arg_0, -150f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-370f, -742f, arg_0)), true))), 1598f, firstTrailingBit(select(reverseBits(vec3<i32>(u_input.b, 1i, -1i)), abs(vec3<i32>(0i, u_input.b, -1i)), true))), Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1098f, 1337f, arg_0, arg_0) * vec4<f32>(371f, arg_0, -328f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, -687f, arg_0, -119f))), func_4(true, Struct_5(Struct_4(vec4<f32>(arg_0, 1271f, 2341f, arg_0), Struct_2(vec4<u32>(58971u, 0u, u_input.a.x, u_input.a.x), Struct_1(true, false, 1u)), false), Struct_1(true, false, 0u), Struct_3(Struct_2(vec4<u32>(1u, 1u, 4294967295u, u_input.c.x), Struct_1(false, false, 4294967295u)), vec2<f32>(arg_0, arg_0), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(false, false), vec3<f32>(-290f, 1462f, arg_0)), _wgslsmith_f_op_f32(308f + -1000f), select(vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, 1026i, u_input.b), vec3<bool>(false, true, false))).a, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), func_2(~(-vec4<i32>(u_input.b, u_input.b, u_input.b, 35944i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-324f, 266f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 371f, 626f) - vec4<f32>(1932f, arg_0, arg_0, 1743f))), u_input.c.xz, Struct_5(func_2(vec4<i32>(-1i, u_input.b, u_input.b, -2147483647i), vec4<f32>(-339f, arg_0, arg_0, -526f), u_input.c.zy, Struct_5(Struct_4(vec4<f32>(arg_0, arg_0, 1636f, arg_0), Struct_2(u_input.c, Struct_1(true, false, 62475u)), true), Struct_1(true, true, u_input.c.x), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1819u), Struct_1(true, false, 74472u)), vec2<f32>(arg_0, -3095f), vec2<bool>(false, true), vec2<i32>(u_input.b, 26741i)), vec2<bool>(false, true), vec3<f32>(1308f, 1659f, -316f))), Struct_1(false, true, 1u), func_4(false, Struct_5(Struct_4(vec4<f32>(-813f, arg_0, 1059f, -183f), Struct_2(vec4<u32>(u_input.c.x, u_input.a.x, u_input.a.x, 19958u), Struct_1(false, false, 0u)), true), Struct_1(true, true, u_input.c.x), Struct_3(Struct_2(vec4<u32>(u_input.c.x, u_input.a.x, 48331u, u_input.c.x), Struct_1(true, false, 4294967295u)), vec2<f32>(arg_0, arg_0), vec2<bool>(true, true), vec2<i32>(7474i, 2147483647i)), vec2<bool>(true, false), vec3<f32>(arg_0, -123f, arg_0)), arg_0, vec3<i32>(-1i, 1307i, 5752i)), vec2<bool>(true, true), vec3<f32>(arg_0, -431f, arg_0))).b.b, func_4(!any(vec3<bool>(true, true, true)), Struct_5(Struct_4(vec4<f32>(1253f, arg_0, arg_0, arg_0), Struct_2(u_input.c, Struct_1(false, false, 5617u)), true), func_4(true, Struct_5(Struct_4(vec4<f32>(-1345f, arg_0, -386f, -1294f), Struct_2(u_input.c, Struct_1(false, true, u_input.a.x)), true), Struct_1(false, true, u_input.c.x), Struct_3(Struct_2(u_input.c, Struct_1(false, false, u_input.a.x)), vec2<f32>(arg_0, 1538f), vec2<bool>(false, false), vec2<i32>(1i, u_input.b)), vec2<bool>(false, true), vec3<f32>(1636f, arg_0, -2068f)), arg_0, vec3<i32>(-1i, u_input.b, u_input.b)).a.b, func_4(false, Struct_5(Struct_4(vec4<f32>(-960f, 1410f, -466f, arg_0), Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 0u), Struct_1(true, true, u_input.a.x)), false), Struct_1(false, true, u_input.c.x), Struct_3(Struct_2(u_input.c, Struct_1(true, false, u_input.a.x)), vec2<f32>(1404f, -105f), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, false), vec3<f32>(arg_0, arg_0, arg_0)), arg_0, vec3<i32>(u_input.b, u_input.b, 18869i)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-215f, -1000f, arg_0) * vec3<f32>(arg_0, arg_0, 947f))), arg_0, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -47452i), vec3<i32>(7190i, 1i, 1i) & vec3<i32>(u_input.b, 0i, u_input.b))), !vec2<bool>(true, any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(ceil(1562f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -2936f, arg_0)))), 1u);
    return Struct_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, 1258f, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), var_0.b, var_0.c);
}

fn func_6(arg_0: Struct_5) -> Struct_5 {
    var var_0 = -vec3<i32>(-1499i, 87533i, arg_0.c.d.x);
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, 1000f, arg_0.a.a.x, -556f))), func_1(-931f).b, arg_0.c.c.x), Struct_1(arg_0.a.b.b.b, any(!select(vec3<bool>(true, arg_0.a.b.b.a, false), vec3<bool>(arg_0.a.b.b.a, false, arg_0.a.c), arg_0.c.c.x)), ~(~arg_0.a.b.b.c)), func_4(any(vec2<bool>(arg_0.b.a, arg_0.c.c.x)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.x) - _wgslsmith_f_op_f32(abs(arg_0.c.b.x))), _wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.b, 435i, u_input.b)), vec3<i32>(u_input.b, arg_0.c.d.x, arg_0.c.d.x) & vec3<i32>(arg_0.c.d.x, arg_0.c.d.x, arg_0.c.d.x))), select(vec2<bool>(u_input.b >= var_0.x, arg_0.b.c < _wgslsmith_add_u32(arg_0.b.c, u_input.a.x)), vec2<bool>(!(!arg_0.d.x), func_1(_wgslsmith_f_op_f32(max(649f, arg_0.a.a.x))).b.b.a), arg_0.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, 1554f, arg_0.c.b.x) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1075f - 262f)), _wgslsmith_f_op_f32(step(806f, arg_0.c.b.x)), arg_0.e.x)));
    var_0 = abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_1.c.d.x, var_0.x, 51196i)), abs(vec3<i32>(0i, 62559i, var_0.x))), min(vec3<i32>(0i, -1i, 1i), vec3<i32>(24893i, -2147483647i, var_1.c.d.x)) >> (var_1.c.a.a.zxy % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, 4362i, arg_0.c.d.x), vec3<i32>(var_1.c.d.x, var_1.c.d.x, var_0.x)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c.d.x, var_0.x, 475i), select(vec3<i32>(-20385i, 40280i, 2147483647i), vec3<i32>(2147483647i, var_0.x, var_1.c.d.x), vec3<bool>(var_1.c.a.b.b, arg_0.d.x, var_1.c.a.b.a)), vec3<i32>(-1i, 21072i, var_0.x))));
    var var_2 = func_4(arg_0.c.c.x, Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(exp2(func_2(vec4<i32>(var_1.c.d.x, u_input.b, 17110i, var_0.x), var_1.a.a, u_input.a.xz, Struct_5(var_1.a, Struct_1(arg_0.c.c.x, false, 53235u), Struct_3(arg_0.a.b, vec2<f32>(1000f, var_1.c.b.x), arg_0.c.c, var_0.xz), vec2<bool>(var_1.d.x, false), vec3<f32>(arg_0.c.b.x, var_1.e.x, -1242f))).a)), func_4(var_1.a.b.b.a, Struct_5(Struct_4(arg_0.a.a, Struct_2(var_1.c.a.a, arg_0.a.b.b), arg_0.c.a.b.a), Struct_1(false, true, 1u), arg_0.c, var_1.c.c, var_1.a.a.xxw), arg_0.e.x, vec3<i32>(-1i, arg_0.c.d.x, var_1.c.d.x)).a, 0i > _wgslsmith_add_i32(arg_0.c.d.x, var_0.x)), arg_0.b, func_4(true, Struct_5(arg_0.a, var_1.c.a.b, var_1.c, var_1.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.a.x, -829f, -1695f), var_1.e, vec3<bool>(false, true, var_1.d.x)))), arg_0.a.a.x, ~vec3<i32>(var_0.x, 18940i, 14848i)), arg_0.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, var_1.a.a.x, arg_0.c.b.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.e.x))), vec3<i32>(~reverseBits(arg_0.c.d.x), -var_0.x, ~(-1i)));
    let var_3 = Struct_1(var_1.d.x, !var_1.c.a.b.b, var_2.a.a.x);
    return Struct_5(Struct_4(_wgslsmith_f_op_vec4_f32(-arg_0.a.a), var_2.a, false), Struct_1(all(vec2<bool>(any(vec4<bool>(false, var_1.c.c.x, var_2.a.b.a, false)), var_3.a)), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.d.x, -1i, u_input.b, 0i) << (arg_0.a.b.a % vec4<u32>(32u)), ~vec4<i32>(var_1.c.d.x, var_0.x, 62227i, 17142i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 1695f, var_1.e.x, -1190f)), vec4<f32>(1000f, arg_0.e.x, var_1.a.a.x, var_1.a.a.x))), vec2<u32>(~26002u, 1u), Struct_5(arg_0.a, Struct_1(var_1.c.a.b.b, false, u_input.c.x), var_1.c, select(vec2<bool>(var_2.a.b.b, false), vec2<bool>(true, arg_0.a.b.b.a), false), vec3<f32>(1384f, -1195f, 1661f))).b.b.a, 55322u), func_4(true, Struct_5(func_2(select(vec4<i32>(arg_0.c.d.x, var_0.x, 0i, 2147483647i), vec4<i32>(1i, 0i, 1i, -6902i), vec4<bool>(var_3.b, false, false, arg_0.c.a.b.a)), vec4<f32>(arg_0.c.b.x, 665f, var_2.b.x, arg_0.a.a.x), vec2<u32>(17191u, 17934u), arg_0), func_4(any(vec4<bool>(var_3.b, true, var_3.b, false)), Struct_5(Struct_4(var_1.a.a, arg_0.a.b, true), Struct_1(arg_0.b.b, var_2.c.x, var_1.b.c), arg_0.c, var_2.c, var_1.e), func_5(arg_0.c, arg_0, 4294967295u).a.x, countOneBits(vec3<i32>(-835i, 2147483647i, u_input.b))).a.b, Struct_3(func_1(-2899f).b, func_5(Struct_3(var_2.a, vec2<f32>(var_1.c.b.x, -496f), vec2<bool>(true, arg_0.d.x), var_0.xx), arg_0, var_1.a.b.a.x).a.yw, arg_0.d, vec2<i32>(0i, var_0.x) | vec2<i32>(-5648i, var_0.x)), !var_1.c.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.x, arg_0.c.b.x, var_1.e.x), vec3<f32>(1584f, -1000f, arg_0.c.b.x), true))), -1023f, ~abs(select(vec3<i32>(-1i, arg_0.c.d.x, 27083i), vec3<i32>(arg_0.c.d.x, 8888i, -15638i), arg_0.d.x))), !(!select(!vec2<bool>(false, var_3.b), !vec2<bool>(arg_0.c.a.b.a, var_3.a), func_4(false, Struct_5(Struct_4(var_1.a.a, Struct_2(vec4<u32>(6848u, var_1.b.c, 0u, arg_0.c.a.b.c), var_3), var_2.a.b.b), var_1.a.b.b, Struct_3(var_1.a.b, var_2.b, arg_0.c.c, var_0.yy), vec2<bool>(false, var_2.a.b.a), vec3<f32>(592f, var_2.b.x, arg_0.a.a.x)), var_1.c.b.x, vec3<i32>(u_input.b, u_input.b, arg_0.c.d.x)).c)), arg_0.e);
}

fn func_7(arg_0: Struct_5, arg_1: f32, arg_2: Struct_5) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a.a)), func_5(Struct_3(func_6(Struct_5(Struct_4(vec4<f32>(arg_0.c.b.x, 381f, 1000f, arg_0.a.a.x), arg_2.c.a, arg_0.b.b), arg_2.c.a.b, arg_0.c, arg_0.c.c, vec3<f32>(arg_0.a.a.x, 327f, 983f))).a.b, arg_0.e.zy, vec2<bool>(arg_0.b.a, false), ~arg_0.c.d), arg_2, func_2(vec4<i32>(arg_2.c.d.x, arg_0.c.d.x, arg_0.c.d.x, -17969i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, arg_2.c.b.x, arg_0.e.x, -299f)), func_5(arg_0.c, Struct_5(arg_2.a, Struct_1(arg_0.b.b, false, arg_2.b.c), arg_0.c, vec2<bool>(arg_0.d.x, arg_0.d.x), vec3<f32>(arg_2.a.a.x, arg_0.c.b.x, arg_2.e.x)), 1u).b.a.xy, arg_2).b.b.c).a)), arg_2.a.b, ~13252i > _wgslsmith_sub_i32(_wgslsmith_add_i32(7428i, _wgslsmith_add_i32(arg_2.c.d.x, u_input.b)), u_input.b));
    var var_1 = !(arg_0.c.d.x <= _wgslsmith_dot_vec2_i32(arg_0.c.d, _wgslsmith_div_vec2_i32(arg_0.c.d, arg_0.c.d) | countOneBits(arg_2.c.d)));
    var_1 = ~_wgslsmith_sub_i32(~15681i, ~(~arg_0.c.d.x)) == ~arg_2.c.d.x;
    var_1 = arg_0.b.a;
    var_1 = true;
    return func_6(func_6(func_6(arg_2))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(Struct_5(func_1(_wgslsmith_f_op_f32(-667f + -231f)), Struct_1(select(false, false, false), true, func_4(true, Struct_5(Struct_4(vec4<f32>(1401f, -499f, -612f, 1131f), Struct_2(u_input.c, Struct_1(false, true, u_input.c.x)), false), Struct_1(false, true, u_input.a.x), Struct_3(Struct_2(u_input.c, Struct_1(false, true, u_input.c.x)), vec2<f32>(784f, -1000f), vec2<bool>(false, false), vec2<i32>(u_input.b, 4480i)), vec2<bool>(false, true), vec3<f32>(-1797f, 1004f, 1550f)), 1219f, vec3<i32>(2147483647i, u_input.b, 18274i)).a.b.c), func_4(any(vec2<bool>(false, false)), Struct_5(Struct_4(vec4<f32>(-1000f, -1102f, 334f, -1743f), Struct_2(u_input.c, Struct_1(false, false, u_input.a.x)), true), Struct_1(false, true, 4165u), Struct_3(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.c.x), Struct_1(true, false, u_input.a.x)), vec2<f32>(1000f, -615f), vec2<bool>(false, true), vec2<i32>(-2147483647i, -22497i)), vec2<bool>(false, false), vec3<f32>(1292f, -1315f, 1000f)), -1000f, ~vec3<i32>(u_input.b, u_input.b, u_input.b)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-732f, -621f, 127f) - vec3<f32>(678f, 394f, -371f)))))), _wgslsmith_f_op_f32(-478f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f * -2419f)) + _wgslsmith_f_op_f32(f32(-1f) * -1597f))), func_6(func_6(Struct_5(Struct_4(vec4<f32>(-133f, -1452f, 695f, -663f), Struct_2(vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x), Struct_1(true, false, u_input.c.x)), true), func_5(Struct_3(Struct_2(u_input.c, Struct_1(false, true, 0u)), vec2<f32>(320f, 1510f), vec2<bool>(false, false), vec2<i32>(2147483647i, u_input.b)), Struct_5(Struct_4(vec4<f32>(-1000f, 302f, 204f, -983f), Struct_2(u_input.c, Struct_1(true, true, 0u)), false), Struct_1(false, true, u_input.a.x), Struct_3(Struct_2(u_input.c, Struct_1(true, true, 1671u)), vec2<f32>(687f, -613f), vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, true), vec3<f32>(1449f, 1090f, 552f)), u_input.c.x).b.b, func_6(Struct_5(Struct_4(vec4<f32>(-1088f, 778f, 346f, -1085f), Struct_2(u_input.c, Struct_1(true, true, 58912u)), true), Struct_1(true, true, 4294967295u), Struct_3(Struct_2(u_input.c, Struct_1(true, true, 38786u)), vec2<f32>(186f, -321f), vec2<bool>(false, false), vec2<i32>(2147483647i, u_input.b)), vec2<bool>(true, true), vec3<f32>(-580f, 1000f, -730f))).c, vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(813f, -131f, -1030f), vec3<f32>(2192f, -1478f, -566f), false))))));
    var var_1 = func_2(countOneBits(select(vec4<i32>(u_input.b, u_input.b, -48441i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -39897i, 0i, var_0.d.x), vec4<i32>(0i, -53001i, 0i, 21038i)), vec4<bool>(false, false, true, false)) << (min(vec4<u32>(var_0.a.a.x, u_input.a.x, 16703u, var_0.a.b.c), u_input.c) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), 126f, var_0.b.x, _wgslsmith_f_op_f32(round(var_0.b.x))), var_0.a.a.zw, func_6(func_6(func_6(Struct_5(Struct_4(vec4<f32>(-1000f, var_0.b.x, 1093f, 585f), var_0.a, false), Struct_1(var_0.a.b.b, false, 28238u), Struct_3(var_0.a, vec2<f32>(221f, -1908f), vec2<bool>(false, var_0.a.b.b), vec2<i32>(var_0.d.x, u_input.b)), var_0.c, vec3<f32>(435f, var_0.b.x, -2052f))))));
    var_1 = func_6(func_6(Struct_5(Struct_4(var_1.a, var_0.a, true), var_0.a.b, func_7(func_6(Struct_5(Struct_4(var_1.a, var_0.a, false), Struct_1(var_0.c.x, var_1.b.b.a, u_input.a.x), Struct_3(var_1.b, vec2<f32>(-662f, var_0.b.x), var_0.c, vec2<i32>(10117i, u_input.b)), var_0.c, vec3<f32>(var_1.a.x, var_0.b.x, -574f))), var_0.b.x, Struct_5(Struct_4(vec4<f32>(-393f, var_0.b.x, var_0.b.x, -351f), Struct_2(vec4<u32>(u_input.a.x, var_1.b.b.c, var_1.b.b.c, u_input.c.x), Struct_1(var_0.c.x, var_1.b.b.a, var_1.b.b.c)), true), var_1.b.b, Struct_3(Struct_2(vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_1.b.a.x, var_0.a.a.x), var_0.a.b), vec2<f32>(var_0.b.x, 1442f), vec2<bool>(false, var_1.c), var_0.d), var_0.c, vec3<f32>(var_1.a.x, var_1.a.x, -361f))), vec2<bool>(any(vec3<bool>(var_0.c.x, var_1.b.b.b, var_1.b.b.b)), var_1.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.xxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -152f, var_0.b.x) - vec3<f32>(1271f, var_0.b.x, -1000f)))))).a;
    var_0 = Struct_3(func_4(all(func_4(var_1.b.b.b, func_6(Struct_5(Struct_4(var_1.a, Struct_2(vec4<u32>(var_0.a.a.x, 15243u, var_1.b.b.c, 51105u), Struct_1(var_0.c.x, true, 1u)), false), Struct_1(var_0.c.x, var_0.a.b.a, u_input.c.x), Struct_3(var_0.a, vec2<f32>(var_0.b.x, -868f), var_0.c, var_0.d), var_0.c, var_1.a.wyx)), _wgslsmith_f_op_f32(360f - -870f), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 48705i, var_0.d.x), vec3<i32>(2147483647i, u_input.b, 43243i))).c), func_6(func_6(Struct_5(Struct_4(var_1.a, Struct_2(u_input.c, Struct_1(var_1.c, true, u_input.c.x)), false), var_0.a.b, Struct_3(Struct_2(var_1.b.a, Struct_1(var_1.b.b.a, var_1.b.b.a, 51241u)), var_1.a.yx, var_0.c, vec2<i32>(1i, -37535i)), vec2<bool>(var_0.a.b.b, true), var_1.a.xzw))), 313f, vec3<i32>(u_input.b, _wgslsmith_mod_i32(-1i, var_0.d.x) | -u_input.b, 63797i)).a, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)), var_0.b.x))), var_0.c, ~var_0.d);
    let var_2 = func_6(func_6(Struct_5(func_5(Struct_3(Struct_2(u_input.c, Struct_1(var_0.a.b.a, false, 0u)), vec2<f32>(var_1.a.x, -1000f), vec2<bool>(true, true), vec2<i32>(u_input.b, var_0.d.x)), Struct_5(Struct_4(vec4<f32>(153f, 352f, var_0.b.x, -1220f), var_1.b, var_1.c), var_1.b.b, Struct_3(var_0.a, var_0.b, var_0.c, vec2<i32>(var_0.d.x, var_0.d.x)), vec2<bool>(false, var_0.a.b.b), var_1.a.xxz), 43988u), func_5(Struct_3(var_0.a, vec2<f32>(-115f, -2034f), vec2<bool>(true, var_1.c), var_0.d), func_6(Struct_5(Struct_4(vec4<f32>(var_0.b.x, -767f, 1152f, var_1.a.x), var_1.b, var_0.c.x), Struct_1(false, var_0.c.x, 1u), Struct_3(Struct_2(vec4<u32>(1u, 23855u, var_1.b.a.x, 5706u), var_0.a.b), var_1.a.zz, vec2<bool>(true, true), var_0.d), vec2<bool>(var_0.c.x, true), var_1.a.yxy)), _wgslsmith_clamp_u32(var_1.b.b.c, var_1.b.b.c, 35595u)).b.b, Struct_3(Struct_2(vec4<u32>(var_1.b.b.c, 0u, 42257u, 40614u), Struct_1(true, true, 4294967295u)), vec2<f32>(var_1.a.x, -619f), !vec2<bool>(var_1.c, var_0.a.b.b), ~vec2<i32>(-10504i, u_input.b)), !select(vec2<bool>(var_0.c.x, var_1.c), vec2<bool>(var_1.c, true), var_0.c), var_1.a.yzy)));
    let x = u_input.a;
    s_output = StorageBuffer(23480i, vec3<i32>(reverseBits(1i) << (var_1.b.a.x % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(-var_0.d.x, -1i), select(~var_2.c.d.x, func_4(true, Struct_5(Struct_4(var_1.a, Struct_2(vec4<u32>(var_1.b.a.x, 11763u, var_0.a.a.x, 86055u), var_1.b.b), var_0.c.x), Struct_1(false, true, var_1.b.a.x), var_2.c, vec2<bool>(true, var_0.a.b.a), vec3<f32>(-707f, -712f, -230f)), var_1.a.x, vec3<i32>(var_2.c.d.x, var_0.d.x, -2147483647i)).d.x, var_1.a.x > -213f)), ~var_2.c.d.x), var_1.a.yx, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(75679u, 4294967295u), var_2.c.a.a.x), vec2<u32>(1u >> (var_0.a.b.c % 32u), var_2.a.b.b.c)), 1u), ~u_input.c.x);
}

