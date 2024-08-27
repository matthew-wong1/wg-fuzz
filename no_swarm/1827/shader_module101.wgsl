struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: vec2<bool>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, -481f, 1000f, -851f);

var<private> global4: array<u32, 17> = array<u32, 17>(0u, 4294967295u, 4294967295u, 140375u, 0u, 4294967295u, 15716u, 52017u, 1u, 27588u, 72425u, 13728u, 1u, 72249u, 1u, 24413u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 6u)];
    var var_1 = var_0.x;
    global2 = select(vec2<bool>(true, true), vec2<bool>(all(select(vec2<bool>(global2.x, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), false)), !(_wgslsmith_f_op_f32(floor(-1437f)) != -463f)), !all(vec2<bool>(!global2.x, !global2.x)));
    var var_2 = Struct_1(~min(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(32794u, 13819u), 17u)], 20624u) << (u_input.c % 32u), 488f);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(566f + global3.x), _wgslsmith_f_op_f32(var_2.b * global3.x), global3.x, _wgslsmith_f_op_f32(-var_2.b)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, -242f, 2178f, 1015f), vec4<f32>(250f, var_2.b, var_2.b, global3.x)))))))), _wgslsmith_add_u32(var_2.a, 28519u), Struct_1(abs(_wgslsmith_add_u32(var_2.a, 55851u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(f32(-1f) * -654f))))), Struct_1(53994u >> (1u % 32u), _wgslsmith_div_f32(339f, _wgslsmith_f_op_f32(global3.x + -205f))));
    return _wgslsmith_f_op_vec4_f32(floor(var_3.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: bool) -> i32 {
    global3 = arg_0;
    var var_0 = ~u_input.c;
    let var_1 = Struct_4(countOneBits(52354u), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(507f - -1389f)), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_2 * global3.x)), 119f, -197f), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global4[_wgslsmith_index_u32(7675u, 17u)], u_input.c, u_input.c)), ~(~vec3<u32>(u_input.c, global4[_wgslsmith_index_u32(u_input.c, 17u)], u_input.c))), Struct_1(abs(69881u), arg_0.x), global0[_wgslsmith_index_u32(~(~0u), 25u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-512f))))), -1182f, Struct_1(countOneBits(~(~4294967295u)), 685f));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.c, 25u)];
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - -613f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f) - 1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, arg_2, global3.x, var_1.e.b), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 - 816f))), _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(-var_1.b.a.x)), arg_2, _wgslsmith_f_op_f32(-2433f + -820f))));
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global2 = select(vec2<bool>(true & global2.x, false), vec2<bool>(any(!vec3<bool>(global2.x, true, true)), true & global2.x), global2.x);
    let var_0 = all(vec3<bool>(1338u >= abs(~global4[_wgslsmith_index_u32(18272u, 17u)]), !global2.x, global2.x & any(vec3<bool>(true, true, global2.x))));
    let var_1 = min(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2773f, global3.x, global3.x, 941f)))), 6792i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -362f))) + global3.x), any(!vec3<bool>(var_0, false, true)) || true), u_input.b);
    global0 = array<Struct_1, 25>();
    var var_2 = u_input.c;
    return global0[_wgslsmith_index_u32(~(~(_wgslsmith_add_u32(36913u, 1u) << (~select(21577u, global4[_wgslsmith_index_u32(u_input.c, 17u)], var_0) % 32u))), 25u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global3.wz);
    let var_1 = vec3<i32>(-1i, ~_wgslsmith_mult_i32(-8104i, firstTrailingBit(max(u_input.a, u_input.b))), max(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.b, u_input.b), -22361i << (0u % 32u), u_input.b), u_input.b));
    var var_2 = vec3<u32>(59730u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, ~1u, 1u >> (global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(arg_0.a, 17u)], 17u)] % 32u)), ~(vec3<u32>(global4[_wgslsmith_index_u32(arg_2.c.a, 17u)], 0u, u_input.c) << (reverseBits(vec3<u32>(8554u, arg_2.b, 0u)) % vec3<u32>(32u)))), ~(~(~select(81032u, arg_0.a, global2.x))));
    let var_3 = ~_wgslsmith_mult_u32(abs(countOneBits(_wgslsmith_mult_u32(arg_0.a, 12561u))), ~1u);
    var var_4 = vec3<f32>(1032f, _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-var_0.x));
    return Struct_3(1u);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_div_u32(~16356u, 36083u));
    let var_1 = func_5(func_2(), vec3<bool>(true, (_wgslsmith_f_op_f32(step(global3.x, 1804f)) < -1158f) | all(vec2<bool>(true, global2.x)), all(vec3<bool>(true, true, global2.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1298f, -1318f, 1578f, 1175f), vec4<f32>(global3.x, 437f, -622f, 689f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(485f, global3.x, 152f, global3.x) * vec4<f32>(574f, -1626f, 1503f, 813f))))), 7501u, global0[_wgslsmith_index_u32(var_0.a, 25u)], func_2()), global2.x);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, global3.x, -280f, -2765f))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-249f + global3.x), _wgslsmith_f_op_f32(trunc(2540f)), _wgslsmith_f_op_vec4_f32(func_3()).x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, global3.x, -182f, global3.x)) * vec4<f32>(125f, -576f, -172f, global3.x)))));
    let var_3 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, firstTrailingBit(u_input.b), _wgslsmith_div_i32(-7233i, u_input.a), -2147483647i) | -vec4<i32>(1i, 0i, u_input.a, -12120i)), abs(-(~vec4<i32>(u_input.a, arg_0, 10675i, u_input.a))));
    var var_4 = u_input.c;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-694f, -1122f)), _wgslsmith_f_op_f32(step(global3.x, -203f)))), 925f, _wgslsmith_f_op_f32(-576f + -507f), var_2.x), var_1.a ^ ((4294967295u << (var_0.a % 32u)) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(25779u, 96420u, 1u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.c, 17u)], 41738u, var_1.a)) >> (~var_1.a % 32u))), Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f))), global0[_wgslsmith_index_u32(var_1.a, 25u)]);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> vec3<i32> {
    global1 = array<vec3<i32>, 6>();
    var var_0 = Struct_4(abs(0u), Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1261f, 1649f, -870f, global3.x), vec4<f32>(global3.x, global3.x, -1595f, -1042f), vec4<bool>(global2.x, global2.x, true, true))))), u_input.c, func_2(), arg_0.c), 694f, _wgslsmith_f_op_f32(f32(-1f) * -275f), global0[_wgslsmith_index_u32(arg_0.c.a | arg_1.a, 25u)]);
    var var_1 = var_0.b.a;
    let var_2 = arg_1;
    let var_3 = arg_0;
    return ~countOneBits(_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~reverseBits(var_3.c.a), 17u)], 6u)], global1[_wgslsmith_index_u32(11358u | global4[_wgslsmith_index_u32(arg_1.a, 17u)], 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1282f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-327f, -152f))));
    global4 = array<u32, 17>();
    var var_1 = Struct_1(96956u, 1000f);
    var_0 = -573f;
    var var_2 = func_6(func_1(u_input.a), Struct_3(~(_wgslsmith_mult_u32(0u, global4[_wgslsmith_index_u32(4294967295u, 17u)]) ^ ~var_1.a)));
    let var_3 = global0[_wgslsmith_index_u32(~(~14048u), 25u)];
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2.x, u_input.b, u_input.a << (u_input.c % 32u))), vec3<i32>(reverseBits(var_2.x), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(0u, 6u)], ~global1[_wgslsmith_index_u32(0u, 6u)]), -var_2.x)), firstLeadingBit(15466i));
}

