struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, 7118i, 0i), 2147483647i, vec4<u32>(35301u, 45167u, 34489u, 2292u));

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(~(-global0.a << (~vec3<u32>(arg_0, 0u, arg_0) % vec3<u32>(32u))), vec3<i32>(29425i, global0.b, u_input.a)), 0i ^ u_input.d.x, global0.c);
    let var_1 = u_input.b;
    return !(!(!(!any(vec3<bool>(arg_2.x, arg_2.x, arg_1)))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = Struct_1(abs(_wgslsmith_add_vec3_i32(global0.a, arg_0)), -17615i, global0.c);
    var var_1 = countOneBits(firstTrailingBit(u_input.d.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(27000u, abs(~_wgslsmith_mult_u32(countOneBits(var_0.c.x), _wgslsmith_div_u32(var_0.c.x, 1u)))), 5u)];
    var var_3 = false;
    let var_4 = !select(vec4<bool>(global1[_wgslsmith_index_u32(max(~34489u, var_0.c.x), 5u)], true, func_3(firstTrailingBit(0u), global1[_wgslsmith_index_u32(var_0.c.x, 5u)], !vec2<bool>(global1[_wgslsmith_index_u32(20483u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)])), true), vec4<bool>(!select(global1[_wgslsmith_index_u32(var_0.c.x, 5u)], false, global1[_wgslsmith_index_u32(global0.c.x, 5u)]), _wgslsmith_f_op_f32(max(1513f, 609f)) != _wgslsmith_f_op_f32(step(905f, -1357f)), false, all(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(13289u, 5u)], global1[_wgslsmith_index_u32(27308u, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.c.x, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)])))), select(vec4<bool>(select(true, global1[_wgslsmith_index_u32(40873u, 5u)], true), true, func_3(u_input.c.x, global1[_wgslsmith_index_u32(var_0.c.x, 5u)], vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(12038u, 5u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], true, true, global1[_wgslsmith_index_u32(0u, 5u)])), vec4<bool>(!global1[_wgslsmith_index_u32(global0.c.x, 5u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 5u)], false, global1[_wgslsmith_index_u32(4294967295u, 5u)])), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = -2147483647i;
    var var_1 = abs(vec2<u32>(8448u, abs(reverseBits(u_input.e))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-826f, -743f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.d.x, -2147483647i, var_0))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1409f))), 288f)))));
    let var_3 = Struct_1(-firstTrailingBit(~abs(vec3<i32>(-20398i, -1i, global0.a.x))), var_0, ~global0.c);
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, ~u_input.a, ~(-abs(global0.b))), var_3.a, _wgslsmith_sub_vec3_i32(-global0.a ^ (max(vec3<i32>(var_0, 0i, -40522i), vec3<i32>(-1i, var_0, -35883i)) ^ vec3<i32>(var_0, var_0, -15094i)), var_3.a));
    return vec3<bool>(!arg_0, func_3(select(var_1.x | reverseBits(arg_1.x), firstLeadingBit(reverseBits(0u)), arg_0 | arg_0), all(vec2<bool>(global1[_wgslsmith_index_u32(global0.c.x, 5u)], !global1[_wgslsmith_index_u32(var_3.c.x, 5u)])), !(!select(vec2<bool>(arg_0, global1[_wgslsmith_index_u32(var_1.x, 5u)]), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)))), !global1[_wgslsmith_index_u32(0u, 5u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(823f - -386f);
    global1 = array<bool, 5>();
    var var_1 = -vec3<i32>(arg_3.x, select(-2147483647i, 1i, _wgslsmith_dot_vec2_i32(arg_3.xy, vec2<i32>(arg_3.x, 32990i)) <= firstTrailingBit(-367i)), arg_3.x);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_mult_vec2_u32(global0.c.xz, _wgslsmith_mod_vec2_u32(global0.c.xz, _wgslsmith_mult_vec2_u32(countOneBits(var_2.c.wy), ~u_input.c.zz) >> (abs(vec2<u32>(1u, global0.c.x)) % vec2<u32>(32u))));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_0;
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    var_0 = func_4(any(vec3<bool>(all(!vec3<bool>(global1[_wgslsmith_index_u32(global0.c.x, 5u)], true, global1[_wgslsmith_index_u32(1133u, 5u)])), true, all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 5u)])))), arg_2, vec3<bool>(true && !(var_0.c.x <= 48546u), all(select(func_1(global1[_wgslsmith_index_u32(u_input.e, 5u)], vec4<u32>(global0.c.x, 92456u, u_input.b, 0u)), select(vec3<bool>(global1[_wgslsmith_index_u32(22453u, 5u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(arg_1, 5u)], global1[_wgslsmith_index_u32(91186u, 5u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(2881u, 5u)], true)), func_1(true, var_0.c))), global1[_wgslsmith_index_u32(0u, 5u)]), var_0.a);
    var var_1 = arg_2.a.yz;
    return ~arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(select(2147483647i, -3586i, global1[_wgslsmith_index_u32(global0.c.x, 5u)]), 0i) | global0.a.x, -2147483647i, 17276i), func_5(Struct_1(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.d.x), u_input.d.x ^ 2147483647i, u_input.d.x | 1i), global0.a.x | firstLeadingBit(global0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1714u, global0.c.x, u_input.e, 0u), ~global0.c)), firstLeadingBit(u_input.b), func_4(false, Struct_1(vec3<i32>(13284i, 1i, u_input.d.x), 1i, global0.c), !func_1(false, global0.c), ~_wgslsmith_sub_vec3_i32(global0.a, global0.a))), vec4<u32>(firstTrailingBit(select(u_input.e, 0u, global1[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_add_u32(firstLeadingBit(u_input.b), ~45273u), min(~0u, 4294967295u), _wgslsmith_div_u32(~u_input.c.x, ~u_input.e)) & vec4<u32>(u_input.c.x, ~(~1833u), ~global0.c.x, ~4294967295u & u_input.c.x));
    global0 = func_4(true, Struct_1(vec3<i32>(-50315i, firstLeadingBit(func_4(false, Struct_1(global0.a, 25824i, vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 4496u)), vec3<bool>(false, false, true), global0.a).a.x), u_input.a), -max(18103i, 1i), ~global0.c), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.c.x, 5u)], global1[_wgslsmith_index_u32(global0.c.x, 5u)]), -global0.a);
    global0 = func_4(!(!all(vec2<bool>(true, global1[_wgslsmith_index_u32(4783u, 5u)]))), func_4(global1[_wgslsmith_index_u32(91976u, 5u)], func_4(global1[_wgslsmith_index_u32(4294967295u, 5u)], Struct_1(-vec3<i32>(-45580i, u_input.a, u_input.d.x), _wgslsmith_add_i32(u_input.a, 752i), func_4(false, Struct_1(vec3<i32>(-11507i, 12945i, global0.a.x), -2147483647i, vec4<u32>(51514u, 43833u, u_input.e, 1u)), vec3<bool>(global1[_wgslsmith_index_u32(114879u, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)], false), vec3<i32>(u_input.d.x, -26228i, 7832i)).c), vec3<bool>(true, true, true), _wgslsmith_sub_vec3_i32(global0.a, vec3<i32>(global0.b, global0.a.x, 19455i))), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], true, global1[_wgslsmith_index_u32(62054u, 5u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)], false), vec3<bool>(true, true, true)), vec3<i32>(_wgslsmith_sub_i32(1i, -1i), -_wgslsmith_div_i32(global0.b, -1466i), -49600i)), !vec3<bool>(global1[_wgslsmith_index_u32(8107u, 5u)], global1[_wgslsmith_index_u32(~4294967295u, 5u)] && any(vec3<bool>(true, true, false)), global1[_wgslsmith_index_u32(firstLeadingBit(global0.c.x << (0u % 32u)), 5u)]), global0.a);
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-368f, 542f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1064f)), _wgslsmith_f_op_f32(abs(925f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -167f), -926f), Struct_1(firstLeadingBit(firstTrailingBit(global0.a)) ^ vec3<i32>(reverseBits(u_input.a), u_input.a, _wgslsmith_add_i32(37988i, 0i)), ~global0.a.x, global0.c & ~(~global0.c)), vec3<bool>(true, !func_1(global1[_wgslsmith_index_u32(7250u, 5u)], ~vec4<u32>(global0.c.x, u_input.e, global0.c.x, 31849u)).x, !any(func_1(global1[_wgslsmith_index_u32(global0.c.x, 5u)], global0.c).xy)), vec3<i32>(~4200i, select(u_input.d.x | _wgslsmith_add_i32(694i, u_input.d.x), 2147483647i, countOneBits(0u) >= min(global0.c.x, 0u)), -u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-1i) * -(vec4<i32>(global0.b, var_0.b, u_input.a, -1i) >> (global0.c % vec4<u32>(32u))), -vec4<i32>(~(-15021i), global0.a.x | global0.a.x, ~var_0.b, global0.a.x | global0.b), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], true)), true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1178f), _wgslsmith_f_op_f32(trunc(605f))))), -351f), _wgslsmith_f_op_f32(round(2162f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f * -116f)), global0.c.wx);
}

