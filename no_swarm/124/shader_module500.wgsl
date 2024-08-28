struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> bool {
    let var_0 = arg_0.a.xyx;
    return false;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, u_input.d) & ~u_input.b), _wgslsmith_mod_vec2_u32(u_input.b, ~vec2<u32>(u_input.c.x, u_input.c.x)));
    let var_1 = Struct_2(~(-global1.xy));
    let var_2 = arg_0;
    var var_3 = !select(true, any(vec3<bool>(true, func_3(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec3<i32>(u_input.a.x, -2147483647i, -11344i), -645f, -1467f), 0i, var_1.a.x), true)), 16728u != ~(var_0.x >> (var_0.x % 32u)));
    let var_4 = Struct_2(u_input.a.yz);
    return true;
}

fn func_4(arg_0: u32, arg_1: bool) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(60707u, u_input.c.x, 4294967295u, 0u), max(vec4<u32>(0u, arg_0, 13826u, 98723u), vec4<u32>(41127u, arg_0, 5887u, 1u))), 5u)])), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(arg_0), 2713u, ~(~u_input.c.x)), 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~4294967295u, 5u)])) * -516f)));
    global0 = array<f32, 5>();
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~u_input.b.x & 1u), ~(~max(u_input.c.x, u_input.d)), ~_wgslsmith_dot_vec3_u32(u_input.c >> (vec3<u32>(4294967295u, 40129u, 56292u) % vec3<u32>(32u)), max(u_input.c, vec3<u32>(0u, arg_0, 49274u)))), vec3<u32>(~(~1u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(1u, arg_0), u_input.d & 9889u), _wgslsmith_mod_u32(4294967295u, 9543u)), countOneBits(arg_0)));
    global0 = array<f32, 5>();
    var var_2 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1, 0u), firstLeadingBit(arg_0), var_1 << (u_input.d % 32u)), arg_0, reverseBits(31209u))), ~vec3<u32>(abs(arg_0) & 44112u, 38775u, ~(~40279u)));
    return Struct_1(vec4<bool>(arg_1, (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(39276u, 4294967295u)), 5u)] <= _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_2.x, 5u)], var_0.x))) == all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), false)), all(select(vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_1, true), !vec3<bool>(arg_1, false, true))), !(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 5u)]) < _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(arg_0, 5u)], 1172f)))), select(!select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, false)), !vec2<bool>(false, arg_1), true), !vec2<bool>(arg_1, any(vec4<bool>(true, false, true, false))), select(!vec2<bool>(arg_1, arg_1), select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), false), vec2<bool>(arg_1, false), false), arg_1)), global1.yxz, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.b), _wgslsmith_clamp_vec2_u32(u_input.c.xz, ~(vec2<u32>(var_2.x, var_1) & var_2.xy), countOneBits(vec2<u32>(25187u, u_input.c.x)))), 5u)], 576f);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    let var_0 = func_4(reverseBits(1u), func_2(2147483647i));
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_div_i32(global1.x ^ var_0.c.x, ~var_0.c.x)), -var_0.c.x << (4990u % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 5u)], arg_2.x, false)))), _wgslsmith_f_op_f32(trunc(-1000f))) - arg_2.ww);
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(7982i, global1.x)), -vec2<i32>(1i, u_input.a.x)), _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(43125i), func_4(25263u, true).c.x), select(reverseBits(global1.wx), u_input.a.zz, false)), u_input.a.zx));
    global1 = ~vec4<i32>(_wgslsmith_div_i32(48906i, abs(min(2147483647i, -1i))), -u_input.a.x, func_4(arg_1.x, _wgslsmith_mult_u32(arg_1.x, 38729u) > arg_1.x).c.x, reverseBits(34064i));
    var var_1 = firstLeadingBit(~_wgslsmith_clamp_u32(arg_1.x | _wgslsmith_mult_u32(arg_0, arg_1.x), select(~u_input.d, u_input.d ^ 1u, -2147483647i <= u_input.a.x), ~arg_0));
    let var_2 = vec4<bool>(false, arg_1.x >= _wgslsmith_mult_u32(reverseBits(~arg_1.x), arg_1.x), all(vec4<bool>(true, false, true, true)), select(true | all(func_4(arg_1.x, true).b), true, false));
    let var_3 = var_0;
    return Struct_2(u_input.a.yx);
}

