struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(46879i, 22655i, -32678i, 1i, 1i, 0i, -44457i, 2147483647i, 56587i, 2147483647i, i32(-2147483648), i32(-2147483648), -26426i, 2147483647i, -24307i, 10788i, -1i, 0i, 31828i, 0i, -7953i, -24967i, -16110i, i32(-2147483648), -1017i, -35402i, 18154i, 2147483647i, 21462i);

var<private> global1: array<u32, 22>;

var<private> global2: vec4<f32> = vec4<f32>(-1321f, -594f, -1000f, 346f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = countOneBits(u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.wxx + global2.zyx) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-198f, global2.x, -431f)))))));
    global1 = array<u32, 22>();
    let var_2 = 482f;
    let var_3 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * -479f), 1101f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f - -1076f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -416f);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.x, global2.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x)))))), -844f, 1066f);
    var var_0 = arg_0;
    var var_1 = select(select(vec4<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, !(u_input.c <= global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 29u)]), false), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, false, false, false)), true, false)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, countOneBits(global0[_wgslsmith_index_u32(0u, 29u)]) < ~0i, (-23462i > global0[_wgslsmith_index_u32(u_input.b.x, 29u)]) && true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false));
    let var_2 = _wgslsmith_f_op_f32(round(global2.x));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_f_op_f32(var_3.a.x + -2096f))));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_1 {
    let var_0 = firstLeadingBit(countOneBits(vec4<u32>(~global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(56073u, 22u)]), 22u)], ~abs(global1[_wgslsmith_index_u32(4294967295u, 22u)]), 14106u, global1[_wgslsmith_index_u32(~26166u, 22u)])));
    global0 = array<i32, 29>();
    global2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0)), global2.x, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(696f, arg_1, -911f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(604f + -477f), -1000f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(31267i, 2147483647i), select(_wgslsmith_add_vec2_i32(-(vec2<i32>(global0[_wgslsmith_index_u32(0u, 29u)], u_input.c) & vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], -1i)), vec2<i32>(-2147483647i, 2147483647i) >> (var_0.yz % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 29u)], 0i), vec2<i32>(1i, 2147483647i), false), vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)]) | vec2<i32>(0i, u_input.c)) & vec2<i32>(~1i, min(27785i, u_input.c)), !vec2<bool>(!arg_0, any(vec2<bool>(arg_0, false)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(func_2(all(vec3<bool>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x * arg_1)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(970f - global2.x), _wgslsmith_f_op_f32(global2.x + -1490f), _wgslsmith_f_op_f32(-global2.x))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wxz)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = arg_2;
    var var_1 = -1000f;
    let var_2 = firstTrailingBit(select(firstTrailingBit(max(reverseBits(vec4<u32>(arg_2, arg_2, 4294967295u, 31046u)), vec4<u32>(22753u, 3295u, global1[_wgslsmith_index_u32(var_0, 22u)], var_0))), vec4<u32>(~(~u_input.a.x), 58174u, 8604u, var_0), !vec4<bool>(true, true, false, all(vec3<bool>(true, true, true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), 516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-111f + _wgslsmith_div_f32(arg_1.a.x, global2.x)) - arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1271f))), func_1(select(var_0 <= 4294967295u, true, true), _wgslsmith_f_op_f32(-arg_0.a.x)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-337f))), -754f));
    var var_4 = select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))) | any(vec3<bool>(true, true, true)), select(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true))), true), vec3<bool>(true, all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))), false), vec3<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(min(var_0 >> (arg_2 % 32u), ~39543u), 29u)] >= -12399i));
    return 637f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(-1942f, global2.x, global2.x));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1550f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-173f, 408f)), -1011f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(false, global2.x), Struct_1(var_0.a), ~u_input.a.x, _wgslsmith_mult_i32(u_input.c, u_input.c))) - global2.x), -762f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_0.a.x, 1297f, 185f) - vec4<f32>(var_0.a.x, 612f, 682f, global2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 668f, 1000f, 1534f), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -150f))) + vec4<f32>(var_0.a.x, 1171f, var_0.a.x, -1092f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-425f, _wgslsmith_f_op_f32(round(var_0.a.x)), _wgslsmith_div_f32(-315f, global2.x), 1f), _wgslsmith_div_vec4_f32(vec4<f32>(-1502f, 1039f, -385f, 187f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-347f, 2730f, 1844f, global2.x) - vec4<f32>(-1783f, -901f, 822f, global2.x)))))));
    global2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(732f + var_0.a.x)), 481f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 152f, var_0.a.x)));
    var var_1 = vec3<i32>(max(u_input.c, 1i), global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_mod_i32(-1i, firstTrailingBit(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~50658u, 29u)], -30994i | u_input.c))));
    var var_2 = ~vec3<u32>(0u << (firstLeadingBit(4294967295u) % 32u), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(30117u, global1[_wgslsmith_index_u32(0u, 22u)]), u_input.b, vec2<bool>(true, true)), firstTrailingBit(u_input.b)), global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(abs(global1[_wgslsmith_index_u32(4294967295u, 22u)]))), 22u)]);
    var var_3 = func_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1339f));
    var var_4 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_3.a.xy))), var_2.x, ~(_wgslsmith_mod_u32(~4294967295u, 4294967295u) << (var_2.x % 32u)), _wgslsmith_f_op_f32(-512f - 809f));
}

