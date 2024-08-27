struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    var var_0 = Struct_2(vec3<u32>(1u, countOneBits(arg_0.x), abs(1u)), 39774u, u_input.a);
    let var_1 = Struct_2(firstTrailingBit(arg_0), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, arg_1, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.a, 7646u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 4294967295u), var_0.a))), arg_1, 1u), reverseBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(8304u, 7721u, arg_1, 4294967295u), vec4<u32>(1u, var_0.b, var_0.c, var_0.a.x)), ~vec4<u32>(3907u, 1u, 1u, u_input.a))));
    global0 = !(!(!(!(!vec2<bool>(false, global0.x)))));
    var_0 = Struct_2(arg_0, u_input.a, ~firstTrailingBit(countOneBits(~49335u)));
    global0 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, true), vec2<bool>(true, true)), vec2<bool>(true, true))), false);
    return var_0.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    return firstLeadingBit(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(arg_1.a.a.x, 0u), firstTrailingBit(_wgslsmith_div_u32(arg_1.d.c, 1u)))) & func_3(vec3<u32>(arg_1.d.c, 25474u, ~(~0u)), 58304u);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_2(reverseBits(countOneBits(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)))), 15265u, ~(~23373u)), Struct_1(arg_3.x, 4294967295u, vec3<f32>(arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(335f, arg_2)))), _wgslsmith_f_op_f32(sign(arg_2))), vec3<u32>(func_2(_wgslsmith_div_f32(-343f, 1925f), Struct_3(Struct_2(vec3<u32>(48410u, u_input.a, u_input.a), 82549u, u_input.a), Struct_2(vec3<u32>(u_input.a, u_input.a, 0u), u_input.a, u_input.a), false, Struct_2(vec3<u32>(u_input.a, u_input.a, 1u), u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, -222f, arg_2, -1398f)))), func_2(arg_2, Struct_3(Struct_2(vec3<u32>(u_input.a, 1u, u_input.a), u_input.a, 1u), Struct_2(vec3<u32>(18253u, 4294967295u, 1u), u_input.a, 0u), arg_0, Struct_2(vec3<u32>(u_input.a, u_input.a, 0u), 16515u, u_input.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, -198f, 1953f, arg_2), vec4<f32>(424f, -120f, arg_2, 144f), vec4<bool>(true, false, arg_0, arg_0)))), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), ~45156u), ~vec4<u32>(0u, 0u, 35530u, u_input.a) << ((vec4<u32>(u_input.a, u_input.a, 29319u, 30990u) ^ vec4<u32>(4294967295u, u_input.a, 61669u, 4294967295u)) % vec4<u32>(32u)))), Struct_2(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 44282u), ~vec3<u32>(1u, 1u, u_input.a)), vec3<u32>(8262u, firstLeadingBit(4294967295u), 46723u)), 4294967295u, 106656u), select(!vec3<bool>(global0.x, arg_0, !arg_0), !select(vec3<bool>(true, true, true), !vec3<bool>(global0.x, false, arg_1.x), !vec3<bool>(true, arg_0, arg_0)), !arg_1.x));
    var var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-(~arg_3.yx), _wgslsmith_div_vec2_i32(u_input.e.xx, _wgslsmith_add_vec2_i32(-arg_3.yx, select(u_input.d.zz, arg_3.yy, true)))), u_input.d.zz);
    var var_2 = -(~vec2<i32>(var_1.x, var_0.b.a));
    var var_3 = _wgslsmith_f_op_f32(min(var_0.b.c.x, arg_2));
    var_3 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2092f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1919f, _wgslsmith_f_op_f32(-var_0.b.c.x))))));
    return Struct_3(var_0.c, Struct_2(var_0.b.e.yxy, u_input.a, _wgslsmith_mod_u32(firstTrailingBit(var_0.c.a.x), 36124u)), true, var_0.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_2 {
    global0 = select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(u_input.d.x >= countOneBits(i32(-1i) * -71128i), true));
    var var_0 = func_4(false, !vec2<bool>(any(!arg_1), select(true, !global0.x, !arg_1.x)), -2216f, vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x << (func_2(919f, Struct_3(Struct_2(vec3<u32>(arg_0.x, 30754u, 60986u), 13436u, arg_0.x), Struct_2(vec3<u32>(69225u, 4294967295u, arg_0.x), u_input.a, u_input.a), true, Struct_2(arg_0.xwz, 4618u, 33470u)), vec4<f32>(-384f, 2261f, -1167f, 1163f)) % 32u), -(u_input.c.x >> (27091u % 32u)), (u_input.c.x >> (1u % 32u)) ^ 0i), -u_input.d.x, -1i));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(0i, 1i, 76515i, u_input.b)), select(vec4<i32>(0i, u_input.c.x, 6611i, -1i) << (vec4<u32>(arg_0.x, 1u, 41889u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.d.x, 2147483647i, u_input.b, u_input.d.x), select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, global0.x, arg_1.x, true), true)), firstLeadingBit(select(vec4<i32>(u_input.b, 2147483647i, u_input.b, 20975i), vec4<i32>(u_input.d.x, u_input.b, -4572i, -2147483647i), vec4<bool>(arg_1.x, global0.x, true, var_0.c)))), vec4<i32>(u_input.c.x, 43264i, 2147483647i, -18836i)), arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(591f, -315f, -327f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-564f, -985f, 503f), vec3<f32>(162f, -660f, 1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1096f, 967f, 975f), vec3<f32>(1085f, -117f, 483f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1852f, -1000f, 1110f) * vec3<f32>(-243f, -329f, -784f))))), vec3<u32>(_wgslsmith_mod_u32(4294967295u, ~10054u), 1u, max(76374u, var_0.b.b) | _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, var_0.a.b), u_input.a)), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a, arg_0.x, 0u, 1u) >> (~arg_0 % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(~arg_0 << (abs(vec4<u32>(1u, 4294967295u, 0u, var_0.a.b)) % vec4<u32>(32u)), ~arg_0)));
    var_1 = Struct_1(abs(var_1.a), ~firstTrailingBit(var_1.d.x), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), var_1.c.x), vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.e.yzz, vec3<u32>(var_1.e.x, ~4294967295u, u_input.a)), arg_0.x, reverseBits(func_4(var_1.e.x == 0u, select(vec2<bool>(var_0.c, true), vec2<bool>(global0.x, var_0.c), arg_1.yz), _wgslsmith_f_op_f32(abs(175f)), u_input.d).b.a.x)), abs(var_1.e ^ vec4<u32>(_wgslsmith_mult_u32(49060u, var_1.b), arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.a.x, 4294967295u, 111646u), vec3<u32>(23614u, u_input.a, 4294967295u)), _wgslsmith_div_u32(77334u, var_0.a.c))));
    var var_2 = Struct_1(36408i, ~_wgslsmith_add_u32(~select(17405u, 4294967295u, false), select(1u, ~var_0.b.a.x, var_1.c.x < var_1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_div_f32(var_1.c.x, var_1.c.x))), -1000f, _wgslsmith_f_op_f32(ceil(1265f))), ~_wgslsmith_add_vec3_u32(var_0.b.a, vec3<u32>(var_1.e.x, abs(arg_0.x), 0u)), vec4<u32>(min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.d.x, 41426u, 82375u), ~vec4<u32>(59998u, var_0.a.c, 24616u, 4294967295u))), reverseBits(~4205u << (~4294967295u % 32u)), arg_0.x, 4294967295u));
    return var_0.d;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_5) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(arg_0.a.a, u_input.a, select(u_input.a, abs(arg_0.b.a.x), true) >> (4294967295u % 32u)), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -25527i), vec2<i32>(i32(-1i) * -2572i, -9971i)), _wgslsmith_sub_u32(firstTrailingBit(arg_0.d.a.x), _wgslsmith_mult_u32(18835u, arg_0.a.a.x) | _wgslsmith_add_u32(16950u, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(3036f, -542f, 2330f), vec3<f32>(-1000f, arg_2.b, arg_2.b))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b, -197f, arg_2.b), vec3<f32>(-134f, arg_2.b, arg_1.c.x))) - arg_1.c), abs(reverseBits(arg_0.d.a)), arg_1.e), arg_0.d, vec3<bool>(true, false, !(!arg_0.c)));
    let var_1 = arg_2;
    var var_2 = 1i;
    global0 = vec2<bool>(arg_0.c, true);
    var var_3 = Struct_4(arg_0.a, var_0.b, Struct_2(~arg_0.b.a, min(max(select(87620u, 31005u, var_0.d.x), ~arg_0.d.a.x), var_1.a.x), select(var_1.a.x, ~4294967295u, arg_0.c)), select(vec3<bool>(select(any(var_0.d.xx), !var_0.d.x, true), func_4(false, vec2<bool>(true, true), _wgslsmith_f_op_f32(-267f + arg_1.c.x), vec3<i32>(u_input.b, 10426i, arg_1.a)).c, !any(vec2<bool>(global0.x, true))), vec3<bool>(var_0.d.x, any(!var_0.d), all(vec4<bool>(var_0.d.x, false, false, global0.x))), !vec3<bool>(any(var_0.d.zx), true, func_4(global0.x, vec2<bool>(false, false), var_0.b.c.x, u_input.d).c)));
    return func_1(~vec4<u32>(func_2(arg_2.b, Struct_3(var_3.a, Struct_2(vec3<u32>(4294967295u, var_3.b.e.x, var_3.a.b), var_1.a.x, arg_1.e.x), global0.x, arg_0.a), vec4<f32>(-1722f, var_1.b, var_1.b, 361f)), _wgslsmith_mod_u32(89696u, 46634u), arg_0.a.a.x, arg_0.b.a.x) >> (firstLeadingBit(vec4<u32>(~0u, var_0.a.b, ~0u, ~0u)) % vec4<u32>(32u)), !vec3<bool>((u_input.b | 11930i) > (i32(-1i) * -1i), any(var_0.d.zx), true && global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(global0.x == true, global0.x), vec2<bool>(true, all(!vec4<bool>(global0.x, global0.x, true, global0.x))), vec2<bool>(true, !(!global0.x)));
    let var_0 = u_input.c.zz;
    let var_1 = Struct_4(func_5(Struct_3(Struct_2(~vec3<u32>(u_input.a, 27670u, 4294967295u), ~u_input.a, 1u), func_1(~vec4<u32>(41124u, 23497u, 5896u, 1u), vec3<bool>(true, global0.x, global0.x)), 2147483647i > _wgslsmith_add_i32(u_input.b, -2147483647i), Struct_2(~vec3<u32>(u_input.a, 82155u, u_input.a), ~87310u, 4294967295u)), Struct_1(abs(u_input.d.x), ~abs(0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-706f, 1178f, 769f)))), ~(~vec3<u32>(u_input.a, 4294967295u, 30528u)), vec4<u32>(0u, ~u_input.a, ~16576u, 1u)), Struct_5(vec2<u32>(u_input.a, u_input.a ^ u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1830f, -114f)))), Struct_1(var_0.x, ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2314f, -848f, _wgslsmith_f_op_f32(step(-797f, 113f))) + vec3<f32>(_wgslsmith_div_f32(722f, -1252f), -1549f, _wgslsmith_f_op_f32(1000f - -712f))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 12687u) >> (vec3<u32>(5017u, 0u, u_input.a) % vec3<u32>(32u)), vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(u_input.a, 0u, 16134u) | max(vec3<u32>(u_input.a, 28020u, 0u), vec3<u32>(4294967295u, 1u, 1u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 25913u, u_input.a, 38787u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 49152u)) ^ vec4<u32>(u_input.a << (u_input.a % 32u), _wgslsmith_add_u32(u_input.a, 1u), 36794u, min(u_input.a, u_input.a))), Struct_2(reverseBits(abs(vec3<u32>(u_input.a, u_input.a, u_input.a))), abs(func_3(vec3<u32>(72227u, u_input.a, u_input.a), firstTrailingBit(u_input.a))), _wgslsmith_add_u32(u_input.a, func_4(false, vec2<bool>(global0.x, global0.x), 1000f, u_input.d).d.b)), !vec3<bool>(true, select(false, true, any(vec4<bool>(true, global0.x, global0.x, global0.x))), global0.x));
    global0 = select(vec2<bool>(false, !var_1.d.x), select(vec2<bool>(false, !(u_input.d.x == 43176i)), select(vec2<bool>(true, true), var_1.d.zy, var_1.d.yz), true), select(select(select(!var_1.d.zz, vec2<bool>(global0.x, true), u_input.a == 0u), vec2<bool>(var_1.d.x, var_1.d.x), select(!vec2<bool>(var_1.d.x, global0.x), select(var_1.d.xy, vec2<bool>(false, global0.x), vec2<bool>(global0.x, true)), select(var_1.d.zz, vec2<bool>(global0.x, global0.x), vec2<bool>(true, var_1.d.x)))), vec2<bool>(global0.x, true), var_1.d.zx));
    var var_2 = func_4(false, vec2<bool>(var_1.d.x, !(!var_1.d.x) != global0.x), var_1.b.c.x, firstLeadingBit(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.e, vec3<i32>(var_0.x, u_input.e.x, 2147483647i)) ^ -u_input.d) | (vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.c.x, var_0.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1033f, var_1.b.c.x, -1190f, 1175f))) + vec4<f32>(195f, -555f, -130f, 2226f)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(sign(1083f)), var_1.b.c.x, _wgslsmith_div_f32(var_1.b.c.x, 1343f)))), 28480u, var_2.c);
}

