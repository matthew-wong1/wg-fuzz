struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.b.xw), arg_0.a.b.xw), Struct_2(reverseBits(-countOneBits(vec2<i32>(0i, -2147483647i))), arg_0.a.b, true), Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), _wgslsmith_mult_i32(1336i, u_input.a)), vec2<i32>(u_input.a, -1i) ^ ~vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(arg_0.a.a, 11u)], arg_0.a.b.x, -412f), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], -576f, 2005f, -1000f)))))), true), Struct_4(arg_0));
    global1 = array<f32, 11>();
    var var_1 = Struct_3(arg_0.a);
    var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, 1019f)) * vec2<f32>(-534f, _wgslsmith_f_op_f32(-1000f * arg_0.a.b.x))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, var_0.a.x) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.a, 11u)], arg_0.a.b.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(768f, global1[_wgslsmith_index_u32(4294967295u, 11u)])), vec2<f32>(-643f, global1[_wgslsmith_index_u32(u_input.b.x, 11u)])))))), var_0.c, Struct_2(var_0.b.a ^ vec2<i32>(26311i >> (var_1.a.a % 32u), var_0.b.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0.a.x), var_1.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(-629f * var_0.d.a.a.b.x)))), true), var_0.d);
    let var_2 = var_0.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_2.a.a.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.a.b.x, var_0.a.x, var_0.c.c))))));
}

