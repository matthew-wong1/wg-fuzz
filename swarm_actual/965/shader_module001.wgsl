struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_1 = Struct_1(1u, 246f, vec3<f32>(1220f, -1740f, 1019f), 23999i);

var<private> global3: array<Struct_1, 26>;

var<private> global4: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(9641u, 1u, 0u), vec3<u32>(22543u, 44006u, 1u), vec3<u32>(6485u, 0u, 49153u), vec3<u32>(1u, 43663u, 0u), vec3<u32>(5458u, 0u, 0u), vec3<u32>(1u, 34999u, 99064u), vec3<u32>(53622u, 28033u, 1u), vec3<u32>(7607u, 52152u, 51104u), vec3<u32>(39207u, 1u, 7468u), vec3<u32>(26735u, 0u, 1u), vec3<u32>(40362u, 4294967295u, 0u), vec3<u32>(82593u, 11767u, 0u), vec3<u32>(4294967295u, 0u, 64844u), vec3<u32>(22296u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 11702u, 0u), vec3<u32>(4294967295u, 75549u, 12280u), vec3<u32>(4294967295u, 21189u, 23089u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 120722u), vec3<u32>(0u, 1u, 1u), vec3<u32>(49705u, 1u, 75378u), vec3<u32>(23193u, 34714u, 19663u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4207u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 9416u, 31001u), vec3<u32>(1u, 1u, 1u), vec3<u32>(13738u, 1u, 6197u), vec3<u32>(37252u, 4294967295u, 75640u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = arg_1;
    let var_0 = vec4<i32>((global2.d | -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, -42227i), vec2<i32>(global1.x, 14696i))) ^ global1.x, -firstTrailingBit(-abs(2147483647i)), -_wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, 2147483647i, global1.x, global1.x), vec4<i32>(36629i, arg_1.d, global2.d, global1.x))), -55883i), _wgslsmith_mod_i32(~firstTrailingBit(reverseBits(global2.d)), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(1i, global1.x), -_wgslsmith_div_i32(global2.d, -16889i))));
    var var_1 = 1i;
    let var_2 = vec2<bool>(!all(!(!vec4<bool>(arg_0, arg_0, false, arg_0))), true);
    var var_3 = var_2.x;
    return global2.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(106u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-100f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(2198f, arg_2.b))))) + _wgslsmith_f_op_f32(-1000f + 237f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-739f)))) - vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(func_3(true, global3[_wgslsmith_index_u32(reverseBits(global2.a), 26u)])), -1332f)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-24834i, arg_2.d, arg_2.d), vec3<i32>(arg_2.d, 32801i, arg_0.d)), u_input.b)), arg_1.x & _wgslsmith_mult_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-14494i, global1.x, 2147483647i, -7104i), vec4<i32>(arg_2.d, 0i, 0i, u_input.b.x)))));
    global0 = array<u32, 16>();
    global2 = var_0;
    var var_1 = select(~(~_wgslsmith_mult_vec3_i32(global1.zxz, _wgslsmith_add_vec3_i32(vec3<i32>(0i, 22803i, -83773i), global1.zzy))), u_input.b, !vec3<bool>(true, true, select(true, true, all(vec3<bool>(true, false, true)))));
    let var_2 = arg_2;
    return -_wgslsmith_sub_i32(select(min(_wgslsmith_div_i32(-32378i, -2147483647i), -1i), _wgslsmith_mult_i32(0i, -2147483647i), all(vec4<bool>(true, true, true, false))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(select(global2.d, -1i, false), var_2.d >> (108199u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 56652i, global1.x, 30642i), vec4<i32>(global2.d, var_2.d, arg_2.d, u_input.a))), _wgslsmith_mod_i32(-2147483647i, max(0i, 2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(global2.a), 26u)];
    let var_1 = global1.x;
    global4 = array<vec3<u32>, 31>();
    var var_2 = ~func_2(Struct_1(~1u, arg_0.b, arg_0.c, 0i), global1.yx, Struct_1(~(~var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f * var_0.b)), vec3<f32>(var_0.b, _wgslsmith_f_op_f32(212f * arg_0.c.x), _wgslsmith_f_op_f32(round(770f))), 13775i));
    let var_3 = vec2<bool>(all(!select(vec3<bool>(true, arg_2, true), arg_1.zwx, vec3<bool>(true, arg_3, false))) && (firstTrailingBit(_wgslsmith_add_i32(0i, arg_0.d)) <= arg_0.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x * var_0.b), 1195f)) < -178f);
    return Struct_1(~(~(0u | global0[_wgslsmith_index_u32(1u, 16u)])) ^ 95364u, -1022f, _wgslsmith_f_op_vec3_f32(-global2.c), ~global2.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = func_1(func_1(Struct_1(min(~0u, ~48506u), _wgslsmith_f_op_f32(step(global2.b, _wgslsmith_f_op_f32(arg_1.c.x - global2.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c * global2.c) + global2.c), -40867i), select(vec4<bool>(!arg_0.x, arg_0.x, false, global1.x <= global1.x), vec4<bool>(true, arg_0.x, arg_0.x, global2.a > global2.a), arg_0), true, any(!arg_0.zwy)), select(select(vec4<bool>(-1341i != u_input.a, all(vec2<bool>(false, arg_0.x)), true, global0[_wgslsmith_index_u32(16940u, 16u)] != 20163u), !select(vec4<bool>(false, arg_0.x, true, false), arg_0, true), select(!vec4<bool>(arg_0.x, false, arg_0.x, true), !vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x))), select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), true), select(arg_0, !select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), false), vec4<bool>(false || arg_0.x, arg_0.x, !arg_0.x, all(arg_0.yz)))), true, all(vec2<bool>(arg_0.x, true)));
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, func_1(Struct_1(global0[_wgslsmith_index_u32(global2.a, 16u)], var_0.b, arg_1.c, 0i), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0.x, true).a), ~var_0.a), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global2.a, 16u)], global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f), -944f), _wgslsmith_div_f32(arg_1.c.x, arg_1.b)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c.x, arg_1.c.x, -230f))), 1i);
    let var_2 = vec2<u32>(~1u, abs(min(1u, min(var_1.a, ~arg_1.a))));
    let var_3 = 1000f;
    global2 = Struct_1(abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_1.a, 1u)), var_2)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(580f)))), global2.c, arg_1.d);
    return -12919i;
}

