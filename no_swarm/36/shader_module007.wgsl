struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(135f, 2072f, 101f, 2033f, -577f, -418f);

var<private> global1: f32;

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 38643u);

var<private> global3: vec3<f32> = vec3<f32>(-397f, -2820f, -1671f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -511f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global3.x) + _wgslsmith_f_op_f32(abs(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(38710u, 6u)], -540f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + -433f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 6u)])) * global3.x)));
    var var_0 = Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_clamp_i32(-9865i, -9958i, 0i), _wgslsmith_sub_i32(-2147483647i, -15906i)) & vec4<i32>(min(-1i, -2147483647i), -1i, i32(-1i) * -42216i, 0i), vec4<i32>(_wgslsmith_add_i32(~19513i, firstLeadingBit(1i)), -505i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 710i, -17238i), vec3<i32>(-1i, 47314i, 2147483647i)), reverseBits(-1i))), Struct_1(~(~firstTrailingBit(vec4<u32>(1u, u_input.a, global2.x, global2.x))), global2.x, ~_wgslsmith_div_vec4_u32(select(vec4<u32>(35222u, 68199u, u_input.a, 1u), vec4<u32>(u_input.a, 39723u, global2.x, u_input.a), false), abs(vec4<u32>(4294967295u, u_input.a, global2.x, global2.x)))));
    global2 = reverseBits(var_0.b.c.xyx & abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, var_0.b.a.x, global2.x) << (var_0.b.a.wzw % vec3<u32>(32u)), ~vec3<u32>(7761u, global2.x, var_0.b.c.x))));
    var_0 = Struct_5(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(var_0.a, firstLeadingBit(var_0.a)), (var_0.a & var_0.a) ^ countOneBits(var_0.a)), var_0.b);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(2210f + global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 326f) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9322u, 6u)] + -2177f))))), _wgslsmith_div_f32(global3.x, 1697f));
    return select(select(!vec4<bool>(true, false, all(vec4<bool>(false, false, true, true)), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), true)), vec4<bool>(global3.x >= 465f, all(vec4<bool>(true, false, true, false)), true, true), !(-46089i > var_0.a.x)), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(2679f + -1125f) == _wgslsmith_f_op_f32(step(var_1.x, global0[_wgslsmith_index_u32(u_input.a, 6u)]))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), !vec4<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true));
}

