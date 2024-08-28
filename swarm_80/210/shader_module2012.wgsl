struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec4<u32> = vec4<u32>(40809u, 23778u, 1u, 773u);

var<private> global2: f32 = 433f;

var<private> global3: vec2<f32> = vec2<f32>(967f, 644f);

var<private> global4: array<bool, 14> = array<bool, 14>(false, false, false, true, false, false, false, false, false, true, false, false, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    let var_1 = !global0.yxz;
    global3 = vec2<f32>(global3.x, -988f);
    let var_2 = ~_wgslsmith_sub_i32(1i, arg_0.x);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-716f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(ceil(arg_1.a)))) - 1500f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(func_3(~max(vec2<i32>(31143i, 0i), vec2<i32>(-1i, u_input.d.x)), arg_0, vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(arg_0.a + -1000f), _wgslsmith_f_op_f32(-arg_0.a)), arg_1))));
    var var_0 = !(!all(vec4<bool>(global4[_wgslsmith_index_u32(27109u, 14u)] | arg_0.b.x, false, global3.x < -2193f, !global4[_wgslsmith_index_u32(0u, 14u)])));
    let var_1 = arg_1.zyy;
    var_0 = _wgslsmith_mult_u32(~firstLeadingBit(~u_input.a.x), 0u) == _wgslsmith_add_u32(u_input.e.x, reverseBits(~(~global1.x)));
    var var_2 = Struct_1(_wgslsmith_div_f32(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.d.xx, arg_0, vec3<f32>(-1000f, arg_0.a, 1687f), vec4<bool>(global0.x, arg_1.x, true, var_1.x))) * -279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(round(-2934f))))), vec4<bool>(all(select(vec3<bool>(arg_0.b.x, true, false), !arg_1.wzx, arg_0.b.x)), true, 0u >= firstLeadingBit(global1.x), !(u_input.a.x >= ~u_input.e.x)));
    return u_input.a.x ^ global1.x;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(arg_1.x, global1.x);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(select(global3.x, -1050f, all(global0.xxx))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1089f - _wgslsmith_f_op_f32(floor(global3.x)))));
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1605f - _wgslsmith_f_op_f32(global3.x - -2103f)), _wgslsmith_f_op_f32(501f + global3.x), global3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, 827f, 1282f) + vec3<f32>(global3.x, 168f, 2028f)))))));
    let var_3 = vec4<i32>(~(-2147483647i) >> ((1u & abs(~u_input.e.x)) % 32u), -1i, -14166i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x) | -vec4<i32>(-2147483647i, u_input.b, u_input.c, 1i), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, 13053i, u_input.c), abs(vec4<i32>(-2147483647i, -38250i, u_input.c, -9636i))))));
    return Struct_1(116f, !vec4<bool>(global4[_wgslsmith_index_u32(~67399u, 14u)], true, !global0.x, select(global0.x, true, global4[_wgslsmith_index_u32(1u, 14u)])));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    let var_0 = arg_2;
    var var_1 = false || ((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, arg_1.a, false)) + arg_1.a) >= -645f) || false);
    let var_2 = vec4<f32>(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(true, vec2<u32>(u_input.e.x, global1.x)).a, arg_0.a) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x + arg_1.a)))), _wgslsmith_f_op_f32(-global3.x)), 1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(var_2.xz));
    var var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, -1i, -1i, 0i), vec4<i32>(-41791i, u_input.d.x, -2147483647i, u_input.d.x)), vec4<i32>(-472i, var_0, 6528i, u_input.d.x) >> (vec4<u32>(27332u, u_input.a.x, 14318u, global1.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, -29242i, 25807i, -2147483647i))), _wgslsmith_sub_vec4_i32(abs(-vec4<i32>(-2147483647i, var_0, arg_2, -20079i)), vec4<i32>(0i, -2147483647i, 1241i, 17022i) | -vec4<i32>(-1i, u_input.c, u_input.c, 2147483647i))), _wgslsmith_clamp_i32(~arg_2, (_wgslsmith_mult_i32(49974i, var_0) & select(15645i, 2147483647i, global0.x)) << (countOneBits(global1.x | 13428u) % 32u), _wgslsmith_add_i32(var_0 | -arg_2, -2147483647i)), 0i, -_wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-25075i, 51486i)), vec2<i32>(-2958i, max(u_input.d.x, arg_2))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<i32>(var_4.x, 1i), arg_0, vec3<f32>(var_3.x, var_2.x, 1721f), arg_1.b)), _wgslsmith_f_op_f32(-303f * 527f)), _wgslsmith_f_op_vec2_f32(var_2.xy * vec2<f32>(429f, -454f)))) + _wgslsmith_div_vec2_f32(var_2.yx, vec2<f32>(-1145f, global3.x))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)) + 699f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<i32>(arg_2, arg_2), arg_1, var_2.zzx, vec4<bool>(arg_1.b.x, global0.x, false, arg_1.b.x))), _wgslsmith_f_op_f32(424f + -673f))), _wgslsmith_f_op_f32(f32(-1f) * -455f)));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(global3.x, select(vec4<bool>(true, true, true, true), !select(vec4<bool>(global0.x, false, false, global4[_wgslsmith_index_u32(global1.x, 14u)]), vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(130152u, 14u)]), true), vec4<bool>(!global4[_wgslsmith_index_u32(u_input.e.x, 14u)], all(vec2<bool>(false, global0.x)), global1.x != 49473u, false))), func_4(false, vec2<u32>(~(~2563u), func_2(Struct_1(global3.x, vec4<bool>(true, global4[_wgslsmith_index_u32(43401u, 14u)], global0.x, true)), vec4<bool>(true, global0.x, global4[_wgslsmith_index_u32(0u, 14u)], true), select(vec4<i32>(u_input.d.x, 5975i, u_input.d.x, -27284i), vec4<i32>(25900i, 19843i, -1i, u_input.b), vec4<bool>(global4[_wgslsmith_index_u32(global1.x, 14u)], true, false, true))))), _wgslsmith_mult_i32(i32(-1i) * -16693i, _wgslsmith_add_i32(u_input.b, -30461i))));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), global3.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(step(250f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(global3.x * 538f)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.xy, Struct_1(global3.x, !vec4<bool>(false, global0.x, false, global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(824f, -115f, -820f), vec3<f32>(global3.x, 1100f, 124f), global0.xyw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - vec3<f32>(2119f, global3.x, 166f))), select(vec4<bool>(true, global4[_wgslsmith_index_u32(56394u, 14u)], false, false), select(vec4<bool>(global0.x, false, false, global4[_wgslsmith_index_u32(global1.x, 14u)]), vec4<bool>(false, false, false, global0.x), global0.x), select(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.e.x, 14u)], global0.x, true), vec4<bool>(false, false, false, global0.x), vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(global1.x, 14u)])))))), select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(6973u, 14u)], any(global0.wxx), any(vec4<bool>(global4[_wgslsmith_index_u32(49781u, 14u)], global4[_wgslsmith_index_u32(global1.x, 14u)], true, false))), vec4<bool>(false, false, any(vec4<bool>(global0.x, true, false, global4[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_clamp_u32(global1.x, 53046u, 26032u) >= firstLeadingBit(20440u)), true));
    global0 = func_4(true, u_input.e).b;
    global4 = array<bool, 14>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(917f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1056f, var_0.a)), _wgslsmith_f_op_f32(global3.x * var_0.a))), all(select(var_0.b.wy, var_0.b.wy, var_0.b.yz)))) - _wgslsmith_f_op_f32(664f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * var_0.a)))), !(!vec4<bool>(true || var_0.b.x, global0.x, true, select(false, global4[_wgslsmith_index_u32(global1.x, 14u)], false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-524f * 331f);
    var var_1 = func_1();
    global4 = array<bool, 14>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1142f);
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global3.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_0) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-332f, global3.x)))))), vec2<f32>(var_1.a, 547f), !(!(!var_1.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -918f));
}

