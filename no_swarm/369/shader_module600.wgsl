struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(20492i, -12702i, 1384i, -1i, 23993i, -46075i, 1i, -14158i, 0i, 9342i, -60151i, i32(-2147483648), 2147483647i, i32(-2147483648), i32(-2147483648), 11217i, -1i, 0i, -3718i, 1i, 0i, i32(-2147483648), 2147483647i, 2147483647i, -24412i, 39942i, -55834i, -8110i, -45245i, 2147483647i);

var<private> global1: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, false, false));

var<private> global2: Struct_3;

var<private> global3: vec2<f32> = vec2<f32>(-441f, 1709f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = global2.c.d;
    var var_1 = Struct_3(global2.c.b, select(vec2<i32>(-reverseBits(-20992i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(11939i, global0[_wgslsmith_index_u32(arg_0, 30u)]), ~global2.b.x)), _wgslsmith_clamp_vec2_i32(global2.b, _wgslsmith_div_vec2_i32(global2.b << (u_input.b.xy % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, 0i)), min(global2.b, ~vec2<i32>(-1i, u_input.c))), !select(select(vec2<bool>(global2.a, global2.a), vec2<bool>(global2.c.b, true), vec2<bool>(false, global2.a)), !vec2<bool>(true, global2.c.b), !global2.c.b)), Struct_1(true, global2.a, 2147483647i, _wgslsmith_f_op_f32(ceil(1000f))));
    global1 = array<vec4<bool>, 1>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, _wgslsmith_mod_u32(arg_0, arg_0) << (~abs(3328u) % 32u)), u_input.b.yz);
    var var_3 = Struct_4(var_1.c, any(select(!vec3<bool>(global2.c.b, true, var_1.c.b), select(vec3<bool>(global2.c.a, false, global2.a), vec3<bool>(global2.a, true, false), vec3<bool>(false, true, global2.a)), select(vec3<bool>(true, var_1.c.a, true), vec3<bool>(var_1.a, true, var_1.c.a), vec3<bool>(global2.a, global2.c.b, global2.a)))) && var_1.a, Struct_3(!all(vec2<bool>(true, var_1.c.b)), vec2<i32>(firstLeadingBit(firstTrailingBit(var_1.c.c)), -34372i), var_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(select(var_1.c.d, 1132f, global2.c.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.d) + _wgslsmith_f_op_f32(-global2.c.d)))), global2.c.d));
    return global2.c.b & ((14388i > -(~var_1.b.x)) | global2.c.b);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1.c;
    global1 = array<vec4<bool>, 1>();
    let var_1 = arg_1;
    global2 = var_0;
    let var_2 = arg_1.c;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1015f)))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!func_3(4294967295u), Struct_4(arg_0.c, arg_0.c.a, arg_0, var_0.d))));
    var var_2 = vec2<bool>(any(vec3<bool>((arg_1 == arg_1) || all(vec2<bool>(arg_2.b, false)), true, !(!var_0.b))), var_0.a);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.x)), -1000f)))), global2.c.d));
    let var_4 = firstTrailingBit(-3993i) < 23548i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d * arg_0.c.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 164f)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(arg_0, 4294967295u, global2.c)), vec3<f32>(_wgslsmith_f_op_f32(-global2.c.d), _wgslsmith_f_op_f32(func_4(false, Struct_4(arg_0.c, arg_0.c.b, Struct_3(false, arg_0.b, Struct_1(arg_0.c.b, false, 1i, arg_0.c.d)), 1000f))), 1981f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(400f, global3.x, 897f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.d)), arg_0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(arg_0.c.a, arg_0.b, Struct_1(arg_0.a, arg_0.c.a, 1i, -569f)), 1u, Struct_1(arg_0.a, global2.a, u_input.c, global3.x))).x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(false, Struct_4(Struct_1(true, true, 2147483647i, -2218f), global2.c.a, Struct_3(arg_0.a, arg_0.b, global2.c), arg_0.c.d))), -653f, global2.c.d))));
    let var_1 = arg_0.b & -_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(20117i, arg_0.c.c)), (vec2<i32>(-52512i, global2.b.x) | arg_0.b) << (u_input.a.yy % vec2<u32>(32u)));
    let var_2 = ~arg_0.b;
    var var_3 = 40264i;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 500f, -891f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.d, global3.x, 523f) - vec3<f32>(-2091f, -1044f, arg_0.c.d))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -422f, 1000f))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1730f, _wgslsmith_div_f32(global2.c.d, _wgslsmith_f_op_f32(-arg_0.c.d)), _wgslsmith_f_op_f32(func_4(global2.a, Struct_4(Struct_1(true, false, global2.b.x, arg_0.c.d), true, arg_0, global3.x)))))));
    global2 = arg_0;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.d, _wgslsmith_f_op_f32(f32(-1f) * -1667f), _wgslsmith_f_op_f32(-var_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(func_4(global2.a, Struct_4(func_1(arg_0).c, !arg_0.c.a, Struct_3(false, global2.b, arg_0.c), global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f * _wgslsmith_f_op_f32(select(arg_0.c.d, global3.x, arg_0.a))) * global3.x), 1523f));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - arg_0.c.d), global2.c.d, _wgslsmith_f_op_f32(874f - global2.c.d)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1178f), _wgslsmith_f_op_f32(var_0.x * 105f), -2068f))));
    global0 = array<i32, 30>();
    return StorageBuffer(vec3<i32>(~(-76353i), _wgslsmith_dot_vec3_i32(select(arg_1.yxz, arg_1.wyx, true), vec3<i32>(global2.b.x, 0i, arg_1.x)), -8218i) | _wgslsmith_mult_vec3_i32(~countOneBits(arg_1.wzz), -arg_1.xxw), 1000f, firstLeadingBit(12896i), ~firstLeadingBit(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(48913u, arg_2, 69601u), firstLeadingBit(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(Struct_3((global2.b.x != global2.c.c) || global2.c.a, global2.b, global2.c)), abs(~_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -22441i, u_input.c, -18294i)), ~vec4<i32>(10585i, u_input.c, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -46568i))), 0u);
}

