struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-24219i, vec2<f32>(1000f, 482f), vec2<f32>(1186f, -232f));

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: array<f32, 23> = array<f32, 23>(127f, -930f, -452f, 1333f, -260f, -1077f, -1527f, -116f, -1295f, 200f, -593f, 1025f, 651f, -758f, 484f, 1030f, -864f, -1107f, 1070f, 1247f, 299f, -507f, 864f);

var<private> global3: Struct_2;

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = all(vec4<bool>(true, global4.x | select(true, false, global4.x), false, true)) != false;
    let var_1 = global3.c;
    var var_2 = global3.c;
    global3 = Struct_2(Struct_1(firstTrailingBit(countOneBits(69997i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-867f, -1000f)))) + global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, var_1.c.x))) + global0.b)), global3.b, global3.a, _wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -888f))));
    var_0 = global4.x & true;
    return Struct_1(-reverseBits(~u_input.a.x), var_2.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, 431f)))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1624f, global0.b.x, arg_1.a.b.x, -688f)), global3.a);
    let var_1 = vec4<bool>(any(vec4<bool>(false && all(vec4<bool>(false, global4.x, true, false)), global4.x, all(select(vec4<bool>(global4.x, true, true, true), vec4<bool>(true, false, false, global4.x), vec4<bool>(false, global4.x, global4.x, true))), true)), !any(vec4<bool>(!global4.x, !global4.x, global4.x, global3.a.c.x != arg_0.x)), !(!global4.x), true);
    var var_2 = Struct_2(Struct_1(global3.b.x, _wgslsmith_div_vec2_f32(var_0.a.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zx))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.b))))), abs(max(vec3<i32>(i32(-1i) * -1i, -1i, arg_1.c.a), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, 1i, -1i), 1i, global3.b.x))), func_2(arg_0.xyz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f))), -2009f));
    var var_3 = -countOneBits(min(vec2<i32>(global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 71513i, 2147483647i, var_0.b.a), vec4<i32>(var_2.b.x, 2147483647i, global0.a, var_2.a.a))), _wgslsmith_mod_vec2_i32(global3.b.zy, global3.b.yx << (global1[_wgslsmith_index_u32(1u, 2u)] % vec2<u32>(32u)))));
    var_2 = arg_1.b;
    return Struct_3(vec4<f32>(arg_1.b.d, 1358f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c.c.x - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 23u)] * 162f)))), arg_1.a.c.x), Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-global0.b), vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.b.a.c.x, var_2.a.c.x, all(vec3<bool>(var_1.x, global4.x, true)))), -745f)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.c.x, -123f, 1000f, 864f))))), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global3.c.b.x, -1488f)))), Struct_2(global3.c, global3.b, Struct_1(1i, global3.a.c, _wgslsmith_f_op_vec2_f32(global0.c * global3.c.c)), -554f), global3.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(206f, -753f, -544f))))));
    var var_1 = vec3<u32>(~1u, countOneBits(countOneBits(abs(1u))), ~(abs(firstLeadingBit(6362u)) ^ _wgslsmith_mod_u32(7330u, select(0u, 17069u, global4.x))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(652f, -434f), _wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -337f), func_3(vec4<f32>(global0.c.x, -239f, global2[_wgslsmith_index_u32(33008u, 23u)], var_0.b.c.x), Struct_4(Struct_1(var_0.b.a, vec2<f32>(-1000f, 479f), vec2<f32>(1450f, 521f)), Struct_2(var_0.b, vec3<i32>(-51652i, 31598i, 47471i), global3.c, global3.d), Struct_1(0i, global3.c.c, vec2<f32>(-1000f, -833f)), Struct_1(-2147483647i, global3.c.b, var_0.b.b))).b.c.x, true)), _wgslsmith_f_op_f32(min(func_2(var_0.a.yyy).c.x, var_0.a.x)))));
    global4 = !select(vec3<bool>(false | !global4.x, global4.x, global4.x), vec3<bool>(any(global4.zz), true, _wgslsmith_add_u32(var_1.x, 17651u) == 31640u), all(vec3<bool>(global4.x, select(global4.x, false, true), false)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(60766u, 23u)], _wgslsmith_f_op_f32(488f * _wgslsmith_f_op_f32(var_2.b.x - 1394f)), var_2.c.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.d, _wgslsmith_div_f32(var_0.b.c.x, var_2.b.x), _wgslsmith_f_op_f32(var_2.c.x + -137f))))));
    return func_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 758f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.c.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(-global3.a.c.x))) - -1062f)), Struct_4(var_2, Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, var_3.x, -1689f, -1855f)), Struct_4(var_2, Struct_2(var_0.b, global3.b, var_0.b, global0.c.x), var_2, var_0.b)).b, vec3<i32>(select(arg_0, global0.a, global4.x), select(1i, var_2.a, true), global0.a << (var_1.x % 32u)), global3.c, 671f), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.a)) * vec4<f32>(-1128f, -291f, global3.c.b.x, var_3.x)), Struct_4(var_2, Struct_2(Struct_1(var_2.a, vec2<f32>(global3.d, var_2.b.x), global0.b), global3.b, var_0.b, var_3.x), Struct_1(global3.b.x, vec2<f32>(-260f, global2[_wgslsmith_index_u32(var_1.x, 23u)]), vec2<f32>(global3.a.b.x, var_2.c.x)), Struct_1(var_2.a, var_3.yy, vec2<f32>(1035f, -1531f)))).b, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.x, global3.d, 1019f, var_3.x), vec4<f32>(1000f, var_3.x, 193f, var_3.x))) * vec4<f32>(var_3.x, global2[_wgslsmith_index_u32(8138u, 23u)], 1000f, -790f)), Struct_4(global3.c, Struct_2(Struct_1(var_0.b.a, var_3.yx, vec2<f32>(var_0.b.b.x, global2[_wgslsmith_index_u32(1u, 23u)])), vec3<i32>(2147483647i, -1i, global3.b.x), Struct_1(var_0.b.a, vec2<f32>(-363f, var_3.x), var_0.b.c), var_0.b.b.x), Struct_1(-2147483647i, vec2<f32>(var_3.x, global3.d), var_0.b.c), func_3(vec4<f32>(var_3.x, -115f, -1640f, 130f), Struct_4(Struct_1(-1i, vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 23u)], 1161f), global3.c.b), Struct_2(var_2, global3.b, Struct_1(var_0.b.a, global3.a.b, vec2<f32>(690f, 2954f)), var_0.a.x), var_2, global3.c)).b)).b));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> u32 {
    let var_0 = vec4<u32>(arg_0, abs(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(arg_0, 43485u, 2227u, 15695u)), _wgslsmith_add_u32(5410u, 1035u))), ~(~39651u), 73058u);
    global3 = Struct_2(Struct_1(countOneBits(global3.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.b.b)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(946f, global3.c.b.x), global0.c)), global0.b))))), global3.b, Struct_1(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(950f - -566f) + global2[_wgslsmith_index_u32(firstLeadingBit(35249u), 23u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1823f * global2[_wgslsmith_index_u32(var_0.x, 23u)]), _wgslsmith_f_op_f32(-arg_1.b.c.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1615f, _wgslsmith_div_f32(arg_1.b.b.x, arg_1.b.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, arg_1.a.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, global0.b.x)))))), -1067f);
    global3 = Struct_2(Struct_1(~(-countOneBits(3910i)), vec2<f32>(1f, 132f), global0.b), -_wgslsmith_sub_vec3_i32(global3.b, vec3<i32>(-1i, -1i, -global3.c.a)), func_1(u_input.a.x).b, -908f);
    global1 = array<vec2<u32>, 2>();
    global4 = vec3<bool>(((global4.x && true) | global4.x) || true, all(vec3<bool>(any(vec4<bool>(false, global4.x, global4.x, global4.x)), select(any(vec3<bool>(false, global4.x, false)), global4.x, u_input.a.x > 2147483647i), true)), !global4.x);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global3.a, ~(select(global3.b, global3.b, vec3<bool>(global4.x, global4.x, global4.x)) ^ -vec3<i32>(global0.a, -54456i, global3.b.x)) << (vec3<u32>(~_wgslsmith_clamp_u32(643u, 51613u, 30452u), ~_wgslsmith_mod_u32(0u, 4294967295u), func_4(abs(4294967295u), func_1(global3.b.x))) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(global3.d - -295f), _wgslsmith_f_op_f32(select(global0.b.x, global2[_wgslsmith_index_u32(1u, 23u)], global4.x)))))), 1f);
    let var_1 = ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_2 = 17662u;
    global2 = array<f32, 23>();
    var var_3 = global3.c.a;
    var_3 = ~_wgslsmith_add_i32(-3865i, var_0.c.a);
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, global2[_wgslsmith_index_u32(0u, 23u)], 423f, global0.b.x) - vec4<f32>(global2[_wgslsmith_index_u32(11781u, 23u)], global0.b.x, global3.c.b.x, -827f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2011f, 554f, 790f, global0.c.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2135f, 1791f, -529f, global3.a.b.x))))))))), func_1(-1i).b);
    let var_5 = _wgslsmith_add_vec3_i32(vec3<i32>(~(abs(1i) >> (1u % 32u)), min(_wgslsmith_dot_vec2_i32(global3.b.zz >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), var_0.b.zy | u_input.a), -6618i), select(-var_4.b.a, 1i, any(vec2<bool>(global4.x, global4.x))) << (var_1.x % 32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.b.x, -2147483647i, u_input.a.x, 1i)), vec4<i32>(1i, var_4.b.a, -30590i, var_0.a.a)) & -(var_0.a.a >> (var_1.x % 32u)), 2147483647i, select(1i, 0i, global4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c.x, 158811u, ((min(vec3<u32>(var_1.x, 152705u, 9606u), vec3<u32>(var_1.x, var_1.x, 53123u)) << (var_1.zyx % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 11530u, 9828u) & var_1.yyz, var_1.xww)) >> (var_1.yzy % vec3<u32>(32u)), -1000f);
}

