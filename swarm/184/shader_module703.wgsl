struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(0i, 1531i, 0i, 19063i), vec4<i32>(-1i, 50861i, 1i, 5255i), vec4<i32>(22807i, 12719i, i32(-2147483648), -51869i), vec4<i32>(-1i, 2147483647i, -1i, -3234i), vec4<i32>(1i, -1i, 2147483647i, -1i), vec4<i32>(15966i, -11864i, 23037i, -49213i), vec4<i32>(8567i, -51307i, 28570i, 0i), vec4<i32>(-27745i, i32(-2147483648), -75775i, -1i), vec4<i32>(-1i, -56428i, i32(-2147483648), 1i), vec4<i32>(-2660i, 31325i, i32(-2147483648), -35427i), vec4<i32>(-1i, -5089i, -11849i, -1i), vec4<i32>(8602i, 19946i, -38305i, -52806i), vec4<i32>(i32(-2147483648), 27091i, 2147483647i, 0i), vec4<i32>(50378i, 0i, -38110i, -10167i), vec4<i32>(-8725i, -16664i, -22784i, 2147483647i), vec4<i32>(1630i, -1i, 25801i, -1i), vec4<i32>(1i, 0i, 1i, 1i), vec4<i32>(24055i, 0i, 32265i, 2147483647i), vec4<i32>(1i, -22263i, -19387i, i32(-2147483648)), vec4<i32>(5036i, i32(-2147483648), 0i, 10102i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 19521i), vec4<i32>(-4888i, 2147483647i, 30648i, i32(-2147483648)), vec4<i32>(-109222i, 1i, 26497i, -3278i));

