struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: array<f32, 23>;

var<private> global3: vec2<i32>;

var<private> global4: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = vec4<bool>(select(arg_0.b.x, all(select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(false, true, global1.x, false), true)), all(!vec3<bool>(global1.x, true, true))) | global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-630f, -1000f, arg_0.b.x)))) == _wgslsmith_f_op_f32(abs(806f)), any(vec4<bool>(select(global1.x & global1.x, global1.x, all(vec3<bool>(global1.x, arg_0.b.x, false))), any(vec2<bool>(arg_0.b.x, global1.x)), !any(arg_0.b), -317f <= _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_0.c, 23u)], global2[_wgslsmith_index_u32(arg_0.c, 23u)], arg_0.b.x)))), false);
    global4 = vec4<i32>(~global3.x, abs(~(~(~global3.x))), _wgslsmith_sub_i32(min(arg_0.a, ~global3.x), -2147483647i), -_wgslsmith_mult_i32(~select(-20374i, arg_0.a, true), 40486i));
    var var_0 = Struct_1(u_input.c, vec2<bool>(select(true, !all(global1.zy), arg_0.b.x), any(select(global1.xz, vec2<bool>(arg_0.b.x, false), vec2<bool>(true, arg_0.b.x)))), _wgslsmith_add_u32(~(~(~4294967295u)), 0u));
    var var_1 = _wgslsmith_mult_i32(1i, ~firstLeadingBit(global3.x));
    var var_2 = Struct_1(~reverseBits(_wgslsmith_div_i32(3992i, global4.x)), global1.yx, ~_wgslsmith_mult_u32(87440u, var_0.c << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(53299u, 4294967295u, var_0.c, arg_0.c)) % 32u)));
    return arg_0.b.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0, arg_0, u_input.b.zzy, ~arg_0.c, global4.wy);
    var var_1 = Struct_2(arg_0, var_0.a, var_0.c, arg_0.c, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e.x, -17577i), var_0.e), -_wgslsmith_add_vec2_i32(global4.wz, var_0.e) >> (var_0.c.yx % vec2<u32>(32u))));
    global4 = -vec4<i32>(u_input.c, u_input.c, countOneBits(u_input.c), 2147483647i);
    var_1 = Struct_2(Struct_1(u_input.c, vec2<bool>(select(global1.x, all(vec3<bool>(false, false, false)), false | var_0.a.b.x), arg_0.b.x), u_input.b.x), var_1.b, max(select(select(var_0.c, var_0.c, false), ~var_0.c, func_3(var_1.a)), select(~var_1.c, select(vec3<u32>(var_1.c.x, 1u, var_1.c.x), vec3<u32>(21930u, 1u, 7513u), global1.x), select(vec3<bool>(global1.x, arg_0.b.x, global1.x), vec3<bool>(false, true, var_0.b.b.x), global1.xyw))) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~14522u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.d, 0u), ~reverseBits(0u)), global4.zy);
    var_0 = Struct_2(var_0.b, Struct_1(~u_input.c, global1.xy, arg_0.c), vec3<u32>(_wgslsmith_div_u32(~(~61348u), 11623u), ~0u, ~var_1.b.c), var_0.b.c, vec2<i32>(arg_0.a, -25724i | global4.x));
    return Struct_1(-select(select(_wgslsmith_mod_i32(-1i, 63597i), 2147483647i, false), _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(4021i, global3.x)), true), !vec2<bool>(true, all(vec4<bool>(var_0.a.b.x, global1.x, arg_0.b.x, false)) != any(vec4<bool>(true, var_0.a.b.x, arg_0.b.x, true))), u_input.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(~(~countOneBits(64275u)), 23u)], global2[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(arg_1.c)), 23u)], _wgslsmith_div_f32(global2[_wgslsmith_index_u32(24612u, 23u)], -361f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(854f, 146f, _wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1337f, arg_0.x, global1.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(23028u, 23u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1108f));
    global1 = vec4<bool>(all(global1.wz), select(!func_2(Struct_1(45901i, global1.zx, arg_1.c)).b.x || (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, arg_1.c), u_input.b.zx) == _wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.zyx)), !func_2(Struct_1(-14789i, global1.wx, u_input.e)).b.x, !(!(!arg_1.b.x))), false, -22895i != global4.x);
    global2 = array<f32, 23>();
    return func_2(arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = -_wgslsmith_add_vec4_i32(-vec4<i32>(abs(7290i), -9455i, global4.x, arg_3.a), vec4<i32>(0i, arg_0.a, func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(308f, 643f))), func_2(arg_3)).a, func_4(vec2<f32>(440f, 725f), arg_3).a ^ -1i));
    var var_1 = !func_2(func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, 1094f) - vec2<f32>(global2[_wgslsmith_index_u32(arg_0.c, 23u)], 1251f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(10304u, 23u)], global2[_wgslsmith_index_u32(arg_3.c, 23u)]) * vec2<f32>(global2[_wgslsmith_index_u32(arg_3.c, 23u)], global2[_wgslsmith_index_u32(18599u, 23u)])))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1189f, -382f)), Struct_1(0i, global1.zx, arg_3.c)))).b;
    let var_2 = arg_3;
    var var_3 = Struct_2(arg_0, Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(105i, var_2.a, 19214i, var_0.x), firstLeadingBit(vec4<i32>(25225i, arg_3.a, var_2.a, 11597i))), ~(~vec4<i32>(arg_3.a, arg_0.a, 0i, global3.x))), var_2.b, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.c, arg_3.c), vec2<u32>(arg_1, u_input.a), vec2<bool>(arg_3.b.x, false)), ~vec2<u32>(0u, arg_1))), vec3<u32>(~var_2.c, abs(44136u & u_input.a), arg_1) ^ ~(~vec3<u32>(arg_1, 133534u, var_2.c)), u_input.a, global4.zy);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(~var_3.b.c & (var_2.c << (u_input.e % 32u)), 23u)], global2[_wgslsmith_index_u32(1159u, 23u)], 761f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(247f)), global2[_wgslsmith_index_u32(~u_input.e, 23u)], -1000f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(518f, -1107f, global2[_wgslsmith_index_u32(1u, 23u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], global2[_wgslsmith_index_u32(24437u, 23u)], -708f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], 576f, global2[_wgslsmith_index_u32(var_3.c.x, 23u)])))), select(select(global1.wwx, global1.zxx, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(!arg_2.wxz, select(vec3<bool>(arg_3.b.x, true, false), vec3<bool>(global1.x, false, true), true), global1.x), vec3<bool>(select(true, true, var_2.b.x), func_4(vec2<f32>(global2[_wgslsmith_index_u32(var_3.d, 23u)], -1758f), var_3.b).b.x, all(global1.zww)))))));
    return abs(arg_3.a);
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global2 = array<f32, 23>();
    global1 = !(!(!vec4<bool>(arg_0.x, true, any(global1.xyz), select(global1.x, global1.x, false))));
    let var_0 = !(!(!all(arg_0.zy)));
    var var_1 = _wgslsmith_mod_i32(-func_5(func_4(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.d.x, 23u)]), func_2(Struct_1(-1i, global1.zx, u_input.d.x))), (1u >> (u_input.e % 32u)) >> (u_input.e % 32u), select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0, false, var_0, false), vec4<bool>(true, var_0, true, false)), !vec4<bool>(global1.x, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, true, true)), Struct_1(global3.x, vec2<bool>(false, arg_0.x), ~26920u)), global4.x);
    let var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(abs(4294967295u), 23u)])), 2389f), Struct_1(~(~func_4(vec2<f32>(global2[_wgslsmith_index_u32(0u, 23u)], -445f), Struct_1(u_input.c, global1.wx, u_input.a)).a), select(!arg_0.xy, !arg_0.yy, !func_4(vec2<f32>(401f, global2[_wgslsmith_index_u32(u_input.e, 23u)]), Struct_1(2147483647i, arg_0.zy, u_input.d.x)).b), ~(_wgslsmith_div_u32(29810u, 107948u) & u_input.b.x)));
    return -1786f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(all(global1.xx), true && global1.x, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1297f - _wgslsmith_f_op_f32(f32(-1f) * -1073f)) * -1452f)), global2[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]), vec2<f32>(-207f, global2[_wgslsmith_index_u32(11142u, 23u)])))))), func_4(vec2<f32>(_wgslsmith_div_f32(-1000f, global2[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 23u)])), func_2(func_2(Struct_1(64862i, vec2<bool>(false, global1.x), 5607u))))).c, 23u)]);
    var var_1 = Struct_2(Struct_1(global3.x, global1.xy, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.ywy, u_input.b.wxw), 64428u, ~reverseBits(25499u))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-410f, 163f))), Struct_1(global4.x, vec2<bool>(any(global1.wx), true), _wgslsmith_mod_u32(0u, abs(118743u)))), u_input.b.xyy, abs(u_input.d.x), countOneBits(-vec2<i32>(~global4.x, _wgslsmith_div_i32(60196i, u_input.c))));
    let var_2 = ~_wgslsmith_mult_u32(~var_1.d, _wgslsmith_div_u32(~(~1u), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global2[_wgslsmith_index_u32(0u, 23u)])), Struct_1(2147483647i, var_1.b.b, 4294967295u)).c));
    let var_3 = vec2<u32>(firstLeadingBit(49117u), ~(u_input.e >> (reverseBits(u_input.d.x) % 32u)));
    var var_4 = select(vec3<bool>(!(_wgslsmith_f_op_f32(min(-938f, 194f)) != _wgslsmith_f_op_f32(1488f - var_0.x)), true, global1.x), !(!(!(!vec3<bool>(false, false, var_1.b.b.x)))), vec3<bool>(global1.x, true, var_1.a.b.x));
    var_1 = Struct_2(Struct_1(select(_wgslsmith_mult_i32(var_1.b.a, -2541i), _wgslsmith_div_i32(-1i, global4.x), !var_4.x) ^ min(func_2(var_1.a).a, ~u_input.c), var_4.zy, 79153u), var_1.b, u_input.b.yzx, var_3.x, vec2<i32>(22210i, firstLeadingBit(~47435i)) ^ var_1.e);
    var var_5 = func_2(Struct_1(3258i, func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 23u)], 1478f), vec2<f32>(131f, -626f)), vec2<f32>(var_0.x, global2[_wgslsmith_index_u32(63611u, 23u)])), var_1.b).b, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, -1556f, -1562f))))), vec4<f32>(927f, -1702f, _wgslsmith_f_op_f32(step(-1085f, -1551f)), _wgslsmith_f_op_f32(f32(-1f) * -144f))));
}

