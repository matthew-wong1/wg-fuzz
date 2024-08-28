struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-1i, -67438i, 62857i), -93193i, vec2<f32>(-1764f, 1083f), 4308i);

var<private> global2: u32;

var<private> global3: vec3<bool>;

var<private> global4: array<i32, 12> = array<i32, 12>(2147483647i, -1i, -7361i, -15704i, i32(-2147483648), -25411i, 35690i, 36963i, 2147483647i, -2628i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec2<i32>(~(~max(_wgslsmith_mult_i32(global1.b, u_input.a.x), i32(-1i) * -2993i)), global1.a.x & 2147483647i);
    let var_1 = Struct_1(countOneBits(max(_wgslsmith_add_vec3_i32(vec3<i32>(-18773i, -26887i, global4[_wgslsmith_index_u32(0u, 12u)]), global0.xzy), abs(global1.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 20326i, 34796i, 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global0.x, 2147483647i), vec3<i32>(global1.a.x, 26687i, 2147483647i)), 2147483647i, 1i, global0.x >> (23431u % 32u))), firstLeadingBit(-vec4<i32>(0i, 6200i, 39560i, global4[_wgslsmith_index_u32(4294967295u, 12u)]) | ~vec4<i32>(-27395i, 68018i, global0.x, global1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x * -475f), global1.c.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(global1.c.x, -291f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, 940f) * global1.c))) + _wgslsmith_f_op_vec2_f32(-global1.c)), 0i);
    var var_2 = true;
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), global1.a.xx), global0.x, _wgslsmith_clamp_i32(global1.a.x, global0.x, var_1.a.x), i32(-1i) * -32208i), -vec4<i32>(global4[_wgslsmith_index_u32(10931u, 12u)], abs(-2147483647i), -var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global1.d, var_1.d), var_1.a))), _wgslsmith_dot_vec2_i32(select(var_1.a.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(46572u, 12u)], -2147483647i), -vec2<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.b, 12u)])), true), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(5899i, 8822i), ~global1.a.zy), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(global0.wy, global1.a.xx), -vec2<i32>(0i, -2147483647i)))));
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_add_i32(1i, -1i), 9970i, -28237i), var_1.b, vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * global1.c.x) * -820f) * -241f)), ~(-2147483647i));
    return _wgslsmith_f_op_f32(-807f + var_4.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + -723f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(61240u)) * _wgslsmith_f_op_f32(exp2(global1.c.x)))))));
    global3 = vec3<bool>(any(vec3<bool>(any(!vec2<bool>(global3.x, false)), global3.x, all(vec2<bool>(global3.x, global3.x)))), global3.x, !(_wgslsmith_f_op_f32(func_3(u_input.b)) <= _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(min(-756f, 642f)))));
    var_0 = _wgslsmith_f_op_f32(-global1.c.x);
    let var_1 = select(vec4<bool>((global3.x || !global3.x) != any(select(vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, true, global3.x, true), false)), global3.x, true, true), vec4<bool>(true, global3.x, global3.x, true), false);
    let var_2 = var_1;
    return firstTrailingBit(-global1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(59365u, ~u_input.b);
    let var_1 = _wgslsmith_mult_u32(~arg_1.x, 63499u);
    var var_2 = true;
    let var_3 = !vec4<bool>(true, !global3.x, global3.x, true);
    var var_4 = vec3<bool>(!any(var_3.xww), (_wgslsmith_f_op_f32(arg_0.c.x - arg_0.c.x) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(435f))))) || !global3.x, true && (select(global0.x, -15805i, any(var_3.xww)) < -1i));
    return Struct_1(~max(_wgslsmith_add_vec3_i32(-arg_0.a, arg_0.a >> (u_input.e.zwz % vec3<u32>(32u))), func_2(arg_0, ~508i)), -42272i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(u_input.b)), 509f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1549f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1424f, arg_0.c.x))), true))), global0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mult_vec3_i32(abs(vec3<i32>(~_wgslsmith_mult_i32(global1.d, arg_1.d), ~(-16539i), _wgslsmith_mod_i32(arg_0.d, u_input.c.x) << ((4294967295u >> (u_input.e.x % 32u)) % 32u))), u_input.c);
    global3 = !(!vec3<bool>(global3.x, true, false));
    global3 = vec3<bool>(any(select(select(global3.zy, global3.xx, global3.x), global3.zx, global3.x)) && all(vec3<bool>(false, true, any(vec3<bool>(global3.x, false, global3.x)))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.e.x))) > -1569f), global3.x);
    var_0 = func_1(arg_1, vec4<u32>(u_input.b, 115420u, u_input.e.x << (max(max(u_input.e.x, u_input.d.x), u_input.d.x) % 32u), abs(u_input.b)));
    return true;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = any(select(!global3.yx, select(vec2<bool>(false, true), !vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), any(vec3<bool>(global3.x, global3.x, global3.x)))), global3.zz));
    global2 = u_input.e.x;
    global1 = arg_3;
    return _wgslsmith_mult_i32(global1.d, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.x, -2147483647i), global4[_wgslsmith_index_u32(u_input.b, 12u)]) << (~(firstTrailingBit(u_input.e.x) | u_input.b) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    global0 = min(vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.a.x & -global1.b), func_5(countOneBits(global4[_wgslsmith_index_u32(4294967295u, 12u)]) < _wgslsmith_dot_vec3_i32(global0.xyx, vec3<i32>(global0.x, -1i, global4[_wgslsmith_index_u32(u_input.e.x, 12u)])), func_4(func_1(Struct_1(vec3<i32>(-6767i, -27964i, u_input.a.x), -2147483647i, global1.c, u_input.c.x), vec4<u32>(0u, var_0, u_input.b, 79322u)), Struct_1(vec3<i32>(-55784i, 2147483647i, global1.a.x), 37565i, vec2<f32>(global1.c.x, 2662f), global4[_wgslsmith_index_u32(77405u, 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.x)) - global1.c.x), Struct_1(vec3<i32>(global4[_wgslsmith_index_u32(var_0, 12u)], global0.x, 8362i), -52029i, _wgslsmith_div_vec2_f32(global1.c, global1.c), ~0i)), i32(-1i) * -_wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(global1.d, global1.a.x)), -1i >> (abs(1u) % 32u)), vec4<i32>(_wgslsmith_mod_i32(abs(_wgslsmith_div_i32(-32465i, -48743i)), -2147483647i), _wgslsmith_sub_i32(1i, -1i), -(global0.x & select(global4[_wgslsmith_index_u32(var_0, 12u)], 0i, global3.x)), _wgslsmith_mod_i32(u_input.a.x, abs(global4[_wgslsmith_index_u32(98740u, 12u)]))));
    var var_1 = 38542i;
    let var_2 = Struct_1(vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(4294967295u << (firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.e.xyx, u_input.e.zyw)) % 32u), 12u)], _wgslsmith_mod_i32(2147483647i, global1.b ^ global1.a.x) | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global1.a.xx, vec2<i32>(u_input.a.x, 2147483647i)), 886i)), abs(global0.x), _wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x)))))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(-3415i, vec3<u32>(firstTrailingBit(4294967295u), 1u, var_0), global4[_wgslsmith_index_u32(4294967295u | var_0, 12u)], ~(~_wgslsmith_dot_vec2_i32(~var_2.a.xy, var_2.a.zx)));
}

