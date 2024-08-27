struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(44346u, 1u, 71268u);

var<private> global1: array<u32, 25> = array<u32, 25>(9898u, 4294967295u, 1047u, 4294967295u, 0u, 0u, 4294967295u, 1u, 54364u, 4294967295u, 53477u, 1u, 0u, 0u, 59422u, 0u, 0u, 30197u, 1u, 56007u, 40046u, 17202u, 4294967295u, 1u, 22226u);

var<private> global2: vec4<u32>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec3<bool> {
    global1 = array<u32, 25>();
    let var_0 = ~82669u;
    global4 = array<Struct_1, 29>();
    global0 = select(vec3<u32>(~4294967295u, firstTrailingBit(1u), _wgslsmith_clamp_u32(countOneBits(0u), firstTrailingBit(0u), 34761u)) ^ vec3<u32>(u_input.a.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(41704u, global2.x, global3.b), global3.b), 1u), vec3<u32>(37674u, global1[_wgslsmith_index_u32(max(select(1u, global0.x, false), ~arg_1), 25u)], min(_wgslsmith_clamp_u32(u_input.a.x, 0u, 1u), 9292u)) & vec3<u32>(0u, global3.b, ~select(global0.x, 4294967295u, false)), true);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(f32(-1f) * -880f));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: vec2<bool>) -> vec3<bool> {
    var var_0 = ~_wgslsmith_dot_vec4_i32(~(~vec4<i32>(29863i, -6854i, 2147483647i, global3.a.x)) >> (vec4<u32>(0u, global1[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)], 4294967295u, min(global2.x, 8539u)) % vec4<u32>(32u)), global3.a);
    let var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = global4[_wgslsmith_index_u32(select(4294967295u | select(global2.x, u_input.a.x, arg_0.x | false), (~(global0.x | u_input.a.x) & global0.x) << (~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global1[_wgslsmith_index_u32(global0.x, 25u)], u_input.a.x), vec2<u32>(global0.x, global2.x)), vec2<u32>(48236u, global0.x)), 25u)] % 32u), true), 29u)];
    var var_3 = _wgslsmith_div_u32(global1[_wgslsmith_index_u32(87653u, 25u)], global3.b);
    var var_4 = Struct_1(~(~(~_wgslsmith_sub_vec4_i32(var_2.a, global3.a))), u_input.a.x);
    return select(!select(vec3<bool>(!arg_0.x, var_2.a.x == var_4.a.x, arg_0.x), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, true, true), arg_0.x & arg_0.x), true), select(vec3<bool>(all(vec2<bool>(false, false)), (var_4.a.x <= 39956i) || false, arg_0.x), select(!(!vec3<bool>(false, arg_0.x, false)), vec3<bool>(arg_0.x, arg_0.x, false), all(select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x)))), vec3<bool>(!all(arg_0), all(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), true)), !func_3(~(~var_2.a.ww), 1u, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) >> (vec2<u32>(4294967295u, var_2.b) % vec2<u32>(32u)), u_input.a), ~var_4.a.x));
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = min(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, 4992u, 104085u), 25u)] & u_input.a.x, global0.x), ~vec2<u32>(u_input.a.x, ~global3.b)) << (abs(vec2<u32>(u_input.a.x, 19917u)) % vec2<u32>(32u));
    global2 = ~firstTrailingBit(_wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a.x, var_0.x, 125653u, global2.x) >> (vec4<u32>(0u, 1u, global1[_wgslsmith_index_u32(global0.x, 25u)], global0.x) % vec4<u32>(32u))), ~vec4<u32>(38853u, 0u, global3.b, global0.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-725f * 1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-175f, -887f, arg_0.x)))) * -128f));
    let var_2 = firstLeadingBit(~vec4<u32>(2595u, global2.x, firstTrailingBit(3026u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global0.x), 25u)]));
    let var_3 = _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, 0u, 7520u) >> (var_2 % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 15511u, global0.x, 79803u), vec4<u32>(global3.b, u_input.a.x, 0u, var_2.x)))), vec4<u32>(~(~0u), select(_wgslsmith_mult_u32(var_2.x, select(var_0.x, 4294967295u, arg_0.x)), global2.x, arg_0.x), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_0.x, global2.x, var_0.x), 12767u, global3.b), 25u)], global1[_wgslsmith_index_u32((firstTrailingBit(14177u) ^ 139136u) << (93063u % 32u), 25u)]));
    return Struct_1(countOneBits(global3.a) & _wgslsmith_add_vec4_i32(abs(global3.a), min(global3.a, -global3.a)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(12170u, 0u, global2.x, 14936u), ~var_2)) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, var_2.x), ~(~1u)) % 32u));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(global3.a, vec4<i32>(-(i32(-1i) * -1i), ~_wgslsmith_dot_vec3_i32(global3.a.xyy, vec3<i32>(2147483647i, global3.a.x, 19i)), ~global3.a.x, global3.a.x), firstLeadingBit(global3.a)), _wgslsmith_mod_u32(arg_0.b, ~u_input.a.x));
    var var_1 = func_4(!select(!func_2(vec2<bool>(true, true)), vec3<bool>(false, true, global0.x < 0u), true));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(619f, -1371f))) - 953f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1313f), 166f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -976f) + 671f) * 859f)));
    var var_3 = arg_0;
    global4 = array<Struct_1, 29>();
    return global2.zy;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_1.a.x;
    global1 = array<u32, 25>();
    let var_1 = _wgslsmith_add_vec3_u32(global2.zxw, vec3<u32>(~arg_1.b, 58222u ^ ~(~arg_1.b), arg_0.x));
    var var_2 = firstTrailingBit(firstLeadingBit(global3.a.xz));
    return Struct_1(~func_4(func_2(vec2<bool>(arg_3, arg_3))).a, min(~_wgslsmith_add_u32(20658u & global3.b, func_4(vec3<bool>(false, arg_3, true)).b), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.x, global3.b), ~42894u), global1[_wgslsmith_index_u32(abs(1u), 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.a, ~(_wgslsmith_div_u32(4294967295u, u_input.a.x) | 20435u));
    let var_1 = func_5(vec2<u32>(_wgslsmith_dot_vec2_u32(max(global0.xy, ~global0.xz), func_1(Struct_1(var_0.a, global1[_wgslsmith_index_u32(global2.x, 25u)]))), 1u), Struct_1(~abs(global3.a), ~(~18233u << (var_0.b % 32u))), func_4(func_2(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), true & all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)));
    var var_2 = ~vec4<u32>(~_wgslsmith_div_u32(1u, 4294967295u), global3.b, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 50242u), global0.xz)), select(func_4(vec3<bool>(false, false, true)).b, _wgslsmith_clamp_u32(10246u, 24941u, 59161u), true) << (global3.b % 32u));
    global3 = Struct_1(vec4<i32>(var_1.a.x, var_0.a.x, global3.a.x, -var_0.a.x) & min(~(vec4<i32>(0i, var_0.a.x, 14078i, 1i) & vec4<i32>(global3.a.x, global3.a.x, var_1.a.x, -2147483647i)), -(~global3.a)), ~firstTrailingBit(~0u));
    let var_3 = Struct_1(select(-_wgslsmith_sub_vec4_i32(vec4<i32>(23543i, var_1.a.x, -1i, 39407i), min(vec4<i32>(9170i, 1i, -2147483647i, var_0.a.x), var_1.a)), _wgslsmith_add_vec4_i32(global3.a, ~(-global3.a)), select(vec4<bool>(false, any(vec4<bool>(false, true, true, false)), true, true), vec4<bool>(true, true, true, true), true)), var_0.b);
    var_0 = func_4(select(vec3<bool>(true, true, true), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false)))), vec3<bool>(true, true, true)));
    let var_4 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(func_5(vec2<u32>(u_input.a.x, 301u) << (u_input.a % vec2<u32>(32u)), var_1, global4[_wgslsmith_index_u32(countOneBits(36456u), 29u)], any(vec2<bool>(true, true))).a, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, 49558i, global3.a.x, var_3.a.x), global3.a)), _wgslsmith_div_vec4_i32(countOneBits(var_1.a), var_3.a)), firstTrailingBit(3395u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.x & (_wgslsmith_dot_vec2_i32(var_0.a.xy ^ var_3.a.zw, var_3.a.xw >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) >> (~countOneBits(var_2.x) % 32u)));
}

