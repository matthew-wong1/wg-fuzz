struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
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

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<f32, 31> = array<f32, 31>(-340f, -592f, 947f, -1092f, 1000f, -892f, -1000f, -844f, 172f, 984f, -1001f, -452f, -168f, 1000f, -694f, 413f, -494f, 556f, -566f, -1788f, -838f, 1174f, 1068f, 1000f, -712f, -1178f, 914f, 1000f, -1000f, -436f, -1430f);

var<private> global2: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(78694u, 1u, 42077u), vec3<u32>(1334u, 1u, 38905u), vec3<u32>(4294967295u, 58365u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 50084u, 1u), vec3<u32>(4294967295u, 45894u, 0u), vec3<u32>(32005u, 46429u, 35531u), vec3<u32>(4294967295u, 3945u, 65647u), vec3<u32>(47025u, 0u, 4294967295u), vec3<u32>(1u, 0u, 2917u), vec3<u32>(1u, 4294967295u, 50786u), vec3<u32>(1u, 107148u, 6953u), vec3<u32>(3459u, 0u, 0u), vec3<u32>(0u, 4500u, 28992u), vec3<u32>(4294967295u, 4294967295u, 64650u), vec3<u32>(4294967295u, 39039u, 11546u), vec3<u32>(32223u, 39985u, 0u), vec3<u32>(0u, 1u, 87463u), vec3<u32>(39617u, 2370u, 4294967295u), vec3<u32>(31757u, 1u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(9187u, 40566u, 65172u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(76211u, 29853u, 13817u), vec3<u32>(4294967295u, 10567u, 19568u), vec3<u32>(11569u, 55988u, 25496u), vec3<u32>(0u, 0u, 0u));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32) -> f32 {
    global2 = array<vec3<u32>, 27>();
    let var_0 = arg_1;
    var var_1 = global3.b;
    var var_2 = arg_0;
    var_2 = !(any(!vec4<bool>(false, arg_0, global3.b, arg_0)) == global3.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(177f)) + global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0, 4294967295u), 31u)]);
}

