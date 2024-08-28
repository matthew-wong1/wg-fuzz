struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(true, 20816i, 0i), vec4<u32>(54886u, 11910u, 4294967295u, 17775u), vec3<bool>(true, true, false));

var<private> global4: array<vec2<f32>, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global1 = array<vec3<f32>, 12>();
    let var_0 = Struct_3(-2147483647i, ~(_wgslsmith_dot_vec4_u32(select(global3.b, global3.b, vec4<bool>(false, arg_1.a, true, true)), global3.b) ^ 14416u), Struct_1(!global3.a.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, arg_1.b), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), vec2<i32>(arg_0.x, -7150i))), ~(select(arg_1.b, 1i, global3.a.a) ^ ~arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x))), ~abs(global3.b));
    var var_1 = Struct_2(arg_1, ~(max(~vec4<u32>(34526u, u_input.a, 56217u, global3.b.x), var_0.e ^ vec4<u32>(u_input.a, global3.b.x, var_0.e.x, 7261u)) << ((vec4<u32>(arg_2, global3.b.x, global3.b.x, 4294967295u) & global3.b) % vec4<u32>(32u))), global3.c);
    global4 = array<vec2<f32>, 8>();
    let var_2 = Struct_1(true, 9230i, ~(-1i));
    return _wgslsmith_sub_i32(-firstTrailingBit((i32(-1i) * -32657i) ^ _wgslsmith_add_i32(var_0.a, 2147483647i)), arg_0.x);
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec2<u32>(~firstLeadingBit(~global3.b.x), global3.b.x);
    return Struct_1(false, -_wgslsmith_mult_i32(func_3(vec2<i32>(global3.a.c, global3.a.b), Struct_1(global3.a.a, -14343i, global3.a.c), firstTrailingBit(4294967295u)), i32(-1i) * -global3.a.b), _wgslsmith_mult_i32(~(-2147483647i), global3.a.b));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_3(global3.a.b, select(51188u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global3.b.xxz, vec3<u32>(15483u, global3.b.x, 0u)), _wgslsmith_sub_vec3_u32(global3.b.yyw, global3.b.zxx)) << (~global3.b.x % 32u), any(global3.c)), Struct_1(!(max(-34269i, global3.a.c) == -1i), -26898i, _wgslsmith_mod_i32(countOneBits(-1i), var_0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, -711f)) - global2.x))), global3.b);
    global4 = array<vec2<f32>, 8>();
    var_0 = func_2();
    var_0 = global3.a;
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32((var_0.b | -2147483647i) << (u_input.a % 32u), -var_1.c.c), 0i), ~(~(global3.a.b ^ firstLeadingBit(var_1.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(func_3(vec2<i32>(-arg_0.a.b, arg_0.a.c), global3.a, 1u), 57957u, Struct_1(all(global3.c), 11967i, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~(i32(-1i) * -2147483647i))), arg_1.d, arg_3.e);
    var var_1 = vec2<u32>(~(~arg_0.b.x), ~var_0.b);
    global2 = _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~arg_3.b, 12u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_0.e.x >> (46425u % 32u), _wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1.e), vec4<u32>(4294967295u, 14326u, 1u, var_0.e.x))), ~2547u), 12u)]);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(249f))), 529f)) - _wgslsmith_f_op_f32(sign(global2.x))) + global2.x);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(35713u, 8u)])))) + global4[_wgslsmith_index_u32(14656u, 8u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(-global2.yy), !(!(global3.a.a | global3.a.a)))));
    return Struct_3(_wgslsmith_add_i32(31214i, arg_0.a.b), min(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b, var_0.b), vec3<u32>(global3.b.x, arg_1.e.x, arg_3.b)), _wgslsmith_dot_vec3_u32(arg_1.e.wzz, vec3<u32>(var_0.b, global3.b.x, 85233u)), false), _wgslsmith_add_u32(62452u, ~(global3.b.x ^ var_1.x))), arg_0.a, _wgslsmith_f_op_f32(ceil(arg_3.d)), ~vec4<u32>(~(~4294967295u), abs(4294967295u), 4294967295u, min(_wgslsmith_dot_vec3_u32(var_0.e.zzy, vec3<u32>(var_0.b, arg_0.b.x, arg_1.e.x)), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(global3.c.x, _wgslsmith_mult_i32(min(global3.a.b, global3.a.b), 47920i), func_1(false, !vec2<bool>(global3.c.x, global3.c.x))), _wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(0u, global3.b.x, 0u, u_input.a)), firstLeadingBit(global3.b)), select(vec3<bool>(true, all(vec3<bool>(global3.c.x, true, global3.c.x)), true && global3.c.x), global3.c, all(select(vec3<bool>(global3.a.a, true, global3.c.x), vec3<bool>(false, false, global3.c.x), vec3<bool>(global3.c.x, global3.c.x, global3.c.x))))), Struct_3(global3.a.b | -(~(-1i)), ~_wgslsmith_dot_vec2_u32(global3.b.xx, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global3.b.x), global3.b.wy)), global3.a, -753f, vec4<u32>(_wgslsmith_mod_u32(47639u, _wgslsmith_clamp_u32(1u, u_input.a, global3.b.x)), _wgslsmith_sub_u32(global3.b.x, select(0u, u_input.a, false)), ~52024u, ~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, 325f, true)) + -2831f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 447f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-266f + global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))))), Struct_3(global3.a.c, _wgslsmith_clamp_u32(~36221u, u_input.a ^ u_input.a, ~global3.b.x), func_2(), _wgslsmith_f_op_f32(sign(-592f)), vec4<u32>(global3.b.x, global3.b.x, abs(1u), 35091u)));
    var var_1 = Struct_1(var_0.d >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + var_0.d)) * 128f), ((1i ^ var_0.a) ^ -_wgslsmith_mult_i32(1i, -20366i)) >> (var_0.e.x % 32u), ~global3.a.c);
    var var_2 = !(!vec2<bool>(!(u_input.a <= 23523u), global3.a.a));
    global1 = array<vec3<f32>, 12>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1478f + 1046f));
    var var_4 = select(select(vec3<bool>(~global3.b.x < 1u, all(!vec4<bool>(var_1.a, false, false, true)), !(global2.x == var_3)), !(!global3.c), vec3<bool>(var_0.c.a, !func_4(Struct_2(Struct_1(var_1.a, var_0.a, 17738i), var_0.e, vec3<bool>(var_2.x, false, false)), Struct_3(2147483647i, 60078u, Struct_1(var_0.c.a, var_1.c, 15242i), 2335f, vec4<u32>(4294967295u, global3.b.x, u_input.a, global3.b.x)), var_2.x, var_0).c.a, true)), select(!select(select(vec3<bool>(global3.c.x, false, var_0.c.a), global3.c, false), global3.c, vec3<bool>(var_0.c.a, var_1.a, var_1.a)), select(vec3<bool>(var_0.e.x != global3.b.x, var_0.c.a && var_2.x, global3.a.a), select(global3.c, select(vec3<bool>(var_1.a, false, false), vec3<bool>(var_1.a, var_1.a, true), false), !var_1.a), vec3<bool>(!global3.a.a, true, global3.c.x | false)), any(!(!global3.c.xx))), vec3<bool>(all(global3.c.yz), true, global3.c.x));
    let var_5 = Struct_2(Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-21163i, 44278i), vec2<i32>(-3806i, 0i))) >= (_wgslsmith_add_i32(global3.a.c, -2147483647i) >> (global3.b.x % 32u)), -2147483647i, _wgslsmith_add_i32((var_0.c.c | var_0.c.c) & global3.a.b, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, var_1.b, -1i)), vec3<i32>(var_0.a, global3.a.c, -2147483647i) & vec3<i32>(1i, -25148i, -13816i)))), global3.b, select(select(global3.c, select(select(global3.c, global3.c, vec3<bool>(var_2.x, false, true)), select(vec3<bool>(var_2.x, false, true), global3.c, var_0.c.a), true), global3.c), !vec3<bool>(var_2.x, false, any(vec2<bool>(var_1.a, true))), select(global3.c, vec3<bool>(global3.c.x, any(vec4<bool>(false, false, true, true)), true), !vec3<bool>(var_1.a, var_1.a, false))));
    let var_6 = ~(~abs(~(vec4<u32>(global3.b.x, 90942u, 56625u, 1u) >> (global3.b % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~var_0.e.x, 29u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_0.d, global2.x, global2.x) + vec4<f32>(289f, 971f, var_0.d, -868f))))), firstTrailingBit(vec4<i32>(~(~0i), global3.a.b, -var_1.c, -func_2().c)), var_5.b.xxz, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.e.xzz, firstTrailingBit(vec3<u32>(var_0.b, 9812u, global3.b.x))), _wgslsmith_div_vec3_u32(~vec3<u32>(global3.b.x, global3.b.x, 4294967295u), vec3<u32>(47071u, var_6.x, 4294967295u))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, global3.a.b, var_1.b & abs(-2147483647i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global3.a.b, global3.a.c, var_1.c), vec4<i32>(var_0.c.c, var_5.a.c, var_1.c, 28545i)), countOneBits(vec4<i32>(2147483647i, var_0.c.b, var_0.c.c, var_5.a.b))))));
}