fn func_6(arg_0: Struct_2) -> vec4<f32> {
    global1 = -vec4<i32>(_wgslsmith_sub_i32(~(-9020i), arg_0.a.x), 11619i, 6691i, 5239i);
    global0 = array<f32, 5>();
    var var_0 = Struct_3(func_4(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, global1.x, u_input.a.x, 32766i), vec4<i32>(2147483647i, 24394i, arg_0.a.x, 0i) | vec4<i32>(-1i, arg_0.a.x, 0i, arg_0.a.x)) < max(firstLeadingBit(-2147483647i), func_4(4294967295u, true).c.x)), ~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.d), ~(~40308u), ~u_input.c.x, 45242u), ~u_input.c);
    let var_1 = Struct_3(Struct_1(var_0.a.a, var_0.a.a.wz, select(global1.wzw, ~_wgslsmith_mod_vec3_i32(vec3<i32>(-86225i, -29718i, -75732i), global1.wyw), vec3<bool>(var_0.a.a.x, var_0.a.b.x && false, var_0.a.a.x)), _wgslsmith_f_op_f32(round(1255f)), -2272f), reverseBits(var_0.b), ~vec3<u32>(_wgslsmith_clamp_u32(~129231u, 0u, _wgslsmith_add_u32(0u, 30949u)), ~(~u_input.c.x), 1u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1675f)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, -1637f, 1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e) * _wgslsmith_f_op_f32(abs(899f)))));
}

