struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = vec3<bool>(!(true | any(vec2<bool>(true, false))), arg_3.x, select(any(select(!vec4<bool>(arg_3.x, false, true, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)))), false, arg_3.x));
    var_0 = !select(vec3<bool>(var_0.x, var_0.x, select(arg_1.b.x >= 44397u, any(arg_3), true)), arg_3, vec3<bool>(false, var_0.x, false));
    var var_1 = _wgslsmith_mod_u32(arg_2.x, arg_1.b.x);
    var_1 = ~firstLeadingBit(82750u);
    let var_2 = arg_2.x;
    return vec2<bool>((_wgslsmith_dot_vec2_i32(select(vec2<i32>(15496i, 1i), vec2<i32>(-53941i, 26657i), arg_3.yy), vec2<i32>(-2147483647i, arg_0)) << (4294967295u % 32u)) < _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, arg_0, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-51442i, u_input.a, arg_0, 5403i), vec4<i32>(-5269i, -58713i, u_input.a, 2147483647i)), !vec4<bool>(arg_3.x, false, true, true)), -vec4<i32>(-1i, 1i, 1i, 2147483647i)), !(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, arg_0), vec3<i32>(-49125i, 7003i, arg_0)) == select(select(u_input.a, u_input.a, arg_3.x), arg_0, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c.x, 239f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2180f)))));
    var var_1 = ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(23703u, 68660u, 4294967295u)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(30285u, arg_1.a.e.x, arg_1.a.e.x), abs(vec3<u32>(arg_1.a.e.x, 8728u, 1u))));
    return _wgslsmith_clamp_vec2_u32(~var_1.xx, vec2<u32>(~((37443u << (1u % 32u)) & ~arg_1.a.e.x), 6991u), vec2<u32>(3118u, var_1.x));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, 1u, 8013u, abs(0u)), (~vec4<u32>(59787u, 0u, 5921u, 3859u) >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<u32>(0u, 46933u, 4294967295u, 1u), vec4<u32>(1u, 31444u, 0u, 30856u)) % vec4<u32>(32u))) >> (vec4<u32>(min(1u, ~4294967295u), 1u, 1u, 29599u) % vec4<u32>(32u)));
    let var_1 = 1u;
    let var_2 = func_4(vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), true, false, all(vec2<bool>(true, all(vec4<bool>(true, true, true, true))))), Struct_3(Struct_2(Struct_1(true, func_3(u_input.a, Struct_5(298f, var_0), var_0, vec3<bool>(true, false, true)), true, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(835f, -1087f, 170f, -309f))), select(true, u_input.a == u_input.a, true), var_0.ww), Struct_1(false, select(func_3(u_input.a, Struct_5(-787f, vec4<u32>(var_0.x, var_1, var_0.x, var_0.x)), var_0, vec3<bool>(false, true, false)), func_3(u_input.a, Struct_5(1624f, var_0), var_0, vec3<bool>(false, false, true)), true), (57091i >> (var_1 % 32u)) != ~u_input.a, vec4<i32>(u_input.a ^ -2147483647i, i32(-1i) * -2147483647i, u_input.a, -38208i))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, true, select(false, true, true)))));
    var var_3 = _wgslsmith_f_op_f32(select(-875f, 1f, select(true, true, true)));
    var_3 = 908f;
    return Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + -816f)))), var_0);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_4(arg_1.a, arg_1.d.a, arg_1.c, Struct_3(Struct_2(Struct_1(func_3(u_input.a, arg_2, vec4<u32>(0u, arg_2.b.x, 17585u, 1u), vec3<bool>(false, arg_1.c.a, true)).x, vec2<bool>(arg_1.d.b.c, arg_1.c.b.x), all(vec2<bool>(arg_1.d.b.c, true)), arg_1.d.b.d), vec2<bool>(arg_1.b.a.a, all(vec4<bool>(arg_1.d.b.c, false, arg_1.b.a.c, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.a.c.x, -194f, arg_1.a.x, arg_2.a), vec4<f32>(arg_1.b.c.x, arg_2.a, arg_2.a, arg_2.a)) - arg_1.b.c), ~u_input.a > select(arg_0.x, arg_1.c.d.x, arg_1.d.b.c), ~(~vec2<u32>(arg_2.b.x, 83131u))), arg_1.b.a));
    let var_1 = var_0.c;
    let var_2 = vec2<f32>(arg_2.a, 1f);
    let var_3 = 39370u;
    let var_4 = var_0.b.a;
    return _wgslsmith_f_op_f32(select(-466f, arg_1.b.c.x, var_0.b.a.a && any(select(select(vec3<bool>(true, false, var_0.b.d), vec3<bool>(true, arg_1.b.d, false), arg_1.c.c), select(vec3<bool>(true, var_4.a, false), vec3<bool>(false, false, arg_1.d.b.a), true), any(vec4<bool>(false, false, var_4.b.x, true))))));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2150f) * _wgslsmith_f_op_f32(func_5(firstTrailingBit(vec3<i32>(1i, u_input.a, arg_0)), Struct_4(vec4<f32>(903f, 1246f, 938f, 1486f), Struct_2(Struct_1(false, vec2<bool>(false, false), false, vec4<i32>(arg_0, u_input.a, 0i, arg_0)), vec2<bool>(true, false), vec4<f32>(1235f, 293f, -291f, -584f), false, vec2<u32>(4294967295u, arg_1.x)), Struct_1(true, vec2<bool>(false, false), false, vec4<i32>(u_input.a, arg_0, u_input.a, u_input.a)), Struct_3(Struct_2(Struct_1(true, vec2<bool>(true, true), true, vec4<i32>(27324i, 1i, -10874i, arg_0)), vec2<bool>(true, true), vec4<f32>(1509f, -448f, 805f, 685f), false, vec2<u32>(11731u, 1u)), Struct_1(true, vec2<bool>(true, false), true, vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)))), func_2(), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 29277u, arg_2.x, 55775u), vec4<u32>(arg_2.x, 0u, arg_2.x, arg_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - _wgslsmith_f_op_f32(-1138f - 1787f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(211f, -199f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) * 1282f)), 432f);
    let var_1 = _wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(122038u << (0u % 32u))) & firstTrailingBit(countOneBits(28083u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, 2567f, var_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(754f, -1763f, 1122f, var_0.x), vec4<f32>(-840f, var_0.x, -539f, -200f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 617f, -694f, var_0.x) * vec4<f32>(680f, -308f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2267f, var_0.x, 1243f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 561f, -1608f, 1701f))), false)))), Struct_2(Struct_1(true, select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(false, true)), true, -max(vec4<i32>(1i, 0i, 22190i, 27641i), vec4<i32>(arg_0, -7233i, 1i, 2147483647i))), !func_3(arg_0, Struct_5(var_0.x, vec4<u32>(arg_2.x, 50389u, var_1, arg_2.x)), arg_1, select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, 389f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -420f, -821f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1308f, 1000f) + vec4<f32>(var_0.x, var_0.x, var_0.x, 3233f)))), !(func_3(-6006i, Struct_5(var_0.x, vec4<u32>(5289u, var_1, var_1, 25627u)), vec4<u32>(arg_2.x, 4294967295u, 84045u, var_1), vec3<bool>(false, true, false)).x || true), vec2<u32>(arg_2.x, (1u & var_1) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), arg_1.wxy) % 32u))), Struct_1(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), !(!func_3(arg_0, Struct_5(var_0.x, vec4<u32>(21229u, arg_2.x, 2988u, 1u)), vec4<u32>(arg_2.x, 4294967295u, arg_2.x, arg_1.x), vec3<bool>(true, false, true))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), vec4<i32>(arg_0, _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a) >> (var_1 % 32u), (i32(-1i) * -20772i) & u_input.a, -arg_0 >> (4294967295u % 32u))), Struct_3(Struct_2(Struct_1(any(vec2<bool>(false, true)), func_3(53802i, Struct_5(var_0.x, vec4<u32>(arg_2.x, 0u, arg_1.x, var_1)), arg_1, vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)), -vec4<i32>(2147483647i, u_input.a, u_input.a, arg_0)), vec2<bool>(true, true), vec4<f32>(-414f, -1006f, _wgslsmith_div_f32(1612f, 515f), var_0.x), any(vec3<bool>(true, true, true)), vec2<u32>(max(arg_2.x, arg_2.x), _wgslsmith_clamp_u32(arg_2.x, var_1, 0u))), Struct_1(!any(vec3<bool>(false, true, true)), vec2<bool>(true, any(vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(0i, -35568i, arg_0, u_input.a)), ~vec4<i32>(0i, u_input.a, 13468i, u_input.a)))));
    let var_3 = var_2.d.a;
    var var_4 = var_3.a;
    return func_2();
}

