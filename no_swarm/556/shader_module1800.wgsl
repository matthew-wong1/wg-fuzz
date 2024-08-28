struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(true, true, true, true, true, true, false, false, false, false, false, true, true, true, false, false, false, true, true, true, true, true, false, false, false);

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 26>;

var<private> global4: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_i32(~0i, ~u_input.c.x));
    let var_1 = u_input.c.yx;
    var var_2 = var_0;
    var var_3 = var_0;
    global4 = vec4<bool>(false, any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], false), global4.yxw, !global4.x)), all(select(global4.yw, select(vec2<bool>(true, global4.x), global4.zx, global2.yz), true)) | any(select(global4.xz, global4.ww, select(vec2<bool>(true, global4.x), global4.zz, global0[_wgslsmith_index_u32(1u, 25u)]))), !any(global4.xxz));
    return _wgslsmith_div_u32(1u | _wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.a), ~select(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(u_input.a.x, 4294967295u, 60130u), global4.xxx)), u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    global4 = !select(!vec4<bool>(true, !global2.x, false, !global4.x), vec4<bool>(true, global4.x && (global3[_wgslsmith_index_u32(1u, 26u)] <= 1829f), global2.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, arg_2.x), ~arg_2.x), 25u)]), global0[_wgslsmith_index_u32(~func_3(vec3<i32>(arg_0.a, arg_0.a, -2147483647i)), 25u)]);
    var var_0 = vec3<i32>(_wgslsmith_clamp_i32(~select(~arg_0.a, -2147483647i, global2.x), 2147483647i, -37359i), u_input.d, 0i);
    var var_1 = ~(-_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, -vec4<i32>(64163i, arg_0.a, var_0.x, var_0.x)), u_input.c));
    var var_2 = u_input.c.wzy;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~arg_2.x, 26u)] + _wgslsmith_f_op_f32(trunc(-276f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 26u)]) * _wgslsmith_f_op_f32(-266f + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(21427u, 26u)]))), global1[_wgslsmith_index_u32(19193u, 26u)])));
    return 97590u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global3 = array<f32, 26>();
    var var_0 = arg_2;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_mod_i32(~(-arg_2.a), arg_2.a)));
    global4 = select(!(!select(select(vec4<bool>(global4.x, global0[_wgslsmith_index_u32(arg_1.x, 25u)], false, true), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(global4.x, false, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, global4.x, false), true)), !select(vec4<bool>(global4.x & false, any(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 25u)], global2.x)), false, true), vec4<bool>(false, any(vec3<bool>(false, global4.x, global0[_wgslsmith_index_u32(4294967295u, 25u)])), global2.x, true), _wgslsmith_f_op_f32(-arg_0.x) != global3[_wgslsmith_index_u32(select(73797u, u_input.a.x, global4.x), 26u)]), global2.x);
    let var_2 = arg_2;
    return var_2;
}

fn func_1() -> bool {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-479f - 933f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 26u)] * global3[_wgslsmith_index_u32(24470u, 26u)]), global3[_wgslsmith_index_u32(func_2(Struct_1(2147483647i), global3[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.b.zw), 26u)]))), u_input.a.yz, Struct_1(~max(u_input.c.x, firstLeadingBit(22904i))));
    let var_1 = 1i;
    let var_2 = global4.x;
    var var_3 = func_4(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], global3[_wgslsmith_index_u32(~u_input.b.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 26u)] - 698f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 26u)] - global3[_wgslsmith_index_u32(0u, 26u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], -353f)) + _wgslsmith_f_op_f32(trunc(418f))))), countOneBits(firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 17722u))), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(774f, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 1000f, 292f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(434f, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 408f, 126f) + vec4<f32>(global3[_wgslsmith_index_u32(97633u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(47679u, 26u)], global3[_wgslsmith_index_u32(u_input.a.x, 26u)])))), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, global4.x), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec4<bool>(global2.x, false, global4.x, global2.x)))), u_input.a.xy, Struct_1(u_input.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 35636i), vec2<i32>(u_input.c.x, var_0.a)))));
    var var_4 = Struct_1(var_1);
    return all(vec4<bool>(!select(global4.x, true, global2.x), false, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.b.x, 25u)], false)), global4.x)) & (var_0.a < -u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c.x);
    global4 = select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(~0u, 25u)], false, func_1()), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(51210u, 25u)], false, false), !vec4<bool>(global4.x, false, true, true), vec4<bool>(true, global2.x, global0[_wgslsmith_index_u32(28738u, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)])), !select(vec4<bool>(false, true, global2.x, false), vec4<bool>(global4.x, true, false, false), false)), select(!(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global2.x, true, global4.x))), !select(vec4<bool>(global4.x, true, true, global4.x), !vec4<bool>(global4.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], false, false), true), func_1()), global0[_wgslsmith_index_u32(~min(_wgslsmith_add_u32(u_input.b.x, u_input.a.x | u_input.a.x), u_input.a.x), 25u)]);
    let var_1 = firstTrailingBit(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, var_0.a), countOneBits(vec4<i32>(3102i, var_0.a, u_input.d, -61722i))), -51816i | ~u_input.d, countOneBits(var_0.a), 21502i));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(36964u, 26u)]))))))));
    var var_3 = 996f;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(max(0u, u_input.a.x ^ 4294967295u), 26u)], global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), 26u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 26u)]) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(-922f)))) - var_2.x));
    let var_5 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.x)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x, 26u)] + global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), global3[_wgslsmith_index_u32(6128u, 26u)], _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, -1281f, 1042f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -514f, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 426f) * vec4<f32>(369f, 893f, var_2.x, 1683f)), vec4<f32>(-384f, -1015f, -541f, var_2.x), vec4<bool>(true, true, true, true))))), _wgslsmith_div_vec2_u32(u_input.b.wy, vec2<u32>(76890u, u_input.b.x)), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, var_4.x, _wgslsmith_f_op_f32(var_4.x - -128f), var_4.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global3[_wgslsmith_index_u32(4294967295u, 26u)], 437f, 1000f))))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), min(firstLeadingBit(u_input.a.zz), vec2<u32>(u_input.a.x, u_input.a.x))), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.ywy, -1505f);
}

