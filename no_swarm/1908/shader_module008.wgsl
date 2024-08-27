struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 1u, 28848u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    return !(firstLeadingBit(global1.x) >= 63137u);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 2147483647i, -13676i), -(~vec3<i32>(-3037i, -1i, -53096i)), vec3<i32>(firstTrailingBit(-31865i), ~(-2147483647i), _wgslsmith_clamp_i32(0i, 17221i, 11230i))), ~(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -67851i, -137i)), ~(-countOneBits(vec3<i32>(33779i, 1i, -3420i)))), -1i, Struct_1(select(select(!vec4<bool>(arg_3, arg_0.x, true, arg_0.x), select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_3, arg_0.x, arg_3, false), vec4<bool>(arg_3, false, false, false)), true), !(!vec4<bool>(true, true, arg_3, arg_3)), !select(vec4<bool>(true, true, false, false), vec4<bool>(arg_3, arg_3, arg_0.x, true), arg_0.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(52316i, -18543i), vec2<i32>(-1i, 1898i))), max(countOneBits(vec2<i32>(5374i, -32843i)), -vec2<i32>(-2632i, -69214i)))), 4294967295u, _wgslsmith_mod_u32(29949u, 101831u));
    let var_1 = vec2<bool>(select(_wgslsmith_mod_u32(1u, countOneBits(21262u)) >= ~u_input.a.x, false, true), false);
    let var_2 = Struct_2(var_0.a, var_0.c.b.x, Struct_1(vec4<bool>(var_1.x, var_0.c.a.x, var_0.c.a.x, func_3()), max(var_0.a.yz, -(vec2<i32>(13548i, -46930i) >> (global1.zw % vec2<u32>(32u))))), 87935u, 1u);
    global1 = min(~vec4<u32>(4294967295u, ~_wgslsmith_add_u32(93393u, 65136u), _wgslsmith_add_u32(50741u, arg_2.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, 4294967295u), reverseBits(0u))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(arg_1, 20u)], var_2.e, 46099u), abs(vec4<u32>(u_input.b, 9798u, var_2.e, 1u) ^ vec4<u32>(var_2.d, 17618u, var_0.d, arg_2.x)), !select(vec4<bool>(var_2.c.a.x, true, arg_0.x, var_0.c.a.x), vec4<bool>(arg_0.x, false, arg_3, false), var_2.c.a)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global1.x, 4294967295u, 11717u), countOneBits(vec4<u32>(32605u, var_2.e, var_2.e, 22638u))) & abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, u_input.b, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(arg_2.x, 20u)]), vec4<u32>(1u, 0u, 0u, global1.x)))));
    global1 = _wgslsmith_sub_vec4_u32(min(select(~vec4<u32>(global1.x, global0[_wgslsmith_index_u32(127359u, 20u)], var_0.e, arg_1), select(vec4<u32>(arg_1, global0[_wgslsmith_index_u32(79712u, 20u)], arg_1, 116330u), vec4<u32>(52598u, var_2.d, arg_1, global1.x), true), select(vec4<bool>(var_0.c.a.x, var_0.c.a.x, false, arg_3), vec4<bool>(var_1.x, false, false, false), vec4<bool>(true, var_2.c.a.x, true, arg_3))), max(~vec4<u32>(arg_1, u_input.b, arg_1, u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 94514u, 67874u, global1.x))), vec4<u32>(~(global1.x << (58509u % 32u)), 23019u, ~global0[_wgslsmith_index_u32(1u, 20u)] << (~var_2.e % 32u), (global1.x >> (0u % 32u)) | ~110530u)) & ~vec4<u32>(arg_2.x, 21165u, _wgslsmith_clamp_u32(var_0.e | 1u, 23217u, 0u), u_input.b);
    return select(select(select(!select(var_2.c.a, vec4<bool>(var_1.x, arg_0.x, var_2.c.a.x, var_2.c.a.x), var_2.c.a), select(var_2.c.a, vec4<bool>(false, var_1.x, arg_3, var_1.x), vec4<bool>(true, var_2.c.a.x, var_0.c.a.x, arg_0.x)), var_0.c.a), vec4<bool>(arg_3, var_2.c.a.x, all(!var_0.c.a.yww), arg_0.x), false), select(!vec4<bool>(var_0.c.a.x, true, !var_2.c.a.x, true), vec4<bool>(true, true, true, _wgslsmith_div_i32(9083i, 1i) < select(var_0.b, 771i, true)), vec4<bool>(false, true, (arg_0.x & true) || (arg_3 || var_0.c.a.x), true)), var_2.c.a.x && var_0.c.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(func_4(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), countOneBits(global1.x), vec3<u32>(min(_wgslsmith_mod_u32(16669u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]), _wgslsmith_mod_u32(arg_0.x, arg_0.x)), 17320u, arg_0.x | ~global1.x), func_3()), _wgslsmith_mod_vec2_i32(vec2<i32>(54357i, 1i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 28098u), u_input.a.yz) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -11951i, min(22144i, -5230i))) << (global1.zx % vec2<u32>(32u)));
    global0 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), 322f, _wgslsmith_f_op_f32(step(arg_1, 945f)), 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, 424f, -214f, arg_1), vec4<f32>(-1047f, -1741f, arg_1, arg_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)))))));
    global0 = array<u32, 20>();
    var var_2 = Struct_2(countOneBits(~vec3<i32>(-16221i, -9470i, _wgslsmith_mult_i32(-5669i, var_0.b.x))), reverseBits(firstTrailingBit(abs(23360i) | var_0.b.x)), var_0, ~global1.x, global0[_wgslsmith_index_u32(1u, 20u)] & 29395u);
    return var_0.b.x;
}

