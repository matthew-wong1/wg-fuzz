struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(21736u, -383f, vec3<f32>(224f, 960f, -351f)), Struct_4(1u, 1350f, vec3<f32>(1175f, -1195f, 1000f)), Struct_4(1u, 1205f, vec3<f32>(-472f, 1192f, -927f)), Struct_4(1u, -893f, vec3<f32>(-701f, 1000f, -1260f)), Struct_4(4294967295u, -450f, vec3<f32>(-814f, -471f, 776f)), Struct_4(59274u, -297f, vec3<f32>(2079f, -741f, -1076f)), Struct_4(22498u, -1393f, vec3<f32>(234f, 282f, 167f)), Struct_4(54086u, 277f, vec3<f32>(-355f, 1000f, 897f)), Struct_4(4294967295u, 698f, vec3<f32>(-305f, 228f, -296f)), Struct_4(1u, 1000f, vec3<f32>(691f, 574f, 2274f)), Struct_4(9959u, 1000f, vec3<f32>(-203f, -239f, 1280f)), Struct_4(4294967295u, -320f, vec3<f32>(-138f, -1331f, 274f)), Struct_4(2860u, -1655f, vec3<f32>(-562f, 316f, 1265f)), Struct_4(7888u, -2043f, vec3<f32>(-237f, 1257f, -404f)), Struct_4(32027u, -736f, vec3<f32>(-204f, 160f, 492f)), Struct_4(1345u, 1631f, vec3<f32>(1905f, 1090f, -1565f)), Struct_4(1u, -395f, vec3<f32>(-651f, 1183f, 1000f)), Struct_4(1u, -427f, vec3<f32>(-405f, -738f, 1426f)), Struct_4(0u, -1342f, vec3<f32>(-1000f, -678f, -322f)), Struct_4(0u, 205f, vec3<f32>(678f, 468f, -248f)), Struct_4(4294967295u, 174f, vec3<f32>(-1373f, 249f, 1000f)), Struct_4(0u, -645f, vec3<f32>(1502f, 711f, 1000f)), Struct_4(1u, -1654f, vec3<f32>(-141f, 900f, 1020f)), Struct_4(20949u, 1388f, vec3<f32>(-1158f, 1256f, -510f)), Struct_4(1u, -205f, vec3<f32>(223f, 259f, 945f)), Struct_4(4294967295u, 262f, vec3<f32>(880f, -733f, 676f)), Struct_4(20015u, 1262f, vec3<f32>(1659f, 580f, 1517f)), Struct_4(21689u, 292f, vec3<f32>(1000f, 1061f, 337f)), Struct_4(2869u, -1489f, vec3<f32>(-792f, 1189f, -505f)), Struct_4(4294967295u, -330f, vec3<f32>(1035f, -590f, 1185f)), Struct_4(45928u, -714f, vec3<f32>(-347f, -1408f, 2109f)));

var<private> global2: vec4<u32> = vec4<u32>(88917u, 27185u, 38992u, 54718u);

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global3 = arg_0.d.a;
    var var_0 = u_input.b.x;
    global2 = ~vec4<u32>(~arg_0.d.c.a.x, 4294967295u >> (min(~12295u, arg_0.c.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.d.c.a.x, _wgslsmith_mod_u32(global2.x, 4294967295u)), firstLeadingBit(arg_0.c.x) << (u_input.d.x % 32u)), abs(arg_0.d.c.a.x));
    global2 = firstTrailingBit(~(firstTrailingBit(~u_input.a) << (u_input.a % vec4<u32>(32u))));
    global3 = _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(14391i, i32(-1i) * -1i, abs(u_input.b.x)), ~reverseBits(arg_0.d.a)), u_input.e.x));
    return select(vec4<bool>(arg_0.d.b, false, (1i < abs(arg_0.d.a)) && select(arg_0.d.b, !arg_0.d.b, arg_0.d.b), any(vec2<bool>(any(vec3<bool>(arg_0.d.b, false, true)), all(vec3<bool>(arg_0.d.b, arg_0.d.b, arg_0.d.b))))), !(!vec4<bool>(!arg_0.d.b, arg_0.d.b, arg_0.d.b || false, arg_0.d.b)), select(select(vec4<bool>(true, arg_0.d.b, true & arg_0.d.b, all(vec3<bool>(arg_0.d.b, arg_0.d.b, arg_0.d.b))), !select(vec4<bool>(arg_0.d.b, false, arg_0.d.b, true), vec4<bool>(arg_0.d.b, false, arg_0.d.b, arg_0.d.b), vec4<bool>(arg_0.d.b, true, arg_0.d.b, true)), vec4<bool>(any(vec3<bool>(arg_0.d.b, false, true)), any(vec3<bool>(false, arg_0.d.b, arg_0.d.b)), any(vec2<bool>(false, false)), arg_0.d.b)), !(!(!vec4<bool>(true, false, arg_0.d.b, arg_0.d.b))), !arg_0.d.b));
}

