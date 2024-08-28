struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(79543u, 4294967295u, 58613u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(23204u, 66292u, 0u), vec3<u32>(16244u, 1u, 51791u), vec3<u32>(1u, 0u, 59043u), vec3<u32>(4290u, 1u, 60165u), vec3<u32>(38342u, 1u, 5952u), vec3<u32>(4294967295u, 31643u, 0u), vec3<u32>(0u, 42185u, 2245u), vec3<u32>(80592u, 0u, 76397u), vec3<u32>(4294967295u, 0u, 21131u), vec3<u32>(25079u, 0u, 1u), vec3<u32>(10640u, 0u, 9968u), vec3<u32>(4294967295u, 53226u, 4294967295u), vec3<u32>(5301u, 1u, 4294967295u), vec3<u32>(78090u, 4294967295u, 21930u), vec3<u32>(0u, 75202u, 82604u), vec3<u32>(115500u, 8949u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1796f, 1000f) + vec2<f32>(1829f, -357f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1055f, 1569f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1358f, 1000f)))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.x + 2246f);
    global0 = vec2<bool>(!select(global0.x, global0.x, true), _wgslsmith_f_op_f32(895f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1420f, var_0.a.x)))) >= _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, false))));
    var var_2 = var_0.a;
    var var_3 = Struct_2(~abs(abs(firstTrailingBit(0u))));
    return firstLeadingBit(~vec2<u32>(1u, ~(~54623u)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0);
    let var_2 = func_3();
    var var_3 = any(!select(vec4<bool>(any(vec4<bool>(true, true, false, true)), all(vec4<bool>(false, true, false, arg_2)), !arg_2, arg_1.a < 12978u), vec4<bool>(true, true, true, arg_2 & true), true));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(500f * arg_0), var_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1042f - arg_0), 1000f))));
    return 25515u;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    global1 = array<vec3<u32>, 18>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) - _wgslsmith_f_op_f32(f32(-1f) * -1288f)), -154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a))))));
    global1 = array<vec3<u32>, 18>();
    let var_2 = Struct_2(select(_wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(64234u, 101227u)) & ~(71266u >> (u_input.a % 32u)), 1u, !global0.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(var_1.yx, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a), arg_3.a))))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_3(-1284f);
    let var_1 = func_4(arg_1.yxz, 24011i, ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(u_input.a, func_2(690f, Struct_2(0u), true))), 18u)], Struct_3(var_0.a));
    let var_2 = vec2<u32>(_wgslsmith_add_u32((~4294967295u & (u_input.a ^ 9318u)) >> (~u_input.a % 32u), u_input.a), u_input.a);
    var var_3 = vec4<bool>(arg_1.x, u_input.b >= 18503i, true, global0.x);
    global0 = var_3.yy;
    return vec4<i32>(_wgslsmith_sub_i32(8442i, arg_2.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.x, 2147483647i), _wgslsmith_clamp_i32(countOneBits(0i), 2096i << (u_input.a % 32u), -64892i)), 1i, -25186i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, ~(-1i), -_wgslsmith_sub_i32(-58724i, u_input.c)), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(2177f, -653f)), -461f)), !vec4<bool>(global0.x, global0.x, true, global0.x), -vec3<i32>(2147483647i, u_input.c, u_input.c))), ~((vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.c) >> (~vec4<u32>(1u, 85342u, 5801u, 1u) % vec4<u32>(32u))) >> (max(~vec4<u32>(134254u, 53597u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 1u, u_input.a, 0u)) % vec4<u32>(32u))), vec4<bool>(global0.x, !(!(!global0.x)), all(select(select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, false, true)), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, true, global0.x), global0.x), !global0.x)), !(true | select(true, global0.x, true))));
    let var_1 = 1i;
    global0 = vec2<bool>((0u <= ~(~u_input.a)) != true, global0.x);
    var var_2 = Struct_3(func_4(select(!select(vec3<bool>(global0.x, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, global0.x)), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), true), !vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, global0.x, true))), false), var_1, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, select(countOneBits(u_input.a), ~83328u, select(false, global0.x, false))), 18u)], Struct_3(2396f)).a.x);
    var var_3 = true & !(_wgslsmith_div_i32(1i, i32(-1i) * -33019i) != (max(u_input.c, var_1) | _wgslsmith_dot_vec3_i32(var_0.zzw, vec3<i32>(47601i, 33489i, 0i))));
    var var_4 = func_4(vec3<bool>(-20654i <= var_0.x, !(global0.x & global0.x), !all(vec2<bool>(false, true))), var_1 & (var_1 | _wgslsmith_sub_i32(-2147483647i, u_input.c)), vec3<u32>(~firstLeadingBit(u_input.a), u_input.a, ~1u), Struct_3(_wgslsmith_div_f32(516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, var_2.a))))));
    let var_5 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(37202i, 1i), vec2<i32>(32226i, 2147483647i)), (var_0.yx & vec2<i32>(15237i, var_0.x)) & (vec2<i32>(var_0.x, u_input.c) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_add_vec2_i32(var_0.yz, select(-var_0.wx << (vec2<u32>(90283u, 15355u) % vec2<u32>(32u)), ~var_0.ww, select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(true, global0.x)), u_input.a != 54693u))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, u_input.a);
}

