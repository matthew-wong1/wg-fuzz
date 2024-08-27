struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = 1000f;
    var var_1 = any(vec4<bool>(false, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false))), true, true));
    let var_2 = max(-_wgslsmith_sub_vec3_i32(min(vec3<i32>(-37783i, 1i, 0i) << (u_input.a % vec3<u32>(32u)), reverseBits(vec3<i32>(59008i, -2147483647i, -2147483647i))), abs(vec3<i32>(0i, 2147483647i, 2147483647i))), vec3<i32>(~1i, ~(~(-31818i) >> (u_input.a.x % 32u)), -2147483647i));
    var var_3 = Struct_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 30844u, 57707u), select(vec3<u32>(102154u, global1.x, 1u), vec3<u32>(4294967295u, u_input.a.x, global1.x), vec3<bool>(false, true, false)))) | u_input.a.x, _wgslsmith_div_i32(1i, 2147483647i), Struct_1(select(abs(select(vec4<i32>(41534i, var_2.x, -44613i, 1i), vec4<i32>(var_2.x, var_2.x, var_2.x, -14393i), false)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(7948i, var_2.x, -5109i), vec3<i32>(-23558i, 49134i, var_2.x)), firstLeadingBit(var_2.x), select(1i, var_2.x, true), countOneBits(var_2.x)), true), abs(_wgslsmith_sub_vec4_i32(max(vec4<i32>(var_2.x, 0i, -2147483647i, var_2.x), vec4<i32>(var_2.x, var_2.x, 4834i, var_2.x)), ~vec4<i32>(var_2.x, -19373i, -2147483647i, 32050i))), select(vec4<u32>(firstLeadingBit(71586u), arg_0, u_input.a.x << (3039u % 32u), reverseBits(arg_0)), vec4<u32>(1u, global1.x, countOneBits(11460u), 40950u), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false))));
    var var_4 = _wgslsmith_mod_vec2_i32((select(abs(vec2<i32>(-2147483647i, 2147483647i)), ~var_3.c.a.wz, select(global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(var_3.a, 30u)], global3[_wgslsmith_index_u32(0u, 30u)])) << (vec2<u32>(global1.x << (27798u % 32u), 22782u << (u_input.a.x % 32u)) % vec2<u32>(32u))) << (vec2<u32>(_wgslsmith_mult_u32(global1.x, arg_0), firstTrailingBit(global1.x)) % vec2<u32>(32u)), vec2<i32>(var_2.x, _wgslsmith_mod_i32(var_3.b, -_wgslsmith_div_i32(2147483647i, -63772i))));
    return ~_wgslsmith_div_u32(reverseBits(50088u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 47269u), global1.ww), u_input.a.x << (77369u % 32u)), var_3.a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = -arg_0.a.yy;
    global0 = array<vec2<u32>, 10>();
    global2 = array<Struct_2, 28>();
    var var_1 = Struct_1(arg_0.a, arg_1.b, arg_1.c ^ vec4<u32>(func_3(_wgslsmith_add_u32(16524u, u_input.a.x)), ~(u_input.a.x ^ global1.x), ~(u_input.a.x << (u_input.a.x % 32u)), arg_1.c.x));
    global0 = array<vec2<u32>, 10>();
    return select(arg_3, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-139f))))) == 1353f);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3;
    return Struct_3(~var_0.a, _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(-52742i, -4023i)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(440f)))), -472f)));
    global2 = array<Struct_2, 28>();
    global2 = array<Struct_2, 28>();
    global0 = array<vec2<u32>, 10>();
    global1 = ~select(select(min(reverseBits(vec4<u32>(0u, 1u, u_input.a.x, 103832u)), ~vec4<u32>(global1.x, 36410u, 57486u, 4294967295u)), max(~vec4<u32>(34930u, 0u, 26687u, 3517u), vec4<u32>(54053u, global1.x, 51711u, 27016u) ^ vec4<u32>(6263u, 4294967295u, global1.x, 1u)), !select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), ~(vec4<u32>(u_input.a.x, 1u, global1.x, 4294967295u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 82125u, u_input.a.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<u32>(global1.x, u_input.a.x, 4294967295u, 0u) | vec4<u32>(7142u, 40250u, u_input.a.x, 94847u)), !((arg_2.a.x ^ arg_2.b) <= _wgslsmith_add_i32(-1i, arg_2.a.x)));
    return vec4<i32>(-28685i, -(~(~(-arg_1.b))), arg_2.a.x, 1i);
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(-7924i, 11993i, -12166i, 27044i)), min(func_5(vec4<bool>(true, true, false, true), func_4(func_2(Struct_3(vec4<i32>(-1i, 22469i, -1i, -47810i), -1i), Struct_1(vec4<i32>(1i, 1i, 1190i, 62294i), vec4<i32>(0i, -32212i, 3288i, 30830i), vec4<u32>(global1.x, u_input.a.x, 1u, 130499u)), true, vec4<bool>(false, true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), ~2475u, Struct_3(vec4<i32>(0i, 2100i, 0i, -2147483647i), -1i)), Struct_3(vec4<i32>(1i, 1i, 1i, 1i), ~39558i)), vec4<i32>(0i, ~(~(-16133i)), ~min(0i, 1i), 2147483647i)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~max(abs(vec4<u32>(global1.x, global1.x, 5891u, u_input.a.x)), vec4<u32>(global1.x, 4294967295u, u_input.a.x, global1.x)) % vec4<u32>(32u)));
    global2 = array<Struct_2, 28>();
    var var_1 = Struct_4(var_0.b.x, vec2<bool>(true, true), ~(~(-select(var_0.a, var_0.a, vec4<bool>(false, false, true, false)))), !vec4<bool>(any(vec2<bool>(false, true)), (u_input.a.x < var_0.c.x) | false, !any(vec2<bool>(false, true)), true), global2[_wgslsmith_index_u32(max(var_0.c.x, reverseBits(~abs(u_input.a.x))), 28u)]);
    var_1 = Struct_4(var_1.e.b << (1u % 32u), select(vec2<bool>(false, var_1.b.x), !var_1.b, vec2<bool>(!(true && var_1.b.x), var_1.d.x)), var_0.b, !(!(!select(var_1.d, vec4<bool>(false, var_1.d.x, false, var_1.d.x), false))), var_1.e);
    return Struct_1(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(var_0.b.x, var_0.b.x, 18150i, -20810i) >> (var_0.c % vec4<u32>(32u))), func_4(vec4<bool>(var_1.d.x, var_1.b.x, false, true), !vec3<bool>(true, true, var_1.d.x), ~u_input.a.x, func_4(vec4<bool>(true, false, var_1.d.x, var_1.d.x), var_1.d.zww, 27684u, Struct_3(vec4<i32>(var_1.e.c.b.x, var_0.a.x, 37898i, -26645i), -2147483647i))).a, countOneBits(vec4<i32>(var_0.a.x, 1i, var_1.e.c.b.x, 0i))) & (firstLeadingBit(var_0.b) | -func_4(var_1.d, vec3<bool>(var_1.d.x, false, var_1.b.x), 57058u, Struct_3(vec4<i32>(var_0.b.x, var_0.a.x, 0i, var_1.c.x), var_1.e.c.b.x)).a), reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_1.a, var_0.a.x), vec3<i32>(var_1.a, 20034i, 2147483647i)), 1i, ~var_0.a.x, firstTrailingBit(var_1.a))) & ((var_0.a << (firstLeadingBit(var_1.e.c.c) % vec4<u32>(32u))) >> (var_0.c % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(var_0.c, max(vec4<u32>(u_input.a.x, 17560u, u_input.a.x, 0u), select(var_1.e.c.c, vec4<u32>(27548u, 49298u, var_0.c.x, var_0.c.x), vec4<bool>(false, var_1.d.x, true, true))), vec4<u32>(1u, 0u, _wgslsmith_mod_u32(var_0.c.x, global1.x), global1.x)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = vec4<i32>(-arg_1.a.x, i32(-1i) * -14790i, -17163i, _wgslsmith_dot_vec3_i32(arg_2.c.a.yxz, arg_2.c.b.xzx)) & vec4<i32>(min(reverseBits(33927i), arg_2.b), arg_2.c.b.x, max(-func_1(vec3<f32>(686f, 372f, 957f)).a.x, reverseBits(firstLeadingBit(0i))), -_wgslsmith_dot_vec4_i32(arg_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-47513i, 34174i, -7500i, arg_2.c.b.x), arg_1.b)));
    let var_1 = func_4(vec4<bool>(var_0.x <= (arg_1.b.x ^ -3937i), true, any(vec4<bool>(any(global3[_wgslsmith_index_u32(0u, 30u)]), arg_3, false, true)), true), !(!(!select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, false, arg_3), vec3<bool>(arg_3, false, true)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~func_3(0u), select(_wgslsmith_sub_u32(55893u, 0u), ~0u, any(vec3<bool>(true, arg_3, false))), abs(abs(4294967295u))), vec3<u32>(~(~0u), ~7700u, 1u)), func_4(vec4<bool>(select(false, arg_3, arg_3), !(!arg_3), false, true || all(vec2<bool>(false, arg_3))), select(func_2(Struct_3(vec4<i32>(18536i, var_0.x, var_0.x, 24929i), 63240i), Struct_1(vec4<i32>(arg_2.b, arg_1.b.x, arg_2.c.a.x, var_0.x), arg_2.c.a, arg_1.c), true, vec4<bool>(arg_3, arg_3, arg_3, true)).xzw, !(!vec3<bool>(false, arg_3, arg_3)), (arg_3 || arg_3) && (false | arg_3)), 0u, Struct_3(min(arg_1.a, abs(vec4<i32>(arg_2.c.a.x, -6427i, 0i, arg_2.b))), 0i)));
    var var_2 = func_4(select(!select(select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(arg_3, true, false, arg_3), arg_3), select(vec4<bool>(arg_3, false, true, true), vec4<bool>(false, true, arg_3, true), vec4<bool>(true, arg_3, arg_3, true)), vec4<bool>(true, true, arg_3, arg_3)), vec4<bool>(true, true, arg_3, true | (arg_3 || arg_3)), func_2(func_4(select(vec4<bool>(arg_3, true, arg_3, true), vec4<bool>(arg_3, arg_3, true, arg_3), false), vec3<bool>(arg_3, arg_3, arg_3), global1.x, func_4(vec4<bool>(arg_3, true, false, arg_3), vec3<bool>(true, true, arg_3), 1u, Struct_3(arg_1.b, var_1.a.x))), arg_1, any(vec4<bool>(arg_3, arg_3, false, arg_3)) || (arg_3 | true), vec4<bool>(true, false, select(false, arg_3, arg_3), !arg_3))), select(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_3, arg_3, false), vec3<bool>(false, false, arg_3)), !(!(!vec3<bool>(arg_3, false, arg_3))), func_2(Struct_3(var_1.a, arg_2.b), arg_2.c, any(global3[_wgslsmith_index_u32(~4294967295u, 30u)]), select(select(vec4<bool>(false, arg_3, arg_3, arg_3), vec4<bool>(false, false, arg_3, false), false), vec4<bool>(arg_3, arg_3, arg_3, arg_3), select(arg_3, arg_3, arg_3))).yyx), 4294967295u, func_4(vec4<bool>(true, true, false, any(select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_3, true, arg_3), arg_3))), vec3<bool>(true, true, true), arg_0, var_1));
    var var_3 = func_3(select(arg_2.c.c.x, arg_1.c.x, true)) >= arg_1.c.x;
    var var_4 = !arg_3;
    return global2[_wgslsmith_index_u32(u_input.a.x, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global3 = array<vec2<bool>, 30>();
    let var_1 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(-193f)));
    var var_2 = func_6(35139u, func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, 848f, 830f)), _wgslsmith_div_vec3_f32(vec3<f32>(2976f, -723f, var_1), vec3<f32>(var_1, var_1, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, -346f), vec3<f32>(1567f, var_1, var_1))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, var_1, 1679f))), var_0.x))), global2[_wgslsmith_index_u32(min(u_input.a.x, select(~1u, global1.x, all(vec4<bool>(false, var_0.x, false, var_0.x)))), 28u)], (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(3081f, 1250f)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-406f, 188f)))) || false);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-var_1));
    global3 = array<vec2<bool>, 30>();
    var var_4 = countOneBits(vec2<i32>(var_2.c.b.x, 33683i));
    var_2 = Struct_2(~var_2.a | abs(min(_wgslsmith_div_u32(u_input.a.x, 63543u), ~global1.x)), ~func_6(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(251f, var_1, var_1))).c.x, var_2.c, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(u_input.a.x), _wgslsmith_sub_u32(36812u, global1.x)), 28u)], var_0.x || true).c.a.x, Struct_1(-vec4<i32>(var_4.x ^ 2147483647i, var_4.x, var_2.c.b.x, var_2.c.b.x), vec4<i32>(var_4.x, abs(reverseBits(-1i)), ~(-var_4.x), _wgslsmith_sub_i32(43651i ^ var_2.b, var_4.x)), var_2.c.c));
    global1 = select(vec4<u32>(global1.x, abs(_wgslsmith_add_u32(min(31762u, 55302u), 22543u)), u_input.a.x >> (0u % 32u), var_2.c.c.x), select(~vec4<u32>(var_2.c.c.x, var_2.c.c.x, reverseBits(var_2.a), ~4372u), ~var_2.c.c, !(!var_0.x)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(min(var_1, -246f)), _wgslsmith_f_op_f32(-1376f + var_1), _wgslsmith_f_op_f32(319f - var_1)))));
}

