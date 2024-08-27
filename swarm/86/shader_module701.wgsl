struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2097f, 1334f, 1127f);

var<private> global1: vec2<i32>;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, false), -26791i, true, 1i, vec4<u32>(4294967295u, 0u, 0u, 45230u));

var<private> global3: array<vec3<bool>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global3 = array<vec3<bool>, 12>();
    var var_0 = Struct_2(select(select(vec2<bool>(true, any(vec4<bool>(true, global2.c, false, global2.a.x))), vec2<bool>(false & global2.c, global2.a.x), true), global2.a, vec2<bool>(any(!global2.a), all(vec2<bool>(false, true)))), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.x, ~(-19129i)), -2147483647i >> (u_input.b % 32u)), 256f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1175f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), 2147483647i, ~reverseBits(global2.e << ((vec4<u32>(global2.e.x, 4294967295u, global2.e.x, global2.e.x) << (vec4<u32>(4294967295u, u_input.b, u_input.b, 12u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return vec2<bool>(!((var_0.b < 1i) || !(var_0.c & false)), global2.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(select(select(!select(arg_0.xy, vec2<bool>(arg_0.x, arg_0.x), false), select(!global2.a, func_3(), global2.a), true), select(vec2<bool>(true, false), vec2<bool>(all(vec4<bool>(true, arg_0.x, true, arg_0.x)), !global2.c), (arg_0.x & global2.c) == false), any(!select(arg_0, vec4<bool>(false, true, true, arg_0.x), arg_0))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-20646i, global1.x, global1.x, -26480i) >> (vec4<u32>(global2.e.x, u_input.b, arg_1, arg_1) % vec4<u32>(32u)), -vec4<i32>(global2.d, global2.b, 0i, 1i)), vec4<i32>(-u_input.a.x, global1.x, -84255i, -2147483647i)), global2.d), false, ~(-1i), select(global2.e | abs(vec4<u32>(29431u, u_input.b, u_input.b, global2.e.x) & global2.e), vec4<u32>(~global2.e.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~global2.e.x), u_input.b, arg_1), vec4<bool>(all(vec4<bool>(global2.a.x, false, global2.c, false)), true, func_3().x, arg_0.x)));
    global2 = var_0;
    let var_1 = Struct_1(-(~0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, -1000f, global0.x, 1617f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 1000f, global0.x, -386f)))), select(!vec4<bool>(arg_0.x, global2.c, global2.c, true), select(vec4<bool>(true, arg_0.x, global2.c, global2.a.x), vec4<bool>(var_0.c, global2.a.x, arg_0.x, false), vec4<bool>(var_0.c, false, var_0.c, false)), !arg_0))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, -379f, 650f, 197f))))), vec2<f32>(global0.x, 531f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1366f, _wgslsmith_f_op_f32(-global0.x), global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, 1741f, -1024f), vec4<f32>(-636f, global0.x, global0.x, global0.x)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + global0.x))), var_1.d.x, _wgslsmith_f_op_f32(select(var_1.d.x, global0.x, false)), _wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(-1000f, 2149f, 433f, global0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, var_1.b.x)))), var_1.b))));
    return var_0;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(select(!select(select(global2.a, arg_0, vec2<bool>(true, false)), !global2.a, arg_0), arg_0, arg_0.x), global1.x, arg_0.x | false, _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(0i, abs(global2.b), firstLeadingBit(u_input.c.x << (u_input.b % 32u)))), global2.e);
    global2 = func_2(!vec4<bool>(all(vec3<bool>(false, global2.a.x, var_0.a.x)) == any(vec4<bool>(true, global2.a.x, var_0.c, true)), var_0.c && true, (global2.a.x | var_0.c) && false, true), 1u);
    global1 = countOneBits(u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1746f, _wgslsmith_f_op_f32(-1164f * 1293f), -437f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1086f, global0.x)), global0.x)), -1304f, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x))))), !vec3<bool>(false, true, _wgslsmith_mod_i32(62290i, 1i) > (1743i ^ var_0.b))));
    var var_2 = var_0;
    return func_2(select(select(!select(vec4<bool>(var_2.c, var_2.a.x, arg_0.x, true), vec4<bool>(true, false, arg_0.x, global2.a.x), true), !vec4<bool>(global2.a.x, false, arg_0.x, false), !(global0.x >= -1217f)), select(vec4<bool>(var_2.c, !var_0.a.x, arg_0.x, false), !(!vec4<bool>(true, false, var_0.c, false)), true), true), ~u_input.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = global2.d;
    let var_1 = vec2<u32>(1u, firstTrailingBit(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e.x, u_input.b, global2.e.x, 4294967295u), vec4<u32>(u_input.b, 0u, 1u, global2.e.x)), 4294967295u, global2.a.x)));
    let var_2 = Struct_2(global2.a, 1i, arg_1.x, 2147483647i, select(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(global2.e.x, 47551u, arg_0.e.x), u_input.b >> (24235u % 32u), ~arg_0.e.x), ~vec4<u32>(arg_0.e.x, 0u, 38680u, 1u), arg_1) ^ min(abs(vec4<u32>(4294967295u, global2.e.x, 5363u, 4294967295u)) ^ (arg_0.e << (vec4<u32>(1u, arg_0.e.x, global2.e.x, global2.e.x) % vec4<u32>(32u))), ~(vec4<u32>(u_input.b, var_1.x, arg_0.e.x, arg_0.e.x) | arg_0.e)));
    var var_3 = vec2<u32>(_wgslsmith_div_u32(max(_wgslsmith_div_u32(var_1.x ^ 25785u, 4294967295u), var_2.e.x >> ((arg_0.e.x | u_input.b) % 32u)), arg_0.e.x), u_input.b);
    var var_4 = global0.zx;
    return ~global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1003f, global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(273f, 597f, -822f)))))));
    var var_0 = Struct_1(1602i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, global0.x, global0.x, global0.x) * vec4<f32>(-2377f, global0.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -106f, global0.x, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1100f, 548f, 169f, global0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -828f, -1832f, global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(168f, -645f, -159f, global0.x))))), vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(323f * global0.x) * _wgslsmith_f_op_f32(sign(-604f))), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-738f, global0.x))), _wgslsmith_f_op_f32(-1662f - _wgslsmith_f_op_f32(min(180f, 2233f)))))));
    let var_1 = Struct_2(select(!(!global2.a), !(!global2.a), all(vec2<bool>(true, true))), -func_4(func_1(vec2<bool>(false, global2.c)), select(vec4<bool>(global2.a.x, global2.c, global2.a.x, false), vec4<bool>(false, false, true, global2.a.x), vec4<bool>(true, global2.a.x, global2.c, global2.c))) << (1u % 32u), !any(!select(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(357u, 12u)])), 2147483647i, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u << (u_input.b % 32u), ~global2.e.x), u_input.b), 15912u, ~_wgslsmith_sub_u32(abs(41974u), _wgslsmith_clamp_u32(global2.e.x, 31484u, u_input.b)), ~(~4294967295u)));
    var var_2 = func_2(vec4<bool>(false, !(!var_1.a.x), any(!(!vec4<bool>(false, true, global2.c, true))), any(!vec4<bool>(var_1.a.x, true, true, var_1.a.x))), 40310u);
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(11707i, global1.x, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.c.x, -6936i, -16680i), vec3<i32>(abs(global2.d), func_2(vec4<bool>(false, global2.c, false, var_2.c), global2.e.x).d, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 71941i), u_input.a.zx)), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 24439i, var_1.d), -18419i, 1i)) ^ vec3<i32>(~(-global2.d), 13017i, ~(~global1.x)));
    var var_4 = _wgslsmith_f_op_f32(-global0.x);
    var_4 = 716f;
    var var_5 = global2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_1.a).b >> (select(reverseBits(_wgslsmith_div_u32(28233u, global2.e.x)), reverseBits(1u), !(-2147483647i <= var_0.a)) % 32u), -1643f, _wgslsmith_f_op_vec3_f32(-var_0.b.xzz));
}