fn func_4(arg_0: f32, arg_1: bool) -> vec2<i32> {
    let var_0 = select(!(!vec2<bool>(!arg_1, u_input.a >= -210i)), select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1)), !vec2<bool>(arg_1, arg_1), select(!vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1), true)), vec2<bool>(false, any(vec3<bool>(true, true, false))), arg_1 & arg_1), select(vec2<bool>(true, !(-418f > global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_1, true, arg_1)), true)), !arg_1));
    global0 = all(select(vec2<bool>((true && var_0.x) | any(vec4<bool>(true, var_0.x, var_0.x, false)), var_0.x), vec2<bool>(all(select(vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_1, true), arg_1)), arg_1), select(!(!var_0.x), !select(false, var_0.x, true), !var_0.x == !var_0.x)));
    let var_1 = _wgslsmith_mult_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, -1i, 2147483647i)) & countOneBits(-(vec4<i32>(1i, -2147483647i, u_input.a, -3257i) ^ vec4<i32>(2147483647i, u_input.a, 1i, 43888i))), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(0i), u_input.a, 1i), -2952i, _wgslsmith_add_i32(reverseBits(-1i), _wgslsmith_mod_i32(-14498i, max(-35273i, u_input.a))), -1i));
    global0 = false;
    global0 = var_0.x;
    return abs(select(~_wgslsmith_sub_vec2_i32(var_1.zz >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), var_1.ww), abs(abs(var_1.zw)), vec2<bool>(select(var_0.x, u_input.b.x >= 0u, arg_1), var_0.x)));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_5 {
    global1 = array<f32, 11>();
    let var_0 = Struct_5(vec2<f32>(arg_0, 995f), Struct_2(func_4(_wgslsmith_div_f32(-435f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(4190u, vec4<f32>(global1[_wgslsmith_index_u32(52760u, 11u)], 144f, arg_0, arg_0)))))), (u_input.b.x <= u_input.b.x) & select(false, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(11069u, 11u)], -638f, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(22520u, 11u)]) - vec4<f32>(global1[_wgslsmith_index_u32(10554u, 11u)], -746f, -1632f, -855f))) + vec4<f32>(_wgslsmith_f_op_f32(step(190f, 1508f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), _wgslsmith_div_f32(arg_0, 157f), _wgslsmith_f_op_f32(round(-1418f)))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))))), Struct_2(vec2<i32>(14317i, 27079i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-543f, global1[_wgslsmith_index_u32(4294967295u, 11u)], -1105f, global1[_wgslsmith_index_u32(20186u, 11u)])), vec4<f32>(arg_0, 1750f, -429f, global1[_wgslsmith_index_u32(61345u, 11u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, -1440f, arg_0, global1[_wgslsmith_index_u32(arg_1, 11u)])))), true), Struct_4(Struct_3(Struct_1(~0u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -243f, -858f, arg_0)))))));
    global1 = array<f32, 11>();
    let var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(35248i, firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.c.a, -var_0.c.a))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(min(u_input.a, -2147483647i) ^ -16927i, select(2147483647i, 2147483647i, var_0.b.c) | var_0.b.a.x, _wgslsmith_sub_i32(0i, var_0.c.a.x) | var_0.c.a.x), var_0.c.a.x));
    let var_2 = var_0;
    return Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.d.a.a.b.xw, var_0.b.b.zx, all(select(vec3<bool>(var_2.c.c, var_0.b.c, true), vec3<bool>(var_2.c.c, var_0.b.c, false), var_2.b.c))))), var_2.c, Struct_2(_wgslsmith_mult_vec2_i32((vec2<i32>(var_0.b.a.x, 0i) >> (vec2<u32>(75724u, 1u) % vec2<u32>(32u))) << (~u_input.b.yz % vec2<u32>(32u)), vec2<i32>(-var_2.b.a.x, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_0.c.b.x * -400f), _wgslsmith_div_f32(-257f, 1141f), 860f, -369f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-377f, var_2.a.x, -364f, 482f) * var_2.b.b) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-476f, arg_0, -531f, var_2.c.b.x)))))), all(vec4<bool>(false, var_0.b.c, var_0.c.c, var_2.c.c)) || false), Struct_4(var_0.d.a));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(139f, 138f, !all(vec2<bool>(true, true)))))), ~abs(~(~u_input.b.x)));
    let var_1 = vec3<bool>(-47272i == ~(-1i >> (var_0.d.a.a.a % 32u)), var_0.b.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-493f, 342f) - _wgslsmith_div_f32(var_0.b.b.x, 141f)), arg_1.a.a.b.x)) >= 1677f);
    let var_2 = Struct_3(var_0.d.a.a);
    let var_3 = vec3<i32>(~func_2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_div_f32(1865f, arg_1.a.a.b.x)), arg_1.a.a.a).c.a.x, -(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), var_0.b.a))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.c.a.x, var_0.c.a.x), u_input.a >> (var_0.d.a.a.a % 32u)));
    let var_4 = select(reverseBits(u_input.b), vec3<u32>(0u >> (~4294967295u % 32u), ~(~10427u), u_input.b.x), !(!select(!vec3<bool>(false, var_0.b.c, true), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_0.c.c, var_0.c.c, true), vec3<bool>(true, false, var_0.b.c)), var_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), ~(~vec2<u32>(1u, 76341u))), 11u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), -600f)))) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x & 9114u, 11u)] - _wgslsmith_f_op_f32(select(204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_4(Struct_3(Struct_1(1u, vec4<f32>(852f, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], -613f, -1041f))))))), all(vec3<bool>(true, true, false))))));
    let var_1 = vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, u_input.a);
    let var_2 = Struct_2(select(countOneBits(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(0i, var_1.x), var_1.zy), var_1.xz >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a, 16957i) | vec2<i32>(var_1.x, -25431i))), vec2<i32>(var_1.x, _wgslsmith_sub_i32(u_input.a & 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -41278i, var_1.x), vec3<i32>(2147483647i, -1i, var_1.x)))), !all(vec3<bool>(true, true, true))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)]))), u_input.b.x).b.b, ~(1u << (u_input.b.x % 32u)) == u_input.b.x);
    let var_3 = Struct_2(var_1.xx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_2.b.x)) - -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f - 538f))), _wgslsmith_f_op_f32(-var_2.b.x), 1000f, 539f), var_2.c);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1579f, -291f, false))))));
    let var_5 = any(!select(select(select(vec3<bool>(var_2.c, false, var_3.c), vec3<bool>(false, var_3.c, false), true), select(vec3<bool>(false, false, false), vec3<bool>(var_3.c, var_3.c, true), vec3<bool>(false, var_3.c, true)), var_3.c), vec3<bool>(!var_3.c, true, var_2.c), !select(vec3<bool>(var_2.c, false, var_2.c), vec3<bool>(false, var_3.c, false), vec3<bool>(false, var_3.c, var_2.c))));
    var var_6 = vec3<u32>(~((firstTrailingBit(u_input.b.x) ^ _wgslsmith_sub_u32(u_input.b.x, 21940u)) & u_input.b.x), abs(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 69052u, 30937u, 4564u), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 82886u)))), 4294967295u | ~_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 70155u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 11786u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_vec4_u32(~vec4<u32>(var_6.x, var_6.x, 1u, var_6.x), vec4<u32>(24259u, u_input.b.x, 58452u, 8584u) << (vec4<u32>(2231u, 91218u, 8227u, 1u) % vec4<u32>(32u))), vec4<u32>(~0u, 80110u, 20469u, 1u), false));
}

