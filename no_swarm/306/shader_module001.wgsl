struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: Struct_4;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-1811f, -1615f, 535f), vec3<f32>(1103f, 1000f, -1151f), vec3<f32>(-1298f, 1337f, -416f), vec3<f32>(-1420f, -1055f, 1252f), vec3<f32>(841f, 266f, 433f), vec3<f32>(-214f, 1000f, 161f), vec3<f32>(237f, 1481f, 865f), vec3<f32>(-1102f, 869f, -1091f), vec3<f32>(1673f, -433f, 1552f), vec3<f32>(500f, -1670f, -940f), vec3<f32>(-1158f, -1000f, 274f), vec3<f32>(-189f, 257f, 640f), vec3<f32>(-133f, 1000f, 527f), vec3<f32>(-653f, 381f, -958f), vec3<f32>(480f, -194f, -251f), vec3<f32>(307f, 463f, 1291f), vec3<f32>(-229f, -553f, -1234f), vec3<f32>(-1000f, -1000f, -313f), vec3<f32>(310f, -735f, -1320f), vec3<f32>(155f, 2295f, -489f), vec3<f32>(466f, 1000f, 321f), vec3<f32>(392f, 318f, -243f), vec3<f32>(1949f, -338f, -1555f), vec3<f32>(-2260f, -221f, -1011f), vec3<f32>(-391f, 349f, 293f), vec3<f32>(868f, -391f, -1010f), vec3<f32>(871f, -709f, 434f), vec3<f32>(446f, 1000f, -159f), vec3<f32>(331f, -1571f, 1000f), vec3<f32>(1090f, -293f, -1000f), vec3<f32>(-630f, 1777f, -1763f));

