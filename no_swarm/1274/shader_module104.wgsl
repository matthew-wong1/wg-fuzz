struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(76294u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(35231u, 7987u));

var<private> global2: vec2<i32>;

var<private> global3: i32;

var<private> global4: array<f32, 14> = array<f32, 14>(1000f, 1000f, 508f, -1850f, -1000f, 1238f, 1874f, -1144f, 199f, -174f, -1000f, -923f, 971f, -1600f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(0u >> (0u % 32u), 14u)], 1789f))))));
    let var_1 = true & all(vec3<bool>(true, global0.x, false));
    let var_2 = ~(~(~16990u));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_sub_u32(83011u, u_input.a)), 3u)] & countOneBits(abs(vec2<u32>(abs(81458u), 1u)));
}

fn func_2() -> Struct_2 {
    global4 = array<f32, 14>();
    let var_0 = Struct_2(u_input.a);
    global2 = _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(firstTrailingBit(max(vec2<i32>(-1i, 16830i), vec2<i32>(46014i, 3925i))), -vec2<i32>(-2147483647i, 9939i)), firstTrailingBit(vec2<i32>(~global2.x, reverseBits(global2.x))) << (_wgslsmith_sub_vec2_u32(func_3(vec3<i32>(-2147483647i, -38289i, 0i), var_0, -vec3<i32>(global2.x, 1i, -1i)), ~_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(27624u, 3u)], global1[_wgslsmith_index_u32(var_0.a, 3u)])) % vec2<u32>(32u)));
    global4 = array<f32, 14>();
    let var_1 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = array<vec2<u32>, 3>();
    let var_0 = global0.ww;
    var var_1 = Struct_1(max(~1u, 42214u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-481f, global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(arg_0.a, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)], 149f))))) - vec3<f32>(_wgslsmith_f_op_f32(round(1070f)), -1000f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.a, 14u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1689f, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 0u, 25897u), vec4<u32>(1u, 48068u, 1u, arg_0.a)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), global1[_wgslsmith_index_u32(arg_0.a, 3u)]), 14u)], global4[_wgslsmith_index_u32(54398u, 14u)])));
    global1 = array<vec2<u32>, 3>();
    var var_2 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - var_1.c.x)) - _wgslsmith_f_op_f32(floor(var_1.b.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_1(countOneBits(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-446f, 1000f, _wgslsmith_f_op_f32(select(-605f, _wgslsmith_f_op_f32(arg_0 + -1004f), any(vec2<bool>(global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(1u, 14u)])), -778f))), vec4<f32>(158f, _wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.a, 1u), 14u)]), _wgslsmith_f_op_f32(2129f * arg_0)));
    return func_2().a;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_div_vec3_i32(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, _wgslsmith_mult_i32(~arg_0.x, arg_0.x), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_add_i32(global2.x, arg_1), _wgslsmith_div_i32(arg_1, 0i))), vec3<i32>(_wgslsmith_add_i32(global2.x, -16010i) ^ global2.x, ~1i, var_0.x)));
    var var_1 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(func_4(func_2())), func_2(), Struct_2(~firstLeadingBit(1u))), 14u)] * 1000f);
    var var_2 = ~u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1267f - 907f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(50927u, u_input.a), 14u)], _wgslsmith_f_op_f32(251f + global4[_wgslsmith_index_u32(u_input.a, 14u)])))), global4[_wgslsmith_index_u32(max(u_input.a, u_input.a), 14u)], 444f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-969f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a, 14u)] * global4[_wgslsmith_index_u32(u_input.a, 14u)]), 2769f, _wgslsmith_f_op_f32(-268f + 783f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, -2907f, global4[_wgslsmith_index_u32(77237u, 14u)], -642f)), vec4<f32>(-755f, global4[_wgslsmith_index_u32(u_input.a, 14u)], 1082f, global4[_wgslsmith_index_u32(95941u, 14u)])))));
    return Struct_2(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 32449u) ^ vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(39775u, u_input.a, 56732u)), countOneBits(vec3<u32>(u_input.a, func_2().a, 1u))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>) -> i32 {
    let var_0 = reverseBits(~firstLeadingBit(~countOneBits(vec4<u32>(33435u, arg_0.a, 60698u, 2266u))));
    var var_1 = abs((_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i) >> (global1[_wgslsmith_index_u32(arg_0.a, 3u)] % vec2<u32>(32u)), abs(vec2<i32>(-7638i, global2.x))) & 28983i) & -3432i);
    global3 = global2.x;
    global1 = array<vec2<u32>, 3>();
    let var_2 = firstLeadingBit(vec2<i32>(global2.x, min(-41169i, -(global2.x | global2.x))));
    return var_2.x;
}