fn func_1() -> bool {
    global1 = ~(~vec4<u32>(~85976u, 0u, reverseBits(_wgslsmith_mod_u32(0u, u_input.b)), (global0[_wgslsmith_index_u32(75669u, 20u)] | 1u) & 0u));
    global0 = array<u32, 20>();
    let var_0 = 716i;
    var var_1 = Struct_2(vec3<i32>(var_0 >> (~u_input.b % 32u), _wgslsmith_clamp_i32(-1i, var_0, 23132i), func_2(_wgslsmith_mult_vec2_u32(global1.yz, u_input.a.xx), _wgslsmith_f_op_f32(-187f + 1728f))) ^ vec3<i32>(_wgslsmith_mod_i32(max(var_0, var_0), 7689i), var_0, firstLeadingBit(2147483647i)), -var_0, Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 20u)] >= global1.x, select(all(vec2<bool>(true, false)), true, false), true, _wgslsmith_sub_u32(u_input.b, 4294967295u) >= _wgslsmith_mult_u32(global1.x, u_input.b)), vec2<i32>(var_0, -44346i ^ -var_0)), global1.x, 34198u);
    global1 = vec4<u32>(firstLeadingBit(reverseBits(8673u)), max(~4294967295u, _wgslsmith_add_u32(0u, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b, 20u)]))), var_1.e, select(firstLeadingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~global1.x, 20u)], 4294967295u)), 1u, var_1.c.a.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = ~((-_wgslsmith_dot_vec2_i32(vec2<i32>(-44387i, -21473i), vec2<i32>(0i, -9153i)) << (_wgslsmith_add_u32(u_input.a.x, 0u) % 32u)) << (global0[_wgslsmith_index_u32(47998u, 20u)] % 32u));
    var var_2 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(10529u, min(83681u, var_0), _wgslsmith_add_u32(global1.x, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(global1.yzy, ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 0u, 4294967295u)), global1.wyz));
    let var_3 = true;
    var_2 = abs(~global1.xxy);
    var_2 = vec3<u32>(var_0, max(_wgslsmith_clamp_u32(18770u, 11251u, var_2.x), (u_input.b << (4294967295u % 32u)) << (_wgslsmith_div_u32(~1u, 88833u) % 32u)), 1139u);
    let var_4 = select(vec2<bool>(true, all(vec2<bool>(true, true))), vec2<bool>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, 22056i, var_1), vec4<i32>(12474i, var_1, -32686i, var_1)) >= var_1, select(!var_3, true, func_1())), !(!func_4(func_4(vec2<bool>(true, var_3), 4294967295u, vec3<u32>(global1.x, global1.x, global0[_wgslsmith_index_u32(12917u, 20u)]), var_3).xz, firstTrailingBit(global1.x), global1.wyy, true).wy));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec4<u32>(4294967295u, var_0, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(61117u, 20u)], 0u, 21320u), var_2.x)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(22985u, 4294967295u, u_input.b, 14104u), vec4<u32>(global0[_wgslsmith_index_u32(9599u, 20u)], var_0, global1.x, var_0), vec4<bool>(true, var_3, false, false)), vec4<u32>(u_input.b, var_2.x, 95361u, global0[_wgslsmith_index_u32(99323u, 20u)]) ^ vec4<u32>(3386u, global0[_wgslsmith_index_u32(67908u, 20u)], 7735u, 1u)) ^ vec4<u32>(var_2.x, var_0, 14936u, 4294967295u), !(var_3 && false) && !var_3), vec3<i32>(23763i, ~_wgslsmith_mult_i32(func_2(vec2<u32>(37868u, 23743u), 382f), ~8042i), 0i));
}

