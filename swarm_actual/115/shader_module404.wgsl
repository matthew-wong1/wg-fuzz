struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, true, true));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(1000f, 281f, -1000f, 515f), vec4<f32>(-2063f, -931f, 1114f, -1784f), vec4<f32>(391f, -383f, -362f, 1066f), vec4<f32>(832f, 1223f, 133f, -1575f), vec4<f32>(1342f, -1151f, -402f, -1000f), vec4<f32>(485f, -731f, -1000f, 1219f), vec4<f32>(472f, 634f, -793f, -1000f), vec4<f32>(-312f, 1721f, -1411f, -964f), vec4<f32>(1532f, -204f, 1167f, 258f), vec4<f32>(1741f, -1285f, 1499f, 2035f), vec4<f32>(228f, -2002f, -2071f, 434f), vec4<f32>(578f, -1723f, 936f, 364f), vec4<f32>(-1353f, 1319f, -1217f, -300f), vec4<f32>(1713f, -924f, 297f, 601f), vec4<f32>(1049f, -817f, -1074f, 290f), vec4<f32>(788f, -465f, -435f, 205f), vec4<f32>(286f, -1173f, 664f, -133f), vec4<f32>(-1627f, -184f, -1115f, -767f), vec4<f32>(469f, -339f, -1049f, -734f), vec4<f32>(993f, -328f, -219f, -535f), vec4<f32>(-1000f, -149f, 1000f, 1000f), vec4<f32>(1000f, 1245f, -892f, -624f), vec4<f32>(-462f, 548f, 1082f, 200f), vec4<f32>(583f, 793f, -839f, -551f), vec4<f32>(-1266f, -2638f, 567f, -1684f), vec4<f32>(-144f, 444f, -314f, 944f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<i32> {
    global0 = global1[_wgslsmith_index_u32(abs(arg_2.b), 27u)];
    let var_0 = arg_0.a;
    global0 = Struct_1(!var_0);
    global0 = func_2(all(!vec2<bool>(var_0.x, true)), func_2(all(!vec4<bool>(var_0.x, arg_0.a.x, true, arg_3.x)), Struct_1(select(!var_0, var_0, !vec4<bool>(arg_3.x, arg_3.x, false, true))), (-u_input.b.x | _wgslsmith_mod_i32(0i, arg_2.a)) >> (_wgslsmith_mult_u32(4403u, arg_2.b) % 32u), func_2(global0.a.x, func_2(true, func_2(true, global1[_wgslsmith_index_u32(4294967295u, 27u)], 0i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), Struct_1(var_0)), -2147483647i, Struct_1(vec4<bool>(true, false, true, false)))), 0i, arg_0);
    global0 = Struct_1(!vec4<bool>(all(vec3<bool>(false, true, true)), var_0.x, var_0.x, false));
    return select(-max(firstTrailingBit(u_input.b.xz ^ u_input.b.xy), _wgslsmith_sub_vec2_i32(abs(arg_1.zz), vec2<i32>(arg_2.a, 47821i))), vec2<i32>(22919i, (29189i << (~u_input.a.x % 32u)) ^ (firstTrailingBit(u_input.b.x) << (~arg_2.b % 32u))), !arg_0.a.x);
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    global0 = func_2(true, func_2(any(!vec2<bool>(global0.a.x, global0.a.x)), func_2(global0.a.x, Struct_1(global0.a), -2147483647i, Struct_1(!global0.a)), ~arg_0.x, Struct_1(!vec4<bool>(global0.a.x, false, false, global0.a.x))), arg_0.x, Struct_1(!vec4<bool>(any(global0.a.zzw), true, u_input.a.x >= u_input.a.x, global0.a.x)));
    var var_0 = Struct_1(func_2(all(func_2(true, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 30739u), 27u)], _wgslsmith_mult_i32(0i, 22182i), global1[_wgslsmith_index_u32(reverseBits(0u), 27u)]).a), Struct_1(global0.a), -2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]).a);
    var_0 = func_2(global0.a.x, Struct_1(func_2(global0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], min(arg_0.x, -8175i), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]).a), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), abs(vec3<i32>(0i, arg_0.x, -2147483647i))), u_input.b & vec3<i32>(2147483647i >> (1u % 32u), 2147483647i, arg_0.x)), Struct_1(var_0.a));
    let var_1 = var_0.a.x;
    let var_2 = _wgslsmith_add_vec3_i32(~select(-vec3<i32>(29140i, -20180i, 17663i), vec3<i32>(firstLeadingBit(2147483647i), arg_0.x, u_input.b.x), global0.a.x), (select(vec3<i32>(2973i, u_input.b.x, -1i), -vec3<i32>(u_input.b.x, arg_0.x, arg_0.x), var_0.a.x) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -39606i), vec3<i32>(2147483647i, -2731i, 20599i)) ^ u_input.b)) << (firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<bool>(false, global0.a.x, var_0.a.x)))) % vec3<u32>(32u)));
    return abs(u_input.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = 1i;
    var var_1 = ~min(func_4(func_3(func_2(true, global1[_wgslsmith_index_u32(arg_2.b, 27u)], arg_1.x, Struct_1(vec4<bool>(false, global0.a.x, global0.a.x, false))), ~vec4<i32>(0i, arg_2.a, arg_1.x, -1073i), arg_2, vec2<bool>(global0.a.x, false))), arg_2.b);
    var var_2 = all(global0.a.zxx);
    var var_3 = vec3<f32>(arg_0.x, 263f, 1000f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(max(-2097f, -1178f))))) * arg_0.x));
    return _wgslsmith_sub_u32(firstLeadingBit(arg_2.b), _wgslsmith_mult_u32(0u, 0u));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<i32> {
    global0 = Struct_1(!select(!arg_2.a, select(select(vec4<bool>(global0.a.x, false, global0.a.x, arg_0.x), vec4<bool>(false, true, true, global0.a.x), true), global0.a, !arg_2.a), vec4<bool>(any(global0.a.xx), select(arg_0.x, global0.a.x, arg_0.x), global0.a.x, !arg_2.a.x)));
    let var_0 = select(vec4<i32>(_wgslsmith_clamp_i32(-(~(-1i)), -(-38671i & u_input.b.x), -(~(-2147483647i))), u_input.b.x, select(-1i, ~(~u_input.b.x), !func_2(arg_2.a.x, Struct_1(global0.a), u_input.b.x, Struct_1(arg_2.a)).a.x), countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, 24164i), u_input.b.x))), ~firstLeadingBit(-(vec4<i32>(2147483647i, -594i, u_input.b.x, -2147483647i) & vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<bool>(true, true, global0.a.x, false));
    global1 = array<Struct_1, 27>();
    var var_1 = global1[_wgslsmith_index_u32(~(~arg_1.x), 27u)];
    global1 = array<Struct_1, 27>();
    return vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), ~(-2147483647i)))), firstTrailingBit(~(-var_0.x)), u_input.b.x, ~_wgslsmith_clamp_i32(select(u_input.b.x >> (u_input.a.x % 32u), var_0.x, false), ~var_0.x & -24448i, -1i));
}

