struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 13557i, 4648i, 0i);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-925f, -152f), 289f);

var<private> global2: array<vec4<bool>, 13>;

var<private> global3: array<u32, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global0 = countOneBits(_wgslsmith_clamp_vec4_i32(-countOneBits(u_input.a), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, 5841i, -61379i, u_input.a.x) >> (vec4<u32>(95167u, 0u, 0u, u_input.b.x) % vec4<u32>(32u)), ~u_input.a), _wgslsmith_div_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, u_input.a)))));
    return select(!select(vec2<bool>(any(vec3<bool>(false, false, false)), true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true)), vec2<bool>(!any(vec2<bool>(true, true)), (i32(-1i) * -2147483647i) < _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, -38277i, 0i)), u_input.a)), _wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), 40834u) == ~(~u_input.b.x));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(arg_1 >= arg_0, true), _wgslsmith_f_op_f32(max(-741f, 1000f)) >= _wgslsmith_f_op_f32(global1.b + -1816f)), vec2<bool>(true, !any(vec2<bool>(false, false)) | true), select(func_3(arg_1), vec2<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(41845u, 8u)], global3[_wgslsmith_index_u32(40387u, 8u)], 6555u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], 4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 8u)])) != u_input.b.x), u_input.a.x != u_input.a.x));
    global0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.a.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, 22745i), vec3<i32>(0i, u_input.a.x, 0i))), -_wgslsmith_mod_i32(11285i, 37789i), -1i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), global0.x));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), 609f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, -1093f), -473f)))));
    var var_2 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), false), false), !vec3<bool>(var_0.x, any(vec2<bool>(var_0.x, false)), var_0.x), true), select(vec3<bool>(var_0.x, any(vec2<bool>(var_0.x, var_0.x)), all(!vec3<bool>(false, var_0.x, var_0.x))), vec3<bool>(var_1.b > 1122f, var_0.x, any(!vec3<bool>(var_0.x, false, true))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + global1.b))).x), true);
    let var_3 = var_1;
    return Struct_1(var_3.a, arg_0);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<vec4<bool>, 13>();
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_div_f32(2260f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(487f - -675f))));
    let var_1 = u_input.b.x;
    let var_2 = func_2(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x);
    let var_3 = func_2(_wgslsmith_f_op_f32(var_0.b + var_0.b), 231f);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<i32> {
    global3 = array<u32, 8>();
    var var_0 = vec2<bool>(false, true & select((arg_2.x > 51135i) || all(vec3<bool>(false, true, false)), false, false));
    var var_1 = func_1(~0u);
    global0 = arg_2;
    var_1 = func_1(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstLeadingBit(global3[_wgslsmith_index_u32(min(58354u, global3[_wgslsmith_index_u32(1u, 8u)]), 8u)]), ~(~global3[_wgslsmith_index_u32(56668u, 8u)])), 8u)]);
    return select(-(~(-_wgslsmith_sub_vec4_i32(u_input.a, u_input.a))), ~vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(~u_input.a.x, -9459i), global0.x, ~_wgslsmith_div_i32(-1i, 2147483647i)), !select(vec4<bool>(!var_0.x, var_0.x, 1i < global0.x, !var_0.x), select(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 13u)], vec4<bool>(true, true, var_0.x, true), global2[_wgslsmith_index_u32(112118u, 13u)]), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -func_4(func_1(abs(global3[_wgslsmith_index_u32(~u_input.b.x, 8u)])), func_2(958f, global1.b), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-6565i, -3017i, u_input.a.x, -1i), u_input.a), ~vec4<i32>(u_input.a.x, 52832i, global0.x, 1i)));
    var var_0 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(~abs(vec3<i32>(global0.x, 0i, u_input.a.x) << (vec3<u32>(15959u, u_input.b.x, 1u) % vec3<u32>(32u)))), ~global0.xxz, max(global0.zxx, abs(vec3<i32>(99939i, 10373i, global0.x))) << (vec3<u32>(0u, select(~global3[_wgslsmith_index_u32(u_input.b.x, 8u)], 1u, any(vec3<bool>(true, true, false))), 58840u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(max(532f, _wgslsmith_f_op_f32(-global1.a.x)));
    var var_2 = true;
    let var_3 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * 106f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.x))) - -409f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(countOneBits(u_input.b), ~select(u_input.b, u_input.b, vec3<bool>(true, true, true))));
}

