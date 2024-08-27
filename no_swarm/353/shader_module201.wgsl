struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1744u;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<u32>(49554u, 4294967295u), vec2<i32>(-47916i, 23807i), false, vec4<f32>(-1107f, 598f, 429f, 171f), -14252i), Struct_1(vec2<u32>(0u, 65610u), vec2<i32>(1i, 929i), true, vec4<f32>(-1000f, 253f, 1000f, 1468f), 8239i), Struct_1(vec2<u32>(73135u, 4294967295u), vec2<i32>(-2416i, 0i), true, vec4<f32>(-2281f, 1000f, 2363f, -1507f), 8190i), Struct_1(vec2<u32>(46376u, 1u), vec2<i32>(19321i, 22868i), false, vec4<f32>(1000f, 268f, -483f, 558f), 17178i), Struct_1(vec2<u32>(7779u, 91824u), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec4<f32>(-1702f, -503f, 645f, -252f), -1i), Struct_1(vec2<u32>(1u, 1u), vec2<i32>(-1i, 11299i), false, vec4<f32>(571f, 1000f, -689f, 334f), i32(-2147483648)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<i32>(0i, -1i), true, vec4<f32>(-819f, 972f, -1072f, 496f), -102339i), Struct_1(vec2<u32>(73742u, 17609u), vec2<i32>(-21556i, -1i), false, vec4<f32>(760f, -823f, 603f, 978f), 1i), Struct_1(vec2<u32>(21130u, 0u), vec2<i32>(-25738i, 6606i), false, vec4<f32>(949f, 2705f, -412f, -1199f), 1i), Struct_1(vec2<u32>(12697u, 17500u), vec2<i32>(25131i, 0i), false, vec4<f32>(-880f, 1248f, 449f, -1650f), -1i), Struct_1(vec2<u32>(6u, 11510u), vec2<i32>(1i, 9978i), false, vec4<f32>(187f, -910f, 332f, 760f), i32(-2147483648)), Struct_1(vec2<u32>(46846u, 0u), vec2<i32>(1i, 1198i), true, vec4<f32>(675f, 1000f, -679f, -873f), 2184i), Struct_1(vec2<u32>(64951u, 32405u), vec2<i32>(-5007i, 20293i), false, vec4<f32>(-1308f, -151f, 230f, 261f), -30665i), Struct_1(vec2<u32>(1u, 11522u), vec2<i32>(-66966i, 26011i), false, vec4<f32>(-417f, -844f, 322f, 363f), 72664i), Struct_1(vec2<u32>(79468u, 13456u), vec2<i32>(13808i, 1i), true, vec4<f32>(-840f, -1318f, -657f, -633f), 1i), Struct_1(vec2<u32>(1u, 0u), vec2<i32>(i32(-2147483648), 16842i), true, vec4<f32>(173f, 1386f, 571f, 1141f), 2147483647i), Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), -9623i), false, vec4<f32>(-188f, 628f, -578f, 306f), 44371i), Struct_1(vec2<u32>(111200u, 28641u), vec2<i32>(0i, -15417i), true, vec4<f32>(-2373f, -559f, -536f, 513f), -1i), Struct_1(vec2<u32>(4294967295u, 32638u), vec2<i32>(36560i, i32(-2147483648)), false, vec4<f32>(1332f, 372f, 1199f, 1100f), -68602i));

var<private> global2: vec2<u32>;

