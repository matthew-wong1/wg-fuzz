struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 12382i, -1i), true, vec2<bool>(true, false));

var<private> global3: array<Struct_1, 11>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -966f);
    var var_1 = _wgslsmith_div_u32(~(~(~u_input.b)), countOneBits(u_input.b));
    var var_2 = u_input.a;
    let var_3 = global4[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(4294967295u, u_input.b ^ u_input.b) | 1u, 40785u, global2.c.x), 24u)];
    var var_4 = ~(~abs(0u));
    return select(var_3.a, _wgslsmith_add_vec3_i32(var_3.a, max(~var_3.a, global2.a)), select(select(select(!vec3<bool>(var_3.c.x, true, false), vec3<bool>(var_3.c.x, false, global2.b), select(vec3<bool>(global2.c.x, false, false), vec3<bool>(global2.b, var_3.c.x, global2.b), var_3.b)), vec3<bool>(var_3.c.x, true | var_3.c.x, true), vec3<bool>(var_3.c.x, select(true, var_3.c.x, var_3.c.x), any(vec2<bool>(var_3.b, false)))), !select(vec3<bool>(false, false, true), !vec3<bool>(false, var_3.c.x, var_3.c.x), false), select(vec3<bool>(any(global2.c), false, select(global2.b, true, true)), vec3<bool>(true, var_3.c.x || true, !var_3.c.x), false)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = u_input.b;
    var var_1 = true;
    var var_2 = !select(!(!select(vec3<bool>(true, false, arg_3.b), vec3<bool>(false, arg_2.c.x, global2.b), vec3<bool>(global2.c.x, arg_2.b, global2.c.x))), !select(select(vec3<bool>(arg_2.b, true, true), vec3<bool>(arg_0, false, false), true), vec3<bool>(false, arg_2.c.x, false), vec3<bool>(true, true, true)), vec3<bool>(arg_3.b && global2.c.x, _wgslsmith_f_op_f32(sign(-863f)) < _wgslsmith_f_op_f32(max(-1647f, 1000f)), false));
    var var_3 = _wgslsmith_f_op_f32(746f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-764f, -237f))) + _wgslsmith_f_op_f32(round(-2035f)))));
    var var_4 = ~1u;
    return -select(vec3<i32>(firstTrailingBit(1i) << (_wgslsmith_sub_u32(7245u, u_input.b) % 32u), arg_2.a.x, ~arg_3.a.x), ~abs(vec3<i32>(2147483647i, arg_3.a.x, -16833i)), vec3<bool>(13626u != max(u_input.b, 1u), all(vec4<bool>(global2.c.x, arg_2.c.x, false, true)), global2.b));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(func_4(!(!(!global2.c.x)), _wgslsmith_dot_vec3_i32(global2.a, _wgslsmith_add_vec3_i32(global2.a & global2.a, vec3<i32>(global2.a.x, u_input.a, global2.a.x))), Struct_1(vec3<i32>(~global2.a.x, -16695i, _wgslsmith_dot_vec2_i32(global0.yy, vec2<i32>(u_input.a, -1i))), true, global2.c), Struct_1(func_3(), false, !vec2<bool>(true, global2.b))), any(select(!vec3<bool>(global2.c.x, global2.b, false), vec3<bool>(global2.b | global2.c.x, global2.b, true), 1u <= _wgslsmith_add_u32(u_input.b, 18159u))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true));
    var var_1 = global4[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1413f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(845f, -112f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(834f, 3419f, false))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, -242f, -354f) - vec3<f32>(1065f, -2482f, -565f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-340f, -295f, 723f), vec3<f32>(2087f, 744f, 171f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(863f, 198f, 683f), vec3<f32>(-769f, 764f, -1000f))))), vec3<bool>(var_0.c.x, false, true))), !(!select(vec3<bool>(var_1.c.x, false, var_1.b), vec3<bool>(true, false, global2.c.x), var_1.b)))));
    return select(!(!var_1.c), vec2<bool>(select(u_input.b, u_input.b, false) >= abs(_wgslsmith_div_u32(u_input.b, u_input.b)), all(!vec4<bool>(var_1.c.x, global2.b, true, var_0.c.x))), select(var_1.c.x, false, global2.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    global4 = array<Struct_1, 24>();
    let var_0 = select(min(vec2<u32>(arg_2, _wgslsmith_div_u32(arg_2, 4294967295u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(12893u, arg_2), vec2<u32>(4294967295u, 4294967295u))) | min(~vec2<u32>(arg_2, arg_2), min(vec2<u32>(arg_2, u_input.b), vec2<u32>(1u, 27900u)) & ~vec2<u32>(12359u, 4294967295u)), ~(~countOneBits(vec2<u32>(u_input.b, 0u)) & ~(~vec2<u32>(14215u, arg_2))), true);
    let var_1 = Struct_1(vec3<i32>(-_wgslsmith_mult_i32(-2147483647i, arg_1.a.x), global2.a.x, ~reverseBits(arg_0.a.x)) & vec3<i32>(-35257i, _wgslsmith_add_i32(2147483647i, _wgslsmith_clamp_i32(-1i, global0.x, global2.a.x)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0.x), global0.zy)), select(true, true, true), select(func_2(), func_2(), all(!(!vec3<bool>(arg_0.c.x, arg_0.b, arg_1.c.x)))));
    global2 = Struct_1(func_4(func_2().x, -9303i, var_1, Struct_1(global2.a, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), vec2<bool>(!arg_1.b, all(vec4<bool>(true, arg_1.c.x, global2.b, false))))), !any(select(!vec3<bool>(arg_1.c.x, global2.c.x, global2.b), !vec3<bool>(false, var_1.b, false), !global2.c.x)), select(!vec2<bool>(arg_0.b, !global2.b), func_2(), !select(select(vec2<bool>(false, true), vec2<bool>(arg_0.c.x, true), var_1.c.x), global2.c, all(vec4<bool>(true, false, true, arg_1.c.x)))));
    let var_2 = _wgslsmith_sub_i32(~2147483647i, u_input.a);
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) * -156f), 1268f, _wgslsmith_f_op_f32(-1396f * _wgslsmith_f_op_f32(-1000f + -446f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1923f, _wgslsmith_f_op_f32(floor(-1196f)), _wgslsmith_f_op_f32(1188f * 1147f)), _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<i32>(global0.x, global2.a.x, global2.a.x), false, global2.c), global4[_wgslsmith_index_u32(u_input.b, 24u)], 4294967295u)), !select(vec3<bool>(global2.b, global2.c.x, global2.c.x), vec3<bool>(false, global2.b, global2.c.x), vec3<bool>(true, global2.c.x, false)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1570f, -1375f, 906f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 2137f) - vec3<f32>(-487f, 1189f, 1818f)))), vec3<f32>(1f, 1f, 1f))));
    let var_1 = global4[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(14874u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(4541u, 0u, 17840u, u_input.b), abs(vec4<u32>(1u, 1u, u_input.b, u_input.b))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.b, 1u, 67915u), max(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, 32526u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, 1u, u_input.b, 0u))))), 11u)];
    var var_3 = -17909i;
    global3 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, abs(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 56746u, u_input.b)) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)))));
}

