struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(27993i, -33112i, -13871i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(0i, -1i, -40250i));

var<private> global1: array<f32, 19>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    let var_0 = true;
    var var_1 = abs(max(u_input.c, u_input.c));
    var_1 = firstLeadingBit(min(vec3<u32>(u_input.a, 30248u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, arg_0.x, var_1.x), vec4<u32>(arg_0.x, 24939u, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 14625u, u_input.c.x), vec4<u32>(var_1.x, 4294967295u, arg_0.x, var_1.x), vec4<u32>(43444u, arg_0.x, 16961u, arg_0.x)))), vec3<u32>(0u, arg_0.x, var_1.x) >> (~firstTrailingBit(vec3<u32>(4294967295u, arg_0.x, 31900u)) % vec3<u32>(32u))));
    let var_2 = u_input.c;
    var var_3 = !(!vec2<bool>(var_0, global1[_wgslsmith_index_u32(~var_2.x, 19u)] <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 19u)] * global1[_wgslsmith_index_u32(1u, 19u)])));
    return ~(var_1.x | 4294967295u) < ~_wgslsmith_dot_vec2_u32(reverseBits(var_2.yx) << ((arg_0 | vec2<u32>(arg_0.x, arg_0.x)) % vec2<u32>(32u)), ~arg_0);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = true == arg_0.x;
    global1 = array<f32, 19>();
    var var_1 = vec4<bool>(u_input.b > -46731i, var_0, true, !(!(u_input.b >= u_input.d.x) | func_3(vec2<u32>(1u, u_input.c.x))));
    global1 = array<f32, 19>();
    var var_2 = true;
    return arg_1;
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.c.xx;
    var var_1 = func_2(select(vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_f_op_f32(-1505f * global1[_wgslsmith_index_u32(var_0.x, 19u)]) >= _wgslsmith_f_op_f32(846f - 327f)), true), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 19u)], 278f, global1[_wgslsmith_index_u32(u_input.c.x, 19u)], 382f), vec4<f32>(global1[_wgslsmith_index_u32(10027u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(u_input.c.x, 19u)])) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(848f, global1[_wgslsmith_index_u32(var_0.x, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], 228f), vec4<f32>(global1[_wgslsmith_index_u32(22721u, 19u)], global1[_wgslsmith_index_u32(44524u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], -709f)))))));
    let var_2 = _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.b, u_input.d.x) << (_wgslsmith_mult_vec4_u32(vec4<u32>(91u, 15502u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 1150u, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(-2147483647i), -13306i, ~1i, 1i)), ~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(1i, u_input.d.x, 12652i, 0i)), ~vec4<i32>(6922i, u_input.b, u_input.d.x, u_input.d.x)) & (min(vec4<i32>(-1i, u_input.b, -14268i, u_input.d.x), -vec4<i32>(19433i, 2541i, 0i, u_input.b)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 13621u, var_0.x, var_0.x), vec4<u32>(var_0.x, 4294967295u, 49501u, 59812u)) % vec4<u32>(32u))));
    let var_3 = var_2.x | ~(-34400i);
    let var_4 = Struct_5(2147483647i);
    return select(vec4<bool>(true, all(vec4<bool>(any(vec4<bool>(true, true, false, true)), false, true, false)), func_3(u_input.c.xx), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)] == 307f, any(vec3<bool>(true, false, true)), true, true), all(vec2<bool>(true, true))), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    let var_0 = Struct_5(min(_wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.b, ~arg_0.x), _wgslsmith_div_i32(i32(-1i) * -19331i, min(arg_0.x, -1i))), u_input.d.x));
    let var_1 = func_1().xwz;
    global1 = array<f32, 19>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(~u_input.a, 19u)], global1[_wgslsmith_index_u32(~u_input.a, 19u)], -796f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(82107u, 19u)], 2775f, 1905f)), true))));
    let var_3 = select(arg_2, arg_1, !any(!(!arg_2.yx)));
    return any(var_3.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-_wgslsmith_add_i32(1i, 10559i), func_4(global0[_wgslsmith_index_u32(firstLeadingBit((u_input.c.x | 26987u) & u_input.a), 3u)], vec4<bool>(false, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(26330u, 19u)] * global1[_wgslsmith_index_u32(0u, 19u)]) > -1000f, select(true, true, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true), func_1(), true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, ~(u_input.a & u_input.c.x), _wgslsmith_mult_u32(~1u, 1u), ~reverseBits(16333u)), vec4<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 1017u, 3813u, 0u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(48605u, u_input.c.x, 1u, 62031u), ~vec4<u32>(4294967295u, 30714u, u_input.c.x, 1u)), u_input.c.x)), firstTrailingBit(countOneBits(u_input.d.x)));
    global0 = array<vec3<i32>, 3>();
    var var_1 = select(!select(!vec3<bool>(var_0.b, var_0.b, true), !vec3<bool>(true, var_0.b, false), vec3<bool>(true, var_0.b, true & var_0.b)), func_1().ywx, !(!func_1().zyw));
    var var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(~(-1i), var_0.d, var_0.d, -min(33587i, var_0.d)), vec4<i32>(firstLeadingBit(22303i), -max(u_input.d.x, 30772i), _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.a, var_0.d), ~u_input.d.x), u_input.b));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(14783u, 19u)]))), func_2(!var_1.zx, func_2(vec2<bool>(var_0.b, true), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(var_0.c.x, 19u)], global1[_wgslsmith_index_u32(var_0.c.x, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], 1000f)))).a.x, !any(vec3<bool>(var_0.b, false, var_1.x))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(34264u, 19u)]))), 634f)));
    let var_4 = func_2(vec2<bool>(!(!func_4(var_2.ywy, vec4<bool>(var_0.b, false, var_1.x, false), vec4<bool>(true, true, false, var_0.b))), var_1.x), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1984f, global1[_wgslsmith_index_u32(var_0.c.x, 19u)], 141f, 567f))))) * vec4<f32>(var_3, _wgslsmith_f_op_f32(883f * -1272f), var_3, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 19u)], var_3)))));
    let var_5 = Struct_5(1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~firstLeadingBit(4294967295u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(-307f, var_3)), global1[_wgslsmith_index_u32(var_0.c.x ^ _wgslsmith_div_u32(u_input.a, 4294967295u), 19u)], 529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 19u)]))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(265f, _wgslsmith_f_op_f32(-var_3)) * 1446f));
}

