struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(0i, 2147483647i), 170f, vec3<u32>(95509u, 0u, 4294967295u), -263f), Struct_1(vec2<i32>(2147483647i, -46430i), 260f, vec3<u32>(62721u, 81176u, 47362u), 1265f), Struct_1(vec2<i32>(0i, 0i), -515f, vec3<u32>(78712u, 0u, 2362u), -1000f), Struct_1(vec2<i32>(-14913i, 0i), 1173f, vec3<u32>(29534u, 4294967295u, 22427u), 1053f), Struct_1(vec2<i32>(0i, 2147483647i), 1650f, vec3<u32>(4294967295u, 46455u, 0u), -1075f), Struct_1(vec2<i32>(33851i, 0i), -888f, vec3<u32>(15170u, 4294967295u, 1u), 554f), Struct_1(vec2<i32>(-6020i, -18763i), 592f, vec3<u32>(1u, 1723u, 1u), -1481f), Struct_1(vec2<i32>(1i, i32(-2147483648)), -273f, vec3<u32>(1u, 1u, 15496u), 1067f), Struct_1(vec2<i32>(0i, 2147483647i), -3333f, vec3<u32>(0u, 1u, 9227u), 882f));

var<private> global3: array<i32, 11>;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d, arg_3.d) - global1.b) + -3399f), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1002f, global1.b))), arg_3.b));
    let var_1 = -794f;
    var var_2 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d * 524f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1, arg_3.b, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(217f * -1159f)))))));
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~17709u, _wgslsmith_div_u32(~arg_3.c.x, arg_3.c.x), arg_0.a, global4.a >> (_wgslsmith_sub_u32(u_input.a, arg_0.a) % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global1.c.x, arg_0.a), _wgslsmith_div_u32(arg_0.a, u_input.d.x), firstLeadingBit(1u), 1u), select(vec4<u32>(arg_0.a, u_input.d.x, arg_0.a, 4294967295u), vec4<u32>(arg_3.c.x, 1u, 6188u, arg_0.a) >> (vec4<u32>(6663u, 9520u, 42257u, global4.a) % vec4<u32>(32u)), all(vec4<bool>(arg_2, arg_2, false, arg_2))), abs(vec4<u32>(global1.c.x, 75553u, 0u, 19435u) ^ vec4<u32>(u_input.a, 46830u, arg_0.a, global4.a)))), ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(4294967295u, u_input.a, global4.a, global1.c.x)), max(vec4<u32>(1u, global1.c.x, u_input.a, arg_0.a), vec4<u32>(1u, 43297u, 0u, 1u))) >> (~(vec4<u32>(global4.a, u_input.a, arg_3.c.x, u_input.d.x) | vec4<u32>(global4.a, 0u, 4294967295u, global4.a)) % vec4<u32>(32u)), select(vec4<u32>(27443u, ~44868u, _wgslsmith_sub_u32(global4.a, global1.c.x), ~global1.c.x), vec4<u32>(4294967295u, ~arg_0.a, _wgslsmith_div_u32(global4.a, 38247u), _wgslsmith_div_u32(1u, u_input.d.x)), vec4<bool>(all(vec3<bool>(true, arg_2, false)), true, arg_2 | false, false)) & ~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a, 0u, arg_0.a, 0u), vec4<u32>(4294967295u, u_input.a, global4.a, global1.c.x), vec4<u32>(1u, 12167u, 101185u, arg_3.c.x))));
    global3 = array<i32, 11>();
    return arg_0;
}

fn func_3(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = select(vec3<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), !(!all(vec4<bool>(false, true, true, false))), ~(-global1.a.x) >= global1.a.x), vec3<bool>((_wgslsmith_dot_vec2_u32(global1.c.zx, vec2<u32>(global1.c.x, u_input.d.x)) ^ countOneBits(global1.c.x)) > global1.c.x, ~u_input.d.x >= func_1(Struct_3(u_input.a), reverseBits(vec4<i32>(global1.a.x, arg_0.x, -1i, global1.a.x)), any(vec3<bool>(true, false, false)), global2[_wgslsmith_index_u32(7276u << (global1.c.x % 32u), 9u)]).a, false), false);
    global2 = array<Struct_1, 9>();
    return Struct_3(59363u);
}

