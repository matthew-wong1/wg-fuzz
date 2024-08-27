struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 5>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    global0 = !select(vec4<bool>(true | any(vec4<bool>(global0.x, false, arg_1.a.d.c.a, arg_1.a.b.a)), any(global0.zy), !(0u > u_input.e), global1[_wgslsmith_index_u32(~61924u, 5u)] || all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(arg_1.a.d.b.e, 5u)], true))), vec4<bool>(!(global1[_wgslsmith_index_u32(41414u, 5u)] | false), true, false, true), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(62920u, 5u)], global1[_wgslsmith_index_u32(46961u, 5u)], global0.x, false), vec4<bool>(global1[_wgslsmith_index_u32(28632u, 5u)], arg_1.a.d.b.a, true, arg_1.a.d.b.a), true), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 5u)], true, true), vec4<bool>(false, arg_1.a.b.a, global1[_wgslsmith_index_u32(u_input.c, 5u)], global0.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(global0.x, arg_1.a.d.c.a, global1[_wgslsmith_index_u32(u_input.c, 5u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.a.d.c.e, 5u)], false, global0.x), false), !vec4<bool>(false, false, arg_1.a.d.b.a, arg_1.a.b.a)), vec4<bool>(any(vec4<bool>(true, arg_1.a.d.b.a, true, false)), true, true, global0.x)));
    var var_0 = arg_1.a.b.c;
    var var_1 = -1i;
    var var_2 = vec3<i32>(~arg_1.a.e.x >> (23427u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(6685i, 72122i), ~u_input.d.yz), _wgslsmith_sub_i32(2147483647i, countOneBits(28768i)));
    var var_3 = (var_2.x != -54632i) | all(!vec3<bool>(arg_1.a.d.c.b != arg_1.a.b.b, true, true));
    return global1[_wgslsmith_index_u32(~74346u, 5u)];
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = vec4<bool>(true, select(func_3(select(vec2<i32>(1i, 1i), vec2<i32>(u_input.b.x, -7523i), vec2<bool>(global1[_wgslsmith_index_u32(60705u, 5u)], global0.x)) & abs(u_input.b.zz), Struct_4(Struct_3(arg_0.c, Struct_1(global0.x, arg_0.d, 1i, -1222f, 1u), arg_0.e, Struct_2(vec3<f32>(arg_2, -2946f, 716f), arg_0, Struct_1(arg_3, arg_0.b, u_input.a, -1678f, 1u)), u_input.b.yw))), _wgslsmith_f_op_f32(ceil(arg_2)) > _wgslsmith_f_op_f32(f32(-1f) * -1344f), any(!select(global0.xx, global0.zx, false))), !select(all(global0.xxx) | any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global0.x, false, global0.x)), global1[_wgslsmith_index_u32(max(u_input.e, 1u) >> (~29390u % 32u), 5u)], !(!arg_3)), global1[_wgslsmith_index_u32(~countOneBits(~_wgslsmith_add_u32(0u, arg_0.e)), 5u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, 800f, arg_0.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, 710f, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 1909f, arg_2))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(ceil(-158f))))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(31582u, u_input.c), vec2<u32>(0u, 69072u)) < 1u)) * 669f);
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-735f, _wgslsmith_f_op_f32(-512f - -610f), _wgslsmith_f_op_f32(func_2(Struct_1(true, -364f, u_input.b.x, 529f, 67592u), 453f, -647f, global1[_wgslsmith_index_u32(4294967295u, 5u)]))) - vec3<f32>(-338f, _wgslsmith_f_op_f32(-263f - 544f), _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, 687f, 1650f))) * vec3<f32>(-1104f, 296f, _wgslsmith_div_f32(1000f, 410f)))), Struct_1(false, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(-804f, -711f))), u_input.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -848f), 334f)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 60081u)), _wgslsmith_add_u32(1u, u_input.e))), Struct_1(true, 1f, u_input.d.x, _wgslsmith_f_op_f32(sign(353f)), _wgslsmith_div_u32(max(u_input.e, 1u) & ~u_input.c, min(24620u | u_input.e, u_input.c))));
    global1 = array<bool, 5>();
    global0 = !vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.e, 5u)], true, any(!global0.zzw), (select(var_0.c.c, -5230i, global0.x) > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -76766i), vec3<i32>(u_input.d.x, -1415i, 39178i))) | !any(vec2<bool>(true, false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, var_0.b.b, 854f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-1000f, var_0.c.d, var_0.c.d)) * var_0.a)))));
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~var_0.b.e), max(~reverseBits(vec2<u32>(u_input.e, u_input.e)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.e, u_input.e), vec2<u32>(76556u, u_input.c))))), 5u)];
    return Struct_5(var_0.c);
}