fn func_7(arg_0: u32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(vec4<bool>(false, true, true, true), vec2<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false)))), firstTrailingBit(min(-vec3<i32>(-2147483647i, global1.x, -6329i) << (vec3<u32>(arg_0, arg_0, 27541u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(global1.zzz, vec3<i32>(u_input.a.x, u_input.a.x, 56847i)), u_input.a))), -793f, global0[_wgslsmith_index_u32((_wgslsmith_clamp_u32(select(55051u, 61055u, true), _wgslsmith_div_u32(arg_0, u_input.b.x), _wgslsmith_div_u32(0u, u_input.c.x)) >> (~(~75204u) % 32u)) ^ ~select(_wgslsmith_div_u32(1u, 4294967295u), min(26715u, u_input.d), true), 5u)]);
    var var_1 = arg_0;
    var_0 = Struct_1(select(var_0.a, vec4<bool>(true, var_0.b.x, 1u > func_1(870f, u_input.b, arg_1), any(select(var_0.b, var_0.a.yw, vec2<bool>(var_0.a.x, var_0.a.x)))), true), select(var_0.a.xx, vec2<bool>(var_0.b.x, false), !(_wgslsmith_f_op_f32(2403f + var_0.d) <= _wgslsmith_f_op_f32(-var_0.d))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, var_0.c.x, u_input.a.x, var_0.c.x), ~vec4<i32>(0i, u_input.a.x, global1.x, 30680i)), u_input.a.x, _wgslsmith_dot_vec3_i32(min(global1.wxz, global1.wzz), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global1.x, var_0.c.x), vec3<i32>(global1.x, u_input.a.x, u_input.a.x))) | firstTrailingBit(0i | var_0.c.x)), var_0.e, arg_1.x);
    let var_2 = Struct_1(var_0.a, var_0.a.wz, vec3<i32>(1i | select(_wgslsmith_mult_i32(43285i, 7131i), u_input.a.x, var_0.a.x), 0i, i32(-1i) * -u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)] + global0[_wgslsmith_index_u32(58612u, 5u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -200f));
    var var_3 = vec3<i32>(-7372i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global1.x, 1i, u_input.a.x) << (vec4<u32>(86837u, u_input.b.x, arg_0, u_input.c.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(-5553i, u_input.a.x, var_0.c.x, u_input.a.x)))), select(-vec4<i32>(var_0.c.x, -33710i, var_2.c.x, var_0.c.x), abs(vec4<i32>(-24760i, -913i, -39193i, -8415i)), false) >> (countOneBits(~vec4<u32>(u_input.d, u_input.b.x, 4294967295u, arg_0)) % vec4<u32>(32u))), func_5(~(~(~4294967295u)), ~(vec4<u32>(27369u, 1u, 2007u, 1u) ^ (vec4<u32>(32335u, u_input.d, u_input.b.x, arg_0) << (vec4<u32>(4294967295u, 12030u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))))).a.x);
    return vec4<i32>(var_0.c.x, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global1.zzx, vec3<i32>(2147483647i, var_3.x, global1.x)), var_2.c) ^ u_input.a.x, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, var_2.c.x) >> (vec2<u32>(57318u, 73793u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-43947i, var_2.c.x), var_2.c.zy)))) >> ((vec4<u32>(~countOneBits(arg_0), 1981u, arg_0 >> (~arg_0 % 32u), arg_0) >> (countOneBits(~abs(vec4<u32>(arg_0, 64302u, arg_0, u_input.b.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(0u, _wgslsmith_f_op_vec4_f32(func_6(func_5(_wgslsmith_clamp_u32(u_input.d, ~u_input.d, func_1(744f, vec2<u32>(u_input.d, 0u), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(28949u, 5u)], -113f, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), countOneBits(~vec4<u32>(552u, 4294967295u, u_input.b.x, 1u))))));
    var var_0 = Struct_1(select(func_4(~_wgslsmith_dot_vec2_u32(vec2<u32>(63424u, 0u), vec2<u32>(62732u, 4294967295u)), all(func_4(4294967295u, true).a)).a, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec4<bool>(false, true, false, true))), any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))), !(!vec2<bool>(u_input.b.x <= 6063u, true)), global1.xxz, _wgslsmith_f_op_f32(f32(-1f) * -987f), func_4(1u, true).d);
    let var_1 = Struct_1(var_0.a, vec2<bool>(true, true), abs(vec3<i32>(2147483647i, global1.x, firstLeadingBit(0i >> (u_input.b.x % 32u)))), 946f, -2296f);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(981f, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), select(var_0.b, vec2<bool>(false, var_0.b.x), var_0.a.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1790f, var_0.d)), vec2<f32>(774f, var_0.d), true))) - vec2<f32>(1140f, var_1.e)), false));
    let var_3 = Struct_2(vec2<i32>(select(~var_0.c.x, 2147483647i, !var_0.a.x), ~_wgslsmith_mult_i32(u_input.a.x, 24284i)) | u_input.a.yz);
    var var_4 = Struct_3(var_1, ~(~(~vec4<u32>(6794u, 6669u, 72717u, 1u)) << (~abs(vec4<u32>(23086u, u_input.b.x, 0u, 1u)) % vec4<u32>(32u))), min(vec3<u32>(max(1u, ~4294967295u), firstLeadingBit(abs(u_input.b.x)), 15989u), abs(_wgslsmith_div_vec3_u32(vec3<u32>(55803u, u_input.d, 43856u), vec3<u32>(4294967295u, u_input.b.x, 4294967295u))) >> (u_input.c % vec3<u32>(32u))));
    global1 = vec4<i32>(var_3.a.x, -2337i, ~((-42008i & global1.x) ^ 17824i), abs(var_0.c.x)) | vec4<i32>(_wgslsmith_add_i32(var_0.c.x, abs(~global1.x)), var_0.c.x, abs(_wgslsmith_mult_i32(50967i, i32(-1i) * -10975i)), select(2147483647i, u_input.a.x, true));
    var var_5 = _wgslsmith_mult_vec3_i32(u_input.a ^ countOneBits(u_input.a), -u_input.a);
    global0 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, 261f, var_4.a.d), vec3<f32>(-672f, 1955f, 1505f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, var_4.a.e, var_2.x) + vec3<f32>(var_4.a.e, var_0.d, var_0.e))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4.a.e, var_4.a.e, var_4.a.e)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(551f, global0[_wgslsmith_index_u32(var_4.b.x, 5u)], var_0.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2073f, 567f, 477f)), !var_1.a.zwz)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, var_4.a.d, 676f) * vec3<f32>(var_2.x, var_1.e, var_4.a.e)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.e, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], -1071f), vec3<f32>(-1328f, var_0.d, -985f), var_0.a.zyz)))), var_1.a.x)))), var_4.b.yx, var_1.c.x, vec4<i32>(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 24151u, var_4.b.x), vec4<u32>(var_4.c.x, 0u, u_input.b.x, 15644u)), var_1.b.x).c.x, max(min(-30745i, -17032i), -_wgslsmith_dot_vec3_i32(global1.www, vec3<i32>(-30612i, var_5.x, -1i))), reverseBits(~_wgslsmith_mult_i32(var_5.x, -24865i)), var_3.a.x), ~firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, 43387i), func_7(u_input.c.x, vec4<f32>(942f, 2725f, -1548f, 318f)).x, -2147483647i)));
}

