struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<bool, 7> = array<bool, 7>(true, false, false, true, true, true, false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(20441u, 7u)];
    var var_1 = -3219f > arg_0.b.b.x;
    let var_2 = arg_0.b.b.wy;
    var var_3 = arg_2.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.x, _wgslsmith_f_op_f32(1734f + -418f))) + 1872f);
    global0 = array<bool, 7>();
    return arg_2.b.x != 58222u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_1.b;
    let var_1 = abs(~u_input.a) >> (_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_0.b.x, u_input.b.x, 0u), vec3<u32>(2627u, u_input.b.x, firstLeadingBit(var_0.b.x)), global0[_wgslsmith_index_u32(54826u, 7u)]), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(61098u, 28257u, 0u), vec3<u32>(arg_1.b.b.x, 66450u, 23022u)) << (vec3<u32>(arg_1.b.b.x, 4294967295u, u_input.b.x) % vec3<u32>(32u)))) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a);
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return vec3<bool>(_wgslsmith_mult_i32(abs(abs(u_input.a)), ~(-2147483647i)) < _wgslsmith_add_i32(abs(var_1), 0i), all(arg_1.d), all(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(84869u, 7u)], false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), arg_1.d, arg_1.d), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(arg_1.b.b.x, 7u)], true), !global0[_wgslsmith_index_u32(1663u, 7u)])));
}

fn func_2() -> vec3<bool> {
    global0 = array<bool, 7>();
    let var_0 = func_4(vec2<i32>(1i, u_input.a), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -175f), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1192f, 413f, 859f) * vec4<f32>(-1810f, 1113f, -411f, -1038f))), u_input.b), func_3(Struct_3(countOneBits(4294967295u), Struct_2(false, vec4<f32>(-693f, 1000f, -728f, -1206f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a), !global0[_wgslsmith_index_u32(96383u, 7u)]), vec2<f32>(-674f, _wgslsmith_f_op_f32(floor(1000f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, 1017f, -530f, -903f)), ~vec2<u32>(u_input.b.x, 1u))), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(32748u, 7u)], global0[_wgslsmith_index_u32(3754u, 7u)])), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(75742u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], true), vec3<bool>(false, false, false), true), global0[_wgslsmith_index_u32(~4294967295u, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(~u_input.b.x, 7u)], true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1656f, 891f, -570f)), vec3<f32>(-134f, -1000f, -421f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(f32(-1f) * -469f), -348f)))));
    var var_1 = ~u_input.b;
    var var_2 = Struct_2(all(vec2<bool>(true, !(!var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f), !(!global0[_wgslsmith_index_u32(59482u, 7u)]))), abs(abs(~vec3<u32>(var_1.x, var_1.x, var_1.x) << ((vec3<u32>(u_input.b.x, 45940u, 4294967295u) & vec3<u32>(u_input.b.x, 56990u, var_1.x)) % vec3<u32>(32u)))), u_input.a);
    var_2 = Struct_2(abs(_wgslsmith_div_i32(var_2.d, -72585i)) <= firstTrailingBit(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13191i, 10187i, var_2.d, 0i), vec4<i32>(var_2.d, u_input.a, -1i, 0i))), var_2.b, ~var_2.c, 15642i);
    return !func_4(vec2<i32>(-(~1419i), ~(-u_input.a)), Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x + 115f))), Struct_1(var_2.b, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c.x, var_2.c.x), var_2.c.yy)), all(var_0), !var_0), var_2.b.wzy);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -106f), -453f)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)), vec4<f32>(arg_0, arg_1, arg_1, 425f)))), select(abs(~u_input.b), u_input.b, !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true)))), all(vec2<bool>(true, true)), !(!func_2()));
    var var_1 = Struct_3(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(7278u), 24088u >> (var_0.b.b.x % 32u), ~85204u), 28291u), Struct_2(all(vec4<bool>(arg_2.x, var_0.d.x, arg_2.x, true)) | (arg_2.x && any(vec4<bool>(var_0.c, var_0.d.x, var_0.c, false))), _wgslsmith_f_op_vec4_f32(-var_0.b.a), vec3<u32>(30354u, min(_wgslsmith_mult_u32(19469u, u_input.b.x), var_0.b.b.x), var_0.b.b.x), reverseBits(~(~u_input.a))), true);
    global0 = array<bool, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -1000f, true))), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(sign(893f))))));
    global0 = array<bool, 7>();
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1092f)))), 1f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), -1019f, _wgslsmith_f_op_f32(-419f + var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x)))), u_input.b), var_1.c, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    let var_1 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -172f) - -291f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(step(-422f, 693f)))), !global0[_wgslsmith_index_u32(reverseBits(1u), 7u)])), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * 1000f)), !(1506f > _wgslsmith_f_op_f32(sign(-1520f))))), select(select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], false)), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true, false), true), !vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false)), global0[_wgslsmith_index_u32(~u_input.b.x, 7u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x | 34586u, u_input.b.x), 7u)], true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.a.zww + vec3<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-766f + 667f), _wgslsmith_f_op_f32(var_1.a * var_1.a))))));
    let var_3 = any(select(select(select(vec4<bool>(var_1.c, true, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)], var_1.c, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], true, false, var_1.c), false), vec4<bool>(true, var_1.d.x, false, true)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(13729u, 7u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 7u)], true), vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_1.b.b.x, 7u)], global0[_wgslsmith_index_u32(45324u, 7u)])), select(vec4<bool>(false, global0[_wgslsmith_index_u32(10559u, 7u)], false, var_1.d.x), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], var_1.c, var_1.d.x)), global0[_wgslsmith_index_u32(42643u ^ _wgslsmith_div_u32(u_input.b.x, 48043u), 7u)]), vec4<bool>(!(u_input.a >= u_input.a), -23511i < u_input.a, any(!vec2<bool>(var_1.d.x, false)), !var_1.c), _wgslsmith_f_op_f32(max(var_2.x, var_1.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.a.x)))));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-abs(vec2<i32>(6272i, u_input.a))));
}