fn func_5(arg_0: i32) -> Struct_1 {
    global0 = array<u32, 16>();
    let var_0 = !vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))) || (global2.c.x >= global2.c.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global2.c.x)), 945f, _wgslsmith_f_op_f32(490f - global2.b), _wgslsmith_f_op_f32(-688f - 908f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b, 403f, global2.b, global2.c.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c.x, global2.b, global2.b, -415f)))))))));
    global2 = Struct_1(global0[_wgslsmith_index_u32(global2.a | global2.a, 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(sign(1843f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.b)), 128f)) - 359f), global2.c, arg_0);
    var var_2 = global3[_wgslsmith_index_u32(78920u, 26u)];
    return Struct_1(~_wgslsmith_div_u32(var_2.a, global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(138f - var_1.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) - _wgslsmith_f_op_f32(-1872f - var_1.x))) + vec3<f32>(-231f, global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))))), ~_wgslsmith_add_i32((i32(-1i) * -15803i) << (select(var_2.a, 0u, false) % 32u), _wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(var_2.d, -41384i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~8894u, 26u)];
    let var_1 = 1f;
    var var_2 = -firstTrailingBit(vec2<i32>(~2147483647i, ~0i));
    global0 = array<u32, 16>();
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(any(vec3<bool>(false, true, false)), false), select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), true)));
    let var_4 = func_5(func_4(select(vec4<bool>(true, false && var_3.x, any(vec3<bool>(var_3.x, false, var_3.x)), true), vec4<bool>(!var_3.x, any(vec3<bool>(var_3.x, var_3.x, true)), true, false), select(!vec4<bool>(var_3.x, true, true, false), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(var_3.x, true, var_3.x, false)), !vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))), func_1(Struct_1(reverseBits(4294967295u), -1000f, vec3<f32>(global2.b, -599f, var_0.c.x), global1.x), vec4<bool>(false, true, all(vec4<bool>(false, false, true, false)), true), all(!var_3), !var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(max(var_0.d, -49173i), -1i)), _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(global2.d, reverseBits(2147483647i))) >> ((var_0.a << (global0[_wgslsmith_index_u32(global2.a, 16u)] % 32u)) % 32u), global4[_wgslsmith_index_u32(~(~0u), 31u)] >> (vec3<u32>(_wgslsmith_mult_u32(var_0.a, var_4.a), max(global2.a, global0[_wgslsmith_index_u32(~76483u, 16u)]), ~min(58034u, var_0.a)) % vec3<u32>(32u)), global1.yyx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(select(var_1, -208f, true))))));
}

