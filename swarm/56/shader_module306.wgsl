struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 21> = array<u32, 21>(1u, 0u, 68879u, 0u, 4294967295u, 26451u, 0u, 4294967295u, 105845u, 7745u, 40621u, 0u, 6849u, 11983u, 4294967295u, 15629u, 1u, 79057u, 89862u, 64917u, 0u);

var<private> global2: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(1693f, vec2<f32>(1000f, -322f), 1343u, vec2<f32>(974f, 483f), true), Struct_4(191f, vec2<f32>(784f, -1548f), 37815u, vec2<f32>(-226f, -1338f), false), Struct_4(137f, vec2<f32>(151f, 270f), 55758u, vec2<f32>(620f, -1457f), true), Struct_4(-1000f, vec2<f32>(2505f, -170f), 4294967295u, vec2<f32>(1525f, -258f), false), Struct_4(1824f, vec2<f32>(-884f, 828f), 0u, vec2<f32>(-346f, 697f), false), Struct_4(-304f, vec2<f32>(2228f, -273f), 4294967295u, vec2<f32>(592f, 1000f), false), Struct_4(377f, vec2<f32>(-531f, -1548f), 4294967295u, vec2<f32>(-846f, 788f), true), Struct_4(394f, vec2<f32>(2508f, 131f), 4294967295u, vec2<f32>(1150f, -973f), false), Struct_4(789f, vec2<f32>(-130f, 1814f), 2592u, vec2<f32>(1000f, 636f), false), Struct_4(-183f, vec2<f32>(353f, -619f), 5868u, vec2<f32>(1000f, 1000f), true), Struct_4(124f, vec2<f32>(1123f, -1240f), 1u, vec2<f32>(1590f, -1076f), false));

var<private> global3: vec2<bool>;