fn func_3() -> vec2<f32> {
    global1 = array<f32, 31>();
    global3 = Struct_1(min(-(vec2<i32>(-1i) * -global3.a), global3.a >> (~vec2<u32>(8886u, u_input.a) % vec2<u32>(32u))), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1055f, global1[_wgslsmith_index_u32(1u, 31u)]) - global3.d.yy)) + _wgslsmith_f_op_vec2_f32(-global3.d.xw)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 31u)])))) + global1[_wgslsmith_index_u32(0u, 31u)]), 1849f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.c.x + -1065f), 1000f) - _wgslsmith_f_op_f32(sign(global3.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 31u)]) + _wgslsmith_f_op_f32(-global3.d.x))))));
    let var_0 = Struct_2(vec2<f32>(-1818f, _wgslsmith_f_op_f32(-627f * _wgslsmith_f_op_f32(round(-379f)))), Struct_1(vec2<i32>(reverseBits(~0i), 1i), true && any(vec4<bool>(true, global3.b, global3.b, true)), global3.d.zw, global3.d), Struct_1(_wgslsmith_add_vec2_i32(u_input.c, global3.a), false, _wgslsmith_f_op_vec2_f32(global3.d.zz - vec2<f32>(global3.c.x, -450f)), global3.d), Struct_1(max(u_input.b, abs(global3.a)), all(select(select(vec4<bool>(false, global3.b, true, false), vec4<bool>(true, global3.b, global3.b, global3.b), true), vec4<bool>(true, global3.b, global3.b, true), vec4<bool>(true, true, true, true))), global3.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(695f, 471f, global3.c.x, -1000f))))))));
    let var_1 = ~(_wgslsmith_clamp_vec2_u32(min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(76150u, u_input.a)), vec2<u32>(26860u, u_input.a) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), vec2<u32>(countOneBits(0u), _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, u_input.a))) | min(_wgslsmith_add_vec2_u32(vec2<u32>(18284u, 0u), vec2<u32>(u_input.a, u_input.a)) ^ select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 23856u), vec2<bool>(global3.b, global3.b)), ~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a), vec2<bool>(true, false))));
    global1 = array<f32, 31>();
    return var_0.d.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global3 = arg_0;
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3()))))), arg_0, Struct_1(select(vec2<i32>(global3.a.x, global3.a.x), vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<bool>(true, false)) | countOneBits(u_input.c), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global3.c, vec2<f32>(global3.d.x, 579f), false)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-195f, 873f, 797f, global1[_wgslsmith_index_u32(u_input.a, 31u)])), _wgslsmith_f_op_vec4_f32(arg_0.d + arg_0.d)))), arg_0), vec4<f32>(_wgslsmith_f_op_f32(global3.d.x * arg_0.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) - _wgslsmith_f_op_f32(step(1221f, arg_0.d.x))))), _wgslsmith_f_op_f32(-arg_1.x), Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(arg_0.a) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), vec2<i32>(-1i) * -u_input.b), any(!select(vec2<bool>(false, true), vec2<bool>(global3.b, arg_0.b), global3.b)), _wgslsmith_div_vec2_f32(vec2<f32>(-969f, arg_1.x), _wgslsmith_f_op_vec2_f32(-global3.d.xx)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.c.x, global3.c.x, 915f) - _wgslsmith_f_op_vec4_f32(arg_0.d * vec4<f32>(-1322f, arg_1.x, arg_0.c.x, arg_0.d.x)))))), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_clamp_u32(60424u, _wgslsmith_mod_u32(u_input.a, 0u), 32257u ^ u_input.a)), ~(~u_input.a) ^ 1u, 4294967295u));
    global3 = Struct_1(max(vec2<i32>(abs(global3.a.x), ~abs(arg_0.a.x)), vec2<i32>(u_input.e, -(~44222i))), _wgslsmith_div_u32(select(~0u, max(var_0.e, var_0.e), all(vec2<bool>(false, false))), 1u) != (52665u | var_0.e), global3.d.zz, vec4<f32>(1175f, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, global1[_wgslsmith_index_u32(32643u, 31u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(var_0.e, 98876u)), 31u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.d.c.x) - -1357f)), 620f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(exp2(global3.c.x))), _wgslsmith_f_op_f32(step(var_0.c, -1632f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(698f * -1000f)))) * global3.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)))));
    return Struct_1(vec2<i32>(u_input.c.x ^ ~reverseBits(-2147483647i), u_input.e), 0u != firstLeadingBit(_wgslsmith_mult_u32(28490u, _wgslsmith_clamp_u32(var_0.e, u_input.a, 12774u))), _wgslsmith_f_op_vec2_f32(floor(arg_1)), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 31>();
    global3 = func_2(Struct_1(-u_input.c, !((u_input.a > 19859u) == true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.d.yx - _wgslsmith_f_op_vec2_f32(global3.d.wy + global3.c)) - _wgslsmith_f_op_vec2_f32(round(global3.d.ww))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(-global3.c.x), global1[_wgslsmith_index_u32(u_input.a | u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a & 4294967295u, 31u)]), _wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(global3.d.x, global3.d.x, -1014f, 870f))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(any(vec3<bool>(global3.b, true, false)), min(u_input.a, u_input.a), countOneBits(u_input.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-936f - -1119f))))));
    let var_0 = Struct_4(_wgslsmith_mod_vec3_u32(select(~(~global2[_wgslsmith_index_u32(75722u, 27u)]), ~(~global0[_wgslsmith_index_u32(9367u, 13u)]), select(select(vec3<bool>(global3.b, global3.b, false), vec3<bool>(true, true, global3.b), vec3<bool>(true, global3.b, false)), select(vec3<bool>(global3.b, false, global3.b), vec3<bool>(global3.b, global3.b, global3.b), global3.b), select(global3.b, global3.b, global3.b))), _wgslsmith_mod_vec3_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 13u)]), reverseBits(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])))), vec2<i32>(global3.a.x, -u_input.e), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]) + global3.c)), func_2(Struct_1(~global3.a, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)])), global3.d), vec2<f32>(global3.d.x, global3.c.x)), func_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 0i), vec2<i32>(1i, u_input.e)), select(global3.b, true, global3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], 626f) - global3.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(50707u, 31u)], -1358f, -1000f, -1244f), vec4<f32>(155f, global1[_wgslsmith_index_u32(u_input.a, 31u)], 3045f, global3.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, global3.d.x)))), func_2(Struct_1(u_input.b, global3.b, _wgslsmith_f_op_vec2_f32(global3.c * vec2<f32>(1585f, global3.d.x)), global3.d), _wgslsmith_f_op_vec2_f32(global3.d.zy * global3.c))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-860f))))), func_2(Struct_1(vec2<i32>(2147483647i, global3.a.x), any(vec2<bool>(false, false)), global3.d.wz, global3.d), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global3.c + vec2<f32>(global3.c.x, global1[_wgslsmith_index_u32(u_input.a, 31u)])), _wgslsmith_f_op_vec2_f32(-global3.c)))), Struct_1(~vec2<i32>(23275i, 1i) & global3.a, global3.b | any(vec4<bool>(true, global3.b, global3.b, global3.b)), _wgslsmith_f_op_vec2_f32(global3.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1072f, global3.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, -222f, 1381f, 125f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, global1[_wgslsmith_index_u32(21954u, 31u)], global1[_wgslsmith_index_u32(40817u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]) - vec4<f32>(global3.d.x, global3.d.x, global3.c.x, global3.d.x)))), func_2(Struct_1(u_input.c, !global3.b, vec2<f32>(-1062f, 647f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-526f, -593f, global1[_wgslsmith_index_u32(u_input.a, 31u)], global3.d.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.d.x, global1[_wgslsmith_index_u32(u_input.a, 31u)]))))), func_2(Struct_1(vec2<i32>(-17365i, _wgslsmith_clamp_i32(2945i, -16488i, -1i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.yw)), vec4<f32>(-489f, _wgslsmith_f_op_f32(step(-297f, global3.c.x)), 822f, global1[_wgslsmith_index_u32(u_input.a ^ u_input.a, 31u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c.x, global3.c.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(global3.c)), func_2(Struct_1(u_input.d.xx, global3.b, global3.d.wx, vec4<f32>(global3.d.x, global3.c.x, global3.d.x, global3.d.x)), global3.c).d.wz)), true))));
    let var_1 = func_2(Struct_1(-select(var_0.d.c.a, _wgslsmith_div_vec2_i32(u_input.d.yy, var_0.b), select(vec2<bool>(global3.b, var_0.c.c.b), vec2<bool>(true, var_0.e.b), vec2<bool>(global3.b, var_0.e.b))), !any(select(vec4<bool>(var_0.c.d.b, false, false, var_0.e.b), vec4<bool>(global3.b, true, true, var_0.e.b), var_0.c.c.b)), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3.d.x), global1[_wgslsmith_index_u32(~var_0.a.x, 31u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(24978u, 31u)], var_0.c.d.d.x)), var_0.c.c.c.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), var_0.d.c.d.x, global3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -352f)), select(!vec4<bool>(var_0.c.d.b, false, false, false), !vec4<bool>(var_0.d.b.b, var_0.c.c.b, var_0.c.d.b, global3.b), all(vec2<bool>(var_0.c.d.b, false)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c.c.d.wy, _wgslsmith_f_op_vec2_f32(global3.d.xz * vec2<f32>(global3.d.x, global1[_wgslsmith_index_u32(u_input.a, 31u)])))));
    let var_2 = !select(select(vec3<bool>(global3.b, false || var_1.b, var_0.e.b), select(select(vec3<bool>(var_0.e.b, var_0.c.c.b, true), vec3<bool>(false, global3.b, true), var_1.b), select(vec3<bool>(global3.b, var_1.b, false), vec3<bool>(false, var_0.d.b.b, true), vec3<bool>(false, var_1.b, false)), !var_1.b), true), select(vec3<bool>(false, true, !global3.b), !vec3<bool>(var_0.d.c.b, false, false), false), select(!select(vec3<bool>(global3.b, global3.b, false), vec3<bool>(false, false, false), var_0.e.b), vec3<bool>(true, !var_0.d.b.b, false), select(!vec3<bool>(global3.b, false, var_0.d.b.b), vec3<bool>(true, var_1.b, true), true)));
    global2 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-global3.a.x, ~0i));
}

