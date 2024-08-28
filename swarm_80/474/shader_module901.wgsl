struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<Struct_4, 1>;

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(global3.a), Struct_1(all(vec3<bool>(false, false, false)) & true), -u_input.a.x, vec4<u32>(_wgslsmith_mod_u32(46372u, ~4798u), 36111u, ~min(u_input.b, u_input.b), u_input.b));
    let var_1 = vec3<f32>(626f, 1011f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.d.x, 24u)] + -1000f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 24u)] + global0[_wgslsmith_index_u32(0u, 24u)]) + global0[_wgslsmith_index_u32(0u | u_input.b, 24u)]), -730f))));
    var var_2 = Struct_2(Struct_1(any(vec3<bool>(true, true, true))), Struct_1(true), 1i, firstLeadingBit(~countOneBits(vec4<u32>(var_0.d.x, 1u, var_0.d.x, var_0.d.x))));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1313f - 406f))), _wgslsmith_f_op_f32(1126f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f))), var_1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_1, vec3<f32>(1f, 1f, 1f))))));
    var var_4 = Struct_4(Struct_2(Struct_1(select(var_0.b.a, var_0.a.a, var_0.b.a)), Struct_1(global3.a), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(1i)), var_0.c), ~abs(~vec4<u32>(0u, 1u, u_input.b, var_0.d.x))), Struct_2(var_2.a, var_0.b, var_0.c, ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(var_0.d.x, 1u, 20755u, var_0.d.x)), min(vec4<u32>(var_2.d.x, 4294967295u, var_0.d.x, 30964u), vec4<u32>(var_2.d.x, 4294967295u, 57734u, 62761u)))), select(~(~u_input.b) | ~(~var_2.d.x), 0u, global3.a));
    return firstLeadingBit(min(~abs(47747u), 0u & (var_2.d.x << (25802u % 32u))));
}

fn func_2() -> f32 {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-325f, global0[_wgslsmith_index_u32(func_3(u_input.a.x), 24u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 24u)] * 1000f)))), true)), global0[_wgslsmith_index_u32(74617u, 24u)]);
    global3 = Struct_1(global3.a);
    var var_1 = 14788u | u_input.b;
    return _wgslsmith_f_op_f32(var_0.x - -1354f);
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> vec3<f32> {
    var var_0 = 51874u;
    let var_1 = Struct_5(vec2<bool>(arg_0.b.b.a, arg_0.b.b.a), !vec2<bool>(!all(vec4<bool>(arg_0.b.b.a, arg_0.b.b.a, arg_0.b.b.a, arg_0.b.b.a)), arg_0.b.a.a), ~arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f) + arg_0.a.x), ~abs(arg_1));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d))), -491f)));
    global0 = array<f32, 24>();
    global1 = array<Struct_4, 1>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 41033u, var_1.e, arg_1), vec4<u32>(1u, 0u, u_input.b, 55489u)), 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(floor(695f))), 2486f), arg_0.a.wwy);
}

fn func_4(arg_0: vec3<f32>) -> vec2<u32> {
    var var_0 = select(vec2<bool>(arg_0.x < arg_0.x, false), !vec2<bool>(u_input.b < 4294967295u, u_input.b > ~u_input.b), !(!select(vec2<bool>(true, true), select(vec2<bool>(global3.a, false), vec2<bool>(global3.a, global3.a), true), select(vec2<bool>(false, true), vec2<bool>(global3.a, global3.a), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(33215u, 24u)]) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(162f - 438f))), _wgslsmith_f_op_f32(-1110f - 347f)))));
    global2 = !(all(vec4<bool>(true, true, !global3.a, true)) & (_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(-1i, u_input.a.x)) <= (-u_input.a.x & u_input.a.x)));
    let var_2 = any(select(!select(vec2<bool>(true, false), !vec2<bool>(true, var_1), !vec2<bool>(true, var_0.x)), !vec2<bool>(var_0.x, false), select(!select(vec2<bool>(true, global3.a), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, global3.a)), true)));
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(-_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), abs(~u_input.a.x));
    return firstTrailingBit(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(53334u, u_input.b))), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b)), min(vec2<u32>(21314u, 92198u), vec2<u32>(64417u, u_input.b))) >> (_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(31451u, 24u)], global0[_wgslsmith_index_u32(14644u, 24u)]), Struct_2(Struct_1(true), Struct_1(global3.a), u_input.a.x, vec4<u32>(u_input.b, u_input.b, u_input.b, 79446u))), 27498u))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-119f - _wgslsmith_f_op_f32(abs(1091f))), -1311f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<f32>(1212f, global0[_wgslsmith_index_u32(u_input.b, 24u)], 715f, -1327f), Struct_2(Struct_1(global3.a), Struct_1(global3.a), u_input.a.x, vec4<u32>(101859u, var_0.x, 1u, u_input.b))), 1u)).x) - -132f));
    global2 = global0[_wgslsmith_index_u32(var_0.x, 24u)] <= _wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<f32>(1360f, _wgslsmith_f_op_f32(-327f * var_1.x), -646f, _wgslsmith_f_op_f32(-610f * 172f)), Struct_2(Struct_1(global3.a), Struct_1(global3.a), _wgslsmith_div_i32(45956i, 30674i), vec4<u32>(u_input.b, 1u, u_input.b, var_0.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, var_0.x), vec2<u32>(36468u, var_0.x), vec2<bool>(true, global3.a)), select(vec2<u32>(1u, 4294967295u), vec2<u32>(1792u, 1u), vec2<bool>(global3.a, global3.a)), ~vec2<u32>(1u, var_0.x)), var_0))).x;
    let var_2 = global3.a;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f) + _wgslsmith_f_op_f32(-var_1.x)));
    let var_4 = Struct_1(select(true, !any(vec2<bool>(global3.a, global3.a)), -41206i != min(firstLeadingBit(u_input.a.x), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, firstLeadingBit(-_wgslsmith_div_vec3_i32(u_input.a, u_input.a)), !select(vec3<bool>(var_4.a, true, global3.a), !vec3<bool>(true, var_4.a, true), false)), ~(~min(vec4<u32>(0u, 1u, 4294967295u, u_input.b) ^ vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u), ~vec4<u32>(var_0.x, 45764u, u_input.b, 48354u))), _wgslsmith_f_op_f32(abs(-797f)), i32(-1i) * -1i, ~((vec2<i32>(-1i) * -u_input.a.xy) | ~firstTrailingBit(vec2<i32>(2147483647i, -4753i))));
}