var<private> global4: vec3<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global0 = -(-min(vec2<i32>(-1i, global0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.a.xy)) & vec2<i32>(-1i, ~u_input.a.x));
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(38055i, _wgslsmith_sub_i32((global0.x << (global1[_wgslsmith_index_u32(1u, 21u)] % 32u)) << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], 21u)] % 32u), -25091i >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)] % 32u))), vec2<i32>(20863i, global0.x));
    return vec2<u32>(64353u, ~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(118665u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 0u), vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47457u, 21u)], 21u)], 0u)), 21u)] << (countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)]) % 32u), 21u)], 78333u));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, arg_0, arg_0, arg_0) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -157f, arg_0, arg_0), vec4<f32>(359f, -1005f, arg_0, -565f)))) + vec4<f32>(-1197f, -670f, _wgslsmith_f_op_f32(297f + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(125f, arg_0, 1949f, -1068f), vec4<f32>(-442f, 156f, 1746f, 185f))))), Struct_1(_wgslsmith_f_op_f32(step(arg_0, arg_0)), vec2<bool>(true, (arg_0 <= -1031f) & (1u != global1[_wgslsmith_index_u32(4294967295u, 21u)])), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48207u, 21u)], 21u)], 4294967295u), arg_1), _wgslsmith_clamp_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 21u)]), min(global1[_wgslsmith_index_u32(0u, 21u)], 12283u), ~arg_1.x), ~_wgslsmith_sub_u32(arg_1.x, global1[_wgslsmith_index_u32(4294967295u, 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_1.x, 21u)] << (arg_1.x % 32u), countOneBits(arg_1.x)), 21u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -305f))))))), global4.x, i32(-1i) * -abs(_wgslsmith_mod_i32(0i, u_input.a.x)));
    global0 = u_input.a.yx;
    let var_1 = vec3<bool>(all(!arg_2.xz), false, !any(!select(arg_2.xww, arg_2.zzx, var_0.b.b.x)));
    global2 = array<Struct_4, 11>();
    var var_2 = arg_0;
    return var_0.a.wy;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_4(1499f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -118f))), abs(vec2<u32>(28123u, global1[_wgslsmith_index_u32(0u, 21u)])) & func_3(), select(select(vec4<bool>(false, global3.x, true, false), vec4<bool>(true, true, false, global4.x), vec4<bool>(global4.x, true, global4.x, true)), select(vec4<bool>(global3.x, global4.x, arg_1.x, global3.x), vec4<bool>(false, global4.x, true, arg_1.x), arg_1.x), select(vec4<bool>(arg_1.x, global3.x, global3.x, global4.x), vec4<bool>(global4.x, global3.x, false, global3.x), vec4<bool>(global3.x, true, global4.x, true))), !(false && global3.x)))), global1[_wgslsmith_index_u32(~select(global1[_wgslsmith_index_u32(select(56255u >> (1u % 32u), 0u, false), 21u)], _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(26322u, 21u)], 1u)), min(vec3<u32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(83781u, 21u)], global1[_wgslsmith_index_u32(107049u, 21u)]), vec3<u32>(26300u, 0u, 1u))), all(!vec2<bool>(false, global4.x))), 21u)], _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1106f, 1002f))), false);
    global2 = array<Struct_4, 11>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(987f, var_0.d.x, 1000f, 170f), vec4<f32>(-545f, 1088f, 270f, var_0.b.x))))) + vec4<f32>(-169f, 669f, _wgslsmith_f_op_f32(var_0.a - var_0.a), var_0.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, var_0.b.x, 1260f, var_0.d.x) * _wgslsmith_div_vec4_f32(vec4<f32>(1307f, 1151f, var_0.d.x, -204f), vec4<f32>(-828f, -811f, var_0.b.x, var_0.d.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.d.x, 2192f, var_0.b.x) - vec4<f32>(1007f, -1004f, var_0.a, 379f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 1000f, var_0.b.x) + vec4<f32>(var_0.b.x, var_0.a, var_0.a, var_0.b.x))), !global3.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, -346f, 1371f, var_0.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.a, var_0.b.x, var_0.b.x) - vec4<f32>(var_0.a, var_0.d.x, -1502f, var_0.d.x)))))));
    var var_2 = _wgslsmith_f_op_f32(118f + -580f);
    global0 = vec2<i32>(-1i, -abs(_wgslsmith_add_i32(~(-63176i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))));
    return Struct_1(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(1000f, var_0.d.x)), vec2<bool>(any(!vec2<bool>(true, global4.x)), true), ~(~(~firstTrailingBit(vec4<u32>(24368u, 9855u, global1[_wgslsmith_index_u32(0u, 21u)], var_0.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yx) + var_1.yy));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    global3 = arg_1.a.b;
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1479f, arg_3.a, arg_1.b, 549f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(409f, arg_2.x, 162f, arg_3.d.x), vec4<f32>(950f, arg_3.a, 1501f, 1140f))))), arg_3, any(arg_0.ww), u_input.a.x);
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(15078i, firstLeadingBit(abs(var_0.d))), u_input.a.xz, -min(abs(u_input.a.yz), _wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.a.zz)) ^ u_input.a.xx);
    var var_1 = vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(1i, countOneBits(_wgslsmith_add_i32(~global0.x, u_input.a.x))));
    global3 = !func_2(-vec4<i32>(~u_input.a.x, var_1.x, 2147483647i, var_1.x), vec2<bool>(global3.x, false), vec4<i32>(~(-2147483647i), countOneBits(_wgslsmith_clamp_i32(-1i, var_1.x, var_0.d)), 76254i, 2147483647i)).b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.d.x, _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(var_0.a.x + 853f))))));
}

