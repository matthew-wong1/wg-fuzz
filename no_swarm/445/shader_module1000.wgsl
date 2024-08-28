struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-1342f, vec2<i32>(49841i, i32(-2147483648)), -207f, vec2<i32>(14973i, 2147483647i), true), Struct_1(-819f, vec2<i32>(2147483647i, 0i), 622f, vec2<i32>(2147483647i, -13567i), false), Struct_1(962f, vec2<i32>(-31947i, -44874i), -801f, vec2<i32>(-1i, 3732i), true), Struct_1(501f, vec2<i32>(19144i, i32(-2147483648)), -424f, vec2<i32>(2147483647i, -18409i), true), Struct_1(1923f, vec2<i32>(0i, 1i), -2565f, vec2<i32>(-69630i, -42336i), false));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 23921u, 1u, 3434u);

var<private> global3: vec2<i32>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    global3 = u_input.b.zz;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1510f + 2190f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(482f - -357f) * -443f), -1761f, -1083f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(trunc(-631f)), 816f, -205f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1612f, 619f, 1295f, -2510f) * vec4<f32>(-162f, -122f, -1486f, 1664f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, -1722f, 214f, 914f))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(335f)), 1000f, _wgslsmith_f_op_f32(step(347f, -860f)), _wgslsmith_f_op_f32(f32(-1f) * -1027f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(430f, -1620f, -480f, 1000f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-964f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(372f, 743f) * _wgslsmith_f_op_f32(exp2(var_0.x))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(-1399f, _wgslsmith_f_op_f32(trunc(-2464f)), all(vec3<bool>(false, true, true)))), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.zy, vec2<f32>(var_0.x, var_0.x)))))));
    let var_2 = Struct_2(!(!(any(vec2<bool>(false, false)) & true)), _wgslsmith_dot_vec2_u32(min(global2.wz, ~(~global2.wz)), reverseBits(abs(global2.ww))), global1[_wgslsmith_index_u32(u_input.c | _wgslsmith_mult_u32(59538u, arg_0), 5u)], Struct_1(1475f, vec2<i32>(~reverseBits(1i), reverseBits(abs(u_input.b.x))), _wgslsmith_f_op_f32(-var_0.x), select(reverseBits(u_input.b.yz), reverseBits(u_input.b.xx), true) << (global2.xw % vec2<u32>(32u)), true));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(18777i, u_input.b.x, global3.x, 0i), ~vec4<i32>(global3.x, u_input.b.x, -1i, u_input.b.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, global2.x, var_2.b, var_2.b), vec4<u32>(arg_0, var_2.b, 4294967295u, 56931u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-20861i, global3.x, var_2.d.d.x, -7015i) | vec4<i32>(42221i, 54507i, 35215i, u_input.b.x), vec4<i32>(global3.x, -12737i, u_input.b.x, global3.x) ^ vec4<i32>(u_input.b.x, var_2.d.b.x, 66784i, u_input.b.x))), vec4<i32>(-21229i, u_input.b.x, (i32(-1i) * -43938i) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.b.x, -1i, 0i, 2147483647i), vec4<i32>(7398i, var_2.d.b.x, 0i, u_input.b.x)), ~(-13411i)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-28744i, -41398i, -30954i, -88359i), select(vec4<i32>(1i, 1i, 35100i, -7141i), vec4<i32>(34985i, 0i, 1i, global3.x), vec4<bool>(false, var_2.a, false, var_2.a))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(38181i, reverseBits(-20792i)), _wgslsmith_mult_i32(~19982i, _wgslsmith_div_i32(0i, u_input.b.x)), u_input.b.x, -31202i), vec4<i32>(global3.x, u_input.b.x, i32(-1i) * -2147483647i, global3.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.c.a)))), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * _wgslsmith_f_op_f32(var_2.c.c + var_2.c.c))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_2.d.a))))));
}

