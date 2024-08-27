struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 1302i, i32(-2147483648), -72037i);

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<f32, 19> = array<f32, 19>(-149f, -129f, -746f, 741f, 574f, 313f, 123f, 221f, -1168f, 576f, 253f, 1693f, 1258f, 2562f, -1039f, -120f, -1957f, -1000f, -752f);

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = array<f32, 19>();
    var var_0 = Struct_1(-arg_0.a);
    let var_1 = Struct_1(min(_wgslsmith_mod_vec2_i32(vec2<i32>(-26716i, 1i), firstTrailingBit(global4.a)), vec2<i32>(min(~0i, u_input.a), _wgslsmith_clamp_i32(-57470i, global0.x, _wgslsmith_dot_vec2_i32(global0.yz, global0.yx)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1138f, -348f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(43861u, 19u)], 499f), vec2<f32>(289f, -464f), vec2<bool>(false, true))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(8201u, 19u)]))))) + vec2<f32>(global2[_wgslsmith_index_u32(~38623u, 19u)], global2[_wgslsmith_index_u32(max(4294967295u, abs(abs(0u))), 19u)]));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1645f))))), global2[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(61194u, 25801u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(3556u, 0u))), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), 19u)]))));
    return any(vec4<bool>(!any(vec3<bool>(true, true, false)) || true, any(vec3<bool>(true, false, true)), true, true));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    global2 = array<f32, 19>();
    let var_0 = _wgslsmith_div_i32(~global0.x, u_input.a);
    global2 = array<f32, 19>();
    let var_1 = select(!vec4<bool>(any(!vec2<bool>(arg_1, true)), false, arg_1, any(vec3<bool>(arg_1, false, arg_1))), vec4<bool>(!select(true, arg_1, arg_1), true, ~(20514u ^ arg_0) < _wgslsmith_add_u32(arg_0, 0u), any(select(vec4<bool>(true, arg_1, arg_1, arg_1), !vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, true, arg_1)))), func_3(Struct_1(vec2<i32>(-2147483647i, global4.a.x))));
    let var_2 = 1u;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0, 1u, 31657u), vec3<u32>(18387u, var_2, 0u), true), vec3<u32>(arg_0, 1u, arg_0) & vec3<u32>(var_2, 12776u, 4294967295u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(38406u, 1u, arg_0), ~vec3<u32>(4294967295u, arg_0, var_2)))), 19u)];
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(-min(vec2<i32>(abs(-19215i), firstTrailingBit(arg_1.x)), vec2<i32>(1i, -arg_2.x)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-985f, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~4294967295u, 23u)], _wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(1u, 23u)], vec4<u32>(0u, 56338u, 4294967295u, 5621u))), 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(60905u, 19u)] * -833f), global2[_wgslsmith_index_u32(39045u, 19u)]) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(14385u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]))))));
    let var_2 = select(select(vec2<bool>(true, arg_0), select(select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_3, false), vec2<bool>(false, false), vec2<bool>(true, arg_0)), true), vec2<bool>(!arg_3, false), select(!vec2<bool>(false, arg_3), vec2<bool>(false, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_3, true), vec2<bool>(false, false)))), arg_3), vec2<bool>(!(!(!arg_0)), select(abs(0i) == ~u_input.a, true & !arg_3, false)), vec2<bool>(arg_3, true));
    global3 = ~(~_wgslsmith_add_u32(13314u, 0u) >> (1u % 32u));
    var var_3 = Struct_1(select(vec2<i32>(global0.x, _wgslsmith_add_i32(global0.x, -1218i) | _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(0i, var_0.a.x, arg_1.x, 1i))), vec2<i32>(-24379i, 1i), !(!(!var_2))));
    return ~4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(func_4((global4.a.x >= global0.x) && !arg_1.x, vec4<i32>(-2147483647i, 57449i, 0i, -2147483647i) & -vec4<i32>(arg_0.a.x, 27302i, 6503i, 3848i), vec3<i32>(-global0.x, i32(-1i) * -9965i, ~65195i), _wgslsmith_f_op_f32(func_2(4294967295u, arg_1.x)) < _wgslsmith_f_op_f32(func_2(1u, true))), 23u)] >> (global1[_wgslsmith_index_u32(~61583u, 23u)] % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(~0u, ~(~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), countOneBits(vec2<u32>(23612u, 4294967295u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(~vec2<u32>(34270u, 4294967295u))), 1u, ~5544u));
    let var_1 = true;
    var var_2 = false & (arg_2.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(74549u, 19u)] - -803f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17933u, 19u)]) * global2[_wgslsmith_index_u32(0u, 19u)])));
    let var_3 = !select(select(!(!arg_1), arg_1, !(!var_1)), !arg_1, !arg_1);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-574f, -1039f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 1017f) + global2[_wgslsmith_index_u32(1u, 19u)])));
    return -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_clamp_i32(arg_0.a.x, -47377i, -34262i)), global0.xy), arg_0.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77098u, 11653u), vec2<u32>(4294967295u, 28900u)), 19u)])))));
    var var_1 = ~_wgslsmith_sub_u32(4294967295u, firstLeadingBit(firstLeadingBit(~0u)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), 1009f) * var_0)));
    var var_3 = _wgslsmith_sub_u32(func_4(arg_0.x, firstLeadingBit(-vec4<i32>(-1i, 0i, u_input.a, global4.a.x)), max(vec3<i32>(arg_1.a.x, abs(u_input.a), 0i), firstLeadingBit(-global0.yyw)), !arg_0.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(9501u, 0u), 0u));
    var var_4 = false;
    return Struct_1(func_1(Struct_1(-abs(vec2<i32>(42484i, u_input.a))), select(vec2<bool>(arg_0.x, all(arg_0.wz)), vec2<bool>(false, true), arg_0.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + global2[_wgslsmith_index_u32(4486u, 19u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)))), Struct_1(max(~func_1(Struct_1(global4.a), vec2<bool>(true, true), vec2<f32>(global2[_wgslsmith_index_u32(0u, 19u)], 2379f)), global0.wy)));
    global1 = array<vec4<u32>, 23>();
    global2 = array<f32, 19>();
    var var_1 = var_0;
    let var_2 = vec2<bool>(true, !any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) + _wgslsmith_f_op_f32(f32(-1f) * -575f))) - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 90071u) << (1u % 32u), 19u)]))), vec2<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(countOneBits(countOneBits(vec3<u32>(77560u, 1u, 21168u))), ~vec3<u32>(1u, 1u, 1u))));
}