fn func_6(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2) -> vec3<bool> {
    global0 = func_2(false, global1[_wgslsmith_index_u32(1u, 27u)], 16069i, global1[_wgslsmith_index_u32(~(~reverseBits(arg_1)), 27u)]);
    let var_0 = firstTrailingBit(select(vec3<u32>(~arg_2.b, arg_1, arg_2.b), reverseBits(firstLeadingBit(vec3<u32>(0u, 27203u, arg_2.b))), vec3<bool>(true, false, any(global0.a.wx))) << (~(~vec3<u32>(arg_2.b, arg_2.b, 33176u)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 27>();
    var var_1 = func_2(true, func_2(true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], u_input.b.x, global1[_wgslsmith_index_u32(14042u, 27u)]), ~0i, Struct_1(vec4<bool>(true, global0.a.x, select(global0.a.x, arg_0.x > u_input.b.x, global0.a.x), global0.a.x)));
    var_1 = func_2(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~firstTrailingBit(vec3<u32>(arg_1, arg_1, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(19975u, 4294967295u, 4294967295u), abs(var_0))), select(vec3<u32>(_wgslsmith_div_u32(0u, arg_1), arg_2.b, 4294967295u >> (arg_2.b % 32u)), var_0, any(select(vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(global0.a.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, global0.a.x, var_1.a.x, global0.a.x))))), 27u)], -71957i, Struct_1(vec4<bool>(false, true || global0.a.x, false, all(select(vec3<bool>(true, false, true), vec3<bool>(global0.a.x, true, var_1.a.x), false)))));
    return global0.a.wyz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(!vec3<bool>(global0.a.x & false, all(global0.a), true), min(vec3<u32>(abs(u_input.a.x), u_input.a.x, 4783u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, 67966u), vec3<u32>(1u, u_input.a.x, 4294967295u)), 0u, func_1(vec2<f32>(1000f, 1182f), vec4<i32>(-23018i, -2554i, u_input.b.x, -27074i), Struct_2(-2147483647i, 0u)))), Struct_1(global0.a)), ~1753u, Struct_2(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(23478i, u_input.b.x, u_input.b.x) >> (25677u % 32u)), ~func_1(vec2<f32>(1265f, -1085f), vec4<i32>(59799i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(u_input.b.x, u_input.a.x)) | countOneBits(u_input.a.x & u_input.a.x)));
    global2 = array<vec4<f32>, 26>();
    global0 = func_2(false, Struct_1(select(global0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, global0.a.x), global0.a), !func_2(false, Struct_1(vec4<bool>(var_0.x, false, true, false)), u_input.b.x, Struct_1(vec4<bool>(global0.a.x, var_0.x, false, var_0.x))).a)), u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    let var_1 = Struct_1(!global0.a);
    var var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -2147483647i), -abs(select(-52617i, -1i, var_0.x))), 4294967295u);
    global1 = array<Struct_1, 27>();
    let var_3 = Struct_1(!select(!vec4<bool>(global0.a.x, false, true, false), func_2(global0.a.x, func_2(global0.a.x, global1[_wgslsmith_index_u32(var_2.b, 27u)], u_input.b.x, Struct_1(var_1.a)), u_input.b.x, Struct_1(vec4<bool>(global0.a.x, true, true, var_0.x))).a, !all(var_1.a.zw)));
    global0 = global1[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -497f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1754f, 335f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2154f, -568f)), !var_3.a.xz))), vec4<i32>(-10979i, 8783i, -var_2.a, var_2.a), Struct_2(~(~(-20851i)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(13981u, 4294967295u, var_2.b)))), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-1i, -1i), vec2<i32>(var_2.a, 0i), vec2<i32>(u_input.b.x >> (var_2.b % 32u), firstTrailingBit(75720i))) & firstTrailingBit(vec2<i32>(1i << (var_2.b % 32u), 0i)), _wgslsmith_sub_vec2_i32(u_input.b.yz, countOneBits(~vec2<i32>(3005i, -2147483647i))), vec3<u32>(~85295u, firstLeadingBit(func_4(vec2<i32>(u_input.b.x, -37633i))), abs(1u)) >> (~(~firstLeadingBit(vec3<u32>(31333u, u_input.a.x, var_2.b))) % vec3<u32>(32u)), -countOneBits(min(u_input.b.yy, func_3(var_3, vec4<i32>(1i, var_2.a, 1i, u_input.b.x), Struct_2(var_2.a, var_2.b), vec2<bool>(true, var_3.a.x)))), -_wgslsmith_sub_i32(u_input.b.x, -u_input.b.x ^ var_2.a));
}

