struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<i32>,
    d: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_4,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -5989i;

var<private> global1: array<u32, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_4 {
    global0 = -arg_1.c.a.c.x;
    return arg_1.c;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> u32 {
    global1 = array<u32, 16>();
    let var_0 = 22687i;
    let var_1 = vec4<u32>(arg_3.x, 33897u, ~arg_0, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, arg_1, 8015u), 16u)]);
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, -14928i, -2147483647i), vec3<i32>(-1i, var_0, -2147483647i), vec3<bool>(false, true, false)), func_1(1u, Struct_5(vec4<bool>(false, true, false, true), Struct_1(-765f, 47166u), Struct_4(Struct_3(var_1.x, false, vec4<i32>(2147483647i, -7900i, var_0, var_0), -1i), Struct_3(arg_3.x, true, vec4<i32>(2147483647i, -2147483647i, 0i, var_0), var_0), vec3<i32>(0i, -1i, arg_2.x), 493f), vec4<i32>(53658i, arg_2.x, -52274i, -3268i)), vec4<i32>(28508i, -1i, var_0, var_0), arg_3.zx).b.c.wxw), ~48645i), 0i, ~(-var_0) & -35680i);
    global0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(-22553i, u_input.a), vec2<i32>(var_2, arg_2.x), vec2<bool>(true, true))) & func_1(0u, Struct_5(vec4<bool>(true, true, true, true), Struct_1(875f, 1u), func_1(18041u, Struct_5(vec4<bool>(true, false, true, false), Struct_1(363f, 1u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(9701u, 16u)], false, vec4<i32>(-1i, 1i, -49165i, 2147483647i), 30375i), Struct_3(70187u, true, vec4<i32>(var_0, 22769i, var_2, -42171i), var_0), vec3<i32>(2147483647i, u_input.a, var_2), -801f), vec4<i32>(var_2, 0i, arg_2.x, 50174i)), vec4<i32>(var_0, 21444i, arg_2.x, var_2), var_1.xx), ~vec4<i32>(-1i, u_input.a, -25251i, 36934i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, var_2, u_input.a, u_input.a), vec4<i32>(1i, -1i, 24973i, 0i) >> (var_1 % vec4<u32>(32u))), ~(~vec2<u32>(u_input.b, var_1.x))).c.yz, _wgslsmith_add_vec2_i32(arg_2, arg_2));
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global0 = u_input.a;
    global0 = 27879i;
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31975u, 16u)], 16u)], 16u)]), 1u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(1u, 16u)], Struct_5(vec4<bool>(true, false, false, false), Struct_1(-238f, 38934u), Struct_4(Struct_3(4294967295u, false, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a), Struct_3(global1[_wgslsmith_index_u32(33042u, 16u)], true, vec4<i32>(40565i, u_input.a, u_input.a, 20979i), 4772i), vec3<i32>(u_input.a, u_input.a, u_input.a), -440f), vec4<i32>(2147483647i, u_input.a, -25304i, -30488i)), vec4<i32>(-2147483647i, -58790i, 27067i, 15008i), vec2<u32>(19482u, 4294967295u)).b.a, 16u)], 16u)], firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)])))), _wgslsmith_add_u32(10121u, _wgslsmith_mod_u32(abs(31095u), 101610u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_3(firstTrailingBit(98759u) & _wgslsmith_div_u32(4294967295u, u_input.b), ~10074u, select(vec2<i32>(u_input.a, -2147483647i), -vec2<i32>(u_input.a, u_input.a), true), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 23857u, global1[_wgslsmith_index_u32(44205u, 16u)]) | vec3<u32>(4294967295u, u_input.b, 11835u)), func_3(_wgslsmith_sub_u32(7199u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(24253u, 16u)])), global1[_wgslsmith_index_u32(34060u, 16u)], min(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-9395i, u_input.a)) << (firstTrailingBit(vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), ~abs(vec3<u32>(0u, 36105u, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), ~(~(~u_input.b))), 16u)], global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 16u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67836u, 16u)], 16u)])), 16u)]);
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(-(i32(-1i) * -18378i), u_input.a, ~u_input.a, u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -273f), ~_wgslsmith_mod_u32(0u | min(28761u, u_input.b), abs(_wgslsmith_add_u32(49599u, var_0.x))));
    return Struct_2(true, var_2, Struct_1(var_2.a, u_input.b));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> vec2<u32> {
    var var_0 = select(vec3<bool>(true, any(vec2<bool>(true, arg_0.a.b || true)), arg_1.a), !vec3<bool>(true, true, arg_0.b.b), func_1(2685u << (arg_0.b.a % 32u), Struct_5(select(!vec4<bool>(false, arg_0.a.b, arg_1.a, arg_0.a.b), select(vec4<bool>(false, arg_1.a, arg_1.a, false), vec4<bool>(false, arg_1.a, arg_1.a, true), false), false), arg_1.c, Struct_4(func_1(global1[_wgslsmith_index_u32(29212u, 16u)], Struct_5(vec4<bool>(arg_0.b.b, arg_0.a.b, arg_0.b.b, arg_0.b.b), Struct_1(430f, global1[_wgslsmith_index_u32(arg_1.b.b, 16u)]), Struct_4(arg_0.b, Struct_3(23274u, arg_0.b.b, arg_0.b.c, -2147483647i), vec3<i32>(-1i, -19553i, u_input.a), arg_0.d), vec4<i32>(24338i, 39092i, -13311i, 1i)), arg_0.a.c, vec2<u32>(4294967295u, 1u)).b, arg_0.b, vec3<i32>(57935i, u_input.a, arg_0.c.x), _wgslsmith_f_op_f32(arg_0.d * -327f)), min(_wgslsmith_sub_vec4_i32(arg_0.b.c, arg_0.b.c), -arg_0.a.c)), func_1(_wgslsmith_add_u32(~arg_1.b.b, _wgslsmith_div_u32(5390u, u_input.b)), Struct_5(!vec4<bool>(arg_1.a, arg_0.b.b, true, false), func_2(vec2<f32>(801f, -1118f)).b, arg_0, vec4<i32>(-2147483647i, 71827i, arg_2, 673i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, arg_2, arg_0.b.c.x, arg_0.a.c.x), _wgslsmith_mult_vec4_i32(arg_0.b.c, arg_0.a.c)), vec2<u32>(1u, _wgslsmith_div_u32(arg_1.c.b, 32356u))).b.c, (_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(103057u, 16u)], 0u), vec2<u32>(u_input.b, 25015u)) | ~vec2<u32>(u_input.b, 4294967295u)) & vec2<u32>(6757u, _wgslsmith_add_u32(arg_1.c.b, 50668u))).b.b);
    var var_1 = reverseBits((vec3<i32>(i32(-1i) * -23328i, _wgslsmith_mult_i32(40504i, u_input.a), 0i) << (vec3<u32>(min(42150u, global1[_wgslsmith_index_u32(6602u, 16u)]), ~9781u, arg_0.b.a) % vec3<u32>(32u))) >> (vec3<u32>(min(_wgslsmith_clamp_u32(arg_1.c.b, 0u, arg_0.b.a), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_0.b.a, 16u)], arg_1.b.b)), 0u, 0u) % vec3<u32>(32u)));
    let var_2 = arg_0.d;
    var var_3 = !func_1(arg_1.b.b, Struct_5(!(!vec4<bool>(false, var_0.x, true, true)), arg_1.b, arg_0, vec4<i32>(var_1.x, var_1.x, -2147483647i, _wgslsmith_mod_i32(0i, u_input.a))), -vec4<i32>(-2147483647i, 2742i, -27757i >> (arg_1.c.b % 32u), select(-2147483647i, 0i, true)), vec2<u32>(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(59216u, 16u)], 4294967295u), ~75028u)).a.b;
    global0 = -22772i;
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(0u, ~4294967295u)), select(vec2<u32>(arg_1.b.b, 1u), vec2<u32>(0u, 4294967295u), false && var_0.x) | vec2<u32>(~u_input.b, 11679u)), firstLeadingBit(select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_0.a.a), vec2<u32>(arg_1.c.b, arg_1.c.b)), vec2<u32>(func_2(vec2<f32>(1383f, 294f)).b.b, arg_1.b.b), var_0.xz)), max(~select(~vec2<u32>(42397u, arg_1.c.b), vec2<u32>(6544u, global1[_wgslsmith_index_u32(u_input.b, 16u)]), var_0.xx), vec2<u32>(~(u_input.b ^ 14150u), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(firstLeadingBit(func_4(func_1(_wgslsmith_add_u32(u_input.b, global1[_wgslsmith_index_u32(42316u, 16u)]), Struct_5(vec4<bool>(true, true, false, false), Struct_1(1000f, 4294967295u), Struct_4(Struct_3(global1[_wgslsmith_index_u32(26338u, 16u)], false, vec4<i32>(u_input.a, u_input.a, 39368i, 0i), 0i), Struct_3(u_input.b, true, vec4<i32>(u_input.a, 1i, -8985i, 12828i), u_input.a), vec3<i32>(u_input.a, 21641i, 28688i), -543f), vec4<i32>(u_input.a, u_input.a, u_input.a, 6448i)), ~vec4<i32>(-22409i, 3225i, u_input.a, u_input.a), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], 52773u)), func_2(vec2<f32>(671f, -821f)), -(~u_input.a))), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(~1u, 16u)], 54794u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, -199f))))) + vec2<f32>(1151f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1051f, 241f)))))));
    var_0 = ~vec2<u32>(global1[_wgslsmith_index_u32(860u, 16u)], firstTrailingBit(func_3(firstTrailingBit(var_0.x), firstTrailingBit(var_0.x), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(var_0.x, u_input.b) % vec2<u32>(32u)), firstLeadingBit(vec3<u32>(1u, var_0.x, global1[_wgslsmith_index_u32(var_0.x, 16u)])))));
    var var_2 = Struct_4(Struct_3(62288u, true, min(min(vec4<i32>(-1i, 37028i, 1i, -15657i) ^ vec4<i32>(0i, 0i, u_input.a, -1i), vec4<i32>(11381i, -12337i, u_input.a, 20393i) & vec4<i32>(u_input.a, -44085i, u_input.a, -9003i)), vec4<i32>(u_input.a, firstLeadingBit(-32536i), _wgslsmith_mod_i32(u_input.a, u_input.a), 77903i)), max(_wgslsmith_mult_i32(-1i, u_input.a) | -u_input.a, -60962i)), func_1(~1713u, Struct_5(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), Struct_1(_wgslsmith_f_op_f32(round(846f)), ~var_0.x), func_1(_wgslsmith_add_u32(22200u, 0u), Struct_5(vec4<bool>(false, false, false, true), Struct_1(458f, var_0.x), Struct_4(Struct_3(global1[_wgslsmith_index_u32(u_input.b, 16u)], false, vec4<i32>(2147483647i, -5332i, 0i, 32945i), -1i), Struct_3(15180u, true, vec4<i32>(1i, u_input.a, -6152i, -15121i), u_input.a), vec3<i32>(u_input.a, -15433i, -1042i), -1138f), vec4<i32>(0i, 1i, u_input.a, u_input.a)), vec4<i32>(1i, -1i, 1i, u_input.a), vec2<u32>(1u, 1u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -11712i), vec4<i32>(u_input.a, -1i, -33344i, u_input.a))), ~select(vec4<i32>(u_input.a, -1i, 15669i, u_input.a), vec4<i32>(u_input.a, u_input.a, 22548i, u_input.a), vec4<bool>(false, true, true, true)), select(~vec2<u32>(1u, 4294967295u), firstTrailingBit(vec2<u32>(64979u, u_input.b)), !select(false, false, false))).a, select(vec3<i32>(1i, abs(~u_input.a), u_input.a), min(-abs(vec3<i32>(-1i, -2147483647i, -2147483647i)), vec3<i32>(1i, 1i, 1i)), vec3<bool>(false, func_2(vec2<f32>(-799f, -650f)).a && false, ~global1[_wgslsmith_index_u32(u_input.b, 16u)] != u_input.b)), var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), var_2.d), -1000f), 571f, var_2.d));
    global0 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + -1237f), _wgslsmith_f_op_f32(sign(903f)), var_1.x)), max(~firstLeadingBit(vec4<u32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(9078u, 16u)], u_input.b)), vec4<u32>(var_2.a.a, var_2.a.a, var_0.x, 40669u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 31353u, var_0.x), vec4<u32>(var_0.x, var_0.x, u_input.b, var_0.x)) % vec4<u32>(32u))) | ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], u_input.b, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(4294967295u, 34855u, global1[_wgslsmith_index_u32(704u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)]))));
}