fn func_2(arg_0: vec3<i32>) -> vec4<u32> {
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, 1401f, global0[_wgslsmith_index_u32(4294967295u, 6u)])), vec3<f32>(global3.x, global3.x, global0[_wgslsmith_index_u32(15618u, 6u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 636f, global0[_wgslsmith_index_u32(0u, 6u)])), vec3<bool>(true, true, true))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f - global3.x)), 738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] * -1450f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 917f)), -1535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -942f)), vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, all(vec3<bool>(true, true, true)) && any(vec4<bool>(true, true, true, true)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1984f, 115f, -1000f)));
    var var_0 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_div_u32(54593u, global2.x), countOneBits(global2.x ^ u_input.a), 41800u, abs(1u)), global2.x, select(vec4<u32>(_wgslsmith_div_u32(global2.x, 4294967295u), max(4294967295u, 1266u), u_input.a, min(global2.x, u_input.a)), select(min(vec4<u32>(87564u, 4908u, u_input.a, 16267u), vec4<u32>(u_input.a, 40506u, u_input.a, u_input.a)), vec4<u32>(4294967295u, 28901u, u_input.a, 4294967295u) ^ vec4<u32>(u_input.a, 0u, 0u, 17141u), all(vec3<bool>(false, false, true))), !func_3())), select(vec2<bool>(func_3().x, !(u_input.a >= global2.x)), select(vec2<bool>(true, all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(func_3().zy, vec2<bool>(true, true), !func_3().yw)), select(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, global2.x, u_input.a, global2.x), vec4<u32>(1u, 43365u, u_input.a, 4294967295u), false), countOneBits(vec4<u32>(20415u, 62917u, 89917u, u_input.a) & vec4<u32>(u_input.a, 12934u, 4294967295u, 0u))), select(vec4<u32>(u_input.a, 40091u >> (1u % 32u), u_input.a, global2.x), countOneBits(vec4<u32>(23238u, global2.x, 1678u, 61496u) << (vec4<u32>(44933u, 0u, 61384u, 0u) % vec4<u32>(32u))), vec4<bool>(596f != global3.x, false, true, true)), false), global0[_wgslsmith_index_u32(countOneBits(~u_input.a), 6u)], Struct_1(~((vec4<u32>(u_input.a, u_input.a, u_input.a, 41024u) | vec4<u32>(39690u, 0u, 48467u, 23908u)) << (min(vec4<u32>(global2.x, u_input.a, 4294967295u, 3132u), vec4<u32>(u_input.a, 0u, u_input.a, 19844u)) % vec4<u32>(32u))), 15789u, firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 1u, 41203u, u_input.a), firstTrailingBit(vec4<u32>(global2.x, 50298u, 20729u, global2.x))))));
    var var_1 = any(!vec4<bool>(var_0.b.x, func_3().x, false, true));
    global3 = vec3<f32>(global0[_wgslsmith_index_u32(var_0.e.a.x, 6u)], _wgslsmith_f_op_f32(-var_0.d), 993f);
    return select(~countOneBits(~vec4<u32>(9409u, global2.x, 83258u, 41252u)), var_0.a.c, vec4<bool>(var_0.b.x & all(vec4<bool>(var_0.b.x, true, true, false)), true, u_input.a >= global2.x, any(vec3<bool>(true, var_0.b.x | true, global0[_wgslsmith_index_u32(u_input.a, 6u)] != -1366f))));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    global1 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_0 = Struct_1(abs(~firstTrailingBit(vec4<u32>(772u, u_input.a, 12764u, 4294967295u) | vec4<u32>(u_input.a, u_input.a, global2.x, global2.x))), ~1u, func_2(-(~vec3<i32>(2147483647i, -41121i, -1i))));
    global0 = array<f32, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(global3.yy, vec2<f32>(_wgslsmith_f_op_f32(ceil(-929f)), global0[_wgslsmith_index_u32(abs(var_0.c.x), 6u)])));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.a.x, u_input.a), 6u)] - _wgslsmith_f_op_f32(sign(205f))), -838f)), var_1.x, _wgslsmith_f_op_f32(-global3.x)));
    return _wgslsmith_sub_i32(arg_0.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(firstTrailingBit(abs(arg_0.x)), arg_0.x), _wgslsmith_mult_i32(arg_0.x & countOneBits(-2147483647i), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    var var_0 = vec4<i32>(2147483647i, 11086i, _wgslsmith_dot_vec4_i32((vec4<i32>(1i, 1i, 1i, 1i) >> (abs(vec4<u32>(u_input.a, global2.x, u_input.a, global2.x)) % vec4<u32>(32u))) ^ (~vec4<i32>(1i, 0i, -3820i, -14613i) >> (~vec4<u32>(11620u, u_input.a, global2.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(func_1(vec2<i32>(23549i, 194i)), ~(-1i)), -2147483647i << (~4294967295u % 32u), abs(countOneBits(-2147483647i)), ~2147483647i << (u_input.a % 32u))), abs(~_wgslsmith_mod_i32(-1i, i32(-1i) * -1i)));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = global3.yy;
    global3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(801f, 262f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * var_1.x))) + _wgslsmith_f_op_f32(-1697f - _wgslsmith_f_op_f32(851f * -645f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(443f, global0[_wgslsmith_index_u32(~0u, 6u)], _wgslsmith_f_op_f32(min(-486f, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -921f, var_1.x) * vec3<f32>(1449f, 441f, -435f)))))));
    var var_2 = vec3<u32>(min(~_wgslsmith_mod_u32(25273u, 1u), 0u), firstLeadingBit(u_input.a), abs(~u_input.a));
    var var_3 = vec4<bool>(!(!select(true, true, -692f >= global0[_wgslsmith_index_u32(1u, 6u)])), true, select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(48007u, 6u)]) != -330f, false, var_0.x < _wgslsmith_div_i32(1i, -57771i)), false);
    var var_4 = Struct_5(~_wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(62927i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, 50340i)), -vec4<i32>(1i, var_0.x, var_0.x, var_0.x)), Struct_1(firstLeadingBit(select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.x, 40867u, 9233u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), max(vec4<u32>(var_2.x, 33754u, 4294967295u, 34080u), vec4<u32>(global2.x, u_input.a, 35630u, 126892u)), vec4<bool>(false, true, true, true))), global2.x, ~max(vec4<u32>(100089u, var_2.x, 0u, global2.x), vec4<u32>(var_2.x, global2.x, global2.x, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-39985i), ~_wgslsmith_clamp_vec3_u32(min(~var_4.b.c.wwx, vec3<u32>(var_2.x, 1u, var_2.x)), _wgslsmith_mod_vec3_u32(func_2(vec3<i32>(var_0.x, 11940i, var_0.x)).ywx, vec3<u32>(var_4.b.b, var_4.b.b, u_input.a)), ~_wgslsmith_mult_vec3_u32(var_4.b.c.zxy, var_4.b.a.yyw)), 0i, abs(var_4.b.a));
}

