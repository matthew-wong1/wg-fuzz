struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1016f, -398f, 1744f, 1000f);

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(13019u, 0u, 46030u, 4294967295u), vec4<u32>(52319u, 4294967295u, 1u, 50750u), vec4<u32>(4294967295u, 75696u, 0u, 43470u), vec4<u32>(0u, 11435u, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 9359u), vec4<u32>(4294967295u, 0u, 62601u, 8901u), vec4<u32>(41741u, 26177u, 58026u, 22465u), vec4<u32>(8282u, 4294967295u, 28239u, 26846u), vec4<u32>(23957u, 14291u, 25735u, 0u), vec4<u32>(1010u, 39126u, 44866u, 0u), vec4<u32>(1u, 67759u, 4669u, 4294967295u), vec4<u32>(54473u, 61824u, 0u, 1u), vec4<u32>(4294967295u, 25626u, 1u, 1781u), vec4<u32>(4294967295u, 0u, 0u, 38504u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(2167u, 4294967295u, 83708u, 45630u), vec4<u32>(9090u, 1u, 22361u, 1u), vec4<u32>(56837u, 28595u, 4816u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 21758u), vec4<u32>(4294967295u, 67u, 82962u, 84102u));

var<private> global3: array<u32, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec2<i32> {
    let var_0 = (_wgslsmith_clamp_vec4_i32(-vec4<i32>(1658i, u_input.a, -2147483647i, u_input.b), vec4<i32>(max(arg_1, -43600i), arg_1, 2147483647i, u_input.c.x & -2147483647i), firstLeadingBit(vec4<i32>(1i, u_input.b, u_input.b, u_input.c.x) | vec4<i32>(arg_1, arg_1, 41098i, -21257i))) | ~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1, 25676i, arg_1, -1i), reverseBits(vec4<i32>(u_input.b, -16939i, arg_1, -105508i)))) | _wgslsmith_div_vec4_i32(~vec4<i32>(arg_1, 0i, arg_1, arg_1) & _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, u_input.b, 6246i, -2147483647i), ~vec4<i32>(-2147483647i, u_input.a, -25383i, -54367i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-2147483647i, arg_1, 0i, arg_1) ^ vec4<i32>(2147483647i, 14038i, arg_1, 1i), ~vec4<i32>(2147483647i, 21255i, arg_1, arg_1), vec4<bool>(true, arg_0.x, false, false)), select(abs(vec4<i32>(arg_1, arg_1, arg_1, -26309i)), -vec4<i32>(u_input.c.x, arg_1, u_input.b, arg_1), !vec4<bool>(arg_0.x, true, false, arg_0.x))));
    var var_1 = Struct_1(1u < (max(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17888u, 16u)], 16u)], _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d, 16u)], global3[_wgslsmith_index_u32(4999u, 16u)])) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global3[_wgslsmith_index_u32(0u, 16u)]) >> (vec2<u32>(1u, 3928u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(93450u, 16u)], u_input.d), vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 4294967295u))) % 32u)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.wz, vec2<i32>(11662i, u_input.b)), vec2<i32>(-29843i, arg_1)), u_input.a), abs(-vec2<i32>(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(20532i, arg_1, -9671i, u_input.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, arg_1), vec3<i32>(1i, 14301i, var_0.x)))));
    return ~((var_1.c ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.c.x, 1i), global1[_wgslsmith_index_u32(u_input.d, 25u)])) | _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(1i), -1i), var_1.c));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_1(false, -_wgslsmith_mod_i32(abs(-40193i), max(-u_input.b, u_input.a)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 2254i) >> (vec2<u32>(0u, 15645u) % vec2<u32>(32u)), abs(u_input.c.zz)) | _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(~0u, 25u)], u_input.c.xz, select(global1[_wgslsmith_index_u32(u_input.d, 25u)], vec2<i32>(u_input.b, u_input.a), vec2<bool>(true, arg_0.x)))));
    let var_1 = -2059f;
    let var_2 = Struct_1(var_0.a, ~(-reverseBits(_wgslsmith_add_i32(var_0.c.x, u_input.c.x))), func_3(!select(vec3<bool>(var_0.a, arg_0.x, var_0.a), vec3<bool>(false, false, var_0.a), vec3<bool>(false, var_0.a, arg_0.x)), ~_wgslsmith_add_i32(reverseBits(1i), abs(1i))));
    global0 = vec4<f32>(var_1, _wgslsmith_div_f32(816f, -716f), -503f, var_1);
    let var_3 = var_0.c.x;
    return abs(var_0.c.x ^ _wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(vec3<i32>(var_2.b, -12981i, u_input.b))), _wgslsmith_add_vec3_i32(vec3<i32>(-12441i, 6290i, var_0.b), vec3<i32>(u_input.b, var_2.c.x, -2147483647i))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(true, -func_2(vec2<bool>(any(vec2<bool>(arg_2.a, true)), arg_2.a)), -countOneBits(vec2<i32>(firstTrailingBit(u_input.c.x), u_input.b)));
    global1 = array<vec2<i32>, 25>();
    let var_1 = !var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(1393f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    let var_3 = Struct_1(true, arg_2.c.x, ~vec2<i32>(-(3409i ^ u_input.c.x), ~2147483647i));
    return Struct_1(false, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_3.c.x, 2147483647i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -1i, -1i, -2276i), vec4<i32>(var_0.c.x, 2147483647i, 0i, -19540i))) ^ var_0.c.x), _wgslsmith_mod_vec2_i32(var_0.c, u_input.c.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 25>();
    let var_0 = Struct_1(!any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)), 1i, ~vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.c, u_input.c), max(~0i, -47223i)));
    global3 = array<u32, 16>();
    let var_1 = func_1(global0.xy, firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, global3[_wgslsmith_index_u32(u_input.d, 16u)], 9585u), vec3<u32>(17070u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global3[_wgslsmith_index_u32(37624u, 16u)]))) >> (reverseBits(vec3<u32>(24226u, ~1u, 1u)) % vec3<u32>(32u)), var_0);
    var var_2 = select(!(!select(select(vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(var_1.a, var_0.a, true, var_0.a), false), vec4<bool>(var_0.a, true, true, true), !vec4<bool>(false, false, var_1.a, var_0.a))), !select(!vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(!var_1.a, !var_0.a, var_1.a && true, var_0.a), !select(vec4<bool>(var_0.a, var_1.a, true, var_0.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a), false)), !var_1.a);
    let var_3 = var_1.a;
    var var_4 = func_1(vec2<f32>(1659f, global0.x), vec3<u32>(~firstTrailingBit(global3[_wgslsmith_index_u32(1u, 16u)]), abs(~_wgslsmith_sub_u32(u_input.d, 51414u)), 37078u), func_1(global0.yz, abs(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 9759u, u_input.d), vec3<u32>(1u, 4294967295u, 15784u))), func_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, global0.x)))), vec3<u32>(14335u, ~global3[_wgslsmith_index_u32(44917u, 16u)], global3[_wgslsmith_index_u32(firstTrailingBit(1u), 16u)]), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(24675i, func_2(select(select(vec2<bool>(var_4.a, var_2.x), !var_2.xw, false), vec2<bool>(!var_4.a, var_1.c.x < var_4.b), select(vec2<bool>(var_0.a, var_2.x), var_2.zz, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, 671f, global0.x), vec4<f32>(global0.x, 440f, global0.x, 1201f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, 503f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 822f, global0.x, global0.x) * vec4<f32>(421f, -272f, -1107f, global0.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 508f, global0.x, global0.x), vec4<f32>(global0.x, 117f, 203f, -1076f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x + 117f), 260f, global0.x, _wgslsmith_f_op_f32(f32(-1f) * -327f))))));
}