fn func_2() -> vec2<bool> {
    let var_0 = vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u & (1u ^ global4.a)), 11u)], global1.a.x);
    let var_1 = u_input.c;
    global4 = func_1(func_1(func_3(vec2<i32>(-u_input.c, ~1i)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a, 11u)], -2147483647i), ~var_0.x, var_0.x << (global4.a % 32u), u_input.c), select(max(vec4<i32>(global3[_wgslsmith_index_u32(0u, 11u)], u_input.c, 1i, 2147483647i), vec4<i32>(-2942i, 0i, var_1, global1.a.x)), select(vec4<i32>(global3[_wgslsmith_index_u32(26859u, 11u)], global1.a.x, -1i, -1i), vec4<i32>(var_1, -2147483647i, var_0.x, var_1), global0[_wgslsmith_index_u32(global4.a, 5u)]), vec4<bool>(true, true, false, false))), any(vec4<bool>(false, true, false, true)) && false, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, min(global1.c.x, 16188u)), 9u)]), vec4<i32>(-8264i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, i32(-1i) * -7429i), _wgslsmith_div_vec2_i32(var_0, var_0)), abs(-min(global3[_wgslsmith_index_u32(4294967295u, 11u)], var_0.x)), global1.a.x), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(!global0[_wgslsmith_index_u32(u_input.a, 5u)]))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), reverseBits(u_input.d.x)), ~4294967295u), 9u)]);
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22891u, u_input.a, global1.c.x), ~u_input.d) | global1.c, global1.c), 9u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, global1.b, -836f, global1.b), vec4<f32>(586f, global1.b, 704f, global1.b)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, -463f, -927f, 1813f), vec4<f32>(545f, global1.b, -1504f, 394f), global0[_wgslsmith_index_u32(1u, 5u)]))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_div_f32(359f, -960f), -649f, global1.d) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, global1.b, -1000f, 1305f), vec4<f32>(276f, global1.d, global1.b, -778f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(981f, global1.d, global1.d, -1000f)))))))));
    return select(vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true), u_input.b.x > 2147483647i), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), !select((var_1 < 0i) == false, true, all(vec2<bool>(true, true))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_2(2370u, -global3[_wgslsmith_index_u32(global1.c.x, 11u)], global2[_wgslsmith_index_u32(~select(arg_0, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_2.a, 4294967295u, global4.a)), ~vec3<u32>(0u, 4294967295u, 6828u)), true || arg_3.x), 9u)], ~u_input.b, global2[_wgslsmith_index_u32(arg_2.a, 9u)]);
    global4 = Struct_3(abs(global4.a) >> (_wgslsmith_dot_vec3_u32(~min(vec3<u32>(global4.a, 9707u, var_0.a), u_input.d), max(vec3<u32>(357u, 19052u, 0u) << (u_input.d % vec3<u32>(32u)), vec3<u32>(arg_0, arg_0, arg_0))) % 32u));
    let var_1 = Struct_4(~_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 2147483647i, var_0.c.a.x, u_input.c), vec4<i32>(u_input.b.x, global1.a.x, -54529i, global1.a.x))), -vec4<i32>(global1.a.x, var_0.d.x, -13263i, 2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(791f, global1.b)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, -2357f)))))), 11952u);
    global1 = var_0.e;
    var var_2 = true;
    return var_1.c;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<i32>) -> bool {
    let var_0 = 1001f;
    var var_1 = countOneBits(arg_0);
    global1 = Struct_1(vec2<i32>(_wgslsmith_div_i32(global1.a.x, ~min(arg_3.x, -9784i)), u_input.c), arg_1.x, firstLeadingBit(~vec3<u32>(_wgslsmith_sub_u32(global4.a, 0u), ~17471u, firstTrailingBit(global4.a))), 751f);
    global3 = array<i32, 11>();
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(abs(abs(arg_3.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_3.x, -59549i), 33670i))) >> (~20830u % 32u);
    return (true || all(vec4<bool>(any(vec2<bool>(true, true)), true, var_0 > -590f, false))) && any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(select(false, false, true), all(vec3<bool>(false, true, true))), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = !func_5(~func_4(81136u, !vec4<bool>(true, true, var_0, true), func_1(Struct_3(u_input.a), vec4<i32>(global3[_wgslsmith_index_u32(19232u, 11u)], -8369i, 0i, -10636i), var_0, Struct_1(u_input.b, global1.d, u_input.d, -548f)), func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b, global1.b, -441f, 816f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, 1851f, global1.b, global1.d)))) + vec4<f32>(_wgslsmith_f_op_f32(global1.d - 1391f), _wgslsmith_f_op_f32(sign(global1.d)), 339f, global1.d)), _wgslsmith_div_i32(global1.a.x, i32(-1i) * -53555i), vec2<i32>(abs(~1i), global3[_wgslsmith_index_u32(~1u, 11u)]));
    let var_2 = abs(vec3<i32>(0i, global3[_wgslsmith_index_u32(0u, 11u)], firstLeadingBit(u_input.b.x)));
    var_1 = true;
    global2 = array<Struct_1, 9>();
    global1 = global2[_wgslsmith_index_u32(global4.a, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(~(~vec4<u32>(u_input.a, 9977u, global1.c.x, global1.c.x)))), vec2<i32>(2147483647i, _wgslsmith_mult_i32(-6411i, var_2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global1.b) - vec2<f32>(-993f, 624f)), vec2<f32>(-257f, global1.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2810f, global1.b), vec2<f32>(global1.d, global1.b), false)))), vec2<bool>(var_0, true))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-22725i, global3[_wgslsmith_index_u32(64725u, 11u)]), -vec2<i32>(var_2.x, 31321i)), -(~vec2<i32>(global3[_wgslsmith_index_u32(25441u, 11u)], 2147483647i))) ^ reverseBits(-var_2.xx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(894f, _wgslsmith_f_op_f32(378f * global1.b)), vec2<f32>(_wgslsmith_f_op_f32(global1.b * global1.d), _wgslsmith_div_f32(global1.d, global1.b)), all(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), var_0))))));
}

