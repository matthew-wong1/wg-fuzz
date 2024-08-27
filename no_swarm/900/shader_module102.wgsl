struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(16048i, _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_div_i32(u_input.a, max(u_input.a, _wgslsmith_add_i32(42650i, -49389i)))), _wgslsmith_f_op_f32(-arg_0.c.x), u_input.d);
    var var_1 = select(vec4<bool>(select(-886f == _wgslsmith_f_op_f32(var_0.c - -103f), false, (u_input.a == var_0.a) & (var_0.a < -2147483647i)), true, !(var_0.c <= _wgslsmith_f_op_f32(-707f - arg_0.c.x)), !select(all(vec4<bool>(false, false, true, true)), true, true)), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), !select(any(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(var_0.d, 16u)] < u_input.c, all(vec4<bool>(true, false, false, false))), any(vec3<bool>(true, true, true)) && false, any(vec4<bool>(false, any(vec4<bool>(true, true, false, true)), true, true))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), !all(vec3<bool>(true, false, true))));
    let var_2 = all(!(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), !vec4<bool>(true, var_1.x, false, true), u_input.a <= var_0.a)));
    let var_3 = Struct_2(u_input.a, ~(~35433i >> (firstTrailingBit(arg_0.a.x & 0u) % 32u)), arg_0.c.x, ~(~max(0u, global0[_wgslsmith_index_u32(13490u, 16u)])) | firstTrailingBit(u_input.d));
    var var_4 = Struct_2(-1i, _wgslsmith_add_i32(u_input.a, -min(-var_3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_3.a), vec2<i32>(0i, u_input.a)))), _wgslsmith_f_op_f32(step(305f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(max(1741f, 2040f))), _wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(f32(-1f) * -1056f))))), global0[_wgslsmith_index_u32(~u_input.c << (~select(~126995u, ~24092u, true) % 32u), 16u)]);
    return vec3<bool>(var_1.x, false, !(!(var_0.a > -1i)) & !(var_1.x || all(vec4<bool>(var_2, false, var_2, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = u_input.a;
    let var_1 = vec3<i32>(-6692i, ~(i32(-1i) * -reverseBits(u_input.a)), 2147483647i);
    global0 = array<u32, 16>();
    return var_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = vec2<i32>(u_input.a, u_input.a);
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    var var_1 = Struct_2(func_4(all(func_3(Struct_1(u_input.b, u_input.b, vec3<f32>(-314f, 1541f, 1765f), u_input.b))), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c, 28744u, 6997u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 16u)], 16u)], 16u)])), firstLeadingBit(u_input.b.x), max(4294967295u, 4294967295u), 12477u), ~u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1642f, arg_0.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.c, 16u)], u_input.c, 1u) ^ u_input.b, u_input.b)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.c, 16u)] >> (global0[_wgslsmith_index_u32(u_input.c, 16u)] % 32u), 3605u, 68162u), ~32636u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~120291u, 16u)], 16u)], 16u)])), ~var_0.x, _wgslsmith_f_op_f32(select(arg_1, arg_0.x, true)), 0u);
    return !vec2<bool>(!arg_2.x, arg_2.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(u_input.b, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-382f, arg_1, 276f), vec3<f32>(arg_3.c, arg_1, -720f)))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), arg_3.c, _wgslsmith_f_op_f32(1000f + arg_3.c)))), u_input.b);
    var var_1 = vec4<u32>(firstLeadingBit(countOneBits(min(4294967295u, var_0.b.x))), 4294967295u, arg_2.x, arg_2.x);
    let var_2 = ~(4294967295u | ~var_0.a.x);
    let var_3 = Struct_2(-(~2147483647i << (u_input.b.x % 32u)), ~(i32(-1i) * -27072i), arg_1, var_2);
    let var_4 = Struct_2(var_3.a, ~arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)) + arg_1), ~_wgslsmith_dot_vec2_u32(~u_input.b.wz, ~vec2<u32>(u_input.b.x, 49917u)));
    return arg_3.b;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(vec4<u32>(116941u, ~1u, u_input.b.x, ~firstLeadingBit(13317u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~69476u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6600u, 16u)], 16u)], abs(~global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), 8593u), ~vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.c, 1u, u_input.c & 8126u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 527f, 585f) + _wgslsmith_div_vec3_f32(vec3<f32>(-2366f, 1424f, 191f), vec3<f32>(-1826f, 1456f, -796f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, 674f, -619f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2382f, _wgslsmith_div_f32(-489f, -382f), _wgslsmith_f_op_f32(f32(-1f) * -567f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1642f, -984f, -1500f)) + vec3<f32>(-575f, 317f, -118f)))))), u_input.b);
    let var_1 = u_input.b.x;
    let var_2 = reverseBits(abs(-_wgslsmith_sub_i32(firstTrailingBit(10978i), 0i)));
    let var_3 = var_0.c;
    global0 = array<u32, 16>();
    return -vec4<i32>(min(~(i32(-1i) * -1i), u_input.a), func_5(!func_2(var_0.c.yz, -355f, vec2<bool>(false, false)), var_0.c.x, ~vec3<u32>(var_0.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a.x, 16u)], 16u)], var_1) << (vec3<u32>(0u, 32428u, u_input.b.x) % vec3<u32>(32u)), Struct_2(-31717i, min(0i, -2147483647i), _wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_dot_vec2_u32(u_input.b.xx, var_0.b.yy))), reverseBits(1i), -var_2);
}