fn func_4(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-220f + 815f), arg_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.d)) + _wgslsmith_f_op_f32(-240f - -752f)), _wgslsmith_f_op_f32(arg_0.a.d * func_1().a.b)), func_1().a, func_1().a);
    var var_1 = -17712i;
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-7121i, -arg_0.a.c), u_input.b.xz), Struct_1(any(global0.wyx) | var_0.c.a, -1000f, _wgslsmith_sub_i32(u_input.d.x, abs(u_input.d.x)), -1000f, 0u), arg_0.a.e, Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(-982f, -221f)), _wgslsmith_f_op_f32(-107f * var_0.c.b), -297f))), func_1().a, Struct_1(!(true || arg_0.a.a), _wgslsmith_f_op_f32(-236f + _wgslsmith_f_op_f32(ceil(var_0.c.d))), firstLeadingBit(1i), -924f, _wgslsmith_mod_u32(~var_0.c.e, var_0.c.e))), max(u_input.d.yz, select(_wgslsmith_div_vec2_i32(vec2<i32>(24827i, var_0.c.c), u_input.d.xy) << (vec2<u32>(arg_0.a.e, 105195u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-1i, u_input.a)), !select(global0.yw, vec2<bool>(true, false), global0.wy))));
    let var_3 = Struct_3(abs(0i), func_1().a, var_2.c, var_2.d, -_wgslsmith_sub_vec2_i32(min(vec2<i32>(var_2.e.x, arg_0.a.c), var_2.e), u_input.d.yz));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.a) + var_2.d.a)))), var_3.b, var_3.d.b);
    return vec4<bool>(any(select(select(!vec4<bool>(var_3.b.a, false, var_0.b.a, false), select(vec4<bool>(false, var_3.b.a, arg_1, true), vec4<bool>(arg_1, false, false, true), vec4<bool>(true, global0.x, false, false)), vec4<bool>(false, global0.x, var_4.c.a, var_0.c.a)), vec4<bool>(false, true, global0.x, all(vec3<bool>(global1[_wgslsmith_index_u32(var_4.b.e, 5u)], true, true))), true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.e), var_4.b.e), 5u)], var_3.d.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1369f) - _wgslsmith_f_op_f32(step(-835f, arg_0.a.b))), _wgslsmith_div_f32(var_4.c.b, var_0.a.x)) == -686f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    global0 = func_4(func_1(), true);
    var var_0 = _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(327f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -376f)))));
    var var_1 = vec3<i32>(-30165i, -u_input.b.x, 5367i);
    let var_2 = Struct_5(func_1().a);
    var var_3 = vec3<u32>(~1u, ~(~var_2.a.e | 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(3631u), 4294967295u), ~vec2<u32>(var_2.a.e, 17894u) >> (vec2<u32>(var_2.a.e, 4294967295u) % vec2<u32>(32u)))) >> (vec3<u32>(~0u, _wgslsmith_add_u32(var_2.a.e, var_2.a.e), u_input.c) % vec3<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), -950f), 691f), -1682f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_1(false, -610f, u_input.a, -945f, var_2.a.e), var_2.a.d, var_2.a.d, false)), var_2.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(522f)) + _wgslsmith_f_op_f32(f32(-1f) * -812f)))));
    let var_5 = var_2.a.c != u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(0i, var_1.x, firstTrailingBit(countOneBits(firstTrailingBit(-29643i))), -36394i), -(~(max(20409i, var_2.a.c) & -var_1.x)));
}

