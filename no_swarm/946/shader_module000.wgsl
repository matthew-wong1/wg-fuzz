struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<i32> {
    let var_0 = Struct_3(-_wgslsmith_sub_vec2_i32(vec2<i32>(40881i, _wgslsmith_mult_i32(-37195i, u_input.a)), min(_wgslsmith_mult_vec2_i32(vec2<i32>(7075i, arg_0.b.b), vec2<i32>(-68510i, 32406i)), countOneBits(vec2<i32>(arg_0.b.b, u_input.a)))), 75932u);
    let var_1 = vec2<bool>(false, true);
    let var_2 = Struct_5(var_0, _wgslsmith_mult_vec4_i32(abs(countOneBits(vec4<i32>(u_input.a, var_0.a.x, -2147483647i, 30247i)) & ~vec4<i32>(u_input.a, -14890i, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, u_input.a) & max(vec4<i32>(14446i, 3413i, 28722i, arg_0.b.b), vec4<i32>(43424i, arg_0.b.b, arg_0.b.b, 16814i)), ~firstLeadingBit(vec4<i32>(arg_0.b.b, 12680i, var_0.a.x, arg_0.b.b)))));
    let var_3 = select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(global2[_wgslsmith_index_u32(select(~(~0u), firstTrailingBit(59689u ^ arg_1), _wgslsmith_div_u32(u_input.b.x, global0.x) <= ~50639u), 29u)], vec3<bool>(true, true, true), !(!vec3<bool>(var_1.x, var_1.x, var_1.x))), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x)), 29u)]);
    let var_4 = arg_0.a;
    return abs(var_0.a);
}

