struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(-6132i, i32(-2147483648), i32(-2147483648), -1i));

var<private> global1: vec4<bool>;

var<private> global2: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1092f, _wgslsmith_f_op_f32(f32(-1f) * -395f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(952f)), _wgslsmith_f_op_f32(f32(-1f) * -1038f))) + _wgslsmith_f_op_f32(f32(-1f) * -1367f)));
    global1 = vec4<bool>(all(!vec2<bool>(true, any(vec4<bool>(false, true, false, false)))), global1.x, false, false);
    let var_1 = vec4<bool>(!(!global1.x), global1.x, true, global1.x);
    let var_2 = -1i;
    global0 = Struct_2(select(global0.a, reverseBits(select(global0.a, global0.a, var_1) << (reverseBits(vec4<u32>(103476u, u_input.a, 4294967295u, 0u)) % vec4<u32>(32u))), (var_2 & -global0.a.x) > -var_2));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(-1720f + _wgslsmith_f_op_f32(-1f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_i32(arg_1.ywz, vec3<i32>(1i, 1i, 23716i)))))));
    global2 = _wgslsmith_add_i32(~(global0.a.x >> (1u % 32u)), arg_1.x);
    let var_1 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1781f - -398f)), vec2<f32>(arg_2.b.x, 1f), select(select(global1.yw, vec2<bool>(false, global1.x), arg_2.e.x), !vec2<bool>(global1.x, arg_0.x), select(false, arg_2.a, arg_0.x)))))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.c.x, u_input.a), arg_2.c)), arg_2.d, arg_2.e);
    global2 = (-(~max(46060i, global0.a.x)) & -2147483647i) >> (arg_2.c.x % 32u);
    let var_2 = Struct_2(global0.a);
    return Struct_1(arg_2.a, var_0, vec2<u32>(var_1.c.x, arg_2.c.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-992f + 1064f), -395f, -748f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(arg_2.d, vec4<f32>(-769f, var_0.x, var_0.x, var_1.b.x))))))), select(!var_1.e, arg_2.e, select(select(var_1.e, !var_1.e, global1.xwz), select(select(var_1.e, arg_2.e, vec3<bool>(var_1.e.x, false, global1.x)), !vec3<bool>(global1.x, var_1.e.x, arg_0.x), select(vec3<bool>(var_1.a, var_1.a, false), var_1.e, var_1.e)), var_1.c.x != arg_2.c.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(-156f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-247f + arg_0.x) + -2049f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f - arg_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -346f))), arg_0.x)));
    global1 = !select(select(select(vec4<bool>(true, true, arg_1.e.x, false), !vec4<bool>(false, global1.x, false, false), arg_3.x | true), !(!vec4<bool>(arg_3.x, arg_3.x, false, true)), select(!vec4<bool>(false, false, global1.x, arg_3.x), !vec4<bool>(false, false, arg_3.x, arg_3.x), !arg_3.x)), select(!(!vec4<bool>(true, arg_1.a, true, global1.x)), select(select(vec4<bool>(arg_1.e.x, arg_3.x, true, true), vec4<bool>(false, false, arg_3.x, true), true), vec4<bool>(global1.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, global1.x, true, false)), !(!arg_1.a)), arg_3.x);
    global2 = -abs(1i);
    var var_1 = Struct_3(select(func_2(!vec3<bool>(global1.x, global1.x, arg_3.x), reverseBits(arg_2.a), func_2(select(arg_1.e, vec3<bool>(false, false, arg_1.a), global1.x), vec4<i32>(arg_2.a.x, -2147483647i, 1i, arg_2.a.x), Struct_1(false, vec2<f32>(-629f, var_0), vec2<u32>(60058u, arg_1.c.x), vec4<f32>(-1000f, -258f, 1587f, arg_1.d.x), arg_3))).e.zy, vec2<bool>(true, true), !(u_input.a < 3706u)), arg_1, global0.a.xy);
    return var_1.b;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b.x))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.d.x + 1185f), _wgslsmith_f_op_f32(arg_3.b.x - 435f))) + _wgslsmith_f_op_f32(-arg_3.b.x)));
    var var_1 = vec3<u32>(_wgslsmith_div_u32(~108905u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.c.x, arg_3.c.x), arg_3.c) << ((arg_3.c.x << (1u % 32u)) % 32u))), u_input.a, func_2(vec3<bool>(arg_3.e.x && any(vec3<bool>(var_0, arg_3.e.x, false)), arg_3.e.x, global1.x), vec4<i32>(countOneBits(global0.a.x) ^ ~arg_0, _wgslsmith_mod_i32(firstTrailingBit(arg_0), -16674i ^ global0.a.x), arg_2.a.x, global0.a.x), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.x, -1118f) + arg_3.b) * vec2<f32>(-337f, -1201f)), ~_wgslsmith_div_vec2_u32(arg_3.c, arg_3.c), _wgslsmith_f_op_vec4_f32(-arg_3.d), select(global1.zxx, !vec3<bool>(var_0, arg_1, global1.x), var_0))).c.x);
    let var_2 = -302f;
    global0 = arg_2;
    var var_3 = func_2(arg_3.e, _wgslsmith_div_vec4_i32(firstTrailingBit(arg_2.a), vec4<i32>(global0.a.x, -global0.a.x, ~_wgslsmith_mod_i32(global0.a.x, -1i), arg_0)), arg_3).e;
    return vec3<bool>(_wgslsmith_div_u32(u_input.a, arg_3.c.x) > (func_2(arg_3.e, vec4<i32>(-2147483647i, global0.a.x, 2682i, -32561i), func_4(vec3<f32>(-1159f, arg_3.d.x, 581f), Struct_1(arg_1, arg_3.d.zz, arg_3.c, arg_3.d, vec3<bool>(true, arg_1, var_3.x)), arg_2, vec3<bool>(arg_1, arg_3.a, false))).c.x & 2653u), true, any(global1.xzz));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = any(!(!select(select(vec4<bool>(true, arg_0.x, global1.x, false), vec4<bool>(global1.x, false, global1.x, arg_0.x), global1.x), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.x)));
    var var_1 = func_2(vec3<bool>(global1.x, !arg_0.x, !all(vec4<bool>(true, global1.x, arg_0.x, true)) || true), global0.a, Struct_1(all(func_2(vec3<bool>(false, false, false), vec4<i32>(global0.a.x, global0.a.x, 1i, -46192i), Struct_1(false, arg_1, vec2<u32>(u_input.a, u_input.a), vec4<f32>(-1124f, -440f, 1000f, arg_1.x), global1.zwy)).e) | all(vec2<bool>(false, true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1153f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, arg_1.x))))), ~func_2(func_2(global1.yzz, vec4<i32>(global0.a.x, 0i, 51353i, global0.a.x), Struct_1(false, vec2<f32>(arg_1.x, arg_1.x), vec2<u32>(20804u, u_input.a), vec4<f32>(1000f, arg_1.x, arg_1.x, 884f), global1.xyy)).e, vec4<i32>(2147483647i, global0.a.x, global0.a.x, 2518i) | vec4<i32>(-644i, 34204i, global0.a.x, 0i), func_2(arg_0, vec4<i32>(2147483647i, -70890i, global0.a.x, 28181i), Struct_1(true, arg_1, vec2<u32>(u_input.a, u_input.a), vec4<f32>(arg_1.x, 830f, arg_1.x, arg_1.x), global1.zwy))).c, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1275f * arg_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x)), arg_1.x), arg_0)).d.x;
    let var_2 = Struct_3(func_2(func_5(_wgslsmith_mod_i32(-global0.a.x, 2147483647i >> (u_input.a % 32u)), false, Struct_2(_wgslsmith_sub_vec4_i32(global0.a, global0.a)), Struct_1(true, vec2<f32>(arg_1.x, -2043f), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, arg_1.x, -1757f, arg_1.x)), arg_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, i32(-1i) * -1i), vec4<i32>(-1i, global0.a.x, _wgslsmith_mult_i32(-2147483647i, global0.a.x), global0.a.x)), Struct_1(all(select(global1.xx, arg_0.yy, global1.xw)), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -123f), vec3<f32>(-504f, 370f, -1588f)), Struct_1(global1.x, arg_1, vec2<u32>(15671u, 0u), vec4<f32>(-639f, arg_1.x, -989f, arg_1.x), arg_0), Struct_2(vec4<i32>(8663i, global0.a.x, global0.a.x, global0.a.x)), arg_0).d.yx, firstTrailingBit(max(vec2<u32>(u_input.a, 84785u), vec2<u32>(1u, u_input.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, arg_1.x, arg_1.x, arg_1.x) - vec4<f32>(arg_1.x, 515f, arg_1.x, -445f)), !global1.yzy)).e.zx, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, -1090f), _wgslsmith_f_op_f32(step(1110f, 771f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 727f, 733f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1167f, -1018f, arg_1.x), vec3<f32>(arg_1.x, 1000f, -471f))))), Struct_1(all(global1.yww), _wgslsmith_f_op_vec2_f32(vec2<f32>(517f, arg_1.x) - _wgslsmith_f_op_vec2_f32(-arg_1)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(u_input.a, 46924u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1100f, -1080f, 834f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -877f, -329f, -887f)))), !select(vec3<bool>(false, global1.x, global1.x), arg_0, global1.www)), Struct_2(-global0.a), select(vec3<bool>(true, func_4(vec3<f32>(549f, 278f, arg_1.x), Struct_1(false, vec2<f32>(-1494f, arg_1.x), vec2<u32>(38631u, 1u), vec4<f32>(arg_1.x, -1571f, -857f, arg_1.x), global1.zzw), Struct_2(vec4<i32>(2147483647i, 1i, global0.a.x, global0.a.x)), vec3<bool>(true, global1.x, true)).e.x, true), vec3<bool>(u_input.a <= u_input.a, arg_1.x < -863f, any(vec4<bool>(true, arg_0.x, false, global1.x))), false)), vec2<i32>(global0.a.x, -37534i));
    global0 = Struct_2(abs(global0.a));
    var var_3 = select(select(vec4<bool>(false, u_input.a >= firstLeadingBit(4294967295u), u_input.a <= 1u, all(!vec4<bool>(true, arg_0.x, true, arg_0.x))), !select(vec4<bool>(global1.x, arg_0.x, var_2.a.x, false), !vec4<bool>(var_2.a.x, var_2.a.x, var_2.b.e.x, false), !vec4<bool>(global1.x, global1.x, true, true)), !(!(!vec4<bool>(var_2.b.a, var_2.b.a, true, true)))), !select(vec4<bool>(!arg_0.x, -1786f < arg_1.x, true, true && var_2.b.a), !vec4<bool>(global1.x, true, arg_0.x, var_2.a.x), select(!vec4<bool>(arg_0.x, true, global1.x, var_2.b.e.x), vec4<bool>(arg_0.x, global1.x, global1.x, arg_0.x), var_2.b.c.x == var_2.b.c.x)), select(vec4<bool>(all(!vec4<bool>(global1.x, true, arg_0.x, var_2.b.a)), func_4(var_2.b.d.zyy, func_2(vec3<bool>(var_2.b.a, global1.x, false), global0.a, var_2.b), Struct_2(vec4<i32>(-2738i, 1i, var_2.c.x, global0.a.x)), arg_0).e.x, any(select(global1.yy, arg_0.zy, vec2<bool>(false, global1.x))), true), vec4<bool>(global1.x, true, !all(vec4<bool>(var_2.b.a, true, var_2.b.e.x, false)), false), vec4<bool>((false & var_2.a.x) & global1.x, any(vec2<bool>(true, false)) & true, _wgslsmith_f_op_f32(max(var_2.b.b.x, arg_1.x)) <= _wgslsmith_f_op_f32(ceil(var_2.b.d.x)), true)));
    return var_2;
}

