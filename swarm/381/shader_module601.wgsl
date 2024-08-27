struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: vec3<f32> = vec3<f32>(-139f, 558f, 578f);

var<private> global2: Struct_5 = Struct_5(vec4<i32>(2147483647i, 1i, 53332i, -1i));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-1i, 2147483647i, -2310i, 30899i), i32(-2147483648), 12263i, 0u);

var<private> global4: u32 = 2293u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_5(~(~(-global3.a)));
    global0 = array<Struct_3, 3>();
    var var_1 = !select(all(vec4<bool>(true, true, true, true)), true, true) || any(vec3<bool>(any(vec4<bool>(false, true, true, false)), !any(vec3<bool>(false, false, false)), false));
    global4 = global3.d;
    var var_2 = ~((~_wgslsmith_div_u32(0u, u_input.e.x) << (~countOneBits(25853u) % 32u)) ^ ~(~4294967295u));
    return firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-1i, abs(-12228i)), _wgslsmith_add_i32(global3.c, ~var_0.a.x), u_input.b, firstLeadingBit(-1i ^ global3.a.x))) >> (max(~vec4<u32>(1u, global3.d, global3.d, global3.d) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, global3.d, global3.d), vec4<u32>(global3.d, 28999u, 9632u, u_input.c.x), vec4<u32>(4294967295u, 47329u, global3.d, u_input.a)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 28449u, u_input.c.x)), vec4<u32>(_wgslsmith_add_u32(0u, 4294967295u), select(u_input.d, 30495u, false), countOneBits(0u), firstTrailingBit(u_input.d)))) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = ~select(func_3(), select(global3.a, global2.a, select(true, false, !arg_0.c.x)), arg_0.c.x);
    var_0 = vec4<i32>(arg_0.a.c, u_input.b, global2.a.x, global3.b);
    var var_1 = vec4<f32>(1000f, global1.x, _wgslsmith_f_op_f32(trunc(1113f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1774f - -1126f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 434f) + _wgslsmith_f_op_f32(min(global1.x, 639f))))));
    let var_2 = var_0.x;
    global2 = Struct_5(arg_0.a.a);
    return var_1.wxz;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_5 {
    global0 = array<Struct_3, 3>();
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.c))), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(arg_2.a.a, vec2<u32>(0u, ~arg_1.x), arg_2.a.c))));
    var var_0 = min(vec2<i32>(-2147483647i, 1i >> (min(arg_2.a.b.x, arg_1.x) % 32u)) ^ arg_0.a.a.yy, -(vec2<i32>(-1i) * -reverseBits(vec2<i32>(u_input.b, arg_0.a.b))));
    global2 = Struct_5(select(arg_0.a.a, abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-68727i, arg_2.b, -2147483647i, 18340i) << (arg_1 % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, -1i, 37042i), vec4<i32>(-41193i, 1911i, global3.b, 2147483647i)))), select(arg_2.a.c, !vec4<bool>(arg_2.a.c.x, arg_2.a.c.x, false, arg_2.a.c.x), select(select(arg_2.a.c, vec4<bool>(arg_2.a.c.x, false, true, false), vec4<bool>(true, arg_2.a.c.x, true, arg_2.a.c.x)), !vec4<bool>(arg_2.a.c.x, true, true, false), vec4<bool>(arg_2.a.c.x, false, arg_2.a.c.x, true)))));
    var var_1 = Struct_5(vec4<i32>(~min(0i, _wgslsmith_clamp_i32(u_input.b, var_0.x, 30917i)), select(arg_0.a.b, var_0.x, !(false | arg_2.a.c.x)), _wgslsmith_dot_vec3_i32(func_3().wxy & arg_2.a.a.a.yyz, arg_0.a.a.xwx), 0i));
    return Struct_5(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(-61785i, -16393i)), _wgslsmith_dot_vec2_i32(~(global2.a.wx | vec2<i32>(63191i, -18082i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, var_0.x), min(vec2<i32>(var_0.x, var_0.x), global3.a.wx))), abs(reverseBits(var_1.a.x) | 1i), var_0.x));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_2.a.a.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1377f), global1.x)));
    let var_1 = min(~arg_1.a.yzx, -vec3<i32>(1i, _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(arg_2.a.a.a.x, arg_3.c), arg_3.b), -25180i));
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1143f)) - global1.x)));
    return StorageBuffer(-arg_3.a, vec3<f32>(global1.x, -1625f, global1.x), 5286u, vec2<u32>(var_2.a.b.x, ~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1430f, _wgslsmith_div_f32(-884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))), _wgslsmith_div_f32(-1798f, _wgslsmith_div_f32(global1.x, 658f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 1088f), vec3<f32>(global1.x, global1.x, global1.x), false))))));
    var var_0 = global3.b;
    var_0 = global2.a.x;
    var_0 = -_wgslsmith_add_i32(-global3.b, ~u_input.b) | ~firstLeadingBit(~(-1131i));
    let var_1 = ~select(global3.d, 1u, all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true)));
    var var_2 = global1.x;
    var var_3 = abs(abs(~global2.a.x));
    let x = u_input.a;
    s_output = func_4(~u_input.d, func_1(Struct_2(Struct_1(vec4<i32>(u_input.b, -2147483647i, -26438i, u_input.b) ^ vec4<i32>(0i, u_input.b, u_input.b, -1682i), global3.c, -9007i, ~global3.d), ~select(vec3<u32>(global3.d, 61585u, 44036u), u_input.c, false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-350f, global1.x, 115f))), _wgslsmith_div_vec3_f32(vec3<f32>(-356f, global1.x, -1812f), vec3<f32>(global1.x, global1.x, global1.x))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 35716u) >> (vec4<u32>(29496u, 36899u, 1u, var_1) % vec4<u32>(32u)), vec4<u32>(global3.d, 1u, 0u, var_1) << (vec4<u32>(global3.d, 14885u, u_input.e.x, 24208u) % vec4<u32>(32u))), Struct_4(global0[_wgslsmith_index_u32(~u_input.c.x & 8193u, 3u)], 1i, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-global1.x)), vec4<f32>(1299f, -1000f, global1.x, global1.x)), Struct_4(global0[_wgslsmith_index_u32(countOneBits(0u), 3u)], -(10253i >> (u_input.e.x % 32u)) & ~u_input.b, global2.a.x, global1.x), Struct_1(abs(-(global3.a << (vec4<u32>(var_1, global3.d, var_1, u_input.a) % vec4<u32>(32u)))), abs(global3.b), i32(-1i) * -firstLeadingBit(-1042i), 4294967295u));
}

