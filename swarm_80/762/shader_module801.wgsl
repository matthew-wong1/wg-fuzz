struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(-602f, 335f, 167f), 2147483647i), Struct_1(vec3<f32>(1135f, 183f, -1408f), 27842i), Struct_1(vec3<f32>(1042f, 172f, -1342f), 0i), Struct_1(vec3<f32>(800f, 1000f, -1292f), 1i), Struct_1(vec3<f32>(628f, 239f, 382f), 0i), Struct_1(vec3<f32>(339f, 121f, 210f), -1i), Struct_1(vec3<f32>(-1737f, -105f, 222f), -8284i), Struct_1(vec3<f32>(-281f, 190f, -1284f), -20287i), Struct_1(vec3<f32>(-1709f, -317f, 1000f), -3334i), Struct_1(vec3<f32>(454f, -924f, -972f), 56474i), Struct_1(vec3<f32>(787f, 1035f, 1879f), -4163i), Struct_1(vec3<f32>(-571f, -728f, 127f), i32(-2147483648)));

var<private> global3: array<f32, 25> = array<f32, 25>(1000f, -334f, 286f, 1817f, 632f, -1979f, -107f, 312f, 1452f, 1039f, -1794f, -571f, 742f, 627f, -610f, 1000f, -311f, -2380f, -779f, -469f, -173f, 700f, 651f, 942f, 1000f);

var<private> global4: array<i32, 6>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = ~(~u_input.a);
    global4 = array<i32, 6>();
    let var_1 = -2147483647i & u_input.c;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_2.yxy)), global4[_wgslsmith_index_u32(u_input.b, 6u)]);
    let var_3 = !(!(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 6u)] == global4[_wgslsmith_index_u32(u_input.b, 6u)], global0.x, true)));
    return _wgslsmith_f_op_f32(549f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x)))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = global0.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-136f, arg_1.a.x, arg_0.a.x)))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(max(~global4[_wgslsmith_index_u32(18408u, 6u)], arg_0.b | global4[_wgslsmith_index_u32(0u, 6u)]), -arg_0.b, _wgslsmith_add_i32(-31780i << (u_input.a.x % 32u), arg_0.b)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, arg_0.b, -18265i, 4103i), vec4<i32>(u_input.c, -1i, arg_0.b, 16005i)), countOneBits(vec4<i32>(-2147483647i, 1i, 1i, arg_0.b))), u_input.c, u_input.c)));
    let var_2 = true;
    let var_3 = arg_0;
    global0 = select(select(!select(!vec3<bool>(var_2, global0.x, global0.x), vec3<bool>(false, var_2, false), true), !vec3<bool>(any(vec2<bool>(global0.x, false)), false, var_2 & var_2), false), vec3<bool>(!all(select(vec4<bool>(true, var_2, true, false), vec4<bool>(false, var_2, false, true), vec4<bool>(global0.x, var_2, true, false))), false, var_2), select(!vec3<bool>(any(vec3<bool>(true, var_2, true)), true, any(vec3<bool>(global0.x, true, var_2))), !(!select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, global0.x, true), vec3<bool>(false, var_2, global0.x))), vec3<bool>(true, var_2, !(!global0.x))));
    return 23336i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = global0.zx;
    let var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(-global4[_wgslsmith_index_u32(u_input.a.x, 6u)], i32(-1i) * -14484i, 37895i, min(-2147483647i, 1i)) >> ((~vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b) | ~vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(1i, -2147483647i << (countOneBits(u_input.b) % 32u), -84205i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1082i, arg_2.b, arg_0.b, -13810i), vec4<i32>(0i, 2147483647i, -1i, arg_0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, global4[_wgslsmith_index_u32(1u, 6u)], 24796i), vec4<i32>(-1607i, global4[_wgslsmith_index_u32(u_input.a.x, 6u)], u_input.c, u_input.c)))));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(-241f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(296f - -1222f), arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(105f, 317f, -1347f, arg_2.a.x)))))))));
    global0 = !vec3<bool>(all(global0.xy), (_wgslsmith_f_op_f32(-arg_1.x) < _wgslsmith_f_op_f32(trunc(-861f))) || (arg_1.x > -1490f), var_0.x);
    global4 = array<i32, 6>();
    return (func_3(Struct_1(vec3<f32>(arg_0.a.x, arg_1.x, 218f), _wgslsmith_add_i32(arg_0.b, -5712i)), Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_0.a, vec3<f32>(arg_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 25u)], arg_2.a.x))), var_1.x)) >> (firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) % 32u)) ^ global4[_wgslsmith_index_u32(~(~u_input.a.x), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec3<bool>(_wgslsmith_f_op_f32(round(1294f)) < _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], global3[_wgslsmith_index_u32(4294967295u, 25u)])), global0.x, !(global0.x | true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-206f, global3[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x)), 25u)])));
    global3 = array<f32, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 1000f, 460f))), _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 25u)], 153f, global3[_wgslsmith_index_u32(u_input.b, 25u)]), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], 543f, -333f)), !global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, global3[_wgslsmith_index_u32(18497u, 25u)], -1121f) + vec3<f32>(531f, 943f, global3[_wgslsmith_index_u32(u_input.a.x, 25u)])))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(3869u, 25u)])), 1492f, global3[_wgslsmith_index_u32(0u | u_input.a.x, 25u)]))), global4[_wgslsmith_index_u32((~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) << (_wgslsmith_div_u32(u_input.b, u_input.b | 1u) % 32u)) >> (_wgslsmith_mult_u32(~u_input.b, u_input.a.x) % 32u), 6u)]);
    let var_2 = vec2<i32>(u_input.c, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(func_1(Struct_1(vec3<f32>(1000f, var_1.a.x, var_1.a.x), 0i), _wgslsmith_f_op_vec3_f32(-var_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(903f, global3[_wgslsmith_index_u32(u_input.a.x, 25u)], 517f)), -1i)), var_1.b));
}

