struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(749f, 505f, 108f), 1u, -2493f, 0u, 26023u), Struct_1(vec3<f32>(-814f, -1440f, -1220f), 1u, -1634f, 0u, 0u), Struct_1(vec3<f32>(420f, -655f, -233f), 1u, -369f, 14095u, 0u), Struct_1(vec3<f32>(1086f, 1677f, 1625f), 1u, 1584f, 0u, 65203u), Struct_1(vec3<f32>(110f, -1631f, 307f), 56100u, 681f, 1u, 18245u), Struct_1(vec3<f32>(-1223f, -1198f, -713f), 72051u, 582f, 43254u, 1u), Struct_1(vec3<f32>(841f, -1369f, -2416f), 49819u, 625f, 1u, 9623u), Struct_1(vec3<f32>(378f, 1135f, 1526f), 1u, 987f, 0u, 0u), Struct_1(vec3<f32>(1391f, -669f, -1308f), 4294967295u, 2250f, 758u, 12511u), Struct_1(vec3<f32>(1614f, -111f, 682f), 8653u, 1532f, 104924u, 0u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> u32 {
    let var_0 = vec2<bool>(arg_0.b, any(!(!vec3<bool>(true, false, arg_0.b))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    global0 = array<Struct_1, 18>();
    let var_2 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(~4294967295u, min(1u, firstLeadingBit(u_input.a.x)), 8859u)), select(vec3<u32>(select(1u, 29724u, -365f > arg_1.x), ~72560u, 0u), vec3<u32>(var_1.d, 25445u, _wgslsmith_dot_vec3_u32(~arg_0.d.a.xxx, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.e, arg_0.c.e, u_input.a.x), vec3<u32>(arg_0.c.b, 0u, u_input.a.x)))), !select(!vec3<bool>(var_0.x, false, false), vec3<bool>(arg_0.b, true, false), select(vec3<bool>(true, true, arg_0.b), vec3<bool>(false, false, false), false))));
    global0 = array<Struct_1, 18>();
    return 1u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = firstTrailingBit(vec2<u32>(~firstLeadingBit(75129u), 29805u));
    global0 = array<Struct_1, 18>();
    let var_1 = vec3<u32>(func_3(Struct_4(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(19295i, arg_0)), false, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(2361f, -169f, 892f) - vec3<f32>(627f, -1042f, -549f)), u_input.a.x, _wgslsmith_f_op_f32(abs(1000f)), 1u, var_0.x), Struct_2(vec4<u32>(u_input.a.x, 52459u, 4000u, 20317u), -arg_0, Struct_1(vec3<f32>(-1997f, 1661f, -1000f), 24233u, -704f, var_0.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(396f, -311f, false)), _wgslsmith_f_op_f32(trunc(245f)), -931f, _wgslsmith_f_op_f32(273f + 1253f))))), var_0.x, 0u);
    var var_2 = -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-2147483647i), reverseBits(0i), max(-2147483647i, arg_0)), select(~vec3<i32>(arg_0, arg_0, 0i), abs(vec3<i32>(arg_0, -1i, arg_0)), all(vec3<bool>(true, true, false)))), abs(_wgslsmith_sub_i32(arg_0, firstLeadingBit(arg_0))), arg_0, -14473i ^ firstTrailingBit(arg_0));
    var var_3 = Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a.x), vec4<u32>(31515u, var_0.x, var_0.x, 9697u)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 123960u, var_0.x), vec4<u32>(var_0.x, 1u, var_0.x, 26179u)) & select(vec4<u32>(u_input.a.x, 127226u, var_0.x, 4294967295u), vec4<u32>(5473u, u_input.a.x, 1u, u_input.a.x), vec4<bool>(false, false, true, true))) % vec4<u32>(32u)), reverseBits(-1i), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, -778f, -1000f))), ~0u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(717f, -1529f) * _wgslsmith_div_f32(-713f, -1091f)), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_1.x) ^ vec4<u32>(4294967295u, var_1.x, 4294967295u, 4294967295u), countOneBits(vec4<u32>(18388u, 0u, var_1.x, var_0.x))))), _wgslsmith_f_op_f32(842f * 124f), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-604f, _wgslsmith_f_op_f32(f32(-1f) * -1668f), _wgslsmith_f_op_f32(sign(-508f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(725f, 1618f, -1499f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1071f, 567f, -1773f)), false))), ~_wgslsmith_add_u32(66666u, var_1.x) >> (~(~var_0.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-715f))), 1u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(63241u, 1u, 39831u)), ~max(var_1, vec3<u32>(u_input.a.x, 10906u, u_input.a.x)))));
    return Struct_3(-24477i <= ~arg_0, Struct_2(var_3.b.a, var_2.x | -1i, var_3.b.c), _wgslsmith_f_op_f32(var_3.d.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))), global1[_wgslsmith_index_u32(4294967295u, 10u)]);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_2(i32(-1i) * -abs(1i));
    global0 = array<Struct_1, 18>();
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(14823u, 1u), u_input.a);
    let var_2 = ~(vec4<i32>(-func_2(-21136i).b.b, 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, var_0.b.b, 0i, -1i), vec4<i32>(var_0.b.b, var_0.b.b, 2147483647i, -42582i)), ~_wgslsmith_add_i32(var_0.b.b, var_0.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, 0i, var_0.b.b, 2147483647i), -vec4<i32>(2147483647i, var_0.b.b, var_0.b.b, var_0.b.b))) ^ (vec4<i32>(firstTrailingBit(44176i), -2147483647i, countOneBits(var_0.b.b), var_0.b.b | 0i) & (max(vec4<i32>(var_0.b.b, -1i, -2147483647i, -1i), vec4<i32>(-32552i, 1i, -1i, -5266i)) | -vec4<i32>(var_0.b.b, var_0.b.b, 0i, 2147483647i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(var_0.b.c.a));
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(4294967295u << (0u % 32u)) << (u_input.a.x % 32u), var_1.x), 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(min(~(~arg_0.b) << (arg_0.b % 32u), ~func_1(arg_0) >> (0u % 32u)), 18u)];
    global0 = array<Struct_1, 18>();
    let var_1 = ~(~vec4<u32>(_wgslsmith_div_u32(countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d, 68320u), vec2<u32>(var_0.b, u_input.a.x))), 0u, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(90900u, u_input.a.x), 1u)));
    global0 = array<Struct_1, 18>();
    var var_2 = vec4<u32>(~91681u, u_input.a.x, u_input.a.x, arg_1.b);
    return global0[_wgslsmith_index_u32(~select(var_0.e, 14764u, func_2(arg_2).b.b <= -24377i), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_dot_vec2_u32(max(abs(vec2<u32>(1u, 3654u) & vec2<u32>(u_input.a.x, u_input.a.x)) << (~(u_input.a | vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)), reverseBits(vec2<u32>(7195u, 4294967295u) ^ u_input.a)), u_input.a);
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1264f)), _wgslsmith_f_op_f32(sign(216f)), _wgslsmith_div_f32(1635f, 613f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(832f, 883f, 1181f)))), _wgslsmith_div_u32(~reverseBits(u_input.a.x), ~1u >> (countOneBits(u_input.a.x) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-260f + -337f))), countOneBits(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~func_1(global0[_wgslsmith_index_u32(1u, 18u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1564f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(532f, -627f, 1338f), vec3<f32>(-1131f, 750f, -304f))))), _wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 27897u)), u_input.a.x, ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1141f)))), 4294967295u, u_input.a.x >> (_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(19910u)) % 32u)), _wgslsmith_sub_i32(countOneBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(8724i, -1i, 53064i), vec3<i32>(1i, -2549i, 54102i)), 14830i << (u_input.a.x % 32u), min(0i, 32800i), _wgslsmith_dot_vec2_i32(vec2<i32>(13123i, -20018i), vec2<i32>(-37253i, -49332i))), vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -19821i, -50623i), vec3<i32>(0i, 1i, -59310i)), -2147483647i, ~(-24395i)))));
    var var_2 = func_2(~1i >> (_wgslsmith_clamp_u32(1u, var_1.d, u_input.a.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(reverseBits(-vec2<i32>(var_2.b.b, var_2.b.b))), var_2.d.b, -_wgslsmith_mult_i32(var_2.b.b, var_2.b.b) | func_2(var_2.b.b).b.b, -var_2.b.b);
}

