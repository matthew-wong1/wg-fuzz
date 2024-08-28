struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<f32, 10> = array<f32, 10>(-515f, 2247f, 246f, -216f, 1918f, -1000f, 564f, -491f, -375f, -871f);

var<private> global1: array<vec4<u32>, 2>;

var<private> global2: array<i32, 27> = array<i32, 27>(2147483647i, 12134i, -44051i, i32(-2147483648), 2147483647i, i32(-2147483648), 67502i, i32(-2147483648), -60320i, i32(-2147483648), 13434i, 57067i, 30277i, 49239i, 2147483647i, 2849i, 2147483647i, -14426i, 783i, i32(-2147483648), -25983i, -14762i, 12385i, -106537i, -26626i, i32(-2147483648), 1i);

var<private> global3: array<vec4<u32>, 31>;

var<private> global4: array<bool, 15> = array<bool, 15>(true, true, true, true, false, true, false, true, true, true, true, false, true, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(vec4<u32>(~(u_input.b & (u_input.a.x ^ 46674u)), ~(~_wgslsmith_div_u32(u_input.b, u_input.b)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 1u, 0u)), min(u_input.b & 1u, 35288u)), 37417u));
    global4 = array<bool, 15>();
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(~var_0.a.x, 27u)], _wgslsmith_dot_vec3_i32(vec3<i32>(77979i, 0i, -2147483647i), ~vec3<i32>(14992i, -12247i, 53468i)))), -16912i, 11613i);
    var var_2 = vec2<i32>(-16463i, ~_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u << (u_input.b % 32u), 27u)], var_1.x)) ^ vec2<i32>(global2[_wgslsmith_index_u32(max(min(select(u_input.a.x, var_0.a.x, global4[_wgslsmith_index_u32(var_0.a.x, 15u)]), 0u), 1u), 27u)], 1i);
    let var_3 = Struct_3(select(select(vec2<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(0u, 15u)], true, global4[_wgslsmith_index_u32(var_0.a.x, 15u)])), true), !vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(4294967295u, 15u)]), true), vec2<bool>(global4[_wgslsmith_index_u32(62961u, 15u)], false), !(!select(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 15u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(7279u, 15u)]), vec2<bool>(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(8055u, 15u)])))), _wgslsmith_mod_i32(var_2.x, -max(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]) | -global2[_wgslsmith_index_u32(_wgslsmith_add_u32(9278u, var_0.a.x), 27u)]), _wgslsmith_clamp_vec4_u32(~max(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(81968u, 2u)], global3[_wgslsmith_index_u32(116853u, 31u)]), _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<u32>(0u, 59320u, u_input.b, 1u))), global3[_wgslsmith_index_u32(reverseBits(22589u), 31u)] << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 14707u, 1u, 33476u) ^ vec4<u32>(var_0.a.x, u_input.a.x, var_0.a.x, 0u), vec4<u32>(1u, 36458u, 32956u, 1u)) % vec4<u32>(32u)), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~17286u, u_input.b), 2u)]), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, var_0.a.x), min(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<u32>(var_0.a.x, 97503u, 0u, 4515u)), ~vec4<u32>(var_0.a.x, u_input.a.x, var_0.a.x, 4294967295u)) >> ((abs(var_0.a) << (reverseBits(global1[_wgslsmith_index_u32(9113u, 2u)]) % vec4<u32>(32u))) % vec4<u32>(32u))), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.a.x), 10u)]);
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~74729u, ~_wgslsmith_add_u32(arg_0.a.x & u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, arg_0.c.x, 0u), vec4<u32>(0u, 8190u, u_input.a.x, arg_0.b)))), 10u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(firstTrailingBit(~arg_0.b) >> (u_input.a.x % 32u), 10u)], _wgslsmith_f_op_f32(1f - 644f))), any(vec3<bool>(any(select(vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(40416u, 15u)]), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)], global4[_wgslsmith_index_u32(24061u, 15u)], false), vec4<bool>(global4[_wgslsmith_index_u32(26342u, 15u)], global4[_wgslsmith_index_u32(arg_0.a.x, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)], global4[_wgslsmith_index_u32(30456u, 15u)]))), global0[_wgslsmith_index_u32(101330u, 10u)] < global0[_wgslsmith_index_u32(arg_0.b, 10u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] + 347f) > -711f))));
    global3 = array<vec4<u32>, 31>();
    var var_1 = Struct_2(arg_0.c);
    var var_2 = Struct_3(select(vec2<bool>(true, !select(false, global4[_wgslsmith_index_u32(u_input.b, 15u)], false)), !select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(var_1.a.x, 15u)]), vec2<bool>(false, false), vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 15u)])), select(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 15u)] || global4[_wgslsmith_index_u32(var_1.a.x, 15u)]), !vec2<bool>(global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(!global4[_wgslsmith_index_u32(94152u, 15u)], arg_0.a.x <= 30350u))), ~(-(arg_0.e | global2[_wgslsmith_index_u32(1u, 27u)]) & (i32(-1i) * -28746i)), var_1.a << (~firstLeadingBit(reverseBits(vec4<u32>(0u, u_input.a.x, arg_0.c.x, 30833u))) % vec4<u32>(32u)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b << (50548u % 32u), 4294967295u, firstTrailingBit(arg_0.c.x), u_input.a.x), var_1.a)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.b, 10u)]));
    let var_3 = Struct_1(~u_input.a.xy, var_1.a.x, var_2.d.a, ~(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2818i, -20228i, arg_0.e)), -vec3<i32>(1i, arg_0.e, -1i))), -15579i);
    return var_3.a.x;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    var var_0 = !(global2[_wgslsmith_index_u32(4294967295u, 27u)] == -_wgslsmith_mult_i32(_wgslsmith_mult_i32(27891i, global2[_wgslsmith_index_u32(u_input.b, 27u)]), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(arg_1.x, 27u)], 20213i)));
    var var_1 = global4[_wgslsmith_index_u32(func_4(Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.a.xz, select(arg_1, arg_1, vec2<bool>(global4[_wgslsmith_index_u32(arg_1.x, 15u)], global4[_wgslsmith_index_u32(0u, 15u)])))), ~(~_wgslsmith_sub_u32(23820u, arg_1.x)), _wgslsmith_sub_vec4_u32(~abs(global1[_wgslsmith_index_u32(arg_1.x, 2u)]), vec4<u32>(func_3(), _wgslsmith_mod_u32(37692u, arg_1.x), ~0u, ~4294967295u)), _wgslsmith_clamp_i32(firstLeadingBit(firstTrailingBit(50546i)), ~(-global2[_wgslsmith_index_u32(u_input.b, 27u)]), global2[_wgslsmith_index_u32(reverseBits(firstTrailingBit(arg_1.x)), 27u)]), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~1u, 27u)], countOneBits(global2[_wgslsmith_index_u32(72421u, 27u)] & -43794i)))), 15u)];
    global4 = array<bool, 15>();
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_1.x, u_input.a.x), 15u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-461f, arg_0, 788f, 719f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, -431f, arg_0, 1308f)), !vec4<bool>(global4[_wgslsmith_index_u32(arg_1.x, 15u)], global4[_wgslsmith_index_u32(u_input.b, 15u)], false, true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(184f, -1670f, arg_0, 385f), vec4<f32>(848f, global0[_wgslsmith_index_u32(3702u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], arg_0))) - vec4<f32>(-303f, global0[_wgslsmith_index_u32(1u, 10u)], -833f, -206f))))));
    return 44401u ^ firstTrailingBit(~_wgslsmith_sub_u32(u_input.a.x, firstLeadingBit(21397u)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<bool>) -> vec4<u32> {
    global2 = array<i32, 27>();
    var var_0 = abs(~(~4724u)) ^ u_input.b;
    var var_1 = Struct_2(vec4<u32>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(90168u, 31u)], vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b)), 10u)], max(u_input.a.xx, vec2<u32>(10271u, u_input.a.x))) ^ u_input.b, ~u_input.b, ~_wgslsmith_clamp_u32(1u, u_input.b << (u_input.b % 32u), u_input.a.x), 43456u));
    return _wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(~4294967295u), ~reverseBits(15205u)), 31u)], global1[_wgslsmith_index_u32(var_1.a.x, 2u)]) ^ ~global1[_wgslsmith_index_u32(0u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 27>();
    let var_0 = Struct_1(abs(vec2<u32>(u_input.b, u_input.b & u_input.a.x)), ~_wgslsmith_mod_u32(~u_input.a.x, ~0u), global1[_wgslsmith_index_u32(abs(11786u), 2u)], ~1i, global2[_wgslsmith_index_u32(57545u << (u_input.a.x % 32u), 27u)]);
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(13157u, _wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(var_0.c.x, 2u)], _wgslsmith_clamp_vec4_u32(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], global3[_wgslsmith_index_u32(var_0.c.x, 31u)], vec4<u32>(65817u, u_input.b, var_0.a.x, 0u)))), 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)] & global3[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<u32>(select(~u_input.b, var_0.a.x, true | (global4[_wgslsmith_index_u32(var_0.c.x, 15u)] && true)), 16601u, 1u, u_input.a.x));
    let var_2 = Struct_3(!(!(!select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 15u)], false), vec2<bool>(global4[_wgslsmith_index_u32(5823u, 15u)], global4[_wgslsmith_index_u32(10283u, 15u)]), global4[_wgslsmith_index_u32(u_input.b, 15u)]))), countOneBits(1i >> (var_1.x % 32u)) >> (~_wgslsmith_dot_vec4_u32(min(global1[_wgslsmith_index_u32(var_1.x, 2u)], vec4<u32>(27356u, u_input.a.x, var_0.a.x, 1u)), _wgslsmith_div_vec4_u32(var_0.c, global3[_wgslsmith_index_u32(u_input.a.x, 31u)])) % 32u), _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(var_0.c.x, 31u)], _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.b, 5497u, var_0.c.x, var_0.a.x)), select(func_1(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 10u)], vec2<i32>(-1i, var_0.d), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 15u)], true, global4[_wgslsmith_index_u32(75146u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)])), ~global1[_wgslsmith_index_u32(var_0.c.x, 2u)], !vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(var_0.c.x, 15u)])))), Struct_2(vec4<u32>(var_0.b, _wgslsmith_sub_u32(var_1.x, ~1u), _wgslsmith_mod_u32(1u, u_input.a.x) ^ (8410u << (u_input.b % 32u)), ~(~u_input.b))), global0[_wgslsmith_index_u32(1u, 10u)]);
    global1 = array<vec4<u32>, 2>();
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(33524u, var_1.x), max(var_2.c.x, 0u)), 31u)];
    let var_3 = select(vec3<bool>(false, !(!(var_2.a.x && true)), select(false, true, var_2.b > global2[_wgslsmith_index_u32(~var_1.x, 27u)])), !select(!select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(var_1.x, 15u)]), vec3<bool>(var_2.a.x, true, true), global4[_wgslsmith_index_u32(var_1.x, 15u)]), vec3<bool>(!var_2.a.x, var_2.a.x, select(var_2.a.x, false, true)), !vec3<bool>(var_2.a.x, var_2.a.x, true)), !(all(vec3<bool>(true, true, true)) || global4[_wgslsmith_index_u32(12577u, 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

