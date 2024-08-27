struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1000f);

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec2<i32>;

var<private> global3: bool;

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>) -> vec2<u32> {
    global1 = array<Struct_2, 27>();
    return ~(~_wgslsmith_clamp_vec2_u32(arg_0.yy, ~arg_0.zy, vec2<u32>(_wgslsmith_add_u32(41863u, u_input.a.x), 69544u)));
}

fn func_2() -> bool {
    var var_0 = -1i;
    global3 = false;
    var var_1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, global2.x), ~global2.x), -7969i), -20750i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(64858i, 2147483647i), vec2<i32>(10470i, 0i), false), vec2<i32>(-83093i, 13035i)) << (0u % 32u)) | ~_wgslsmith_sub_vec3_i32(reverseBits(reverseBits(vec3<i32>(-1i, 1871i, global2.x))), -vec3<i32>(2936i, global2.x, global2.x) << (abs(u_input.a.zzz) % vec3<u32>(32u)));
    var var_2 = Struct_3(firstTrailingBit(~1u), !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), global1[_wgslsmith_index_u32(~0u, 27u)], ~(~firstLeadingBit(~vec4<u32>(58277u, 1u, u_input.a.x, 54993u))));
    var var_3 = Struct_3(~_wgslsmith_dot_vec2_u32(func_3(u_input.a.xyx | vec3<u32>(31649u, u_input.a.x, var_2.a), ~83414u, vec4<i32>(32800i, global2.x, var_1.x, -14837i) & vec4<i32>(-46405i, var_2.c.b, global2.x, -23021i)), _wgslsmith_sub_vec2_u32(select(u_input.a.yw, var_2.d.wx, var_2.c.d.x), vec2<u32>(var_2.d.x, var_2.d.x) ^ u_input.a.wz)), true, Struct_2(~vec3<i32>(-30904i, var_1.x, var_1.x) << (u_input.a.zxy % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(max(21386i, -10405i), var_2.c.b, max(-25361i, -13035i)), var_2.c.a), -1345f, vec3<bool>(false, true, !any(vec4<bool>(true, true, false, true))), !vec2<bool>(var_2.c.d.x, true)), var_2.d);
    return !(max(_wgslsmith_dot_vec3_i32(var_2.c.a, var_3.c.a), var_2.c.b << (u_input.a.x % 32u)) <= -32526i) & any(select(var_3.c.d, vec3<bool>(select(var_2.b, true, true), var_3.b, any(vec4<bool>(false, true, true, var_2.b))), true));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = global2.x;
    let var_1 = !select(arg_0.c, !(!vec3<bool>(true, arg_0.c.x, arg_0.c.x)), any(select(arg_0.c.zz, select(arg_0.c.xz, vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(false, arg_0.c.x)), vec2<bool>(arg_0.c.x, false))));
    global0 = array<f32, 1>();
    return !vec3<bool>(all(vec2<bool>(true, any(arg_0.c.zz))), func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, global0[_wgslsmith_index_u32(~(~u_input.a.x), 1u)], select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), func_1(Struct_1(1i, -642f, vec3<bool>(true, true, true))), vec3<bool>(select(false, all(vec2<bool>(true, false)), true), true, any(vec3<bool>(true, false, true)))));
    global0 = array<f32, 1>();
    global4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~4294967295u, 1u)])) + -1023f), func_1(Struct_1(global2.x, 162f, var_0.c)).x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(56587u, 1u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b, -723f))), var_0.c.x)), _wgslsmith_f_op_f32(abs(-3018f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), 1123f));
    let var_1 = Struct_3(_wgslsmith_dot_vec3_u32(u_input.a.xww, ~vec3<u32>(_wgslsmith_mult_u32(0u, u_input.a.x), 1u & u_input.a.x, u_input.a.x)), func_2(), global1[_wgslsmith_index_u32(~countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xy)), 27u)], u_input.a);
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(785f, 1032f, 576f, 1083f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.a, 1u)], -1467f, global4.x, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) + _wgslsmith_div_vec4_f32(vec4<f32>(675f, var_0.b, -1279f, -293f), vec4<f32>(-788f, -1193f, -671f, -335f))), vec4<bool>(var_1.b, select(true, var_1.c.d.x, false), false, var_0.c.x & true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(241f, global4.x, -787f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1489f, -759f, var_0.b, -1443f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 410f, var_0.b, -2074f))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1474f, var_0.b, 702f, 485f), vec4<f32>(-378f, -1258f, global0[_wgslsmith_index_u32(1u, 1u)], 2759f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c, global4.x, 527f, 1312f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1439f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-611f, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1273f - -914f) * 844f), 858f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(1i, var_1.c.b) >> (var_1.d.ww % vec2<u32>(32u))), var_1.c.a.zx), var_1.c.a.zx), _wgslsmith_f_op_vec2_f32(round(global4.xz)), vec4<i32>(-1i, _wgslsmith_sub_i32(-(var_0.a ^ -12957i), _wgslsmith_mod_i32(firstTrailingBit(2147483647i), -42445i)), ~select(1i, -1i, !var_1.c.e.x), 22464i), 1u, vec3<u32>(var_1.d.x, _wgslsmith_clamp_u32(4294967295u, ~(~0u), min(~1u, u_input.a.x ^ 0u)), countOneBits(_wgslsmith_dot_vec2_u32(~u_input.a.yy, reverseBits(var_1.d.xy)))));
}

