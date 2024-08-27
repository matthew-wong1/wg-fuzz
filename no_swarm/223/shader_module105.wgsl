struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 48663i, -8424i);

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec3<bool>(true, false, false), -507f, Struct_1(false, 1i), Struct_1(true, 49028i), -1680f), Struct_2(vec3<bool>(false, true, true), 1000f, Struct_1(true, 0i), Struct_1(false, 59176i), -1038f), Struct_2(vec3<bool>(false, false, true), -1000f, Struct_1(true, 17043i), Struct_1(true, -17097i), 1403f));

var<private> global2: array<i32, 28> = array<i32, 28>(i32(-2147483648), 1531i, -1i, i32(-2147483648), -4437i, 0i, i32(-2147483648), -22565i, 1i, -13713i, 2147483647i, -39357i, 8697i, -1i, 0i, 0i, -14206i, 1i, 10174i, 1i, -26838i, i32(-2147483648), 34628i, 2147483647i, i32(-2147483648), 56597i, 2338i, 0i);

var<private> global3: u32 = 1u;

var<private> global4: array<bool, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(arg_2)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(544f, 199f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, arg_1.a.b))))))) - vec2<f32>(arg_2, arg_1.a.e));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> bool {
    return arg_3;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(1i | _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.c, 28u)], 1i, global0.x), vec4<i32>(_wgslsmith_mult_i32(-12854i, -94192i), 47684i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 28u)], -4885i), vec3<i32>(-1122i, -2147483647i, 1i)), 0i)), global0.x);
    let var_1 = global1[_wgslsmith_index_u32(~79367u, 3u)];
    var var_2 = vec2<bool>(!all(var_1.a), func_3(_wgslsmith_mod_vec2_i32(global0.zy, global0.zx), Struct_1(all(vec2<bool>(var_1.d.a, var_1.c.a)), global0.x), reverseBits(37319i), global4[_wgslsmith_index_u32(~u_input.b.x, 10u)]) & true);
    global0 = vec3<i32>(global0.x, -(~_wgslsmith_mod_i32(global0.x, -2147483647i)), var_0) | vec3<i32>(~global0.x, var_0, ~var_1.d.b);
    var var_3 = u_input.b.x;
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> Struct_4 {
    global1 = array<Struct_2, 3>();
    global2 = array<i32, 28>();
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_2, _wgslsmith_f_op_f32(arg_2 * arg_2)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, 1963f, -1705f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 340f, 142f) - vec3<f32>(-570f, 204f, arg_3))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1068f, _wgslsmith_f_op_f32(-arg_1.x), 1000f)))));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(~(u_input.c << (11861u % 32u)) & _wgslsmith_mult_u32(~(~u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xzz, u_input.b.xyx), ~u_input.b.yyy)), 3u)], true, 1u);
    global2 = array<i32, 28>();
    return Struct_4(var_1.a, all(select(vec3<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 10u)], true, var_1.a.a.x, true)), true, true), !select(var_1.a.a, var_1.a.a, vec3<bool>(global4[_wgslsmith_index_u32(1u, 10u)], var_1.a.d.a, global4[_wgslsmith_index_u32(u_input.a, 10u)])), !select(var_1.a.a, vec3<bool>(global4[_wgslsmith_index_u32(68655u, 10u)], var_1.a.d.a, global4[_wgslsmith_index_u32(1u, 10u)]), var_1.a.d.a))), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f * -236f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-650f - 1000f), -841f) - 506f)));
    var var_1 = func_4(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -1229f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0), vec2<bool>(global4[_wgslsmith_index_u32(58325u, 10u)], true))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(264f, -1308f), vec2<bool>(false, global4[_wgslsmith_index_u32(106984u, 10u)])))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1058f, var_0) * vec2<f32>(640f, 1934f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(959f, var_0), _wgslsmith_f_op_vec2_f32(func_1(73390i, Struct_4(global1[_wgslsmith_index_u32(4294967295u, 3u)], global4[_wgslsmith_index_u32(u_input.b.x, 10u)], u_input.a), 849f)), select(vec2<bool>(global4[_wgslsmith_index_u32(21373u, 10u)], global4[_wgslsmith_index_u32(926u, 10u)]), vec2<bool>(global4[_wgslsmith_index_u32(22265u, 10u)], true), true))))), _wgslsmith_f_op_vec2_f32(func_1(~global0.x, Struct_4(Struct_2(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 10u)], global4[_wgslsmith_index_u32(u_input.c, 10u)]), var_0, func_2(), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -734f)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~0u), 10u)], ~19551u), var_0)).x, _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), 272f)))));
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(766f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -216f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-var_1.a.e)))), _wgslsmith_f_op_f32(var_1.a.e + var_0));
    var var_3 = ~vec2<i32>(~select(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(26323u, 28u)], var_2.a.d.b), var_1.a.c.b, var_1.b), firstTrailingBit(countOneBits(abs(var_1.a.d.b))));
    let var_4 = Struct_1(!select(any(select(vec2<bool>(true, false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a, 10u)], false), var_2.a.a.yy)), !any(var_1.a.a), true), max(-(~17645i), global0.x));
    let var_5 = !select(select(var_1.a.a, !vec3<bool>(true, global4[_wgslsmith_index_u32(26428u, 10u)], var_1.a.d.a), select(!vec3<bool>(false, global4[_wgslsmith_index_u32(12846u, 10u)], global4[_wgslsmith_index_u32(u_input.c, 10u)]), !var_2.a.a, var_1.a.a)), select(!var_1.a.a, !select(var_2.a.a, vec3<bool>(true, true, var_1.a.c.a), false), !var_1.a.d.a), false);
    var_1 = func_4(-330f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 492f)))))), _wgslsmith_f_op_f32(ceil(var_1.a.b)), _wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))))));
    var var_6 = max(global2[_wgslsmith_index_u32(~7882u, 28u)], -abs(var_1.a.c.b));
    var var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global2[_wgslsmith_index_u32(~(4294967295u ^ (var_1.c ^ var_1.c)), 28u)], -28176i), _wgslsmith_f_op_f32(min(-1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-375f + 530f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 618f, 1103f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(698f, var_1.a.b, -163f) + vec3<f32>(-121f, -549f, var_0)))))), var_2.a.d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_2.a.b)) + var_1.a.e), _wgslsmith_f_op_f32(step(-1308f, var_0)), var_0)));
}

