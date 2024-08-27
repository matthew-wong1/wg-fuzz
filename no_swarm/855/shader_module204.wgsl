struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(1i, 1i, 2147483647i), 0i, 32011u), Struct_1(vec3<i32>(2147483647i, 21298i, i32(-2147483648)), 11074i, 0u), Struct_1(vec3<i32>(1i, -1016i, -28789i), -3849i, 33353u), Struct_1(vec3<i32>(77277i, i32(-2147483648), 8642i), 2147483647i, 25948u), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -74073i), -1i, 0u), Struct_1(vec3<i32>(801i, 6574i, 1i), 35595i, 1u), Struct_1(vec3<i32>(-63459i, -29701i, 1i), 589i, 1u), Struct_1(vec3<i32>(0i, 2147483647i, -1i), 6372i, 58812u), Struct_1(vec3<i32>(-1i, 2147483647i, -23961i), 1i, 108297u), Struct_1(vec3<i32>(-4084i, i32(-2147483648), 1i), 0i, 0u), Struct_1(vec3<i32>(-9746i, 50340i, 1i), 0i, 1u), Struct_1(vec3<i32>(-20256i, -1i, 55832i), 2147483647i, 1u), Struct_1(vec3<i32>(-1i, 0i, -1i), 9799i, 4294967295u), Struct_1(vec3<i32>(0i, 0i, 0i), 49594i, 83902u), Struct_1(vec3<i32>(-1i, 2147483647i, 1i), -3902i, 0u), Struct_1(vec3<i32>(2147483647i, 15154i, -3318i), 4478i, 39863u), Struct_1(vec3<i32>(61175i, 0i, 21729i), -3766i, 0u), Struct_1(vec3<i32>(0i, 36220i, 1i), -34141i, 0u), Struct_1(vec3<i32>(0i, -1i, 33761i), i32(-2147483648), 1691u), Struct_1(vec3<i32>(2147483647i, 41038i, -29437i), i32(-2147483648), 4294967295u), Struct_1(vec3<i32>(1i, i32(-2147483648), -51150i), 43663i, 1u), Struct_1(vec3<i32>(1i, 2147483647i, -29956i), 1823i, 31085u), Struct_1(vec3<i32>(-17452i, -18125i, 51082i), 0i, 1u), Struct_1(vec3<i32>(9468i, 1i, 4278i), 25248i, 88735u), Struct_1(vec3<i32>(2147483647i, 16975i, 0i), 7304i, 1u), Struct_1(vec3<i32>(-32497i, -29313i, -19472i), -1i, 4294967295u), Struct_1(vec3<i32>(37976i, 0i, 0i), i32(-2147483648), 20090u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 42026i), i32(-2147483648), 1u), Struct_1(vec3<i32>(35340i, 31660i, 1i), -35003i, 1u), Struct_1(vec3<i32>(-27800i, -50725i, 25917i), 2629i, 9670u));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(75737i, 2147483647i, 49067i), 44908i, 39126u), vec2<i32>(1296i, -27926i), Struct_1(vec3<i32>(-21452i, 20410i, -1i), -475i, 4294967295u), 4294967295u, Struct_1(vec3<i32>(-63602i, 43756i, 0i), 0i, 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(~global2.a.a, _wgslsmith_clamp_i32(_wgslsmith_div_i32(23145i, 2147483647i), -global2.a.a.x, max(-25643i, _wgslsmith_dot_vec3_i32(global2.c.a, global2.e.a))), global2.a.c), -u_input.b, global0[_wgslsmith_index_u32(1u << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, global2.e.c, global2.c.c), ~vec4<u32>(global2.a.c, 48118u, 75u, 1u)) % 32u), 30u)], firstLeadingBit(global2.d), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -13533i, -52820i), global2.e.a), 19908i, select(13523u, firstTrailingBit(~global2.e.c), true)));
    global2 = Struct_2(global0[_wgslsmith_index_u32(62086u, 30u)], vec2<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, 12627i), -2147483647i)), Struct_1(-(~_wgslsmith_clamp_vec3_i32(global2.c.a, vec3<i32>(-46633i, 2505i, u_input.c), vec3<i32>(var_0.b.x, u_input.c, -23093i))), ~select(-2147483647i, firstTrailingBit(var_0.a.a.x), u_input.b.x > 1248i), global2.e.c), _wgslsmith_mod_u32(min(1582u, u_input.a) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(14963u, 0u, 17304u, 12168u), max(vec4<u32>(var_0.d, var_0.d, 16130u, var_0.e.c), vec4<u32>(7220u, u_input.a, var_0.d, 1u))) % 32u), u_input.a), var_0.e);
    global1 = vec3<bool>(!(!global1.x), !select(true, (global2.c.a.x ^ -2147483647i) > u_input.c, true), true);
    let var_1 = Struct_2(var_0.c, vec2<i32>(reverseBits(~global2.b.x) << (12482u % 32u), u_input.c), Struct_1(vec3<i32>(i32(-1i) * -global2.c.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.e.a.x, -24540i), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.x, 52345i), vec2<i32>(2147483647i, global2.b.x))), -19017i), ~global2.c.a.x, u_input.a), global2.c.c, Struct_1(vec3<i32>(var_0.e.b, 2147483647i, firstLeadingBit(-1i)), ~41089i, ~max(reverseBits(var_0.e.c), ~global2.c.c)));
    return vec3<i32>(var_1.e.a.x, min(32602i, var_0.a.b), -(~global2.a.b));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(global2.e.c, 30u)];
    global2 = Struct_2(Struct_1(global2.c.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -35378i), u_input.b), var_0.a.yx), ~u_input.a), u_input.b, Struct_1(-firstTrailingBit(func_3()), 2147483647i, _wgslsmith_add_u32(1u, ~global2.c.c | u_input.a)), _wgslsmith_mod_u32(37106u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, global2.a.c), var_0.c)), global2.e);
    global1 = vec3<bool>(true, all(select(vec4<bool>(global1.x | global1.x, !global1.x, global1.x, !global1.x), !select(vec4<bool>(false, true, global1.x, false), vec4<bool>(true, global1.x, global1.x, false), false), vec4<bool>(global1.x, true, global1.x, true))), !global1.x | !global1.x);
    let var_1 = u_input.a;
    let var_2 = abs(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 0u), reverseBits(vec2<u32>(0u, var_0.c))), firstTrailingBit(firstTrailingBit(var_0.c)))) ^ var_1;
    return Struct_2(global2.e, vec2<i32>(global2.e.a.x, var_0.a.x), Struct_1(vec3<i32>(-_wgslsmith_dot_vec3_i32(var_0.a, var_0.a), reverseBits(1i), global2.c.b | global2.c.b), -1i, var_0.c), var_0.c, Struct_1(global2.a.a, 2147483647i, ~countOneBits(u_input.a)));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(-(~(vec3<i32>(2147483647i, u_input.b.x, 21469i) | vec3<i32>(14858i, -2147483647i, -34139i)) & vec3<i32>(1i, global2.c.a.x, -u_input.c)), 0i, 19800u);
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1539f, -538f), _wgslsmith_f_op_f32(round(847f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = true;
    let var_3 = var_1;
    global1 = vec3<bool>(any(vec2<bool>(false, global1.x)), !(!(-var_0.b >= _wgslsmith_mult_i32(-2147483647i, -1i))), var_2);
    return ~abs(reverseBits(firstLeadingBit(max(vec4<i32>(var_3.e.b, u_input.c, u_input.b.x, -1i), vec4<i32>(var_3.e.a.x, u_input.b.x, 2147483647i, global2.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(select(vec3<bool>(true, !global1.x, false), vec3<bool>(!global1.x, true, global1.x), select(select(vec3<bool>(false, global1.x, false), vec3<bool>(false, true, global1.x), false), !vec3<bool>(true, global1.x, true), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false), true))), vec3<bool>(true, true, firstTrailingBit(u_input.b.x) <= ~global2.c.a.x), select(select(!vec3<bool>(false, global1.x, false), select(vec3<bool>(false, global1.x, false), vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), false), !(!vec3<bool>(global1.x, global1.x, true)), true));
    let var_0 = !global1.x;
    var var_1 = vec3<i32>(u_input.c, -9335i, _wgslsmith_mult_i32(~2147483647i, _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(906i, global2.e.b, -1i, global2.c.a.x)), func_1())));
    var var_2 = 739f;
    var_1 = global2.a.a;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2761f), -1233f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(441f + -109f), _wgslsmith_f_op_f32(abs(-1711f)))), false)), -1418f);
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global2.c.c, global2.e.c), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2.c.c, 0u), vec3<u32>(8537u, 0u, 4294967295u))), _wgslsmith_div_u32(~0u, 4294967295u), 1u) ^ ~(~countOneBits(vec3<u32>(global2.a.c, 4653u, 1u))), vec3<u32>(abs(max(1u, 38778u) & _wgslsmith_sub_u32(u_input.a, u_input.a)), func_2(291f).c.c, countOneBits(countOneBits(select(u_input.a, u_input.a, false)))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.c.c, global2.e.c, u_input.a), countOneBits(vec3<u32>(u_input.a, global2.c.c, u_input.a))), vec3<u32>(u_input.a, max(53206u, global2.c.c), _wgslsmith_clamp_u32(global2.e.c, 4294967295u, 1u))), ~(~select(vec3<u32>(u_input.a, 7375u, 15897u), vec3<u32>(global2.d, global2.e.c, 94459u), vec3<bool>(true, true, var_0)))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-544f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(f32(-1f) * -1066f))), all(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(var_0, true, global1.x), vec3<bool>(false, false, global1.x))))) + -544f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(countOneBits(func_3().xz), select(vec2<i32>(_wgslsmith_sub_i32(global2.b.x, global2.a.a.x), var_1.x), u_input.b, true && var_0), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, -13430i), select(global2.b, var_1.yz, vec2<bool>(true, global1.x))), countOneBits(_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, global2.b)))), abs(-((vec4<i32>(u_input.b.x, global2.c.a.x, 1i, 36388i) >> (vec4<u32>(global2.e.c, global2.d, u_input.a, 13774u) % vec4<u32>(32u))) ^ vec4<i32>(18062i, 35726i, var_1.x, u_input.b.x))));
}

