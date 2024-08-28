struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(0i, -7164i, -29109i, -54598i), -1i, vec3<u32>(1776u, 6905u, 16388u)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -5827i), 1i, vec3<u32>(4849u, 1u, 27775u)), Struct_1(vec4<i32>(39980i, 22008i, 1i, 2147483647i), 2147483647i, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), i32(-2147483648)), 16729i, vec3<u32>(1u, 1u, 16312u)), Struct_1(vec4<i32>(2147483647i, 2147483647i, 6903i, 3135i), -65014i, vec3<u32>(54681u, 74795u, 23205u)), Struct_1(vec4<i32>(28288i, 1i, i32(-2147483648), -32167i), 450i, vec3<u32>(0u, 1u, 64757u)), Struct_1(vec4<i32>(-8011i, 2147483647i, -1i, -1i), 46600i, vec3<u32>(1u, 0u, 6151u)));

var<private> global1: i32 = -6382i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec2<u32> {
    global1 = ~(-95454i);
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 7u)];
    let var_1 = vec4<bool>(false, arg_0.x, all(!select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), arg_0, arg_0), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), arg_0.x || all(arg_0.zx));
    var var_2 = u_input.a;
    global1 = firstTrailingBit(var_0.b);
    return arg_1.yz;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-483f, 559f, false)))))), -343f)));
    var var_1 = 1123f;
    global1 = ~(u_input.b.x << (arg_0.c.x % 32u));
    let var_2 = all(vec2<bool>(all(vec2<bool>(true, false)), true)) && true;
    global0 = array<Struct_1, 7>();
    return arg_0.c.zy ^ _wgslsmith_div_vec2_u32(arg_0.c.xx, select(_wgslsmith_sub_vec2_u32(arg_1.xy, ~vec2<u32>(4294967295u, u_input.a)), func_3(select(vec3<bool>(var_2, true, var_2), vec3<bool>(true, true, false), false), vec4<u32>(1u, 4294967295u, 0u, 0u)), var_2));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = any(vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(step(arg_1.x, 171f))), _wgslsmith_f_op_f32(f32(-1f) * -979f)), arg_1.zy)) * vec2<f32>(arg_1.x, arg_1.x));
    let var_2 = select(all(vec2<bool>(true, select(var_0, false, 1000f == var_1.x))), false && any(vec2<bool>(true, true)), true);
    var var_3 = arg_2;
    var_3 = Struct_1(min(-var_3.a, _wgslsmith_div_vec4_i32(vec4<i32>(-14686i, 14082i, -60126i, -2147483647i), arg_2.a)) & select(arg_2.a, vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(4956i, 1i), max(-12197i, 1i), _wgslsmith_sub_i32(arg_2.b, -2147483647i)), select(select(vec4<bool>(var_0, false, var_2, true), vec4<bool>(var_2, var_0, false, var_0), vec4<bool>(false, var_2, false, true)), !vec4<bool>(var_2, false, false, var_0), true)), ~arg_2.a.x, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, u_input.a & arg_0.x), ~firstLeadingBit(vec3<u32>(51564u, 1u, 70136u))));
    return Struct_1(var_3.a, -10140i, arg_2.c);
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_3.a, abs(_wgslsmith_sub_i32(43329i, 0i)), arg_3.c);
    global0 = array<Struct_1, 7>();
    var var_1 = -78883i;
    let var_2 = Struct_1(max(arg_1, -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-10490i, 2147483647i, 29785i, arg_3.a.x), vec4<i32>(u_input.b.x, -2147483647i, var_0.b, -27235i)), arg_1)), -1i, func_4(~vec2<u32>(arg_3.c.x, u_input.a | arg_3.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(114f, arg_0, arg_0, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 847f, 1099f, -675f))) - vec4<f32>(404f, arg_0, -131f, arg_0)), Struct_1(arg_1 | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.x, -50730i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, var_0.b, 38923i, u_input.b.x), vec4<i32>(-840i, u_input.b.x, arg_2, u_input.b.x)), reverseBits(_wgslsmith_sub_i32(14303i, arg_1.x)), arg_3.c)).c);
    let var_3 = arg_3.b;
    return arg_3.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    var var_0 = min(arg_2.c.x, ~func_5(_wgslsmith_f_op_f32(max(114f, _wgslsmith_div_f32(-408f, -263f))), ~arg_2.a, -countOneBits(arg_2.a.x), func_4(func_2(arg_2, arg_2.c, arg_2.a.zwz), arg_0, arg_2)));
    let var_1 = vec3<i32>(~(-(-2147483647i << (arg_2.c.x % 32u))) | 86452i, max(reverseBits(~(-2147483647i)), 0i), ~u_input.b.x);
    let var_2 = _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(arg_2.c, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 5997u, arg_2.c.x), arg_2.c), vec3<u32>(4294967295u, u_input.a, u_input.a)))), ~vec3<u32>(arg_2.c.x, arg_2.c.x, ~1u), countOneBits(vec3<u32>(16179u, ~reverseBits(633u), u_input.a)));
    var_0 = arg_2.c.x;
    return global0[_wgslsmith_index_u32(var_2.x, 7u)];
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    let var_0 = Struct_1(-abs(reverseBits(vec4<i32>(u_input.b.x, -1i, u_input.b.x, -140i))), 6644i & arg_0.x, arg_1.c);
    global1 = arg_1.b;
    return all(vec3<bool>(all(!select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, arg_3), vec2<bool>(true, true))), true, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    let var_0 = select(vec2<bool>(func_6(vec4<i32>(1i, -1i, u_input.b.x, -2147483647i) | vec4<i32>(0i, u_input.b.x, 16888i, u_input.b.x), func_1(vec4<f32>(334f, -1330f, -241f, -338f), vec3<f32>(433f, -1426f, -1057f), global0[_wgslsmith_index_u32(u_input.a, 7u)], true), Struct_1(vec4<i32>(u_input.b.x, -1i, 2147483647i, 7149i), 0i, vec3<u32>(u_input.a, u_input.a, 1u)), true) || false, false), !(!vec2<bool>(select(false, false, true), true)), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(-270f)) == 161f));
    let var_1 = Struct_1(firstTrailingBit(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) | ~(~vec4<i32>(-21292i, u_input.b.x, -17063i, 2147483647i))), u_input.b.x | abs(u_input.b.x), vec3<u32>(u_input.a, _wgslsmith_mult_u32(0u, func_4(abs(vec2<u32>(u_input.a, 4294967295u)), vec4<f32>(1f, 1f, 1f, 1f), func_1(vec4<f32>(868f, -458f, 649f, -1912f), vec3<f32>(-585f, -1726f, 631f), Struct_1(vec4<i32>(-1i, 88856i, u_input.b.x, 0i), 1i, vec3<u32>(0u, u_input.a, u_input.a)), false)).c.x), _wgslsmith_add_u32(firstTrailingBit(u_input.a), select(1u, 5604u << (u_input.a % 32u), u_input.a < 72256u))));
    let var_2 = all(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x ^ -1i, var_1.b, 40450i));
}

