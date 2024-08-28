struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: bool = false;

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 28227u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 17709u, 1u), vec3<u32>(64921u, 0u, 71913u), vec3<u32>(27303u, 0u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 48670u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 0u, 44291u), vec3<u32>(0u, 4294967295u, 51062u), vec3<u32>(1u, 4294967295u, 30633u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(34500u, 0u, 102182u), vec3<u32>(39363u, 0u, 32687u), vec3<u32>(1u, 8423u, 945u), vec3<u32>(0u, 1279u, 3554u), vec3<u32>(0u, 99247u, 4294967295u), vec3<u32>(18557u, 4294967295u, 4294967295u), vec3<u32>(109839u, 15815u, 1u), vec3<u32>(31805u, 1u, 0u), vec3<u32>(1u, 0u, 0u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32) -> i32 {
    let var_0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1, arg_1)))));
    global2 = array<vec3<u32>, 21>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, arg_1, 1604f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(313f, 193f, 117f) - vec3<f32>(979f, 907f, arg_1)), var_0.x > arg_1))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, 1u, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e)), 0u) & select(abs(vec2<u32>(30292u, 1u)), vec2<u32>(38731u, u_input.e) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), true), ~vec2<u32>(_wgslsmith_div_u32(u_input.e, u_input.e), abs(0u))), select(select(vec2<bool>(true, true), vec2<bool>(arg_0, all(vec3<bool>(arg_0, true, arg_0))), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(select(vec2<bool>(false, arg_0), vec2<bool>(false, false), arg_0 & false), !select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), arg_0), true), !arg_0), vec2<bool>(!(!(1i != u_input.a.x)), !(!(u_input.c < u_input.b))), Struct_2(vec2<u32>(~u_input.e << (_wgslsmith_add_u32(u_input.e, 54783u) % 32u), ~u_input.e), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, arg_1, arg_1), vec3<f32>(arg_1, var_0.x, 304f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, arg_1)))), ~(~vec2<u32>(4294967295u, u_input.e)), vec2<u32>(4294967295u, u_input.e)), u_input.e << (reverseBits(min(20074u, 1u)) % 32u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -367f, -292f)))))));
    global0 = array<vec3<bool>, 19>();
    var var_2 = Struct_5(vec3<bool>(!(!(false || var_1.c.x)), var_1.c.x, false), ~vec4<u32>(var_1.d.b.c.x, 47344u, ~_wgslsmith_mult_u32(39895u, u_input.e), select(4294967295u, 4294967295u, true)), true, _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(92328u, 1u) << (vec2<u32>(4294967295u, var_1.d.a.x) % vec2<u32>(32u)))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d.c, var_1.d.c), var_1.a.b))), arg_1);
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32((vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, -2147483647i) | vec4<i32>(u_input.d.x, -34492i, 0i, u_input.a.x)) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 33758u, var_2.d, var_2.b.x), vec4<u32>(1u, 1u, 107150u, 25820u)) % vec4<u32>(32u)), vec4<i32>(-u_input.d.x ^ u_input.b, i32(-1i) * -45938i, _wgslsmith_add_i32(-1i, u_input.c), u_input.a.x)), _wgslsmith_add_i32(-(i32(-1i) * -37890i), u_input.c));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: vec4<i32>) -> bool {
    global0 = array<vec3<bool>, 19>();
    var var_0 = Struct_2(vec2<u32>(arg_1.x, ~u_input.e), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e, arg_2.e, arg_2.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, 160f, arg_2.e)))), max(arg_1, _wgslsmith_div_vec2_u32(min(vec2<u32>(arg_1.x, arg_2.b.x), vec2<u32>(arg_1.x, 4294967295u)), reverseBits(vec2<u32>(18518u, u_input.e)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(arg_2.b.x, u_input.e), _wgslsmith_add_vec2_u32(arg_1, arg_2.b.ww))), select((1u ^ arg_1.x) ^ 0u, 1u, any(select(vec4<bool>(arg_0.x, arg_2.c, arg_2.c, true), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, arg_2.c, arg_0.x, true))) || arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_2.e, _wgslsmith_f_op_f32(-arg_2.e)), _wgslsmith_div_vec3_f32(vec3<f32>(-535f, arg_2.e, 1335f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-388f, 1296f, 233f), vec3<f32>(-1589f, 368f, arg_2.e)))), arg_2.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-363f, 529f, arg_2.e)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e, arg_2.e, 2119f), vec3<f32>(arg_2.e, arg_2.e, -1041f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e, arg_2.e, arg_2.e), vec3<f32>(340f, arg_2.e, 1000f)))))));
    var var_1 = select(select(select(arg_2.a, select(global0[_wgslsmith_index_u32(15671u, 19u)], vec3<bool>(false, false, arg_2.a.x), all(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), select(!vec3<bool>(arg_0.x, false, false), select(global0[_wgslsmith_index_u32(4294967295u, 19u)], vec3<bool>(true, false, arg_2.c), vec3<bool>(arg_0.x, arg_0.x, true)), !arg_2.a.x)), !global0[_wgslsmith_index_u32(u_input.e, 19u)], any(select(arg_0, vec2<bool>(arg_0.x, false), arg_0.x)) | all(select(vec4<bool>(arg_0.x, false, true, true), vec4<bool>(arg_2.a.x, false, arg_0.x, arg_2.a.x), arg_2.a.x))), select(!select(!vec3<bool>(false, arg_2.c, false), select(vec3<bool>(false, true, arg_2.c), arg_2.a, arg_2.a.x), select(vec3<bool>(false, false, arg_0.x), arg_2.a, arg_0.x)), select(arg_2.a, vec3<bool>(all(vec4<bool>(true, true, arg_2.c, true)), all(vec4<bool>(arg_2.a.x, arg_0.x, true, false)), u_input.c < arg_3.x), vec3<bool>(!arg_0.x, false, false)), arg_2.a), global0[_wgslsmith_index_u32(4294967295u, 19u)]);
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_i32(u_input.d.x, u_input.d.x);
    global0 = array<vec3<bool>, 19>();
    var var_1 = u_input.c;
    let var_2 = vec4<bool>(func_4(vec2<bool>(!(u_input.e != arg_0.b.x), true), min(vec2<u32>(907u, ~39982u), countOneBits(arg_0.c)), Struct_5(!(!global0[_wgslsmith_index_u32(arg_0.c.x, 19u)]), abs(~vec4<u32>(u_input.e, arg_0.c.x, u_input.e, arg_0.c.x)), true, _wgslsmith_mult_u32(~u_input.e, ~u_input.e), 666f), vec4<i32>(u_input.c, -(-2147483647i ^ u_input.d.x), func_3(true, _wgslsmith_div_f32(arg_0.a.x, -336f)), ~(-45293i))), true, any(!vec2<bool>(921f > arg_0.a.x, true)), any(vec4<bool>(true, !(2147483647i != u_input.b), !all(vec3<bool>(true, false, false)), !func_4(vec2<bool>(false, false), vec2<u32>(u_input.e, arg_0.c.x), Struct_5(vec3<bool>(false, false, false), vec4<u32>(u_input.e, 46954u, arg_0.c.x, arg_0.b.x), true, 26391u, arg_0.a.x), vec4<i32>(1i, 2147483647i, 0i, u_input.d.x)))));
    var var_3 = arg_0;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3.a.x, arg_0.a.x)) * _wgslsmith_f_op_f32(ceil(249f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a.x))))), _wgslsmith_div_f32(-688f, _wgslsmith_f_op_f32(-2066f * arg_0.a.x)), 564f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(121f))));
    var var_1 = vec4<i32>(-1i) * -select(-vec4<i32>(u_input.a.x, u_input.b, -2147483647i, arg_2), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c, arg_2, -1i), ~vec4<i32>(15651i, u_input.c, -6627i, u_input.c), abs(vec4<i32>(0i, -2147483647i, 0i, u_input.d.x))), !any(vec2<bool>(true, false)));
    var var_2 = 4294967295u;
    var var_3 = countOneBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, u_input.e, 1239u, 1u), vec4<u32>(45036u, 0u, 1u, 22228u)), ~(vec4<u32>(4294967295u, 0u, 69417u, u_input.e) >> (vec4<u32>(1u, 86828u, 4294967295u, 17183u) % vec4<u32>(32u)))) ^ (12675u << (max(u_input.e, u_input.e) % 32u)));
    var_0 = -1465f;
    return !func_4(vec2<bool>(false, any(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b.x, arg_0.b.x), 19u)])), countOneBits(vec2<u32>(~u_input.e, arg_0.b.x)), Struct_5(!select(global0[_wgslsmith_index_u32(u_input.e, 19u)], vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec4<u32>(arg_0.b.x >> (u_input.e % 32u), u_input.e, ~arg_0.c.x, 26637u), !any(vec4<bool>(false, true, false, true)), max(~46875u, u_input.e ^ 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x)), ~vec4<i32>(1i, 1i, -61365i, arg_2) & _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2, u_input.b, -21858i, 0i), vec4<i32>(arg_2, -2147483647i, 20245i, -36894i)), vec4<i32>(-6223i, -14404i, -30353i, -35305i)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    global1 = false;
    var var_0 = func_5(Struct_1(vec3<f32>(-964f, -680f, 1f), abs(vec2<u32>(4294967295u | u_input.e, ~66784u)), select(max(vec2<u32>(1u, u_input.e), vec2<u32>(1u, 10293u)) | ~vec2<u32>(0u, u_input.e), abs(select(vec2<u32>(24971u, u_input.e), vec2<u32>(0u, u_input.e), true)), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-285f, -447f, -906f), vec3<f32>(-2293f, 1755f, -1371f))) - vec3<f32>(211f, 1756f, 697f)), select(max(vec2<u32>(88212u, 64073u), vec2<u32>(u_input.e, u_input.e)), firstLeadingBit(vec2<u32>(19289u, u_input.e)), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0)), ~reverseBits(vec2<u32>(1u, 1u))))), arg_1.x);
    let var_1 = _wgslsmith_sub_vec3_i32(arg_1.xzz, vec3<i32>(arg_1.x, firstLeadingBit(reverseBits(-1i)), u_input.c)) ^ arg_1.yzy;
    let var_2 = ~abs(max(vec2<u32>(1u, u_input.e) ^ vec2<u32>(u_input.e, 63474u), ~select(vec2<u32>(u_input.e, 0u), vec2<u32>(u_input.e, u_input.e), false)));
    global1 = arg_0;
    return countOneBits(firstTrailingBit(~var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 21>();
    var var_0 = func_1(false, vec4<i32>(u_input.b, u_input.b, abs(_wgslsmith_div_i32(2147483647i, -1i)), u_input.d.x)) ^ reverseBits(u_input.e << (4294967295u % 32u));
    let var_1 = true;
    var var_2 = func_4(select(!select(vec2<bool>(var_1, true), select(vec2<bool>(false, false), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1)), vec2<bool>(var_1, var_1)), vec2<bool>(var_1 && (var_1 | false), all(select(vec4<bool>(true, true, false, var_1), vec4<bool>(var_1, var_1, true, false), vec4<bool>(true, var_1, true, false)))), select(select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(true, true)), !vec2<bool>(var_1, false), var_1), !select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), var_1), !var_1)), select(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.e, u_input.e), u_input.e), vec2<u32>(~1u, u_input.e)), ~(~(~vec2<u32>(u_input.e, u_input.e))), vec2<bool>(var_1, false)), Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e | 16820u, ~_wgslsmith_clamp_u32(u_input.e, u_input.e, 119284u)), 19u)], vec4<u32>(~(u_input.e >> (u_input.e % 32u)), u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, 16023u), vec3<u32>(0u, 1u, u_input.e)) | 27137u, ~u_input.e), all(select(!vec4<bool>(false, var_1, var_1, true), !vec4<bool>(var_1, false, true, true), vec4<bool>(var_1, false, var_1, true))), firstLeadingBit(67597u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2240f))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -(vec4<i32>(u_input.b, u_input.a.x, u_input.c, u_input.b) | select(vec4<i32>(u_input.a.x, -2147483647i, u_input.c, u_input.c), vec4<i32>(u_input.b, u_input.c, u_input.a.x, u_input.a.x), vec4<bool>(var_1, var_1, true, false))) | -min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -58225i, 1i), vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 5837i)), vec4<i32>(u_input.a.x, u_input.d.x, -28489i, u_input.c) & vec4<i32>(u_input.c, u_input.d.x, 9140i, u_input.a.x)));
    let var_3 = firstLeadingBit(~(vec4<u32>(u_input.e | 4294967295u, max(u_input.e, 0u), u_input.e, select(0u, 4294967295u, true)) << (reverseBits(countOneBits(vec4<u32>(0u, 4294967295u, 57714u, 24561u))) % vec4<u32>(32u))));
    var_0 = reverseBits(~min(_wgslsmith_add_u32(7977u, 1u), u_input.e << (64003u % 32u)) & abs(var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f));
}

