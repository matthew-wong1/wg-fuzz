struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-954i, 2147483647i, 2147483647i);

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> u32 {
    global0 = abs(vec3<i32>(24232i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, global0.x, 7794i, 71212i), vec4<i32>(global0.x, 1i, arg_2, 19279i)) << (36361u % 32u), _wgslsmith_dot_vec2_i32(firstLeadingBit(global0.xy), abs(global0.yy))) ^ select(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, arg_2), vec3<i32>(global0.x, 35656i, 0i) ^ vec3<i32>(global0.x, 36288i, global0.x)), vec3<i32>(firstTrailingBit(-1i), 0i, 49031i), select(arg_0, !arg_0, vec3<bool>(false, true, arg_0.x))));
    let var_0 = u_input.a.x;
    global1 = array<vec2<bool>, 4>();
    let var_1 = vec2<u32>(1u, arg_1) | ~(~(vec2<u32>(18565u, 34129u) >> (select(u_input.a.yy, u_input.a.xy, vec2<bool>(arg_0.x, false)) % vec2<u32>(32u))));
    global0 = vec3<i32>(14659i, ~countOneBits((i32(-1i) * -7408i) << (countOneBits(4996u) % 32u)), 1i);
    return var_0;
}

fn func_2() -> Struct_3 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-global0.x, i32(-1i) * -2147483647i), -vec2<i32>(global0.x, -2147483647i)));
    var var_1 = -2147483647i;
    let var_2 = Struct_3(82260u << (_wgslsmith_div_u32(~(~4294967295u), func_3(vec3<bool>(true, true, true), 5864u, -global0.x)) % 32u), min(-max(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global0.x, var_0.x, 0i), vec4<i32>(-3310i, var_0.x, 44525i, var_0.x)), vec4<i32>(global0.x, var_0.x, global0.x, -21154i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_0.x, global0.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 9250u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(var_0.x, 2147483647i, global0.x, var_0.x)))), firstLeadingBit(select(min(vec4<u32>(u_input.a.x, u_input.a.x, 18593u, 0u), ~vec4<u32>(u_input.a.x, u_input.a.x, 13458u, u_input.a.x)), vec4<u32>(0u, u_input.a.x, 73973u, u_input.a.x) >> (firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u)), true)), Struct_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(17345u, u_input.a.x), func_3(vec3<bool>(true, false, true), 74688u, global0.x)) >= select(_wgslsmith_sub_u32(u_input.a.x, 119363u), 65850u, var_0.x >= -2147483647i), firstTrailingBit(abs(var_0.x)) & -(~1i), vec2<i32>(_wgslsmith_mod_i32(var_0.x | var_0.x, ~global0.x), -1i), Struct_1(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(518f, -1712f))))), vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), false, false));
    var_1 = -abs(-5908i);
    let var_3 = var_2.b.x;
    return Struct_3(4294967295u >> (~countOneBits(_wgslsmith_clamp_u32(u_input.a.x, var_2.d.d.a, u_input.a.x)) % 32u), vec4<i32>(-1i, -2147483647i, var_2.d.c.x, min(global0.x, var_0.x ^ var_2.d.c.x)), ~(~min(vec4<u32>(23705u, var_2.c.x, u_input.a.x, 68877u), var_2.c)) >> (vec4<u32>(u_input.a.x, 4069u, firstLeadingBit(abs(17701u)), _wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, abs(u_input.a.x))) % vec4<u32>(32u)), var_2.d, select(vec3<bool>(any(!var_2.e), !all(vec3<bool>(true, false, false)), true), var_2.e, !var_2.e));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    global1 = array<vec2<bool>, 4>();
    global0 = countOneBits(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, -1i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.c.x, -arg_0.d.b, abs(-2147483647i)), ~(-arg_0.b.ywx)), ~15422i));
    global0 = select(-vec3<i32>(global0.x, global0.x, ~52021i), arg_0.b.zxz, func_2().e);
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.d.c.x, _wgslsmith_dot_vec4_i32(arg_0.b, abs(-vec4<i32>(-13511i, arg_0.b.x, 1i, -1846i)))), ~(~(-arg_0.b.x ^ -2147483647i)), ~(~(arg_0.d.c.x >> (u_input.a.x % 32u))));
    let var_1 = _wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(_wgslsmith_sub_u32(65133u, _wgslsmith_dot_vec2_u32(func_2().c.xy, min(u_input.a.yz, vec2<u32>(arg_0.a, 4294967295u))))));
    return Struct_2(arg_0.d.a, ~arg_1, abs(~arg_0.b.yx) & vec2<i32>(_wgslsmith_div_i32(1i, var_0) >> (7945u % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 10395i), arg_1 << (arg_0.a % 32u), arg_1)), Struct_1(var_1, vec2<f32>(_wgslsmith_f_op_f32(-780f * func_2().d.d.b.x), -749f)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> i32 {
    var var_0 = firstTrailingBit(abs(~vec3<i32>(_wgslsmith_mult_i32(-28867i, 0i), 0i, reverseBits(arg_1))));
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, 2147483647i, arg_1 ^ arg_1), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(29837i, var_0.x, var_0.x), vec3<i32>(var_0.x, arg_0.c.x, 25962i)), _wgslsmith_div_vec3_i32(vec3<i32>(23603i, arg_1, global0.x), vec3<i32>(3450i, -20892i, 0i)))), -(~vec3<i32>(25214i, 1i, 11371i)) ^ (reverseBits(vec3<i32>(15145i, -18163i, 2147483647i)) >> (vec3<u32>(arg_0.d.a, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), firstLeadingBit(vec3<i32>(arg_0.c.x, ~arg_0.b, -(global0.x & 33633i))));
    let var_1 = _wgslsmith_add_u32(64379u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.a.yx & vec2<u32>(arg_0.d.a, arg_0.d.a)));
    global0 = min(abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b, 53443i, global0.x), vec3<i32>(var_0.x, 1i, global0.x), vec3<i32>(var_0.x, arg_0.b, 2147483647i)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(28787u, arg_0.d.a, 57293u), u_input.a) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(~_wgslsmith_mod_vec3_i32(func_2().b.zyx, -vec3<i32>(12030i, 54092i, 0i)), vec3<i32>(8905i, -(~0i), -250i)));
    return 61705i;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 4>();
    let var_0 = global0.zy;
    var var_1 = vec2<f32>(1008f, _wgslsmith_div_f32(-159f, 277f));
    let var_2 = vec4<i32>(0i, var_0.x, _wgslsmith_sub_i32(func_5(func_4(func_2(), ~global0.x), global0.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -18469i, -1i, global0.x), vec4<i32>(1i, global0.x, var_0.x, 33047i) >> (vec4<u32>(u_input.a.x, 62989u, 4294967295u, 0u) % vec4<u32>(32u)))), -3938i);
    let var_3 = func_2().d.d;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = !(!vec3<bool>(true, true, all(vec3<bool>(true, true, true))));
    var var_2 = countOneBits(max((vec2<u32>(u_input.a.x, u_input.a.x) | abs(u_input.a.zx)) & u_input.a.xx, ~(~(vec2<u32>(u_input.a.x, var_0.a) ^ u_input.a.yy))));
    global0 = ~countOneBits(-_wgslsmith_clamp_vec3_i32(max(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-27318i, global0.x, -18024i)), vec3<i32>(global0.x, -39304i, global0.x) ^ vec3<i32>(0i, 50922i, global0.x), reverseBits(vec3<i32>(1i, global0.x, global0.x))));
    var var_3 = Struct_2(true, global0.x ^ func_4(Struct_3(0u, -vec4<i32>(global0.x, global0.x, 2147483647i, -21739i), vec4<u32>(var_2.x, 0u, var_2.x, u_input.a.x) ^ vec4<u32>(var_0.a, u_input.a.x, 64748u, 0u), func_4(Struct_3(4294967295u, vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(0u, 0u, 1u, 0u), Struct_2(false, global0.x, vec2<i32>(-2147483647i, global0.x), Struct_1(4294967295u, var_0.b)), vec3<bool>(true, false, var_1.x)), global0.x), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, false, var_1.x), var_1.x)), 1i).c.x, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(global0.x, -1i, -1i))), countOneBits(vec3<i32>(global0.x, 81582i, global0.x) | vec3<i32>(global0.x, global0.x, 33119i))), (global0.x | 1i) << (4294967295u % 32u)), Struct_1(min(func_3(vec3<bool>(false, true, true), 33824u, global0.x) | (u_input.a.x << (var_0.a % 32u)), ~(~u_input.a.x)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_div_f32(var_0.b.x, -2003f))));
    var_2 = vec2<u32>(var_2.x, abs(0u));
    var var_4 = firstLeadingBit(1i);
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_u32(u_input.a.x, 4294967295u) ^ (0u & var_0.a), 2862u, func_4(func_2(), 9076i).a));
}

