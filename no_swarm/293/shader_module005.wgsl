struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3;

var<private> global2: array<f32, 6> = array<f32, 6>(-673f, 337f, 2661f, 1218f, 239f, 147f);

var<private> global3: u32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = Struct_3(~(~arg_0.a));
    let var_1 = ~0u;
    var var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(true, all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, true))));
    var var_3 = arg_0;
    global2 = array<f32, 6>();
    return vec2<u32>(_wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(global0.a, 97283u)), abs(~vec2<u32>(global0.a, u_input.a))), vec2<u32>(reverseBits(16946u), 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(var_1, var_1), vec2<u32>(global0.a, 0u))), 0u);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    global3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, global0.a), _wgslsmith_mod_vec2_u32(vec2<u32>(62330u, arg_0), vec2<u32>(46736u, global0.a))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 69065u), vec2<u32>(1u, 9396u))), vec2<u32>(u_input.e, arg_3) & _wgslsmith_div_vec2_u32(vec2<u32>(1u, 11054u), vec2<u32>(4294967295u, 28673u)))), ~_wgslsmith_div_vec2_u32(func_3(arg_2), countOneBits(~vec2<u32>(61843u, 40031u))));
    global3 = 4294967295u;
    let var_0 = arg_2;
    global1 = Struct_3(arg_2.a);
    var var_1 = 1u;
    return countOneBits(vec4<u32>(~u_input.a ^ 28644u, _wgslsmith_add_u32(~4294967295u, 1819u), arg_0, ~(~firstTrailingBit(global0.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    global2 = array<f32, 6>();
    let var_0 = min(vec3<i32>(~(-2147483647i >> (u_input.e % 32u)) & -2147483647i, 28620i, 6870i), ~vec3<i32>(-global1.a.x, 40338i, 1i));
    var var_1 = _wgslsmith_mod_u32(12747u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, 54443u, global0.a)), ~(vec3<u32>(u_input.a, 45154u, 1u) | vec3<u32>(1u, global0.a, 53707u))), vec3<u32>(reverseBits(~arg_1.a), 45460u, ~97007u ^ ~arg_1.a)));
    let var_2 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(_wgslsmith_div_u32(arg_1.a, global0.a), 14746u >> (u_input.e % 32u), abs(u_input.b), ~13695u) & vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_1.a), _wgslsmith_add_u32(1u, 40014u), ~7470u, 31944u)), select(vec4<u32>(_wgslsmith_sub_u32(3719u, u_input.b), abs(58825u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 27119u), vec2<u32>(56705u, arg_1.a)), 7770u & u_input.a), vec4<u32>(u_input.e, u_input.e, min(global0.a, 13517u), reverseBits(u_input.e)), true && all(vec2<bool>(false, false))) >> (_wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(54176u, arg_1.a, global0.a, 1u)), ~(~vec4<u32>(global0.a, u_input.e, arg_1.a, 4294967295u))) % vec4<u32>(32u)));
    var var_3 = func_2(u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) + arg_0))), Struct_3(firstLeadingBit(~vec2<i32>(2147483647i, var_0.x))), 0u);
    return all(select(!vec4<bool>(all(vec2<bool>(true, true)), true, any(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), ~arg_2.a.x <= ~var_0.x, any(vec3<bool>(true, false, false)) & select(true, true, false), true)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> i32 {
    global1 = arg_1;
    var var_0 = select(select(vec3<bool>(true, any(vec3<bool>(arg_2, arg_2, true)), all(vec2<bool>(false, false))), select(vec3<bool>(any(vec3<bool>(false, true, false)), arg_2, !arg_2), select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, false)), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2, false)), vec3<bool>(arg_2, arg_2, arg_2)), !(global0.a < u_input.e)), vec3<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(41748u, 6u)]) >= global2[_wgslsmith_index_u32(~21040u, 6u)], any(vec3<bool>(arg_2, arg_2, arg_2)), all(select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(arg_2, false, arg_2, false))))), vec3<bool>(true, true, ((global2[_wgslsmith_index_u32(u_input.b, 6u)] >= global2[_wgslsmith_index_u32(4294967295u, 6u)]) && !arg_2) | (func_1(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global0.a, 6u)], global2[_wgslsmith_index_u32(u_input.e, 6u)]), Struct_1(5879u), Struct_3(global1.a)) & true)), 44635u < u_input.e);
    global3 = _wgslsmith_add_u32(global0.a, _wgslsmith_div_u32(34469u, func_3(Struct_3(global1.a ^ vec2<i32>(arg_0, global1.a.x))).x));
    let var_1 = Struct_1(global0.a);
    var var_2 = var_0.x;
    return _wgslsmith_dot_vec3_i32(min(vec3<i32>(26304i, _wgslsmith_add_i32(firstTrailingBit(u_input.d), countOneBits(arg_1.a.x)), u_input.c), -vec3<i32>(_wgslsmith_add_i32(0i, -2681i), arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, 57123i, arg_1.a.x), vec3<i32>(-8987i, arg_0, u_input.c)))), select(vec3<i32>(arg_0, arg_0, 1i), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.a.x, arg_1.a.x, 42522i), vec3<i32>(-2147483647i, u_input.c, arg_1.a.x)), vec3<i32>(u_input.d, -11853i, 48253i) ^ vec3<i32>(global1.a.x, -10900i, arg_0)), -vec3<i32>(1i, 1i, arg_0)), false));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(arg_2.a, 6u)]));
    var var_1 = Struct_3(global1.a);
    var_1 = Struct_3(global1.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 6u)] * global2[_wgslsmith_index_u32(global0.a, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1462f, global2[_wgslsmith_index_u32(u_input.e, 6u)])), false)), -726f)), arg_0.b, arg_2, ~min(select(_wgslsmith_div_vec3_i32(arg_0.d, vec3<i32>(802i, global1.a.x, u_input.d)), vec3<i32>(-2147483647i, 1241i, 2147483647i), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), abs(_wgslsmith_add_vec3_i32(arg_0.d, arg_0.d))));
    let var_3 = -vec4<i32>(1i, -var_1.a.x, -_wgslsmith_clamp_i32(-20763i, _wgslsmith_mod_i32(-28244i, arg_0.d.x), var_1.a.x >> (arg_0.c.a % 32u)), 1i);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-945f - arg_0.a)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_3(Struct_3(var_3.xz)).x, 6u)] + -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), ~vec2<u32>(1u, abs(arg_0.c.a) | max(u_input.e, global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(countOneBits(0u), 6u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(448u, 0u), 6u)]) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(14568u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]), vec2<f32>(-1692f, 849f)) - vec2<f32>(1295f, global2[_wgslsmith_index_u32(1u, 6u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2074f, global2[_wgslsmith_index_u32(48318u, 6u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(27478u, 6u)]), vec2<f32>(1164f, global2[_wgslsmith_index_u32(global0.a, 6u)]))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1490f, 1966f)))))));
    let x = u_input.a;
    s_output = func_5(Struct_2(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_mod_i32(32526i, func_4(~(-1i), Struct_3(vec2<i32>(u_input.c, u_input.d)), func_1(vec3<f32>(var_0.x, -859f, var_0.x), Struct_1(70856u), Struct_3(vec2<i32>(global1.a.x, 26398i))))), Struct_1(68515u), (-vec3<i32>(2147483647i, -2147483647i, u_input.c) >> (vec3<u32>(u_input.b, u_input.b, global0.a) % vec3<u32>(32u))) ^ abs(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -16432i, global1.a.x), vec3<i32>(global1.a.x, u_input.c, global1.a.x)))), Struct_1(u_input.b), Struct_1(global0.a));
}

