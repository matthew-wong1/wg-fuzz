struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(4294967295u, 4974u, 0u, 4294967295u), vec4<u32>(0u, 44627u, 1u, 0u), vec4<u32>(256u, 108701u, 41775u, 4294967295u), vec4<u32>(12787u, 30644u, 0u, 37066u), vec4<u32>(32271u, 7218u, 0u, 1u), vec4<u32>(1u, 0u, 31824u, 1u), vec4<u32>(0u, 46473u, 51089u, 1u), vec4<u32>(33865u, 1u, 2854u, 20382u), vec4<u32>(58998u, 94143u, 1u, 0u), vec4<u32>(1u, 87182u, 0u, 34280u), vec4<u32>(1u, 115005u, 0u, 42379u), vec4<u32>(4294967295u, 25749u, 0u, 30289u), vec4<u32>(36446u, 1u, 1u, 4294967295u), vec4<u32>(0u, 685u, 42518u, 1u), vec4<u32>(0u, 14508u, 86441u, 1u), vec4<u32>(52215u, 4294967295u, 4294967295u, 1u), vec4<u32>(57104u, 44202u, 68247u, 1u), vec4<u32>(0u, 1751u, 0u, 70799u), vec4<u32>(105647u, 4294967295u, 54706u, 46566u), vec4<u32>(16394u, 0u, 21506u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(1u, 0u, 19483u, 44676u), vec4<u32>(1u, 1u, 0u, 37725u));

var<private> global1: f32 = -665f;

var<private> global2: vec2<f32> = vec2<f32>(1064f, -557f);

var<private> global3: array<Struct_3, 31>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(~max((arg_0.wyz | arg_0.zww) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(55195u, u_input.b.x, u_input.b.x), vec3<u32>(0u, 0u, 1u)) % vec3<u32>(32u)), abs(~vec3<i32>(-30146i, arg_0.x, 8964i))), _wgslsmith_div_i32(u_input.a, u_input.a), arg_0.x, -vec2<i32>(-26113i, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(-368f - -824f), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) * -542f)));
    var var_1 = vec2<u32>(1u, 30558u);
    var var_2 = i32(-1i) * -2147483647i;
    global4 = select(select(!select(!vec2<bool>(global4.x, global4.x), !vec2<bool>(true, global4.x), true), select(select(select(vec2<bool>(true, global4.x), vec2<bool>(global4.x, global4.x), true), select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, global4.x)), false), vec2<bool>(true, !global4.x), any(vec3<bool>(true, global4.x, global4.x))), select(select(select(vec2<bool>(global4.x, false), vec2<bool>(true, true), global4.x), vec2<bool>(true, false), vec2<bool>(true, true)), !(!vec2<bool>(global4.x, global4.x)), vec2<bool>(global4.x, !global4.x))), vec2<bool>(true, select(!(!global4.x), global4.x, select(false, true, global4.x))), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45395u, 0u, 0u), ~global0[_wgslsmith_index_u32(u_input.b.x, 23u)]) != ~(~u_input.b.x), global4.x));
    global0 = array<vec4<u32>, 23>();
    return !(!select(vec2<bool>(!global4.x, !global4.x), !select(vec2<bool>(global4.x, false), vec2<bool>(global4.x, true), true), !global4.x));
}

