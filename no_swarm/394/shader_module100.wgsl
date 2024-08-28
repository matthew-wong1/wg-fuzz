struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: array<Struct_2, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(!vec4<bool>(true, (u_input.a.x >= 48192i) | true, false, true), global0[_wgslsmith_index_u32(~17954u, 19u)]);
    global1 = array<Struct_2, 12>();
    let var_1 = 1250f;
    var var_2 = Struct_1(!all(vec2<bool>(!var_0.a.x, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))), select(!select(!var_0.a.wzx, vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x), select(select(select(var_0.a.xzx, var_0.a.zwx, vec3<bool>(true, var_0.a.x, var_0.a.x)), vec3<bool>(var_0.a.x, true, var_0.a.x), true), !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x), any(var_0.a) != true), true, var_0.a.x);
    let var_3 = Struct_1(!(true & var_2.e) & var_2.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1027f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(539f - global0[_wgslsmith_index_u32(26023u, 19u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b) - var_2.b), vec2<bool>(var_2.a, firstTrailingBit(-34879i) < -1i))), vec3<bool>(true, any(!var_0.a.xxw), (-1037f > var_1) | var_2.d), u_input.b.x != firstTrailingBit(-57633i), all(var_0.a));
    return all(select(var_0.a.xw, vec2<bool>(any(select(vec2<bool>(var_2.c.x, false), var_3.c.zy, vec2<bool>(true, true))), false), select(select(vec2<bool>(var_3.d, false), vec2<bool>(false, false), var_3.c.yz), var_2.c.xx, !vec2<bool>(false, var_2.d))));
}

