struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(0i, i32(-2147483648), 1i, -49740i, 827i, 0i, -16250i, 0i, i32(-2147483648), 1093i, -4795i, 2054i, 238i, 2147483647i, -1i, -1i, -10269i, 2147483647i, 9259i, 1i, -1i, 1i, 0i, -53716i, 0i, 3410i, -22873i, -1i, 4958i, 33142i, 1i);

var<private> global1: Struct_4 = Struct_4(Struct_3(-56382i), 0u, -2331f, vec4<u32>(77010u, 0u, 1u, 0u));

var<private> global2: array<Struct_4, 14>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(global3.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global1.a.a, global0[_wgslsmith_index_u32(global3.d, 31u)] << (u_input.b % 32u)), abs(select(global1.a.a, -10890i, global3.c.a)), 2147483647i, 18322i), global3.b), global3.c, max(~1u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.b, global1.d.x), 4294967295u)));
    var_0 = Struct_2(!all(!select(vec3<bool>(false, false, var_0.c.a), vec3<bool>(global3.a, true, global3.c.a), vec3<bool>(false, global3.c.a, false))), max(_wgslsmith_add_vec4_i32(var_0.b & vec4<i32>(u_input.a, -1i, var_0.c.b, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 2147483647i, global3.b.x, u_input.a)), ~abs(global3.b)) & vec4<i32>(countOneBits(_wgslsmith_div_i32(global1.a.a, var_0.b.x)), -33682i, _wgslsmith_sub_i32(select(global1.a.a, var_0.b.x, false), ~var_0.b.x), 0i), Struct_1(true, global3.b.x, global1.b), ~(firstTrailingBit(1u) | 0u));
    var var_1 = global3.c.c;
    global2 = array<Struct_4, 14>();
    var var_2 = Struct_2(true, countOneBits(~firstLeadingBit(global3.b ^ vec4<i32>(-2147483647i, 1i, global0[_wgslsmith_index_u32(global1.b, 31u)], 2147483647i))), var_0.c, _wgslsmith_div_u32(~119022u, global3.c.c));
    return _wgslsmith_f_op_f32(-278f - global1.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec3<u32>) -> vec2<u32> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~62821u | _wgslsmith_dot_vec3_u32(vec3<u32>(29007u, 2004u, global3.c.c), arg_1.d.zyy), 31u)], -arg_0.b & _wgslsmith_sub_i32(-461i, arg_1.c.a))), global1.d.x, -233f, abs(~vec4<u32>(90956u, global1.d.x, 91307u, _wgslsmith_dot_vec3_u32(arg_2, arg_2))));
    global3 = Struct_2(!(!arg_1.a.a), global3.b, arg_1.a, ~(u_input.b & ~var_0.d.x));
    let var_1 = arg_1;
    let var_2 = Struct_4(var_0.a, 0u, global1.c, ~min(min(global1.d, vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), firstTrailingBit(var_0.d)) << (min(vec4<u32>(92357u, 1u, 1u, arg_1.d.x), vec4<u32>(~var_0.d.x, 0u, 4294967295u, ~34353u)) % vec4<u32>(32u)));
    var var_3 = vec2<bool>(any(select(!vec3<bool>(true, var_1.a.a, false), select(select(vec3<bool>(var_1.a.a, false, false), vec3<bool>(arg_1.a.a, false, arg_0.a), var_1.a.a), vec3<bool>(var_1.a.a, arg_1.a.a, false), !arg_0.a), !global3.a)), global1.c == _wgslsmith_f_op_f32(func_3()));
    return firstLeadingBit(abs(vec2<u32>(~(u_input.c.x | 39180u), 60598u)));
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = select(global1.d.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(func_2(global3.c, Struct_5(Struct_1(true, arg_0.x, u_input.b), u_input.b, Struct_3(-37790i), global1.d, global0[_wgslsmith_index_u32(21340u, 31u)]), global1.d.wxx), vec2<u32>(1u, 17598u))), ~(~_wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.c.yx))), global3.c.a);
    var var_1 = reverseBits(global1.b);
    let var_2 = Struct_5(Struct_1(all(!select(vec3<bool>(global3.a, false, false), vec3<bool>(true, true, false), true)), global0[_wgslsmith_index_u32(1u, 31u)], ~(0u >> (global1.b % 32u))), abs(select(50301u, _wgslsmith_div_u32(1u, ~46427u), true)), global1.a, ~global1.d, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(19418u, 31u)], u_input.a));
    global2 = array<Struct_4, 14>();
    global3 = Struct_2(any(vec4<bool>((1383f != global1.c) & global3.c.a, !all(vec4<bool>(var_2.a.a, false, true, false)), true | any(vec2<bool>(var_2.a.a, global3.a)), !all(vec3<bool>(var_2.a.a, false, global3.c.a)))), global3.b, Struct_1(any(!(!vec4<bool>(var_2.a.a, false, true, true))), 0i, ~firstLeadingBit(global1.d.x)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.d, 4294967295u), ~vec2<u32>(1u, 30641u)), abs(~global1.d.xx), any(select(vec2<bool>(global3.a, false), vec2<bool>(false, false), vec2<bool>(false, false)))), ~u_input.c.zw & ~max(vec2<u32>(u_input.b, 7122u), vec2<u32>(var_0.x, var_2.d.x))));
    return _wgslsmith_add_vec4_u32(~countOneBits(select(global1.d, vec4<u32>(43922u, var_2.b, var_2.d.x, 68422u), vec4<bool>(true, global3.c.a, true, global3.a))) | min(vec4<u32>(var_0.x, 4831u, 100270u, 1u) | countOneBits(vec4<u32>(1u, global3.c.c, global1.b, 73245u)), firstLeadingBit(max(vec4<u32>(10637u, 0u, 4294967295u, global3.d), u_input.c))), vec4<u32>(global1.b, max(0u, ~(u_input.b >> (var_2.b % 32u))), 1u, var_0.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(all(select(!(!vec2<bool>(global3.a, global3.c.a)), select(!vec2<bool>(global3.a, global3.a), !vec2<bool>(true, global3.c.a), global1.c != arg_1.x), select(vec2<bool>(true, true), vec2<bool>(false, global3.c.a), vec2<bool>(global3.c.a, false)))), _wgslsmith_sub_vec4_i32(~global3.b, ~vec4<i32>(countOneBits(-41832i), arg_0.x, -327i, 1i)), global3.c, _wgslsmith_mult_u32(~_wgslsmith_div_u32(74553u, ~global1.b), _wgslsmith_add_u32(u_input.c.x, ~2961u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(arg_1.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.zz, arg_1.yx)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1071f, 970f), arg_1.xz)))));
    global3 = Struct_2(var_0.c.c == (u_input.c.x << (func_1(vec4<i32>(u_input.a, 1i, 2147483647i, global1.a.a)).x % 32u)), vec4<i32>(-1i, 5714i, _wgslsmith_div_i32(-37137i ^ global0[_wgslsmith_index_u32(55303u, 31u)], global0[_wgslsmith_index_u32(arg_3.x, 31u)] << (35015u % 32u)) ^ (_wgslsmith_mod_i32(20838i, global3.c.b) & ~(-1i)), var_0.c.b), global3.c, arg_3.x);
    var var_2 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_3, vec2<u32>(global3.d >> (arg_3.x % 32u), _wgslsmith_mod_u32(95066u, 1u))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(7258u, global1.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, global3.c.c), vec2<u32>(34621u, 29512u)))) >> (firstTrailingBit(vec2<u32>(~4294967295u, arg_2.x << (global3.c.c % 32u))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(func_3());
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global3.c.b);
    var_0 = func_4(~(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, 1i, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1133f, -263f, global1.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(813f, global1.c, global1.c)))))), func_1(~abs(firstLeadingBit(global3.b))), ~reverseBits(global1.d.wy) << ((~global1.d.zw ^ reverseBits(vec2<u32>(30526u, 0u))) % vec2<u32>(32u)));
    var var_1 = global3.b;
    var_1 = firstTrailingBit(vec4<i32>(var_0.a, var_1.x, max(-u_input.a, -min(-44607i, var_0.a)), _wgslsmith_mult_i32(var_1.x, -18889i)));
    var_1 = select(vec4<i32>(-reverseBits(global3.b.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global3.b.wy, vec2<i32>(var_0.a, -2147483647i)), i32(-1i) * -40447i), ~2147483647i, 1i), vec4<i32>(countOneBits(-36747i), global1.a.a, -16290i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global3.b.zy, global3.b.yz & vec2<i32>(43543i, var_0.a)), select(vec2<i32>(global1.a.a, -2147483647i), ~vec2<i32>(18992i, 0i), global3.c.a | global3.a))), select(!(!vec4<bool>(false, global3.a, false, true)), !(!select(vec4<bool>(false, true, true, global3.a), vec4<bool>(true, global3.c.a, global3.c.a, true), global3.a)), true));
    let var_2 = !(-577f < _wgslsmith_div_f32(global1.c, global1.c));
    global0 = array<i32, 31>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(589f, 1000f))), vec2<f32>(global1.c, -1538f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) * vec2<f32>(-1685f, global1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) + vec2<f32>(944f, 2083f)), global3.d == 4294967295u))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1052f, global1.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, 1403f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1343f, global1.c) - vec2<f32>(-622f, global1.c)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1000f), vec2<f32>(-1243f, global1.c))), _wgslsmith_div_vec2_f32(vec2<f32>(-581f, -1000f), vec2<f32>(global1.c, -677f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~global3.b.yw, -1000f, global1.b);
}

