struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22>;

var<private> global1: Struct_1 = Struct_1(false, i32(-2147483648), false, 1u, vec3<i32>(i32(-2147483648), 2147483647i, -52127i));

var<private> global2: vec2<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = ~27056u;
    var_0 = arg_1.d & u_input.b;
    return ~26178u;
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<u32>) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.zz + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1069f, global2.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, arg_0.d.x))))))));
    global1 = arg_0.e.c;
    let var_0 = arg_0;
    global0 = array<Struct_5, 22>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.x + 583f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2036f - global2.x) * global2.x))));
    return -arg_0.b.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(min(global1.d, func_2(823f, Struct_1(global1.a, u_input.a, global1.c, arg_0, vec3<i32>(18749i, -26621i, global1.b)))), 1620u, 0u), 0u, _wgslsmith_mod_u32(101233u, firstTrailingBit(_wgslsmith_add_u32(arg_0, u_input.b) << (57610u % 32u))));
    let var_1 = vec2<bool>(!global1.a, false);
    let var_2 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(-34104i, _wgslsmith_add_i32(u_input.a, -52789i)), ~4309i, func_3(Struct_4(vec4<i32>(2147483647i, 40379i, u_input.a, u_input.a), Struct_2(arg_0, 2147483647i, Struct_1(false, -1i, global1.c, 0u, global1.e), Struct_1(var_1.x, -1802i, global1.a, arg_0, vec3<i32>(-2147483647i, -1i, u_input.a))), 18626u, vec4<f32>(global2.x, global2.x, global2.x, -2043f), Struct_2(1u, -11777i, Struct_1(var_1.x, global1.e.x, global1.c, 0u, vec3<i32>(u_input.a, global1.b, 20661i)), Struct_1(global1.a, -2147483647i, false, var_0.x, vec3<i32>(1i, u_input.a, 36589i)))), select(vec3<bool>(false, true, true), vec3<bool>(global1.c, true, true), vec3<bool>(true, var_1.x, false)), vec2<u32>(4294967295u, 0u) << (vec2<u32>(arg_0, 46887u) % vec2<u32>(32u))), 1i) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -46532i), _wgslsmith_mod_vec4_i32(vec4<i32>(37171i, 64044i, 1i, 1i), vec4<i32>(0i, -177i, global1.e.x, -1i))), Struct_2(_wgslsmith_div_u32(select(~var_0.x, countOneBits(7804u), all(var_1)), _wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(12497u, 0u, 1u)))), u_input.a & ~firstTrailingBit(-5611i), Struct_1(false, 0i, select(select(false, global1.c, global1.c), !var_1.x, !var_1.x), arg_0, vec3<i32>(-1i, select(global1.b, u_input.a, false), -u_input.a)), Struct_1(any(vec3<bool>(false, false, var_1.x)), _wgslsmith_add_i32(-10288i, ~(-1i)), true, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, global1.d), var_0.yz), reverseBits(global1.e << (vec3<u32>(var_0.x, 1u, 19510u) % vec3<u32>(32u))))), _wgslsmith_div_u32(1u, ~1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -1156f, global2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, -623f, global2.x), vec4<f32>(1228f, -380f, -1003f, 1386f), false)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 923f, -869f)))))), Struct_2(arg_0, 7542i, Struct_1(global1.a, global1.b, true, func_2(-370f, Struct_1(global1.a, -2147483647i, true, 0u, global1.e)), -vec3<i32>(u_input.a, -43950i, u_input.a)), Struct_1(true, 5415i, true, _wgslsmith_clamp_u32(max(4634u, 0u), 49806u << (global1.d % 32u), global1.d), select(vec3<i32>(-63246i, global1.b, 31139i), global1.e, vec3<bool>(true, true, true)))));
    return var_2.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_clamp_u32(~4294967295u, 0u, global1.d));
    let var_1 = false;
    var_0 = func_1(0u);
    let var_2 = Struct_2(22099u, -func_1(abs(~var_0.d)).e.x, func_1(1u ^ (15053u | abs(u_input.b))), Struct_1(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 36906u, 12361u), vec4<u32>(43092u, 1u, 4294967295u, var_0.d)) & min(44509u, 24792u)).a, global1.e.x, !var_1, firstLeadingBit(4294967295u), countOneBits(vec3<i32>(global1.b, global1.b, reverseBits(global1.b)))));
    var var_3 = 28614u;
    let var_4 = -379f;
    var var_5 = !select(vec3<bool>(true, 1u >= _wgslsmith_mod_u32(var_0.d, u_input.b), var_1), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec2<bool>(var_0.a, true))), select(vec3<bool>(true, all(vec3<bool>(global1.a, true, false)), false), vec3<bool>(false, select(var_1, var_2.d.a, true), true), select(vec3<bool>(true, true, var_0.c), select(vec3<bool>(var_1, var_2.d.c, false), vec3<bool>(false, var_0.c, true), vec3<bool>(var_1, var_0.c, var_2.d.a)), vec3<bool>(var_1, false, var_2.c.c))));
    var var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, var_4)), 275f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1876f - 1202f), 208f)), global2.x), var_5.yx));
    let var_7 = Struct_3(var_2, -(((vec4<i32>(-11389i, global1.e.x, 2147483647i, u_input.a) | vec4<i32>(-44546i, var_2.d.b, u_input.a, var_0.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.c.d, global1.d, 4294967295u), vec4<u32>(global1.d, var_2.c.d, 1u, 18873u), vec4<u32>(4182u, 4294967295u, 4294967295u, 10844u)) % vec4<u32>(32u))) >> (abs(vec4<u32>(var_0.d, global1.d, 30262u, 0u) ^ vec4<u32>(var_0.d, u_input.b, u_input.b, 1u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 56749u, 5892i, vec2<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), var_0.d), ~(~0u));
}

