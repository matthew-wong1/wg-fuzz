struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<i32, 6> = array<i32, 6>(i32(-2147483648), -1i, 34953i, -23222i, 1i, 0i);

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<u32, 6>;

var<private> global4: array<i32, 32> = array<i32, 32>(-1i, 26616i, 57368i, 21208i, 46778i, -12513i, 0i, i32(-2147483648), 44986i, 0i, i32(-2147483648), i32(-2147483648), -1i, 0i, 0i, 0i, 2147483647i, 21189i, -47570i, 0i, 2147483647i, -37363i, 2147483647i, i32(-2147483648), 37291i, -23035i, 12171i, 0i, 0i, 5641i, 1i, i32(-2147483648));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = u_input.d;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(f32(-1f) * -400f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f))), -65066i, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.d.ywy, arg_0.d.wwx), reverseBits(1u ^ _wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(4294967295u, 4294967295u, 105994u, arg_0.d.x)))), 32u)], firstLeadingBit(global1.d));
    var var_1 = -613f;
    var var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(~arg_0.d, global1.d), global3[_wgslsmith_index_u32(arg_3, 6u)]) << (~select(~abs(vec2<u32>(4294967295u, arg_0.d.x)), vec2<u32>(_wgslsmith_mod_u32(arg_3, arg_2.d.x), 1u), select(global2.c.x, global2.c.x, global2.c.x)) % vec2<u32>(32u));
    let var_3 = ~max(arg_0.d, vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(arg_3, global3[_wgslsmith_index_u32(arg_1.d.x, 6u)])), arg_3, ~1u, 67900u));
    return (false || all(vec3<bool>(true, true, true))) & select(global2.c.x, global2.c.x, !global2.c.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    var var_0 = vec3<bool>(true, true != all(vec3<bool>(true, true, func_3(Struct_2(global1.a, global0[_wgslsmith_index_u32(global2.d.x, 6u)], 1i, global1.d), Struct_2(global1.a, global4[_wgslsmith_index_u32(71267u, 32u)], arg_2.b, vec4<u32>(0u, 4294967295u, global2.d.x, 20621u)), Struct_2(arg_1, 1i, 1i, vec4<u32>(18762u, 33005u, 19151u, 0u)), global1.d.x))), arg_2.c.x);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = -574f;
    global3 = array<u32, 6>();
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(global1.d.x, 10724u, 4294967295u), vec3<u32>(1u, global2.d.x, global3[_wgslsmith_index_u32(1u, 6u)]), select(vec3<bool>(false, global2.c.x, arg_1), vec3<bool>(false, false, false), true)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(global1.d.yzx), vec3<u32>(global2.d.x, 1u, 72824u), ~vec3<u32>(arg_0.d.x, global1.d.x, 1u))), vec3<u32>(global1.d.x, 4305u, ~46169u)), ~(~reverseBits(vec3<u32>(4294967295u, 46807u, 0u) << (vec3<u32>(arg_0.d.x, arg_0.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.d.x, 6u)], 6u)], 6u)]) % vec3<u32>(32u)))));
    var var_2 = ~(~vec2<u32>(firstTrailingBit(_wgslsmith_mod_u32(0u, 1u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.d.x, global1.d.x, 84178u), vec3<u32>(27035u, var_1.x, 4294967295u)), vec3<u32>(global2.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], global2.d.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), 192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-arg_0.a))))) * vec4<f32>(671f, global1.a, -561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(-global1.a))))));
    return Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.e, -1i), global0[_wgslsmith_index_u32(103018u, 6u)], u_input.e >> (arg_0.d.x % 32u), -2147483647i), ~reverseBits(vec4<i32>(16366i, global2.b, arg_0.c, 2147483647i))), global2.b), abs(-6165i & _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(70968u, 32u)], -23807i)), vec2<bool>(!all(vec2<bool>(false, arg_1)), all(!vec3<bool>(arg_1, true, false))), countOneBits(global1.d.zy));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a, arg_2.a)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1373f, -341f))) + vec2<f32>(-102f, _wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = 80817u;
    var var_2 = Struct_2(arg_2.a, ~(-2147483647i), 1i, arg_2.d);
    var_2 = Struct_2(2664f, -(~_wgslsmith_mult_i32(-844i, global2.b) << (27761u % 32u)), _wgslsmith_clamp_i32(-global4[_wgslsmith_index_u32(~0u, 32u)], u_input.e >> (_wgslsmith_sub_u32(countOneBits(global1.d.x), ~4294967295u) % 32u), _wgslsmith_add_i32(global0[_wgslsmith_index_u32(reverseBits(1u), 6u)], u_input.b)), global1.d | (vec4<u32>(67385u, _wgslsmith_dot_vec4_u32(arg_2.d, arg_2.d), 0u, ~arg_2.d.x) & ~vec4<u32>(global1.d.x, global3[_wgslsmith_index_u32(var_1, 6u)], global1.d.x, 4294967295u)));
    var var_3 = _wgslsmith_div_vec2_f32(var_0, var_0);
    return -1i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(-333f, func_5(func_4(Struct_2(_wgslsmith_f_op_f32(round(global1.a)), global4[_wgslsmith_index_u32(firstTrailingBit(0u), 32u)], u_input.b, ~global1.d), func_2(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.d.x, 6u)], 6u)] > 2147483647i, _wgslsmith_f_op_f32(global1.a - global1.a), Struct_1(arg_1.x, arg_1.x, global2.c, global1.d.zx), vec4<i32>(12944i, -19918i, 2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.d.x, 6u)], 6u)]))), global1.a, Struct_2(global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(11903i, 3044i, -2147483647i, arg_1.x), firstLeadingBit(vec4<i32>(global4[_wgslsmith_index_u32(global1.d.x, 32u)], 6927i, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.d.x, 6u)], 32u)], arg_0.x))), i32(-1i) * -77285i, _wgslsmith_mult_vec4_u32(min(vec4<u32>(30897u, 90197u, global1.d.x, 1u), vec4<u32>(1u, global3[_wgslsmith_index_u32(2153u, 6u)], 0u, 8483u)), vec4<u32>(global2.d.x, global2.d.x, 0u, 19792u)))), global4[_wgslsmith_index_u32(~(1u >> (global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(4294967295u, global1.d.x)), 6u)] % 32u)), 32u)], vec4<u32>(42836u, firstTrailingBit(global1.d.x >> (_wgslsmith_add_u32(global2.d.x, global2.d.x) % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1062u, 0u) & _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(30654u, 6u)], 26442u), _wgslsmith_div_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 4294967295u)), select(global2.d.x, 0u, global2.c.x && false)));
    global4 = array<i32, 32>();
    global2 = func_4(Struct_2(-578f, 21738i, func_4(Struct_2(var_0.a, global0[_wgslsmith_index_u32(4294967295u, 6u)], -1i, firstTrailingBit(global1.d)), true).b, firstLeadingBit(reverseBits(vec4<u32>(57006u, global1.d.x, 4294967295u, 0u)) << (~vec4<u32>(0u, global1.d.x, var_0.d.x, var_0.d.x) % vec4<u32>(32u)))), func_4(Struct_2(_wgslsmith_f_op_f32(-var_0.a), -_wgslsmith_div_i32(global1.b, global2.a), global4[_wgslsmith_index_u32(global1.d.x, 32u)], vec4<u32>(var_0.d.x, countOneBits(global1.d.x), _wgslsmith_mod_u32(1u, 1u), global2.d.x)), global2.c.x).c.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(var_0.a + global1.a))))), -22703i, abs(_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.c, global1.c, 89147i), vec4<i32>(global0[_wgslsmith_index_u32(global2.d.x, 6u)], global1.c, global4[_wgslsmith_index_u32(global2.d.x, 32u)], global0[_wgslsmith_index_u32(1u, 6u)])), reverseBits(~vec4<i32>(u_input.a.x, global4[_wgslsmith_index_u32(87926u, 32u)], -1i, var_0.c)))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.d.x, ~var_0.d.x, global2.d.x, _wgslsmith_mod_u32(0u, 4294967295u)), firstLeadingBit(select(~global1.d, ~vec4<u32>(4294967295u, 80071u, 3385u, global1.d.x), select(vec4<bool>(true, global2.c.x, global2.c.x, global2.c.x), vec4<bool>(global2.c.x, true, true, false), vec4<bool>(global2.c.x, global2.c.x, true, global2.c.x))))));
    var var_2 = func_4(var_1, false);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-483f))), global4[_wgslsmith_index_u32(13583u, 32u)], _wgslsmith_add_i32(-2147483647i, var_0.c), ~(~vec4<u32>(global3[_wgslsmith_index_u32(select(125327u, 0u, true), 6u)], var_2.d.x ^ var_0.d.x, 1u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(abs(u_input.a) >> ((global1.d.wy | vec2<u32>(global2.d.x, 0u)) % vec2<u32>(32u))) >> (((~vec2<u32>(global2.d.x, 0u) | vec2<u32>(0u, 0u)) ^ ~vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), -abs(max(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-1i, global0[_wgslsmith_index_u32(62u, 6u)], 1i)), vec3<i32>(30495i, 0i, u_input.a.x))));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(min(_wgslsmith_div_i32(global4[_wgslsmith_index_u32(var_0.d.x, 32u)], 2147483647i), global4[_wgslsmith_index_u32(var_0.d.x, 32u)]), ~(u_input.e & 1i)), 68741i) >> (abs(~(~global2.d)) % vec2<u32>(32u));
    var_0 = func_1(var_1, _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10983u, 6u)], 6u)], -4931i, -2147483647i) << (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.d.x, 6u)], 6u)], global1.d.x, global3[_wgslsmith_index_u32(75687u, 6u)]) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(var_0.c, global2.b, -2147483647i))) << (vec3<u32>(~(7479u << (global3[_wgslsmith_index_u32(1u, 6u)] % 32u)), 1901u, 1u) % vec3<u32>(32u)));
    var var_2 = var_0.d.x;
    let var_3 = func_4(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - 1812f), -1633f))), -2147483647i, 0i, ~countOneBits(~vec4<u32>(10934u, 71228u, global3[_wgslsmith_index_u32(global1.d.x, 6u)], 100406u))), (-1i >> (firstLeadingBit(countOneBits(global2.d.x)) % 32u)) != reverseBits(-global4[_wgslsmith_index_u32(1u, 32u)])).d;
    var_2 = _wgslsmith_clamp_u32(43290u, global1.d.x, 4294967295u);
    global0 = array<i32, 6>();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1451f)), -1000f) - var_0.a) + var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(508f);
}

