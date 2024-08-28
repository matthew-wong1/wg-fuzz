struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 26> = array<bool, 26>(false, true, true, true, true, false, true, false, false, false, false, true, false, true, true, true, true, true, true, false, false, true, true, true, false, true);

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = i32(-1i) * -u_input.a;
    let var_1 = Struct_1(abs(global2.a), 1u, global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), select(global2.e, global2.e, vec4<bool>(true, (104643u < global2.c) && (global2.e.x && true), all(!global2.e.zz), true)));
    var var_2 = var_1;
    global2 = Struct_1(global2.a, 1863u, var_1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.d)))))), vec4<bool>(!any(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, true), vec2<bool>(global2.e.x, global1[_wgslsmith_index_u32(global2.b, 26u)]))), select(max(-42875i, var_0) < -2147483647i, 1u <= _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, 71792u, 0u, 31033u), vec4<u32>(global2.b, 28941u, 4294967295u, 89473u)), !var_2.e.x), var_2.e.x || (true | select(false, global2.e.x, var_2.e.x)), !global1[_wgslsmith_index_u32(1u, 26u)]));
    var var_3 = 116235u;
    return firstTrailingBit(vec3<i32>(firstLeadingBit(1i), -2147483647i, global2.a.x));
}

fn func_2() -> i32 {
    global2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(22988i, 2147483647i, u_input.c)), vec3<i32>(21188i, global2.a.x, 64955i)), func_3(global2.e.zx)), vec3<i32>(firstLeadingBit(1i), abs(u_input.a >> (4294967295u % 32u)), u_input.d.x)), 66565u >> (global2.b % 32u), 70274u, 196f, vec4<bool>(any(!(!vec2<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 26u)]))), global1[_wgslsmith_index_u32(countOneBits(abs(5619u)), 26u)], (996f <= _wgslsmith_div_f32(534f, global2.d)) && (~global2.a.x >= u_input.a), global2.e.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1032f, global2.d)))) * _wgslsmith_f_op_f32(sign(1800f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.d)))))));
    global2 = Struct_1(vec3<i32>(i32(-1i) * -u_input.b, (i32(-1i) * -u_input.a) & global2.a.x, -firstTrailingBit(u_input.b)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(global2.c, 4294967295u), 1u), abs(global2.c >> (36116u % 32u))), ~(~32577u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(339f - var_0.x)) - -2255f), _wgslsmith_f_op_f32(sign(-1540f)), true | select(all(vec2<bool>(true, global1[_wgslsmith_index_u32(39352u, 26u)])), true, !global0.x))), select(vec4<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global0.x, global1[_wgslsmith_index_u32(1u, 26u)])), select(global1[_wgslsmith_index_u32(7568u, 26u)], false, false) & any(global2.e), any(!vec2<bool>(global0.x, false)), all(!vec3<bool>(global2.e.x, false, global0.x))), global2.e, !global2.e));
    let var_1 = select(!vec4<bool>(_wgslsmith_mod_i32(global2.a.x, global2.a.x) < 14115i, (global2.a.x << (31745u % 32u)) <= func_3(global2.e.xx).x, global0.x, global1[_wgslsmith_index_u32(~max(global2.b, global2.c), 26u)]), !vec4<bool>(!(1u < global2.c), global0.x, global0.x, !global0.x), global2.e.x);
    global2 = Struct_1(abs(global2.a), global2.b, _wgslsmith_clamp_u32(global2.c, _wgslsmith_add_u32(0u, ~_wgslsmith_add_u32(27420u, 44564u)), 30212u >> (min(~0u, global2.b) % 32u)), var_0.x, !var_1);
    return -63696i;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = firstTrailingBit(abs(vec3<i32>(~37955i, ~u_input.d.x, u_input.b & 2147483647i)) >> (~vec3<u32>(1u, 1u, ~global2.c) % vec3<u32>(32u)));
    let var_1 = Struct_1(vec3<i32>(71908i, -15551i, -func_2()) | _wgslsmith_sub_vec3_i32(arg_1, select(vec3<i32>(arg_1.x, -2147483647i, arg_1.x), abs(arg_1), all(global2.e.wwx))), 4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1u, 4294967295u, 18527u), _wgslsmith_mod_u32(~65673u, countOneBits(68288u))), global2.d, global2.e);
    global0 = !vec2<bool>(global2.c > (var_1.b << (var_1.c % 32u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 67886u, 0u, 4294967295u), vec4<u32>(global2.b, 1u, global2.c, 0u)) >= global2.b, var_1.e.x, any(!var_1.e.yxx)));
    var var_2 = Struct_1(global2.a, 1u, _wgslsmith_mult_u32(4294967295u, abs(var_1.b)), _wgslsmith_f_op_f32(step(-1527f, -1381f)), vec4<bool>(all(var_1.e.zw), false, _wgslsmith_f_op_f32(-global2.d) != var_1.d, any(!vec4<bool>(true, var_1.e.x, global2.e.x, false))));
    global2 = var_1;
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32((~global2.a.x & 1i) | -35432i, max(_wgslsmith_div_i32(arg_3.a.x, _wgslsmith_div_i32(16242i, -12422i)), -38014i), global2.a.x), u_input.c);
    var_0 = u_input.d;
    var_0 = vec2<i32>(~firstTrailingBit(~2147483647i), ~1i);
    let var_1 = func_1(global1[_wgslsmith_index_u32(abs(1u), 26u)], vec3<i32>(arg_3.a.x, 2147483647i, ~(-31975i)));
    global2 = func_1(false, firstLeadingBit(abs(vec3<i32>(~var_1.a.x, max(var_1.a.x, -71156i), reverseBits(arg_1.a.x)))));
    return arg_3.e.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global2.d >= 1312f, true, any(func_4(true, func_1(global1[_wgslsmith_index_u32(global2.b, 26u)], global2.a), vec4<bool>(global1[_wgslsmith_index_u32(0u, 26u)], global2.e.x, global0.x, global1[_wgslsmith_index_u32(55069u, 26u)]), Struct_1(global2.a, global2.c, global2.b, global2.d, vec4<bool>(true, global0.x, global0.x, global1[_wgslsmith_index_u32(global2.c, 26u)])))));
    let var_1 = _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(min(func_1(func_1(!global2.e.x, global2.a & global2.a).e.x, _wgslsmith_add_vec3_i32(-vec3<i32>(global2.a.x, u_input.d.x, 0i), global2.a | vec3<i32>(u_input.c, global2.a.x, u_input.d.x))).d, global2.d)));
    global2 = Struct_1(_wgslsmith_add_vec3_i32(~(-(vec3<i32>(-1i, u_input.c, -7082i) & global2.a)), global2.a), ~global2.b, select(_wgslsmith_mult_u32(~22721u, ~global2.c), ~global2.b, false) >> (~(~_wgslsmith_clamp_u32(93250u, global2.c, 0u)) % 32u), global2.d, vec4<bool>(!(func_1(global1[_wgslsmith_index_u32(22756u, 26u)], vec3<i32>(global2.a.x, u_input.c, 1i)).d < _wgslsmith_f_op_f32(-var_1)), func_4(!global0.x && var_0.x, func_1(true, vec3<i32>(u_input.d.x, u_input.b, 24837i)), global2.e, Struct_1(~global2.a, 0u, _wgslsmith_sub_u32(10369u, global2.b), var_1, vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(global2.b, 26u)]))).x, false, var_0.x));
    let var_2 = _wgslsmith_sub_vec3_i32(func_3(global2.e.wz), global2.a);
    global2 = func_1(all(vec2<bool>(!var_0.x, func_4(var_2.x > -2147483647i, Struct_1(vec3<i32>(-1073i, global2.a.x, u_input.c), 10454u, 1u, var_1, vec4<bool>(false, false, false, global0.x)), !vec4<bool>(global2.e.x, global2.e.x, global1[_wgslsmith_index_u32(global2.c, 26u)], true), func_1(global0.x, global2.a)).x)), vec3<i32>(-select(firstLeadingBit(var_2.x), abs(u_input.d.x), func_1(true, vec3<i32>(u_input.a, 12187i, u_input.a)).e.x), -u_input.d.x, func_2()));
    var var_3 = func_1(var_0.x, min(vec3<i32>(var_2.x, select(-global2.a.x, u_input.c, var_2.x >= var_2.x), -1790i), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), ~vec3<i32>(global2.a.x, -2147483647i, var_2.x)), func_3(vec2<bool>(global2.e.x, global2.e.x)))));
    var var_4 = -(~vec4<i32>(u_input.a, func_3(!var_0.zx).x, abs(i32(-1i) * -59485i), -(i32(-1i) * -18735i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a, var_3.a.x)), u_input.d.x << (var_3.c % 32u))));
}