var<private> global3: array<i32, 17> = array<i32, 17>(2375i, -33035i, i32(-2147483648), 20403i, -43052i, 1i, -2165i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), -1i, 10796i, 25271i, -29097i, 2147483647i, -67804i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = abs(-vec3<i32>(countOneBits(max(-41442i, arg_3.b.x)), -2147483647i, arg_2.x));
    global0 = u_input.c.x;
    var var_1 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_2.x, arg_0.e) >> (vec4<u32>(global2.x, 141761u, arg_0.a.x, global2.x) % vec4<u32>(32u)), select(vec4<i32>(28219i, arg_1.x, 0i, 1i), vec4<i32>(-1i, global3[_wgslsmith_index_u32(arg_3.a.x, 17u)], -10451i, -2147483647i), vec4<bool>(false, false, arg_3.c, arg_0.c)), abs(vec4<i32>(var_0.x, arg_1.x, 76232i, 0i))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 17u)], -18084i, 2147483647i, arg_0.e), vec4<i32>(arg_0.e, arg_0.b.x, 29545i, arg_2.x)), countOneBits(vec4<i32>(-11314i, -2147483647i, -52369i, arg_0.e)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_0.a.x, 17u)], 2147483647i, 1i, u_input.b.x), vec4<i32>(arg_0.b.x, arg_2.x, 11674i, -2147483647i), reverseBits(vec4<i32>(u_input.a, 1i, arg_3.b.x, arg_2.x))));
    var var_2 = _wgslsmith_mod_vec3_i32(var_0, vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -2631i, var_0.x), firstTrailingBit(arg_3.b.x), 0i >> (_wgslsmith_div_u32(arg_0.a.x, 1u) % 32u)));
    var var_3 = vec4<bool>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_3.a.x, ~u_input.c.x), ~23335u ^ _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)) < ~(_wgslsmith_clamp_u32(arg_0.a.x, arg_3.a.x, 10381u) >> (4294967295u % 32u)), true, true, true);
    return _wgslsmith_dot_vec4_i32(select(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -32759i, var_0.x, var_1.x), vec4<i32>(-2969i, 9597i, arg_3.e, var_2.x))), _wgslsmith_add_vec4_i32(min(vec4<i32>(var_2.x, u_input.a, 54951i, 1i), vec4<i32>(-2147483647i, arg_3.e, 2147483647i, arg_0.e)) ^ firstLeadingBit(vec4<i32>(var_0.x, -2147483647i, 27842i, -14399i)), _wgslsmith_div_vec4_i32(vec4<i32>(20319i, arg_2.x, var_1.x, 28221i) ^ vec4<i32>(arg_2.x, arg_1.x, -35177i, 0i), abs(vec4<i32>(var_0.x, 75826i, var_0.x, 1i)))), !var_3.x), vec4<i32>(reverseBits(_wgslsmith_mult_i32(arg_2.x, ~27253i)), 0i, 23158i, 2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = ~abs(arg_1 & ~(~arg_1));
    global3 = array<i32, 17>();
    let var_0 = _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(29104i, 15942i), -arg_0.b) << (u_input.c.x % 32u), func_3(arg_0, -countOneBits(vec2<i32>(-1i, -3785i)), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.b.x, arg_0.b.x), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_0.a.x, 17u)]))), Struct_1(~u_input.c.zx, max(arg_0.b, vec2<i32>(-6038i, arg_0.b.x)), true, _wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, -230f)), countOneBits(-2147483647i)))));
    var var_1 = select(!select(select(!vec4<bool>(arg_0.c, false, false, true), !vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), select(vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, arg_0.c), arg_0.c)), vec4<bool>(any(vec4<bool>(false, true, arg_0.c, false)), select(arg_0.c, true, arg_0.c), true, any(vec3<bool>(true, false, true))), select(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), select(vec4<bool>(arg_0.c, true, true, true), vec4<bool>(arg_0.c, false, arg_0.c, true), vec4<bool>(true, arg_0.c, arg_0.c, false)), select(vec4<bool>(true, arg_0.c, true, true), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false), false))), select(vec4<bool>(any(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, true), arg_0.c)), false, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true & select(arg_0.c, true, false)), select(select(vec4<bool>(false, arg_0.c, arg_0.c, false), vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c), global3[_wgslsmith_index_u32(global2.x, 17u)] >= -2221i), select(select(vec4<bool>(arg_0.c, false, false, arg_0.c), vec4<bool>(true, arg_0.c, true, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, false)), vec4<bool>(arg_0.c, arg_0.c, false, false), vec4<bool>(arg_0.c, true, true, arg_0.c)), select(vec4<bool>(false, false, true, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true), !vec4<bool>(true, arg_0.c, true, false)))), !(!arg_0.c));
    var var_2 = ~max(vec3<u32>(global2.x, ~global2.x, _wgslsmith_mod_u32(1499u, 1u)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_1, 1u, 4294967295u), vec3<u32>(global2.x, arg_1, arg_0.a.x))) & vec3<u32>(global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, arg_0.a.x), ~u_input.c), u_input.c), ~_wgslsmith_div_u32(_wgslsmith_div_u32(global2.x, 8118u), u_input.c.x));
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.d;
    global2 = min(~u_input.c.xx, _wgslsmith_add_vec2_u32(u_input.c.xz, max(arg_0, ~u_input.c.zy)));
    var var_1 = func_2(func_2(Struct_1(~(~u_input.c.xz), arg_2.b & vec2<i32>(global3[_wgslsmith_index_u32(78619u, 17u)], arg_2.b.x), !all(vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(step(arg_2.d, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(567f, -692f, var_0.x, var_0.x), arg_2.d)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global2.x, 17u)], arg_2.b.x), vec2<i32>(u_input.a, 30028i))), _wgslsmith_div_u32(abs(~26693u), u_input.c.x)), 2871u);
    var var_2 = vec4<i32>(u_input.b.x, 1i, -1i, countOneBits(_wgslsmith_mult_i32(min(u_input.a, arg_2.e), -2147483647i)));
    let var_3 = 886f;
    return arg_2.b.x;
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global0 = min(4325u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_sub_u32(max(global2.x, 0u), global2.x)), _wgslsmith_mod_u32(~global2.x, 25573u)));
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_1 = Struct_1(u_input.c.xz >> (vec2<u32>(u_input.c.x >> (~1u % 32u), 11961u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, 1u), vec4<u32>(0u, u_input.c.x, 0u, 1u)) % 32u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~u_input.b, vec2<i32>(-31863i, func_4(reverseBits(vec2<u32>(0u, 1u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-200f, 705f), vec2<f32>(var_0.x, -679f))), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 5917u)))), all(!select(vec4<bool>(arg_0, true, false, arg_0), select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, arg_1, arg_0, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, true, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -845f, 1070f, -988f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1722f, -433f, 1000f, var_0.x) * vec4<f32>(817f, var_0.x, var_0.x, 1479f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1882f, var_0.x, 1000f) - vec4<f32>(294f, -1078f, var_0.x, 204f))))))), 2147483647i);
    var_1 = Struct_1(var_1.a, vec2<i32>(-1i) * -(~var_1.b >> (_wgslsmith_sub_vec2_u32(vec2<u32>(84530u, 37745u), u_input.c.yy) % vec2<u32>(32u))), !(!any(vec4<bool>(false, var_1.c, arg_1, true))), var_1.d, ~u_input.a ^ _wgslsmith_sub_i32(max(u_input.b.x, 0i) ^ global3[_wgslsmith_index_u32(~52286u, 17u)], -(i32(-1i) * -6884i)));
    return _wgslsmith_dot_vec2_u32(~u_input.c.xy, func_2(func_2(Struct_1(var_1.a, u_input.b, arg_1, var_1.d, global3[_wgslsmith_index_u32(29886u, 17u)]), u_input.c.x), 0u).a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    global2 = select(vec2<u32>(func_1(true, any(vec2<bool>(false, true))) >> (global2.x % 32u), 4294967295u), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(~4294967295u, 16001u)), vec2<u32>(max(~global2.x, ~7411u), _wgslsmith_mult_u32(u_input.c.x & global2.x, 0u))), vec2<bool>(true, all(vec3<bool>(50705u <= global2.x, global3[_wgslsmith_index_u32(global2.x, 17u)] <= global3[_wgslsmith_index_u32(global2.x, 17u)], all(vec4<bool>(true, false, true, true))))));
    global1 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-347f, func_2(global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.c.x).d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(Struct_1(u_input.c.zx, u_input.b, false, vec4<f32>(438f, -1255f, -805f, -1000f), global3[_wgslsmith_index_u32(0u, 17u)]), 1u).d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-427f, 1013f, -1303f) - vec3<f32>(-672f, 435f, -327f)))), !vec3<bool>(false, all(vec3<bool>(true, true, false)), func_2(Struct_1(u_input.c.zz, vec2<i32>(-29004i, u_input.a), false, vec4<f32>(-572f, 215f, -288f, 739f), global3[_wgslsmith_index_u32(u_input.c.x, 17u)]), 21614u).c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(221f, -181f, -894f), vec3<f32>(365f, 1146f, -1000f))) + vec3<f32>(519f, -1197f, func_2(global1[_wgslsmith_index_u32(33173u, 19u)], 0u).d.x))));
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, global2.x, u_input.c.x), u_input.c), global2.x), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-586f))) < _wgslsmith_f_op_f32(select(-281f, 935f, !(var_0.x >= var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2579f, var_0.x)) * _wgslsmith_f_op_f32(min(var_0.x, -1471f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1318f) * _wgslsmith_f_op_f32(min(-1506f, -576f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2016f))), var_0.x) + vec4<f32>(251f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 703f)), _wgslsmith_div_f32(var_0.x, var_0.x))), ~(-_wgslsmith_clamp_i32(-1i, ~u_input.a, -34173i | u_input.a)));
    var var_2 = global1[_wgslsmith_index_u32(abs(global2.x), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(~min(var_1.e, var_1.e), func_1(!any(select(vec4<bool>(var_1.c, var_1.c, var_1.c, false), vec4<bool>(false, true, false, var_1.c), var_1.c)), true), var_1.d.xz);
}

