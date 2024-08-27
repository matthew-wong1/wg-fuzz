struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 41578u, 74854u);

var<private> global2: array<Struct_2, 1>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(27679u, 0u, 28935u, 4294967295u), vec4<u32>(57201u, 40261u, 10565u, 13515u), vec4<u32>(1u, 41823u, 29943u, 4294967295u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(0u, 1u, 17501u, 4294967295u), vec4<u32>(20457u, 1u, 4294967295u, 62099u), vec4<u32>(4294967295u, 27074u, 5928u, 53743u), vec4<u32>(11897u, 24066u, 21146u, 4294967295u), vec4<u32>(80280u, 87855u, 1u, 4294967295u), vec4<u32>(8443u, 19442u, 0u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, min(arg_0.a.d, _wgslsmith_clamp_u32(~90232u, _wgslsmith_mod_u32(global3.x, 64063u) & 53629u, min(firstLeadingBit(1270u), 1u)))), 10u)];
    global3 = vec2<u32>(~arg_0.a.d, arg_0.c.x);
    var var_1 = _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(abs(-(20874i | u_input.b)), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -2147483647i, arg_0.b, arg_0.b)) & -2147483647i, ~abs(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c))));
    global2 = array<Struct_2, 1>();
    let var_2 = u_input.c.xy;
    return ~abs(~global3.x);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_3(arg_0, -(~(-2147483647i)) ^ u_input.b, global1.yy, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1998f, arg_0.b.x, -1094f, -1840f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1607f, arg_0.e, arg_0.e, 894f) * arg_0.b))))), !select(!select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), !vec4<bool>(arg_0.a, true, false, true), (u_input.c.x | -1i) >= -44215i));
    global0 = array<Struct_3, 21>();
    global1 = ~(~abs(_wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(global1.x, 10u)], vec4<u32>(17884u, 38215u, arg_0.d, 0u)) & vec4<u32>(13451u, 4294967295u, arg_0.d, var_0.c.x)));
    let var_1 = vec4<i32>(~var_0.b, _wgslsmith_add_i32(u_input.a.x, u_input.b), ~_wgslsmith_mult_i32(-31102i, 23566i >> (global1.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.wz), -20422i, 33591i) << (~vec3<u32>(var_0.a.d, global1.x, arg_0.d) % vec3<u32>(32u)), u_input.c));
    let var_2 = -1i;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2) << (vec2<u32>(arg_0.d, var_0.a.d) % vec2<u32>(32u)), select(var_1.xz, u_input.a.zy, var_0.e.x)), var_0.b), 2147483647i, _wgslsmith_clamp_i32(max(u_input.a.x, var_0.b), var_2, var_2)), firstLeadingBit(~_wgslsmith_mod_vec3_i32(var_1.zwy >> (vec3<u32>(46951u, 13835u, 4518u) % vec3<u32>(32u)), -vec3<i32>(var_1.x, u_input.b, -1i))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_5(Struct_4(global1.x & 74030u, 1u));
    var_0 = Struct_5(Struct_4(8542u, min(max(1u, ~global3.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, arg_0), vec2<u32>(1u, 2045u)))));
    global2 = array<Struct_2, 1>();
    global0 = array<Struct_3, 21>();
    var var_1 = Struct_3(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, 305f, -773f, 494f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-744f - _wgslsmith_f_op_f32(f32(-1f) * -555f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)), countOneBits(var_0.a.b), 1000f), func_4(Struct_1(all(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, -613f, 965f, -1897f))), -1528f, _wgslsmith_div_u32(countOneBits(global1.x), func_3(global0[_wgslsmith_index_u32(global1.x, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-362f))))), ~(~(_wgslsmith_clamp_vec2_u32(global1.yw, global1.wz, vec2<u32>(4294967295u, arg_0)) << (~global1.yy % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1353f, -1436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-745f, 261f))), _wgslsmith_f_op_f32(min(-787f, 1805f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2838f, -369f))))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    return var_1.c.x;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4) -> u32 {
    global3 = _wgslsmith_div_vec2_u32(~global1.xy, firstTrailingBit((_wgslsmith_add_vec2_u32(vec2<u32>(19173u, global1.x), vec2<u32>(global3.x, arg_1.x)) >> (~global1.zz % vec2<u32>(32u))) | vec2<u32>(func_2(global3.x), arg_1.x)));
    let var_0 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(arg_1.x, 265u, 75328u))), func_2(~arg_1.x)), 21u)]);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(arg_1.x, 4294967295u << ((23509u >> (arg_2.b % 32u)) % 32u)) & 42584u), 21u)];
    let var_2 = true || var_1.e.x;
    global4 = array<vec4<u32>, 10>();
    return func_3(Struct_3(Struct_1(true, vec4<f32>(484f, var_1.a.e, _wgslsmith_div_f32(arg_0, -684f), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(select(arg_0, -468f, false))), 3074u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(-1000f)))), var_1.b, vec2<u32>(~var_0 ^ ~var_0, _wgslsmith_sub_u32(global3.x, arg_1.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.e), 307f), _wgslsmith_f_op_f32(arg_0 * 1669f), 1311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), select(select(!vec4<bool>(true, var_1.a.a, var_2, true), var_1.e, var_2), vec4<bool>(var_1.a.a, var_0 > arg_2.a, true, var_1.a.a), !var_1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(464f - _wgslsmith_f_op_f32(f32(-1f) * -1333f));
    var var_1 = -1310f;
    var var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(~global1.x), global1.x, abs(~4294967295u)), _wgslsmith_div_u32(~global1.x, global1.x), func_1(_wgslsmith_f_op_f32(abs(-1070f)), ~vec3<u32>(1u, global3.x, 4294967295u), Struct_4(global3.x, 21718u)) ^ ~4294967295u), min(65910u, ~4294967295u), firstLeadingBit(min(4294967295u, global1.x)));
    let var_3 = u_input.c.x;
    var_1 = 809f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(4294967295u), 1u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(round(-197f)), 1128f, 1266f, -642f), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, firstTrailingBit(var_2.x), ~global3.x), vec3<u32>(~var_2.x, ~var_2.x, 63104u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_2.x, ~var_2.x, firstTrailingBit(global3.x)), global1.xzy)));
}

