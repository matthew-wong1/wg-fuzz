struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<u32, 32>;

var<private> global2: vec2<i32> = vec2<i32>(37328i, 2147483647i);

var<private> global3: vec2<f32>;

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(u_input.c.x, arg_1.b, u_input.a.x, arg_1.d, arg_1.e);
    var var_1 = 54836u;
    global0 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(_wgslsmith_mod_vec2_i32(vec2<i32>(61921i, 2147483647i), vec2<i32>(global2.x, var_0.b.x)) << (select(u_input.a.wz, vec2<u32>(6150u, u_input.e.x), vec2<bool>(true, var_0.d.x)) % vec2<u32>(32u))), arg_1.b), var_0.b.x);
    global0 = var_0.b;
    global1 = array<u32, 32>();
    return vec2<i32>(-55061i, -1i);
}

fn func_2() -> vec2<i32> {
    var var_0 = select(~min(-func_3(vec3<bool>(false, true, true), Struct_1(u_input.c.x, u_input.b.yx, 4108u, vec4<bool>(false, true, true, false), vec4<f32>(global3.x, 766f, global3.x, 240f))), -u_input.b.xy), u_input.b.yx, select(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), any(vec2<bool>(false, true))), vec2<bool>(true, true), true), vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), false), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e.x, 4294967295u), 32u)], vec2<i32>(abs(max(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.yw), u_input.d)), ~(-43016i)), 69956u, select(vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true), false), vec4<f32>(632f, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, 1953f)) + global3.x) - -126f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - global3.x), global3.x))));
    var var_2 = var_1;
    global1 = array<u32, 32>();
    let var_3 = _wgslsmith_mult_u32(0u, var_1.c);
    return vec2<i32>(53078i, 24930i);
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(abs(firstTrailingBit(0u)), func_2(), u_input.c.x, vec4<bool>(true, true, true, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, -347f, -486f, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1077f, -631f, -1253f, global3.x) - vec4<f32>(global3.x, global3.x, 424f, global3.x)), all(vec3<bool>(false, false, true)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, -292f, 1433f), vec4<f32>(-264f, -1165f, 2343f, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1215f, -291f, -1024f) * vec4<f32>(1904f, global3.x, global3.x, global3.x)))))));
    let var_1 = !(!var_0.d.x);
    let var_2 = Struct_1(4294967295u, -vec2<i32>(1i, -1i), ~(~_wgslsmith_mult_u32(var_0.a, firstTrailingBit(u_input.e.x))), !var_0.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, global3.x, -286f, var_0.e.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, 1000f, var_0.e.x))) * _wgslsmith_f_op_vec4_f32(sign(var_0.e))), var_0.e, !vec4<bool>(all(vec3<bool>(var_0.d.x, var_0.d.x, false)), var_1, false, false))));
    let var_3 = var_2;
    var var_4 = var_0.a;
    return select(var_0.d, select(var_0.d, var_3.d, var_1), vec4<bool>(!all(select(var_0.d.yxy, var_0.d.zwz, var_0.d.x)), var_1, true, all(!var_2.d) == true));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<i32>(-14399i, ~min(-1i | -u_input.d, abs(u_input.b.x) ^ ~18558i));
    let var_0 = global0.x;
    let var_1 = func_4(true, Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(abs(0u), 32u)], u_input.a.x), global1[_wgslsmith_index_u32(~105010u, 32u)] << (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], u_input.c.x) % 32u)), vec2<i32>(34511i, u_input.b.x), select(countOneBits(1u), 0u, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), func_1(vec2<i32>(u_input.d, -22147i)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-799f, global3.x, 1250f, global3.x) - vec4<f32>(global3.x, global3.x, -257f, global3.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 282f, global3.x, global3.x)))) - vec4<f32>(464f, _wgslsmith_f_op_f32(-986f + 319f), global3.x, global3.x))), global1[_wgslsmith_index_u32(~abs(0u), 32u)], Struct_1(0u, _wgslsmith_div_vec2_i32(vec2<i32>(max(global0.x, 1i), global0.x), vec2<i32>(global2.x, -1i) << ((vec2<u32>(global1[_wgslsmith_index_u32(51538u, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]) | vec2<u32>(u_input.e.x, 9209u)) % vec2<u32>(32u))), 9752u, !vec4<bool>(true, true, 1789f < global3.x, true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 130f) + vec4<f32>(global3.x, global3.x, 749f, -426f))))))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1572f))))), var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-971f, global3.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-704f)))));
    global4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2.x, u_input.d, _wgslsmith_div_i32(global0.x & ~(-55732i), func_2().x), _wgslsmith_mult_i32(-1i, (global0.x | var_1.b.x) >> (~var_1.c % 32u))), 0u, var_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xy + _wgslsmith_f_op_vec2_f32(exp2(var_1.e.xw)))));
}

