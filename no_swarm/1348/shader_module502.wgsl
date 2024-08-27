struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(-1061i, -28539i, 2147483647i, 34126i, 15329i, i32(-2147483648), 1i, 14417i, 2147483647i, 37504i, -15901i, 15585i, -65015i, 2147483647i, 31221i, -3343i, -1i, 1i, -9330i, 2147483647i, 16289i, 1i, -18673i, -13069i, -16435i, 24359i, 11329i, -1i, 1i, -28205i);

var<private> global1: array<u32, 23> = array<u32, 23>(4294967295u, 4294967295u, 4294967295u, 27175u, 4294967295u, 0u, 0u, 4294967295u, 48061u, 49485u, 0u, 4294967295u, 1u, 1u, 1u, 4294967295u, 22961u, 85632u, 82832u, 8584u, 15047u, 49863u, 17327u);

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = ~(~83962u);
    let var_1 = -global0[_wgslsmith_index_u32(~4294967295u, 30u)];
    let var_2 = _wgslsmith_f_op_f32(global4.a.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.a.a.x, 232f))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), global3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.a.x) + _wgslsmith_f_op_f32(global2.a.x * 1248f)))) + _wgslsmith_f_op_f32(max(-903f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(min(505f, 118f))))))), -1000f);
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1031f, -255f), _wgslsmith_div_vec3_f32(vec3<f32>(1716f, -1960f, -339f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, -527f, var_2))))), var_1 >> ((4294967295u | ~firstTrailingBit(4294967295u)) % 32u), vec4<bool>(any(!select(global3.a.c.yz, vec2<bool>(false, global4.a.c.x), global3.a.c.x)), any(!vec2<bool>(global3.a.c.x, true)), true, all(vec2<bool>(global4.a.c.x, all(vec4<bool>(true, global4.a.c.x, global2.c.x, global3.a.c.x))))));
    return global4.a.c.wy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_0 = select(select(vec2<bool>(false, !global2.c.x), global3.a.c.ww, vec2<bool>(true, true)), vec2<bool>(!(!(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)] > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)])), global2.c.x), func_3().x);
    let var_1 = 748f;
    return !global3.a.c.xwz;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> vec3<bool> {
    global4 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(round(-2215f)), _wgslsmith_f_op_f32(-329f * global3.a.a.x)) - global4.a.a), _wgslsmith_dot_vec3_i32(reverseBits(~u_input.b), _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(-12628i, 64162i, -1i)) >> (u_input.c.xwx % vec3<u32>(32u))), vec4<bool>(global3.a.c.x, select(select(global2.c.x, true, false), select(true, true, true), true), all(select(global4.a.c.zww, vec3<bool>(true, false, global3.a.c.x), global4.a.c.x)), global2.c.x)));
    global2 = global3.a;
    var var_0 = -39744i;
    global2 = Struct_1(global3.a.a, 1i, !(!(!select(vec4<bool>(false, global2.c.x, false, false), global2.c, vec4<bool>(global4.a.c.x, global4.a.c.x, false, global3.a.c.x)))));
    global0 = array<i32, 30>();
    return select(!vec3<bool>(u_input.a.x >= _wgslsmith_clamp_i32(global2.b, 3109i, global4.a.b), true, true), !func_4(func_3(), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.a.a.x, global3.a.a.x, global4.a.a.x, arg_0.x))), global4.a, global2.c), ~_wgslsmith_add_i32(-global4.a.b, global3.a.b) != ~min(8732i, global4.a.b));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 23u)];
    let var_1 = Struct_3(u_input.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.x))))), arg_2.a.c.x);
    var var_2 = reverseBits(~(-16398i));
    let var_3 = all(select(vec4<bool>(global2.c.x, arg_0.x, true || all(vec4<bool>(global2.c.x, true, false, global3.a.c.x)), _wgslsmith_f_op_f32(global3.a.a.x * arg_2.a.a.x) != _wgslsmith_div_f32(global3.a.a.x, -706f)), vec4<bool>(func_4(arg_0.yx, vec4<f32>(123f, -737f, arg_2.a.a.x, global2.a.x), Struct_1(global4.a.a, 11018i, vec4<bool>(arg_2.a.c.x, true, var_1.c, var_1.c)), global4.a.c).x | !global4.a.c.x, arg_2.a.a.x >= -688f, true, true), true));
    let var_4 = _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.a, var_1.a), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c))), vec4<u32>(var_1.a.x | min(var_1.a.x, _wgslsmith_add_u32(arg_1.x, 0u)), _wgslsmith_sub_u32(1u, reverseBits(~var_1.a.x)), u_input.c.x, var_1.a.x), vec4<u32>(15707u, ~(~18453u), _wgslsmith_mod_u32(~0u, ~29818u), select(arg_1.x, 0u & firstTrailingBit(arg_1.x), var_3)));
    return Struct_3(reverseBits(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~u_input.c.www, var_1.a.yyx | var_4.yxz), _wgslsmith_mod_u32(select(var_4.x, 34609u, true), 0u), ~firstLeadingBit(26331u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(805f)) + global2.a.x), false);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = !vec3<bool>(global2.c.x, global4.a.c.x, any(select(vec2<bool>(global2.c.x, global4.a.c.x), !global4.a.c.yz, any(global2.c.zwx))));
    let var_1 = func_5(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.a.x, 101f), global3.a.a.yx))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.a.a.xz, global4.a.a.zz))), ~(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(1u, 23u)], 25282u) << (u_input.c.x % 32u))), ~(~select(~arg_0, u_input.d ^ u_input.d, !vec2<bool>(global4.a.c.x, var_0.x))), Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(551f, global2.a.x, -362f), vec3<f32>(global3.a.a.x, -2100f, global4.a.a.x)), ~global0[_wgslsmith_index_u32(3852u, 30u)] >> (abs(0u) % 32u), !vec4<bool>(false, var_0.x, global2.c.x, false))));
    var var_2 = var_1;
    let var_3 = vec4<i32>(global3.a.b, global2.b, -1i, max(u_input.a.x, ~reverseBits(countOneBits(-23817i))));
    global0 = array<i32, 30>();
    return Struct_2(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(~countOneBits(u_input.c.xw));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1100f, -1278f, 1000f) * vec4<f32>(1014f, global2.a.x, global3.a.a.x, global4.a.a.x))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(-global3.a.a.x), _wgslsmith_f_op_f32(min(global2.a.x, 1000f)))))));
    global3 = func_1(~select(~vec2<u32>(0u, 4294967295u), u_input.d, vec2<bool>(global4.a.c.x, true)));
    let var_1 = select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(1u, 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(1u, 23u)], u_input.d.x, 0u, 1u))) >> (~select(~u_input.c, u_input.c, true) % vec4<u32>(32u)), ~(vec4<u32>(min(u_input.c.x, 7664u), 62627u, global1[_wgslsmith_index_u32(78771u, 23u)], ~u_input.c.x) ^ abs(abs(u_input.c))), vec4<bool>(true, !global4.a.c.x, false, global2.c.x == global4.a.c.x));
    global4 = Struct_2(Struct_1(var_0.yxy, firstLeadingBit(_wgslsmith_mult_i32(global4.a.b, max(global2.b, 0i))), global4.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(select(2147483647i, ~u_input.a.x, false) ^ _wgslsmith_mult_i32(countOneBits(~global3.a.b), global4.a.b), _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, -1i), -2147483647i));
}