var<private> global3: Struct_5 = Struct_5(49i, Struct_4(vec4<bool>(true, true, false, false), Struct_3(2147483647i, 42653u, vec4<u32>(5517u, 1u, 15363u, 4294967295u), vec2<bool>(false, false), vec4<u32>(76943u, 1u, 35900u, 30603u)), 16054u, vec4<f32>(-991f, 1219f, -122f, -421f), vec3<i32>(2147483647i, 0i, -36319i)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_5(-_wgslsmith_mod_i32(~global3.a, global3.a) ^ -_wgslsmith_mod_i32(-15869i, -19597i >> (global1.b.e.x % 32u)), Struct_4(select(!(!global1.a), !select(global3.b.a, global1.a, true), global3.b.a.x | true), global3.b.b, 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.d.x, 1017f, global3.b.d.x, global3.b.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1170f, global1.d.x, -267f, 2115f) * vec4<f32>(-880f, global3.b.d.x, 1315f, global1.d.x)), global1.d)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-1i, global1.e.x, global3.a)), global1.e)));
    global0 = array<f32, 1>();
    var var_1 = vec2<i32>((i32(-1i) * 0i) | (20107i >> (u_input.b % 32u)), 51310i);
    global3 = Struct_5(global3.a, Struct_4(global1.a, Struct_3(min(-10762i | var_1.x, u_input.c.x), 52844u, _wgslsmith_sub_vec4_u32(global3.b.b.e, vec4<u32>(0u, global3.b.b.c.x, 1292u, 0u)), vec2<bool>(true | global1.a.x, global3.b.d.x >= global0[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_mult_vec4_u32(~var_0.b.b.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, 29880u, 4294967295u), var_0.b.b.e))), _wgslsmith_dot_vec3_u32(~vec3<u32>(8302u, var_0.b.b.e.x, u_input.a) >> (_wgslsmith_add_vec3_u32(var_0.b.b.c.yyx, global1.b.c.xzy) % vec3<u32>(32u)), vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.b, 1u, u_input.a), 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1322f, _wgslsmith_f_op_f32(294f - global1.d.x), -900f, 139f) + _wgslsmith_f_op_vec4_f32(-var_0.b.d)), firstTrailingBit(-vec3<i32>(-52090i, global1.b.a, global1.e.x)) >> (vec3<u32>(1u, var_0.b.b.b, ~0u) % vec3<u32>(32u))));
    let var_2 = var_0.b.b;
    return vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.d.x, 1007f) + 866f))) == var_0.b.d.x, var_2.e.x != 1u, any(vec3<bool>(true, global1.b.d.x, true)));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(58122u, global1.c), ~global3.b.b.e.zy, ~vec2<u32>(global3.b.c, firstTrailingBit(global1.c)));
    let var_1 = select(global1.a.xzw, func_3(), false);
    var var_2 = -2249f;
    global1 = Struct_4(global3.b.a, Struct_3(~_wgslsmith_mod_i32(1i, max(0i, 13289i)), ~4294967295u, _wgslsmith_mod_vec4_u32(~global1.b.e, _wgslsmith_mod_vec4_u32(global3.b.b.e, abs(vec4<u32>(1u, u_input.b, 12402u, 0u)))), global3.b.b.d, ~(~global1.b.e)), firstLeadingBit(global3.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.d.x, global0[_wgslsmith_index_u32(15494u, 1u)], -735f, global0[_wgslsmith_index_u32(4294967295u, 1u)])), global3.b.a))) + global3.b.d), global1.e);
    let var_3 = firstLeadingBit(min(315i, u_input.d));
    return global1.a;
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> Struct_3 {
    var var_0 = abs(i32(-1i) * -reverseBits(44601i));
    let var_1 = -firstTrailingBit(~(-2860i));
    var var_2 = !arg_0.b.d;
    var_2 = vec2<bool>(var_2.x, global1.b.d.x);
    var var_3 = Struct_1(vec2<bool>(true, any(global1.a.xw)), global3.b.a.xzz, _wgslsmith_clamp_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, -7316i, -17065i), vec3<i32>(60412i, -2713i, global3.b.e.x))) << (~countOneBits(vec3<u32>(27973u, 21487u, arg_0.b.c.x)) % vec3<u32>(32u)), -(~vec3<i32>(0i, arg_0.b.a, 46140i)), select(arg_0.e >> (countOneBits(vec3<u32>(global1.b.e.x, 44794u, global3.b.c)) % vec3<u32>(32u)), global1.e, select(vec3<bool>(true, true, global1.b.d.x), func_2().wzx, global3.b.c <= u_input.b))));
    return arg_0.b;
}

