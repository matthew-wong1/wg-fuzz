struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: bool = true;

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<u32>(arg_0.d.a, ~(~(~firstTrailingBit(u_input.a))));
    let var_1 = false;
    var_0 = max(select(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_0.x, u_input.b)) & firstLeadingBit(vec2<u32>(4294967295u, 24241u)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d.a, u_input.b), vec2<u32>(arg_0.a.a, 70595u)))), vec2<bool>(global0.x, true)), vec2<u32>(min(~12163u, u_input.a), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(10338u, 0u, var_0.x, 78608u), vec4<u32>(arg_0.b.a, 1u, 1u, var_0.x), vec4<bool>(true, false, true, false)), ~(~vec4<u32>(63003u, var_0.x, var_0.x, 24741u)))));
    var_0 = vec2<u32>(_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_sub_u32(~22450u | _wgslsmith_add_u32(u_input.a, 1u), ~(~3157u)), u_input.b), 0u);
    let var_2 = Struct_1(~14935u, global0.x, arg_0.c.x, true);
    return -1406f;
}

fn func_4(arg_0: f32) -> vec4<u32> {
    var var_0 = !all(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(global0.x, false, global0.x))));
    global0 = vec2<bool>(true, global0.x);
    var_0 = any(select(!(!select(vec2<bool>(false, global0.x), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(true, true), any(select(vec3<bool>(global0.x, true, false), !vec3<bool>(global0.x, false, global0.x), global0.x))));
    var var_1 = Struct_2(Struct_1(4294967295u, max(select(78829u, 1u, false), u_input.c) > ~(u_input.c & u_input.c), -_wgslsmith_dot_vec3_i32(~u_input.d, vec3<i32>(u_input.d.x, -1i, -23232i) | u_input.d), global0.x), Struct_1(~(~1u), global0.x, u_input.e.x, -669f != arg_0), vec3<i32>(u_input.e.x, select(-1i | u_input.d.x, ~16790i, global0.x) & (-u_input.d.x >> (14277u % 32u)), u_input.e.x), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a), abs(0u)), _wgslsmith_mult_u32(40245u, ~u_input.b), 40419u), global0.x, u_input.e.x, ~(-u_input.d.x) >= u_input.d.x));
    global2 = array<vec4<f32>, 32>();
    return vec4<u32>(u_input.c, u_input.a, ~firstTrailingBit(abs(_wgslsmith_add_u32(48643u, 54467u))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u << (var_1.b.a % 32u), min(4294967295u, 42611u), _wgslsmith_sub_u32(u_input.a, 21207u)), firstLeadingBit(firstLeadingBit(vec3<u32>(1u, 16476u, 1u)))) | _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 19230u) << (vec2<u32>(var_1.a.a, 4294967295u) % vec2<u32>(32u))), abs(vec2<u32>(var_1.a.a, 44002u)) & (vec2<u32>(var_1.a.a, 30001u) & vec2<u32>(var_1.a.a, 1u))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_mod_u32(~1u, countOneBits(var_0.a));
    var var_2 = Struct_2(Struct_1(~_wgslsmith_mult_u32(arg_2, u_input.a) >> (~(~31597u) % 32u), global0.x, -2147483647i, true), var_0, reverseBits(firstTrailingBit(abs(vec3<i32>(-1i, u_input.e.x, 1i)))), arg_1);
    var var_3 = global2[_wgslsmith_index_u32(~var_0.a, 32u)];
    let var_4 = vec3<bool>(true, ~(1u << (~var_2.b.a % 32u)) < u_input.a, global0.x);
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.b, u_input.b, 1u, var_1)), func_4(_wgslsmith_f_op_f32(func_3(Struct_2(var_0, var_2.a, var_2.c, arg_1))))), !any(select(vec4<bool>(var_2.a.d, false, var_2.d.d, var_0.d), vec4<bool>(var_0.d, false, false, false), vec4<bool>(true, false, var_2.b.b, var_2.d.b))), u_input.e.x, 811f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x - 258f)))), Struct_1(~_wgslsmith_div_u32(4294967295u, ~35602u), false, ~_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -45894i), 1i), all(vec2<bool>(var_4.x, !var_4.x))), ~_wgslsmith_mod_vec3_i32(~firstTrailingBit(vec3<i32>(var_2.d.c, -1i, var_2.c.x)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, 1084i, var_2.d.c), firstLeadingBit(var_2.c), ~u_input.d)), Struct_1(min(~_wgslsmith_mod_u32(19109u, 19042u), select(1u, 1735u, var_0.d) >> (137245u % 32u)), any(select(vec3<bool>(true, var_4.x, global0.x), var_4, all(var_4.zy))), var_0.c, true));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_1 {
    return arg_0.d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    global2 = array<vec4<f32>, 32>();
    let var_0 = Struct_1(0u, !func_2(_wgslsmith_f_op_f32(max(-561f, -904f)), func_2(_wgslsmith_f_op_f32(-arg_2.x), func_5(Struct_2(arg_1.a, Struct_1(arg_0.a, arg_0.b, -2147483647i, true), arg_1.c, Struct_1(38396u, arg_0.b, arg_0.c, false)), vec3<u32>(85587u, 46264u, u_input.a)), 49031u).d, ~arg_1.d.a).a.d, ((i32(-1i) * -30786i) & ~func_2(arg_2.x, arg_0, arg_0.a).c.x) << (1u % 32u), true || global0.x);
    global2 = array<vec4<f32>, 32>();
    global1 = !(61568u == var_0.a);
    global0 = select(select(vec2<bool>(global0.x, arg_1.d.b), vec2<bool>(var_0.b, false), !any(!vec2<bool>(var_0.b, arg_0.d))), vec2<bool>(true, !any(select(vec3<bool>(true, arg_1.b.d, false), vec3<bool>(true, arg_1.a.d, arg_1.a.d), global0.x))), any(vec2<bool>(any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, var_0.d), true)), false)));
    return func_2(arg_2.x, arg_1.d, var_0.a).d;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = abs(0u);
    let var_1 = arg_0.zz;
    var_0 = ~(~(~10180u & abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 0u), vec3<u32>(u_input.a, u_input.c, u_input.a)))));
    let var_2 = func_6(Struct_1(~(~(~687u)), !any(vec2<bool>(true, true)), u_input.d.x, all(vec4<bool>(!global0.x, global0.x, arg_2, all(vec3<bool>(true, arg_2, arg_2))))), Struct_2(Struct_1(u_input.a, global0.x, i32(-1i) * -u_input.d.x, true), func_5(func_2(var_1.x, Struct_1(0u, false, -1i, false), 27782u), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(24717u, 20153u, u_input.a), vec3<u32>(4294967295u, 0u, u_input.c)))), vec3<i32>(arg_1, abs(i32(-1i) * -17768i), 38171i), Struct_1(u_input.c, true && !arg_2, _wgslsmith_sub_i32(-56929i, abs(arg_1)), !(arg_2 || global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(_wgslsmith_div_f32(var_1.x, 125f), _wgslsmith_f_op_f32(round(2664f)), arg_0.x, _wgslsmith_f_op_f32(step(-1836f, var_1.x))))) * arg_0));
    let var_3 = var_2;
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = vec2<bool>(true | arg_0.d, true);
    let var_0 = abs(firstTrailingBit(~firstLeadingBit(_wgslsmith_mult_i32(arg_1.a.c, u_input.e.x))));
    global1 = all(select(vec4<bool>(false, any(vec2<bool>(global0.x, false)), !global0.x, any(vec2<bool>(global0.x, arg_1.b.b))), !select(vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b, arg_0.d, false, arg_1.a.d), global0.x), (u_input.e.x ^ arg_1.d.c) < 1i)) & func_6(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f - 321f)), func_5(Struct_2(Struct_1(4294967295u, false, arg_1.a.c, global0.x), arg_0, vec3<i32>(65270i, 0i, 35153i), arg_1.b), min(vec3<u32>(30783u, arg_0.a, arg_1.d.a), vec3<u32>(1u, 0u, u_input.b))), 4294967295u).d, Struct_2(arg_1.b, Struct_1(9296u >> (arg_1.a.a % 32u), global0.x || true, u_input.d.x << (u_input.a % 32u), !arg_0.b), vec3<i32>(_wgslsmith_add_i32(7006i, u_input.e.x), -39695i, ~arg_1.a.c), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~4294967295u, 32u)]))).b;
    let var_1 = reverseBits(abs(~vec3<u32>(u_input.b << (4294967295u % 32u), 10476u, u_input.c & arg_0.a)));
    global0 = !select(vec2<bool>(false, any(vec4<bool>(true, false, true, arg_1.d.d))), !(!vec2<bool>(false, arg_0.d)), !vec2<bool>(func_5(Struct_2(arg_0, Struct_1(126356u, global0.x, 8034i, arg_0.b), arg_1.c, Struct_1(17209u, global0.x, arg_0.c, false)), var_1).d, true));
    return func_2(-1023f, Struct_1(~var_1.x << (_wgslsmith_div_u32(arg_0.a, firstTrailingBit(var_1.x)) % 32u), true, firstLeadingBit(u_input.d.x), global0.x), arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_1(0u >> (_wgslsmith_div_u32(0u, u_input.a) % 32u), true, func_1(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 32u)] * global2[_wgslsmith_index_u32(u_input.b, 32u)]), 1i, global0.x) ^ (i32(-1i) * -2747i), any(!vec4<bool>(global0.x, false, global0.x, global0.x)) && all(vec2<bool>(global0.x, true))), func_2(1217f, Struct_1(u_input.c, true, -2147483647i, global0.x), u_input.c));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1012f, -500f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), _wgslsmith_f_op_f32(sign(-565f)))))), _wgslsmith_f_op_f32(f32(-1f) * -376f));
    var var_2 = Struct_1(39505u, false, abs(abs(_wgslsmith_mult_i32(7885i, -73489i)) ^ u_input.d.x), true);
    global1 = func_5(Struct_2(var_0.a, func_5(var_0, firstTrailingBit(vec3<u32>(4294967295u, 40554u, 27668u))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_2.c, u_input.d.x, var_0.b.c)), var_0.c), func_5(Struct_2(Struct_1(var_0.d.a, true, u_input.d.x, var_2.b), func_5(var_0, vec3<u32>(var_2.a, u_input.a, u_input.a)), vec3<i32>(var_2.c, var_0.d.c, var_0.b.c), func_7(Struct_1(u_input.c, global0.x, var_2.c, var_2.d), var_0).d), vec3<u32>(21092u, var_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, var_2.a))))), vec3<u32>(_wgslsmith_add_u32(0u, 1u) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(1u, var_2.a)) >> (firstTrailingBit(94630u) % 32u)) % 32u), ~func_4(var_1.x).x, 1u & _wgslsmith_mod_u32(abs(5103u), u_input.a))).b;
    global0 = select(vec2<bool>(any(select(vec2<bool>(false, var_2.b), !vec2<bool>(global0.x, var_0.d.b), true)), !global0.x), vec2<bool>(true || all(select(vec3<bool>(false, false, var_0.d.b), vec3<bool>(true, false, true), false)), true), !(!(!select(vec2<bool>(var_2.d, false), vec2<bool>(false, false), var_0.d.d))));
    var var_3 = Struct_1(~var_2.a, false, 0i, !(!var_0.b.d));
    let var_4 = func_7(var_0.a, Struct_2(func_6(func_2(-1248f, Struct_1(27559u, var_3.d, 1i, var_2.b), var_3.a & 14162u).d, var_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 32u)] - global2[_wgslsmith_index_u32(var_2.a, 32u)])))), Struct_1(~23715u, u_input.b >= u_input.b, 2147483647i, func_6(func_5(var_0, vec3<u32>(var_2.a, var_0.b.a, 19144u)), var_0, global2[_wgslsmith_index_u32(12761u, 32u)]).d), _wgslsmith_mult_vec3_i32(-reverseBits(vec3<i32>(-2147483647i, var_0.b.c, 2147483647i)), u_input.d), var_0.b)).b;
    var var_5 = ~((4294967295u | func_2(var_1.x, func_6(Struct_1(16352u, global0.x, var_4.c, var_2.b), Struct_2(var_4, var_0.d, u_input.e.zyw, var_0.d), vec4<f32>(var_1.x, var_1.x, -1184f, var_1.x)), firstTrailingBit(var_2.a)).d.a) | 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1496f, -100f) * vec2<f32>(var_1.x, -188f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1282f) * vec2<f32>(-791f, 317f))))))));
}