fn func_7(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    global1 = vec4<bool>(global1.x, arg_2.x, any(vec2<bool>(func_5(arg_0.c.x ^ -1i, global1.x, Struct_2(global0.a), Struct_1(false, arg_0.b.d.zz, vec2<u32>(u_input.a, arg_0.b.c.x), vec4<f32>(arg_0.b.d.x, arg_0.b.b.x, arg_0.b.d.x, arg_0.b.d.x), vec3<bool>(false, global1.x, false))).x, 4294967295u <= reverseBits(u_input.a))), true);
    let var_0 = Struct_3(select(arg_0.b.e.xx, vec2<bool>((u_input.a > arg_0.b.c.x) == !arg_0.b.a, arg_0.a.x), false), Struct_1(false, vec2<f32>(_wgslsmith_div_f32(arg_0.b.b.x, -1513f), _wgslsmith_f_op_f32(-func_2(arg_2.zzy, vec4<i32>(30065i, global0.a.x, 0i, arg_0.c.x), Struct_1(global1.x, vec2<f32>(664f, arg_0.b.d.x), vec2<u32>(u_input.a, arg_0.b.c.x), arg_0.b.d, vec3<bool>(false, arg_0.b.a, arg_2.x))).d.x)), arg_0.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.d.x, 533f, arg_0.b.d.x, arg_0.b.b.x) * vec4<f32>(arg_0.b.d.x, -940f, 358f, -735f)))), select(select(func_6(vec3<bool>(true, global1.x, true), vec2<f32>(arg_0.b.b.x, arg_0.b.d.x)).b.e, select(arg_2.xzy, vec3<bool>(true, false, true), arg_2.yxx), !global1.x), select(global1.zwz, global1.zyx, arg_0.b.a | arg_2.x), vec3<bool>(false, any(arg_2.xy), arg_2.x))), vec2<i32>(_wgslsmith_dot_vec3_i32(global0.a.zxx, global0.a.yyx), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(12055i, global0.a.x), arg_0.c, vec2<i32>(global0.a.x, 2147483647i)) ^ vec2<i32>(arg_1, global0.a.x), vec2<i32>(2147483647i, _wgslsmith_add_i32(-1i, 2147483647i)))));
    var var_1 = var_0;
    var var_2 = any(!(!vec2<bool>(true, !arg_2.x)));
    let var_3 = var_1.a.x;
    return Struct_2(firstTrailingBit(vec4<i32>(arg_0.c.x, _wgslsmith_clamp_i32(arg_1, arg_1, 2801i) | (global0.a.x ^ arg_0.c.x), ~firstLeadingBit(40854i), _wgslsmith_dot_vec4_i32(vec4<i32>(-7189i, arg_1, 27203i, var_1.c.x) >> (vec4<u32>(0u, 0u, var_0.b.c.x, var_1.b.c.x) % vec4<u32>(32u)), vec4<i32>(arg_1, -46308i, 36177i, -17799i) ^ global0.a))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_mult_vec4_i32(global0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -52454i, ~global0.a.x, global0.a.x, 72842i), vec4<i32>(-22706i, global0.a.x, -55622i, global0.a.x) ^ vec4<i32>(2147483647i, global0.a.x, 1i, 19484i))));
    var_0 = func_7(func_6(func_5(_wgslsmith_mod_i32(~(-2147483647i), abs(-2147483647i)), true, Struct_2(firstTrailingBit(vec4<i32>(7194i, var_0.a.x, global0.a.x, 13460i))), func_4(vec3<f32>(-377f, -887f, 560f), func_2(global1.www, vec4<i32>(global0.a.x, arg_1.x, -1i, 1i), Struct_1(arg_2, vec2<f32>(arg_0.x, -732f), vec2<u32>(u_input.a, 70200u), vec4<f32>(-904f, arg_0.x, -428f, arg_0.x), vec3<bool>(true, arg_2, true))), Struct_2(global0.a), !global1.yyz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)) - func_4(vec3<f32>(arg_0.x, 1130f, 1000f), func_2(vec3<bool>(false, global1.x, true), vec4<i32>(arg_1.x, 1i, arg_1.x, global0.a.x), Struct_1(false, vec2<f32>(arg_0.x, 1000f), vec2<u32>(6239u, 1u), vec4<f32>(arg_0.x, arg_0.x, 397f, -389f), global1.zyz)), Struct_2(vec4<i32>(6679i, global0.a.x, var_0.a.x, arg_1.x)), global1.wzy).d.xz)), firstTrailingBit(countOneBits(1i)), select(select(select(select(vec4<bool>(arg_2, arg_2, global1.x, global1.x), vec4<bool>(global1.x, arg_2, false, false), true), select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(global1.x, global1.x, false, false), false), false), !(!vec4<bool>(global1.x, false, global1.x, global1.x)), _wgslsmith_f_op_f32(func_3(vec3<i32>(35815i, -2147483647i, global0.a.x))) < arg_0.x), select(select(select(vec4<bool>(arg_2, false, global1.x, global1.x), vec4<bool>(true, false, true, arg_2), true), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)), !vec4<bool>(true, true, true, arg_2)), !vec4<bool>(global1.x, true, true, arg_2), !(!vec4<bool>(true, global1.x, true, arg_2))), select(vec4<bool>(arg_0.x >= arg_0.x, true, global1.x | global1.x, true), select(vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(global1.x, arg_2, arg_2, false), false), vec4<bool>(arg_2, func_2(global1.zwx, var_0.a, Struct_1(global1.x, arg_0, vec2<u32>(4294967295u, 1u), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1501f), global1.xwy)).e.x, true | arg_2, true))));
    let var_1 = func_6(!(!vec3<bool>(arg_2, any(vec3<bool>(false, false, arg_2)), all(vec4<bool>(true, false, arg_2, false)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1310f, arg_0.x) * -870f))))).b;
    var var_2 = var_1.d;
    let var_3 = 0i;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, 828f, var_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(global0.a ^ -reverseBits(global0.a)));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1128f, 262f), vec2<f32>(1133f, -541f), global1.x)))))), vec2<u32>(abs(~firstTrailingBit(1u)), reverseBits(1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1076f * _wgslsmith_f_op_f32(-1061f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-921f))), -884f, _wgslsmith_f_op_f32(abs(-1000f))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(718f + -1160f), _wgslsmith_f_op_f32(1000f - 302f))), _wgslsmith_f_op_f32(floor(-478f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * -1000f)), _wgslsmith_f_op_f32(-1957f - _wgslsmith_f_op_f32(-1158f * -267f)))), vec3<bool>(false || (false || global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1515f)) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(301f * 1039f), 195f, global1.x)), global1.x));
    var var_2 = var_1.b.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(step(-214f, _wgslsmith_f_op_f32(-var_1.d.x)))));
    var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(floor(-425f)))) - var_1.d.xw), ~vec2<u32>(var_1.c.x, ~(4539u >> (var_1.c.x % 32u))), var_1.d, vec3<bool>(true, false, !global1.x));
    let x = u_input.a;
    s_output = func_1(vec2<f32>(var_3, 767f), var_0.a.xz << (~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 68209u, 24799u, 85819u), vec4<u32>(16955u, u_input.a, var_1.c.x, 0u)), u_input.a) % vec2<u32>(32u)), true);
}