var<private> global2: vec3<u32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = arg_0.zz;
    global0 = array<vec2<u32>, 21>();
    global2 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(40800u, 19195u, 1u), vec3<u32>(30131u, global2.x, 4294967295u))), ~(~(~vec3<u32>(65552u, global2.x, 0u)))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(4294967295u, 1u, global2.x)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, global2.x, 25448u), _wgslsmith_mod_u32(47278u, global2.x), _wgslsmith_dot_vec2_u32(global2.zy, vec2<u32>(4294967295u, 4294967295u)))), ~firstTrailingBit(vec3<u32>(0u, 1u, global2.x))));
    let var_1 = Struct_3(Struct_2(-827f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, -1759f, 179f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(606f, -902f, 1545f) - vec3<f32>(-307f, -1504f, 1697f))), -countOneBits(vec3<i32>(-2147483647i, 15971i, u_input.a)), vec4<f32>(413f, _wgslsmith_f_op_f32(-1000f + 949f), 1662f, _wgslsmith_f_op_f32(f32(-1f) * -619f)), global1[_wgslsmith_index_u32(reverseBits(4294967295u), 23u)])), vec2<f32>(732f, -1000f), 261f);
    var var_2 = -_wgslsmith_add_vec2_i32(firstTrailingBit(select(var_1.a.b.d.zx, vec2<i32>(var_1.a.b.d.x, u_input.a), arg_1)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.b.b.x, 2147483647i), _wgslsmith_mod_vec2_i32(var_1.a.b.b.zz, var_1.a.b.d.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_1.a.b.b.x), var_1.a.b.b.xx)), var_1.a.b.d.zw);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1582f)))), -126f, _wgslsmith_f_op_f32(select(-665f, _wgslsmith_f_op_f32(max(1525f, -248f)), (var_1.a.b.b.x == 56044i) || (arg_0.x && arg_0.x))), var_1.b.x) - var_1.a.b.c);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    global2 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, arg_0, 1u), _wgslsmith_mult_vec3_u32(~arg_2.zyw, ~arg_2.yww));
    let var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(-1643f, 543f)), _wgslsmith_f_op_f32(arg_1 * arg_1))), vec3<i32>(u_input.a | ~u_input.a, 0i, ~0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -422f, 1629f, arg_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, 1024f, -1450f, arg_1))) + _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, false, true, true), vec2<bool>(false, true))))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global1[_wgslsmith_index_u32(arg_2.x, 23u)], vec4<i32>(u_input.a, u_input.a, 4618i, u_input.a)), global1[_wgslsmith_index_u32(arg_0, 23u)] >> (vec4<u32>(4294967295u, 1u, 44241u, 4294967295u) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(~1u, 23u)])));
    global1 = array<vec4<i32>, 23>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-250f, _wgslsmith_f_op_f32(trunc(-247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, 1848f))), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1403f, arg_1) + vec3<f32>(var_0.a, var_0.b.a.x, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, arg_1, var_0.b.a.x)), vec3<bool>(true, false, false))))), ~abs(select(-vec3<i32>(43747i, u_input.a, u_input.a), -var_0.b.d.zwy, vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, 1131f)), var_0.a, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1)) * _wgslsmith_f_op_vec4_f32(step(var_0.b.c, _wgslsmith_f_op_vec4_f32(var_0.b.c - var_0.b.c)))))), firstLeadingBit(min(global1[_wgslsmith_index_u32(arg_0, 23u)], vec4<i32>(var_0.b.d.x, u_input.a, var_0.b.b.x, u_input.a))) & ~var_0.b.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(round(arg_0.c));
    let var_2 = (true & all(vec4<bool>(all(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, false)), select(true, false, false), all(vec3<bool>(true, true, true))))) & true;
    let var_3 = arg_0.c.xzw;
    var var_4 = func_2(~reverseBits(~2244u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x))))) - _wgslsmith_f_op_f32(trunc(arg_0.a.x))), firstTrailingBit(vec4<u32>(select(10181u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.x, global2.x), vec3<u32>(20737u, 0u, global2.x)), any(vec4<bool>(false, var_2, var_2, false))), 0u, _wgslsmith_add_u32(3496u, global2.x), select(abs(89193u), 1u, u_input.a == u_input.a))));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.c.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0.b.x))))), _wgslsmith_f_op_f32(493f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.c.x))), arg_1.a.b.a, true));
    let var_2 = arg_3.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-556f, var_0.a.b.c.x, arg_0.b.x), arg_0.a.b.a, arg_3.x)))), vec3<i32>(arg_0.a.b.b.x, 2147483647i, u_input.a), _wgslsmith_f_op_vec4_f32(round(arg_1.a.b.c)), vec4<i32>(2147483647i, arg_0.a.b.d.x, arg_0.a.b.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.b.b.x, ~arg_0.a.b.d.x), select(vec2<i32>(0i, 0i), vec2<i32>(13116i, arg_1.a.b.b.x), var_2) >> (_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(0u, 21u)], arg_2.zx) % vec2<u32>(32u)))));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 278f, -1295f, -1064f) + vec4<f32>(2693f, 298f, -516f, 1196f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(638f, 453f, 405f, 566f)))), vec4<f32>(346f, -1000f, _wgslsmith_div_f32(-615f, -1931f), _wgslsmith_f_op_f32(540f * 108f)))));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    global1 = array<vec4<i32>, 23>();
    var var_1 = Struct_3(Struct_2(-1000f, func_5(func_4(func_2(52547u, -1071f, vec4<u32>(0u, global2.x, global2.x, 4294967295u)), Struct_3(Struct_2(var_0.x, Struct_1(var_0.ywy, vec3<i32>(35594i, u_input.a, 28142i), vec4<f32>(var_0.x, var_0.x, var_0.x, -1192f), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), var_0.zw, var_0.x)), func_4(func_4(Struct_1(vec3<f32>(1127f, -646f, 1291f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(var_0.x, 1319f, 409f, var_0.x), global1[_wgslsmith_index_u32(8875u, 23u)]), Struct_3(Struct_2(var_0.x, Struct_1(var_0.ywy, vec3<i32>(58411i, 2147483647i, 2147483647i), vec4<f32>(var_0.x, 1168f, var_0.x, var_0.x), global1[_wgslsmith_index_u32(global2.x, 23u)])), vec2<f32>(var_0.x, var_0.x), var_0.x)).a.b, Struct_3(Struct_2(var_0.x, Struct_1(vec3<f32>(1571f, -1141f, -591f), vec3<i32>(u_input.a, 0i, u_input.a), vec4<f32>(var_0.x, var_0.x, 1358f, 280f), vec4<i32>(1i, -17684i, 1i, u_input.a))), vec2<f32>(var_0.x, -138f), 141f)), abs(~vec3<u32>(global2.x, global2.x, 15623u)), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(-297f - var_0.x)))), -283f);
    return Struct_4(_wgslsmith_dot_vec3_i32(~var_1.a.b.d.wwx, var_1.a.b.d.xzx), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ((~u_input.a ^ -1i) != _wgslsmith_dot_vec3_i32(~vec3<i32>(-5915i, -26179i, u_input.a), func_2(25567u, var_0.x, vec4<u32>(global2.x, 2735u, 72542u, 29150u)).d.yww)) | any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), global2.x > 30933u)), func_4(func_4(var_1.a.b, func_4(var_1.a.b, func_4(var_1.a.b, Struct_3(Struct_2(var_0.x, Struct_1(var_0.wwz, var_1.a.b.d.wxx, vec4<f32>(var_0.x, var_1.a.a, 1093f, -1452f), var_1.a.b.d)), vec2<f32>(1437f, var_0.x), var_1.c)))).a.b, Struct_3(func_4(Struct_1(var_0.wzz, var_1.a.b.d.ywy, vec4<f32>(var_0.x, 446f, var_0.x, 716f), var_1.a.b.d), Struct_3(var_1.a, vec2<f32>(var_1.c, var_1.c), var_1.c)).a, var_1.a.b.a.yz, -1813f)).a, reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.x, 14572u, global2.x, global2.x), vec4<u32>(global2.x, 1u, 1u, 0u), true) >> (~vec4<u32>(0u, 0u, 21381u, 40207u) % vec4<u32>(32u)), (vec4<u32>(global2.x, global2.x, global2.x, 4294967295u) | vec4<u32>(global2.x, 21667u, 29600u, global2.x)) << (vec4<u32>(4294967295u, global2.x, 5556u, global2.x) % vec4<u32>(32u)))));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_4) -> vec3<u32> {
    var var_0 = func_4(Struct_1(vec3<f32>(-1402f, 1000f, -1074f), vec3<i32>(arg_0, arg_0 & _wgslsmith_div_i32(arg_3.d.b.d.x, 0i), -1i), vec4<f32>(_wgslsmith_f_op_f32(arg_3.d.a * func_4(Struct_1(arg_3.d.b.a, arg_3.d.b.b, vec4<f32>(arg_3.d.a, -1000f, 272f, 1000f), global1[_wgslsmith_index_u32(arg_3.e, 23u)]), Struct_3(Struct_2(308f, Struct_1(vec3<f32>(arg_3.d.b.a.x, arg_3.d.b.a.x, arg_3.d.a), arg_2, arg_3.d.b.c, vec4<i32>(arg_3.d.b.b.x, -2147483647i, arg_0, 1i))), vec2<f32>(-1294f, -255f), 810f)).b.x), arg_3.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.b.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3.d.a, arg_3.d.b.a.x)))), global1[_wgslsmith_index_u32(global2.x, 23u)]), Struct_3(func_4(func_4(arg_3.d.b, Struct_3(arg_3.d, vec2<f32>(arg_3.d.b.c.x, 144f), 1000f)).a.b, Struct_3(func_1().d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, -291f)), _wgslsmith_f_op_f32(round(-448f)))).a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.d.a, arg_3.d.a), arg_3.d.b.a.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d.b.c.zw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.d.a)))))).a.b;
    var var_1 = func_1();
    global1 = array<vec4<i32>, 23>();
    let var_2 = var_0.c;
    var var_3 = func_4(var_1.d.b, Struct_3(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, var_1.d.a, 200f) * var_2.wxy), var_1.d.b.b, _wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(arg_3.b.x, var_1.b.x, var_1.b.x, arg_3.b.x), vec2<bool>(true, false))), arg_3.d.b.d), Struct_3(Struct_2(651f, Struct_1(vec3<f32>(-559f, -1853f, var_2.x), vec3<i32>(arg_1, 2147483647i, arg_2.x), vec4<f32>(var_0.c.x, 325f, var_0.a.x, arg_3.d.a), global1[_wgslsmith_index_u32(global2.x, 23u)])), func_1().d.b.a.zy, func_5(Struct_3(arg_3.d, vec2<f32>(-1863f, var_1.d.b.a.x), var_2.x), Struct_3(Struct_2(var_1.d.b.a.x, var_1.d.b), vec2<f32>(825f, 1222f), arg_3.d.a), vec3<u32>(4294967295u, var_1.e, 10520u), var_1.b).a.x)).a, func_1().d.b.c.wz, 1442f)).a;
    return vec3<u32>(1u, min(~58552u, var_1.e), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(func_6(u_input.a, u_input.a, vec3<i32>(_wgslsmith_mod_i32(u_input.a, ~1i), -35538i, 1i), func_1()));
    let var_0 = true;
    global1 = array<vec4<i32>, 23>();
    let var_1 = Struct_4(select(_wgslsmith_add_i32(u_input.a, (u_input.a << (global2.x % 32u)) ^ -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 16165i), vec2<i32>(18423i, -1i), vec2<i32>(16821i, u_input.a))) | firstLeadingBit(_wgslsmith_div_i32(u_input.a, 0i)), func_1().c), vec2<bool>(var_0, var_0 && true), false, Struct_2(_wgslsmith_f_op_f32(max(func_1().d.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 2301f)))), Struct_1(vec3<f32>(-548f, _wgslsmith_div_f32(-609f, 2095f), func_2(82487u, -1332f, vec4<u32>(62833u, global2.x, global2.x, 0u)).c.x), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 22100i, u_input.a), _wgslsmith_clamp_i32(2147483647i, u_input.a, u_input.a), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(987f * 1290f), _wgslsmith_f_op_f32(f32(-1f) * -1823f), _wgslsmith_f_op_f32(f32(-1f) * -1064f), func_5(Struct_3(Struct_2(-285f, Struct_1(vec3<f32>(293f, -1229f, -1439f), vec3<i32>(0i, u_input.a, -32676i), vec4<f32>(184f, -347f, 1000f, -100f), global1[_wgslsmith_index_u32(48349u, 23u)])), vec2<f32>(-219f, 152f), -695f), Struct_3(Struct_2(-1000f, Struct_1(vec3<f32>(352f, -2656f, -1395f), vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(534f, -777f, 107f, 663f), global1[_wgslsmith_index_u32(1u, 23u)])), vec2<f32>(-413f, 552f), -385f), vec3<u32>(37473u, 4294967295u, 4294967295u), vec2<bool>(var_0, var_0)).a.x), -vec4<i32>(-106091i, -32634i, u_input.a, 2147483647i))), 4294967295u);
    var var_2 = reverseBits(select(vec4<u32>(4294967295u, global2.x, firstTrailingBit(95854u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3560u, var_1.e), global0[_wgslsmith_index_u32(0u, 21u)]), global2.x | global2.x)), firstTrailingBit(~(~vec4<u32>(global2.x, global2.x, 0u, var_1.e))), true));
    let var_3 = true;
    global0 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.b.a.xy)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.d.b.c.yx))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d.b.a.xx) - _wgslsmith_f_op_vec2_f32(-var_1.d.b.c.yw)))));
}