fn func_6(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(~(vec4<u32>(0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.d), u_input.b.yz), 16u)], global0[_wgslsmith_index_u32(~68970u, 16u)], reverseBits(u_input.d)) & _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(95514u, 0u, u_input.d, u_input.b.x)), u_input.b)), u_input.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(365f, 517f, 310f))) * vec3<f32>(-1000f, 1000f, 1239f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-124f, -840f, 516f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, -248f, -1173f))))), firstLeadingBit(u_input.b));
    var var_1 = vec2<bool>(false, !func_2(_wgslsmith_f_op_vec2_f32(var_0.c.yz * _wgslsmith_f_op_vec2_f32(-var_0.c.zz)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c.x))), select(vec2<bool>(true, false), vec2<bool>(false, false), func_2(vec2<f32>(1604f, 869f), 632f, vec2<bool>(true, false)).x)).x);
    var_0 = Struct_1(abs(vec4<u32>(u_input.c, _wgslsmith_mult_u32(~91682u, u_input.c), firstLeadingBit(u_input.b.x), global0[_wgslsmith_index_u32(~(~4294967295u), 16u)])), ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 4294967295u, global0[_wgslsmith_index_u32(50543u, 16u)]) & vec4<u32>(global0[_wgslsmith_index_u32(4517u, 16u)], 16850u, 10297u, 16698u)), ~(vec4<u32>(0u, var_0.b.x, 22711u, 34247u) >> (u_input.b % vec4<u32>(32u)))), var_0.c, vec4<u32>(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b.x, 54029u), vec3<u32>(70617u, 58187u, var_0.b.x))), var_0.b.x << (_wgslsmith_mult_u32(var_0.b.x, countOneBits(54648u)) % 32u), 14068u, 1u));
    var var_2 = Struct_1(~vec4<u32>(max(u_input.c, 78817u), _wgslsmith_sub_u32(2376u, 1u), select(1u, 0u, var_1.x), var_0.a.x ^ global0[_wgslsmith_index_u32(1u, 16u)]) << (abs(_wgslsmith_mult_vec4_u32(u_input.b << (vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 89287u, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 16u)]) % vec4<u32>(32u)), ~vec4<u32>(var_0.d.x, var_0.d.x, u_input.b.x, 0u))) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(34844u, 16u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 16u)], 12617u), vec2<u32>(22787u, 87792u)), ~(~var_0.a.yz)), 52280u, 15309u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.c))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 299f), var_0.c)))), vec4<u32>(23642u, firstLeadingBit(firstTrailingBit(1u)), ~min(u_input.b.x, countOneBits(37094u)), ~global0[_wgslsmith_index_u32(u_input.b.x, 16u)]));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(951f, 983f) - var_2.c.xz) + vec2<f32>(var_0.c.x, -1790f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-236f, -537f) + var_0.c.x), 2136f)), var_0.c.xz));
    return Struct_2(~_wgslsmith_mult_i32(~_wgslsmith_mod_i32(0i, -20581i), -(u_input.a & 2276i)), -1i, _wgslsmith_f_op_f32(f32(-1f) * -836f), 4294967295u & ~(~var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-_wgslsmith_mod_vec4_i32(func_1(), vec4<i32>(u_input.a, abs(9327i), u_input.a, u_input.a ^ 41742i)));
    var var_1 = func_6(vec4<i32>(func_6(abs(~vec4<i32>(u_input.a, 62244i, 4545i, u_input.a))).a, ~(-1i), -17809i, ~_wgslsmith_div_i32(u_input.a, u_input.a) ^ -u_input.a));
    let var_2 = countOneBits(~vec2<u32>(~0u ^ _wgslsmith_dot_vec3_u32(u_input.b.xzz, u_input.b.yyz), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_1.d, var_1.d, u_input.d, global0[_wgslsmith_index_u32(8629u, 16u)])) >> (~global0[_wgslsmith_index_u32(var_1.d, 16u)] % 32u)));
    var var_3 = Struct_1(u_input.b, vec4<u32>(var_0.d, 46683u, 22488u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.x, 34461u, u_input.b.x), select(u_input.b.xyy, ~u_input.b.xyw, any(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.c, var_1.c) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1224f, var_0.c, var_1.c)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, 556f, 1663f)))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))))), max(abs(vec4<u32>(global0[_wgslsmith_index_u32(~u_input.b.x, 16u)], 4294967295u & u_input.d, 0u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.d, var_1.d), 16u)])), abs(vec4<u32>(1u, var_0.d & 36585u, 33768u, 12326u))));
    var var_4 = ~_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.wy), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(13487u, 16u)], 0u)), vec2<u32>(_wgslsmith_mult_u32(1u, var_1.d), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_1.d), vec2<u32>(var_3.d.x, u_input.c))), vec2<u32>(~u_input.b.x, ~1836u)));
    var var_5 = true;
    var var_6 = Struct_2(_wgslsmith_sub_i32(-u_input.a, -29265i), 6634i, var_3.c.x, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_6.c, -478f, 1114f, -230f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, -1588f, var_6.c, 571f) * vec4<f32>(495f, -806f, var_0.c, var_0.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(762f, var_1.c, var_1.c, 1000f)))))), min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, var_4.x), _wgslsmith_dot_vec3_u32(~u_input.b.yzz, vec3<u32>(var_3.d.x, var_3.b.x, 42877u))), (global0[_wgslsmith_index_u32(firstLeadingBit(var_3.b.x), 16u)] << (~var_6.d % 32u)) | ~4294967295u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1197f), var_3.c.x, _wgslsmith_f_op_f32(1f + var_1.c), _wgslsmith_f_op_f32(676f * var_6.c)), ~(-vec3<i32>(-47031i, select(2147483647i, -2147483647i, false), ~12683i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(round(var_6.c)), _wgslsmith_f_op_f32(2136f + -689f), _wgslsmith_f_op_f32(trunc(var_3.c.x))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_3.c.x, var_3.c.x, var_0.c)))))));
}

