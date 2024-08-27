struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(228f, 1000f), vec2<f32>(803f, 868f), vec2<f32>(543f, -1000f), vec2<f32>(-524f, 460f), vec2<f32>(-636f, 108f), vec2<f32>(1188f, -1544f), vec2<f32>(-745f, 357f), vec2<f32>(1283f, 1000f), vec2<f32>(662f, 254f), vec2<f32>(513f, 408f), vec2<f32>(-1254f, -1000f), vec2<f32>(-2128f, 762f), vec2<f32>(161f, 551f), vec2<f32>(222f, 1574f), vec2<f32>(917f, 352f), vec2<f32>(976f, -574f), vec2<f32>(747f, 224f), vec2<f32>(953f, 181f), vec2<f32>(-383f, -2057f), vec2<f32>(424f, 1268f), vec2<f32>(-115f, 220f), vec2<f32>(-1626f, -1466f), vec2<f32>(480f, 1753f), vec2<f32>(753f, 1187f), vec2<f32>(-612f, -1039f), vec2<f32>(-634f, 1287f), vec2<f32>(-463f, -1087f), vec2<f32>(-253f, -260f), vec2<f32>(717f, 266f), vec2<f32>(436f, 1835f), vec2<f32>(-1000f, 253f), vec2<f32>(838f, 1000f));

var<private> global1: f32;

var<private> global2: vec3<i32> = vec3<i32>(-61977i, -1i, -13984i);

var<private> global3: i32;

var<private> global4: array<u32, 16> = array<u32, 16>(0u, 2372u, 4294967295u, 1u, 0u, 2180u, 0u, 10074u, 1195u, 8864u, 29950u, 62123u, 1u, 1u, 105261u, 67668u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> vec3<i32> {
    global0 = array<vec2<f32>, 32>();
    let var_0 = global2.yx;
    let var_1 = Struct_2(Struct_1(abs(vec4<i32>(var_0.x, 0i, ~0i, select(0i, global2.x, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 32u)]) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-107f, -253f), vec2<f32>(-580f, 366f), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, -1784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(861f - 750f), _wgslsmith_f_op_f32(max(1000f, 457f)), _wgslsmith_f_op_f32(max(-588f, 201f))), vec4<f32>(-1757f, -614f, _wgslsmith_f_op_f32(-1000f - -985f), -2584f)))));
    var var_2 = global2.x;
    global4 = array<u32, 16>();
    return u_input.d;
}

fn func_2() -> vec3<bool> {
    global2 = abs(vec3<i32>(u_input.e.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2.x & global2.x, -global2.x), _wgslsmith_dot_vec3_i32(u_input.e.zzy, func_3(true))), ~u_input.d.x));
    let var_0 = 933f;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-269f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(619f, 2454f, false)) * -1000f), true)))));
    var var_1 = all(vec4<bool>((reverseBits(-10998i) >> (~global4[_wgslsmith_index_u32(4294967295u, 16u)] % 32u)) >= ~_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(2147483647i, global2.x, global2.x)), false, true, (-275f < _wgslsmith_f_op_f32(-var_0)) && true));
    global0 = array<vec2<f32>, 32>();
    return select(!(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), select(vec3<bool>(true || any(vec4<bool>(true, true, true, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), all(vec2<bool>(false, false))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec2<bool>(false, false))))), true);
}

fn func_1() -> u32 {
    global2 = u_input.e.xyy;
    let var_0 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), func_2(), vec3<bool>(true, true, true))));
    global3 = 2147483647i;
    var var_1 = i32(-1i) * -8149i;
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(~u_input.e, select(u_input.e, u_input.e, var_0.x || (var_0.x | false))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(~40161u, 16u)], ~global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 16u)])), 16u)]), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2600f, 240f, -381f, _wgslsmith_f_op_f32(f32(-1f) * -430f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1051f, -1418f, -446f, 703f) + vec4<f32>(-1408f, -949f, 1234f, 571f)))))));
    return global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 2950u), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(439u, select(firstTrailingBit(u_input.c), select(803u, ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], 16u)], 16u)], true), select(!any(vec3<bool>(true, false, true)), true, true)), ~1u, func_1());
    global4 = array<u32, 16>();
    let var_1 = ~_wgslsmith_sub_vec4_u32((~vec4<u32>(0u, 9712u, 0u, 1u) << (~vec4<u32>(var_0.x, var_0.x, global4[_wgslsmith_index_u32(var_0.x, 16u)], var_0.x) % vec4<u32>(32u))) >> (vec4<u32>(global4[_wgslsmith_index_u32(abs(78936u), 16u)], _wgslsmith_add_u32(26117u, var_0.x), ~3913u, _wgslsmith_add_u32(u_input.a, 4294967295u)) % vec4<u32>(32u)), select(vec4<u32>(25473u, 4294967295u, global4[_wgslsmith_index_u32(0u, 16u)], u_input.b.x), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], var_0.x, u_input.a, 30592u), true) << (vec4<u32>(max(var_0.x, 1u), _wgslsmith_sub_u32(46986u, 1u), _wgslsmith_mult_u32(1u, 4294967295u), 0u) % vec4<u32>(32u)));
    global3 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(global2.yy, vec2<i32>(u_input.e.x, global2.x)), (vec2<i32>(global2.x, 1i) | u_input.d.zz) << (vec2<u32>(global4[_wgslsmith_index_u32(u_input.c, 16u)], 87660u) % vec2<u32>(32u))), select(u_input.d.yx & u_input.e.wy, global2.yx >> (~vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)), vec2<bool>(15816u >= var_1.x, any(vec3<bool>(false, true, true)))));
    let var_2 = ~u_input.c;
    global3 = global2.x >> (max(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, max(var_0.x, 4294967295u)), global4[_wgslsmith_index_u32(~0u, 16u)]), var_2) % 32u);
    var var_3 = Struct_1(~(-_wgslsmith_add_vec4_i32(countOneBits(u_input.e), u_input.e)), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(var_0.x, 32u)] * global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, var_2, var_2), vec4<u32>(var_1.x, var_0.x, var_2, global4[_wgslsmith_index_u32(var_1.x, 16u)])), ~abs(0u)), 32u)]), 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, 1000f, -1000f, -288f) + vec4<f32>(584f, 316f, 2179f, 1256f))))));
    let var_4 = vec2<i32>(~min(-1i, abs(_wgslsmith_clamp_i32(u_input.e.x, 14365i, 1i))), 2994i);
    let var_5 = all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), any(vec2<bool>(false, false))), vec4<bool>(select(true, true, true), true, false, any(vec3<bool>(false, false, false))), true & !all(vec4<bool>(false, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-607f, 232f, var_3.c, var_3.d.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.d.zzw * var_3.d.zyz), _wgslsmith_f_op_vec3_f32(-var_3.d.zyw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1782f, 1451f, 664f)))), var_3.d.xxz)), abs(vec4<u32>(114451u >> (1u % 32u), u_input.a, 4294967295u, _wgslsmith_mod_u32(firstTrailingBit(var_2), ~1476u))));
}

