struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1 = Struct_1(true, vec3<i32>(-43579i, -1i, 2147483647i), vec2<i32>(30904i, -14439i));

var<private> global2: array<vec3<f32>, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    return !(!all(!(!vec3<bool>(global1.a, false, global1.a))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !(!select(!select(vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a, false, arg_0.a, arg_3.a)), vec4<bool>(any(vec3<bool>(arg_1.a, false, true)), func_3(), arg_3.a, any(vec3<bool>(arg_0.a, false, true))), ~arg_3.c.x < _wgslsmith_dot_vec3_i32(arg_0.b, arg_3.b)));
    let var_1 = firstLeadingBit(vec4<i32>(global1.c.x, 59739i, _wgslsmith_div_i32(-arg_0.c.x, u_input.c), u_input.c));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - 435f));
    var var_3 = 0i;
    let var_4 = 42876i;
    return global0[_wgslsmith_index_u32(countOneBits(4294967295u), 29u)];
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = 1i >= global1.b.x;
    global1 = arg_2;
    let var_1 = vec4<i32>(~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 15754i), 35157i, -_wgslsmith_sub_i32(34899i, 55109i));
    global2 = array<vec3<f32>, 16>();
    var var_2 = func_2(global0[_wgslsmith_index_u32(arg_0, 29u)], arg_2, ~(~arg_1), Struct_1(var_0, var_1.zwx, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.b.zz, global1.c), -1i), global1.c)));
    return vec3<bool>(true, any(select(vec4<bool>(false, true, true, select(true, true, true)), vec4<bool>(true, arg_0 < 0u, false, var_2.a), func_2(Struct_1(true, vec3<i32>(global1.b.x, global1.b.x, u_input.c), u_input.a.zx), arg_2, abs(1u), func_2(arg_2, Struct_1(true, vec3<i32>(global1.b.x, 13031i, global1.b.x), u_input.a.zx), 1u, Struct_1(false, vec3<i32>(17574i, arg_2.c.x, global1.b.x), vec2<i32>(-795i, -8352i)))).a)), arg_2.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 29>();
    let var_0 = func_2(global0[_wgslsmith_index_u32(u_input.b, 29u)], Struct_1(global1.a, _wgslsmith_add_vec3_i32(~(-global1.b), -vec3<i32>(u_input.a.x, 7783i, -2147483647i)), abs(_wgslsmith_div_vec2_i32(firstTrailingBit(global1.b.xx), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.c.x, u_input.c), global1.c)))), abs(arg_2.x), global0[_wgslsmith_index_u32(66935u, 29u)]);
    var var_1 = Struct_1(!(true | any(vec3<bool>(var_0.a, false, arg_0.x))), -vec3<i32>(var_0.b.x, 10348i, -5635i), -min(u_input.a.zz, abs(abs(vec2<i32>(-14186i, 6078i)))));
    var var_2 = Struct_1(false, vec3<i32>(-1i, countOneBits(var_1.c.x), select(1i, -50203i, ~2147483647i > global1.c.x)), -_wgslsmith_sub_vec2_i32(var_1.b.zy, countOneBits(vec2<i32>(-1i, 820i))));
    var var_3 = func_2(Struct_1(func_1(15193u, ~u_input.b ^ 1u, Struct_1(var_1.a, vec3<i32>(14274i, global1.b.x, u_input.a.x) | global1.b, firstTrailingBit(global1.b.yx))).x, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.b, -global1.b), vec3<i32>(abs(2147483647i), _wgslsmith_add_i32(-127250i, var_2.c.x), 2147483647i << (0u % 32u))), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(1i, var_0.c.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.c) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), ~var_2.c))), Struct_1(var_2.a, -max(~var_1.b, vec3<i32>(-5328i, -35283i, 17864i) >> (vec3<u32>(u_input.b, 54918u, u_input.b) % vec3<u32>(32u))), var_0.c), (_wgslsmith_clamp_u32(~4294967295u, 1u, 1u) << (~max(arg_2.x, 1u) % 32u)) >> (~0u % 32u), func_2(func_2(Struct_1(!var_2.a, ~vec3<i32>(57654i, -1i, var_1.b.x), vec2<i32>(u_input.c, 0i) & vec2<i32>(var_0.b.x, var_2.c.x)), func_2(Struct_1(var_1.a, var_1.b, var_1.b.xz), func_2(Struct_1(var_2.a, u_input.a, var_2.c), global0[_wgslsmith_index_u32(arg_2.x, 29u)], 14356u, var_0), abs(u_input.b), func_2(var_0, Struct_1(false, global1.b, vec2<i32>(-47319i, var_2.c.x)), arg_2.x, var_0)), 0u, func_2(Struct_1(arg_0.x, global1.b, u_input.a.xy), Struct_1(false, vec3<i32>(12165i, u_input.a.x, -2147483647i), var_0.b.zz), 1u, func_2(Struct_1(true, vec3<i32>(u_input.c, 1i, -20926i), vec2<i32>(var_1.c.x, global1.c.x)), var_0, 5909u, global0[_wgslsmith_index_u32(16310u, 29u)]))), func_2(func_2(Struct_1(false, var_0.b, var_2.b.xy), Struct_1(true, vec3<i32>(var_1.c.x, 60998i, var_2.b.x), vec2<i32>(54176i, 1i)), ~u_input.b, func_2(var_0, Struct_1(var_0.a, var_1.b, vec2<i32>(-38273i, -2147483647i)), u_input.b, Struct_1(true, var_1.b, vec2<i32>(4766i, 1i)))), Struct_1(arg_1 <= 501f, _wgslsmith_add_vec3_i32(u_input.a, var_1.b), vec2<i32>(u_input.c, 7096i)), arg_2.x, Struct_1(true, var_0.b, _wgslsmith_sub_vec2_i32(var_0.b.yy, global1.b.yx))), 32560u, Struct_1(true && any(vec4<bool>(true, true, arg_0.x, false)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(9653i, 2147483647i, global1.c.x)), vec3<i32>(0i, -1i, var_0.b.x)), firstTrailingBit(var_1.c))));
    return ~min(arg_2.x, 1u ^ _wgslsmith_clamp_u32(~arg_2.x, ~arg_2.x, u_input.b >> (3667u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -2147483647i;
    global2 = array<vec3<f32>, 16>();
    global1 = Struct_1(!((select(49334u, 1u, true) < u_input.b) | arg_0.a), vec3<i32>(27735i, -1i, -(~arg_1.b.x)), vec2<i32>(_wgslsmith_div_i32(abs(global1.c.x), -arg_1.c.x), -16929i ^ reverseBits(u_input.c)));
    var_0 = firstTrailingBit(_wgslsmith_add_i32(abs(~_wgslsmith_sub_i32(0i, arg_1.c.x)), abs(1i)));
    let var_1 = Struct_1(u_input.b < _wgslsmith_mult_u32(~0u & u_input.b, ~1u), vec3<i32>(abs(-_wgslsmith_clamp_i32(21206i, global1.c.x, global1.c.x)), _wgslsmith_clamp_i32(1i, max(global1.c.x, arg_0.c.x), min(-2147483647i, select(0i, arg_0.c.x, false))), ~(-1i)), vec2<i32>(1i, ~abs(arg_1.c.x | arg_0.c.x)));
    return func_2(arg_0, global0[_wgslsmith_index_u32(~(~(u_input.b >> (u_input.b % 32u)) << (max(u_input.b << (u_input.b % 32u), u_input.b) % 32u)), 29u)], max(~u_input.b, ~14348u), func_2(func_2(func_2(arg_0, arg_1, ~u_input.b, func_2(arg_0, Struct_1(arg_1.a, arg_0.b, var_1.b.zx), u_input.b, Struct_1(var_1.a, vec3<i32>(arg_1.b.x, arg_0.c.x, 0i), vec2<i32>(var_1.b.x, var_1.c.x)))), arg_1, 45378u, Struct_1(!arg_0.a, ~vec3<i32>(6417i, 1i, -1i), ~arg_1.c)), Struct_1(_wgslsmith_f_op_f32(ceil(-912f)) < _wgslsmith_f_op_f32(-610f + 777f), vec3<i32>(var_1.b.x, -2147483647i, -2147483647i), _wgslsmith_div_vec2_i32(arg_1.c, var_1.c)), 1u, Struct_1(!var_1.a, -vec3<i32>(arg_0.b.x, arg_1.c.x, global1.c.x), abs(~vec2<i32>(u_input.a.x, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~4116u, 29u)];
    global2 = array<vec3<f32>, 16>();
    let var_1 = func_5(global0[_wgslsmith_index_u32(countOneBits(func_4(select(func_1(u_input.b, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 29u)]), func_1(52169u, 4294967295u, global0[_wgslsmith_index_u32(32109u, 29u)]), var_0.a & true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1198f), _wgslsmith_f_op_f32(877f + -962f))), vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b << (0u % 32u), u_input.b, u_input.b))), 29u)], func_2(func_2(Struct_1(!var_0.a, global1.b, var_0.b.yx >> (vec2<u32>(u_input.b, 6165u) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b) | ~4294967295u, 29u)], u_input.b, global0[_wgslsmith_index_u32(u_input.b, 29u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.b), 29u)], ~reverseBits(~u_input.b), func_2(Struct_1(global1.a, _wgslsmith_mod_vec3_i32(var_0.b, global1.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(var_0.b.x, var_0.c.x))), func_2(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], ~u_input.b, func_2(Struct_1(global1.a, vec3<i32>(10390i, global1.c.x, global1.c.x), vec2<i32>(var_0.c.x, 9611i)), Struct_1(global1.a, global1.b, vec2<i32>(2147483647i, var_0.c.x)), u_input.b, Struct_1(false, vec3<i32>(-2147483647i, u_input.a.x, -26521i), var_0.b.zy))), ~(1u | u_input.b), global0[_wgslsmith_index_u32(u_input.b, 29u)])));
    let var_2 = func_2(func_2(func_5(Struct_1(all(vec2<bool>(var_1.a, var_1.a)), select(vec3<i32>(0i, 13227i, 2147483647i), global1.b, var_0.a), vec2<i32>(-18868i, 2147483647i) ^ vec2<i32>(1i, u_input.c)), Struct_1(func_5(Struct_1(true, u_input.a, vec2<i32>(0i, u_input.c)), global0[_wgslsmith_index_u32(u_input.b, 29u)]).a, _wgslsmith_mult_vec3_i32(global1.b, u_input.a), min(var_0.c, var_1.b.zz))), Struct_1(true, abs(var_1.b), global1.c), ~firstTrailingBit(0u), var_1), Struct_1(!(!(var_1.a | var_0.a)), var_0.b, _wgslsmith_sub_vec2_i32(u_input.a.zy, var_0.b.yz)), ~(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, 0u)), ~vec3<u32>(1u, u_input.b, 0u)) & firstLeadingBit(u_input.b)), Struct_1(var_0.a & false, var_0.b, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0.c.x), vec2<i32>(var_1.b.x, -59869i), var_0.b.yy ^ vec2<i32>(var_1.c.x, -1i))));
    global2 = array<vec3<f32>, 16>();
    var var_3 = var_1;
    var_0 = func_2(Struct_1(true, -firstLeadingBit(countOneBits(vec3<i32>(u_input.a.x, var_0.b.x, var_1.b.x))), var_1.c), Struct_1(!func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 29u)], Struct_1(var_2.a, vec3<i32>(-53323i, 2147483647i, 49083i), var_1.b.yy), firstTrailingBit(u_input.b), global0[_wgslsmith_index_u32(~u_input.b, 29u)]).a, _wgslsmith_mod_vec3_i32(~(-global1.b), ~countOneBits(vec3<i32>(var_1.c.x, -2147483647i, global1.b.x))), u_input.a.yy >> (abs(min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 5992u))) % vec2<u32>(32u))), 4294967295u, func_5(func_5(var_2, Struct_1(!var_0.a, -vec3<i32>(var_3.c.x, 56843i, var_3.c.x), vec2<i32>(2147483647i, -2147483647i))), Struct_1(!(global1.a | var_2.a), vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(18466i, 1i, var_1.c.x)), select(var_2.c.x, var_0.b.x, false), u_input.a.x), _wgslsmith_sub_vec2_i32(max(var_0.b.zx, vec2<i32>(var_3.c.x, var_1.b.x)), u_input.a.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, u_input.c), ~(-2147483647i)), -1i, -1i), u_input.b, _wgslsmith_f_op_f32(sign(-1960f)));
}

