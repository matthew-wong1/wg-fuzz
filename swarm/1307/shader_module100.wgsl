struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32>;

var<private> global2: array<f32, 30> = array<f32, 30>(113f, 717f, 1661f, 608f, 1000f, -847f, -399f, -681f, -614f, 1482f, 538f, -558f, 869f, -925f, -831f, -719f, -148f, 585f, -490f, -1123f, -282f, -1020f, 921f, -454f, 216f, -935f, -1595f, 1000f, -719f, -1249f);

var<private> global3: array<u32, 16> = array<u32, 16>(1u, 0u, 17066u, 4294967295u, 6492u, 4294967295u, 0u, 1u, 12598u, 23545u, 4294967295u, 4294967295u, 14636u, 42413u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = vec2<i32>(55270i, arg_3.d.x);
    let var_2 = -(~((u_input.e.yzw & arg_2.d.wyz) ^ vec3<i32>(2147483647i, var_0.d.x >> (3671u % 32u), -1i)));
    global3 = array<u32, 16>();
    var var_3 = arg_3.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1496f))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, max(u_input.b.x, arg_0), ~_wgslsmith_dot_vec3_u32(u_input.b.xyw, vec3<u32>(global1.x, 4294967295u, 9583u))), u_input.b.zyy) << (1u % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1678f, -1378f, 1264f, global2[_wgslsmith_index_u32(4294967295u, 30u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], -106f, -1394f, -1286f))), vec4<f32>(-167f, _wgslsmith_f_op_f32(sign(-760f)), global2[_wgslsmith_index_u32(15819u, 30u)], _wgslsmith_f_op_f32(func_2(var_0, arg_1.x, Struct_1(959f, vec3<f32>(-644f, -1809f, -827f), vec4<f32>(-1973f, -717f, 1298f, global2[_wgslsmith_index_u32(u_input.c, 30u)]), u_input.e), Struct_1(932f, vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 30u)], global2[_wgslsmith_index_u32(103952u, 30u)], 1298f), vec4<f32>(1000f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 30u)], -803f, 1000f), u_input.e)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, 241f, 675f, global2[_wgslsmith_index_u32(31135u, 30u)]) - vec4<f32>(global2[_wgslsmith_index_u32(10311u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], -365f, global2[_wgslsmith_index_u32(u_input.b.x, 30u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 30u)], -988f, 311f, global2[_wgslsmith_index_u32(12872u, 30u)])))))));
    global0 = true;
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(805f)), _wgslsmith_div_f32(-787f, global2[_wgslsmith_index_u32(1u, 30u)])), -216f, -902f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 30u)])), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1094f, -794f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1206f, var_1.x, true)) * 817f))), u_input.e);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, var_1.x, 993f))) * _wgslsmith_f_op_vec3_f32(-var_3.c.yyw))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<u32>) -> bool {
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(max(~u_input.c, arg_0.x), 30u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_2(global1.x, u_input.e.x, Struct_1(global2[_wgslsmith_index_u32(18862u, 30u)], vec3<f32>(-388f, global2[_wgslsmith_index_u32(arg_2.x, 30u)], global2[_wgslsmith_index_u32(2230u, 30u)]), vec4<f32>(-398f, 963f, global2[_wgslsmith_index_u32(global1.x, 30u)], 925f), u_input.e), Struct_1(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], vec3<f32>(global2[_wgslsmith_index_u32(1u, 30u)], 514f, -1150f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], -1553f, global2[_wgslsmith_index_u32(65774u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), u_input.e))), global2[_wgslsmith_index_u32(1u, 30u)], 670f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(250f, global2[_wgslsmith_index_u32(23114u, 30u)]))), -555f, global2[_wgslsmith_index_u32(~7483u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_0.x, 30u)], 835f)))), vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.e.x, u_input.d.x) | u_input.e, min(vec4<i32>(u_input.d.x, -1i, u_input.d.x, -4381i), vec4<i32>(u_input.d.x, u_input.a.x, -65776i, 0i))), -1i, _wgslsmith_mult_i32(~62705i, select(u_input.e.x, 68281i, arg_1))) | u_input.e);
    var var_1 = global2[_wgslsmith_index_u32(min(42970u, _wgslsmith_div_u32(global1.x, u_input.b.x)), 30u)];
    let var_2 = _wgslsmith_f_op_f32(func_2(select(u_input.c, 0u, !(var_0.a < -487f)), _wgslsmith_mult_i32(-34065i, var_0.d.x), var_0, Struct_1(432f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(123438u, vec3<i32>(-2147483647i, var_0.d.x, -1i))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, -1203f, global2[_wgslsmith_index_u32(149445u, 30u)], var_0.b.x) + _wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(var_0.a, var_0.c.x, var_0.b.x, 1000f))) + vec4<f32>(var_0.a, 1f, _wgslsmith_f_op_f32(-184f + var_0.a), _wgslsmith_f_op_f32(-var_0.b.x))), vec4<i32>(1i | abs(u_input.d.x), 33240i, (u_input.e.x | u_input.e.x) | u_input.e.x, _wgslsmith_dot_vec2_i32(var_0.d.yw | var_0.d.zz, u_input.d)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f - var_2)) * var_2)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -955f), _wgslsmith_f_op_f32(sign(229f)), var_0.b.x));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    global3 = array<u32, 16>();
    global3 = array<u32, 16>();
    global3 = array<u32, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(1103f + 476f))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec3<u32> {
    var var_0 = u_input.e.xxw;
    global1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(u_input.b.xyz, u_input.b.zyw)), u_input.b.xxz), _wgslsmith_clamp_vec3_u32(u_input.b.zxz, u_input.b.yxx, u_input.b.zyx));
    var var_1 = u_input.b;
    var var_2 = global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(~var_1.yzw, vec3<u32>(2188u | _wgslsmith_div_u32(global1.x, arg_0), _wgslsmith_dot_vec4_u32(u_input.b << (vec4<u32>(77217u, var_1.x, 22001u, 1u) % vec4<u32>(32u)), vec4<u32>(var_1.x, u_input.b.x, 104757u, u_input.b.x)), arg_0)), 8849u), 30u)];
    global0 = false;
    return ~(~(~var_1.xzx));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 16>();
    global2 = array<f32, 30>();
    global2 = array<f32, 30>();
    global1 = func_5(~1u, Struct_1(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, 45945u), u_input.b.zzz), false, vec2<u32>(56511u, 6978u)), _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(4294967295u, 48739u, 1u, u_input.c) << (vec4<u32>(42684u, 8495u, global3[_wgslsmith_index_u32(global1.x, 16u)], 106748u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(func_3(~global3[_wgslsmith_index_u32(0u << (global3[_wgslsmith_index_u32(global1.x, 16u)] % 32u), 16u)], countOneBits(vec3<i32>(u_input.d.x, u_input.e.x, 2147483647i)))), vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 60216u, u_input.c), vec4<u32>(u_input.c, u_input.b.x, global1.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)])) ^ 1u, 30u)], -439f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(74272u, 30u)]), global2[_wgslsmith_index_u32(global1.x, 30u)]), abs(_wgslsmith_sub_vec4_i32(u_input.e << (vec4<u32>(global1.x, 4294967295u, global3[_wgslsmith_index_u32(0u, 16u)], 35689u) % vec4<u32>(32u)), -u_input.e))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 30u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(1u & _wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.b.xz)), 30u)]));
    var var_0 = ~u_input.e.xwx;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.c, 30u)], global2[_wgslsmith_index_u32(33892u, 30u)], true)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, global2[_wgslsmith_index_u32(29749u, 30u)], 1639f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)], global2[_wgslsmith_index_u32(u_input.c, 30u)], -1123f), vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.x, 16u)], 30u)], global2[_wgslsmith_index_u32(global1.x, 30u)], 1000f, 705f))))) - vec4<f32>(563f, -1242f, global2[_wgslsmith_index_u32(abs(~8286u), 30u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(899f)), 362f)))), u_input.e);
    var var_2 = Struct_1(-874f, var_1.c.wxy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(527f, 1463f, var_1.b.x, 1036f), vec4<f32>(-636f, var_1.b.x, var_1.a, -1502f), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1628f, -2218f, -2065f, global2[_wgslsmith_index_u32(4294967295u, 30u)])))) - _wgslsmith_f_op_vec4_f32(-var_1.c))), max(~vec4<i32>(abs(var_1.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-45433i, var_1.d.x, var_1.d.x, 1i), u_input.e), max(-2147483647i, var_0.x), 1i), max(vec4<i32>(2147483647i, var_0.x, var_0.x, ~u_input.d.x), countOneBits(countOneBits(vec4<i32>(u_input.e.x, -1i, var_1.d.x, -2147483647i))))));
    var var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(8396u, 16u)], 4294967295u >> (~global1.x % 32u), 0u, 0u), u_input.b, vec4<u32>(u_input.b.x >> (0u % 32u), min(~u_input.c, global3[_wgslsmith_index_u32(~3330u, 16u)]), _wgslsmith_clamp_u32(4294967295u, 48443u, global3[_wgslsmith_index_u32(4294967295u, 16u)]) & global1.x, ~u_input.b.x)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~countOneBits(_wgslsmith_div_vec3_u32(u_input.b.xxz, vec3<u32>(10118u, global3[_wgslsmith_index_u32(36393u, 16u)], 4294967295u)))));
}

