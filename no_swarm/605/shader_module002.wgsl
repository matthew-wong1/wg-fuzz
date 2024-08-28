struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
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

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 0u);

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(1i, 58484i, 45242i), vec3<i32>(48941i, 35857i, -14856i), vec3<i32>(1i, -42877i, 6776i), vec3<i32>(-38470i, 2171i, 11406i), vec3<i32>(-81995i, 1i, 10334i), vec3<i32>(0i, 24836i, -26400i), vec3<i32>(-1i, -18194i, 1i), vec3<i32>(4316i, -539i, 1i), vec3<i32>(10999i, -24280i, 1i), vec3<i32>(-5784i, 28862i, -1i), vec3<i32>(-1i, -1i, -7704i), vec3<i32>(18682i, i32(-2147483648), -1i), vec3<i32>(-1i, 1i, -65924i), vec3<i32>(-20210i, 71836i, 965i), vec3<i32>(1207i, -4419i, 2147483647i));

var<private> global3: array<bool, 2>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.c.xy;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 122f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1178f, global4.b), vec2<f32>(782f, arg_0.b)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)) + -291f), _wgslsmith_f_op_f32(max(global4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1911f * global4.b))))));
    var var_2 = arg_0.a.x;
    global3 = array<bool, 2>();
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(717f)), global4.b), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), 1672f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-266f - var_1.x)) + _wgslsmith_f_op_f32(-global4.b))));
    return u_input.a.x;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec4<u32> {
    global1 = -16735i;
    global2 = array<vec3<i32>, 15>();
    global1 = _wgslsmith_dot_vec4_i32(~(-select(countOneBits(vec4<i32>(-16022i, u_input.a.x, u_input.a.x, 6141i)), abs(vec4<i32>(2147483647i, u_input.a.x, -47309i, u_input.a.x)), select(vec4<bool>(global4.c.x, global4.c.x, true, global3[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], true, global4.c.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global4.c.x, true, global4.c.x)))), u_input.a);
    var var_0 = max(_wgslsmith_div_i32(2147483647i, -66320i), max(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -_wgslsmith_dot_vec2_i32(u_input.a.xz << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), u_input.a.zz)));
    global1 = u_input.a.x;
    return ~vec4<u32>(1u, min(_wgslsmith_mult_u32(max(global0.x, 1u), ~4294967295u), arg_0.x), 6882u, u_input.d.x);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_sub_i32(-6828i, 61416i), -33074i), -73173i), select(_wgslsmith_sub_vec2_i32(vec2<i32>(func_2(Struct_1(global4.a, 767f, arg_1.zzx)), -u_input.a.x), vec2<i32>(-1i, -2147483647i)), -u_input.e >> ((_wgslsmith_add_vec2_u32(vec2<u32>(26490u, global4.a.x), global0.yy) << (vec2<u32>(global4.a.x, 88876u) % vec2<u32>(32u))) % vec2<u32>(32u)), !vec2<bool>(u_input.a.x > u_input.a.x, !global3[_wgslsmith_index_u32(u_input.c.x, 2u)])));
    let var_1 = var_0;
    let var_2 = Struct_1(func_3(global4.a, global4.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global4.b))))), select(vec3<bool>(true, false, false && (true | arg_1.x)), vec3<bool>(!global3[_wgslsmith_index_u32(4294967295u, 2u)] && !arg_1.x, true || global3[_wgslsmith_index_u32(1u, 2u)], !(true || global3[_wgslsmith_index_u32(global0.x, 2u)])), all(vec3<bool>(all(global4.c), true, select(false, global4.c.x, global3[_wgslsmith_index_u32(4294967295u, 2u)])))));
    var var_3 = ~36626u;
    var var_4 = vec3<u32>(51985u, 17428u, ~_wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, 9006u), func_3(countOneBits(vec4<u32>(0u, 4294967295u, u_input.d.x, 11000u)), 13709u).x));
    return !(~firstTrailingBit(-16582i) < func_2(Struct_1(vec4<u32>(global0.x, 4294967295u, global4.a.x, global4.a.x), _wgslsmith_f_op_f32(-arg_0), vec3<bool>(false, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1883f, global4.b) * vec2<f32>(global4.b, 193f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.b, global4.b)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, -1114f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b), _wgslsmith_f_op_f32(f32(-1f) * -444f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global4.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-113f, global4.b), vec2<f32>(global4.b, global4.b)) - vec2<f32>(global4.b, 261f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1662f, global4.b) - vec2<f32>(global4.b, 283f)))))));
    var var_1 = select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 2u)], all(select(vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 2u)], true, global3[_wgslsmith_index_u32(0u, 2u)], global4.c.x), vec4<bool>(false, true, true, global4.c.x), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global0.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)]))), global4.c.x | true), vec3<bool>(global3[_wgslsmith_index_u32(~global0.x, 2u)] | (global3[_wgslsmith_index_u32(30731u, 2u)] & global3[_wgslsmith_index_u32(35493u, 2u)]), false, _wgslsmith_f_op_f32(round(1251f)) >= _wgslsmith_f_op_f32(global4.b * var_0.x)), vec3<bool>(global4.c.x, global4.c.x, !(!global4.c.x))), vec3<bool>(true, true, func_1(2162f, select(!vec4<bool>(global4.c.x, global3[_wgslsmith_index_u32(18109u, 2u)], global4.c.x, false), !vec4<bool>(global4.c.x, global4.c.x, global4.c.x, false), vec4<bool>(global3[_wgslsmith_index_u32(22249u, 2u)], global4.c.x, true, false)))), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(32861u, 51985u), u_input.d.x, global0.x), 2u)]);
    global2 = array<vec3<i32>, 15>();
    var_1 = !select(vec3<bool>(true, select(any(global4.c), true, true), var_1.x), select(global4.c, !select(global4.c, vec3<bool>(true, false, var_1.x), true), !global4.c), select(!(!vec3<bool>(var_1.x, var_1.x, global4.c.x)), global4.c, var_1.x));
    var_1 = !global4.c;
    global1 = countOneBits(func_2(Struct_1(vec4<u32>(9356u, global0.x, _wgslsmith_div_u32(1u, 4294967295u), 51573u), _wgslsmith_f_op_f32(ceil(895f)), select(vec3<bool>(global4.c.x, global4.c.x, true), !vec3<bool>(var_1.x, false, false), vec3<bool>(false, true, global3[_wgslsmith_index_u32(global0.x, 2u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~0u), _wgslsmith_mod_u32(~(~u_input.d.x), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(global4.a.x, ~global4.a.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1575f, _wgslsmith_f_op_f32(1000f + global4.b)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(550f, var_0.x) - var_0))))));
}