fn func_2() -> i32 {
    let var_0 = vec2<f32>(582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(457f)), _wgslsmith_f_op_f32(f32(-1f) * -1856f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(-1709f, 1898f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-994f, -371f) * var_0), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -492f))))) - var_0);
    var var_2 = Struct_1(global2.yx);
    let var_3 = select(!vec4<bool>(true, 1i < u_input.b.x, true, true), select(func_3(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_0.x, var_1.x) * vec3<f32>(800f, -1032f, var_1.x)), Struct_1(var_2.a), vec3<u32>(var_2.a.x, global2.x, var_2.a.x), Struct_2(u_input.e.x, false, Struct_1(u_input.a.wx)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), any(vec3<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, false, false)), true))), false);
    var var_4 = var_1.x;
    return _wgslsmith_div_i32(u_input.e.x ^ -u_input.e.x, u_input.b.x);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(arg_1.wy)), vec2<f32>(1f, 1f), false)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 288f), vec2<f32>(1764f, 341f)), arg_1.yx, !vec2<bool>(arg_2.b, arg_2.b))))));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 31u)];
    let var_4 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~u_input.b.x, 13540i), ~(arg_2.a ^ 2147483647i), -33999i), all(!(!select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, arg_2.b)))), Struct_1(vec2<u32>(39580u, _wgslsmith_add_u32(min(u_input.a.x, 1u), arg_0))));
    return func_3(Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.x, _wgslsmith_div_f32(arg_1.x, -1383f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.xzz), _wgslsmith_div_vec3_f32(arg_1.zyy, var_3.c))), arg_2.b)), var_4.c, vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(0u, 35378u, u_input.d.x) & firstLeadingBit(16025u)), arg_2)).yyz;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_5 {
    global1 = array<Struct_4, 31>();
    global3 = u_input.e.x;
    return Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, _wgslsmith_mult_u32(1u, global2.x)), 13u)], vec2<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.e.x, 1i, u_input.e.x, u_input.e.x)), -(~vec4<i32>(2147483647i, 1i, u_input.e.x, u_input.b.x))), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, u_input.e.x), ~u_input.e.x)));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.x;
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.a.a.xy, vec2<f32>(-973f, _wgslsmith_f_op_f32(f32(-1f) * -1542f)))));
    global0 = array<Struct_3, 13>();
    let var_2 = arg_0.b.x;
    return func_4(!vec3<bool>(166f > _wgslsmith_f_op_f32(select(105f, -585f, arg_0.a.d.b)), any(arg_1.yy), !arg_0.a.d.b), func_4(arg_1.zzw, arg_0.a.d.c).a.d.c).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 770f));
    var var_1 = 1u;
    let var_2 = ~global2.x;
    let var_3 = func_5(func_4(select(!func_1(u_input.c, vec4<f32>(-2042f, var_0.x, -762f, var_0.x), Struct_2(-2147483647i, false, Struct_1(u_input.d.yz))), select(vec3<bool>(false, true, true), func_3(Struct_3(vec3<f32>(-332f, var_0.x, -825f), Struct_1(vec2<u32>(17268u, global2.x)), vec3<u32>(u_input.a.x, 7862u, global2.x), Struct_2(-34927i, false, Struct_1(vec2<u32>(1u, 25156u))))).yyy, select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), func_1(global2.x, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1538f, var_0.x, var_0.x, -1739f), vec4<f32>(996f, 186f, 935f, -973f))), Struct_2(u_input.e.x, true, Struct_1(u_input.d.xx)))), Struct_1(abs(~vec2<u32>(u_input.a.x, 15396u)))), vec4<bool>(true, select(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, !any(vec2<bool>(false, true))), true, func_3(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(946f, var_0.x, var_0.x) * vec3<f32>(1589f, -190f, var_0.x)), Struct_1(u_input.a.yy), vec3<u32>(var_2, u_input.d.x, global2.x), Struct_2(1i, false, Struct_1(u_input.d.xx)))).x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1145f, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -154f)))));
    let var_4 = max(_wgslsmith_mod_u32(u_input.d.x, ~(~u_input.c)), global2.x);
    let var_5 = !(!func_3(global0[_wgslsmith_index_u32(firstTrailingBit(0u) | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 58822u), vec2<u32>(10968u, u_input.a.x)), 13u)]));
    var var_6 = Struct_5(global0[_wgslsmith_index_u32(44515u, 13u)], min(max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.e.x, -13023i), ~vec2<i32>(1i, -594i)), -_wgslsmith_mod_vec2_i32(u_input.b.xy, u_input.b.zw)), reverseBits(_wgslsmith_mod_vec2_i32(u_input.e.yy, vec2<i32>(u_input.b.x, u_input.b.x)) | vec2<i32>(u_input.b.x, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-5482i), var_6.b & vec2<i32>(max(-5645i, u_input.e.x >> (4294967295u % 32u)), var_6.b.x ^ var_6.b.x), vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.e.x), var_6.b.x, var_6.b.x), vec4<f32>(var_0.x, -136f, var_6.a.a.x, _wgslsmith_f_op_f32(1000f - -356f)), _wgslsmith_f_op_f32(floor(var_0.x)));
}

