struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true));

var<private> global2: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(52105u, 0u), vec2<u32>(54537u, 7627u), vec2<u32>(1u, 25145u), vec2<u32>(80915u, 1u), vec2<u32>(57890u, 25268u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(7265u, 0u), vec2<u32>(1u, 107631u), vec2<u32>(24581u, 0u), vec2<u32>(27804u, 4294967295u));

var<private> global3: array<i32, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mult_u32(~1u, ~arg_0.x), ~(~arg_0.x) << (_wgslsmith_sub_u32(arg_0.x, 1u) % 32u)), arg_0);
    var var_1 = Struct_2(0u, -(~(-max(vec4<i32>(global3[_wgslsmith_index_u32(arg_0.x, 9u)], 0i, 2147483647i, global3[_wgslsmith_index_u32(var_0.x, 9u)]), vec4<i32>(2147483647i, -964i, -25697i, global3[_wgslsmith_index_u32(u_input.a, 9u)])))));
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(~arg_0.x, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1376f, -1004f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-667f, 578f))))), global1[_wgslsmith_index_u32(0u, 12u)], -(~(vec4<i32>(-11870i, -1i, var_1.b.x, u_input.c) << (select(vec4<u32>(11425u, var_1.a, 4294967295u, var_1.a), vec4<u32>(var_0.x, 0u, 4294967295u, 59126u), global1[_wgslsmith_index_u32(4294967295u, 12u)]) % vec4<u32>(32u)))));
    var var_3 = -(~_wgslsmith_dot_vec4_i32(var_2.d ^ vec4<i32>(var_2.a, var_1.b.x, var_2.a, global3[_wgslsmith_index_u32(u_input.d, 9u)]), ~var_1.b)) >= -2147483647i;
    let var_4 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b, var_2.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !select(global1[_wgslsmith_index_u32(1u, 12u)], vec4<bool>(true, true, true, true), select(!var_2.c, var_2.c, var_2.c)), abs(vec4<i32>(global3[_wgslsmith_index_u32(arg_0.x, 9u)], _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -34145i, var_1.b.x), var_1.b.zxx), ~67170i, abs(var_2.a)) >> ((vec4<u32>(0u, 25991u, u_input.b, 4294967295u) >> (~vec4<u32>(u_input.a, 42004u, u_input.b, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return 32313i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global2 = array<vec2<u32>, 11>();
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 9u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-844f)), -452f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1765f)), -1000f))), global1[_wgslsmith_index_u32(~0u, 12u)], arg_0.b);
    var var_1 = vec3<u32>(~(~(select(arg_0.a, 738u, false) >> (arg_0.a % 32u))), _wgslsmith_clamp_u32(countOneBits(u_input.a), ~_wgslsmith_add_u32(~4294967295u, _wgslsmith_add_u32(13543u, 0u)), _wgslsmith_clamp_u32(u_input.d, arg_0.a, 1u) & abs(arg_0.a)), 30189u);
    let var_2 = Struct_1(~(i32(-1i) * -15668i) & _wgslsmith_clamp_i32(firstLeadingBit(16015i), firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 9u)] & 16707i), -2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-256f, -539f, true)))), select(!var_0.c, select(vec4<bool>(0i < u_input.c, var_0.c.x, var_0.c.x, 21453u == arg_0.a), var_0.c, var_0.c), vec4<bool>(true && var_0.c.x, var_0.c.x, !var_0.c.x, true)), _wgslsmith_add_vec4_i32(arg_0.b, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(var_0.d), var_0.d), vec4<i32>(func_3(vec3<u32>(u_input.b, arg_0.a, 29993u)), ~(-1i), _wgslsmith_mod_i32(arg_0.b.x, var_0.d.x), -9300i))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_0.d.x, -2147483647i, -16590i, global3[_wgslsmith_index_u32(4294967295u, 9u)]), ~vec4<i32>(24931i, global3[_wgslsmith_index_u32(88021u, 9u)], 0i, 1i)), ~(~select(vec4<i32>(0i, var_2.d.x, arg_0.b.x, 7191i), var_0.d, var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1044f)))), vec4<bool>(!var_2.c.x, var_0.c.x, all(vec3<bool>(var_0.c.x && false, all(vec3<bool>(false, var_0.c.x, var_2.c.x)), true)), reverseBits(u_input.c) <= _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.d.x, var_0.d.x, var_2.d.x), var_0.d.xwx), ~vec3<i32>(u_input.c, -16672i, global3[_wgslsmith_index_u32(var_1.x, 9u)]))), vec4<i32>(2147483647i, -1i, firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 34136i, var_0.a, var_0.d.x), min(var_2.d, vec4<i32>(0i, global3[_wgslsmith_index_u32(arg_0.a, 9u)], u_input.c, 0i)))), countOneBits(6818i)));
    return arg_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = 9635u;
    var var_1 = func_2(Struct_2(u_input.b, abs(arg_0)));
    var var_2 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0.x, 26855i), vec2<i32>(-15281i, firstTrailingBit(var_1.b.x)), -var_1.b.yy);
    global3 = array<i32, 9>();
    let var_3 = -1568f;
    return ~(vec4<i32>(var_1.b.x, _wgslsmith_sub_i32(-8902i | u_input.c, ~(-7296i)), arg_0.x, -2155i) & vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 21444i)), vec2<i32>(global3[_wgslsmith_index_u32(1u, 9u)], 35421i)), -(global3[_wgslsmith_index_u32(var_0, 9u)] << (var_1.a % 32u)), global3[_wgslsmith_index_u32(max(var_1.a, 0u), 9u)], -2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0.b;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * arg_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.b, -1501f)), arg_0.b)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.b))))), true)), any(select(select(arg_0.c, !vec4<bool>(false, arg_0.c.x, true, true), select(vec4<bool>(true, var_1, false, var_1), global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)])), vec4<bool>(!arg_0.c.x, any(arg_0.c.wzx), true, all(vec3<bool>(var_1, false, arg_0.c.x))), vec4<bool>(select(var_1, var_1, var_1), all(arg_0.c.zy), !var_1, true)))));
    var var_3 = !(!select(vec2<bool>(all(global1[_wgslsmith_index_u32(6287u, 12u)]), false), select(arg_0.c.zw, arg_0.c.yy, arg_0.c.x), !arg_0.c.x || all(vec2<bool>(false, arg_0.c.x))));
    var var_4 = u_input.c;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~_wgslsmith_sub_u32(firstTrailingBit(1u), u_input.a & 1u), -(-(~vec4<i32>(u_input.c, -57690i, -39296i, global3[_wgslsmith_index_u32(12936u, 9u)])) << (vec4<u32>(reverseBits(26666u), 7289u, abs(u_input.b), u_input.b) % vec4<u32>(32u))));
    let var_1 = ~max(1i << (firstLeadingBit(u_input.d) % 32u), global3[_wgslsmith_index_u32(95731u, 9u)]) & -72509i;
    let var_2 = func_4(Struct_1(~countOneBits(37865i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1203f * _wgslsmith_f_op_f32(1559f + -1725f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 918f), _wgslsmith_f_op_f32(min(-680f, 520f)))), false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a << (1u % 32u), 0u), firstTrailingBit(~var_0.a)), 12u)], _wgslsmith_mod_vec4_i32(firstLeadingBit(func_1(vec4<i32>(global3[_wgslsmith_index_u32(var_0.a, 9u)], u_input.c, -22592i, 2147483647i), vec3<f32>(135f, -1000f, 1000f))), max(vec4<i32>(-3241i, u_input.c, var_0.b.x, var_1), vec4<i32>(var_1, global3[_wgslsmith_index_u32(u_input.a, 9u)], -13604i, var_1)))), _wgslsmith_add_vec4_i32(~func_2(func_2(var_0)).b, ~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(4320i, var_0.b.x, var_1, 14242i), vec4<i32>(-1i, 2147483647i, -9912i, 1i)))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_add_u32(~(~(u_input.b & var_0.a)), u_input.a);
    var var_5 = ~16469u;
    var var_6 = func_2(var_0);
    let var_7 = vec2<f32>(110f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_div_f32(var_2.b, 1461f)))), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-125f, 1112f, 578f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1224f, 1602f, 2007f) - vec3<f32>(var_3.b, var_7.x, 2391f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(636f, var_7.x, -833f) + vec3<f32>(1000f, var_3.b, 1023f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, 726f, -448f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-927f, var_2.b, -1491f)), vec3<f32>(var_3.b, var_2.b, var_7.x)))))), func_4(Struct_1(firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b))), !vec4<bool>(false, false, true, var_3.c.x), var_3.d), -_wgslsmith_add_vec4_i32(var_6.b, var_6.b & var_3.d)).d.yxx, select(abs(global2[_wgslsmith_index_u32(~max(38218u, 0u), 11u)]), ~global2[_wgslsmith_index_u32(107656u, 11u)], vec2<bool>(!(!var_2.c.x), var_3.c.x)));
}