fn func_2() -> Struct_2 {
    global0 = vec3<u32>(_wgslsmith_div_u32(global0.x, 1u) | u_input.c.x, 61573u, u_input.c.x);
    global1 = u_input.a;
    let var_0 = Struct_5(Struct_3(~func_3(Struct_2(vec4<u32>(global0.x, u_input.b.x, 33045u, global0.x), Struct_1(229f, -19576i)), firstTrailingBit(global0.x)), 16821u), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, ~(-51410i), 57045i, i32(-1i) * -2147483647i), -(~vec4<i32>(-5810i, 0i, -40815i, u_input.a)) & ~(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-2147483647i, 6881i, u_input.a, 1i)), countOneBits(min(vec4<i32>(1546i, u_input.a, 1i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 6468u, 16289u, global0.x), vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 36322u)), ~vec4<u32>(u_input.b.x, 50311u, u_input.b.x, 0u)) % vec4<u32>(32u))));
    global2 = array<vec3<bool>, 29>();
    var var_1 = Struct_5(Struct_3(firstLeadingBit(_wgslsmith_div_vec2_i32(var_0.a.a, vec2<i32>(var_0.b.x, var_0.b.x))) ^ var_0.b.yy, abs(_wgslsmith_add_u32(66187u, var_0.a.b | 4294967295u))), var_0.b);
    return Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(~1u, 0u, ~global0.x | global0.x, abs(_wgslsmith_clamp_u32(4294967295u, 0u, 41175u))), min(~(~vec4<u32>(global0.x, 1u, var_0.a.b, 30297u)), ~(vec4<u32>(8368u, var_0.a.b, 4294967295u, 59867u) | vec4<u32>(u_input.c.x, u_input.c.x, global0.x, 0u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2080f))), abs(0i)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_4 {
    var var_0 = vec3<bool>(arg_1, all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), arg_0.a.x << (global0.x % 32u)), 29u)]), any(vec3<bool>(false, false, true)));
    let var_1 = Struct_3(~reverseBits(select(vec2<i32>(-13872i, u_input.a), func_3(Struct_2(vec4<u32>(global0.x, arg_0.a.x, arg_0.a.x, 59021u), Struct_1(1340f, arg_0.b.b)), arg_0.a.x), true)), select(abs(43113u), 20413u, !any(!vec3<bool>(false, var_0.x, true))));
    var var_2 = Struct_3(var_1.a, min(~(~_wgslsmith_mod_u32(u_input.b.x, arg_0.a.x)), var_1.b));
    let var_3 = Struct_4(Struct_3(max(firstTrailingBit(vec2<i32>(-25720i, var_1.a.x)), select(var_2.a, var_1.a, arg_1)) ^ -max(var_1.a, var_1.a), 45386u), func_2().b);
    let var_4 = arg_0.b.a;
    return Struct_4(Struct_3(select(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(var_3.a.a, vec2<i32>(2147483647i, -29196i))), func_3(Struct_2(vec4<u32>(global0.x, u_input.c.x, 63961u, 0u), Struct_1(1585f, u_input.a)), ~u_input.c.x), vec2<bool>(u_input.c.x > 35947u, false)), 4294967295u), var_3.b);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_5(Struct_3(arg_1.a.a & func_4(func_2(), u_input.b.x == arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-544f, -1318f, -257f) - vec3<f32>(arg_1.b.a, -941f, arg_1.b.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-748f, arg_1.b.a)))).a.a, 1u), vec4<i32>(66043i, _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(u_input.a, 29708i, -2147483647i), 0i), ~(~u_input.a), max(-19247i, u_input.a)));
    let var_1 = Struct_4(func_4(func_2(), true, vec3<f32>(-1190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-860f * arg_1.b.a)), _wgslsmith_f_op_f32(-arg_1.b.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, -162f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, arg_1.b.a)), vec2<f32>(1000f, -972f)))).a, Struct_1(_wgslsmith_f_op_f32(func_2().b.a + arg_1.b.a), abs(_wgslsmith_mod_i32(-45277i << (u_input.c.x % 32u), max(2147483647i, var_0.b.x)))));
    var var_2 = _wgslsmith_sub_vec2_u32(~u_input.c.xy, u_input.b);
    global1 = func_3(Struct_2(vec4<u32>(u_input.c.x, ~_wgslsmith_mod_u32(41121u, var_1.a.b), countOneBits(arg_0 >> (0u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_1.a.b, 3418u, 0u), vec4<u32>(38165u, u_input.b.x, u_input.b.x, 4294967295u) ^ vec4<u32>(4294967295u, var_2.x, 4294967295u, 1u))), Struct_1(1f, i32(-1i) * -22573i)), var_1.a.b).x;
    let var_3 = 1i;
    return Struct_2(firstLeadingBit(vec4<u32>(arg_1.a.b, ~var_2.x ^ arg_2, ~_wgslsmith_clamp_u32(var_2.x, 1u, 45212u), max(~26180u, _wgslsmith_sub_u32(30106u, arg_1.a.b)))), var_1.b);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: Struct_5) -> f32 {
    var var_0 = arg_0.b;
    global1 = ~(arg_2.b.x | -arg_0.b.b);
    let var_1 = arg_0;
    global0 = vec3<u32>(~arg_2.a.b, arg_3.a.b, ~_wgslsmith_add_u32(min(arg_0.a.x, arg_3.a.b), 46550u)) << (~vec3<u32>(~arg_2.a.b, ~1u, 24553u) % vec3<u32>(32u));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b.a, var_1.b.a))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, -1574f) - vec2<f32>(arg_1, -1000f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(656f)), 176f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1363f)), var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(323f, 222f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, 1229f) + vec2<f32>(var_1.b.a, 1106f)) * vec2<f32>(-1288f, -769f)))));
    return func_2().b.a;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_6(func_5(firstLeadingBit(arg_0.b), func_4(func_2(), true, vec3<f32>(1f, 1f, 1f), vec2<f32>(955f, 654f)), func_4(Struct_2(vec4<u32>(23143u, 0u, u_input.b.x, 4294967295u), Struct_1(-970f, arg_1)), true, _wgslsmith_div_vec3_f32(vec3<f32>(633f, -1384f, -629f), vec3<f32>(403f, 624f, 964f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 964f))).a.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_f_op_f32(-1504f - -2273f)))), Struct_5(Struct_3(vec2<i32>(arg_1, 12550i), ~1851u), vec4<i32>(i32(-1i) * -2147483647i, arg_1, -arg_1, arg_1 & arg_0.a.x)), Struct_5(func_4(func_5(43889u, Struct_4(arg_0, Struct_1(-1053f, 1759i)), 1u), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1720f, 1941f, -666f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-287f, -1014f) - vec2<f32>(-1093f, 1000f))).a, vec4<i32>(arg_0.a.x, arg_1, arg_0.a.x, -2147483647i) ^ (vec4<i32>(1i, 14566i, -43296i, -2147483647i) >> (vec4<u32>(u_input.b.x, arg_0.b, global0.x, u_input.b.x) % vec4<u32>(32u)))))), 1i);
    global2 = array<vec3<bool>, 29>();
    let var_1 = ~(~vec2<u32>(u_input.c.x ^ 57869u, ~92213u) | u_input.b);
    let var_2 = func_4(func_2(), true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 460f, var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1254f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1435f, var_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -457f))) * vec2<f32>(var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a)))));
    var var_3 = true;
    return var_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(func_1(Struct_3(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-9963i, u_input.a), vec2<i32>(1i, u_input.a))), 38934u), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.a, 1i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, -26398i), vec3<i32>(u_input.a, u_input.a, u_input.a))))));
    global2 = array<vec3<bool>, 29>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 1000f)), -953f) - _wgslsmith_f_op_f32(floor(func_5(1u, func_4(Struct_2(vec4<u32>(global0.x, 43941u, 7588u, u_input.c.x), Struct_1(1000f, u_input.a)), false, vec3<f32>(var_0, var_0, var_0), vec2<f32>(var_0, var_0)), select(23334u, 1u, false)).b.a))), 876f, 1046f);
    let var_2 = ~_wgslsmith_dot_vec2_u32(global0.xy, global0.zz);
    global0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_2, ~(~3234u)), 4294967295u), abs(-1i), _wgslsmith_f_op_f32(var_1.x * var_1.x));
}

