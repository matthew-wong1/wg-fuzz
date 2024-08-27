struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-13763i, 22510i, 1i, 29634i, i32(-2147483648), 0i, 1i, 37894i, -16243i, -1i, i32(-2147483648), 22822i, -42444i, 0i, i32(-2147483648));

var<private> global1: bool;

var<private> global2: array<u32, 12> = array<u32, 12>(1u, 10211u, 10174u, 56635u, 149331u, 0u, 83691u, 0u, 0u, 1u, 19857u, 0u);

var<private> global3: u32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>) -> vec2<f32> {
    global3 = 27229u;
    var var_0 = min(arg_0.yxx, arg_0.xxx);
    return vec2<f32>(711f, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x)))))));
}

fn func_2() -> u32 {
    var var_0 = !vec4<bool>(true, all(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))) || (u_input.c > reverseBits(u_input.a)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 1u, 17561u, u_input.b), 51760u, vec3<f32>(451f, -611f, -2382f)))) - vec2<f32>(432f, _wgslsmith_f_op_f32(f32(-1f) * -626f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(339f, 1380f) * vec2<f32>(357f, 1128f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1155f, -121f))))))));
    let var_2 = var_0.yxw;
    global3 = 22192u;
    var var_3 = abs(abs(~5582i));
    return 44180u;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global0 = array<i32, 15>();
    var var_0 = Struct_3(~(~vec4<u32>(63237u, 1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 0u), func_2())), vec2<i32>(firstLeadingBit(-23834i), global0[_wgslsmith_index_u32(~(~(~u_input.b)), 15u)]), arg_0, Struct_1(abs(global2[_wgslsmith_index_u32(u_input.b, 12u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, -1452f, 215f), vec4<f32>(-912f, 915f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1198f, arg_0) * vec4<f32>(-1617f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) - arg_0))), vec2<u32>(global2[_wgslsmith_index_u32(~0u << (_wgslsmith_div_u32(1u, 32682u) % 32u), 12u)], abs(reverseBits(global2[_wgslsmith_index_u32(1u, 12u)])))), vec3<i32>(u_input.a, 1i, _wgslsmith_add_i32(firstTrailingBit(u_input.a), ~(-1i))) ^ _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], 2147483647i) ^ vec3<i32>(1i, u_input.a, u_input.a)), vec3<i32>(-2147483647i, u_input.a, -2147483647i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.c), vec3<i32>(-12944i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], u_input.c))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(round(-1159f));
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(~var_0.a, vec4<u32>(0u, u_input.b, 26768u, ~(58799u ^ var_0.a.x))), abs(countOneBits(vec2<i32>(select(2147483647i, var_0.e.x, false), countOneBits(15452i)))), var_0.c, Struct_1(_wgslsmith_mod_u32(1u, ~0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-1046f + var_0.d.b.x))), arg_0, firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.ww, var_0.d.d), vec2<u32>(51370u, var_0.d.d.x)))), var_0.e);
    return _wgslsmith_f_op_vec3_f32(var_0.d.b.zyw * var_0.d.b.yyw);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    global2 = array<u32, 12>();
    var var_0 = global2[_wgslsmith_index_u32(1u, 12u)];
    var_0 = arg_3;
    var_0 = firstTrailingBit(~20674u);
    var var_1 = _wgslsmith_mod_vec2_u32(select((vec2<u32>(6143u, arg_3) ^ vec2<u32>(u_input.b, arg_3)) | vec2<u32>(global2[_wgslsmith_index_u32(100844u, 12u)], 6961u), reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(71793u, 12u)], 4294967295u) | vec2<u32>(global2[_wgslsmith_index_u32(arg_3, 12u)], arg_3)), vec2<bool>(arg_0.x < -1675f, arg_0.x >= arg_0.x)) ^ _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 12u)], 22424u)), vec2<u32>(51304u, _wgslsmith_mult_u32(u_input.b, global2[_wgslsmith_index_u32(7704u, 12u)]))), abs(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(5271u, 133271u), vec2<u32>(arg_3, arg_3)), abs(vec2<u32>(25334u, u_input.b)), vec2<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)])))));
    return !select(arg_1.yw, arg_1.yy, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1025f, 1044f, 787f) - vec3<f32>(116f, 697f, -145f)) + _wgslsmith_f_op_vec3_f32(func_1(-1408f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 916f, -1860f), vec3<f32>(-2002f, -766f, -1543f), vec3<bool>(true, true, true)))), true)), vec3<f32>(1f, 1f, 1f)), select(!vec4<bool>(true, true, true, 1i > global0[_wgslsmith_index_u32(0u, 15u)]), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))), false), Struct_2(select(abs(vec4<i32>(u_input.a, -8796i, u_input.c, -59766i)), reverseBits(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8593u, 12u)], 15u)], global0[_wgslsmith_index_u32(8369u, 15u)], u_input.c, -2147483647i))), false | any(vec3<bool>(true, false, false)))), countOneBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 12u)], u_input.b)), vec2<u32>(55857u, 114076u) | vec2<u32>(global2[_wgslsmith_index_u32(25918u, 12u)], 0u))));
    var var_1 = select(select(vec3<bool>(true, true, reverseBits(u_input.b) != ~u_input.b), !select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), !vec3<bool>(true, false, !var_0.x)), !(!select(!vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), var_0.x), func_4(vec3<f32>(1373f, 1515f, 459f), vec4<bool>(var_0.x, var_0.x, true, var_0.x), Struct_2(vec4<i32>(0i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 15u)], global0[_wgslsmith_index_u32(92920u, 15u)])), u_input.b).x)), !(!select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), false)));
    var var_2 = -1i;
    let var_3 = true;
    var var_4 = !var_3;
    let var_5 = select(select(select(vec4<bool>(var_1.x, var_1.x, true, any(vec3<bool>(false, var_1.x, var_0.x))), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true), select(select(select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, false, true, var_3), vec4<bool>(var_3, false, var_1.x, true)), select(vec4<bool>(var_0.x, var_1.x, var_0.x, var_3), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true), select(vec4<bool>(var_1.x, var_0.x, true, var_0.x), vec4<bool>(false, var_1.x, var_0.x, var_3), vec4<bool>(var_0.x, var_3, var_1.x, true))), !(!vec4<bool>(false, false, var_3, false)), vec4<bool>(true, var_0.x, !var_1.x, true)), vec4<bool>(!any(vec3<bool>(var_1.x, var_1.x, true)), true, !(u_input.a <= -25320i), true)), vec4<bool>(u_input.a < 51635i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-940f, -117f, true))) < _wgslsmith_f_op_f32(-1222f + -243f), !select(false, var_0.x, true && var_0.x), all(vec4<bool>(true, var_0.x, !var_3, true))), select(vec4<bool>(var_1.x, select(u_input.b == 0u, true && var_1.x, var_3), false, false), select(select(vec4<bool>(false, var_0.x, var_3, true), vec4<bool>(var_0.x, true, var_0.x, true), all(vec4<bool>(false, true, var_0.x, false))), !select(vec4<bool>(var_3, var_0.x, false, var_0.x), vec4<bool>(false, var_1.x, var_1.x, var_0.x), vec4<bool>(var_3, true, var_1.x, var_1.x)), true), vec4<bool>(select(any(vec4<bool>(false, var_1.x, true, true)), var_0.x, true), all(!vec3<bool>(var_1.x, true, var_1.x)), true, any(var_0))));
    global2 = array<u32, 12>();
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1033f * 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-756f, -568f)))), _wgslsmith_f_op_f32(f32(-1f) * -1160f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, select(global2[_wgslsmith_index_u32(53113u, 12u)], u_input.b, false)) << (_wgslsmith_add_u32(18989u >> (u_input.b % 32u), global2[_wgslsmith_index_u32(~1u, 12u)]) % 32u), 15u)], u_input.a, var_6.yx, var_6.zx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, var_6.x, var_6.x, var_6.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, var_6.x, var_6.x, var_6.x))))));
}

