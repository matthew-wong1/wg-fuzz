struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 2>;

var<private> global3: array<bool, 19>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_5(~u_input.a, ~(0u | (0u >> (u_input.a.x % 32u))), Struct_2(~select(global0.b.x ^ 1u, u_input.a.x | 4294967295u, any(vec4<bool>(global0.c, true, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(2264u, 19u)]))), countOneBits(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(1u, 41217u))), global2[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), 1f))), Struct_3(1f, Struct_2(abs(~global0.a), vec2<u32>(min(u_input.a.x, u_input.a.x), ~22111u), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d, 863f)) - -123f)), Struct_2(select(u_input.a.x & global0.b.x, 4294967295u, global3[_wgslsmith_index_u32(~u_input.a.x, 19u)]), _wgslsmith_sub_vec2_u32(global0.b & global0.b, u_input.a), false, _wgslsmith_f_op_f32(f32(-1f) * -168f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 177f, 107f, global1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d, global1.x, global0.d, global0.d), vec4<f32>(-972f, global0.d, -1326f, global0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 420f, -629f, -2462f)))))));
    global2 = array<bool, 2>();
    global3 = array<bool, 19>();
    global1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(2853f, _wgslsmith_f_op_f32(-var_0.d.b.d), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.d, global0.d)))))), true));
    var_0 = Struct_5(_wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(global0.b, vec2<u32>(global0.a, 0u)) << (u_input.a % vec2<u32>(32u))), reverseBits(~vec2<u32>(9386u, 1u))), var_0.c.b.x, var_0.c, var_0.d);
    return firstTrailingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(~(-vec3<i32>(-12117i, -58633i, 6302i))), vec3<i32>(1i, 1i, 1i)));
}