fn func_1() -> i32 {
    global0 = u_input.a.zz;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f + 645f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1237f)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_5(select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(global4.x, true, global3.x, global3.x), true), Struct_5(Struct_1(1000f, global4.zx, vec4<u32>(0u, 40089u, 1u, 4294967295u), vec2<f32>(-1158f, 125f)), 483f), vec2<f32>(1448f, -1262f), func_2(vec4<i32>(u_input.a.x, u_input.a.x, -10338i, global0.x), global4.yy, vec4<i32>(13207i, u_input.a.x, u_input.a.x, global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(func_5(vec4<bool>(global4.x, global4.x, global4.x, global4.x), Struct_5(Struct_1(806f, vec2<bool>(global3.x, false), vec4<u32>(52426u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63044u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85690u, 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<f32>(-121f, -172f)), -169f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-338f, 871f))), func_2(vec4<i32>(u_input.a.x, u_input.a.x, 3167i, -5460i), vec2<bool>(true, false), vec4<i32>(u_input.a.x, -2147483647i, 1i, u_input.a.x)))), vec2<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(753u, 21u)], 21u)], func_3().x), !(!vec4<bool>(global4.x, false, global4.x, global3.x)), all(vec3<bool>(false, global3.x, false)))).x), -444f);
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(33930u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40601u, 21u)], 21u)], 21u)]) ^ min(53135u, global1[_wgslsmith_index_u32(4294967295u, 21u)])), firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(20356u, 61726u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)]), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 21u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), 1u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(74767u, 36831u), vec2<u32>(70129u, 76019u)) << (reverseBits(0u) % 32u))), max(~(vec4<u32>(81111u, 0u, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 21u)]) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(12790u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9891u, 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]) % vec4<u32>(32u))) ^ abs(~vec4<u32>(77789u, global1[_wgslsmith_index_u32(1u, 21u)], 2496u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)])), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65079u, 21u)], 21u)], 24489u, 4294967295u, 1u), ~vec4<u32>(global1[_wgslsmith_index_u32(13003u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12743u, 21u)], 21u)], 21u)], 1u, 0u)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 4294967295u, global1[_wgslsmith_index_u32(32232u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49365u, 21u)], 21u)]), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 1u, global1[_wgslsmith_index_u32(0u, 21u)])) % vec4<u32>(32u))));
    global1 = array<u32, 21>();
    let var_2 = global2[_wgslsmith_index_u32(12132u, 11u)];
    return _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(global0.x, global0.x);
    var var_0 = func_1();
    var var_1 = _wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(37402u, 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22333u, 21u)], 21u)]))) | ~vec3<u32>(28460u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 21u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)])), reverseBits(vec3<u32>(6033u, 26702u, global1[_wgslsmith_index_u32(1u, 21u)])));
    var var_2 = func_2(vec4<i32>((u_input.a.x ^ 10805i) | u_input.a.x, global0.x, min(-u_input.a.x, _wgslsmith_clamp_i32(global0.x, -1i, u_input.a.x)), _wgslsmith_add_i32(-1i >> (var_1.x % 32u), u_input.a.x)) ^ -vec4<i32>(-19700i, 1i ^ u_input.a.x, countOneBits(-46271i), u_input.a.x), global4.xx, min(vec4<i32>(_wgslsmith_mod_i32(global0.x, 22939i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), ~vec3<i32>(u_input.a.x, global0.x, 1i)), _wgslsmith_div_i32(6889i, global0.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43702u, 21u)], 21u)] % 32u)), _wgslsmith_div_i32(_wgslsmith_mult_i32(74347i, global0.x), select(u_input.a.x, global0.x, true))), _wgslsmith_add_vec4_i32(-vec4<i32>(28906i, u_input.a.x, -1i, -35603i), _wgslsmith_sub_vec4_i32(vec4<i32>(35220i, u_input.a.x, 25263i, 28177i) >> (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 21u)], 21u)], 21u)], var_1.x, global1[_wgslsmith_index_u32(39271u, 21u)], 0u) % vec4<u32>(32u)), vec4<i32>(18635i, global0.x, 2147483647i, -12585i)))));
    var_2 = func_2(max(firstLeadingBit(vec4<i32>(global0.x, u_input.a.x, global0.x, u_input.a.x)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13230i, global0.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -4224i, 1i), vec4<i32>(2147483647i, 1i, global0.x, -21110i)), firstLeadingBit(vec4<i32>(2147483647i, global0.x, global0.x, u_input.a.x))), -_wgslsmith_sub_vec4_i32(select(vec4<i32>(global0.x, global0.x, -2147483647i, -6748i), vec4<i32>(54753i, global0.x, 2147483647i, 0i), vec4<bool>(var_2.b.x, global3.x, false, true)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec2<bool>(var_2.b.x, func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, global0.x, 1i), vec4<i32>(34782i, global0.x, u_input.a.x, u_input.a.x)), vec2<bool>(true, false), min(vec4<i32>(-58237i, u_input.a.x, -21091i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -1i, 1i))).b.x), !vec2<bool>(true, any(vec4<bool>(false, false, global3.x, global4.x))), !vec2<bool>(select(global4.x, true, true), false)), _wgslsmith_div_vec4_i32((firstTrailingBit(vec4<i32>(u_input.a.x, 17796i, -22625i, u_input.a.x)) ^ countOneBits(vec4<i32>(global0.x, global0.x, 2147483647i, -8334i))) | vec4<i32>(u_input.a.x, 29962i, global0.x, ~global0.x), vec4<i32>(global0.x, abs(-global0.x), _wgslsmith_div_i32(~global0.x, 8545i), global0.x)));
    var var_3 = var_2.b.x;
    var var_4 = !select(!vec4<bool>(!global3.x, global4.x, true, true), vec4<bool>(global3.x, true, !global3.x, true), global4.x && true);
    global4 = vec3<bool>(true, true, global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, vec4<i32>(u_input.a.x, -(global0.x >> ((var_1.x >> (var_1.x % 32u)) % 32u)), ~1i, -u_input.a.x), u_input.a);
}

