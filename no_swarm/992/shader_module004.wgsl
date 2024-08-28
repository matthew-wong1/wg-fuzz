struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(14131u, 22135u, 4294967295u, 0u), 2147483647i);

var<private> global1: array<f32, 9> = array<f32, 9>(-1260f, -1660f, -1300f, -239f, -901f, -1035f, -296f, 241f, 1443f);

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> vec2<i32> {
    return min(vec2<i32>(u_input.b, ~(-global2.b)) | -_wgslsmith_add_vec2_i32(select(vec2<i32>(29249i, -2147483647i), vec2<i32>(arg_0.c, 66275i), vec2<bool>(true, true)), vec2<i32>(-2147483647i, u_input.b)), firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(7465i, arg_1), vec2<i32>(-29246i, u_input.b) ^ vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b, -5368i), vec2<i32>(arg_1, 1i) << (global2.a.xz % vec2<u32>(32u))))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_3(-abs(-29172i));
    global2 = Struct_1(global2.a, _wgslsmith_div_i32(~u_input.b, 1i));
    global1 = array<f32, 9>();
    let var_1 = Struct_4(global0.b, -u_input.b, -global2.b);
    global1 = array<f32, 9>();
    return vec4<i32>(~_wgslsmith_clamp_i32(~(-21536i), ~30941i, arg_2.x) & ~(~arg_2.x), -21612i, u_input.b, -2147483647i >> (u_input.a % 32u));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_1(reverseBits((global0.a >> (_wgslsmith_add_vec4_u32(global2.a, global0.a) % vec4<u32>(32u))) | abs(max(vec4<u32>(27442u, u_input.a, 12772u, 36860u), vec4<u32>(796u, global2.a.x, global2.a.x, 76154u)))), 0i);
    global2 = Struct_1(~countOneBits(global0.a), _wgslsmith_sub_i32(var_0.b, ~(u_input.b & u_input.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-719f, _wgslsmith_f_op_f32(trunc(-1104f)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.a.x, 9u)])), _wgslsmith_f_op_f32(round(155f)))))));
    global0 = Struct_1(global2.a, 2902i);
    let var_2 = Struct_2(Struct_1(global0.a, ~_wgslsmith_mod_i32(17969i, arg_1.x)), 1i, var_0);
    return Struct_4(var_0.b, -22142i, _wgslsmith_sub_i32(func_2(Struct_4(15850i, 33511i ^ arg_2.a, var_0.b), 20751i).x, func_2(Struct_4(var_0.b, func_3(var_2.c.a.x, vec4<bool>(false, true, true, true), vec2<i32>(var_2.a.b, u_input.b)).x, 1i), abs(arg_2.a)).x));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(u_input.a, abs(~global2.a.x), ~u_input.a, global2.a.x), ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global2.a.x, 9u)]))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, 1i, arg_2.x, 0i), vec4<i32>(-1i, arg_1.a, 2147483647i, -1i)), Struct_3(global0.b | 0i)).b);
    let var_1 = global2.a.wyy;
    let var_2 = all(!(!vec4<bool>(false, -328f >= global1[_wgslsmith_index_u32(25472u, 9u)], false, arg_0)));
    var var_3 = max(0u, u_input.a);
    let var_4 = vec4<i32>(~63093i, _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(65146i, var_0.b, global0.b, arg_2.x), vec4<i32>(arg_3, arg_3, global2.b, global0.b))), global2.b), 0i, -(0i | (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, global2.b), vec2<i32>(83732i, 2147483647i)) & _wgslsmith_mult_i32(var_0.b, global0.b))));
    return Struct_1(vec4<u32>(var_1.x, reverseBits(var_0.a.x), var_1.x, abs(abs(var_0.a.x))), -48516i);
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false && all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), true, true)), true);
    var var_1 = func_5(true, func_4(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -886f)))), func_3(_wgslsmith_sub_u32(~19736u, global0.a.x), select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(false, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, false, var_0.x, false)), -func_2(Struct_4(global2.b, 2147483647i, -44509i), -1i)), Struct_3(global2.b)), -vec2<i32>(firstLeadingBit(-1i) << (abs(1u) % 32u), -countOneBits(u_input.b)), func_3(global0.a.x, vec4<bool>(var_0.x && true, var_0.x, var_0.x, !any(vec4<bool>(true, var_0.x, false, true))), ~(-(vec2<i32>(global2.b, 0i) >> (global0.a.xy % vec2<u32>(32u))))).x);
    let var_2 = 80767u;
    let var_3 = 341f;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3))) + _wgslsmith_f_op_f32(var_3 * 1647f)) + _wgslsmith_f_op_f32(step(var_3, global1[_wgslsmith_index_u32(64986u, 9u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 934f)))))), _wgslsmith_f_op_f32(abs(var_3)));
    return func_4(_wgslsmith_f_op_f32(-var_3), firstLeadingBit(~min(abs(vec4<i32>(var_1.b, 2147483647i, 4384i, 47599i)), vec4<i32>(0i, 0i, u_input.b, global2.b))), Struct_3(~global2.b));
}

fn func_6(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4) -> i32 {
    let var_0 = Struct_3(countOneBits(8715i));
    var var_1 = -min(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(19326i, 0i, global2.b), vec3<i32>(-10719i, u_input.b, global2.b)) >> (abs(arg_1.xyy) % vec3<u32>(32u)), select(vec3<i32>(arg_2.a, u_input.b, var_0.a) ^ vec3<i32>(global0.b, 79137i, 12682i), vec3<i32>(18713i, -14467i, -2147483647i), vec3<bool>(true, true, true)), min(-vec3<i32>(-1i, global0.b, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, var_0.a, -1i), vec3<i32>(33475i, 4487i, -14638i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global2.b, -20665i, 2147483647i), ~vec3<i32>(-16438i, -55578i, var_0.a) & firstTrailingBit(vec3<i32>(arg_2.a, 46750i, 2147483647i))));
    var var_2 = countOneBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(select(global0.b, 1i, true), -arg_2.b, -1i << (global2.a.x % 32u)), vec3<i32>(var_1.x ^ arg_2.a, var_1.x, arg_2.a)));
    let var_3 = Struct_3(abs(-2147483647i));
    var var_4 = Struct_1(global2.a, global0.b);
    return -11751i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-1i, func_6(global2.a.x, _wgslsmith_div_vec4_u32(~global2.a, global2.a), func_1((global0.a.xw ^ global2.a.xx) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global2.a.x, u_input.a), global0.a.zx) % vec2<u32>(32u)))), global0.b);
    var var_1 = global0.a;
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    global2 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~0u, u_input.a | 1u, func_5(true, var_0, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 28553i), vec2<i32>(7278i, u_input.b)), -global2.b).a.x, 1u), global2.a), -2147483647i);
    global0 = Struct_1(global0.a, select(~(-2147483647i), var_0.b, false) | ~max(-20599i, var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(7621u, 9u)], _wgslsmith_clamp_u32(~(abs(u_input.a) >> (func_5(false, var_0, vec2<i32>(var_0.b, var_0.a), 0i).a.x % 32u)), 23696u, ~(~var_1.x)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, i32(-1i) * -1i), ~(~(-vec2<i32>(9349i, u_input.b)))));
}

