struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec2<u32>,
    e: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_2 = Struct_2(26630i);

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<u32>, 31>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec4<bool> {
    return select(select(vec4<bool>(false, global4.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(55769u, abs(global2.x)), 26u)], true), !select(select(vec4<bool>(global4.x, false, global0[_wgslsmith_index_u32(u_input.e, 26u)], global4.x), vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 26u)], true, true), global0[_wgslsmith_index_u32(23387u, 26u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], true, global0[_wgslsmith_index_u32(24785u, 26u)]), !vec4<bool>(global0[_wgslsmith_index_u32(26385u, 26u)], global4.x, false, global4.x)), select(select(!vec4<bool>(true, global4.x, global4.x, global0[_wgslsmith_index_u32(u_input.e, 26u)]), !vec4<bool>(global4.x, false, false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(16808u, 26u)], global0[_wgslsmith_index_u32(u_input.e, 26u)]), vec4<bool>(true, global4.x, false, global0[_wgslsmith_index_u32(0u, 26u)]), false)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 26u)], global4.x, global4.x), vec4<bool>(global4.x, global0[_wgslsmith_index_u32(global2.x, 26u)], true, global0[_wgslsmith_index_u32(46761u, 26u)]), select(vec4<bool>(global4.x, global0[_wgslsmith_index_u32(1u, 26u)], false, global0[_wgslsmith_index_u32(39336u, 26u)]), vec4<bool>(false, false, false, true), vec4<bool>(global4.x, global0[_wgslsmith_index_u32(global2.x, 26u)], true, global0[_wgslsmith_index_u32(40959u, 26u)]))), !vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 26u)], global4.x, true, true))), select(!select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(global2.x, 26u)], global0[_wgslsmith_index_u32(global2.x, 26u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 26u)], true, global4.x, global4.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 26u)], true, global0[_wgslsmith_index_u32(global2.x, 26u)], false), vec4<bool>(true, global4.x, global4.x, global0[_wgslsmith_index_u32(49391u, 26u)])), true), vec4<bool>(global4.x, false, !(!global0[_wgslsmith_index_u32(36317u, 26u)]), select(global4.x, false, global4.x) == global4.x), all(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 26u)], true, false), vec3<bool>(global4.x, global4.x, global0[_wgslsmith_index_u32(47288u, 26u)]), global4.x))), !select(!(!vec4<bool>(global4.x, true, true, global0[_wgslsmith_index_u32(global2.x, 26u)])), select(vec4<bool>(global4.x, global0[_wgslsmith_index_u32(65737u, 26u)], global4.x, global0[_wgslsmith_index_u32(27014u, 26u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 26u)], global4.x, global4.x, global4.x), vec4<bool>(global0[_wgslsmith_index_u32(17364u, 26u)], global4.x, true, false), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 26u)], global0[_wgslsmith_index_u32(global2.x, 26u)], true, false)), true), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(8378u, 26u)], global0[_wgslsmith_index_u32(83195u, 26u)], global4.x), !vec4<bool>(true, global4.x, true, global0[_wgslsmith_index_u32(0u, 26u)]), -5382i <= global1.a)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    global4 = vec2<bool>(any(!select(select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.e, 26u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(67045u, 26u)], global4.x, global0[_wgslsmith_index_u32(1u, 26u)]), true), func_3(vec4<f32>(1076f, -2343f, 733f, -194f), vec2<f32>(437f, -1229f)), false)), global4.x);
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = false;
    let var_2 = -305f;
    var var_3 = vec4<i32>(~(global1.a ^ -2147483647i), arg_1.x, arg_1.x, -1i);
    return Struct_2(-32834i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec2<i32> {
    global2 = abs(firstTrailingBit(~(vec4<u32>(global2.x, arg_0.x, 66711u, 9353u) & vec4<u32>(u_input.e, 1u, 21733u, u_input.d))) ^ (~vec4<u32>(15430u, 0u, u_input.e, global2.x) | abs(arg_0)));
    let var_0 = 4294967295u | u_input.e;
    var var_1 = vec4<i32>(func_2(Struct_2(reverseBits(4639i)), u_input.a).a, 1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.a & -18845i, global1.a, arg_1.a | global1.a), min(_wgslsmith_mult_vec3_i32(~vec3<i32>(31469i, arg_3.x, arg_1.a), vec3<i32>(-2147483647i, 1i, -23739i)), countOneBits(firstLeadingBit(vec3<i32>(arg_1.a, global1.a, global1.a))))), -15487i);
    let var_2 = ((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1226f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2619f)) + _wgslsmith_f_op_f32(trunc(-125f)))) | !any(vec3<bool>(true, true, true))) & true;
    var var_3 = Struct_1(_wgslsmith_div_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, var_1.x, arg_1.a, arg_1.a), vec4<i32>(var_1.x, -34502i, -17860i, global1.a))), -(vec4<i32>(arg_2.x, global1.a, var_1.x, 0i) | _wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, 2147483647i, 53957i, 1i), vec4<i32>(arg_3.x, arg_3.x, var_1.x, arg_2.x)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(19765u, 92347u), global3[_wgslsmith_index_u32(4294967295u, 31u)])), firstTrailingBit(global2.zz)), select(vec2<u32>(u_input.d, 4294967295u) ^ vec2<u32>(31317u, u_input.e), vec2<u32>(global2.x, 4294967295u), all(vec3<bool>(true, var_2, true))) >> (min(reverseBits(vec2<u32>(21825u, arg_0.x)), vec2<u32>(1u, 30279u)) % vec2<u32>(32u))));
    return reverseBits(firstTrailingBit(vec2<i32>(arg_1.a, 54606i) ^ abs(u_input.a)));
}