fn func_6(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> u32 {
    var var_0 = max(arg_3.b.d, arg_1);
    let var_1 = arg_3.a.e;
    var_0 = arg_1;
    var_0 = abs((vec4<i32>(~0i, -1i, arg_1.x, ~u_input.a) ^ _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, var_0.x, 1i, arg_1.x), arg_1 << (arg_0.b % vec4<u32>(32u)))) << (arg_0.b % vec4<u32>(32u)));
    var var_2 = arg_3.a.b;
    return _wgslsmith_div_u32(~(~((arg_3.a.e.x | 0u) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.e.x, 0u), vec2<u32>(arg_0.b.x, 4294967295u)))), ~func_4(!vec4<bool>(arg_3.a.b.x, true, false, true), Struct_3(Struct_2(arg_3.a.a, vec2<bool>(true, var_2.x), arg_3.a.c, arg_3.a.d, vec2<u32>(96686u, arg_0.b.x)), Struct_1(true, vec2<bool>(var_2.x, arg_3.a.d), var_2.x, arg_1)), true).x ^ 19212u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (vec3<u32>(func_6(func_1(u_input.a, ~vec4<u32>(15883u, 58295u, 35644u, 4294967295u), vec3<u32>(4294967295u, 43224u, 1u)), select(min(vec4<i32>(32507i, -2147483647i, -1i, u_input.a), vec4<i32>(-53035i, -2147483647i, 1i, 7780i)), vec4<i32>(1i, -25745i, u_input.a, u_input.a), false), -573f, Struct_3(Struct_2(Struct_1(true, vec2<bool>(false, true), false, vec4<i32>(u_input.a, 26809i, u_input.a, u_input.a)), vec2<bool>(false, true), vec4<f32>(174f, 1005f, 1241f, 650f), false, vec2<u32>(46134u, 78595u)), Struct_1(false, vec2<bool>(false, true), false, vec4<i32>(-1i, 11771i, 2147483647i, -1161i)))), ~1u, ~26420u) % vec3<u32>(32u));
    var var_1 = 685f;
    let var_2 = Struct_1(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(u_input.a <= u_input.a, all(vec4<bool>(true, true, false, false)), func_3(-2147483647i, Struct_5(-433f, vec4<u32>(34493u, 0u, 0u, 6755u)), vec4<u32>(61489u, 4294967295u, 1u, 29776u), vec3<bool>(false, true, true)).x))), vec2<bool>(false, any(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), false, max(reverseBits(vec4<i32>(-var_0.x, abs(u_input.a), _wgslsmith_sub_i32(1i, u_input.a), u_input.a)), -vec4<i32>(firstLeadingBit(-15062i), -11041i, 1i, i32(-1i) * -48647i)));
    var_1 = -257f;
    var_0 = min(countOneBits(abs(vec3<i32>(var_0.x, var_0.x, var_0.x) ^ var_2.d.wxy) >> (func_2().b.zzw % vec3<u32>(32u))), countOneBits(~countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_2.d.x, var_2.d.x), var_2.d.yzw))));
    let var_3 = (!var_2.c | true) & false;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f - -627f));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