fn func_2() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.d, 19u)];
    let var_1 = func_3();
    global0 = array<f32, 19>();
    global1 = array<Struct_2, 12>();
    global0 = array<f32, 19>();
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<f32, 19>();
    let var_0 = Struct_1(func_2() == u_input.b.x, vec2<f32>(695f, _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(746f - global0[_wgslsmith_index_u32(u_input.d, 19u)]) * _wgslsmith_f_op_f32(-arg_0.b.x))))), vec3<bool>(true, arg_0.e, arg_0.e), any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a, true, true, !arg_0.e), !arg_0.e)), true);
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    var var_1 = ((-41173i | (u_input.b.x & ~u_input.b.x)) <= 16107i) && (-312f >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    global0 = array<f32, 19>();
    global1 = array<Struct_2, 12>();
    var var_0 = arg_3;
    var var_1 = global1[_wgslsmith_index_u32(u_input.d, 12u)];
    var var_2 = func_1(arg_3.c, u_input.d | u_input.d);
    return arg_3.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 19>();
    global1 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, 18232i), i32(-1i) * -5540i, 1i), firstTrailingBit(u_input.b), vec4<bool>(func_3() & !arg_0.a.a.x, any(vec2<bool>(arg_0.a.a.x, true)), (u_input.d > u_input.d) && false, arg_0.a.a.x)), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(reverseBits(~u_input.a), u_input.b.wxz), 40205i, arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.x, func_1(arg_0.c, ~49717u).b.x, !arg_0.c.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 19u)]))))));
    let var_2 = Struct_1(arg_0.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1565f, 571f)) + _wgslsmith_f_op_vec2_f32(exp2(arg_1.xx)))), func_1(Struct_1(arg_0.a.a.x, vec2<f32>(_wgslsmith_f_op_f32(floor(1626f)), 606f), arg_0.a.a.zyz, all(select(vec3<bool>(arg_0.c.a, arg_0.c.c.x, arg_0.a.a.x), vec3<bool>(true, true, false), false)), arg_0.a.a.x), (firstLeadingBit(u_input.d) | _wgslsmith_mod_u32(u_input.d, 1u)) ^ (abs(1712u) << ((41668u ^ u_input.d) % 32u))).c, !arg_0.a.a.x, all(select(vec2<bool>(u_input.c > u_input.a.x, true), vec2<bool>(true, arg_0.c.d && false), func_1(Struct_1(true, vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 19u)], var_1), arg_0.c.c, true, arg_0.a.a.x), abs(u_input.d)).c.xy)));
    return Struct_1(!((108673u >= _wgslsmith_dot_vec4_u32(vec4<u32>(53086u, 4294967295u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u))) | arg_0.a.a.x), _wgslsmith_div_vec2_f32(arg_2, _wgslsmith_f_op_vec2_f32(-var_2.b)), vec3<bool>(true, !arg_0.c.d, any(vec3<bool>(true, var_2.d, func_4(arg_0.c, -584f, u_input.d, arg_0).a.x))), global0[_wgslsmith_index_u32(reverseBits(0u), 19u)] >= func_1(var_2, ~4294967295u).b.x, var_2.a);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    var var_0 = u_input.d;
    let var_1 = u_input.b;
    var var_2 = ~(~(min(vec3<u32>(18193u, 4294967295u, 40196u), vec3<u32>(u_input.d, u_input.d, u_input.d)) >> (vec3<u32>(min(u_input.d, u_input.d), 0u, 0u & u_input.d) % vec3<u32>(32u))));
    let var_3 = 105448i;
    var var_4 = u_input.d;
    return Struct_3(func_4(func_1(arg_0, ~(~29888u)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~var_2.x, 19u)]), 53300u, Struct_3(Struct_2(arg_1, -1398f), u_input.a.x, arg_0)), 1i, func_1(func_1(Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(-arg_0.b), arg_0.c, true, func_1(Struct_1(false, vec2<f32>(arg_0.b.x, global0[_wgslsmith_index_u32(71472u, 19u)]), vec3<bool>(arg_0.e, arg_1.x, false), arg_0.c.x, arg_0.d), 30248u).d), 54097u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25066u, 97047u), vec3<u32>(0u, 61483u, 4294967295u)) >> (firstLeadingBit(u_input.d) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1009f, global0[_wgslsmith_index_u32(0u, 19u)]) - vec2<f32>(402f, global0[_wgslsmith_index_u32(0u, 19u)])), vec2<f32>(-367f, 817f))))));
    global0 = array<f32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0);
    let var_2 = vec4<i32>(-22594i, -_wgslsmith_div_i32(_wgslsmith_sub_i32(-10062i << (u_input.d % 32u), u_input.a.x), _wgslsmith_add_i32(1i, -2042i >> (u_input.d % 32u))), firstLeadingBit(u_input.b.x), 1i);
    var var_3 = func_6(func_5(Struct_3(func_4(func_1(Struct_1(false, vec2<f32>(-2903f, var_0.x), vec3<bool>(true, true, true), true, false), u_input.d), _wgslsmith_f_op_f32(select(var_1.x, -589f, true)), ~105066u, Struct_3(global1[_wgslsmith_index_u32(14968u, 12u)], u_input.a.x, Struct_1(false, var_0, vec3<bool>(false, true, false), false, false))), reverseBits(54393i), Struct_1(true, var_0, vec3<bool>(false, true, false), true, u_input.c >= 41735i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(96274u, 19u)]), global0[_wgslsmith_index_u32(~15376u, 19u)], func_1(Struct_1(false, vec2<f32>(var_1.x, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<bool>(false, true, true), true, false), u_input.d).b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1367f), 2816f), var_0, select(vec2<bool>(true, true), func_1(Struct_1(false, vec2<f32>(1854f, 128f), vec3<bool>(false, false, true), false, true), 22633u).c.xx, vec2<bool>(true, true))))), select(vec4<bool>(true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))), vec4<bool>(true, true, !all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, false, false))), vec4<bool>(true, false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(561f, var_3.a.b, -2436f, _wgslsmith_f_op_f32(-1830f + var_0.x)), global0[_wgslsmith_index_u32(~(~u_input.d), 19u)]);
}

