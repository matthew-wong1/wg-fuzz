struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<i32>(31626i, 2147483647i, 0i), false, 59828u, false, vec4<i32>(-17747i, -36344i, 0i, 2147483647i)), Struct_1(vec3<i32>(1554i, -3556i, 33556i), true, 1u, true, vec4<i32>(31258i, 0i, 2147483647i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), -22833i, i32(-2147483648)), true, 1u, false, vec4<i32>(31001i, i32(-2147483648), 1622i, 2147483647i)), Struct_1(vec3<i32>(-1i, -31731i, -48924i), false, 462u, true, vec4<i32>(-38325i, 2147483647i, -7581i, -37127i)), Struct_1(vec3<i32>(13961i, -23265i, 21403i), false, 4294967295u, true, vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i)), Struct_1(vec3<i32>(-16333i, 39536i, -26689i), true, 69092u, false, vec4<i32>(2147483647i, 66384i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-1i, -1i, -1i), true, 4294967295u, true, vec4<i32>(-61108i, -1i, 34099i, 0i)), Struct_1(vec3<i32>(-44694i, 883i, 2147483647i), true, 4294967295u, false, vec4<i32>(1i, 20703i, 0i, 1i)));

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1.d;
    let var_1 = max(-arg_1.e.yxz, vec3<i32>(_wgslsmith_div_i32(u_input.d.x, _wgslsmith_add_i32(~arg_2.a.x, 2147483647i & arg_1.a.x)), min(arg_2.e.x, -4888i), u_input.c.x));
    var var_2 = 10933i;
    global3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1146f, -311f, -2262f, -721f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global1.x, global1.x, 1055f), vec4<f32>(943f, 154f, global3.x, -552f)))))))));
    global2 = array<Struct_1, 8>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), all(select(!vec3<bool>(arg_0.x, arg_0.x, true), !arg_0, vec3<bool>(true, true, false))))));
}

fn func_2(arg_0: f32) -> i32 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))), Struct_1(~vec3<i32>(-26092i, u_input.d.x, u_input.d.x), false, ~u_input.b, true, select(vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.c.x), u_input.d, vec4<bool>(false, false, true, false))), global0[_wgslsmith_index_u32(4294967295u, 13u)])) - _wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, 254f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1497f + arg_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)))));
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(620f)), _wgslsmith_f_op_f32(global3.x + global1.x), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global1.x, 1558f, global3.x)), vec4<bool>(true, true, true, true))))));
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0, false))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_0))), 411f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(global3.x, 1153f)))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 105f, global3.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -778f, global3.x, arg_0)))))), vec4<bool>(all(vec4<bool>(true, true, true, true)), !(~4294967295u == _wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.a.x)), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))))));
    var var_0 = u_input.d.wz;
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(abs(0u | (u_input.b << (0u % 32u))), _wgslsmith_div_u32(countOneBits(~11387u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 46590u), vec4<u32>(u_input.a.x, 55486u, 50709u, 30042u))), u_input.b), u_input.b, ~u_input.b);
    return var_0.x;
}