fn func_2(arg_0: u32) -> i32 {
    global3 = array<Struct_3, 31>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(449f * global2.x))), -1489f, -696f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, _wgslsmith_f_op_f32(min(-133f, global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global2.x, global2.x, global4.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1231f))));
    global4 = !(!select(!(!vec2<bool>(true, global4.x)), select(func_3(vec4<i32>(u_input.a, 23040i, -63033i, 1i)), vec2<bool>(false, true), !global4.x), !func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var var_1 = Struct_2(vec2<bool>(arg_0 > arg_0, true), Struct_1(-abs(vec3<i32>(u_input.a, -17328i, u_input.a)) >> (~vec3<u32>(94607u, arg_0, 49407u) % vec3<u32>(32u)), -(~(-u_input.a)), -2147483647i >> ((u_input.b.x >> (_wgslsmith_mod_u32(arg_0, u_input.b.x) % 32u)) % 32u), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.xxy)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.x, global2.x))))), vec2<f32>(-1121f, _wgslsmith_f_op_f32(f32(-1f) * -546f)), Struct_1(~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(45963i, -7067i, u_input.a), vec3<i32>(u_input.a, -1i, -29494i)), firstLeadingBit(vec3<i32>(24650i, u_input.a, 2147483647i)), vec3<i32>(1i, u_input.a, u_input.a) >> (vec3<u32>(0u, 29804u, 96410u) % vec3<u32>(32u))), abs(u_input.a ^ u_input.a), -u_input.a, max(vec2<i32>(min(u_input.a, u_input.a), ~(-2147483647i)), abs(vec2<i32>(u_input.a, 16338i))), var_0.wyy), Struct_1(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 53999i, -2147483647i), vec3<i32>(22964i, u_input.a, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, 26607i), vec3<i32>(u_input.a, -2147483647i, 20562i))), u_input.a, ~max(u_input.a, ~(-2147483647i)), -vec2<i32>(u_input.a, u_input.a), var_0.xzz));
    var var_2 = global3[_wgslsmith_index_u32(~(~arg_0), 31u)];
    return reverseBits(1i);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(!(!vec2<bool>(global4.x, 4294967295u != u_input.b.x)), Struct_1(vec3<i32>(u_input.a, ~abs(50277i), ~func_2(u_input.b.x)), min((9088i >> (u_input.b.x % 32u)) << (~u_input.b.x % 32u), -1i), _wgslsmith_add_i32(u_input.a | -43783i, -u_input.a), vec2<i32>(abs(2147483647i), ~reverseBits(-1i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(927f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.x)))), global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1725f, -147f) * vec2<f32>(-208f, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), -1734f), false != !global4.x))), Struct_1(select(vec3<i32>(-2147483647i, min(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, 91955i)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(-2147483647i, u_input.a, u_input.a))), global4.x), u_input.a, 2147483647i, firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(2147483647i, u_input.a), max(vec2<i32>(u_input.a, 6024i), vec2<i32>(u_input.a, 0i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, _wgslsmith_f_op_f32(-global2.x), global2.x) - vec3<f32>(-113f, 139f, _wgslsmith_div_f32(global2.x, -368f)))), Struct_1(countOneBits(~abs(vec3<i32>(-1i, 1i, u_input.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-3753i, -u_input.a, select(-1i, u_input.a, global4.x), u_input.a), countOneBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i))), 5648i | u_input.a, -_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, -2147483647i), vec2<i32>(0i, u_input.a) | vec2<i32>(u_input.a, 0i), ~vec2<i32>(2147483647i, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(146f, global2.x, global2.x) - vec3<f32>(global2.x, 226f, -205f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1582f, 130f, -809f) * vec3<f32>(-411f, global2.x, global2.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(3031f, 1458f, -1431f)))));
    var var_1 = select(!vec3<bool>(!any(vec3<bool>(true, global4.x, true)), global4.x, false), select(vec3<bool>(false & (523f > var_0.d.e.x), !(var_0.d.e.x < global2.x), -1i > ~u_input.a), select(!vec3<bool>(var_0.a.x, true, true), select(select(vec3<bool>(true, global4.x, false), vec3<bool>(false, false, false), vec3<bool>(true, global4.x, global4.x)), !vec3<bool>(true, var_0.a.x, global4.x), any(var_0.a)), select(var_0.a.x, var_0.a.x, true)), select(select(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, global4.x), vec3<bool>(false, global4.x, global4.x)), !vec3<bool>(true, var_0.a.x, false), true), vec3<bool>(false, 1i <= var_0.d.b, true), select(vec3<bool>(true, true, false), !vec3<bool>(var_0.a.x, var_0.a.x, global4.x), true))), select(vec3<bool>(true, any(vec3<bool>(global4.x, false, false)) & (true & global4.x), true), vec3<bool>(global4.x, var_0.a.x, global4.x), select(!vec3<bool>(global4.x, var_0.a.x, true), select(select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_0.a.x, false, true), vec3<bool>(false, global4.x, false)), !vec3<bool>(global4.x, true, true), 32200u <= u_input.b.x), select(vec3<bool>(false, var_0.a.x, false), select(vec3<bool>(global4.x, false, true), vec3<bool>(true, var_0.a.x, global4.x), vec3<bool>(var_0.a.x, var_0.a.x, true)), vec3<bool>(false, var_0.a.x, false)))));
    return Struct_1(var_0.d.a, abs(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(8955i, -16803i, var_0.e.d.x, -19069i), countOneBits(vec4<i32>(0i, u_input.a, 1i, u_input.a))))), ~(~2870i), -vec2<i32>(2147483647i, reverseBits(0i)), _wgslsmith_f_op_vec3_f32(step(var_0.e.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(221f - 687f), -374f)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = !(!var_0.a.x);
    var var_2 = global3[_wgslsmith_index_u32(0u, 31u)];
    global4 = !arg_0.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.d.e.x, var_2.a.b.e.x)))) + var_0.d.e.x)), var_2.a.e.e.x);
    return vec2<bool>(func_3(_wgslsmith_mult_vec4_i32(select(vec4<i32>(arg_0.b.a.x, -2147483647i, arg_0.d.c, 40116i), vec4<i32>(2147483647i, 0i, -46076i, u_input.a) | var_2.e, all(var_2.c)), var_2.e >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 2461u, 4294967295u, var_2.d), global0[_wgslsmith_index_u32(10033u, 23u)]) % vec4<u32>(32u)))).x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(func_4(Struct_2(!(!vec2<bool>(global4.x, global4.x)), func_1(), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-289f, global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(global2.x, global2.x)))), func_1(), Struct_1(countOneBits(vec3<i32>(-28469i, 1i, u_input.a)), -2147483647i, i32(-1i) * -1i, -vec2<i32>(u_input.a, -2147483647i), vec3<f32>(-1578f, 975f, global2.x))), u_input.b.x), vec2<bool>(global4.x, false), !global4.x);
    global3 = array<Struct_3, 31>();
    global3 = array<Struct_3, 31>();
    var var_0 = Struct_2(select(func_3(~abs(vec4<i32>(2147483647i, 5152i, 2147483647i, -2147483647i))), vec2<bool>(global4.x, global4.x), any(select(vec3<bool>(global4.x, true, false), vec3<bool>(true, true, true), !global4.x))), func_1(), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -248f), 262f), func_1(), Struct_1(-vec3<i32>(u_input.a, u_input.a & u_input.a, 0i), 36592i, (~u_input.a ^ -1i) ^ -abs(u_input.a), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(1244i, 35941i, -1i)), i32(-1i) * -u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1114f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(225f * 885f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, 787f, global2.x) * vec3<f32>(global2.x, global2.x, global2.x))), vec3<bool>(true, 52163u == u_input.b.x, !global4.x)))));
    global4 = select(select(!func_3(abs(vec4<i32>(2147483647i, 0i, 1i, 1i))), var_0.a, !(!select(vec2<bool>(global4.x, true), vec2<bool>(var_0.a.x, true), vec2<bool>(global4.x, false)))), select(select(vec2<bool>(!var_0.a.x, true), select(select(vec2<bool>(true, var_0.a.x), vec2<bool>(false, var_0.a.x), global4.x), var_0.a, global4.x), all(var_0.a)), vec2<bool>(true, true), all(select(!var_0.a, var_0.a, all(var_0.a)))), !func_3(reverseBits(reverseBits(vec4<i32>(-8474i, var_0.b.c, var_0.b.d.x, u_input.a)))));
    let var_1 = select(firstLeadingBit(abs(vec3<i32>(i32(-1i) * -23938i, var_0.e.d.x, 63493i))), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.d.d, _wgslsmith_mod_vec2_i32(-var_0.e.d, var_0.e.a.xx)), -(~var_0.d.a.x >> (~u_input.b.x % 32u)), -1i), var_0.a.x);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, _wgslsmith_clamp_u32(~17141u, u_input.b.x, abs(0u))), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), reverseBits(vec2<i32>(~func_1().d.x, var_0.d.c)), firstTrailingBit(firstTrailingBit(u_input.b.x) ^ _wgslsmith_sub_u32(~u_input.b.x, ~u_input.b.x)));
}

