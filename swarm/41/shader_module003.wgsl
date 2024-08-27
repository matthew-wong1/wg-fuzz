struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 27> = array<f32, 27>(139f, 1259f, 1576f, -1000f, 354f, -129f, 684f, -715f, -340f, 702f, -1192f, 2431f, 382f, -279f, -792f, -1833f, -481f, -2044f, -656f, 1238f, 137f, 1322f, 882f, -1890f, 1000f, -403f, 105f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global1 = array<f32, 27>();
    global1 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, -561f, 712f, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]))))))));
    global1 = array<f32, 27>();
    let var_1 = var_0.x;
    return u_input.d ^ global0.yy;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.b.xy))));
    let var_1 = Struct_1(arg_1.a, vec4<f32>(1375f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], var_0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - -293f))), 527f));
    var var_2 = select(1315f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) + var_1.b.x), global1[_wgslsmith_index_u32(global0.x >> (u_input.d.x % 32u), 27u)] < var_1.b.x, !(_wgslsmith_div_u32(84910u, ~32721u) >= arg_0.x));
    global1 = array<f32, 27>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(-1150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(690f))) + _wgslsmith_f_op_f32(sign(-1136f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(73777u, 27u)]) * _wgslsmith_f_op_f32(round(706f))));
    return !select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false), !(!any(vec4<bool>(false, false, false, true))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = u_input.b;
    var var_0 = min(func_2(Struct_1(~select(vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(-2147483647i, 2284i, arg_0), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2165f, 295f, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]) - vec4<f32>(-1465f, global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(43033u, 27u)], global1[_wgslsmith_index_u32(25886u, 27u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], -520f, global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(35708u, 27u)]))))), ~(~u_input.d));
    global0 = ~u_input.b;
    global1 = array<f32, 27>();
    let var_1 = func_3(vec3<u32>(~(~(global0.x << (8271u % 32u))), _wgslsmith_mod_u32(1u, u_input.a.x), 1u), Struct_1(vec3<i32>(firstLeadingBit(arg_0) ^ _wgslsmith_sub_i32(-2147483647i, arg_0), (i32(-1i) * -1i) >> (_wgslsmith_div_u32(u_input.b.x, 1u) % 32u), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(13205u, 27u)], 815f, 855f), vec4<f32>(479f, global1[_wgslsmith_index_u32(u_input.c, 27u)], 1000f, global1[_wgslsmith_index_u32(1u, 27u)])) + vec4<f32>(113f, 1000f, 1438f, 527f)) - vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(26778u, 27u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], -739f), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(47233u, 27u)], 596f))))), Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(38278i, arg_0, 0i), vec3<i32>(arg_0, 3728i, arg_0), vec3<i32>(2147483647i, arg_0, -3422i)) ^ -firstLeadingBit(vec3<i32>(0i, arg_0, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.x, 27u)] + global1[_wgslsmith_index_u32(53351u, 27u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 27u)] - -935f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f * -1493f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(1709u, 8871u), 27u)] * global1[_wgslsmith_index_u32(u_input.c, 27u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1183f, 1033f))))));
    return Struct_1(-reverseBits(vec3<i32>(arg_0, arg_0, arg_0) >> (u_input.a % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.c), 4482u, func_2(Struct_1(vec3<i32>(arg_0, arg_0, -2147483647i), vec4<f32>(1003f, global1[_wgslsmith_index_u32(0u, 27u)], 1000f, 899f))).x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_0.x, 27u)], -1000f)), 257f, 794f, global1[_wgslsmith_index_u32(1u, 27u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = -1962f;
    let var_1 = ~1u;
    global1 = array<f32, 27>();
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(func_1(arg_1.a.x).a, -vec3<i32>(-70777i, arg_1.a.x, -1i)) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(12103u, u_input.d.x, 36621u), global0.ywx) | (global0.zzw | vec3<u32>(var_1, u_input.c, u_input.d.x))) % vec3<u32>(32u)), arg_1.a), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-236f))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)))), arg_1.b.x, 1000f, _wgslsmith_f_op_f32(var_0 + -804f)));
    let var_3 = 400f;
    return arg_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(vec3<i32>(max(firstLeadingBit(arg_3.a.x), -arg_1.a.x) ^ (firstTrailingBit(1i) >> (_wgslsmith_add_u32(global0.x, global0.x) % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(49786i, 0i, -1i), vec3<i32>(48066i, arg_1.a.x, -arg_1.a.x)), _wgslsmith_div_i32(arg_1.a.x, _wgslsmith_dot_vec2_i32(arg_3.a.zx, arg_3.a.xz)) & -3593i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-537f, _wgslsmith_f_op_f32(min(964f, _wgslsmith_f_op_f32(-arg_0.x))), 1524f, 1349f) - arg_3.b));
    var var_1 = arg_1;
    var_1 = Struct_1(vec3<i32>(var_0.a.x, arg_1.a.x, _wgslsmith_div_i32(~arg_3.a.x, _wgslsmith_mod_i32(2147483647i, var_1.a.x)) ^ 19201i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(-arg_3.b), true)))));
    var_1 = Struct_1(vec3<i32>(var_1.a.x, arg_1.a.x, abs(-1i & arg_1.a.x)), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(1f)), 1156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2618f)) * 658f)));
    var var_2 = func_3(global0.zyz, Struct_1(vec3<i32>(_wgslsmith_sub_i32(0i, -38101i), _wgslsmith_mod_i32(var_1.a.x, ~arg_1.a.x), 2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.x, -2208f), _wgslsmith_f_op_f32(f32(-1f) * -661f), arg_2.x, func_4(arg_1, arg_1, var_1.b.x, arg_1.b).b.x) * arg_1.b)), Struct_1(vec3<i32>(1i | (-24734i ^ arg_3.a.x), -2147483647i, firstTrailingBit(-var_0.a.x)), _wgslsmith_f_op_vec4_f32(var_1.b * arg_3.b))).x;
    return min(_wgslsmith_clamp_vec3_u32(global0.xzx, vec3<u32>(~(~u_input.b.x), 1u, global0.x), vec3<u32>(67206u, global0.x, firstTrailingBit(~4294967295u))), vec3<u32>(global0.x, 1u, ~countOneBits(u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(25878i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(-9332i, 1i), vec2<i32>(-63089i, -61312i), false), vec2<i32>(-2147483647i, 2147483647i)), ~abs(vec2<i32>(-16827i, -16187i))), 0i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(8823u, 27u)], -402f, 770f, global1[_wgslsmith_index_u32(global0.x, 27u)]))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1000f, 832f, global1[_wgslsmith_index_u32(global0.x, 27u)]), vec4<f32>(-113f, global1[_wgslsmith_index_u32(14595u, 27u)], global1[_wgslsmith_index_u32(34215u, 27u)], 2501f), vec4<bool>(false, true, false, true))), _wgslsmith_div_vec4_f32(vec4<f32>(892f, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], 797f, -913f, global1[_wgslsmith_index_u32(25533u, 27u)])))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], 159f, 1371f, global1[_wgslsmith_index_u32(109890u, 27u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 27u)], -700f, global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(29355u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)], 1000f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(global0.x, 27u)], global1[_wgslsmith_index_u32(global0.x, 27u)]))))), !(select(true, true, true) & true))));
    var var_1 = _wgslsmith_mod_i32(~var_0.a.x, var_0.a.x);
    let var_2 = !(u_input.d.x >= global0.x);
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(46117u, global0.x, ~(~1u)), func_5(var_0.b.yww, func_4(Struct_1(reverseBits(var_0.a), _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(-1022f, global1[_wgslsmith_index_u32(99241u, 27u)], global1[_wgslsmith_index_u32(41975u, 27u)], -527f))), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, -1i), vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, 41110i))), global1[_wgslsmith_index_u32(countOneBits(min(3347u, u_input.a.x)), 27u)], vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-2020f * global1[_wgslsmith_index_u32(29850u, 27u)]), 362f, _wgslsmith_div_f32(-224f, 1080f))), var_0.b, func_1(-_wgslsmith_clamp_i32(0i, var_0.a.x, var_0.a.x))));
    global0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(abs(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 4294967295u)) ^ ~(vec4<u32>(15066u, var_3.x, global0.x, 1u) | vec4<u32>(46660u, var_3.x, global0.x, global0.x))), u_input.b);
    global0 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, vec3<u32>(~4294967295u, ~var_3.x, _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(~var_3.x, _wgslsmith_mod_u32(var_3.x, global0.x)))), ~32469u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.wzz * vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], -810f, 622f))), var_0.b.xwz))));
}

