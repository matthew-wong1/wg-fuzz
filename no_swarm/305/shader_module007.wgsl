struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(true, vec3<f32>(612f, 454f, 704f), vec4<bool>(true, true, true, false), vec4<i32>(43861i, -19666i, -29476i, 5392i), Struct_1(vec4<i32>(-3421i, 1046i, 0i, 1i)));

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(36035u, 45966u, _wgslsmith_mult_u32(~(~firstTrailingBit(u_input.b)), u_input.b));
    var var_1 = ~((select(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(52610u, 23055u), true) >> (vec2<u32>(1u, var_0.x) % vec2<u32>(32u))) ^ firstTrailingBit(_wgslsmith_div_vec2_u32(var_0.zz, ~vec2<u32>(u_input.b, 1u))));
    var_1 = var_0.yz;
    global0 = any(!(!(!(!vec4<bool>(true, false, global1.a, global1.a)))));
    global0 = any(global1.c.zy);
    return 1u;
}

fn func_2() -> bool {
    var var_0 = global1.e.a;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(4294967295u), u_input.b), func_3());
    let var_2 = 75579i;
    let var_3 = _wgslsmith_clamp_vec3_i32(var_0.zyx, _wgslsmith_mult_vec3_i32(select(global1.e.a.zxy, (global1.d.www & var_0.zyx) | countOneBits(var_0.yxy), select(false, false, false)), vec3<i32>(_wgslsmith_dot_vec2_i32(-global1.e.a.zy, _wgslsmith_mult_vec2_i32(global1.e.a.ww, global1.e.a.zz)), ~var_0.x, _wgslsmith_mult_i32(-1i, 2944i >> (1u % 32u)))), ~(vec3<i32>(-1i) * -abs(vec3<i32>(39664i, global1.e.a.x, 0i))));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-824f - global1.b.x) * _wgslsmith_f_op_f32(-global1.b.x))));
    return true;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 11>();
    var var_0 = Struct_2(!(!func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2219f, -369f, 400f) * global1.b)) - global1.b), global1.c, -(~(global1.d ^ countOneBits(global1.e.a))), global1.e);
    var var_1 = global1.e.a.wxz;
    global3 = array<Struct_1, 6>();
    var var_2 = global3[_wgslsmith_index_u32(min(u_input.a, ~_wgslsmith_sub_u32(u_input.b, u_input.a)), 6u)];
    return Struct_1(-_wgslsmith_div_vec4_i32(vec4<i32>(abs(var_1.x), var_1.x, var_2.a.x >> (37270u % 32u), -1i), vec4<i32>(-2147483647i, -global1.e.a.x, ~0i, firstTrailingBit(global1.d.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = ~vec4<u32>(1u, func_3(), _wgslsmith_clamp_u32(arg_0.x, reverseBits(~u_input.a), countOneBits(u_input.a)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(max(global1.b, vec3<f32>(global1.b.x, global1.b.x, global1.b.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(556f, 1377f, 300f)), global1.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.b - global1.b))), global1.c.yxy))) * global1.b);
    return Struct_2(all(select(global1.c, select(select(vec4<bool>(true, false, global1.c.x, true), global1.c, arg_2), !vec4<bool>(true, false, arg_2, global1.a), vec4<bool>(true, true, true, true)), var_1.x < _wgslsmith_div_f32(1096f, global1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, 623f)), global1.b.x, 691f))), !(!select(vec4<bool>(arg_2, false, true, arg_2), global1.c, select(vec4<bool>(arg_2, global1.a, false, arg_2), vec4<bool>(true, global1.a, true, false), global1.c))), vec4<i32>(global1.e.a.x, -31584i, abs(3064i), arg_1.a.x), Struct_1(_wgslsmith_div_vec4_i32(global1.e.a, vec4<i32>(2147483647i, -28678i, -2147483647i, 0i) ^ global1.d)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_i32(global1.e.a, _wgslsmith_mod_vec4_i32(~arg_2.a, -(arg_1.e.a | arg_2.a)));
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(abs(global1.b.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x)))), global1.e.a.x > ~arg_1.e.a.x);
    let var_2 = arg_1;
    let var_3 = Struct_1(vec4<i32>(var_2.d.x, abs(max(~(-1i), _wgslsmith_div_i32(arg_1.d.x, global1.d.x))), firstLeadingBit(_wgslsmith_add_i32(-4856i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.x, arg_1.e.a.x), var_2.d.yyy))), _wgslsmith_clamp_i32(0i & arg_2.a.x, _wgslsmith_dot_vec3_i32(arg_2.a.xxz, var_2.d.zxy), abs(-2147483647i)) << (u_input.b % 32u)));
    global2 = array<Struct_1, 11>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 6>();
    global1 = func_5(_wgslsmith_mult_vec4_i32(global1.e.a, global1.e.a), func_4(~vec2<u32>(u_input.b | 37663u, ~0u), func_1(), any(select(global1.c.yy, global1.c.yw, vec2<bool>(true, global1.c.x))) & global1.a), global1.e);
    let var_0 = !func_5(global1.d, Struct_2(true, _wgslsmith_f_op_vec3_f32(func_5(vec4<i32>(-392i, global1.d.x, 0i, global1.e.a.x), Struct_2(global1.c.x, global1.b, vec4<bool>(false, global1.a, global1.c.x, false), global1.d, global1.e), Struct_1(global1.d)).b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, global1.b.x, 1000f))), global1.c, ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.d.x, global1.e.a.x, global1.d.x, 0i), vec4<i32>(global1.e.a.x, -9593i, global1.d.x, -2147483647i)), func_4(vec2<u32>(u_input.b, u_input.a), global1.e, false).e), func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(57810u, u_input.a), vec2<u32>(29837u, u_input.b)) & ~vec2<u32>(u_input.b, 45960u), global2[_wgslsmith_index_u32(u_input.b, 11u)], true).e).c;
    global2 = array<Struct_1, 11>();
    global1 = func_4(vec2<u32>(17622u, select(13358u, _wgslsmith_sub_u32(u_input.a, 68702u), var_0.x)), func_5(~(~global1.e.a >> (~vec4<u32>(4294967295u, u_input.a, 1u, 0u) % vec4<u32>(32u))), Struct_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(1118f, -1070f, -873f) - global1.b), vec4<bool>(global1.b.x != -355f, true, true, true & global1.c.x), ~(-global1.d), Struct_1(max(vec4<i32>(global1.e.a.x, 16998i, global1.e.a.x, global1.e.a.x), vec4<i32>(global1.d.x, global1.e.a.x, global1.e.a.x, global1.d.x)))), global1.e).e, false);
    global0 = !(!(!func_2()));
    var var_1 = countOneBits(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1.e.a, _wgslsmith_div_vec4_f32(vec4<f32>(2396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + global1.b.x), _wgslsmith_f_op_f32(select(global1.b.x, 1000f, !var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.b.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2198f)) + _wgslsmith_f_op_f32(819f + -1060f)), global1.b.x, _wgslsmith_f_op_f32(-1000f * func_4(vec2<u32>(9545u, 1u), Struct_1(vec4<i32>(53556i, 2147483647i, global1.e.a.x, -1i)), global1.c.x).b.x), 261f)));
}