fn func_5(arg_0: Struct_4) -> i32 {
    return 19044i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(global1.e.x, 2147483647i, 0i, 57301i) << (global3.b.b.e % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(abs(max(vec4<i32>(global3.b.e.x, 2147483647i, 2147483647i, -1i), vec4<i32>(global3.a, global3.b.b.a, 2147483647i, 39583i))), vec4<i32>(37848i, arg_1.a, -502i, -20074i) >> (vec4<u32>(arg_1.e.x, u_input.a, 20813u, global1.b.b) % vec4<u32>(32u)))), min(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(-6915i, -2147483647i, u_input.c.x, 9099i)), vec4<i32>(global3.b.e.x, u_input.d, 52303i, 0i) ^ select(vec4<i32>(global3.a, global3.b.e.x, arg_1.a, global1.e.x), vec4<i32>(0i, 1i, -51051i, arg_1.a), global3.b.a)), min(vec4<i32>(_wgslsmith_mod_i32(global1.e.x, 2147483647i), arg_1.a, firstLeadingBit(0i), global3.b.e.x), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-25934i, -14007i, 47079i, arg_1.a), vec4<i32>(global1.e.x, -2147483647i, arg_1.a, -58110i), vec4<i32>(-19428i, -36374i, -15286i, -445i)))));
    var var_1 = 3410f;
    var var_2 = Struct_2(vec3<bool>(true, false, true), vec2<f32>(-408f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(35454u, 1u)], -1835f)), Struct_1(global1.a.wz, global3.b.a.yxy, var_0.yxx | (_wgslsmith_add_vec3_i32(var_0.yyw, global1.e) & -global1.e)), abs(vec4<i32>(_wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec3_i32(global1.e, global3.b.e)), _wgslsmith_sub_i32(-1i, ~arg_1.a), global3.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global3.b.e, global1.e), min(vec3<i32>(-33416i, 1i, -2147483647i), vec3<i32>(u_input.c.x, 1i, 22851i))))));
    global2 = array<vec3<f32>, 31>();
    var var_3 = func_5(Struct_4(vec4<bool>(true, any(select(vec3<bool>(var_2.a.x, global1.a.x, var_2.a.x), var_2.c.b, arg_1.d.x)), arg_1.d.x || all(var_2.c.b.xz), any(!vec2<bool>(global3.b.a.x, true))), func_4(Struct_4(func_2(), Struct_3(arg_1.a, 0u, vec4<u32>(1u, global3.b.c, u_input.b, global1.c), vec2<bool>(true, true), vec4<u32>(arg_1.e.x, arg_1.c.x, 4294967295u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.x, 4294967295u, 4294967295u), global1.b.e.wwx), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, global3.b.d.x, 342f, global0[_wgslsmith_index_u32(global1.c, 1u)]), vec4<f32>(global1.d.x, -521f, -1316f, 759f), true)), _wgslsmith_add_vec3_i32(var_0.wyx, var_2.c.c)), ~firstLeadingBit(3940i)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(29441u, global3.b.c, u_input.a, u_input.b)), global1.b.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2490f, global3.b.d.x, global0[_wgslsmith_index_u32(global3.b.c, 1u)], 929f), vec4<f32>(844f, 1225f, global3.b.d.x, -282f), vec4<bool>(arg_1.d.x, global1.a.x, false, true))), global3.b.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1371f, global3.b.d.x, -586f, -1479f) + vec4<f32>(-985f, 486f, 382f, 1937f))))), vec3<i32>(-5322i >> (_wgslsmith_dot_vec4_u32(global3.b.b.e, global3.b.b.e) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(66468i, 2147483647i, 1i), vec3<i32>(var_2.d.x, 1i, arg_1.a)), -18492i)));
    return Struct_2(vec3<bool>(arg_0.x, !global1.b.d.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b.d.zz)), var_2.c, -var_2.d | vec4<i32>(-8048i, abs(select(global1.b.a, 0i, false)), ~func_4(Struct_4(global1.a, global3.b.b, 4294967295u, global1.d, global3.b.e), 2147483647i).a, _wgslsmith_mod_i32(arg_1.a, -2147483647i) | 1i));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = ~arg_1.a;
    global0 = array<f32, 1>();
    global1 = global3.b;
    var var_1 = 14091u;
    var_1 = arg_0;
    return func_1(!(!func_3().yz), arg_1);
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_2 {
    global3 = Struct_5(32776i, global3.b);
    global3 = Struct_5(arg_1.c.c.x, Struct_4(func_2(), Struct_3(abs(-33359i & arg_1.d.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 6366u), _wgslsmith_div_vec2_u32(global3.b.b.c.yy, global3.b.b.c.zy)), global1.b.c, vec2<bool>(true, !global3.b.b.d.x), ~(~vec4<u32>(6849u, 55746u, 45067u, global3.b.b.c.x))), global3.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.d.x, global1.d.x, global0[_wgslsmith_index_u32(u_input.b, 1u)], global3.b.d.x)))) + _wgslsmith_f_op_vec4_f32(-global1.d)), arg_0));
    var var_0 = max(vec4<u32>(~global3.b.c, u_input.b, global1.b.b, global3.b.c), _wgslsmith_add_vec4_u32(vec4<u32>(max(max(1u, global1.c), max(u_input.a, u_input.a)), global3.b.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.b.b.e.x, global3.b.c, 1u), ~global3.b.b.c.zxw), _wgslsmith_dot_vec4_u32(global1.b.c, vec4<u32>(global3.b.b.c.x, global3.b.c, u_input.b, global3.b.b.e.x) << (vec4<u32>(u_input.a, 1u, global1.b.e.x, 4173u) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(25322u, global3.b.b.e.x, 16192u, u_input.b), ~vec4<u32>(1u, u_input.b, 24992u, 28262u)))));
    var_0 = vec4<u32>(global3.b.c, 22851u, var_0.x, ~var_0.x);
    var var_1 = func_3();
    return Struct_2(!global1.a.wwy, vec2<f32>(global1.d.x, 110f), func_6(~var_0.x, global3.b.b, func_6(func_4(Struct_4(global1.a, Struct_3(2147483647i, 52673u, vec4<u32>(13542u, 0u, 1u, global1.b.c.x), arg_1.c.a, global1.b.e), global3.b.b.e.x, global3.b.d, arg_1.c.c), -24819i).c.x, Struct_3(arg_0.x | global1.e.x, ~0u, abs(global1.b.e), select(vec2<bool>(global1.b.d.x, global3.b.a.x), global1.a.yw, arg_1.c.a.x), vec4<u32>(64618u, var_0.x, u_input.a, global3.b.b.c.x) >> (vec4<u32>(global3.b.c, 44567u, global3.b.c, global3.b.b.c.x) % vec4<u32>(32u))), func_1(func_1(vec2<bool>(var_1.x, false), Struct_3(global3.a, 25042u, global1.b.e, vec2<bool>(arg_1.a.x, global1.a.x), vec4<u32>(85289u, global1.b.c.x, u_input.b, 1u))).a.xx, global1.b), var_0.xxy), vec3<u32>(global1.b.c.x, ~(~global3.b.c), u_input.b)).c, firstTrailingBit(_wgslsmith_sub_vec4_i32(-arg_1.d, vec4<i32>(1i, _wgslsmith_mult_i32(arg_1.c.c.x, 0i), -65969i, _wgslsmith_sub_i32(0i, arg_0.x)))));
}

