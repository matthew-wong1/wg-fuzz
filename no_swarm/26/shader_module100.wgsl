struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = abs(select(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0.b, 1u, 1u), vec4<u32>(59103u, 6931u, 6619u, 1u)), ~vec4<u32>(16247u, u_input.d, 1u, u_input.c) ^ (vec4<u32>(0u, 22246u, u_input.d, arg_0.x) & vec4<u32>(1u, arg_0.x, 46851u, 4294967295u))), !(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], true)))));
    var var_1 = Struct_2(abs(abs(u_input.e.x)) & ~(~(-14870i)), firstTrailingBit(~(~abs(u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.c.x - 282f), global0.c.x, _wgslsmith_div_f32(global0.c.x, global0.c.x)) * _wgslsmith_f_op_vec3_f32(sign(global0.c)))));
    let var_2 = _wgslsmith_mult_i32(select(~(arg_1.a & -1i), 1i, true) | 0i, 1i);
    var var_3 = (_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.x, global0.b, 22699u), var_0.xyw, abs(~vec3<u32>(4294967295u, 40533u, 0u))) << (var_0.xxz % vec3<u32>(32u))) << (~abs(vec3<u32>(28073u & var_0.x, _wgslsmith_div_u32(28422u, 2026u), _wgslsmith_clamp_u32(98044u, 1u, 0u))) % vec3<u32>(32u));
    let var_4 = firstTrailingBit(_wgslsmith_dot_vec2_u32(var_0.zx, vec2<u32>(11931u, _wgslsmith_sub_u32(0u, arg_0.x))));
    return var_1.c.x;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_5 {
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], true, true);
    var var_1 = Struct_3(select(vec4<bool>(false & !global1[_wgslsmith_index_u32(global0.b, 29u)], false, global1[_wgslsmith_index_u32(0u, 29u)], var_0.x), select(vec4<bool>(true, false, any(vec4<bool>(true, global1[_wgslsmith_index_u32(30601u, 29u)], global1[_wgslsmith_index_u32(u_input.d, 29u)], false)), !var_0.x), !select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, false, global1[_wgslsmith_index_u32(global0.b, 29u)], var_0.x), vec4<bool>(true, true, true, true)), var_0.x), select(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(36927u, 29u)], false, var_0.x), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 29u)], true, var_0.x, global1[_wgslsmith_index_u32(u_input.c, 29u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 29u)], var_0.x, true)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.b, 29u)], false, global1[_wgslsmith_index_u32(u_input.d, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], true, var_0.x, global1[_wgslsmith_index_u32(11531u, 29u)]), vec4<bool>(var_0.x, var_0.x, true, global1[_wgslsmith_index_u32(global0.b, 29u)])), !(!global1[_wgslsmith_index_u32(68078u, 29u)]))), vec2<f32>(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.d, 4294967295u), Struct_1(arg_1))), global0.c.x))), -903f));
    global0 = Struct_2(arg_1, 18983u, vec3<f32>(_wgslsmith_div_f32(var_1.b.x, global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2102f), 607f));
    var var_2 = all(var_1.a);
    global1 = array<bool, 29>();
    return Struct_5(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, 0u, global0.b), vec3<u32>(global0.b, 1u, global0.b)) >> (vec3<u32>(u_input.d >> (u_input.c % 32u), ~4294967295u, ~78216u) % vec3<u32>(32u))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-441f * arg_0))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    var var_0 = 0i;
    let var_1 = u_input.a.x;
    global0 = Struct_2(_wgslsmith_mod_i32(-2147483647i, -2147483647i), 1u, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) - global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f * arg_3))))));
    return Struct_2(firstLeadingBit(arg_0.b) << (abs(~_wgslsmith_div_u32(1u, global0.b)) % 32u), reverseBits(u_input.c), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(arg_0.a.yx, Struct_1(var_1))))), arg_1.x, _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(trunc(global0.c.x)))))));
}

fn func_1() -> Struct_4 {
    global0 = func_4(func_2(729f, 1i), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x * -372f), _wgslsmith_f_op_f32(abs(187f))), _wgslsmith_f_op_f32(sign(func_2(_wgslsmith_f_op_f32(759f - 282f), 2147483647i).c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.c.x)))))), _wgslsmith_f_op_f32(-global0.c.x)), !(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false, global1[_wgslsmith_index_u32(u_input.c, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(global0.b, 29u)], global1[_wgslsmith_index_u32(global0.b, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], false, global1[_wgslsmith_index_u32(0u, 29u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(min(-313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.x)))))));
    global0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-302f, global0.c.x)), firstTrailingBit(_wgslsmith_div_i32(global0.a & 0i, ~u_input.a.x))).b, abs(100870u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(462f)) * _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1247f)))))));
    let var_1 = vec4<i32>(1i, 1i, u_input.b.x, -38534i);
    var var_2 = -select(vec3<i32>(u_input.a.x & -72639i, u_input.e.x, 1i), vec3<i32>(~2147483647i, ~global0.a, _wgslsmith_sub_i32(26563i, var_1.x)) >> (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b, global0.b, 12609u), vec3<u32>(global0.b, 39180u, u_input.c), vec3<u32>(102236u, global0.b, 9998u)), vec3<u32>(u_input.d, 4294967295u, u_input.d)) % vec3<u32>(32u)), vec3<bool>(_wgslsmith_f_op_f32(-global0.c.x) >= _wgslsmith_f_op_f32(-333f + -514f), true, false));
    return Struct_4(vec4<f32>(-1678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1108f) + _wgslsmith_f_op_f32(-832f * -238f)) + global0.c.x), -420f, _wgslsmith_f_op_f32(-global0.c.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_mult_i32(global0.a, 39990i) >= ~countOneBits(arg_1.x), true, true || any(vec3<bool>(arg_3, global1[_wgslsmith_index_u32(arg_2.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])), false), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f - _wgslsmith_f_op_f32(step(arg_0.a.x, -277f))) - -1730f)));
    let var_1 = Struct_3(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-545f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -2859f)));
    let var_2 = arg_2.x;
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_f32(floor(var_1.b.x));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec2<bool>(global1[_wgslsmith_index_u32(global0.b, 29u)], true), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 29u)]), vec2<bool>(true, true), false), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(16669u, 29u)]))));
    let var_1 = firstTrailingBit(vec4<i32>(reverseBits(u_input.a.x), global0.a, u_input.a.x, -func_5(func_1(), ~u_input.b.yy, vec2<u32>(1u, 1u) << (vec2<u32>(u_input.d, global0.b) % vec2<u32>(32u)), !global1[_wgslsmith_index_u32(u_input.c, 29u)])));
    let var_2 = vec4<u32>(~4294967295u, _wgslsmith_mult_u32(1u, ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.b, 45034u), vec3<u32>(1u, u_input.d, 31619u)))), 45222u & u_input.c, ~reverseBits(global0.b));
    let var_3 = global0.c.x;
    let var_4 = vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x));
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-255f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, var_4.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, 1307f, -528f, var_4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-825f, 1000f, var_4.x, var_4.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, var_4.x, var_4.x, global0.c.x) - vec4<f32>(global0.c.x, var_4.x, var_4.x, var_4.x))), vec4<f32>(_wgslsmith_div_f32(var_4.x, var_4.x), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-var_4.x), var_4.x)))), 4294967295u, var_1, 4294967295u);
}

