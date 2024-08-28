struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(-9084i, 1i, 1370i, -60168i), vec4<i32>(5528i, -44258i, 29141i, 6336i), vec4<i32>(0i, 74557i, 1i, 35797i), vec4<i32>(95708i, -9890i, 1i, 2147483647i), vec4<i32>(-1i, -1i, -14588i, -37161i), vec4<i32>(-1i, 1i, i32(-2147483648), 0i), vec4<i32>(-4831i, 2147483647i, 2147483647i, 10065i), vec4<i32>(1i, 65196i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 3012i, -21557i), vec4<i32>(-40776i, 2147483647i, 1i, 69824i), vec4<i32>(-40717i, 33288i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(-43521i, 1i, -21669i, 15295i), vec4<i32>(-27562i, i32(-2147483648), 55663i, 0i), vec4<i32>(0i, 2147483647i, 43031i, 2147483647i), vec4<i32>(2147483647i, 6974i, -30447i, 2147483647i), vec4<i32>(-4071i, 1i, 73480i, -28622i), vec4<i32>(-66713i, i32(-2147483648), -1i, 13857i), vec4<i32>(i32(-2147483648), i32(-2147483648), 33673i, 0i), vec4<i32>(-25730i, -62720i, -74202i, -32473i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(34275i, -1i, 1753i, 1i), vec4<i32>(i32(-2147483648), 1i, 1i, -23004i), vec4<i32>(0i, 0i, i32(-2147483648), 23711i), vec4<i32>(-25133i, -17841i, -42212i, -8700i), vec4<i32>(0i, 789i, 1i, -44668i), vec4<i32>(-27750i, -15558i, -14304i, -1i), vec4<i32>(-18427i, -32333i, -1i, -1i), vec4<i32>(17452i, 0i, -43005i, 1i), vec4<i32>(-1i, 0i, 52876i, 80644i));

var<private> global1: u32;

var<private> global2: vec4<u32>;

var<private> global3: vec2<f32> = vec2<f32>(961f, -1717f);

var<private> global4: array<u32, 19> = array<u32, 19>(121099u, 51529u, 0u, 0u, 4294967295u, 93344u, 19706u, 1u, 41015u, 13116u, 4294967295u, 0u, 7460u, 8948u, 30543u, 44893u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(global3.x, any(!select(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, true), vec3<bool>(false, arg_0, arg_0)), vec3<bool>(false, false, false), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-1i) * -vec2<i32>(1i, -8114i)), ~(~min(u_input.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, 77612u), global2.zw, global2.yz))));
    var var_1 = Struct_1(var_0.a, !(!(any(vec2<bool>(false, false)) & true)), -20247i, vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(0u), 6144u), global2.x) >> (((~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 15997u) >> (~u_input.a % vec2<u32>(32u))) >> ((u_input.a << (firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(0u, 19u)], 33475u)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(~var_1.c), var_0.c), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.c, reverseBits(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(global2.x, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]))), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -2147483647i) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(var_1.c, -2114i) | vec2<i32>(var_1.c, -61852i)))));
    global0 = array<vec4<i32>, 30>();
    var var_3 = Struct_1(var_1.a, !(var_1.a <= _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(f32(-1f) * -569f))), ~(-2147483647i), vec2<u32>(8313u, ~reverseBits(~67404u)));
    return 0u;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    global0 = array<vec4<i32>, 30>();
    let var_0 = ~vec3<u32>(1u, ~(~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b), 19u)]), _wgslsmith_div_u32(4294967295u, ~0u));
    var var_1 = !select(select(select(select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, true, true)), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, arg_0.x), false), arg_0.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, false, false)), false), select(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, arg_0.x, false), !vec3<bool>(arg_0.x, arg_0.x, false)), !vec3<bool>(arg_0.x, false, false), select(any(vec4<bool>(false, false, false, false)), all(vec2<bool>(arg_0.x, arg_0.x)), !arg_0.x)), any(select(vec2<bool>(arg_0.x, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), 1065f >= global3.x)));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(~abs(vec2<i32>(1i, 27650i))), -select(vec2<i32>(-19616i, -30765i), vec2<i32>(-21814i, 0i), vec2<bool>(var_1.x, arg_0.x))), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -countOneBits(vec2<i32>(19430i, -5667i))) >> (select(vec2<u32>(var_0.x, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(836u, 30634u), u_input.a), ~vec2<u32>(1u, 24668u), min(u_input.a, global2.yy)), arg_0) % vec2<u32>(32u)));
    global0 = array<vec4<i32>, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x + -217f), global3.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global3.x, 507f, arg_0.x)))))) * global3.x);
}

fn func_1() -> u32 {
    let var_0 = vec4<bool>(false, true, (func_2(true) < global4[_wgslsmith_index_u32(u_input.a.x, 19u)]) && (u_input.b < ~(~global2.x)), any(vec3<bool>(true, true, true)));
    global4 = array<u32, 19>();
    global4 = array<u32, 19>();
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + -130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(var_0.x, false), 897u))))), false, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 0i, -56714i), i32(-1i) * -abs(-20051i)), reverseBits(vec2<u32>(_wgslsmith_add_u32(global2.x, 49813u), global4[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(88612u, 19u)]), 19u)])) | ~vec2<u32>(min(global2.x, 1u), 2718u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(965f, -1000f)), true, abs(abs(var_1.c)), vec2<u32>(10754u, ~(~35826u)));
    return max(4294967295u, global4[_wgslsmith_index_u32(0u, 19u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 30>();
    var var_0 = !vec4<bool>(false, _wgslsmith_add_u32(func_1(), reverseBits(global4[_wgslsmith_index_u32(45147u, 19u)])) < _wgslsmith_dot_vec2_u32(~global2.ww, ~u_input.a), select(all(vec4<bool>(true, false, true, false)), true, true) && (any(vec4<bool>(true, false, true, true)) && true), false);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1285f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global3.x), -732f)))));
    var var_2 = Struct_1(179f, any(vec2<bool>(var_0.x, var_0.x)), 2147483647i, ~vec2<u32>(0u, 104297u));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) - -202f)), -1000f), global3.x);
    global1 = func_1();
    global0 = array<vec4<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, 948f), vec2<f32>(1000f, var_2.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1531f, global3.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-394f)), _wgslsmith_f_op_f32(-1818f - _wgslsmith_f_op_f32(-var_2.a)), 1042f, global3.x)), ~(~u_input.b));
}

