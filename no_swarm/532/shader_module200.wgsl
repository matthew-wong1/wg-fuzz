struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(21301u);

var<private> global1: array<i32, 12> = array<i32, 12>(-24598i, 1i, -7752i, -11278i, i32(-2147483648), 1i, -52767i, 1i, -32871i, -23927i, 12014i, 68048i);

var<private> global2: array<i32, 23> = array<i32, 23>(i32(-2147483648), 1i, 2147483647i, 13931i, 48722i, -1i, 1i, -524i, 2147483647i, 17196i, 19417i, -229i, -4289i, -154i, 2147483647i, 2147483647i, -32354i, 1i, 23009i, 31523i, -30761i, -1i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global2 = array<i32, 23>();
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>((61225u ^ global0.a) | 0u, 0u, _wgslsmith_mod_u32(8194u, global0.a)), ~(~countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1355f, -787f)))))), -(i32(-1i) * -49545i));
    let var_2 = !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(false, true, true)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(28391u, 23u)] == 9838i, any(vec2<bool>(true, false))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)))));
    var var_3 = _wgslsmith_mod_u32(countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(40151u, global0.a), vec2<u32>(var_1.a.x, global0.a)))), 0u);
    return ~(-1i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_div_f32(435f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(234f * arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)) + _wgslsmith_f_op_f32(-arg_0.b.x))));
    var var_1 = vec4<i32>(-_wgslsmith_add_i32(min(global1[_wgslsmith_index_u32(114454u, 12u)], -2147483647i) | global2[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_add_i32(-93778i, global2[_wgslsmith_index_u32(~1u, 23u)])), -arg_0.c, ~max(global1[_wgslsmith_index_u32(arg_0.a.x, 12u)] & 0i, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~32052u, 23u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-38587i, 1i, global1[_wgslsmith_index_u32(34049u, 12u)], global2[_wgslsmith_index_u32(10827u, 23u)]), vec4<i32>(-62576i, global2[_wgslsmith_index_u32(arg_1.x, 23u)], arg_0.c, -1i)))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(~vec3<i32>(global1[_wgslsmith_index_u32(113703u, 12u)], -1i, -1i), max(vec3<i32>(global2[_wgslsmith_index_u32(global0.a, 23u)], 48468i, 4057i), vec3<i32>(arg_0.c, global2[_wgslsmith_index_u32(1u, 23u)], -2147483647i)), true), -(vec3<i32>(global2[_wgslsmith_index_u32(global0.a, 23u)], global2[_wgslsmith_index_u32(1u, 23u)], arg_0.c) << (arg_1.zyy % vec3<u32>(32u)))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20997i, arg_0.c, 1i), vec3<i32>(global2[_wgslsmith_index_u32(78701u, 23u)], 10837i, 2147483647i)), 1i, -arg_0.c)));
    let var_2 = all(vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), select(all(vec2<bool>(false, false)), false, true), all(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)))));
    var var_3 = 1u;
    let var_4 = arg_1.yz;
    return 0u;
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(arg_0));
    let var_1 = Struct_1(u_input.a.wzx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + var_0.x), _wgslsmith_f_op_f32(floor(1276f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0, vec2<f32>(arg_0.x, 592f)) + _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(arg_0.x, -234f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1062f, 478f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, var_0.x))), arg_0)), global2[_wgslsmith_index_u32(func_4(Struct_1(~countOneBits(vec3<u32>(u_input.a.x, 24196u, u_input.b)), vec2<f32>(-454f, _wgslsmith_f_op_f32(var_0.x - 207f)), func_3()), u_input.a), 23u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-677f + var_0.x)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2555f + -923f) + _wgslsmith_f_op_f32(729f - arg_0.x))))));
    var var_3 = Struct_1(reverseBits(~vec3<u32>(8709u, ~global0.a, _wgslsmith_div_u32(0u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)), min(_wgslsmith_add_i32(var_1.c, ~global1[_wgslsmith_index_u32(0u & u_input.b, 12u)]), 0i));
    return Struct_2(countOneBits(vec2<i32>(i32(-1i) * -4140i, 1i)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(56054u, 4294967295u), var_3.a.x, abs(1u)), max(~var_3.a, ~var_1.a)), var_3.b, firstLeadingBit(global2[_wgslsmith_index_u32(0u, 23u)])));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec3<u32> {
    let var_0 = (_wgslsmith_dot_vec4_u32(~(~u_input.a), vec4<u32>(arg_0.b.a.x, u_input.a.x, _wgslsmith_div_u32(16982u, global0.a), arg_0.b.a.x | 24950u)) >> (((global0.a >> (u_input.b % 32u)) << (_wgslsmith_mult_u32(0u & arg_0.b.a.x, _wgslsmith_div_u32(global0.a, global0.a)) % 32u)) % 32u)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(2632u & u_input.a.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.a), vec2<u32>(4062u, u_input.b))), ~abs(max(vec3<u32>(4294967295u, arg_0.b.a.x, 1u), u_input.a.zxw))) % 32u);
    global1 = array<i32, 12>();
    var var_1 = max(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(13800u, 12u)], arg_0.b.c), 1i);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(74573u, _wgslsmith_dot_vec3_u32(u_input.a.wxx, u_input.a.yxy), 1u ^ _wgslsmith_sub_u32(0u, ~u_input.a.x), ~(~abs(0u))), reverseBits(u_input.a));
    let var_3 = Struct_1(arg_0.b.a & ~firstTrailingBit(~vec3<u32>(var_2, 1u, 786u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(382f, 682f), arg_0.b.b.x) + _wgslsmith_f_op_vec2_f32(select(arg_0.b.b, arg_0.b.b, arg_1 & false))), 2147483647i);
    return _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(3189u, ~arg_0.b.a.x, countOneBits(var_2)), u_input.a.yyx) | _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, var_3.a.x, u_input.a.x), vec3<u32>(4294967295u, var_3.a.x, u_input.a.x)), var_3.a), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0, _wgslsmith_mult_u32(25547u, arg_0.b.a.x)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_2, 0u, var_2)), vec3<u32>(12260u, 0u, global0.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, var_0), u_input.a), vec4<u32>(var_0, global0.a, 4294967295u, var_3.a.x) & vec4<u32>(u_input.a.x, var_0, 2234u, arg_0.b.a.x))), arg_0.b.a | select(arg_0.b.a << (var_3.a % vec3<u32>(32u)), ~vec3<u32>(var_3.a.x, 0u, var_3.a.x), !vec3<bool>(arg_1, arg_1, false))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.b * vec2<f32>(1000f, arg_2.d.b.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 1043f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, arg_2.d.b.x) + vec2<f32>(arg_2.e, 1298f))))).b, ~(~(arg_1.a.x << (1u % 32u))), abs(36998u ^ _wgslsmith_sub_u32(74939u, u_input.b ^ 62327u)), func_2(_wgslsmith_f_op_vec2_f32(-arg_2.a.b)).b, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-282f, arg_1.b.x, false)), -176f)) + -1202f)));
    let var_1 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), !vec2<bool>(all(vec4<bool>(true, false, true, false)), true), vec2<bool>(~var_0.d.c < abs(var_0.d.c), true));
    var var_2 = ~_wgslsmith_mult_vec3_i32(~firstLeadingBit(vec3<i32>(20088i, var_0.d.c, arg_1.c)), _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(-4031i, 0i, 0i), vec3<i32>(arg_1.c, 2147483647i, global1[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(true, true, var_1.x))), countOneBits(select(vec3<i32>(arg_1.c, 6992i, -1i), vec3<i32>(arg_1.c, global1[_wgslsmith_index_u32(17204u, 12u)], 2147483647i), false))));
    var var_3 = Struct_4(Struct_1(firstTrailingBit(u_input.a.yxw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(621f, -401f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.b.x)), 793f)), -41193i), arg_0.a, ~_wgslsmith_mod_u32(var_0.b, ~(~global0.a)), Struct_1(vec3<u32>(~arg_1.a.x << (~u_input.b % 32u), global0.a, _wgslsmith_div_u32(30174u, arg_2.b) ^ 7601u), arg_1.b, arg_2.d.c), -447f);
    let var_4 = var_0;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.b, 31550u, firstLeadingBit(_wgslsmith_mult_u32(var_0.b, select(1u, 0u, false))), 31698u), _wgslsmith_add_vec4_u32(~(~u_input.a), u_input.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_4(Struct_1(arg_0.wzw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 - vec2<f32>(1617f, -574f)))), reverseBits(global1[_wgslsmith_index_u32(~1u, 12u)])), 1u, func_6(Struct_3(reverseBits(abs(global0.a))), Struct_1(func_5(func_2(vec2<f32>(-1584f, arg_2.x)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, 2643f))), global2[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 23u)]), Struct_4(Struct_1(vec3<u32>(4867u, 9418u, arg_0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.x, 1000f), arg_2)), -69207i & arg_1.x), 52718u, ~12866u, func_2(vec2<f32>(-200f, arg_2.x)).b, -998f)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(arg_2.x, 544f))), _wgslsmith_f_op_vec2_f32(arg_2 * arg_2))))).b, 1162f);
    global2 = array<i32, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - 586f)));
    var var_2 = ~(~u_input.b);
    let var_3 = !((func_6(Struct_3(var_0.a.a.x), var_0.d, var_0) & _wgslsmith_sub_u32(global0.a, _wgslsmith_mult_u32(u_input.b, global0.a))) != arg_0.x);
    return ~vec3<u32>(select(arg_0.x, u_input.a.x, true), var_0.d.a.x, var_0.c) << (vec3<u32>(~_wgslsmith_add_u32(countOneBits(0u), func_2(arg_2).b.a.x), func_2(var_0.a.b).b.a.x, ~min(global0.a, 1u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec3<bool>(false, false, any(vec2<bool>(true, true))));
    var var_1 = min(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0.a, 12809u, 14786u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global0.a), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), u_input.a.yzx), func_1(u_input.a, ~vec3<i32>(global1[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(1u, 23u)], 1i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-195f, -895f), vec2<f32>(247f, -1419f))))))), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(1u, 4294967295u, 1u)) | func_4(func_2(vec2<f32>(-102f, 403f)).b, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x)), u_input.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.a.x, ~global0.a), ~_wgslsmith_div_u32(4294967295u, u_input.b))));
    let var_2 = _wgslsmith_mod_u32(global0.a, global0.a);
    global0 = Struct_3(0u ^ _wgslsmith_div_u32(~global0.a, var_2));
    let var_3 = 19450u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1165f, -1000f)), _wgslsmith_f_op_f32(min(-1037f, _wgslsmith_f_op_f32(trunc(-272f))))))), vec3<u32>(36795u, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, 26773u), vec3<u32>(43627u, 1u, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2) << (var_1.yy % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.a.wx, var_1.zy)), select(all(vec3<bool>(false, true, true)), true, false)), var_3));
}

