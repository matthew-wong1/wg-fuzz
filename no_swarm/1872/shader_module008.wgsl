struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(728f, -250f);

var<private> global1: Struct_1 = Struct_1(false, true);

var<private> global2: array<i32, 2> = array<i32, 2>(-16169i, i32(-2147483648));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<f32>) -> vec2<i32> {
    return select(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(~abs(u_input.a.x), 2u)], global2[_wgslsmith_index_u32(~(14441u ^ u_input.a.x), 2u)])), _wgslsmith_mod_vec2_i32(-(~(vec2<i32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)]) << (u_input.a.yz % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(-vec2<i32>(0i, 54929i), max(vec2<i32>(-23516i, global2[_wgslsmith_index_u32(4294967295u, 2u)]) & vec2<i32>(-8123i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), -vec2<i32>(global2[_wgslsmith_index_u32(69646u, 2u)], -14533i)))), !(!vec2<bool>(all(vec4<bool>(false, global1.a, false, true)), !global1.a)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: u32, arg_3: bool) -> bool {
    var var_0 = select(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(-2267i, global2[_wgslsmith_index_u32(arg_2, 2u)])) & _wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_1, 2u)], -2147483647i), vec2<i32>(67888i, -52252i)), abs(vec2<i32>(arg_0, global2[_wgslsmith_index_u32(4294967295u, 2u)])), func_3(~u_input.a.xw, global1.b, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 1101f, global0.x))))) & vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], arg_0), vec2<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 2u)] ^ 13082i, _wgslsmith_clamp_i32(1i, arg_0, global2[_wgslsmith_index_u32(31823u, 2u)])), arg_0) & vec2<i32>(~arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_2, 2u)], 1i, global2[_wgslsmith_index_u32(arg_1, 2u)]), -vec3<i32>(global2[_wgslsmith_index_u32(arg_2, 2u)], 0i, global2[_wgslsmith_index_u32(4294967295u, 2u)]))), arg_3);
    return all(!(!(!(!vec4<bool>(false, global1.a, arg_3, false)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_0.x, -1791f));
    return arg_3;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global2 = array<i32, 2>();
    var var_0 = ~reverseBits(vec4<u32>(_wgslsmith_mod_u32(36863u << (u_input.b % 32u), u_input.b), ~_wgslsmith_add_u32(u_input.a.x, 18504u), _wgslsmith_clamp_u32(1u, u_input.a.x ^ u_input.a.x, ~u_input.b), 1u));
    let var_1 = ~(min((vec3<u32>(var_0.x, 11402u, u_input.b) & vec3<u32>(0u, 0u, u_input.b)) ^ firstTrailingBit(vec3<u32>(var_0.x, u_input.b, 1u)), countOneBits(u_input.a.zzx) ^ ~var_0.zyw) ^ u_input.a.zzw);
    let var_2 = ~(~(~(_wgslsmith_sub_u32(var_1.x, 56213u) & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.x, 45196u), vec3<u32>(var_0.x, 102881u, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_0.yy - arg_0.xy);
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), global0.x, -386f, var_3.x), select(vec4<bool>(select(global1.a, global1.a | global1.a, any(vec2<bool>(global1.a, true))), global1.b, func_2(global2[_wgslsmith_index_u32(~88898u, 2u)], 17376u, ~var_2, true), any(select(vec4<bool>(global1.a, false, global1.a, global1.b), vec4<bool>(true, global1.b, global1.a, true), vec4<bool>(true, global1.b, global1.b, global1.b)))), vec4<bool>(all(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, false), global1.b)), _wgslsmith_clamp_u32(var_1.x, var_1.x, var_0.x) != max(var_2, 0u), -1560f >= arg_0.x, false), vec4<bool>(all(select(vec3<bool>(global1.b, global1.a, true), vec3<bool>(global1.a, false, false), false)), all(vec3<bool>(global1.b, global1.a, true)) | true, _wgslsmith_f_op_f32(-494f * arg_0.x) == _wgslsmith_f_op_f32(950f - arg_0.x), true)), Struct_1(true, select(true, !all(vec4<bool>(global1.b, true, false, global1.a)), all(select(vec2<bool>(global1.a, true), vec2<bool>(true, global1.b), false)))), Struct_1(global1.b & !global1.b, true));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = vec4<i32>(47899i, _wgslsmith_add_i32(2063i, min(i32(-1i) * -83696i, global2[_wgslsmith_index_u32(~(arg_2 ^ 19942u), 2u)])), ~(_wgslsmith_clamp_i32(-9040i, global2[_wgslsmith_index_u32(arg_2, 2u)], 1i) & 0i) ^ global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(22222u, arg_2 ^ u_input.a.x), 2u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(countOneBits(90780u), 2u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(3123u, 1u), 2u)]), -abs(vec2<i32>(2147483647i, -2147483647i) & vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(arg_2, 2u)]))));
    var_0 = vec4<i32>(_wgslsmith_sub_i32(var_0.x, 15194i), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~(0u & u_input.b), 2u)], _wgslsmith_sub_i32(-1i, ~global2[_wgslsmith_index_u32(4294967295u, 2u)])), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 34038u), 2u)], func_3(firstLeadingBit(select(u_input.a.zx, u_input.a.xw, false)), false, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(515f, global0.x, -1000f), vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 757f, -390f))))).x) >> (u_input.a % vec4<u32>(32u));
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(ceil(global0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-1717f * global0.x), -508f)));
    var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f * global0.x)), _wgslsmith_f_op_f32(max(1228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-881f)) * -828f))), global0.x));
    let var_2 = arg_0;
    return func_4(vec4<f32>(global0.x, -1855f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x)), vec4<bool>(arg_1.a, all(select(vec2<bool>(true, false), vec2<bool>(true, true), global2[_wgslsmith_index_u32(arg_2, 2u)] == var_0.x)), true, var_1.a), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -512f, 307f, global0.x) - vec4<f32>(837f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1695f, -374f, global0.x, -1247f)))), vec4<bool>(any(select(vec4<bool>(false, arg_0.a, true, false), vec4<bool>(false, true, false, var_2.b), vec4<bool>(global1.a, var_2.b, false, false))), !(global0.x <= global0.x), global1.a, true), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 532f, global0.x, global0.x)))), select(select(vec4<bool>(arg_0.b, arg_1.a, global1.a, true), vec4<bool>(false, var_2.a, arg_0.b, arg_1.a), vec4<bool>(global1.b, true, global1.a, true)), vec4<bool>(true, false, var_2.a, false), vec4<bool>(true, false, arg_1.a, true)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 365f) + vec3<f32>(1535f, -800f, global0.x))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -736f, global0.x) + vec3<f32>(-377f, global0.x, -106f)))), arg_0), Struct_1(!(!global1.b != true), _wgslsmith_f_op_f32(-global0.x) < 1453f));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(u_input.a << (reverseBits(select(u_input.a, vec4<u32>(u_input.a.x, arg_0.x, 25169u, arg_0.x), vec4<bool>(global1.b, true, false, global1.a))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~(vec4<u32>(71280u, 1u, 1u, 12362u) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.b) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.a.x), vec4<u32>(arg_0.x, 26247u, u_input.a.x, arg_0.x)))) & select(u_input.a >> (~(~vec4<u32>(0u, arg_0.x, 47064u, 0u)) % vec4<u32>(32u)), u_input.a << ((countOneBits(vec4<u32>(68503u, 46070u, u_input.a.x, u_input.a.x)) << ((u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), global1.a);
    let var_1 = arg_1;
    let var_2 = any(select(select(vec4<bool>(func_1(vec3<f32>(global0.x, -437f, -2095f)).a, !global1.b, func_5(var_1, Struct_1(var_1.a, global1.b), 3325u).a, arg_3.b), vec4<bool>(func_1(vec3<f32>(global0.x, -528f, global0.x)).a, false, global1.a, func_4(arg_2, vec4<bool>(false, false, arg_3.a, var_1.b), arg_3, var_1).a), select(select(vec4<bool>(var_1.a, arg_1.b, true, global1.b), vec4<bool>(true, arg_1.a, true, arg_1.a), arg_3.a), select(vec4<bool>(false, false, false, arg_1.b), vec4<bool>(true, arg_1.b, false, false), vec4<bool>(false, global1.b, arg_1.b, var_1.a)), true)), select(select(!vec4<bool>(global1.a, false, true, true), !vec4<bool>(false, true, false, global1.b), global1.a), select(vec4<bool>(false, var_1.a, true, arg_3.a), vec4<bool>(false, var_1.b, global1.b, false), !vec4<bool>(false, false, arg_1.a, arg_3.b)), all(select(vec2<bool>(var_1.b, global1.b), vec2<bool>(var_1.a, arg_1.a), false))), false | arg_1.b));
    var var_3 = var_0.wy;
    var var_4 = ~_wgslsmith_add_u32(~(~arg_0.x), ~_wgslsmith_dot_vec2_u32(u_input.a.xx, select(vec2<u32>(u_input.a.x, 4132u), vec2<u32>(4294967295u, var_0.x), true)));
    return var_1;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = u_input.a.zwz;
    var var_1 = Struct_1(true, any(!select(!vec4<bool>(true, arg_0.b, false, true), vec4<bool>(false, arg_0.a, global1.b, true), arg_0.b | arg_0.b)));
    global1 = func_5(Struct_1(global1.b, func_5(Struct_1(true, true), func_6(reverseBits(var_0.yy), func_1(arg_1), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1000f, 1286f, 483f))), Struct_1(false, true)), u_input.b).a), func_1(arg_1), ~(~_wgslsmith_div_u32(57274u, var_0.x)));
    let var_2 = vec2<i32>(_wgslsmith_div_i32(2147483647i, -1335i), ~(~global2[_wgslsmith_index_u32(countOneBits(u_input.b), 2u)])) & vec2<i32>(i32(-1i) * -global2[_wgslsmith_index_u32(61448u, 2u)], 2147483647i);
    let var_3 = arg_0;
    return all(select(vec3<bool>(all(vec4<bool>(false, false, false, global1.a)), _wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(ceil(-417f)), arg_0.b), !select(!vec3<bool>(false, var_1.a, false), vec3<bool>(true, true, true), arg_0.b), false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 2>();
    let var_0 = Struct_1(func_7(func_6(vec2<u32>(~10459u, u_input.b), Struct_1(false | global1.a, global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), func_5(func_1(vec3<f32>(global0.x, global0.x, -1227f)), func_1(vec3<f32>(815f, global0.x, global0.x)), u_input.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1191f, 1000f, 265f)))))), !(_wgslsmith_f_op_f32(step(1000f, global0.x)) < global0.x) & global1.a);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, -973f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-368f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1617f, -999f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -233f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-129f, 1000f), vec2<f32>(-1237f, -353f), true)))))));
    global1 = Struct_1(abs(-max(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)])) >= (-global2[_wgslsmith_index_u32(u_input.a.x, 2u)] | ~(-2147483647i)), !global1.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -990f), _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(899f * global0.x), 884f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-754f, 1000f, global0.x, -605f), vec4<f32>(-759f, -2631f, global0.x, -528f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, global1.b)) - _wgslsmith_f_op_f32(global0.x - 987f)), _wgslsmith_f_op_f32(trunc(global0.x)), 240f, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-691f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2369f + -597f), _wgslsmith_f_op_f32(exp2(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1000f))), -794f), ~(-select(vec3<i32>(62686i, 3140i, -1i) << (u_input.a.zyz % vec3<u32>(32u)), -vec3<i32>(-63010i, -48829i, global2[_wgslsmith_index_u32(108050u, 2u)]), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(626f, var_1.x) * vec2<f32>(global0.x, -999f)), !vec2<bool>(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(-var_1.yw)))), 29739i, abs(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<i32>(-78366i, global2[_wgslsmith_index_u32(4294967295u, 2u)], -1i, 1i)), global2[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(47811u, 2u)], global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<i32>(0i, global2[_wgslsmith_index_u32(97866u, 2u)], 24900i))), max(global2[_wgslsmith_index_u32(u_input.b, 2u)] << (27914u % 32u), global2[_wgslsmith_index_u32(reverseBits(u_input.b), 2u)]), _wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(78518u, 2u)], _wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 2u)])))));
}

