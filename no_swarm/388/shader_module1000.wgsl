struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<u32, 19> = array<u32, 19>(76806u, 4294967295u, 16223u, 12163u, 1u, 14541u, 1u, 16051u, 32600u, 4294967295u, 15996u, 12930u, 21317u, 1u, 12296u, 0u, 0u, 81936u, 4294967295u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(global1.b, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(33491u, 19u)], 0u, global2[_wgslsmith_index_u32(u_input.d, 19u)], arg_1), vec4<u32>(0u, 74978u, 4294967295u, u_input.d)) >> (_wgslsmith_div_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.d, 19u)]), global2[_wgslsmith_index_u32(max(arg_1, 4294967295u), 19u)]) % 32u)));
    let var_1 = Struct_3(43854u | ~_wgslsmith_div_u32(global1.a, global2[_wgslsmith_index_u32(1u, 19u)]), var_0.a);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.a.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)), _wgslsmith_f_op_f32(-1f))))));
    var var_3 = Struct_2(var_1.b.a, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))), global1.b.b.x, _wgslsmith_f_op_f32(step(1758f, _wgslsmith_f_op_f32(sign(-2767f))))), vec2<bool>(arg_0.c.x, !(all(vec2<bool>(global1.b.a.c, true)) || !var_1.b.c.x)));
    global1 = var_1;
    return var_1;
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec2<f32> {
    var var_0 = ~(~countOneBits(vec2<u32>(35600u, arg_1) ^ vec2<u32>(global1.a, 65919u)) & ~(max(vec2<u32>(48433u, arg_0.b), vec2<u32>(46064u, 4294967295u)) << (~vec2<u32>(31742u, global2[_wgslsmith_index_u32(57744u, 19u)]) % vec2<u32>(32u))));
    let var_1 = Struct_3(_wgslsmith_clamp_u32(33770u, 41931u, var_0.x), Struct_2(arg_0.a.a, arg_0.a.b, select(select(arg_0.a.c, func_2(Struct_2(arg_0.a.a, arg_0.a.b, vec2<bool>(false, false)), 4294967295u).b.c, select(true, true, global1.b.a.d)), vec2<bool>(global1.b.a.d, true), select(arg_0.a.c, vec2<bool>(false, false), vec2<bool>(global1.b.c.x, true)))));
    var var_2 = -6816i;
    let var_3 = Struct_4(func_2(arg_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 10689u), ~vec2<u32>(var_0.x, global2[_wgslsmith_index_u32(var_1.a, 19u)]))).b, 3678u);
    global1 = var_1;
    return _wgslsmith_f_op_vec2_f32(var_3.a.b.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, var_1.b.b.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-657f, 1458f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(311f, var_1.b.b.x) - vec2<f32>(958f, var_1.b.a.b))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = arg_0.x;
    global0 = false;
    global1 = Struct_3(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(u_input.d, u_input.d), max(32739u, u_input.d)) << (reverseBits(10432u) % 32u), 19u)], 19u)] & max(1u, func_2(arg_3, _wgslsmith_mult_u32(global1.a, 49474u)).a), func_2(global1.b, _wgslsmith_mod_u32(1u, firstTrailingBit(u_input.d) | global1.a)).b);
    let var_1 = Struct_5(Struct_3(~(~41977u), global1.b), arg_3.b);
    global0 = true;
    return var_1.a.b.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> vec3<u32> {
    let var_0 = Struct_5(func_2(Struct_2(Struct_1(vec3<i32>(1i, -21542i, arg_1.a.a.a.x), _wgslsmith_f_op_f32(-global1.b.b.x), false, all(vec4<bool>(arg_0.x, false, false, arg_2.b.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2071f, -330f, global1.b.a.b)), !arg_1.a.c), 30154u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.b) * _wgslsmith_f_op_vec3_f32(func_4(-firstLeadingBit(vec4<i32>(-2147483647i, arg_1.a.a.a.x, arg_1.a.a.a.x, arg_1.a.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1096f, global1.b.a.b) - vec2<f32>(arg_2.b.b.x, 134f)) - _wgslsmith_f_op_vec2_f32(func_3(arg_1, 51889u))), _wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_vec2_f32(func_3(arg_1, 53259u)).x), arg_2.b))));
    var var_1 = func_2(var_0.a.b, ~4294967295u).b;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(global1.b.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.b.a.b, 2060f) - vec3<f32>(var_1.b.x, -696f, var_1.a.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1.a.b)) - _wgslsmith_f_op_vec3_f32(var_1.b * var_0.b))))));
    let var_3 = ~(~(reverseBits(vec3<u32>(arg_1.b, var_0.a.a, global2[_wgslsmith_index_u32(4294967295u, 19u)])) >> (countOneBits(vec3<u32>(u_input.d, arg_2.a, 1u)) % vec3<u32>(32u))) & ~(~min(vec3<u32>(global1.a, arg_2.a, 35683u), vec3<u32>(64065u, 5843u, global2[_wgslsmith_index_u32(26624u, 19u)]))));
    let var_4 = !global1.b.c;
    return var_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: bool) -> vec4<bool> {
    global0 = false;
    var var_0 = Struct_5(Struct_3(~1u, Struct_2(global1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(arg_2.x, arg_2.x, 739f))), !select(vec2<bool>(false, arg_3), global1.b.c, false))), _wgslsmith_f_op_vec3_f32(-arg_2));
    var var_1 = max(arg_0.yyy, var_0.a.b.a.a);
    var_1 = arg_0.xxw;
    var var_2 = var_0.a.b.a;
    return vec4<bool>(global1.b.c.x, true, var_0.a.b.c.x || arg_3, func_2(global1.b, ~(~0u)).b.c.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_5(Struct_3(~13851u, func_2(Struct_2(global1.b.a, global1.b.b, arg_1.b.c), ~0u).b), global1.b.b);
    var_0 = Struct_5(Struct_3(global1.a, var_0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1421f, 805f, 1232f) - vec3<f32>(-690f, 283f, 1927f)), global1.b.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.x, global1.b.a.b, arg_1.b.a.b)))));
    var var_1 = vec4<i32>(firstLeadingBit(abs(arg_1.b.a.a.x)), arg_1.b.a.a.x, func_2(func_2(func_2(var_0.a.b, ~14614u).b, 0u).b, ~1u).b.a.a.x, ~(~_wgslsmith_add_i32(60811i, -2147483647i) << (~u_input.d % 32u)));
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-47491i, 19850i, arg_1.b.a.a.x) >> (~vec3<u32>(var_0.a.a, 1u, var_0.a.a) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -1i, 1i), vec3<i32>(-67704i, 1i, -46652i))) >> ((vec3<u32>(_wgslsmith_add_u32(20550u, 98546u), 20502u, global2[_wgslsmith_index_u32(1u, 19u)]) >> (vec3<u32>(~global1.a, ~4294967295u, ~0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.x)), false, func_5(-vec4<i32>(arg_1.b.a.a.x, ~u_input.c.x, ~(-4663i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.b, -13814i), u_input.c.zzx)), ~countOneBits(firstTrailingBit(var_0.a.a)), arg_1.b.b, true).x);
    global0 = -201f == _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(max(vec4<i32>(arg_1.b.a.a.x, arg_1.b.a.a.x, 2147483647i, 45917i), vec4<i32>(arg_1.b.a.a.x, -1i, 1i, var_0.a.b.a.a.x)) << (vec4<u32>(arg_1.a, arg_1.a, 1u, var_0.a.a) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(global1.b.b.zz, vec2<f32>(global1.b.b.x, var_0.a.b.b.x)), var_0.b.x, Struct_2(Struct_1(vec3<i32>(u_input.b, global1.b.a.a.x, -12400i), -303f, false, global1.b.a.c), arg_1.b.b, var_0.a.b.c))).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f * _wgslsmith_f_op_vec3_f32(func_4(u_input.a, vec2<f32>(var_2.b, -1210f), var_2.b, arg_1.b)).x) - _wgslsmith_f_op_f32(-var_2.b)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(func_5(vec4<i32>(~(-2147483647i), ~47325i, firstLeadingBit(-28896i), -countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(func_1(vec3<bool>(global1.b.c.x, true, global1.b.c.x), Struct_4(global1.b, u_input.d), Struct_3(0u, global1.b), u_input.a.x), ~vec3<u32>(4294967295u, global1.a, 34788u)) & _wgslsmith_add_u32(global1.a, func_2(Struct_2(global1.b.a, vec3<f32>(651f, -1000f, global1.b.a.b), global1.b.c), u_input.d).a), _wgslsmith_f_op_vec3_f32(global1.b.b * vec3<f32>(global1.b.b.x, _wgslsmith_f_op_f32(-global1.b.a.b), func_2(Struct_2(Struct_1(vec3<i32>(u_input.c.x, global1.b.a.a.x, global1.b.a.a.x), -463f, false, false), global1.b.b, global1.b.c), u_input.d).b.a.b)), !global1.b.a.c != global1.b.c.x), Struct_3(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global1.a, 0u, global2[_wgslsmith_index_u32(25254u, 19u)]), vec4<u32>(109817u, 4294967295u, global2[_wgslsmith_index_u32(global1.a, 19u)], 4294967295u))), global1.b));
    global1 = Struct_3(0u, Struct_2(func_2(global1.b, ~_wgslsmith_div_u32(1u, u_input.d)).b.a, func_2(Struct_2(func_6(vec4<bool>(true, false, true, global1.b.c.x), Struct_3(33565u, Struct_2(global1.b.a, global1.b.b, vec2<bool>(global1.b.c.x, global1.b.a.c)))).b.a, vec3<f32>(global1.b.a.b, global1.b.a.b, 1518f), select(vec2<bool>(false, true), global1.b.c, vec2<bool>(global1.b.a.c, global1.b.a.d))), ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(36097u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)])).b.b, !(!global1.b.c)));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a.b), _wgslsmith_f_op_f32(step(global1.b.a.b, global1.b.b.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1633f - _wgslsmith_f_op_f32(global1.b.a.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f), global1.b.a.b))));
    var var_2 = abs(vec3<u32>(u_input.d, 24363u, countOneBits(_wgslsmith_div_u32(u_input.d, ~327u))));
    var var_3 = global1.b.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global1.b.b + global1.b.b));
}