fn func_7(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<bool>((1f >= _wgslsmith_f_op_f32(min(163f, global4[_wgslsmith_index_u32(~u_input.a, 14u)]))) | any(global0.wzw), true, any(global0.zw));
    global1 = array<vec2<u32>, 3>();
    global2 = abs(vec2<i32>(abs(func_6(func_2(), global0.x & var_0.x, vec3<u32>(4294967295u, 0u, 11975u))), -1i));
    global1 = array<vec2<u32>, 3>();
    global2 = arg_1.wx;
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_div_u32(~(0u >> (u_input.a % 32u)), 36593u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(32274u, 43270u, 81013u)), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.x;
    let var_1 = func_7(vec4<i32>(var_0, 21025i << (~(~u_input.a) % 32u), -_wgslsmith_mod_i32(var_0 ^ global2.x, -1560i), func_6(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, var_0, -2147483647i), vec3<i32>(global2.x, -1i, global2.x)), -var_0), all(vec2<bool>(global0.x, true)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 10211u), vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(4294967295u, u_input.a, 1u), !global0.xwx))), _wgslsmith_add_vec4_i32(firstLeadingBit(~(-vec4<i32>(2147483647i, -3251i, -8711i, -9403i))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.x, -2147483647i), vec3<i32>(2147483647i, global2.x, global2.x)), ~1i, -1i, -1i), ~vec4<i32>(var_0, var_0, -2147483647i, 2147483647i) | vec4<i32>(global2.x, global2.x, 1i, -57230i))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-821f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 14u)])))))));
    global2 = select(min(~min(_wgslsmith_mult_vec2_i32(vec2<i32>(-11540i, -50961i), vec2<i32>(var_0, 0i)), vec2<i32>(global2.x, global2.x) ^ vec2<i32>(-2147483647i, 66806i)), -vec2<i32>(68896i >> (var_1.a % 32u), -39038i)), -(~(-vec2<i32>(9536i, 1i) >> (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_1.a), 3u)] % vec2<u32>(32u)))), vec2<bool>(select(global0.x, _wgslsmith_add_u32(57653u, u_input.a) != (86461u ^ var_1.a), !global0.x), global0.x));
    var var_3 = ~max(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a, 4294967295u, var_1.a, 4294967295u), vec4<u32>(u_input.a, var_1.a, u_input.a, 116126u)), reverseBits(vec4<u32>(4294967295u, u_input.a, var_1.a, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.a, 20303u, var_1.a), max(vec4<u32>(u_input.a, 0u, u_input.a, 1u), vec4<u32>(var_1.a, 5734u, 1u, var_1.a)))), vec4<u32>(~1u, 42750u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a, u_input.a), vec3<u32>(4294967295u, var_1.a, 1u))) | countOneBits(~vec4<u32>(41302u, var_1.a, var_1.a, 1u)));
    let var_4 = _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i & func_6(Struct_2(var_3.x), all(vec4<bool>(global0.x, true, true, false)), ~vec3<u32>(var_1.a, var_3.x, 1u)), ~(~(-24931i)), 1i), -(vec4<i32>(min(-69143i, 0i), 0i, min(1i, 8716i), abs(var_0)) << (vec4<u32>(var_1.a, 1u, _wgslsmith_div_u32(var_3.x, var_1.a), var_1.a) % vec4<u32>(32u))));
    let var_5 = Struct_1(var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, global4[_wgslsmith_index_u32(var_1.a, 14u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(9656u, 14u)]) + _wgslsmith_f_op_f32(var_2 * 848f)), 1000f, global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, var_1.a), vec4<u32>(0u, var_3.x, 22992u, var_1.a))), 14u)], global4[_wgslsmith_index_u32(14266u, 14u)]) + vec4<f32>(1602f, -344f, 219f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-750f, -1166f), -1157f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.zz, _wgslsmith_f_op_vec4_f32(floor(var_5.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(var_5.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2336f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), max(_wgslsmith_div_vec4_u32(vec4<u32>(~61272u, 0u, 1u, _wgslsmith_add_u32(var_3.x, var_3.x)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_3.x, 19235u, 0u, 1u)), ~vec4<u32>(0u, 55003u, u_input.a, 745u))), select(vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(var_3.zwy, vec3<u32>(30551u, 102561u, u_input.a)), var_3.x, ~var_5.a), vec4<u32>(func_7(vec4<i32>(var_4.x, 1i, var_4.x, 0i), var_4).a, 0u, var_3.x, 6113u), !all(global0.xw))));
}

