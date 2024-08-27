struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 31> = array<u32, 31>(11999u, 87444u, 15342u, 607u, 39662u, 33415u, 0u, 1u, 1u, 22350u, 18229u, 51196u, 0u, 85029u, 8649u, 1u, 121209u, 26738u, 8380u, 4294967295u, 51609u, 20618u, 46327u, 1u, 50148u, 55383u, 7103u, 4294967295u, 4294967295u, 4294967295u, 0u);

var<private> global2: u32;

var<private> global3: bool;

var<private> global4: array<bool, 27> = array<bool, 27>(false, true, true, true, true, true, false, false, false, false, true, false, true, true, true, true, false, false, false, true, false, false, false, true, false, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: u32) -> u32 {
    global2 = ~abs(~u_input.d.x ^ (global1[_wgslsmith_index_u32(arg_2, 31u)] & global1[_wgslsmith_index_u32(4294967295u, 31u)])) << (~(~4294967295u) % 32u);
    var var_0 = 22104u >> (1u % 32u);
    global1 = array<u32, 31>();
    let var_1 = arg_0.c;
    let var_2 = ~(~abs(1u));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    global3 = 1u != ~(4294967295u & func_3(Struct_5(Struct_1(vec3<f32>(arg_3.x, 250f, -768f), true, true), arg_1, Struct_3(arg_3.x, true, Struct_1(vec3<f32>(1592f, arg_3.x, arg_3.x), arg_0, false), vec4<f32>(arg_3.x, 1503f, arg_3.x, -1664f), u_input.b), vec4<bool>(false, arg_0, true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 31u)], 27u)])), Struct_5(Struct_1(arg_3, global4[_wgslsmith_index_u32(arg_2, 27u)], arg_0), arg_1, Struct_3(arg_3.x, global4[_wgslsmith_index_u32(15u, 27u)], Struct_1(arg_3, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 31u)], 27u)], true), vec4<f32>(981f, 1414f, 807f, -1519f), 21630i), vec4<bool>(arg_0, true, false, global4[_wgslsmith_index_u32(1u, 27u)])), abs(28722u)));
    var var_0 = -vec2<i32>(1i & reverseBits(-2147483647i | arg_1.x), _wgslsmith_mult_i32(u_input.b, arg_1.x));
    let var_1 = ~(vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~arg_2, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)] | 0u), global1[_wgslsmith_index_u32(~0u, 31u)] >> (63630u % 32u), ~u_input.d.x) & _wgslsmith_mult_vec3_u32(abs(abs(u_input.e.xzz)), u_input.d));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1249f);
    var_0 = vec2<i32>(min(-u_input.c, _wgslsmith_mult_i32((-49103i << (u_input.e.x % 32u)) & (u_input.a.x >> (global1[_wgslsmith_index_u32(0u, 31u)] % 32u)), _wgslsmith_div_i32(-1i, select(1503i, u_input.c, global4[_wgslsmith_index_u32(arg_2, 27u)])))), 2478i);
    return u_input.b;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = ~(~(~u_input.e));
    var var_1 = !vec3<bool>((_wgslsmith_sub_i32(u_input.c, 1i) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, 80915i, u_input.b), vec4<i32>(-2147483647i, u_input.c, 0i, u_input.a.x))) == true, !any(vec3<bool>(true, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 31u)], 27u)])), (func_2(arg_0, vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.c), u_input.d.x, vec3<f32>(-557f, 2136f, 1590f)) | -u_input.c) < abs(~1i));
    global2 = _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(var_0.xyz << (u_input.e.ywz % vec3<u32>(32u)), ~vec3<u32>(var_0.x, 0u, 57322u))), 31u)], ~var_0.x, ~(~_wgslsmith_mod_u32(0u, var_0.x) >> (var_0.x % 32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1680f, -1000f))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(776f, -2965f), vec2<f32>(-1035f, -956f), false)))))));
    let var_3 = Struct_3(var_2.x, !var_1.x, Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1914f), _wgslsmith_f_op_f32(max(var_2.x, -2132f)), -1000f))), true, false), _wgslsmith_div_vec4_f32(vec4<f32>(-1062f, _wgslsmith_f_op_f32(var_2.x - -1440f), -473f, _wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1506f, var_2.x, var_2.x), vec4<f32>(674f, 736f, 374f, -138f), vec4<bool>(global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23751u, 31u)], 27u)], false, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, var_2.x, -652f, 162f) * vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), _wgslsmith_mod_i32(_wgslsmith_div_i32(firstLeadingBit(26519i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 0i, u_input.b), vec4<i32>(1i, -1i, -17171i, 68127i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x))), _wgslsmith_mod_i32(~(-u_input.b), abs(17963i))));
    return !select(!(!select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48858u, 31u)], 27u)], arg_0), vec4<bool>(false, true, false, true), false)), select(!vec4<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 31u)], 27u)], true, false), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(true, arg_0, true, false), vec4<bool>(true, true, true, true)), !var_1.x), select(select(select(vec4<bool>(var_3.c.c, false, false, true), vec4<bool>(var_1.x, true, true, var_3.c.c), vec4<bool>(var_1.x, false, false, true)), select(vec4<bool>(arg_0, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true), false), !global4[_wgslsmith_index_u32(var_0.x, 27u)]), !vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 27u)]), any(vec2<bool>(true, var_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 27>();
    global1 = array<u32, 31>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-314f, -1185f, -476f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(345f, _wgslsmith_f_op_f32(1455f * 1473f), -857f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1181f, 1047f, 1751f)))) + vec3<f32>(1f, 1f, 1f)))));
    let var_2 = !func_1(global4[_wgslsmith_index_u32(firstLeadingBit(~0u), 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(~firstTrailingBit(-3793i), 47334i));
}

