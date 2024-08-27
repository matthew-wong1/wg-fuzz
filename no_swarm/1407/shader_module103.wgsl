struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 31> = array<u32, 31>(1u, 1958u, 1u, 4294967295u, 4294967295u, 65872u, 0u, 0u, 63159u, 4294967295u, 0u, 0u, 35842u, 4294967295u, 59699u, 4294967295u, 18488u, 22278u, 7516u, 1u, 110255u, 33887u, 19068u, 90263u, 10218u, 4294967295u, 0u, 38923u, 38759u, 0u, 1u);

var<private> global2: i32 = 2147483647i;

var<private> global3: vec4<i32>;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1226f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(545f))))), -1370f)), _wgslsmith_div_f32(971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-168f, -295f, arg_3)) - _wgslsmith_f_op_f32(sign(525f))))), 1f, 1206f);
    global1 = array<u32, 31>();
    var var_1 = vec4<f32>(602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2135f), _wgslsmith_f_op_f32(f32(-1f) * -989f))) + _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-377f, -1232f))), var_0.x) + _wgslsmith_f_op_f32(sign(-231f))), var_0.x);
    global2 = -1i;
    let var_2 = -_wgslsmith_div_i32(_wgslsmith_sub_i32(global3.x & global4.x, -40618i), global3.x) >> (1u % 32u);
    return select(!arg_1.zyy, arg_1.yzz, !(!(!(!arg_1.wxy))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    global1 = array<u32, 31>();
    global2 = arg_0.x;
    var var_0 = -vec4<i32>(_wgslsmith_div_i32(-20712i, 24183i << (1u % 32u)) >> (~4294967295u % 32u), -global4.x, arg_0.x, -2147483647i);
    let var_1 = vec4<bool>(arg_2.x, global1[_wgslsmith_index_u32(global0.a.x, 31u)] > ~global1[_wgslsmith_index_u32(~(~4294967295u), 31u)], true, all(select(arg_2.zyz, vec3<bool>(false, arg_2.x, true), select(select(vec3<bool>(true, arg_2.x, false), vec3<bool>(arg_2.x, false, arg_2.x), arg_2.yxw), func_3(u_input.a.yx, vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec3<i32>(var_0.x, arg_1, -2147483647i), true), true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-597f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(743f + 398f))))), -vec2<i32>(2147483647i, -u_input.a.x >> (max(1u, global1[_wgslsmith_index_u32(4294967295u, 31u)]) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_3(vec4<i32>(8758i, firstTrailingBit((arg_0.b.x ^ -1i) & global4.x), -reverseBits(_wgslsmith_mult_i32(global4.x, 1049i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(0i, ~global4.x), 0i & firstTrailingBit(-1i), global4.x)));
    let var_2 = Struct_3(vec4<i32>(0i, reverseBits(_wgslsmith_div_i32(select(global3.x, arg_0.b.x, arg_2.x), firstLeadingBit(-1i))), -17129i, 61019i));
    var var_3 = ~(~select(~firstTrailingBit(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 31u)], 48931u)), ~(~vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<bool>(arg_2.x, true, false)));
    global2 = _wgslsmith_mod_i32(-2147483647i, global3.x);
    return vec2<bool>(false, true);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    global0 = Struct_4(firstLeadingBit(max(abs(vec2<u32>(global1[_wgslsmith_index_u32(global0.a.x, 31u)], global1[_wgslsmith_index_u32(global0.a.x, 31u)])), ~(~global0.a))));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_1, arg_1)))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(-arg_1)), any(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(floor(739f)))));
    global3 = ~max(vec4<i32>(~u_input.a.x, max(~global3.x, ~global3.x), global3.x, -6021i), vec4<i32>(-u_input.a.x, global3.x, countOneBits(2147483647i), min(_wgslsmith_clamp_i32(u_input.a.x, -1i, -2147483647i), -2147483647i)));
    var var_1 = vec2<bool>(arg_0.a != _wgslsmith_f_op_f32(f32(-1f) * -401f), false);
    var_1 = select(select(select(select(vec2<bool>(true, true), !vec2<bool>(false, var_1.x), true), func_4(func_2(vec2<i32>(u_input.a.x, 37094i), u_input.a.x, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), arg_1, !vec4<bool>(var_1.x, true, true, true), firstLeadingBit(global0.a.x)), func_3(vec2<i32>(global4.x, global3.x), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), -vec3<i32>(global4.x, 1i, global4.x), true).zx), select(vec2<bool>(select(var_1.x, var_1.x, false), false & var_1.x), vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x)), func_4(func_2(max(vec2<i32>(1i, u_input.a.x), global3.xz), global3.x, vec4<bool>(var_1.x, true, true, false)), -127f, !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), global0.a.x)), func_3(select(vec2<i32>(global3.x, global4.x) >> (abs(global0.a) % vec2<u32>(32u)), vec2<i32>(0i, 1i) & (vec2<i32>(u_input.a.x, global3.x) ^ vec2<i32>(global3.x, u_input.a.x)), any(vec2<bool>(false, var_1.x))), vec4<bool>(!any(vec2<bool>(var_1.x, var_1.x)), !select(false, true, false), !var_1.x & true, false), vec3<i32>(~_wgslsmith_div_i32(-1i, 2147483647i), 0i, global4.x), var_1.x).xz, !vec2<bool>(var_1.x, false));
    return func_2(vec2<i32>(-31047i, 2147483647i), _wgslsmith_dot_vec4_i32(u_input.a, min(vec4<i32>(global3.x, 0i, _wgslsmith_clamp_i32(u_input.a.x, global4.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 60637i), global3.zw)), -abs(u_input.a))), select(!vec4<bool>(var_1.x, true, true, !var_1.x), select(!vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true), true), (firstLeadingBit(global3.x) <= (global4.x >> (27819u % 32u))) == false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, u_input.a.x)), min(global3.x, reverseBits(2147483647i)) >> (_wgslsmith_clamp_u32(4294967295u, countOneBits(global0.a.x), _wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(4294967295u, 32932u))) % 32u), -1i));
    global2 = u_input.a.x;
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(ceil(-1192f))), _wgslsmith_div_f32(-1145f, _wgslsmith_f_op_f32(min(1398f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1436f + 448f))))));
    var var_2 = var_0;
    var var_3 = var_0;
    global4 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(func_1(func_1(func_2(u_input.a.yw, var_2.a.x, vec4<bool>(false, false, false, true)).a, var_1.a.a).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a))).b, vec2<i32>(2147483647i, 46527i >> (1u % 32u))), -vec2<i32>(select(0i, var_3.a.x, false) >> (abs(0u) % 32u), _wgslsmith_mult_i32(var_3.a.x & var_1.b.x, global4.x)), vec2<i32>(26931i, u_input.a.x));
    var var_4 = -(~(~_wgslsmith_mod_vec2_i32(global3.yx, global3.zw)) & var_3.a.ww);
    global2 = ~firstTrailingBit(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, reverseBits(reverseBits(countOneBits(vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(72072u, 31u)], 47188u)) << (~vec4<u32>(1u, 1u, global0.a.x, global1[_wgslsmith_index_u32(6372u, 31u)]) % vec4<u32>(32u)))), min(_wgslsmith_add_i32(~u_input.a.x, i32(-1i) * -2147483647i), countOneBits(~global4.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a.x, -24206i), vec2<i32>(0i, var_0.a.x))), vec3<u32>(4294967295u, 4294967295u, global0.a.x), _wgslsmith_div_vec4_u32(~firstLeadingBit(~vec4<u32>(global1[_wgslsmith_index_u32(68183u, 31u)], 4294967295u, 35884u, 0u)), ~vec4<u32>(_wgslsmith_div_u32(global0.a.x, global0.a.x), _wgslsmith_add_u32(1u, 46169u), 12884u, ~global0.a.x)));
}

