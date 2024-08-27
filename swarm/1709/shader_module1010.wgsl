struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7089u;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: i32;

var<private> global3: u32 = 1u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~firstTrailingBit(36486u)), ~(~arg_1.b.x), arg_1.b.x, 74586u), ~vec4<u32>(~4294967295u, _wgslsmith_add_u32(0u, ~arg_0.b.x), countOneBits(arg_1.b.x), 77972u));
    global0 = 4294967295u;
    let var_1 = arg_1;
    global2 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c >> (0u % 32u), 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(10863i, -3024i, 1i, -2147483647i), vec4<i32>(-2147483647i, 8019i, arg_0.d, 1i)), 1i), vec4<i32>(min(arg_0.c, -36457i), ~2147483647i, abs(1i), firstLeadingBit(u_input.a.x)))), 0i);
    let var_2 = true;
    return 35322i;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(!vec3<bool>(all(vec4<bool>(true, global1.x, false, false)) || true, !(u_input.a.x < 0i), global1.x), vec2<u32>(1u, _wgslsmith_sub_u32(~32449u, ~39601u)) & vec2<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(9528u, 4294967295u, 111543u, 43839u), vec4<u32>(4294967295u, 24002u, 1u, 4294967295u)), 0u), 31439u), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_sub_i32(arg_0, arg_0), _wgslsmith_mod_i32(14941i, arg_0), func_3(Struct_1(vec3<bool>(true, false, global1.x), vec2<u32>(9327u, 8699u), -3285i, -52000i, vec3<bool>(global1.x, false, global1.x)), Struct_1(vec3<bool>(global1.x, false, global1.x), vec2<u32>(4294967295u, 8962u), u_input.a.x, arg_0, vec3<bool>(false, true, false)))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_0, 16506i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)))), abs(-u_input.a.x ^ _wgslsmith_dot_vec2_i32(u_input.a.zy, countOneBits(u_input.a.xz))), !select(vec3<bool>(global1.x, true, false), !(!vec3<bool>(false, global1.x, false)), global1.x));
    let var_1 = Struct_1(var_0.e, vec2<u32>(10489u, ~countOneBits(1u)), arg_0, _wgslsmith_add_i32(0i << (var_0.b.x % 32u), abs(u_input.a.x) >> (var_0.b.x % 32u)), !select(vec3<bool>(var_0.a.x, any(vec2<bool>(global1.x, false)), true), select(vec3<bool>(true, false, global1.x), !vec3<bool>(var_0.a.x, global1.x, var_0.a.x), arg_0 >= arg_0), all(vec3<bool>(global1.x, var_0.a.x, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 715f, 405f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-696f, -1352f, -266f), vec3<f32>(-965f, 1186f, -837f))), vec3<f32>(156f, 219f, -831f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1639f, 185f)), _wgslsmith_div_vec3_f32(vec3<f32>(-645f, 684f, -374f), vec3<f32>(556f, 556f, 642f)), var_1.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-301f * -1466f), _wgslsmith_f_op_f32(1841f + -402f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(select(-1493f, -708f, var_1.e.x)))))));
    var_0 = var_1;
    global1 = var_1.e;
    return Struct_1(var_1.a, vec2<u32>(~_wgslsmith_div_u32(72684u | var_0.b.x, var_1.b.x | var_0.b.x), 0u), abs(_wgslsmith_mod_i32(1i, -min(-11137i, arg_0))), 81818i, select(vec3<bool>(var_1.a.x, global1.x | (var_1.b.x == 57560u), any(vec4<bool>(var_1.a.x, true, global1.x, global1.x))), var_1.e, vec3<bool>(var_1.e.x, true, var_2.x <= var_2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_1 {
    global3 = 0u;
    global0 = _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x) | ~arg_0.b.x;
    var var_0 = ~countOneBits(u_input.a.x);
    var var_1 = func_2(-u_input.a.x);
    let var_2 = var_1.b;
    return func_2(u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global3 = ~57033u;
    var var_0 = ~(u_input.a.zx << (vec2<u32>(0u, arg_1) % vec2<u32>(32u)));
    let var_1 = arg_0;
    var var_2 = Struct_1(func_2(var_1.c).e, ~arg_2.b, var_0.x, -1i, func_2(_wgslsmith_mod_i32(u_input.a.x, min(abs(-2147483647i), _wgslsmith_clamp_i32(arg_0.c, u_input.a.x, 0i)))).a);
    let var_3 = func_1(Struct_1(!arg_2.a, var_1.b, u_input.a.x, -14010i, vec3<bool>(true, true, !any(vec2<bool>(arg_0.e.x, true)))), vec3<bool>(var_2.a.x, true, any(!(!vec4<bool>(false, global1.x, arg_2.e.x, true)))));
    return Struct_1(arg_0.e, ~(~(~arg_0.b)), func_2(_wgslsmith_div_i32(2147483647i, firstLeadingBit(abs(-1341i)))).c, var_3.d, var_3.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-190f)))), _wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1587f)))), 1214f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, -1000f, 206f), vec3<f32>(363f, -1000f, var_0.x))))))));
    var var_2 = vec4<i32>(6744i, u_input.a.x, u_input.a.x, countOneBits(i32(-1i) * -abs(arg_0.d)));
    var var_3 = arg_1;
    global3 = arg_1.b.x;
    return ~(~max(~(vec2<u32>(0u, 1u) << (arg_0.b % vec2<u32>(32u))), ~(~vec2<u32>(4294967295u, arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(reverseBits(select(53787u, ~62397u, true && global1.x)));
    let var_1 = Struct_1(!vec3<bool>(global1.x, all(select(vec3<bool>(true, true, global1.x), vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, true, global1.x))), true), ~func_5(func_4(func_1(Struct_1(vec3<bool>(global1.x, true, global1.x), vec2<u32>(30749u, 4294967295u), u_input.a.x, 1i, vec3<bool>(false, global1.x, global1.x)), vec3<bool>(false, false, false)), 11129u, Struct_1(vec3<bool>(false, global1.x, global1.x), vec2<u32>(1u, 0u), -11210i, u_input.a.x, vec3<bool>(false, global1.x, true))), func_4(Struct_1(vec3<bool>(true, global1.x, false), vec2<u32>(62968u, 34255u), u_input.a.x, u_input.a.x, vec3<bool>(false, false, global1.x)), select(1u, 0u, global1.x), func_4(Struct_1(vec3<bool>(false, true, global1.x), vec2<u32>(1u, 37780u), u_input.a.x, -2147483647i, vec3<bool>(false, false, false)), 6452u, Struct_1(vec3<bool>(false, true, global1.x), vec2<u32>(4294967295u, 1u), u_input.a.x, 0i, vec3<bool>(true, global1.x, true))))), -32428i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x << (49123u % 32u), -2147483647i, u_input.a.x), u_input.a) & ~_wgslsmith_div_i32(select(1i, 42544i, global1.x), ~u_input.a.x), !func_4(Struct_1(vec3<bool>(false, global1.x, true), vec2<u32>(4294967295u, 1u), u_input.a.x, abs(u_input.a.x), vec3<bool>(global1.x, true, false)), firstTrailingBit(78790u) | _wgslsmith_dot_vec4_u32(vec4<u32>(72301u, 0u, 1u, 21725u), vec4<u32>(62064u, 9838u, 23200u, 4294967295u)), Struct_1(vec3<bool>(true, false, global1.x), ~vec2<u32>(8307u, 0u), ~9038i, -21671i, func_4(Struct_1(vec3<bool>(false, global1.x, true), vec2<u32>(27993u, 4294967295u), u_input.a.x, u_input.a.x, vec3<bool>(global1.x, false, false)), 2049u, Struct_1(vec3<bool>(true, global1.x, global1.x), vec2<u32>(0u, 73783u), u_input.a.x, -1i, vec3<bool>(global1.x, global1.x, global1.x))).a)).e);
    var var_2 = var_1;
    global0 = func_1(var_1, !(!func_4(Struct_1(vec3<bool>(var_2.e.x, global1.x, var_1.a.x), vec2<u32>(12618u, var_1.b.x), -1791i, 15221i, var_1.a), var_2.b.x, var_1).a)).b.x & 4294967295u;
    var var_3 = vec2<bool>(!var_2.a.x, all(select(select(vec4<bool>(var_1.e.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, true, false), true), !vec4<bool>(false, false, var_2.e.x, var_2.a.x), true | var_1.a.x)) || !any(select(vec4<bool>(true, false, var_1.a.x, var_1.e.x), vec4<bool>(true, false, var_2.a.x, var_1.e.x), true)));
    let var_4 = vec3<f32>(928f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(-832f - 756f))), _wgslsmith_f_op_f32(f32(-1f) * -399f))))), -1325f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(-1201f, -1000f)), _wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(round(339f))), vec4<i32>(var_2.c, ~(~var_1.d), var_1.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.d, 0i, u_input.a.x, var_1.d), vec4<i32>(29047i, 2147483647i, var_2.c, var_2.c))) << (select(_wgslsmith_add_vec4_u32(select(vec4<u32>(var_2.b.x, 1363u, var_1.b.x, var_2.b.x), vec4<u32>(4294967295u, var_1.b.x, 20119u, 4294967295u), true), vec4<u32>(1u, var_1.b.x, 10005u, var_1.b.x)), ~countOneBits(vec4<u32>(var_2.b.x, var_1.b.x, var_2.b.x, 4294967295u)), var_1.e.x) % vec4<u32>(32u)), ~1u);
}

