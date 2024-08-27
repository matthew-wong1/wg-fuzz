struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 15>;

var<private> global3: array<vec3<i32>, 8>;

var<private> global4: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 21528i), vec2<i32>(-10701i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-16509i, -4848i), vec2<i32>(i32(-2147483648), -17637i), vec2<i32>(27203i, i32(-2147483648)), vec2<i32>(29641i, -20896i), vec2<i32>(i32(-2147483648), -52778i), vec2<i32>(-1i, 2147483647i), vec2<i32>(23325i, 28014i), vec2<i32>(1i, 20514i), vec2<i32>(-17646i, i32(-2147483648)), vec2<i32>(1i, 16779i), vec2<i32>(0i, -1i), vec2<i32>(7889i, 10704i), vec2<i32>(106219i, 0i), vec2<i32>(2147483647i, 18749i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    global2 = array<Struct_2, 15>();
    var var_0 = arg_1.x;
    let var_1 = Struct_1(true && (true & all(vec3<bool>(true, true, true))));
    global3 = array<vec3<i32>, 8>();
    global4 = array<vec2<i32>, 20>();
    return Struct_1(var_1.a);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(1699u);
    global0 = select(false | (any(select(vec3<bool>(arg_1.c.a, arg_1.a, false), vec3<bool>(arg_1.c.a, arg_1.c.a, true), arg_1.a)) && false), false, !arg_1.a);
    global4 = array<vec2<i32>, 20>();
    var var_1 = firstTrailingBit(arg_0.zwx);
    let var_2 = vec3<i32>(-arg_1.e.x, firstLeadingBit(0i), 60183i);
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2065f)) + _wgslsmith_f_op_f32(min(408f, 668f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-537f, -1667f, -620f, 1291f), vec4<f32>(173f, 458f, 1000f, 969f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2114f, -1398f, 1728f))), vec4<f32>(1f, 1f, 1f, 1f), any(select(!vec3<bool>(arg_1.a, true, arg_1.c.a), vec3<bool>(arg_1.c.a, arg_1.c.a, true), !vec3<bool>(arg_1.a, false, arg_1.a))))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_5) -> Struct_3 {
    let var_0 = ~vec4<u32>(countOneBits(max(20829u, u_input.a)), ~firstTrailingBit(46372u) << (50859u % 32u), abs(_wgslsmith_add_u32(~u_input.a, max(9612u, 1u))), u_input.a);
    var var_1 = u_input.a | _wgslsmith_mult_u32(1u, 68960u);
    global4 = array<vec2<i32>, 20>();
    global3 = array<vec3<i32>, 8>();
    global4 = array<vec2<i32>, 20>();
    return Struct_3(1u >= select(arg_2.a, _wgslsmith_mod_u32(select(45558u, var_0.x, false), u_input.a), true), global2[_wgslsmith_index_u32(26976u, 15u)], func_3(vec4<u32>(1u, var_0.x, (0u ^ arg_2.a) << (u_input.a % 32u), 28475u), Struct_3((4294967295u >> (var_0.x % 32u)) < reverseBits(1u), global2[_wgslsmith_index_u32(max(u_input.a, ~81248u), 15u)], func_2(2038f, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1000f, arg_1.x, -241f) - vec4<f32>(arg_1.x, arg_1.x, 132f, arg_1.x))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 74335u), 15u)], vec3<i32>(arg_0, 2147483647i, _wgslsmith_add_i32(0i, -7318i)))), global2[_wgslsmith_index_u32(arg_2.a, 15u)], firstTrailingBit(global3[_wgslsmith_index_u32(~min(4294967295u, var_0.x) ^ 0u, 8u)]));
}

fn func_4(arg_0: Struct_3) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-705f)), 756f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-460f)), _wgslsmith_f_op_f32(-1746f * 103f)))) - -606f);
    var var_1 = -max(global1.x, -(firstLeadingBit(2147483647i) & u_input.b.x));
    let var_2 = Struct_5(24013u);
    let var_3 = -1i;
    var_1 = _wgslsmith_sub_i32(reverseBits(i32(-1i) * -17440i), -(~(global1.x << (var_2.a % 32u))));
    return var_2;
}

fn func_5(arg_0: Struct_5) -> vec2<bool> {
    var var_0 = ~u_input.b.x;
    var var_1 = global1.x;
    let var_2 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(~(-vec2<i32>(global1.x, global1.x)) ^ select(select(global4[_wgslsmith_index_u32(1u, 20u)], vec2<i32>(2147483647i, global1.x), false), global1.yx, false)), global1.xx, max(countOneBits(vec2<i32>(_wgslsmith_clamp_i32(global1.x, global1.x, global1.x), _wgslsmith_add_i32(global1.x, -5118i))), _wgslsmith_sub_vec2_i32(u_input.b.wz, vec2<i32>(global1.x >> (4294967295u % 32u), u_input.b.x))));
    let var_3 = global1.x;
    var var_4 = u_input.b.yx;
    return vec2<bool>(!(func_2(628f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -396f, -601f, 196f))).a != false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(~global1.x, vec3<f32>(_wgslsmith_div_f32(852f, -822f), _wgslsmith_f_op_f32(abs(-1000f)), -1000f), Struct_5(u_input.a))));
    let var_1 = !vec4<bool>(func_2(1f, _wgslsmith_f_op_vec4_f32(vec4<f32>(125f, 568f, 1000f, 469f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-318f, 293f, -658f, 1388f) - vec4<f32>(1193f, -1005f, -224f, 1000f)))).a, true, any(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), !var_0.x);
    var var_2 = Struct_1(!(!any(vec3<bool>(false, var_0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1902f, -1605f)))), -301f), max(~(~u_input.a) | u_input.a, u_input.a));
}