fn func_2() -> f32 {
    var var_0 = vec4<bool>(true, _wgslsmith_sub_u32(global2.x, u_input.c) != ~u_input.c, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(196f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1100f - _wgslsmith_f_op_f32(func_3(global2.x)))));
    global4 = ~(~(-(-1i >> (1u % 32u))));
    let var_1 = ~4294967295u;
    global2 = vec4<u32>(firstLeadingBit(u_input.c), 82737u, 0u, firstTrailingBit(4294967295u));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.a, 5u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -628f)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(arg_0.d.c == -810f, abs(_wgslsmith_dot_vec2_u32(select(global2.xy, vec2<u32>(4294967295u, 0u), false) & vec2<u32>(94u, 4294967295u), _wgslsmith_mod_vec2_u32(max(global2.zx, global2.yy), vec2<u32>(1u, 4294967295u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.c))), ~vec2<i32>(u_input.b.x, -global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f - arg_0.d.a)), arg_0.d.b & vec2<i32>(i32(-1i) * -2147483647i, arg_0.d.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) + _wgslsmith_f_op_f32(-arg_0.c.c)) < _wgslsmith_f_op_f32(arg_0.d.a * _wgslsmith_f_op_f32(arg_0.c.c * -1073f))), arg_0.d);
    global2 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(arg_0.b), global2.x) << (u_input.a % 32u), var_0.b, 3703u & firstTrailingBit(_wgslsmith_mod_u32(arg_0.b, var_0.b))), 4294967295u, select(global2.x, abs(arg_0.b), arg_0.d.e), u_input.c | ~(~8131u));
    let var_1 = ~(~(vec2<u32>(24024u, _wgslsmith_dot_vec2_u32(global2.zy, global2.xz)) >> ((global2.wy ^ vec2<u32>(0u, 0u)) % vec2<u32>(32u))));
    let var_2 = arg_0.c.d.x;
    global3 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(select(~(~vec2<i32>(23505i, u_input.b.x)), vec2<i32>(-u_input.b.x, ~21141i), !(!vec2<bool>(true, arg_0.c.e))), -(vec2<i32>(-6846i, var_2) >> (select(global2.zw, vec2<u32>(44717u, global2.x), false) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zy, vec2<i32>(arg_0.d.d.x, -2147483647i), ~vec2<i32>(arg_0.d.d.x, var_0.d.b.x)), abs(arg_0.d.d))), u_input.b.xx << (((~vec2<u32>(1u, u_input.c) ^ global2.wz) >> (select(vec2<u32>(23974u, var_1.x), ~global2.yy, arg_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-679f - 155f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-342f, -536f, true)), _wgslsmith_f_op_f32(min(-990f, 1119f)), true)), 40179u, Struct_1(-378f, _wgslsmith_mult_vec2_i32(u_input.b.yx, ~vec2<i32>(0i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(927f, -777f)), countOneBits(vec2<i32>(global3.x, -2147483647i)), false), global1[_wgslsmith_index_u32(~(~(~58146u)), 5u)]));
    let var_1 = vec2<bool>(all(!(!select(vec3<bool>(false, var_0.a, var_0.d.e), vec3<bool>(false, false, true), false))), global3.x < global3.x);
    var var_2 = ~(~vec2<i32>(~(u_input.b.x >> (0u % 32u)), var_0.c.d.x));
    var var_3 = reverseBits(_wgslsmith_mod_vec3_i32(select(max(select(u_input.b, vec3<i32>(var_2.x, -31626i, -1i), vec3<bool>(var_0.c.e, var_0.a, var_1.x)), vec3<i32>(-32941i, u_input.b.x, var_0.d.b.x)), reverseBits(vec3<i32>(-12471i, -2147483647i, 5665i) & u_input.b), !select(vec3<bool>(var_0.a, false, var_1.x), vec3<bool>(var_0.c.e, false, false), vec3<bool>(var_0.c.e, var_1.x, true))), vec3<i32>(~func_4(Struct_2(true, 4294967295u, global1[_wgslsmith_index_u32(15592u, 5u)], Struct_1(var_0.c.a, u_input.b.xz, var_0.d.c, vec2<i32>(0i, -32975i), true))).d.d.x, var_0.d.b.x, 1i)));
    var var_4 = Struct_3(select(!select(!vec3<bool>(var_0.c.e, var_1.x, true), vec3<bool>(false, var_0.d.e, var_1.x), true), select(vec3<bool>(all(vec4<bool>(false, var_0.a, var_0.d.e, var_0.a)), var_0.c.e, !var_0.d.e), select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_0.c.e, false), false), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, false, true), var_0.c.e), !vec3<bool>(true, var_0.a, true)), !(!vec3<bool>(true, var_0.d.e, var_1.x))), any(vec4<bool>(true, any(vec3<bool>(true, var_0.d.e, true)), var_1.x, var_3.x < var_0.c.b.x))), func_4(Struct_2(func_4(func_4(Struct_2(false, global2.x, Struct_1(-1628f, vec2<i32>(18394i, var_2.x), var_0.d.c, var_3.xx, true), Struct_1(-435f, var_3.yy, -1482f, vec2<i32>(var_0.c.b.x, arg_0), true)))).d.e, var_0.b, func_4(func_4(Struct_2(false, 71281u, global1[_wgslsmith_index_u32(u_input.c, 5u)], Struct_1(-688f, vec2<i32>(18994i, -2147483647i), var_0.c.c, vec2<i32>(var_0.d.d.x, -17228i), var_1.x)))).c, var_0.d)));
    return Struct_1(-1256f, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-abs(var_0.c.d), ~vec2<i32>(var_4.b.d.d.x, var_4.b.d.d.x) >> (select(vec2<u32>(var_4.b.b, global2.x), vec2<u32>(global2.x, var_4.b.b), var_4.a.x) % vec2<u32>(32u))), vec2<i32>(abs(1i), -2807i ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(205f)))) - _wgslsmith_f_op_f32(func_3(0u))), ~var_4.b.c.b, var_2.x != -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 25072i;
    var var_0 = firstLeadingBit(abs(abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global3.x, u_input.b.x), -11122i))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2.x, ~global2.x), u_input.c, 45345u), 5u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1372f - _wgslsmith_f_op_f32(-var_1.c)), var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -2715f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.c)), -364f)))));
    var var_3 = vec2<f32>(var_2.x, 1195f);
    var var_4 = func_1(_wgslsmith_mod_i32(abs(global3.x) | select(global3.x, -3969i, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, global3.x, global3.x, -1i), vec4<i32>(-11309i, global3.x, 2147483647i, u_input.b.x)) & _wgslsmith_sub_i32(-17178i, global3.x ^ 3592i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()));
}

