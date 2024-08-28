struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<f32, 20> = array<f32, 20>(1568f, -1000f, 1117f, -876f, 642f, 192f, -1472f, 1572f, -710f, 640f, -590f, 209f, 526f, -113f, 1312f, -651f, -574f, -583f, 1105f, -1000f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = u_input.c;
    let var_0 = Struct_2(abs(global0.xw), Struct_1(vec2<bool>(true, all(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.x))), ~abs(u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 1781f, 1502f, -144f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], -408f, global1[_wgslsmith_index_u32(0u, 20u)], -1000f)))), abs(-1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(827f, -1276f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(71283u, 20u)]))))))));
    var var_1 = select((vec2<u32>(firstLeadingBit(34682u), countOneBits(4294967295u)) >> (vec2<u32>(var_0.b.b, firstLeadingBit(52823u)) % vec2<u32>(32u))) ^ ~abs(vec2<u32>(u_input.a.x, 1u) >> (u_input.a.zy % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(u_input.a.xy, abs(~(~u_input.b))), var_0.b.a);
    var_1 = vec2<u32>(abs(1u), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), var_1.x)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b, u_input.a.x, 63504u, 4294967295u), vec4<u32>(1u, 1u, var_0.b.b, var_0.b.b)))));
    global1 = array<f32, 20>();
    return vec2<bool>(true, arg_0.x);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = Struct_2(vec2<i32>(arg_0, arg_0 << (4294967295u % 32u)), Struct_1(func_3(!vec4<bool>(true, arg_1.x, true, true)), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, global1[_wgslsmith_index_u32(1u, 20u)], -1478f, 2263f)) - vec4<f32>(-1000f, 1138f, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)]))), _wgslsmith_div_i32(2147483647i, ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(99168u, 4294967295u), 20u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(73223u, 20u)] + -1161f))))));
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(-arg_0 ^ arg_3), countOneBits(min(18153i, min(arg_0, 0i))), -firstTrailingBit(-67843i), 45466i), vec4<i32>(~firstTrailingBit(firstLeadingBit(-29805i)), firstLeadingBit(var_0.b.d), _wgslsmith_add_i32(i32(-1i) * -u_input.c.x, global0.x), arg_0));
    var_0 = Struct_2(firstLeadingBit(~u_input.c.yx ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0.b.d, 2147483647i), global0.zy)), var_0.b);
    let var_1 = Struct_2(~u_input.c.wy >> (u_input.a.yz % vec2<u32>(32u)), Struct_1(vec2<bool>(!(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] >= var_0.b.c.x), ~var_0.b.b < u_input.b.x), firstLeadingBit(var_0.b.b << (1u % 32u)), _wgslsmith_f_op_vec4_f32(var_0.b.c * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(abs(var_0.b.c.x)), _wgslsmith_f_op_f32(round(var_0.b.e.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_mod_i32(2147483647i, 1i) >> ((var_0.b.b >> (1u % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b.e, var_0.b.c.xy))) + var_0.b.c.wz)));
    let var_2 = var_1.b.a.x;
    return ~min(-(~_wgslsmith_clamp_i32(-96403i, var_0.a.x, 0i)), ~(var_0.a.x & ~(-16473i)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, select(_wgslsmith_sub_vec4_i32(vec4<i32>(-28598i, -15737i, global0.x, arg_0.x), u_input.c), vec4<i32>(-1i) * -vec4<i32>(21753i, u_input.c.x, global0.x, 0i), true)), ~(vec4<i32>(36934i, func_2(0i, vec2<bool>(true, true), true, -74078i), global0.x >> (u_input.b.x % 32u), global0.x) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.b.x), ~u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))));
    var var_0 = Struct_1(vec2<bool>(!func_3(vec4<bool>(false, false, false, false)).x && select(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, false, false)), true), max(26760u >> (1u % 32u), 1u) <= u_input.a.x), abs(18109u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], -1286f, global1[_wgslsmith_index_u32(4294967295u, 20u)]) + vec4<f32>(-984f, -774f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)])) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.b.x, 20u)], global1[_wgslsmith_index_u32(33075u, 20u)], 2164f))))), u_input.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 20u)] - -1123f), 2445f) - vec2<f32>(-1371f, global1[_wgslsmith_index_u32(1u, 20u)])), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), global1[_wgslsmith_index_u32(~1u, 20u)])));
    var_0 = Struct_1(!vec2<bool>(false, true | (arg_0.x <= 0i)), reverseBits(_wgslsmith_mult_u32(firstLeadingBit(0u << (1u % 32u)), _wgslsmith_clamp_u32(var_0.b, u_input.a.x, var_0.b | 4294967295u))), var_0.c, -var_0.d, var_0.c.zz);
    let var_1 = Struct_1(vec2<bool>(any(!select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), false)), true), ~(~1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5314u, 20u)] - -161f)), _wgslsmith_f_op_f32(min(1000f, 1579f)), _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31560u, 20u)] - 590f) - -1172f))), _wgslsmith_mult_i32(~min(1i, -15103i), var_0.d) & ~(-31872i | (global0.x >> (u_input.b.x % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.b), _wgslsmith_mult_u32(4344u, u_input.a.x)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 1019f)))));
    let var_2 = Struct_1(!select(vec2<bool>(!var_0.a.x, false), vec2<bool>(true, true), select(!var_0.a, vec2<bool>(true, var_1.a.x), 18156u == var_0.b)), ~_wgslsmith_mult_u32(min(~var_1.b, _wgslsmith_clamp_u32(45606u, 37084u, var_1.b)), _wgslsmith_sub_u32(var_1.b, 73207u) & u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(251f, var_1.c.x)), _wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(trunc(var_0.c.x))), 1798f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(var_1.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c, vec4<f32>(var_0.e.x, var_0.c.x, var_1.c.x, var_1.c.x))))))), var_1.d, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.b, 20u)]), _wgslsmith_f_op_f32(var_0.e.x + 1000f))), 1f))));
    return Struct_1(var_0.a, ~var_1.b, vec4<f32>(134f, -176f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.e.x))))), -246f), -(~_wgslsmith_mod_i32(-u_input.c.x, ~76364i)), _wgslsmith_f_op_vec2_f32(round(var_1.e)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global1 = array<f32, 20>();
    global0 = u_input.c;
    let var_0 = Struct_2(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(~(-arg_1.a), -vec2<i32>(arg_1.a.x, 25346i))), arg_1.b);
    var var_1 = (38132u << (arg_0 % 32u)) != ((firstLeadingBit(~1u) ^ arg_1.b.b) >> (_wgslsmith_mod_u32(arg_2.b, _wgslsmith_dot_vec3_u32(countOneBits(u_input.a), vec3<u32>(0u, u_input.b.x, arg_2.b))) % 32u));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(965f * arg_2.e.x)))), 337f));
    return func_1(-max(vec4<i32>(_wgslsmith_div_i32(var_0.b.d, u_input.c.x), ~(-1i), _wgslsmith_sub_i32(u_input.c.x, -13079i), reverseBits(global0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.d, var_0.a.x, u_input.c.x, 0i), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<i32>(-(~(-2147483647i)), global0.x << (_wgslsmith_sub_u32(u_input.a.x, ~34854u) % 32u)), func_4(u_input.b.x, Struct_2(-min(vec2<i32>(global0.x, 1i), vec2<i32>(44959i, global0.x)), func_1(u_input.c)), Struct_1(vec2<bool>(true, true), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1628u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 193f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]))), u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1452f, func_1(u_input.c).e.x, var_0.b.e.x), u_input.c, global0.x >> (~var_0.b.b % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.b.e.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(8565u, 48842u, var_0.b.b, 8577u), vec4<u32>(99982u, var_0.b.b, u_input.a.x, u_input.b.x))), 20u)]))), _wgslsmith_mod_i32(select(i32(-1i) * -39324i, _wgslsmith_mod_i32(reverseBits(u_input.c.x), ~(-1997i)), var_0.b.a.x), u_input.c.x));
}