fn func_8(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_4 {
    let var_0 = u_input.d;
    global3 = Struct_5(-(_wgslsmith_mod_i32(var_0, global3.b.e.x) >> ((4294967295u & max(global1.c, arg_0.x)) % 32u)), global3.b);
    global0 = array<f32, 1>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 0u) << (~4294967295u % 32u), 1u)])), -345f));
    var_1 = vec2<f32>(-1232f, -1032f);
    return Struct_4(!vec4<bool>(!func_4(Struct_4(vec4<bool>(global3.b.b.d.x, arg_1.a.x, global1.a.x, false), Struct_3(1i, 16132u, global3.b.b.e, global3.b.b.d, vec4<u32>(4294967295u, 1u, 33698u, 0u)), 42213u, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], -603f, 1032f, global1.d.x), global1.e), var_0).d.x, global1.b.d.x, global1.a.x, true), Struct_3(func_5(Struct_4(select(global3.b.a, global3.b.a, vec4<bool>(global1.b.d.x, true, global1.b.d.x, false)), Struct_3(global1.e.x, 4294967295u, vec4<u32>(47632u, 22456u, global1.c, 1u), global3.b.b.d, global1.b.c), global3.b.b.e.x, global3.b.d, ~global1.e)), global1.c, vec4<u32>(~4294967295u, ~1u, ~arg_0.x, u_input.a), func_4(Struct_4(!vec4<bool>(true, global3.b.b.d.x, global1.b.d.x, arg_1.c.a.x), func_4(global3.b, 1i), global1.b.e.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1000f, 338f) * global1.d), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.c.x, var_0, -38133i), vec3<i32>(u_input.d, var_0, arg_1.d.x))), func_7(~vec3<i32>(global3.a, 8064i, 0i), func_1(vec2<bool>(true, false), global1.b)).d.x).d, _wgslsmith_clamp_vec4_u32(global1.b.e, select(~global3.b.b.e, global1.b.e, true), ~(global3.b.b.c | vec4<u32>(57851u, 1u, global3.b.b.b, 6420u)))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.b.b, arg_0.x & 87760u), vec2<u32>(_wgslsmith_div_u32(4294967295u, arg_0.x), 1u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b.d * global3.b.d) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, -329f, -1687f, global1.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.x, 1200f, global0[_wgslsmith_index_u32(global1.b.b, 1u)], global0[_wgslsmith_index_u32(global1.b.b, 1u)]), global1.d)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global3.b.d, global1.d)) - global1.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(369f, global0[_wgslsmith_index_u32(25747u, 1u)], -273f, global1.d.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(707f, -391f, -833f, global1.d.x) * global3.b.d)))))), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, global3.b.e.x, global3.a) ^ vec3<i32>(0i, var_0, var_0), global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(vec3<u32>(1u, u_input.b, ~(~global3.b.b.e.x << (0u % 32u))), func_7(global3.b.e, func_6(44492u << (_wgslsmith_mod_u32(global1.b.e.x, 121720u) % 32u), Struct_3(global1.b.a, 7139u, global1.b.e ^ global3.b.b.e, global1.b.d, vec4<u32>(global3.b.c, 32416u, 96020u, 1u)), func_1(select(vec2<bool>(true, false), global1.b.d, false), global3.b.b), countOneBits(vec3<u32>(global1.b.b, 2033u, 12471u)) | global1.b.e.zyw)));
    var var_1 = vec2<u32>(var_0.b.e.x, u_input.a >> (_wgslsmith_sub_u32(~(~global3.b.c), 1u) % 32u));
    var var_2 = vec2<i32>(1i, func_1(func_8(global1.b.e.zwz, func_1(vec2<bool>(true, true), Struct_3(u_input.d, global3.b.b.e.x, global3.b.b.c, vec2<bool>(false, true), global3.b.b.c))).b.d, func_8(_wgslsmith_mod_vec3_u32(var_0.b.e.ywy, ~vec3<u32>(0u, var_1.x, global3.b.b.c.x)), func_6(80657u, func_4(var_0, 49081i), func_1(vec2<bool>(global3.b.b.d.x, global1.b.d.x), var_0.b), func_4(var_0, u_input.d).e.xzz)).b).d.x);
    var var_3 = _wgslsmith_f_op_f32(var_0.d.x - 1f);
    let var_4 = ~(-_wgslsmith_mult_i32(global1.b.a, ~u_input.c.x)) << (firstTrailingBit(firstLeadingBit(~(~var_1.x))) % 32u);
    var_1 = vec2<u32>(var_1.x, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(649f, var_0.d.x), vec3<f32>(global3.b.d.x, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(16953u, global1.c >> (u_input.a % 32u)), 1u)], global3.b.d.x), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32((global1.b.b | 28585u) & 1u, ~1u), 1u)], global1.d.x), ~(max(vec4<u32>(13171u, global3.b.c, 61703u, var_0.b.e.x), global1.b.e) | func_8(global1.b.c.yzz, Struct_2(global3.b.a.zxx, vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 1u)], -1000f), Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.zxy, vec3<i32>(6766i, var_2.x, var_4)), vec4<i32>(0i, -1i, -6200i, var_0.b.a))).b.e) | _wgslsmith_sub_vec4_u32(vec4<u32>(~81123u, ~global1.c, _wgslsmith_add_u32(1u, var_0.c), ~u_input.b), _wgslsmith_div_vec4_u32(global3.b.b.e, vec4<u32>(1u, 0u, 2333u, global3.b.b.c.x))));
}

