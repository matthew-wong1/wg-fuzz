struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> vec3<i32> {
    var var_0 = -321f;
    var var_1 = 4294967295u;
    var var_2 = select(select(select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(all(vec2<bool>(false, true)) == (arg_2.b.b == arg_3), all(vec2<bool>(false, false))), vec2<bool>(true, -56526i > _wgslsmith_mult_i32(arg_3, -6852i))), vec2<bool>(false, false == (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c, arg_0.a.x, arg_0.a.x), vec4<u32>(arg_1.a, arg_1.a, arg_2.a.x, arg_1.a)) <= ~arg_1.a)), true);
    var_1 = ~(~(~select(arg_2.b.a >> (6212u % 32u), 1u << (0u % 32u), var_2.x)));
    var_1 = ~_wgslsmith_div_u32(~arg_0.a.x, _wgslsmith_div_u32(countOneBits(0u), arg_0.a.x)) ^ ~u_input.c;
    return abs(~arg_2.b.c);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(arg_0, u_input.b.x, -(abs(firstLeadingBit(u_input.a)) << (~_wgslsmith_mod_vec3_u32(arg_1.xzx, vec3<u32>(4294967295u, u_input.d, arg_1.x)) % vec3<u32>(32u))));
    var_0 = Struct_1(arg_1.x, countOneBits(var_0.b & -23442i), func_3(Struct_2(arg_1.xz >> (arg_1.wx % vec2<u32>(32u)), Struct_1(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(4294967295u, 32043u)), ~2147483647i, vec3<i32>(-28944i, 2147483647i, var_0.c.x))), Struct_1(21517u << (u_input.d % 32u), -21483i >> (select(4294967295u, 49514u, true) % 32u), ~vec3<i32>(var_0.c.x, u_input.b.x, var_0.c.x)), Struct_2(arg_1.wx, Struct_1(1u, 15762i << (var_0.a % 32u), abs(vec3<i32>(u_input.a.x, 1i, 54679i)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-14481i, var_0.b, 2147483647i, u_input.a.x), vec4<i32>(-2147483647i, 2147483647i, 10790i, var_0.c.x)), 17938i)));
    var_0 = Struct_1(max(var_0.a, var_0.a), ~countOneBits(11260i), var_0.c);
    var var_1 = Struct_1(abs(_wgslsmith_dot_vec3_u32(arg_1.zyx, arg_1.zxz)), ~(-_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(u_input.a.x, -2147483647i))), (-var_0.c >> (vec3<u32>(4294967295u, 1u, arg_1.x) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_mult_i32(-85446i, var_0.b) ^ (u_input.b.x ^ u_input.b.x), min(_wgslsmith_dot_vec3_i32(var_0.c, u_input.a), -2147483647i), _wgslsmith_add_i32(u_input.a.x, 27162i) & (var_0.b >> (var_0.a % 32u))));
    let var_2 = Struct_2(~(~(~vec2<u32>(u_input.d, 13495u))) << (vec2<u32>(~(~arg_1.x), ~arg_1.x) % vec2<u32>(32u)), Struct_1(firstTrailingBit(var_1.a), var_1.c.x, reverseBits(func_3(Struct_2(arg_1.xz, Struct_1(0u, u_input.a.x, var_0.c)), Struct_1(13822u, var_1.c.x, u_input.a), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(47077u, -32270i, vec3<i32>(var_1.c.x, var_0.c.x, var_1.b))), _wgslsmith_add_i32(var_0.b, 33191i)))));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = vec2<u32>(~arg_1.a & ~_wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(arg_1.a, 49115u)), _wgslsmith_mod_u32(max(0u, _wgslsmith_div_u32(arg_2.a.x, arg_3.b.a)), (reverseBits(arg_1.a) & _wgslsmith_add_u32(arg_2.a.x, 0u)) & select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a.x, arg_3.a.x, 1u), vec3<u32>(1u, 1u, arg_0.a.x)), max(76439u, 0u), true)));
    var_0 = min(vec2<u32>(firstLeadingBit(4586u), var_0.x), abs(_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_0.x, var_0.x) ^ vec2<u32>(arg_3.b.a, arg_1.a)), vec2<u32>(1u, 1u) ^ _wgslsmith_div_vec2_u32(arg_2.a, arg_3.a))));
    var_0 = vec2<u32>(4294967295u, 1u);
    var_0 = vec2<u32>(countOneBits(4294967295u), arg_1.a | firstLeadingBit(abs(0u)));
    var var_1 = -vec2<i32>(38368i, -_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_2.b.c.x, -24288i, arg_2.b.b, 2147483647i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(round(-1645f)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(742f + 1084f) - _wgslsmith_f_op_f32(trunc(299f))), -607f, true)) + -619f));
    var_0 = _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(select(-1543f, 1390f, false)));
    let var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1215f + 590f), _wgslsmith_f_op_f32(step(543f, 1335f)))), _wgslsmith_f_op_f32(func_4(func_2(u_input.c, vec4<u32>(1u, 22075u, 59105u, u_input.d), vec2<bool>(true, true)), Struct_1(32586u, -1i, u_input.a), func_2(u_input.d, vec4<u32>(u_input.c, 27575u, u_input.d, 47912u), vec2<bool>(false, true)), Struct_2(vec2<u32>(u_input.d, u_input.d), Struct_1(u_input.c, -2147483647i, vec3<i32>(u_input.a.x, 2147483647i, 2147483647i))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(159f, 1528f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(u_input.d, u_input.d), Struct_1(21588u, -1i, u_input.a)), Struct_1(41009u, 9834i, vec3<i32>(0i, 0i, var_1)), Struct_2(vec2<u32>(u_input.d, 4294967295u), Struct_1(82065u, 1i, vec3<i32>(var_1, 2147483647i, u_input.b.x))), Struct_2(vec2<u32>(0u, 16410u), Struct_1(25164u, -23982i, u_input.b.wyz)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(-443f * -511f))) - _wgslsmith_f_op_f32(-480f - -183f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-389f, -1223f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~14834u));
    let var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = Struct_1(1u, 0i, vec3<i32>(abs(abs(abs(u_input.a.x))), u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -737f) + _wgslsmith_f_op_f32(step(-2233f, var_1))))))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, abs(u_input.c), min(var_0, var_2.a)), select(vec4<u32>(var_2.a, 1u, 1u, 0u), vec4<u32>(22677u, 1u, 4294967295u, 56098u), vec4<bool>(true, false, false, false)) & countOneBits(vec4<u32>(u_input.c, 0u, u_input.c, var_0))), 44323u | _wgslsmith_mult_u32(func_2(76726u, vec4<u32>(var_0, 0u, u_input.c, 87094u), vec2<bool>(true, false)).b.a, 4294967295u), u_input.c), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_sub_u32(81669u, 31313u)), 4294967295u, _wgslsmith_add_u32(abs(12972u), abs(var_2.a))), ~10983u, _wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, var_0, var_0), vec3<u32>(u_input.c, var_0, var_2.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, var_0, u_input.c), vec3<u32>(0u, 0u, var_0))), max(select(vec3<u32>(var_2.a, 27943u, 4294967295u), vec3<u32>(1u, 93451u, u_input.d), true), vec3<u32>(20156u, 0u, 31439u) & vec3<u32>(1u, 0u, var_0))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, u_input.d), ~vec2<u32>(0u, var_2.a)))), vec3<i32>(func_3(func_2(var_2.a, vec4<u32>(u_input.c, var_2.a, 1u, u_input.c), vec2<bool>(true, true)), func_2(0u, vec4<u32>(9972u, var_2.a, var_0, var_0), vec2<bool>(false, false)).b, func_2(u_input.c, vec4<u32>(45017u, 32689u, 1u, u_input.c), vec2<bool>(true, false)), 359i | var_2.b).x, _wgslsmith_div_i32(17529i, ~0i), var_2.c.x) & vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(34930i, -1i, -2147483647i, 8632i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 36094i, u_input.a.x, 1i), u_input.b, vec4<i32>(var_2.b, -21376i, u_input.a.x, var_2.c.x))), u_input.a.x, 29700i));
}

