struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<f32, 22> = array<f32, 22>(-470f, 811f, 762f, -2100f, -741f, 801f, 1195f, 1000f, -614f, -513f, 594f, -383f, 480f, 2301f, 175f, -1000f, -607f, 687f, -336f, -1848f, 1234f, -461f);

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(73039u, 59178u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 41523u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<f32, 22>();
    global3 = array<vec2<u32>, 3>();
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(19492u, 3u)], -884f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b, -313f), _wgslsmith_f_op_f32(sign(-658f))))), -371f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 20074u, 54643u, 40845u)), firstTrailingBit(vec4<u32>(0u, u_input.a, arg_0.a.x, arg_0.a.x))), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(887f, arg_0.b))))));
    global3 = array<vec2<u32>, 3>();
    global3 = array<vec2<u32>, 3>();
    return firstLeadingBit(~var_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = vec4<f32>(-1242f, arg_1, -502f, _wgslsmith_f_op_f32(-825f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f + global2[_wgslsmith_index_u32(arg_0.a.x, 22u)]) - _wgslsmith_f_op_f32(-arg_1))));
    global3 = array<vec2<u32>, 3>();
    var var_1 = Struct_1(~vec2<u32>(min(10945u, 29048u), u_input.a), _wgslsmith_f_op_f32(941f * 430f), vec3<f32>(_wgslsmith_f_op_f32(-834f * global2[_wgslsmith_index_u32(arg_0.a.x, 22u)]), _wgslsmith_f_op_f32(floor(2241f)), _wgslsmith_f_op_f32(arg_0.c.x * -596f)));
    let var_2 = arg_0.a.x;
    let var_3 = Struct_1(max(global3[_wgslsmith_index_u32(1u, 3u)] & ((vec2<u32>(1u, 0u) ^ vec2<u32>(12365u, u_input.a)) & countOneBits(vec2<u32>(57966u, u_input.a))), ~vec2<u32>(arg_0.a.x, arg_0.a.x)), 1021f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 819f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1858f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-571f + arg_1), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28769u, 22u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(exp2(var_1.b)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.a.x, 22u)])))));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(2020i, 171i)), firstLeadingBit(-vec2<i32>(u_input.b, u_input.b))), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(89245i, u_input.b, u_input.b)), -25911i), (vec2<i32>(u_input.b, 2147483647i) ^ vec2<i32>(u_input.b, 188i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(43441i, -14348i), vec2<i32>(-4484i, -40862i)), global1.xz)), -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(~8967i, func_4(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(7750u, u_input.a), global3[_wgslsmith_index_u32(~18508u, 3u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 22u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], -1000f, global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 332f, 1226f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 22u)], -655f, 311f)))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_3(Struct_1(vec2<u32>(u_input.a, 9115u), global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<f32>(global2[_wgslsmith_index_u32(1u, 22u)], -1000f, 1032f))) >> (4294967295u % 32u), 22u)])));
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(countOneBits(27376u), 3u)] << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a), global3[_wgslsmith_index_u32(52131u, 3u)]) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~global3[_wgslsmith_index_u32(1u, 3u)], vec2<u32>(24000u, u_input.a) << (vec2<u32>(u_input.a, 3596u) % vec2<u32>(32u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(35434u, u_input.a, u_input.a | u_input.a), vec3<u32>(u_input.a, firstTrailingBit(u_input.a), max(16743u, u_input.a))), _wgslsmith_sub_u32(u_input.a ^ 4294967295u, u_input.a) >> (u_input.a % 32u), u_input.a));
    let var_2 = Struct_1(max(select(var_1.wy, ~var_1.xw, all(vec4<bool>(true, global1.x, false, global1.x))), abs(vec2<u32>(17447u, 61u))) >> (var_1.zy % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 22u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f + 1000f)))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(5528u, 59021u)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(88342u, 14087u), 3u)]) & abs(_wgslsmith_mult_u32(var_1.x, u_input.a)), 22u)], 396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 22u)]))))));
    var var_3 = Struct_1(vec2<u32>(0u, u_input.a), -409f, vec3<f32>(117f, _wgslsmith_f_op_f32(-907f - _wgslsmith_f_op_f32(-969f + _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(321f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(54571u, 22u)] - -1017f)))));
    global1 = select(!(!vec3<bool>(2147483647i >= u_input.b, global1.x, true)), select(global0[_wgslsmith_index_u32(var_3.a.x, 10u)], global0[_wgslsmith_index_u32(var_1.x, 10u)], global0[_wgslsmith_index_u32(29603u, 10u)]), !all(select(global1.xy, global1.xy, global1.yx)) || (all(!global1.zy) | global1.x));
    return Struct_1(var_2.a, _wgslsmith_f_op_f32(309f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b, 1154f, global1.x))) * -621f)), var_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = u_input.b;
    global1 = global0[_wgslsmith_index_u32(70194u, 10u)];
    let var_1 = 45309u & _wgslsmith_add_u32(u_input.a, reverseBits(firstTrailingBit(_wgslsmith_div_u32(arg_0.a.x, 25241u))));
    global3 = array<vec2<u32>, 3>();
    return Struct_1(arg_3.a, _wgslsmith_f_op_f32(-1124f + _wgslsmith_f_op_f32(max(-1540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3.a.x, 22u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], 1281f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(global1.x, global1.x == true, !(!(-2626i <= u_input.b)), !global1.x);
    global2 = array<f32, 22>();
    var var_1 = func_5(func_2(), Struct_1(~max(~global3[_wgslsmith_index_u32(u_input.a, 3u)], vec2<u32>(u_input.a, 5596u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 22u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(abs(1000f)), global1.x))), vec3<f32>(_wgslsmith_f_op_f32(422f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 22u)]))), countOneBits(_wgslsmith_sub_vec3_i32(select(firstLeadingBit(vec3<i32>(2147483647i, u_input.b, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(41251i, -37251i, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b)), true), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), ~vec3<i32>(u_input.b, 2147483647i, -2147483647i)))), Struct_1(vec2<u32>(reverseBits(26530u) & (u_input.a >> (0u % 32u)), 20631u), -2144f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-305f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 22u)] + global2[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_f32(-892f - -667f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 22u)], -223f, -1129f) * vec3<f32>(1404f, -729f, 697f))), _wgslsmith_f_op_f32(-407f + -835f) != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 22u)] * global2[_wgslsmith_index_u32(u_input.a, 22u)])))));
    var var_2 = _wgslsmith_mult_i32(-2147483647i, u_input.b) ^ -37113i;
    let var_3 = _wgslsmith_sub_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i) >> (vec2<u32>(var_1.a.x, 14913u) % vec2<u32>(32u)), -vec2<i32>(u_input.b, -1i))), abs(select(vec2<i32>(u_input.b, u_input.b) >> (~vec2<u32>(u_input.a, var_1.a.x) % vec2<u32>(32u)), max(vec2<i32>(0i, 1i), select(vec2<i32>(33958i, u_input.b), vec2<i32>(-2147483647i, 1i), false)), !(true && var_0.x))));
    return Struct_1(vec2<u32>(var_1.a.x | ~0u, firstTrailingBit(countOneBits(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), func_2().c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(636f, 531f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, var_1.a.x), u_input.a << (u_input.a % 32u)), 22u)])));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    global3 = array<vec2<u32>, 3>();
    global1 = global0[_wgslsmith_index_u32(11765u, 10u)];
    let var_0 = 560f < global2[_wgslsmith_index_u32(u_input.a, 22u)];
    var var_1 = ~arg_0.a;
    global3 = array<vec2<u32>, 3>();
    return StorageBuffer(46498u, _wgslsmith_sub_vec3_i32(-select(vec3<i32>(-52503i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b), true) | -(vec3<i32>(-14540i, u_input.b, -1i) << (vec3<u32>(35663u, 27577u, u_input.a) % vec3<u32>(32u))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 20116i, u_input.b), -vec3<i32>(1i, u_input.b, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    var var_0 = vec2<i32>(~u_input.b, u_input.b);
    global0 = array<vec3<bool>, 10>();
    let var_1 = _wgslsmith_mult_u32(u_input.a ^ 1u, 18322u);
    global2 = array<f32, 22>();
    let x = u_input.a;
    s_output = func_6(func_1());
}

