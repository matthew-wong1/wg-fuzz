struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    global0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, reverseBits(global0.x)), _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(global0.x, 4294967295u)), min(vec2<u32>(abs(60186u), max(0u, u_input.a)), vec2<u32>(min(10840u, u_input.b), u_input.b))));
    let var_0 = Struct_2(Struct_1(vec4<bool>(all(!arg_1.wxw), true, all(select(arg_1.wyz, vec3<bool>(false, arg_1.x, arg_0), arg_0)), any(arg_1.ww)), ~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -31079i, 0i, 12463i), vec4<i32>(-19549i, 29613i, -18218i, -94720i), vec4<i32>(5623i, -20108i, 2147483647i, 24724i)), ~vec4<i32>(0i, -1i, 1i, 0i)), i32(-1i) * -73550i, (_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 0u), vec4<u32>(u_input.b, u_input.a, u_input.b, 4294967295u)) << (~vec4<u32>(u_input.b, global0.x, u_input.a, global0.x) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 77175u, u_input.a), vec3<u32>(69274u, 18798u, 41838u)), global0.x & 1u, ~0u), !all(arg_1.xzx)), 1i, global0.x);
    var var_1 = -var_0.b != _wgslsmith_dot_vec3_i32(~abs(var_0.a.b.yyx), var_0.a.b.xzx);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1562f))) * 1463f)));
    let var_3 = ~vec3<i32>(~var_0.b, countOneBits(_wgslsmith_add_i32(-var_0.b, _wgslsmith_mod_i32(0i, 1i))), var_0.a.b.x);
    return Struct_3(var_0, arg_1.x);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<i32>) -> vec4<bool> {
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(~21148u, abs(u_input.b | _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 1129u), vec3<u32>(global0.x, 73893u, 1u)))), vec2<u32>(global0.x, 4294967295u) << (max(select(vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(26743u, global0.x), ~vec2<u32>(0u, 4294967295u), select(arg_0.a, arg_0.a, true)), vec2<u32>(1u >> (u_input.b % 32u), _wgslsmith_mod_u32(u_input.a, global0.x))) % vec2<u32>(32u)));
    let var_0 = u_input.a;
    global0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(1u, 0u) >> (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))), vec2<u32>(global0.x, ~var_0)), ~firstTrailingBit(vec2<u32>(var_0, u_input.b)));
    global0 = abs(~(~(~vec2<u32>(5534u, 36498u))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, -402f, 2031f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-880f, -510f, 262f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1670f, -925f, 863f) + vec3<f32>(-319f, 1124f, 1206f)))))), func_2(-1465f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2201f)) * _wgslsmith_f_op_f32(abs(681f))), select(!(!vec4<bool>(true, arg_0.a.x, true, arg_0.a.x)), !(!vec4<bool>(arg_0.a.x, true, false, true)), select(!arg_1.a.x, arg_0.a.x, any(vec3<bool>(arg_0.a.x, false, true))))), select(select(select(vec3<bool>(arg_0.a.x, true, true), vec3<bool>(arg_1.a.x, false, false), select(vec3<bool>(true, false, arg_1.a.x), vec3<bool>(true, false, arg_1.a.x), arg_0.a.x)), select(select(vec3<bool>(arg_1.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(true, arg_0.a.x, arg_1.a.x), true), vec3<bool>(true, arg_0.a.x, arg_1.a.x), var_0 >= global0.x), vec3<bool>(any(vec3<bool>(arg_0.a.x, true, arg_1.a.x)), any(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.a.x)), arg_1.a.x)), func_2(select(false, !arg_1.a.x, false), !vec4<bool>(true, true, false, arg_0.a.x)).a.a.a.zwy, !(!(!vec3<bool>(arg_1.a.x, true, true)))));
    return select(vec4<bool>(any(arg_0.a), !arg_1.a.x, !any(func_2(false, var_1.b.a.a.a).a.a.a.xyx), !arg_0.a.x), vec4<bool>(arg_0.a.x == false, any(!var_1.b.a.a.a), arg_0.a.x, abs(arg_1.b) < _wgslsmith_div_i32(~12435i, firstLeadingBit(var_1.b.a.a.b.x))), func_2(arg_0.a.x != any(!arg_0.a), vec4<bool>(arg_1.a.x, true, any(func_2(false, var_1.b.a.a.a).a.a.a.xw), _wgslsmith_f_op_f32(exp2(var_1.a.x)) >= _wgslsmith_f_op_f32(var_1.a.x - -1335f))).a.a.a);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1000f, 381f), vec3<f32>(601f, 804f, -1000f), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1179f, -551f, 1000f), vec3<f32>(-237f, -1224f, -332f)))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1948f, -109f, 1322f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1865f, -818f, 1167f))))))), func_2(true, !vec4<bool>(0u > global0.x, true, true, all(vec3<bool>(false, false, false)))), select(func_2(true, func_3(Struct_4(vec2<bool>(true, true), 2147483647i), Struct_4(vec2<bool>(true, true), 1i), vec3<i32>(57482i, 0i, -11331i))).a.a.a.wxy, vec3<bool>(false, any(func_3(Struct_4(vec2<bool>(false, true), 0i), Struct_4(vec2<bool>(false, true), 10351i), vec3<i32>(-1i, -1i, 653i)).zx), true), !(!func_3(Struct_4(vec2<bool>(true, true), -1i), Struct_4(vec2<bool>(false, true), 2147483647i), vec3<i32>(-39612i, 1i, 658i)).x)));
    global0 = min(var_0.b.a.a.d.xy >> (arg_1.zz % vec2<u32>(32u)), ~vec2<u32>(1u, abs(~4294967295u)));
    global0 = arg_1.yw;
    var var_1 = var_0.b.a.a.b.ww;
    let var_2 = abs(abs(max(var_1.x, var_0.b.a.a.b.x)));
    return var_0.b;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_4 {
    global0 = vec2<u32>(~5698u, global0.x);
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, true)), _wgslsmith_f_op_f32(1606f + arg_0.a.x))), 1000f))), Struct_3(func_1(~u_input.b, vec4<u32>(global0.x >> (global0.x % 32u), _wgslsmith_add_u32(u_input.b, 4145u), ~arg_0.b.a.a.d.x, _wgslsmith_add_u32(0u, 4294967295u))).a, !(!(arg_0.b.a.a.d.x == 3617u))), vec3<bool>(func_3(Struct_4(arg_0.c.zy, arg_1.x), Struct_4(arg_0.b.a.a.a.yz, arg_2.b), vec3<i32>(arg_1.x, -1i, arg_2.b)).x & !arg_0.b.a.a.a.x, false, !arg_2.a.x));
    let var_1 = firstLeadingBit(vec4<u32>(4294967295u, max(~4294967295u | (4294967295u & arg_0.b.a.a.d.x), func_1(~79916u, var_0.b.a.a.d).a.c), ~34905u, arg_0.b.a.a.d.x));
    let var_2 = Struct_2(arg_0.b.a.a, 2082i, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, ~0u), min(var_1.x, _wgslsmith_mod_u32(u_input.a, 67638u))));
    var var_3 = Struct_1(var_2.a.a, ~var_2.a.b, -5828i, _wgslsmith_sub_vec4_u32(~(~(~var_2.a.d)), var_0.b.a.a.d), true);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -(~arg_1.b) | ~(19385i ^ arg_0.b.x), ~(-53095i)), 16244i);
    global0 = func_1(1u, vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.d.x, arg_0.d.x), _wgslsmith_div_u32(arg_0.d.x, 14092u) | arg_0.d.x), global0.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.d.x, u_input.b), ~1u), ~_wgslsmith_dot_vec3_u32(select(arg_0.d.wyx, vec3<u32>(arg_0.d.x, 1u, 9789u), arg_0.a.xzy), _wgslsmith_div_vec3_u32(arg_0.d.wwy, vec3<u32>(arg_0.d.x, 2925u, arg_0.d.x))))).a.a.d.xy;
    let var_1 = Struct_4(vec2<bool>(true && select(true, true, arg_1.a.x), true), arg_0.c);
    var var_2 = vec4<i32>(arg_0.c, var_0.x, 21110i & _wgslsmith_clamp_i32(2147483647i, (2147483647i >> (arg_0.d.x % 32u)) << (_wgslsmith_mod_u32(7491u, global0.x) % 32u), var_0.x ^ select(1i, arg_1.b, var_1.a.x)), _wgslsmith_div_i32(arg_0.b.x | ~arg_0.c, _wgslsmith_sub_i32(var_1.b, -39916i) << (max(4294967295u, ~0u) % 32u)));
    let var_3 = arg_1.b;
    return Struct_2(func_1(~abs(_wgslsmith_dot_vec3_u32(arg_0.d.xzx, vec3<u32>(global0.x, global0.x, 12141u))), arg_0.d).a.a, ~(arg_0.b.x ^ abs(35616i)), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(_wgslsmith_sub_i32(28107i, -45103i), select(firstLeadingBit(-2147483647i), countOneBits(-2147483647i), true), 1i, _wgslsmith_mult_i32(1i, 4201i)), ~_wgslsmith_div_i32(countOneBits(59347i), 1i), ((vec4<u32>(global0.x, 4294967295u, 180u, u_input.b) << (vec4<u32>(global0.x, 0u, u_input.b, u_input.a) % vec4<u32>(32u))) & ~vec4<u32>(90353u, 5027u, 28501u, global0.x)) & _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.b, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(69369u, 0u, 22279u, 1u), vec4<u32>(global0.x, 1u, 22061u, u_input.b))), false), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(271f, 399f, 979f) + vec3<f32>(-445f, -1000f, 905f))), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(37075u, 4294967295u)), abs(vec4<u32>(global0.x, 77277u, 0u, u_input.a))), vec3<bool>(true, false, true)), _wgslsmith_mod_vec4_i32(~vec4<i32>(15992i, 4731i, -43513i, 27518i), _wgslsmith_add_vec4_i32(vec4<i32>(37255i, 25366i, -1i, 2147483647i) << (vec4<u32>(4294967295u, u_input.b, global0.x, 83986u) % vec4<u32>(32u)), select(vec4<i32>(-1i, 0i, 1i, -1i), vec4<i32>(46747i, 1500i, -2147483647i, 27523i), false))), Struct_4(func_3(Struct_4(vec2<bool>(true, false), 2147483647i), Struct_4(vec2<bool>(true, true), -1i), vec3<i32>(1i, -13379i, 2147483647i)).wz, _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-22075i, -76644i)))));
    var var_1 = Struct_2(var_0.a, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(8127i, -14467i, var_0.b, var_0.a.b.x), vec4<i32>(var_0.a.c, var_0.b, 0i, 10417i) & var_0.a.b), 24702i), ~u_input.b);
    let var_2 = func_1(59201u, var_0.a.d).b;
    let var_3 = var_0.a.a.zyw;
    let var_4 = func_2(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-597f, 156f, 636f) + vec3<f32>(-2950f, -1216f, 274f))), func_1(min(u_input.a, 4294967295u), var_0.a.d), !(!var_0.a.a.yxw)), func_1(reverseBits(global0.x), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(11796u, u_input.b, 0u, 35973u), var_1.a.d))).a.a.b, func_4(Struct_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-617f, 632f, -205f))), func_1(1u, var_1.a.d), func_5(var_0.a, Struct_4(var_1.a.a.zz, var_1.a.b.x)).a.a.xxx), var_0.a.b, func_4(Struct_5(vec3<f32>(733f, 738f, 559f), Struct_3(Struct_2(var_0.a, var_0.b, 0u), var_0.a.e), var_0.a.a.wzz), var_1.a.b | var_0.a.b, func_4(Struct_5(vec3<f32>(329f, 388f, -1000f), Struct_3(Struct_2(var_1.a, var_1.a.b.x, 1u), true), var_0.a.a.yzx), var_1.a.b, Struct_4(vec2<bool>(true, var_2), var_1.a.b.x))))).a.x, vec4<bool>(true, false, true, true && all(var_0.a.a))).b;
    let var_5 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) - _wgslsmith_f_op_f32(step(2706f, -964f))) == -511f, var_4, var_3.x, !var_3.x), vec4<bool>(var_1.a.a.x, var_0.a.b.x < (max(-2147483647i, var_1.b) ^ abs(-41256i)), func_5(Struct_1(var_1.a.a, var_0.a.b, var_0.a.c, vec4<u32>(var_0.a.d.x, u_input.a, 1u, global0.x), var_2), func_4(Struct_5(vec3<f32>(1335f, 577f, 234f), Struct_3(Struct_2(var_1.a, var_0.a.b.x, var_1.a.d.x), var_0.a.a.x), var_0.a.a.yzz), -vec4<i32>(0i, 52360i, var_0.b, -63739i), func_4(Struct_5(vec3<f32>(349f, -1953f, 2132f), Struct_3(Struct_2(var_1.a, var_0.a.b.x, var_0.c), false), vec3<bool>(var_0.a.e, var_4, false)), vec4<i32>(0i, 1i, 2147483647i, 50704i), Struct_4(vec2<bool>(var_4, var_0.a.a.x), 16408i)))).a.a.x, var_0.b > var_1.b), func_5(Struct_1(var_0.a.a, -var_1.a.b, _wgslsmith_div_i32(-1i, func_1(1u, vec4<u32>(4294967295u, 0u, var_1.a.d.x, global0.x)).a.a.c), var_1.a.d, all(var_0.a.a.zxz)), func_4(Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(475f, 1039f, 658f) + vec3<f32>(1194f, -897f, -283f)), Struct_3(Struct_2(Struct_1(var_1.a.a, var_0.a.b, 1i, vec4<u32>(19217u, var_1.a.d.x, 20948u, u_input.a), true), 2147483647i, u_input.a), true), vec3<bool>(var_3.x, var_0.a.a.x, var_2)), ~func_2(var_1.a.e, var_0.a.a).a.a.b, Struct_4(var_3.zx, var_1.a.c))).a.a);
    var_1 = func_5(func_1(var_1.a.d.x, var_0.a.d >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 3517u, global0.x, 4294967295u), var_1.a.d) % vec4<u32>(32u))).a.a, func_4(Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(161f + -719f), _wgslsmith_div_f32(-681f, -313f)), Struct_3(Struct_2(Struct_1(var_1.a.a, var_1.a.b, -1i, var_0.a.d, false), 22544i, 0u), true), select(!vec3<bool>(false, var_4, var_5.x), !vec3<bool>(var_4, false, false), var_1.a.a.x)), var_0.a.b, Struct_4(var_1.a.a.yw, select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.c, 47819i), var_0.a.b.zx), ~(-5992i), select(true, var_5.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-2147483647i, ~(~0i)));
}