fn func_2() -> vec3<u32> {
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    let var_0 = Struct_2(u_input.a.x, _wgslsmith_sub_vec2_u32(global0.b, ~vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, global0.b.x), u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(1012f)))) <= _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(277f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-332f)) - _wgslsmith_f_op_f32(-730f * global0.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d * -2334f))))));
    let var_1 = Struct_4(~func_3() >> (vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 10024u, 0u), vec3<u32>(u_input.a.x, global0.b.x, 0u))), firstTrailingBit(4294967295u), u_input.a.x) % vec3<u32>(32u)), var_0, !select(!(!vec4<bool>(true, var_0.c, global2[_wgslsmith_index_u32(global0.b.x, 2u)], global0.c)), select(vec4<bool>(true, var_0.c, var_0.c, true), select(vec4<bool>(var_0.c, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], var_0.c, true, global2[_wgslsmith_index_u32(global0.b.x, 2u)]), vec4<bool>(global0.c, true, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false)), global0.c), select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.b.x, 19u)], true, var_0.c), vec4<bool>(true, true, true, var_0.c), true), !vec4<bool>(true, false, var_0.c, true), all(vec3<bool>(global0.c, global2[_wgslsmith_index_u32(21255u, 2u)], var_0.c)))), var_0);
    let var_2 = vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(33219i), ~(-abs(var_1.a.x))), -14514i, func_3().x, -reverseBits(max(-2147483647i, i32(-1i) * -1i)));
    return ~firstLeadingBit(_wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, global0.b.x, var_0.a), vec3<u32>(global0.a, 60782u, 4272u), vec3<u32>(global0.b.x, 1u, u_input.a.x)), select(vec3<u32>(1u, global0.b.x, global0.a), vec3<u32>(global0.a, var_0.b.x, 0u), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 19u)], false)), select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(26413u, 2u)], global2[_wgslsmith_index_u32(var_1.d.b.x, 2u)], var_1.d.c), global3[_wgslsmith_index_u32(var_0.b.x, 19u)])), vec3<u32>(0u, var_0.b.x, _wgslsmith_sub_u32(1u, 1u))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    global3 = array<bool, 19>();
    global0 = Struct_2(1u, ~vec2<u32>(min(global0.b.x, 0u) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0, u_input.a.x), vec3<u32>(45240u, arg_0, u_input.a.x)), 10315u), any(vec3<bool>(all(vec4<bool>(false, true, global0.c, global0.c)), true, true)) == !(any(vec3<bool>(global3[_wgslsmith_index_u32(870u, 19u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 19u)])) == true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1348f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + global0.d))))));
    let var_0 = any(!select(select(select(arg_1.b, arg_1.b, arg_1.a.x), vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_0, 2u)]), global2[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec3<bool>(arg_1.a.x, false, false), !vec3<bool>(true, global0.c, true), any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], global0.c))), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global0.c, global0.c)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, _wgslsmith_f_op_f32(-1342f + 610f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, _wgslsmith_f_op_f32(abs(315f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1053f, global0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 510f) * vec2<f32>(1208f, 1301f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -929f), 398f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.x, global0.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, global0.d))))) + vec2<f32>(global1.x, _wgslsmith_f_op_f32(global0.d * 1620f))));
    let var_1 = 37486u;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), Struct_2(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(38573u, global0.a, u_input.a.x), vec3<u32>(1u, u_input.a.x, global0.a)), _wgslsmith_mult_u32(global0.b.x, ~arg_0)), u_input.a, true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(max(global1.x, 637f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d)))))), Struct_2(1u & global0.b.x, vec2<u32>(_wgslsmith_div_u32(~arg_0, u_input.a.x), (10500u >> (global0.a % 32u)) >> (69639u % 32u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-123f))) + _wgslsmith_f_op_f32(141f - -1263f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.d, -345f, global1.x, 887f), vec4<f32>(1443f, 1182f, 819f, -264f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d, 1192f, -2145f, global1.x)))))))));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_3 {
    global0 = Struct_2(0u, arg_2, _wgslsmith_mult_u32(u_input.a.x, ~(~arg_2.x)) == arg_0.a.x, -1188f);
    return func_4(~global0.b.x >> (_wgslsmith_dot_vec3_u32(func_2() << ((vec3<u32>(15834u, arg_0.a.x, 42707u) << (vec3<u32>(19778u, 68432u, arg_2.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(vec3<u32>(30659u, arg_0.b, 0u) >> (vec3<u32>(0u, arg_2.x, 4294967295u) % vec3<u32>(32u)))) % 32u), Struct_1(!select(vec2<bool>(false, arg_0.c.c), vec2<bool>(false, false), !vec2<bool>(arg_0.d.c.c, true)), !(!(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], true, true)))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    let var_0 = !vec2<bool>((-1058f != global0.d) && global0.c, global0.c);
    global3 = array<bool, 19>();
    let var_1 = Struct_1(!select(!var_0, var_0, func_4(arg_2.c.b.x, Struct_1(var_0, vec3<bool>(true, arg_0, false))).b.c), vec3<bool>(arg_0, global0.b.x != (u_input.a.x & 1u), arg_2.b.c));
    global1 = arg_2.d.ww;
    let var_2 = _wgslsmith_mult_i32(arg_3.x << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(13361u, global0.b.x), _wgslsmith_add_u32(1u, 35170u)) % 32u), max(firstTrailingBit(arg_3.x), arg_3.x)) << (abs(8731u) % 32u);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 163f, -1347f, global1.x) * vec4<f32>(global1.x, -572f, global0.d, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2841f, global1.x, global1.x, global1.x))))));
    global2 = array<bool, 2>();
    var var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~3975u, ~(1u | global0.a), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.a, 0u), vec4<u32>(global0.a, u_input.a.x, global0.b.x, 14061u)))), vec3<u32>(78439u, _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 31901u)), func_5(global0.c, select(vec4<u32>(u_input.a.x, 1u, 4294967295u, 57745u), vec4<u32>(global0.a, global0.a, 0u, 4294967295u), false), func_1(Struct_5(vec2<u32>(u_input.a.x, 4294967295u), 36179u, Struct_2(u_input.a.x, vec2<u32>(4294967295u, 0u), false, var_0.x), Struct_3(global0.d, Struct_2(global0.a, global0.b, global2[_wgslsmith_index_u32(global0.b.x, 2u)], 231f), Struct_2(0u, global0.b, false, -1945f), vec4<f32>(global0.d, -254f, -1692f, 888f))), var_0.ywz, vec2<u32>(u_input.a.x, 0u), 885f), ~vec3<i32>(-22296i, -1i, 65009i)))), vec3<u32>(1u, select(global0.b.x, global0.a, any(select(vec2<bool>(true, false), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)])))), select(func_2().x, 7335u, !(global1.x != var_0.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 25794u, u_input.a.x), ~vec3<u32>(1u, 28962u, 4294967295u) & (vec3<u32>(u_input.a.x, global0.a, u_input.a.x) >> (vec3<u32>(25595u, u_input.a.x, global0.b.x) % vec3<u32>(32u)))));
    var var_2 = vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-5250i, -1073i), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i, 1i), vec2<i32>(49585i, -1i))), 0i ^ firstTrailingBit(-48642i), _wgslsmith_add_i32(1i, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(48459i, -34212i) >> (vec2<u32>(global0.b.x, 1u) % vec2<u32>(32u))) ^ abs(vec2<i32>(-1i, -2147483647i))));
    let var_3 = Struct_4(vec3<i32>(0i, 0i, 1i), func_1(Struct_5(var_1.zy, ~15006u, Struct_2(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), max(vec2<u32>(25440u, u_input.a.x), var_1.xx), true, _wgslsmith_div_f32(-250f, 1450f)), func_1(Struct_5(var_1.yy, 1u, Struct_2(u_input.a.x, var_1.xx, false, 369f), Struct_3(var_0.x, Struct_2(var_1.x, vec2<u32>(0u, global0.b.x), false, var_0.x), Struct_2(4294967295u, vec2<u32>(var_1.x, var_1.x), true, -1570f), vec4<f32>(968f, 859f, var_0.x, var_0.x))), var_0.ywz, vec2<u32>(27753u, var_1.x), _wgslsmith_f_op_f32(trunc(global1.x)))), var_0.wyw, vec2<u32>(11891u, min(u_input.a.x, countOneBits(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))))).b, !(!vec4<bool>(false && global3[_wgslsmith_index_u32(global0.b.x, 19u)], !global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(~u_input.a.x, 2u)], true)), func_4(func_4(func_1(Struct_5(u_input.a, u_input.a.x, Struct_2(var_1.x, global0.b, true, global0.d), Struct_3(-145f, Struct_2(u_input.a.x, vec2<u32>(u_input.a.x, 2003u), global2[_wgslsmith_index_u32(83240u, 2u)], global0.d), Struct_2(u_input.a.x, vec2<u32>(var_1.x, 8013u), global0.c, 909f), vec4<f32>(global1.x, 808f, global1.x, global0.d))), vec3<f32>(1000f, global1.x, 814f), func_1(Struct_5(vec2<u32>(u_input.a.x, var_1.x), 1u, Struct_2(4294967295u, u_input.a, global2[_wgslsmith_index_u32(global0.b.x, 2u)], -885f), Struct_3(-1515f, Struct_2(global0.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], var_0.x), Struct_2(var_1.x, vec2<u32>(u_input.a.x, var_1.x), true, global1.x), vec4<f32>(global0.d, var_0.x, var_0.x, global1.x))), vec3<f32>(-1068f, global1.x, var_0.x), global0.b, -1002f).b.b, 241f).c.b.x, Struct_1(select(vec2<bool>(global0.c, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 19u)], global0.c), vec2<bool>(global2[_wgslsmith_index_u32(49401u, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), vec3<bool>(global0.c, global0.c, global2[_wgslsmith_index_u32(var_1.x, 2u)]))).c.a, Struct_1(!vec2<bool>(global3[_wgslsmith_index_u32(37711u, 19u)], global0.c), !(!vec3<bool>(global2[_wgslsmith_index_u32(global0.a, 2u)], global0.c, false)))).b);
    var var_4 = _wgslsmith_f_op_f32(abs(var_0.x));
    var var_5 = global2[_wgslsmith_index_u32(var_1.x, 2u)] && func_1(Struct_5(vec2<u32>(var_3.d.a, u_input.a.x >> (30548u % 32u)), ~(~21624u), Struct_2(global0.b.x, ~u_input.a, true, _wgslsmith_f_op_f32(-var_3.b.d)), func_4(4294967295u, Struct_1(var_3.c.wx, var_3.c.yxy))), func_4(var_3.d.a, Struct_1(vec2<bool>(false, var_3.d.c), !var_3.c.zxy)).d.yzz, vec2<u32>(global0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 3082u, 0u), ~vec3<u32>(u_input.a.x, 6631u, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f))).b.c;
    var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(256f)))))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_dot_vec3_i32(var_2.yxy & vec3<i32>(var_3.a.x, var_2.x, var_3.a.x), ~var_3.a), ~_wgslsmith_sub_i32(var_2.x, 7686i)), ~(~abs(0i)), var_3.d.d);
}

