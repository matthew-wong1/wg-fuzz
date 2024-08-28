struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(15715u, 37332u, 67224u), vec2<i32>(0i, -1i), vec3<f32>(-275f, -744f, 1000f)));

var<private> global1: vec2<i32> = vec2<i32>(-21882i, -48705i);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, -33896i), vec2<i32>(-60182i, i32(-2147483648)), vec2<i32>(2147483647i, -40206i), vec2<i32>(i32(-2147483648), -49622i), vec2<i32>(1i, 2147483647i), vec2<i32>(4771i, -44209i), vec2<i32>(19366i, 11669i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, -22935i), vec2<i32>(i32(-2147483648), -16328i), vec2<i32>(31156i, 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), -34328i));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<u32>(5708u, 60223u, 42026u), vec2<i32>(0i, -30131i), vec3<f32>(1043f, -869f, -1000f)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_2(global0.a);
    var var_1 = true;
    var var_2 = !(!(!(true || select(global2.x, global2.x, true))));
    global4 = var_0;
    var var_3 = firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.x, 28653i, global0.a.b.x), -vec3<i32>(33819i, -17153i, global0.a.b.x)), min(global1.x, firstTrailingBit(13885i))), 14023i & -reverseBits(global4.a.b.x), ~firstLeadingBit(0i), 2147483647i));
    return vec2<bool>(any(select(!vec2<bool>(true, global2.x), select(vec2<bool>(false, global2.x), vec2<bool>(true, true), global2.x), select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(false, global2.x), vec2<bool>(true, global2.x), global2.x), !vec2<bool>(global2.x, global2.x)))), true);
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    global0 = Struct_2(global0.a);
    global2 = func_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.c.x))));
    var var_0 = Struct_1(arg_0.xyx, global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.x, 0u)), vec2<u32>(0u, global0.a.a.x)), arg_0.x), 16u)], _wgslsmith_f_op_vec3_f32(global0.a.c * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), _wgslsmith_f_op_f32(step(global4.a.c.x, global4.a.c.x)), _wgslsmith_f_op_f32(-global0.a.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.c.x, -352f, 1018f), global4.a.c, true)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.a.c.x, global4.a.c.x, global4.a.c.x))))))));
    let var_1 = ~u_input.c.x;
    var var_2 = arg_0;
    return firstTrailingBit(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 1u), vec2<u32>(arg_0.x, global0.a.a.x)), vec2<u32>(u_input.c.x, 4294967295u) & vec2<u32>(global0.a.a.x, 6818u))), _wgslsmith_dot_vec4_u32(select(~arg_0, arg_0 << (arg_0 % vec4<u32>(32u)), false), ~(~vec4<u32>(4294967295u, var_1, var_2.x, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~(~firstTrailingBit(global4.a.a)), vec3<u32>(~4254u, _wgslsmith_mult_u32(u_input.c.x & 35843u, _wgslsmith_mult_u32(global0.a.a.x, 0u)), 1u)), global3[_wgslsmith_index_u32(~arg_0.a.x, 16u)], arg_1);
    global1 = global0.a.b;
    var_0 = Struct_1(vec3<u32>(select(global4.a.a.x, func_2(vec4<u32>(global0.a.a.x, 1u, 37143u, global0.a.a.x)) & ~34152u, any(vec3<bool>(true, true, true))), max(min(arg_0.a.x, var_0.a.x), u_input.c.x), 4294967295u), vec2<i32>(-4744i, max(var_0.b.x & _wgslsmith_mod_i32(-2147483647i, 2147483647i), max(abs(global4.a.b.x), 0i))), global0.a.c);
    let var_1 = vec3<bool>(true, global2.x, all(select(vec3<bool>(false == global2.x, var_0.b.x < var_0.b.x, true), !(!vec3<bool>(global2.x, true, global2.x)), global2.x)));
    global3 = array<vec2<i32>, 16>();
    return arg_1.zz;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.b, ~(-max(_wgslsmith_add_i32(1361i, 50455i), global4.a.b.x)), 11930i);
    global3 = array<vec2<i32>, 16>();
    global2 = select(!vec2<bool>(global2.x, 4294967295u > _wgslsmith_mult_u32(1u, global0.a.a.x)), func_3(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(~global4.a.a, global0.a.b, _wgslsmith_f_op_vec3_f32(-global0.a.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global4.a.c, global4.a.c) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, -1120f, global4.a.c.x), global0.a.c)))))), true);
    global2 = vec2<bool>(global2.x, true);
    let var_1 = global2.x || global2.x;
    return Struct_1(global4.a.a, firstTrailingBit(global3[_wgslsmith_index_u32(46228u, 16u)]), vec3<f32>(_wgslsmith_f_op_f32(453f * 296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(ceil(1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 16>();
    let var_0 = global0.a.b.x;
    global4 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(global4.a.c.yx + _wgslsmith_f_op_vec2_f32(func_1(global4.a, _wgslsmith_f_op_vec3_f32(-global0.a.c)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.c.x, _wgslsmith_div_f32(-1000f, -299f), _wgslsmith_div_f32(global0.a.c.x, -928f))), _wgslsmith_f_op_f32(global0.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(669f, 1799f))))));
    let var_1 = global2.x;
    var var_2 = global0.a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(global4.a.b.x, 30258i), global4.a.b.x), abs(~u_input.b)), _wgslsmith_f_op_f32(min(global4.a.c.x, _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<u32>(1u, global0.a.a.x, 7410u) >> (u_input.c % vec3<u32>(32u)), ~global3[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_div_vec3_f32(global4.a.c, vec3<f32>(-2542f, global4.a.c.x, -190f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, global4.a.c.x, global4.a.c.x)))).x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(973f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-245f))), 1552f, global0.a.c.x));
}