fn func_1() -> bool {
    var var_0 = -vec3<i32>(max(func_2(161f), u_input.d.x), ~_wgslsmith_dot_vec2_i32(countOneBits(u_input.d.xx), u_input.c.xy & vec2<i32>(u_input.d.x, u_input.d.x)), 34516i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x)))), -1427f, _wgslsmith_f_op_f32(global3.x + global1.x)));
    let var_2 = Struct_1(u_input.d.xzy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(sign(global3.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f - _wgslsmith_f_op_f32(f32(-1f) * -1774f)) * global1.x), 0u, all(vec4<bool>(true, true, select(true, false, true), all(vec3<bool>(false, false, false)))), u_input.d);
    let var_3 = global1.x;
    var var_4 = Struct_1(var_2.e.yxy, all(!select(select(vec2<bool>(false, var_2.d), vec2<bool>(false, var_2.b), vec2<bool>(true, var_2.d)), !vec2<bool>(var_2.d, var_2.d), vec2<bool>(false, var_2.d))), _wgslsmith_dot_vec2_u32(~(reverseBits(vec2<u32>(var_2.c, 0u)) | _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c, var_2.c), u_input.a)), _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a.x, 1u)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)))), var_2.d, ~countOneBits(var_2.e));
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1((vec3<i32>(-u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(16094i, u_input.c.x, u_input.d.x, u_input.d.x)), 0i) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33507u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 4950u, u_input.a.x, u_input.a.x)), 0u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x)) % vec3<u32>(32u))) ^ -vec3<i32>(1i, -u_input.d.x, _wgslsmith_mod_i32(-44534i, u_input.c.x)), true, ~10876u, true && func_1(), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36506i, u_input.c.x), firstLeadingBit(u_input.d.zy)), 39876i ^ u_input.d.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-866f + -1802f) * _wgslsmith_f_op_f32(-global1.x))), u_input.c.x));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global3.x))) + _wgslsmith_div_f32(_wgslsmith_div_f32(1288f, _wgslsmith_f_op_f32(1992f * global3.x)), -566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 683f) + _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(func_3(!select(!vec3<bool>(var_0.d, var_0.d, false), vec3<bool>(true, false, var_0.d), false), global0[_wgslsmith_index_u32(var_0.c, 13u)], Struct_1(var_0.e.zwz, func_1(), _wgslsmith_mod_u32(1u & var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(52160u, 20557u))), var_0.d, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, var_0.a.x, 1i, u_input.c.x), vec4<i32>(-48640i, var_0.e.x, -1i, u_input.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-754f, -501f) - -1221f) + global1.x));
    global0 = array<Struct_1, 13>();
    let var_1 = global1.zxx;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, var_1.x) * vec4<f32>(-310f, var_1.x, global1.x, -151f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global1.x, 1203f, 955f), vec4<f32>(global3.x, -145f, 1034f, global3.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1238f, global3.x, -1768f, var_1.x), vec4<f32>(-1078f, var_1.x, var_1.x, global3.x), vec4<bool>(var_0.d, false, var_0.d, var_0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, global3.x, var_1.x, -914f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -739f, -1000f, 2138f) - vec4<f32>(787f, global3.x, 2285f, global1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-934f, var_1.x, -2131f, global3.x))))), var_0.d));
    let var_2 = select(vec4<bool>(!all(vec2<bool>(true, var_0.b)), !all(vec3<bool>(true, var_0.d, var_0.d)), var_0.b, any(select(!vec4<bool>(true, var_0.d, var_0.b, var_0.d), vec4<bool>(var_0.d, true, var_0.b, true), true))), select(vec4<bool>(var_0.b, true, true, any(vec3<bool>(false, var_0.b, true))), vec4<bool>(true, false, var_0.d, any(vec4<bool>(var_0.b, true, var_0.d, false))), false), all(!(!(!vec4<bool>(var_0.b, var_0.b, var_0.d, false)))));
    var var_3 = Struct_1(vec3<i32>((var_0.e.x ^ _wgslsmith_add_i32(u_input.c.x, var_0.a.x)) << (32389u % 32u), -2147483647i, var_0.a.x), var_0.d || var_2.x, ~_wgslsmith_dot_vec2_u32(max(u_input.a, vec2<u32>(1u, var_0.c) ^ u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) << (u_input.a % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4294967295u, 20289u), u_input.a))), var_2.x || func_1(), ~(~u_input.d));
    let var_4 = min(vec4<u32>(_wgslsmith_sub_u32(62791u, ~var_3.c << (_wgslsmith_add_u32(u_input.a.x, var_0.c) % 32u)), ~(~firstTrailingBit(4294967295u)), 45675u, var_0.c), ~vec4<u32>(var_0.c, ~u_input.a.x, countOneBits(1u), _wgslsmith_sub_u32(var_0.c, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(28863i >> (~(~var_3.c) % 32u), var_0.a.x >> (~abs(var_4.x) % 32u), all(!var_2.wzy)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-var_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(func_3(var_2.zyw, global2[_wgslsmith_index_u32(~min(1u, u_input.b), 8u)], global0[_wgslsmith_index_u32(~abs(24942u), 13u)]))));
}

