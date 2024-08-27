struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: vec4<u32> = vec4<u32>(26789u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: f32 = -739f;

var<private> global3: array<vec4<u32>, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    let var_0 = Struct_1(u_input.d, max(reverseBits(-2147483647i), i32(-1i) * -_wgslsmith_div_i32(u_input.a.x, u_input.b)), !(abs(arg_0.a) < abs(_wgslsmith_mod_u32(arg_0.a, arg_0.a))), -max(-global0[_wgslsmith_index_u32(arg_0.a, 14u)], firstTrailingBit(1i)) | min(max(firstLeadingBit(arg_0.d), _wgslsmith_mod_i32(-28677i, arg_0.b)), -2147483647i));
    let var_1 = arg_0;
    global0 = array<i32, 14>();
    let var_2 = Struct_1(firstTrailingBit(countOneBits(min(u_input.d, ~1u))), 0i, _wgslsmith_f_op_f32(ceil(-1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 143f), arg_1.x) * arg_1.x), 34661i);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0.a, ~4294967295u), 1u) >> ((~u_input.d | select(u_input.d, var_2.a, false)) % 32u);
    return _wgslsmith_f_op_f32(trunc(arg_1.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, _wgslsmith_div_f32(-643f, -1184f), _wgslsmith_f_op_f32(-141f * -1394f), _wgslsmith_f_op_f32(-232f * -1000f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1506f, 613f, -2447f, 1431f))))))), vec4<f32>(_wgslsmith_f_op_f32(floor(-1347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1484f), _wgslsmith_f_op_f32(-2484f + 469f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(round(-358f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, -45326i, arg_0.c, u_input.a.x), vec2<f32>(-1452f, -495f), u_input.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(573f)) + -290f), -1022f)));
    let var_3 = var_1.c;
    var_1 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f + 1485f) - 206f) * _wgslsmith_f_op_f32(-2389f - _wgslsmith_div_f32(-1000f, 653f))), -921f));
    let var_1 = ~select(-firstLeadingBit(-vec3<i32>(arg_0.b, 12881i, 2147483647i)), _wgslsmith_clamp_vec3_i32(-select(u_input.c, vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 14u)], arg_0.b), false), vec3<i32>(1i ^ u_input.b, ~global0[_wgslsmith_index_u32(global1.x, 14u)], abs(2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(8601i, arg_0.b, -9754i)), u_input.b, 1i)), false);
    var var_2 = true;
    global2 = _wgslsmith_f_op_f32(floor(-131f));
    var var_3 = arg_0.c;
    return global1.xxw << (global1.zxy % vec3<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = select(1i, arg_0.d, true);
    global3 = array<vec4<u32>, 9>();
    var var_2 = arg_3;
    var var_3 = func_2(arg_3);
    return func_2(arg_0);
}

fn func_1() -> Struct_1 {
    global1 = ~(~vec4<u32>(max(~global1.x, 0u), ~25794u, global1.x, 1u));
    var var_0 = -_wgslsmith_add_vec2_i32(u_input.a.yy, -u_input.a.xx);
    let var_1 = func_5(Struct_1(~(~(~global1.x)), firstLeadingBit(~_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.a.yz)), u_input.d < ~(~u_input.d), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(countOneBits(vec3<u32>(1u, global1.x, u_input.d)), vec3<u32>(1u, 0u, 41700u)), func_4(func_2(Struct_1(global1.x, u_input.c.x, false, 1i)))), 14u)]), ~(~(~(-u_input.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -1008f)), -269f)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(4807u, 9u)], global3[_wgslsmith_index_u32(168344u, 9u)]) & _wgslsmith_mod_u32(6081u, u_input.d), ~global1.x), abs(-2147483647i), true, func_2(func_2(func_2(Struct_1(global1.x, 1i, false, 9055i)))).d));
    let var_2 = 20214i;
    let var_3 = select(select(vec2<bool>(func_2(Struct_1(global1.x, u_input.b, var_1.c, -9370i)).c, var_1.c), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), var_1.c), vec2<bool>(true, var_1.c), vec2<bool>(true, var_1.c)), select(select(vec2<bool>(true, false), vec2<bool>(var_1.c, var_1.c), var_1.c), !vec2<bool>(var_1.c, var_1.c), true), !(!vec2<bool>(var_1.c, false))), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), var_1.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(175f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(308f + 1542f), _wgslsmith_f_op_f32(func_3(var_1, vec2<f32>(122f, -493f), 1i)), var_1.b <= var_1.b)))) == _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(907f - -568f))));
    return func_5(func_2(Struct_1(~31515u, var_2 | 0i, !(var_1.a >= u_input.d), -_wgslsmith_mult_i32(var_2, 70105i))), -var_0.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1159f + -525f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1000f - 851f))))), var_1);
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f - 1032f) * -540f)))));
    let var_0 = -_wgslsmith_div_i32(u_input.a.x, -(29682i | global0[_wgslsmith_index_u32(arg_3.a, 14u)]) | -(i32(-1i) * -24067i));
    let var_1 = vec4<i32>(-26566i, max(~max(_wgslsmith_add_i32(arg_3.b, 56346i), firstTrailingBit(-1i)), -max(arg_3.d, -86311i)), -2147483647i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(27458u, 14u)], -(arg_3.d << (25990u % 32u)), _wgslsmith_mod_i32(~var_0, func_1().d)), -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1410u, 14u)], u_input.c.x) << (_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3.a, 29003u), arg_1.x) % 32u)));
    var var_2 = func_5(arg_3, -min(1i, var_0), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(-352f - -1781f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(756f, -887f) + vec2<f32>(-1366f, -1042f)))))), arg_2);
    let var_3 = select(~1u, 4294967295u, func_2(func_2(func_5(func_1(), u_input.c.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2376f, -1360f), vec2<f32>(708f, 1884f), true)), Struct_1(global1.x, -1597i, arg_2.c, arg_2.b)))).c);
    return ~global3[_wgslsmith_index_u32(36168u & _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_1, vec4<u32>(0u, u_input.d, 20725u, 31536u)), vec4<u32>(global1.x, global1.x, arg_2.a | var_3, ~4294967295u)), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<u32>(~u_input.d, 0u, select(~u_input.d, _wgslsmith_add_u32(global1.x, global1.x), u_input.c.x > global0[_wgslsmith_index_u32(96907u, 14u)]), global1.x | _wgslsmith_add_u32(u_input.d, 0u)) >> (vec4<u32>(~(~u_input.d) >> (4294967295u % 32u), ~(~global1.x), 0u, u_input.d) % vec4<u32>(32u));
    let var_0 = 1f;
    global1 = ~(firstLeadingBit(~global3[_wgslsmith_index_u32(0u, 9u)]) >> (min(abs(min(vec4<u32>(1u, global1.x, u_input.d, global1.x), vec4<u32>(30234u, 1u, 18118u, u_input.d))), func_6(false, global3[_wgslsmith_index_u32(~global1.x, 9u)], Struct_1(4294967295u, -2147483647i, true, u_input.c.x), func_1())) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_2 = Struct_1(59524u, 1i, !func_1().c, -abs(abs(~u_input.b)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-526f)) + var_0)), _wgslsmith_f_op_f32(f32(-1f) * -273f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-422f))), vec4<i32>(-35928i, ~(~func_1().d), global0[_wgslsmith_index_u32(15979u, 14u)], -u_input.b));
}

