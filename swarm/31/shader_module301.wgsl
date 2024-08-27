struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15>;

var<private> global1: array<i32, 24>;

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: f32) -> vec2<bool> {
    var var_0 = vec3<f32>(629f, arg_2, 423f);
    var var_1 = ~1i;
    var var_2 = ~reverseBits(arg_0);
    var var_3 = Struct_4(398f, false, u_input.b.xz, _wgslsmith_f_op_f32(max(-1025f, 1550f)));
    var var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1 >> (~arg_0 % 32u), ~max(46002i, arg_1), countOneBits(-35781i) << (1u % 32u), _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(22875u, 24u)], -var_3.c.x)), vec4<i32>(_wgslsmith_mult_i32(var_3.c.x, _wgslsmith_div_i32(var_3.c.x, -1i)), _wgslsmith_mod_i32(arg_1 | var_3.c.x, 50929i), arg_1, _wgslsmith_sub_i32(reverseBits(var_3.c.x), ~var_3.c.x))) << (min(vec4<u32>(~4294967295u, arg_0, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 98796u, u_input.a), vec4<u32>(arg_0, u_input.a, arg_0, arg_0) | vec4<u32>(arg_0, u_input.a, u_input.a, 1u))), vec4<u32>(~(48356u >> (u_input.a % 32u)), arg_0, u_input.a, arg_0)) % vec4<u32>(32u));
    return select(!(!(!(!vec2<bool>(var_3.b, false)))), select(!vec2<bool>(!var_3.b, true & var_3.b), !select(vec2<bool>(true, false), !vec2<bool>(var_3.b, false), vec2<bool>(true, true)), var_3.b | (~u_input.a > ~22004u)), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 24u)] < u_input.c.x, !var_3.b), select(!vec2<bool>(false, var_3.b), vec2<bool>(15670u > u_input.a, var_3.b), true), !(!vec2<bool>(var_3.b, false))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(arg_0, u_input.b.xxy);
    var var_1 = vec3<u32>(~(~25364u), ~abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 20928u), reverseBits(u_input.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), 1u, abs(4294967295u)), reverseBits(vec3<u32>(u_input.a, 4294967295u, 4294967295u)) >> (vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(15801u, u_input.a, 13132u), vec3<u32>(4629u, 4294967295u, u_input.a)), abs(23010u)) % vec3<u32>(32u))));
    global0 = array<vec4<i32>, 15>();
    let var_2 = Struct_4(-226f, false != (u_input.a != ~(u_input.a >> (var_1.x % 32u))), _wgslsmith_div_vec2_i32(select(~var_0.b.xz, firstTrailingBit(-u_input.b.xz), select(vec2<bool>(true, true), func_3(u_input.a, var_0.b.x, 195f), all(vec2<bool>(true, false)))), var_0.b.yx), arg_0.a.x);
    var var_3 = vec2<i32>(~max(u_input.c.x << (~u_input.a % 32u), 1i & -var_0.b.x), _wgslsmith_mult_i32(abs(-24770i), -(var_2.c.x << (u_input.a % 32u))));
    return Struct_3(var_0.a, var_0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> bool {
    var var_0 = !(!select(all(vec3<bool>(false, true, false)), true, false)) && (_wgslsmith_div_u32(u_input.a, ~abs(4294967295u)) == 31059u);
    global2 = array<vec4<bool>, 2>();
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 15u)], vec4<i32>(-54214i, global1[_wgslsmith_index_u32(26658u, 24u)], global1[_wgslsmith_index_u32(35849u, 24u)], 0i)), u_input.b), vec4<i32>(-arg_2, arg_1.b.x, ~min(-2147483647i, -91688i), -2147483647i)), firstLeadingBit(abs(vec4<i32>(-arg_1.b.x, -29843i, arg_2, arg_1.b.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(315f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1573f) + _wgslsmith_f_op_f32(select(-880f, arg_1.a.a.x, false)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.a.a)))), vec2<f32>(_wgslsmith_f_op_f32(-1447f - -1000f), arg_1.a.a.x)));
    var_0 = select(_wgslsmith_add_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 24u)], -34019i), arg_2) != min(_wgslsmith_mult_i32(firstLeadingBit(arg_2), var_1.x), _wgslsmith_mult_i32(-2147483647i, -1i)), select(true, !any(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_f32(sign(arg_1.a.a.x)) > _wgslsmith_f_op_f32(sign(772f)))), false);
    return false;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(select(select(max(-u_input.b.wzx, ~vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(7538u, 24u)], u_input.c.x)), -vec3<i32>(40760i, 31942i, 34733i), any(vec3<bool>(true, false, arg_0))), vec3<i32>(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(26087u, 44300u), 24u)], ~_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 24u)], 0i, 18748i), _wgslsmith_add_i32(-80879i, ~global1[_wgslsmith_index_u32(u_input.a, 24u)])), select(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, false), vec3<bool>(false, arg_0, true)), !select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), !any(vec3<bool>(arg_0, arg_0, arg_0)))));
    global1 = array<i32, 24>();
    let var_1 = select(vec4<bool>(!(!any(vec2<bool>(arg_0, false))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1599f)) >= _wgslsmith_f_op_f32(trunc(1f)), arg_0), vec4<bool>(true, true, true & any(!vec3<bool>(arg_0, false, arg_0)), true), func_4(u_input.a, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1234f, 1054f)))), max(-(~global1[_wgslsmith_index_u32(u_input.a, 24u)]), countOneBits(6222i))));
    let var_2 = true;
    let var_3 = Struct_2(vec2<f32>(230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1590f), _wgslsmith_f_op_f32(floor(229f)))))));
    return vec3<bool>(true, any(var_1.zz), all(var_1.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(~66042u, _wgslsmith_mult_u32(u_input.a, 0u)), ~(~(~vec2<u32>(7492u, u_input.a)))));
    let var_1 = func_1(any(vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(337f, -1356f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(max(623f, _wgslsmith_f_op_f32(f32(-1f) * -447f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(-1478f, -673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2279f, -268f, true)))), _wgslsmith_div_vec3_f32(vec3<f32>(608f, _wgslsmith_f_op_f32(step(-1501f, -817f)), _wgslsmith_f_op_f32(289f + 797f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, 1052f, 1355f)))));
    let var_3 = Struct_1(u_input.b.zyz);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(196f * 1000f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(-367f, -1326f)) * var_2.x));
    var var_5 = ~(~49355u) & firstTrailingBit(u_input.a);
    let var_6 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(357f)))), func_3(~(~u_input.a), firstLeadingBit(1i), _wgslsmith_f_op_f32(-var_4)).x, ~(-(~(-vec2<i32>(-41761i, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1586f * 849f), _wgslsmith_f_op_f32(exp2(var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a | 82973u, 55616u, u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-678f, var_4, var_4, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 359f, var_2.x, -1004f) * vec4<f32>(var_2.x, 516f, 820f, var_2.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(616f, 394f, -1000f, var_4) - vec4<f32>(1005f, var_2.x, var_6.d, -1551f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4, var_4, var_6.d, 1320f), vec4<f32>(var_6.a, 1000f, var_6.d, var_4))), false)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_6.a, -2194f)), var_6.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(max(-619f, _wgslsmith_f_op_f32(-var_4))), 178f)));
}