fn func_1() -> Struct_2 {
    let var_0 = global2.x;
    var var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec2_i32(func_4(reverseBits(vec4<u32>(0u, 1u, 4294967295u, 39571u)), func_2(Struct_2(35439i), vec2<i32>(0i, -42120i)), vec2<i32>(-3438i, 2147483647i), u_input.a), _wgslsmith_div_vec2_i32(-u_input.a, u_input.a))), 1u, u_input.c, 362f, !vec3<bool>(global4.x, global4.x, func_3(vec4<f32>(-589f, 209f, 912f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, 1095f))).x));
    var var_2 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, u_input.d, global2.x, 1u) << (_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_1.b, 88373u, 0u, 4294967295u), vec4<u32>(11907u, 4289u, 3524u, global2.x), global4.x), ~vec4<u32>(35963u, u_input.d, 23771u, 589u)) % vec4<u32>(32u))), min(~firstLeadingBit(vec4<u32>(global2.x, 122071u, 19458u, global2.x) ^ vec4<u32>(u_input.e, 1u, 0u, 1u)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_1.b, 0u, 4294967295u), vec4<u32>(29634u, global2.x, 2471u, var_1.b)), vec4<u32>(68395u, var_1.b, u_input.e, u_input.d))));
    var var_3 = !vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.b, 26u)], global4.x);
    global3 = array<vec2<u32>, 31>();
    return Struct_2(_wgslsmith_dot_vec3_i32(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 18557i, u_input.b), vec3<i32>(-1i, 49787i, -34564i)) ^ (vec3<i32>(-16944i, u_input.c, -1i) & vec3<i32>(17380i, var_1.c, global1.a))), max(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.c, 2147483647i, u_input.c), vec3<i32>(45501i, 0i, -15983i), vec3<i32>(0i, 2147483647i, global1.a)), countOneBits(vec3<i32>(u_input.a.x, global1.a, u_input.b)) << (global2.yxw % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<bool>(!(!(global1.a != -3878i)), global0[_wgslsmith_index_u32(global2.x, 26u)]);
    global1 = func_1();
    global0 = array<bool, 26>();
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(0u, 31u)], abs(global2.wy)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.yy, vec2<u32>(4294967295u, 13181u), vec2<u32>(u_input.d, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(26766u, 4294967295u)))), _wgslsmith_mult_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(global3[_wgslsmith_index_u32(global2.x, 31u)], global2.yx)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(18965u, u_input.d), global3[_wgslsmith_index_u32(63345u, 31u)]))), vec2<u32>(global2.x, abs(countOneBits(global2.x))));
    var var_1 = Struct_5(-(vec2<i32>(select(u_input.b, global1.a, global0[_wgslsmith_index_u32(1u, 26u)]), firstTrailingBit(global1.a)) << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1873f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1467f), 1f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -1292f), 1f, _wgslsmith_f_op_f32(select(-185f, 1000f, global4.x))))));
    let var_2 = Struct_4(global2.x & ~(~u_input.e), true, Struct_2(-reverseBits(~var_1.a.x)), ~vec2<u32>(var_0.x, abs(global2.x)), all(select(vec3<bool>(false, true, func_3(vec4<f32>(var_1.b.x, -914f, -930f, 258f), vec2<f32>(253f, 2149f)).x), !vec3<bool>(true, global4.x, global4.x), select(vec3<bool>(global4.x, true, global4.x), vec3<bool>(global0[_wgslsmith_index_u32(57304u, 26u)], false, global4.x), func_3(vec4<f32>(var_1.b.x, -1040f, -1000f, 2080f), vec2<f32>(var_1.b.x, var_1.b.x)).wxw))));
    let var_3 = Struct_5(reverseBits(min(var_1.a ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.a.x), u_input.a, vec2<i32>(9998i, var_1.a.x)), max(var_1.a, var_1.a))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x, _wgslsmith_f_op_f32(max(270f, _wgslsmith_f_op_f32(-var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

