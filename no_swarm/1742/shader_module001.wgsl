struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1649f, 1344f), vec2<f32>(-501f, 779f), vec2<f32>(-1207f, -617f), vec2<f32>(507f, 910f), vec2<f32>(-772f, -2442f), vec2<f32>(-973f, 213f), vec2<f32>(194f, -109f), vec2<f32>(-331f, -621f), vec2<f32>(247f, -1216f), vec2<f32>(1000f, -921f), vec2<f32>(-905f, 539f));

var<private> global1: Struct_1 = Struct_1(1i, vec4<u32>(8799u, 4294967295u, 1u, 0u), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(2147483647i, vec4<u32>(14277u, 5068u, 0u, 4294967295u), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(1295i, vec4<u32>(40377u, 7108u, 0u, 34174u), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(-18699i, vec4<u32>(1u, 0u, 26072u, 5322u), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(-32621i, vec4<u32>(92442u, 47589u, 89258u, 0u), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(-1i, vec4<u32>(0u, 76281u, 1u, 64684u), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(0i, vec4<u32>(1u, 0u, 11089u, 54967u), vec2<bool>(false, false), vec2<bool>(false, true)), Struct_1(13111i, vec4<u32>(3765u, 4294967295u, 51872u, 6681u), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(33327i, vec4<u32>(14047u, 34433u, 0u, 1u), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(40734i, vec4<u32>(0u, 4294967295u, 75078u, 23496u), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(2147483647i, vec4<u32>(37943u, 66386u, 34426u, 1012u), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(2147483647i, vec4<u32>(4294967295u, 1u, 16242u, 0u), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(-24242i, vec4<u32>(21446u, 47309u, 1u, 0u), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(2147483647i, vec4<u32>(59491u, 1u, 1u, 4294967295u), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(1i, vec4<u32>(22480u, 17778u, 1u, 34629u), vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(23202i, vec4<u32>(79584u, 36362u, 1u, 0u), vec2<bool>(true, true), vec2<bool>(false, true)), Struct_1(10055i, vec4<u32>(0u, 72230u, 27894u, 18823u), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(30473i, vec4<u32>(63718u, 4294967295u, 1u, 113442u), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(42178i, vec4<u32>(11181u, 1u, 0u, 26608u), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(2147483647i, vec4<u32>(1u, 40588u, 82409u, 59109u), vec2<bool>(false, true), vec2<bool>(true, false)), Struct_1(1i, vec4<u32>(0u, 34136u, 7231u, 4294967295u), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(i32(-2147483648), vec4<u32>(19872u, 0u, 13394u, 1u), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(1i, vec4<u32>(4294967295u, 1u, 0u, 56936u), vec2<bool>(true, false), vec2<bool>(false, true)));

var<private> global3: array<f32, 26> = array<f32, 26>(-702f, -172f, 417f, -258f, 1915f, 2541f, 486f, -1407f, 1136f, -239f, -1130f, -1117f, -1661f, -722f, 108f, -599f, -1207f, 297f, 198f, -151f, -1000f, 146f, -667f, 948f, -570f, -452f);

var<private> global4: bool = true;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2437f - 669f))));
    var var_1 = -1i;
    let var_2 = Struct_1(abs(25425i), ~global1.b ^ _wgslsmith_div_vec4_u32(~(~global1.b), ~(vec4<u32>(4294967295u, 22586u, 4294967295u, arg_2) ^ global1.b)), select(global1.d, !vec2<bool>(global1.c.x, true), !(!(!arg_0.b.d))), arg_0.b.d);
    global4 = var_2.c.x;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(~39894u, 26u)], _wgslsmith_f_op_f32(-var_0))))), var_0));
    return var_2;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(Struct_2(1i, Struct_1(_wgslsmith_mod_i32(0i << (u_input.b.x % 32u), firstTrailingBit(u_input.a)), ~_wgslsmith_clamp_vec4_u32(arg_0.b, arg_0.b, vec4<u32>(u_input.b.x, u_input.b.x, 0u, 11943u)), vec2<bool>(global1.a <= 1i, any(vec4<bool>(arg_0.c.x, global1.d.x, arg_0.d.x, arg_0.c.x))), !vec2<bool>(false, global1.d.x)), reverseBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.b.x, 17067u, arg_0.b.x), vec3<u32>(0u, arg_0.b.x, 1u) ^ vec3<u32>(arg_0.b.x, arg_0.b.x, 9217u)))), global1.b.x, arg_0.b.x);
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(arg_0.b.x, 1u), var_0.b.x, abs(_wgslsmith_dot_vec4_u32(select(abs(arg_0.b), _wgslsmith_div_vec4_u32(global1.b, arg_0.b), !vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x)), ~(~arg_0.b))), abs(_wgslsmith_clamp_u32(66730u, ~48559u, 0u)) | func_2(Struct_2(~1i, Struct_1(-30758i, vec4<u32>(50146u, global1.b.x, arg_0.b.x, 0u), global1.d, vec2<bool>(false, var_0.d.x)), vec3<u32>(4294967295u, u_input.b.x, 1u)), arg_0.b.x, ~40523u).b.x);
    let var_2 = arg_0;
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(14594u, ~_wgslsmith_mult_u32(1u, var_2.b.x), var_2.b.x), func_2(Struct_2(firstTrailingBit(i32(-1i) * -7079i), func_2(Struct_2(var_2.a, arg_0, vec3<u32>(67226u, var_1.x, 6808u)), abs(48221u), 0u), select(u_input.b, firstTrailingBit(vec3<u32>(4294967295u, 99935u, global1.b.x)), !vec3<bool>(true, arg_0.d.x, false))), var_1.x, 3994u).b.x), 26u)];
    var_1 = countOneBits(max(vec4<u32>(var_2.b.x, firstLeadingBit(_wgslsmith_sub_u32(10422u, var_1.x)), select(firstLeadingBit(arg_0.b.x), var_2.b.x, true), ~var_1.x), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.b.yyx), global1.b.wzx), var_2.b.x, global1.b.x, 1u)));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.a, ~u_input.a, -35835i), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(arg_0.a, var_2.a, -3501i, 1i)), select(-vec4<i32>(arg_0.a, arg_0.a, -34630i, arg_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, -2147483647i, arg_0.a), vec4<i32>(15096i, arg_0.a, global1.a, 2147483647i)), select(vec4<bool>(global1.d.x, var_0.c.x, false, false), vec4<bool>(var_2.c.x, var_2.c.x, true, true), vec4<bool>(true, var_0.d.x, arg_0.c.x, arg_0.c.x))))), arg_0.b, arg_0.d, global1.c);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global1 = func_3(func_2(Struct_2(-u_input.a ^ _wgslsmith_div_i32(1i, 33155i), Struct_1(_wgslsmith_clamp_i32(u_input.a, 50129i, global1.a), vec4<u32>(4151u, global1.b.x, 49422u, 1u), global1.d, vec2<bool>(global1.d.x, false)), vec3<u32>(_wgslsmith_mult_u32(global1.b.x, u_input.b.x), _wgslsmith_div_u32(global1.b.x, 24368u), ~u_input.b.x)), global1.b.x, ~(~u_input.b.x)));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, u_input.b.x, u_input.b.x), u_input.b)), vec3<u32>(firstLeadingBit(global1.b.x << (4294967295u % 32u)), abs(_wgslsmith_add_u32(0u, 61385u)), ~u_input.b.x)) >> (_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec4_u32(global1.b, global1.b) ^ _wgslsmith_dot_vec3_u32(global1.b.wzy, vec3<u32>(u_input.b.x, u_input.b.x, 134766u)), u_input.b.x), func_2(Struct_2(-1050i, global2[_wgslsmith_index_u32(global1.b.x, 22u)], u_input.b), reverseBits(global1.b.x), ~30904u).b.x >> (firstTrailingBit(~4294967295u) % 32u), u_input.b.x) % 32u), 22u)];
    let var_0 = ~(-_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2536i, global1.a) & vec2<i32>(1845i, u_input.a), -vec2<i32>(2147483647i, global1.a), vec2<i32>(0i, -2147483647i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, global1.a, -1949i), vec3<i32>(-18391i, u_input.a, -4472i)), i32(-1i) * -1i)));
    let var_1 = Struct_2(-1i, func_2(Struct_2(~global1.a, Struct_1(1i, vec4<u32>(4294967295u, global1.b.x, global1.b.x, u_input.b.x), select(vec2<bool>(arg_0, false), global1.d, global1.d.x), !vec2<bool>(arg_0, global1.c.x)), global1.b.yzy), abs(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), u_input.b.x), ~abs(~vec3<u32>(0u, 1u, u_input.b.x) ^ vec3<u32>(global1.b.x, 45559u, global1.b.x)));
    var var_2 = global1.c.x;
    return !var_1.b.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = !select(!vec4<bool>(!global1.c.x, !arg_1.d.x, arg_0.d.x, global1.a < arg_0.a), !select(!vec4<bool>(global1.d.x, false, global1.d.x, true), vec4<bool>(arg_0.d.x, global1.c.x, arg_0.c.x, global1.d.x), global1.b.x >= 62394u), all(select(!vec4<bool>(true, global1.d.x, true, true), select(vec4<bool>(arg_0.d.x, true, true, true), vec4<bool>(global1.d.x, global1.d.x, arg_0.c.x, false), vec4<bool>(arg_0.d.x, true, global1.d.x, arg_0.c.x)), any(vec4<bool>(arg_0.c.x, true, arg_1.c.x, arg_1.d.x)))));
    var var_1 = vec4<bool>(false, arg_1.d.x, !arg_0.c.x, any(select(var_0.ww, vec2<bool>(global3[_wgslsmith_index_u32(1794u, 26u)] != global3[_wgslsmith_index_u32(arg_0.b.x, 26u)], !arg_1.c.x), global1.d.x & true)));
    var var_2 = Struct_2(-(~func_3(global2[_wgslsmith_index_u32(u_input.b.x, 22u)]).a), Struct_1(arg_1.a & 2147483647i, ~arg_1.b, vec2<bool>(!arg_1.c.x != true, false), global1.c), vec3<u32>(func_3(func_2(Struct_2(2147483647i, Struct_1(global1.a, vec4<u32>(43566u, u_input.b.x, 24904u, 4294967295u), global1.d, var_0.zx), vec3<u32>(arg_0.b.x, arg_0.b.x, global1.b.x)), arg_3.x ^ 6671u, arg_0.b.x ^ 1u)).b.x, _wgslsmith_mult_u32(arg_0.b.x, reverseBits(arg_3.x) >> ((global1.b.x << (15989u % 32u)) % 32u)), arg_3.x));
    var var_3 = select(vec4<bool>(true, var_0.x, var_0.x, false | !(!var_2.b.d.x)), var_0, vec4<bool>(true, true, false, all(vec3<bool>(arg_0.c.x, !global1.d.x, all(var_0)))));
    let var_4 = Struct_2(0i, func_3(global2[_wgslsmith_index_u32(var_2.b.b.x, 22u)]), abs(~arg_1.b.yzw) >> (~(min(vec3<u32>(u_input.b.x, u_input.b.x, arg_1.b.x), var_2.c) & select(vec3<u32>(6323u, arg_0.b.x, 1u), vec3<u32>(45097u, arg_0.b.x, arg_3.x), var_0.zxz)) % vec3<u32>(32u)));
    return Struct_1(-u_input.a, ~func_3(Struct_1(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(2147483647i, 0i)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, 35511u, arg_3.x, 0u), arg_0.b, vec4<u32>(4294967295u, u_input.b.x, 1315u, 0u)), var_0.xz, !var_1.wz)).b, select(arg_1.d, func_1(!var_4.b.d.x), func_3(Struct_1(2147483647i, vec4<u32>(4294967295u, arg_3.x, arg_1.b.x, var_4.c.x), vec2<bool>(false, global1.d.x), select(vec2<bool>(var_2.b.c.x, false), global1.c, var_0.zy))).c.x), vec2<bool>(!var_2.b.d.x, func_1(select(select(global1.d.x, true, arg_1.d.x), global3[_wgslsmith_index_u32(1u, 26u)] < global3[_wgslsmith_index_u32(0u, 26u)], 892f < global3[_wgslsmith_index_u32(4294967295u, 26u)])).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~_wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(1i, -1i)), (_wgslsmith_div_vec4_u32(global1.b, global1.b) | global1.b) << (_wgslsmith_mod_vec4_u32(~global1.b, vec4<u32>(1u, u_input.b.x, 0u, 4294967295u)) % vec4<u32>(32u)), !func_1(all(global1.d)), func_2(Struct_2(-u_input.a, global2[_wgslsmith_index_u32(abs(0u), 22u)], vec3<u32>(45751u, u_input.b.x, 0u)), ~(~u_input.b.x), func_3(global2[_wgslsmith_index_u32(~1u, 22u)]).b.x).d), Struct_1(1i, select(vec4<u32>(~global1.b.x, _wgslsmith_div_u32(global1.b.x, u_input.b.x), ~global1.b.x, 1u), _wgslsmith_mod_vec4_u32(func_2(Struct_2(21416i, Struct_1(2147483647i, global1.b, vec2<bool>(true, global1.c.x), vec2<bool>(false, global1.d.x)), global1.b.ywx), u_input.b.x, 21334u).b, global1.b), global1.c.x), func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u >> (u_input.b.x % 32u), ~16433u), 22u)]).c, vec2<bool>(true, select(all(vec3<bool>(true, true, global1.d.x)), global3[_wgslsmith_index_u32(global1.b.x, 26u)] < global3[_wgslsmith_index_u32(0u, 26u)], true))), vec2<i32>(i32(-1i) * -1i, func_3(func_3(global2[_wgslsmith_index_u32(u_input.b.x, 22u)])).a), vec3<u32>(59566u, ~max(reverseBits(u_input.b.x), _wgslsmith_add_u32(15056u, u_input.b.x)), 4294967295u));
    let var_1 = _wgslsmith_mult_u32(reverseBits(~min(1560u, 33614u)) & ~var_0.b.x, reverseBits(~_wgslsmith_div_u32(12353u, global1.b.x) ^ ~(~global1.b.x)));
    let var_2 = select(vec2<bool>(var_0.d.x, var_0.c.x), func_2(Struct_2(~func_4(global2[_wgslsmith_index_u32(4294967295u, 22u)], Struct_1(2147483647i, vec4<u32>(12026u, var_0.b.x, var_1, 5315u), var_0.d, vec2<bool>(var_0.d.x, true)), vec2<i32>(-36078i, var_0.a), vec3<u32>(50583u, 60568u, 4294967295u)).a, Struct_1(~u_input.a, vec4<u32>(4294967295u, var_1, 1u, 3296u), !global1.d, vec2<bool>(true, true)), ~select(global1.b.wzw, u_input.b, false)), u_input.b.x, 40387u).d, false && all(vec4<bool>(all(vec4<bool>(var_0.c.x, global1.d.x, true, global1.d.x)), all(vec4<bool>(var_0.d.x, true, var_0.d.x, global1.d.x)), true, false)));
    let var_3 = Struct_2(-7663i, func_4(func_3(Struct_1(u_input.a, vec4<u32>(var_1, 4294967295u, var_0.b.x, 1u), var_2, func_3(global2[_wgslsmith_index_u32(0u, 22u)]).c)), Struct_1(-_wgslsmith_mod_i32(33277i, 26047i), select(~global1.b, global1.b, select(vec4<bool>(false, var_0.c.x, false, true), vec4<bool>(var_0.d.x, var_2.x, true, var_0.d.x), var_0.c.x)), !select(var_2, vec2<bool>(true, true), true), !var_0.d), abs(firstTrailingBit(countOneBits(vec2<i32>(var_0.a, 1i)))), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(79894u, global1.b.x, 25311u), vec3<u32>(u_input.b.x, var_1, global1.b.x))), select(0u, var_0.b.x, var_0.c.x && true), ~(var_1 << (8001u % 32u)))), countOneBits(global1.b.ywy));
    var var_4 = Struct_1(abs((34599i ^ var_3.a) << (1u % 32u)) ^ (u_input.a << (14760u % 32u)), vec4<u32>(var_3.c.x, 1u, _wgslsmith_mod_u32(var_1, select(1u, _wgslsmith_mult_u32(var_0.b.x, var_3.c.x), false)), 4294967295u), var_3.b.d, !select(vec2<bool>(true, true), !global1.c, !(!var_3.b.c.x)));
    global3 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32((-1i ^ var_4.a) | var_4.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_4.a, var_0.a) << (vec4<u32>(global1.b.x, 0u, u_input.b.x, 39409u) % vec4<u32>(32u)), vec4<i32>(var_4.a, 1i, global1.a, u_input.a))) ^ abs(countOneBits(func_4(Struct_1(var_0.a, vec4<u32>(4294967295u, 0u, 68610u, var_3.b.b.x), var_0.d, global1.d), global2[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(-1i, 1i), var_0.b.yxz).a)));
}

