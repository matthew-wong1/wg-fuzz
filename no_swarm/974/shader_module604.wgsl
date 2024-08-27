struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32 = 1486u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_add_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(32193u, 1u, global0.x), vec3<u32>(u_input.a, global0.x, u_input.a)) & min(abs(vec3<u32>(50341u, 47125u, 0u)), select(vec3<u32>(global0.x, 25275u, 46582u), vec3<u32>(4294967295u, global0.x, u_input.a), vec3<bool>(false, true, true)))), _wgslsmith_add_vec3_u32(vec3<u32>(~(~global0.x), u_input.a, u_input.a), ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 21581u, 55537u), vec3<u32>(global0.x, 96790u, global0.x)))));
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (_wgslsmith_add_vec2_u32(global0.yx, vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), -vec2<i32>(12922i, 24900i)) >> (firstLeadingBit(select(min(global0.xx, vec2<u32>(57297u, 75965u)), _wgslsmith_mult_vec2_u32(global0.xy, global0.yz), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))) % vec2<u32>(32u)), ~(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, 10184i), vec2<i32>(u_input.b, u_input.b)) & _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(34045i, u_input.b), vec2<i32>(-2147483647i, -27731i)), -vec2<i32>(30933i, u_input.b))));
    var_0 = ~(-vec2<i32>(_wgslsmith_sub_i32(-1i, 0i), u_input.b >> (6336u % 32u))) & -abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(11812i, u_input.b), abs(vec2<i32>(-1i, var_0.x))));
    var_0 = vec2<i32>(2147483647i, 1i);
    var var_1 = _wgslsmith_add_u32(u_input.a ^ abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), global0.xx)), 4330u);
    return _wgslsmith_f_op_f32(floor(-527f));
}

fn func_2() -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f + 959f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-444f, -627f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -1131f)) * 2389f))));
    global0 = _wgslsmith_clamp_vec3_u32(~(~abs(~vec3<u32>(0u, 1u, global0.x))), firstTrailingBit(~vec3<u32>(~15587u, 1u, abs(global0.x))), ~(~vec3<u32>(abs(25138u), u_input.a, global0.x)));
    let var_1 = Struct_1(vec3<bool>(!(!all(vec2<bool>(true, false))), true, true));
    return -countOneBits(vec3<i32>(select(u_input.b, u_input.b | u_input.b, true), ~(-51938i), ~_wgslsmith_mult_i32(-31437i, 4295i)));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(func_2(), vec3<i32>(0i, u_input.b << (u_input.a % 32u), 0i));
    var var_1 = Struct_1(!select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), true));
    global1 = ~35761u;
    var var_2 = var_1.a.x;
    return _wgslsmith_f_op_f32(1335f + -1000f);
}

fn func_4(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(1u, 1u, 22835u, abs(reverseBits(120699u))), abs(~(~vec4<u32>(0u, global0.x, u_input.a, 1u)))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(43794u, 38536u), _wgslsmith_sub_u32(u_input.a, 56127u), ~8601u, global0.x | u_input.a), vec4<u32>(global0.x, ~abs(277u), u_input.a, 64098u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1541u, u_input.a), vec4<u32>(17884u, 0u, 40596u, 2476u)), vec4<u32>(~22504u, reverseBits(global0.x), ~4294967295u, _wgslsmith_mod_u32(74299u, global0.x)), vec4<u32>(global0.x, global0.x, ~global0.x, ~global0.x))));
    global1 = _wgslsmith_dot_vec4_u32(min(~(~(~vec4<u32>(54145u, 4294967295u, 41826u, 12804u))), ~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_0.x, u_input.a, 72581u, 4294967295u)), vec4<u32>(u_input.a, 1u, u_input.a, 44531u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(4763u, 13173u, u_input.a, 47191u), vec4<u32>(var_0.x, 4294967295u, var_0.x >> (var_0.x % 32u), _wgslsmith_mult_u32(global0.x, u_input.a))) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, var_0.x, 30193u, 27660u)), max(vec4<u32>(global0.x, var_0.x, global0.x, global0.x), max(vec4<u32>(u_input.a, var_0.x, 4294967295u, 4294967295u), vec4<u32>(global0.x, u_input.a, var_0.x, 0u)))) % vec4<u32>(32u)));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_div_u32(~21307u, 1575u)), u_input.a & 0u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(44497u, u_input.a), 1u), reverseBits(abs(var_0.x))), ~select(~vec4<u32>(global0.x, 4294967295u, 86869u, 62508u), select(min(vec4<u32>(global0.x, 20718u, 1u, var_0.x), vec4<u32>(var_0.x, 41756u, var_0.x, 26566u)), vec4<u32>(1654u, 27120u, 4294967295u, var_0.x) << (vec4<u32>(1u, global0.x, var_0.x, 1u) % vec4<u32>(32u)), all(vec3<bool>(false, false, false))), vec4<bool>(false, true, true, true)));
    var var_1 = Struct_1(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, all(vec4<bool>(false, true, false, true)), false), vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec2<bool>(false, true))))));
    let var_2 = !vec3<bool>(false, all(vec3<bool>(true, var_1.a.x, var_1.a.x)) & !all(var_1.a.yz), true);
    return vec3<u32>(~4294967295u, ~(~firstTrailingBit(0u >> (1u % 32u))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(~max(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4537u, u_input.a), vec3<u32>(u_input.a, 6128u, 0u)), ~vec3<u32>(1u, u_input.a, global0.x)), abs(u_input.a)), ~global0.x, 43919u);
    global1 = u_input.a;
    global0 = select(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-228f, -1000f))))), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.x, 4294967295u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 87770u, u_input.a), vec3<u32>(u_input.a, 22304u, global0.x)), vec3<u32>(1u, _wgslsmith_div_u32(global0.x, global0.x), 1u)), ~(~(~vec3<u32>(u_input.a, global0.x, 27560u)))), true);
    let var_0 = Struct_2(Struct_1(!vec3<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, true, false, false)))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(select(476f, 239f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1579f + 1007f), _wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(803f - _wgslsmith_f_op_f32(-1000f - 1809f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~firstLeadingBit(vec3<u32>(180293u, 1u, 61395u)))), global0.x | _wgslsmith_sub_u32(global0.x, global0.x), ~(_wgslsmith_mult_u32(global0.x, global0.x) | global0.x) >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.x, firstLeadingBit(global0.x)), ~20064u) % 32u), -40904i, 74818u);
}

