struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32>;

var<private> global2: f32 = 2201f;

var<private> global3: array<bool, 5> = array<bool, 5>(true, false, false, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~(~max(u_input.d >> ((vec3<u32>(50151u, u_input.d.x, 53776u) & vec3<u32>(u_input.b, arg_0.x, arg_0.x)) % vec3<u32>(32u)), vec3<u32>(~arg_0.x, min(1u, 4294967295u), 11485u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-597f)), _wgslsmith_f_op_f32(f32(-1f) * -342f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(281f)) - 1291f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1094f)))))))));
    global3 = array<bool, 5>();
    let var_1 = Struct_2(Struct_1(select(global3[_wgslsmith_index_u32(var_0.x, 5u)], true & global3[_wgslsmith_index_u32(max(2869u, 75033u), 5u)], !global3[_wgslsmith_index_u32(~arg_0.x, 5u)]), abs(vec4<u32>(~arg_0.x, 22812u, max(1u, arg_0.x), _wgslsmith_mod_u32(64773u, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f + 1000f)));
    var var_2 = arg_0.x;
    return var_1.a.b.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_5 {
    global3 = array<bool, 5>();
    let var_0 = arg_0.wz;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_0))))), arg_0);
    var var_2 = Struct_2(Struct_1(!(!global3[_wgslsmith_index_u32(select(5741u, u_input.b, global3[_wgslsmith_index_u32(arg_1.x, 5u)]), 5u)]), select(~_wgslsmith_sub_vec4_u32(arg_1, vec4<u32>(u_input.b, 4294967295u, u_input.b, 6478u)), vec4<u32>(arg_1.x, 0u, firstLeadingBit(u_input.d.x), func_3(arg_1.xwz)), select(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 5u)], false, global3[_wgslsmith_index_u32(32857u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(u_input.a, 5u)], true), select(true, global3[_wgslsmith_index_u32(u_input.b, 5u)], false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) - var_1.x) + -677f));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_1.xxz * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.yxz)));
    return Struct_5(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1391f), _wgslsmith_f_op_f32(arg_0.x + var_2.b), true)), _wgslsmith_f_op_f32(f32(-1f) * -336f)), vec3<bool>(select(var_2.a.a, !(!var_2.a.a), true), false, ~(global1.x << (4294967295u % 32u)) < _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(3520i, global1.x, -1868i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 0i, 17260i), vec3<i32>(1i, -9837i, 2147483647i)))), Struct_1(!(var_2.a.a && (global3[_wgslsmith_index_u32(37365u, 5u)] || false)), vec4<u32>(_wgslsmith_add_u32(func_3(var_2.a.b.zzw), reverseBits(u_input.b)), 6730u, var_2.a.b.x, _wgslsmith_div_u32(0u, firstLeadingBit(3890u)))));
}

fn func_4(arg_0: bool, arg_1: Struct_5) -> u32 {
    let var_0 = 1u;
    global0 = ~(-_wgslsmith_dot_vec4_i32(-(vec4<i32>(global1.x, 2147483647i, 0i, -5856i) << (arg_1.c.b % vec4<u32>(32u))), vec4<i32>(u_input.c, global1.x, u_input.c, 2147483647i)));
    var var_1 = Struct_3(arg_1.c, _wgslsmith_div_u32(var_0 ^ (_wgslsmith_div_u32(u_input.a, 3162u) << ((u_input.b << (4294967295u % 32u)) % 32u)), ~arg_1.c.b.x));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 1i, -reverseBits(global1.x), u_input.c), _wgslsmith_mult_vec4_i32(vec4<i32>(13288i, _wgslsmith_add_i32(global1.x, -1i), countOneBits(firstLeadingBit(u_input.c)), ~1i), -(vec4<i32>(24717i, -2147483647i, -3151i, u_input.c) & vec4<i32>(2147483647i, u_input.c, global1.x, global1.x)) ^ reverseBits(-vec4<i32>(-19273i, -1i, global1.x, -45493i))));
    let var_3 = !global3[_wgslsmith_index_u32(max(~arg_1.c.b.x, 4294967295u), 5u)];
    return func_3(~vec3<u32>(abs(var_0), var_1.a.b.x, ~(arg_1.c.b.x << (u_input.a % 32u))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: Struct_5) -> vec3<i32> {
    global3 = array<bool, 5>();
    global1 = vec2<i32>(~global1.x, global1.x);
    return ~vec3<i32>(_wgslsmith_add_i32(u_input.c, -5047i), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(global1.x, u_input.c), 36572i), global1.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4) -> Struct_4 {
    return Struct_4(func_5(Struct_3(Struct_1(select(false, global3[_wgslsmith_index_u32(u_input.d.x, 5u)], global3[_wgslsmith_index_u32(28590u, 5u)]), _wgslsmith_mult_vec4_u32(arg_0.a.b, vec4<u32>(arg_0.b, arg_0.a.b.x, arg_0.a.b.x, 0u))), func_4(arg_0.a.a, func_2(vec4<f32>(388f, 541f, 1000f, -934f), arg_0.a.b))), _wgslsmith_mult_u32(arg_0.a.b.x, u_input.a), Struct_2(arg_0.a, 1467f), Struct_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-636f, -267f, -1000f))), vec3<bool>(true, true, true), arg_0.a)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec4<u32>(firstLeadingBit(arg_1.b.x), u_input.b, 10190u, abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(27419u, u_input.d.x), vec2<u32>(u_input.a, 1u)), 0u)));
    let var_1 = ~2147483647i & arg_0.a.x;
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-407f, 608f, -473f), vec3<f32>(-1230f, -400f, 305f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(722f, 278f, 1126f) + vec3<f32>(964f, -1833f, 474f)))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(583f, 195f)), _wgslsmith_div_f32(1217f, 621f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1136f)), _wgslsmith_f_op_f32(-1000f * 422f)))), vec3<bool>(!(!arg_1.a && arg_1.a), global3[_wgslsmith_index_u32(23091u, 5u)], !(_wgslsmith_f_op_f32(ceil(116f)) != _wgslsmith_f_op_f32(step(952f, 1425f)))), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1326f, 772f, 1669f, 792f))))), vec4<u32>(var_0.x, ~39359u, var_0.x, ~u_input.a)).c);
    global1 = -min(arg_0.a.xz, countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, u_input.c), vec2<i32>(-4448i, 47910i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f - var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-908f + -1000f)), -1947f, -416f))));
    return vec2<f32>(-993f, _wgslsmith_f_op_f32(-950f - var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_1(Struct_3(Struct_1(true, vec4<u32>(4294967295u, u_input.d.x, 18634u, u_input.a)), 1u), Struct_4(vec3<i32>(u_input.c, 77945i, 0i))), func_2(vec4<f32>(-1717f, 937f, -1853f, 366f), ~vec4<u32>(u_input.b, 5963u, 38244u, u_input.a)).c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-853f, -977f) - vec2<f32>(1835f, -579f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1143f))))), select(~u_input.c, -1i, true), _wgslsmith_mod_u32(~u_input.b, ~(~4294967295u >> (~u_input.a % 32u))), abs(firstLeadingBit(vec4<i32>(1i, global1.x, u_input.c, -11907i))) ^ _wgslsmith_clamp_vec4_i32(max(vec4<i32>(global1.x, -38070i, u_input.c, global1.x), ~vec4<i32>(-34994i, global1.x, u_input.c, 66i)), ~abs(vec4<i32>(19602i, 0i, -2147483647i, 24770i)), vec4<i32>(i32(-1i) * -52606i, -global1.x, global1.x | u_input.c, ~0i)));
}

