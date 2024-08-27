struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 25>;

var<private> global2: array<vec2<f32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(-567f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(600f * global1[_wgslsmith_index_u32(7533u, 25u)]), 1000f)) + global1[_wgslsmith_index_u32(~(~u_input.a.x), 25u)]) - global1[_wgslsmith_index_u32(u_input.a.x, 25u)]));
    var var_0 = vec3<bool>(!((1i <= _wgslsmith_mod_i32(-2147483647i, arg_0)) && (-arg_0 > arg_0)), !(!any(vec2<bool>(true, true))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~u_input.a.zxx), u_input.a.xxz), 2u)];
    global0 = var_1.x;
    var var_2 = Struct_1(any(var_0.xz), u_input.a.x, vec2<bool>(true, var_0.x));
    return ~firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 28119u), u_input.a.xw), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xy, u_input.a.wy), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 766u, 12609u, u_input.a.x), u_input.a))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    global1 = array<f32, 25>();
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(select(u_input.a.yw << (u_input.a.wy % vec2<u32>(32u)), u_input.a.zw | vec2<u32>(4294967295u, arg_0), arg_1.x <= -18885i), func_3(arg_1.x)), firstTrailingBit(func_3(~21296i))) ^ ~min(u_input.a.zz, select(abs(vec2<u32>(u_input.a.x, u_input.a.x)), countOneBits(u_input.a.yz), false));
    var var_1 = Struct_2(Struct_1(!(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.x), arg_1.yw) <= arg_1.x), var_0.x, vec2<bool>(false, true)), arg_1 & vec4<i32>(-arg_1.x, -28759i, firstTrailingBit(arg_1.x), arg_1.x), global1[_wgslsmith_index_u32(~arg_0, 25u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), global1[_wgslsmith_index_u32(0u ^ u_input.a.x, 25u)]), _wgslsmith_f_op_f32(floor(505f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 25u)] - 1640f), global1[_wgslsmith_index_u32(46463u, 25u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1509f, -1572f, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(13455u, 25u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], -436f, global1[_wgslsmith_index_u32(0u, 25u)]))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 25u)], 2193f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], -1665f))), any(vec2<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, false)))))), var_0.x);
    let var_2 = Struct_3(2147483647i, Struct_2(var_1.a, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1443f, _wgslsmith_f_op_f32(-var_1.d.x)))), var_1.d, _wgslsmith_mult_u32(1u, abs(59505u))), select(!select(vec4<bool>(var_1.a.c.x, false, false, false), !vec4<bool>(false, var_1.a.c.x, true, false), any(vec2<bool>(true, true))), !select(!vec4<bool>(var_1.a.a, true, true, false), select(vec4<bool>(var_1.a.a, var_1.a.a, true, var_1.a.c.x), vec4<bool>(true, var_1.a.a, false, var_1.a.c.x), var_1.a.c.x), vec4<bool>(false, false, false, var_1.a.a)), var_1.a.a), Struct_1(4294967295u != min(1u >> (var_0.x % 32u), 0u), u_input.a.x, var_1.a.c), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(523f)) < _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 25u)] * 1626f), ~27716u, vec2<bool>(true, true)), vec4<i32>(-2147483647i, ~select(var_1.b.x, 10416i, false), arg_1.x ^ -15237i, ~abs(var_1.b.x)), global1[_wgslsmith_index_u32(3840u, 25u)], vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_1.e, 25u)])))), var_1.d.x, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x ^ var_0.x, 25u)])), -539f), 63672u));
    global1 = array<f32, 25>();
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x * arg_1.x), _wgslsmith_f_op_f32(step(-296f, _wgslsmith_f_op_f32(1127f + arg_2.x)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(select(1646f, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true))))) * var_0)));
    let var_2 = _wgslsmith_clamp_vec3_u32(countOneBits(select(u_input.a.zyy, u_input.a.zxw, !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), u_input.a.wwy ^ u_input.a.wxx, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, 58457u), u_input.a.xwy));
    let var_3 = func_2(1u, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, -1i, arg_0), vec4<i32>(arg_0, arg_0, arg_0, 13476i)), ~(~vec4<i32>(1i, arg_0, arg_0, -1i))) & -((vec4<i32>(arg_0, arg_0, 2147483647i, arg_0) | vec4<i32>(-5633i, -20413i, arg_0, -36480i)) ^ vec4<i32>(arg_0, arg_0, arg_0, 54607i)));
    let var_4 = select(!(!(!(!vec4<bool>(var_3.a, true, var_3.c.x, false)))), select(!(!vec4<bool>(var_3.c.x, true, true, var_3.a)), vec4<bool>(any(vec3<bool>(false, false, false)), false, !(false && var_3.c.x), !any(vec3<bool>(false, false, false))), select(!select(vec4<bool>(var_3.a, true, true, var_3.a), vec4<bool>(false, true, var_3.a, true), vec4<bool>(true, true, true, false)), !(!vec4<bool>(false, var_3.c.x, false, true)), vec4<bool>(var_3.c.x, false, !var_3.c.x, true))), select(select(vec4<bool>(select(var_3.a, var_3.c.x, false), false, var_2.x >= arg_3, !var_3.a), select(select(vec4<bool>(false, true, false, var_3.a), vec4<bool>(var_3.c.x, false, true, var_3.c.x), vec4<bool>(true, true, var_3.c.x, false)), select(vec4<bool>(true, var_3.a, true, true), vec4<bool>(true, true, true, var_3.c.x), vec4<bool>(var_3.c.x, false, true, var_3.c.x)), select(vec4<bool>(true, false, var_3.a, var_3.c.x), vec4<bool>(false, var_3.c.x, true, false), vec4<bool>(false, false, false, false))), !(!vec4<bool>(var_3.a, var_3.a, true, false))), !(!vec4<bool>(var_3.a, var_3.a, var_3.c.x, var_3.a)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(min(var_0, 1000f))) < -301f));
    return 9462i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f - global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))), global1[_wgslsmith_index_u32(min(~(u_input.a.x | u_input.a.x), u_input.a.x), 25u)]), 520f);
    global1 = array<f32, 25>();
    var var_1 = vec4<bool>(true, _wgslsmith_f_op_f32(387f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), -518f))) > _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 25u)] + _wgslsmith_f_op_f32(f32(-1f) * -286f)), true, false);
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(func_1(2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], vec3<f32>(-1031f, 169f, 516f), u_input.a.x), 2147483647i), ~_wgslsmith_add_vec2_i32(vec2<i32>(35664i, -1i), vec2<i32>(1i, 1i))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 31276i) << (vec2<u32>(28567u, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(-38890i, -31249i)) ^ vec2<i32>(1i, 1i)), ~countOneBits(abs(-vec2<i32>(-1i, 40601i))));
    let var_3 = abs(select(min(~(~vec2<u32>(21325u, 1u)), vec2<u32>(27103u, u_input.a.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 81396u), ~u_input.a.yw), !var_1.zz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-879f - _wgslsmith_f_op_f32(min(var_0.x, 571f))), _wgslsmith_f_op_f32(step(-471f, -1140f)))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u | ~var_3.x, 25u)])), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u ^ u_input.a.x, 1u) & reverseBits(4294967295u << (max(var_3.x, 11588u) % 32u)), 2u)], ~vec3<u32>(29081u >> ((1u | u_input.a.x) % 32u), 20732u, _wgslsmith_sub_u32(28306u, var_3.x) & 11196u));
}

