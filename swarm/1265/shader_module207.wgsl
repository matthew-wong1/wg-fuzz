struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec4<u32> {
    let var_0 = firstTrailingBit(-u_input.b);
    var var_1 = vec2<f32>(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))));
    global0 = array<vec2<u32>, 10>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(countOneBits(1u), 10u)], ~global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(abs(15411u), 10u)] << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(1u, 10u)], vec2<u32>(20211u, arg_1)), select(vec2<u32>(arg_1, arg_1), global0[_wgslsmith_index_u32(61681u, 10u)], true)) % vec2<u32>(32u))), -(~var_0), countOneBits(abs(vec4<u32>(61050u, 0u, arg_1, 0u) ^ vec4<u32>(arg_1, arg_1, 4294967295u, 10915u)) & ~vec4<u32>(arg_1, arg_1, 14996u, arg_1)));
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(~var_2.d), var_2.d), ~(~(~vec4<u32>(1u, arg_1, arg_1, var_2.d.x))));
    return var_2.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> bool {
    global0 = array<vec2<u32>, 10>();
    var var_0 = func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1273f))), -389f), ~(~countOneBits(~0u)));
    var_0 = abs(~_wgslsmith_mod_vec4_u32(select(func_3(vec2<f32>(arg_0.x, arg_0.x), 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 11050u), vec4<u32>(1u, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, false, true, arg_1.x)), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u))));
    return arg_1.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.a, arg_0))), arg_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(143f * -358f))))), _wgslsmith_f_op_f32(arg_3.a * arg_0));
    var var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(sign(arg_3.a)), _wgslsmith_div_f32(arg_0, var_1.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(519f, arg_3.a, var_0.x), vec3<f32>(var_1.a, arg_0, -1000f))))))));
    var var_2 = !all(vec3<bool>(true, any(vec3<bool>(false, false, arg_2)), max(arg_3.b.x, arg_3.b.x) > _wgslsmith_dot_vec4_u32(arg_3.d, vec4<u32>(var_1.d.x, 4294967295u, 124679u, 4294967295u))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-563f * 908f), _wgslsmith_f_op_f32(f32(-1f) * -471f))))), abs(_wgslsmith_clamp_vec2_u32(min(~vec2<u32>(0u, var_1.d.x), var_1.b), ~(vec2<u32>(18496u, var_1.b.x) | vec2<u32>(74360u, 47304u)), countOneBits(firstLeadingBit(var_1.d.zz)))), _wgslsmith_mult_vec2_i32(abs(var_1.c << (arg_3.d.zw % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(firstLeadingBit(min(vec2<i32>(-10784i, u_input.b.x), vec2<i32>(29424i, 9829i))), -(vec2<i32>(arg_3.c.x, 1i) >> (global0[_wgslsmith_index_u32(12233u, 10u)] % vec2<u32>(32u))))), ~select(_wgslsmith_add_vec4_u32(arg_3.d | vec4<u32>(var_1.d.x, 16721u, arg_3.b.x, 36331u), arg_3.d ^ vec4<u32>(103216u, 4294967295u, var_1.b.x, 0u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_3.d.x, 51661u, arg_3.b.x), var_1.d)), false));
    return countOneBits(select(abs(_wgslsmith_sub_u32(firstTrailingBit(var_1.b.x), arg_3.d.x)), 29265u, all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, global1.x), vec3<bool>(true, false, true), arg_1), vec3<bool>(arg_2, arg_2, global1.x)))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = Struct_1(-1120f, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(1u, 10u)], vec2<u32>(1u, arg_0)), vec2<u32>(func_4(_wgslsmith_f_op_f32(min(-1316f, arg_2)), !global1.x, func_2(vec4<f32>(arg_2, 1000f, arg_2, arg_2), global1.zz), Struct_1(arg_2, vec2<u32>(1u, arg_0), vec2<i32>(0i, 1i), vec4<u32>(arg_0, 0u, 24729u, arg_0))), arg_0)), vec2<i32>(0i, ~arg_3), firstTrailingBit(func_3(vec2<f32>(104f, 1682f), 0u)) ^ (_wgslsmith_add_vec4_u32(~vec4<u32>(20046u, 36449u, 12101u, 1u), vec4<u32>(arg_0, arg_0, 68740u, 1u)) ^ abs(~vec4<u32>(1u, arg_0, 17350u, arg_0))));
    global0 = array<vec2<u32>, 10>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(839f - _wgslsmith_f_op_f32(-1000f * -200f)))), abs(global0[_wgslsmith_index_u32(~1u, 10u)]), u_input.d.wy, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~var_0.d, var_0.d), var_0.d ^ (var_0.d >> ((var_0.d >> (vec4<u32>(4294967295u, 1u, 1u, 13705u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1142f, _wgslsmith_div_f32(-1638f, arg_2)))))), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(35374u, 38429u) << (vec2<u32>(arg_0, 7582u) % vec2<u32>(32u)), vec2<u32>(arg_0, 52885u))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_clamp_i32(19054i, 0i, u_input.d.x), u_input.c ^ -1i), (_wgslsmith_add_vec2_i32(u_input.d.zx, vec2<i32>(-7201i, -21230i)) >> (func_3(vec2<f32>(arg_2, -746f), 4294967295u).zw % vec2<u32>(32u))) ^ var_0.c, -(~min(vec2<i32>(u_input.d.x, arg_3), vec2<i32>(var_0.c.x, arg_3)))), var_0.d ^ (~var_0.d & vec4<u32>(~47947u, 44712u, var_0.b.x & var_0.d.x, 78130u)));
    var var_1 = _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - var_0.a)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(false, any(!(!global1.xy)), global1.x);
    global1 = select(select(vec3<bool>(global1.x, !global1.x, true), !vec3<bool>(true, false, any(global1.yx)), func_1(min(firstTrailingBit(29451u), 4294967295u), select(true, false, u_input.b.x <= 0i), _wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(trunc(-1000f))), ~2147483647i)), select(vec3<bool>(true, true, !func_1(1u, global1.x, -133f, 2147483647i)), vec3<bool>(~(-1737i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.c, -1i, 48204i), vec4<i32>(-20816i, u_input.b.x, -49091i, -1i)), any(vec4<bool>(global1.x, false, true, true)), _wgslsmith_add_i32(-2147483647i, 17033i) > (u_input.a.x >> (46003u % 32u))), any(!vec2<bool>(global1.x, true))), global1.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2051f - _wgslsmith_f_op_f32(f32(-1f) * -942f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1329f, -2341f, global1.x)))))), select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(20122u, 4294967295u)), vec2<u32>(0u, 58953u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~vec2<u32>(4294967295u, 52174u)), ~global0[_wgslsmith_index_u32(4294967295u, 10u)], global1.xz), u_input.b >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec4<u32>(~1u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 4294967295u), 1u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 63699u, 1u, 11135u), vec4<u32>(0u, 0u, 1u, 32646u)))), ~max(1u, 0u), ~(~1205u >> (1u % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(var_0.a)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(0u), select(_wgslsmith_sub_u32(var_0.b.x, _wgslsmith_div_u32(16014u, 33277u)), var_0.b.x, false)), 10u)], -u_input.b | -var_0.c, ~vec4<u32>(var_0.b.x & ~0u, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1278f, 134f)), reverseBits(var_0.b.x)).x, ~_wgslsmith_sub_u32(var_0.d.x, 0u), countOneBits(max(1u, 1u))));
    let var_2 = firstTrailingBit(firstLeadingBit(var_1.c));
    let var_3 = var_0;
    let var_4 = firstLeadingBit(~var_3.b.x);
    var var_5 = var_0;
    let var_6 = var_5.d.xxx << (~vec3<u32>(var_3.b.x | _wgslsmith_add_u32(1u, var_0.d.x), ~var_5.d.x, 4294967295u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-326f, -1414f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_1.a))))))), abs(var_4), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(728f, var_3.a, global1.x)) + _wgslsmith_f_op_f32(var_0.a - var_3.a)))), -116f), ~var_2.x);
}

