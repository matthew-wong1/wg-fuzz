struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 32> = array<i32, 32>(52849i, -20713i, -57850i, 2147483647i, 0i, -1i, 10514i, -31824i, 2147483647i, 28668i, -10191i, 31730i, 52575i, 2147483647i, 42679i, -1i, 35081i, -2114i, 51147i, -99164i, 2147483647i, i32(-2147483648), 40743i, 2147483647i, i32(-2147483648), -4755i, 0i, 1i, 1i, 2147483647i, 56159i, -28476i);

var<private> global3: Struct_1 = Struct_1(1953u, vec4<i32>(0i, 2147483647i, 2147483647i, -9285i), 2479f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> vec2<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-846f * _wgslsmith_f_op_f32(global1.x + global1.x)), 292f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), 986f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)) * _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global3.c)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -815f), 421f, global3.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - 1381f))))));
    global3 = Struct_1(~0u, ~(-vec4<i32>(~(-1i), _wgslsmith_dot_vec3_i32(global3.b.wxx, vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(global3.a, 32u)], -22495i)), abs(2147483647i), global2[_wgslsmith_index_u32(~global3.a, 32u)])), global1.x);
    global2 = array<i32, 32>();
    var var_0 = global3.c;
    global2 = array<i32, 32>();
    return u_input.a.xz & vec2<u32>(global3.a, 1u);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec3<bool> {
    global2 = array<i32, 32>();
    global3 = Struct_1(firstLeadingBit(1u), global3.b, 1348f);
    let var_0 = !select(!select(select(vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, false, false, true), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), vec4<bool>(arg_2.x, arg_2.x, true, false), select(vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, true, true), false)), select(!(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), vec4<bool>(true, any(arg_2), global3.b.x >= global2[_wgslsmith_index_u32(47906u, 32u)], arg_2.x), false), true);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1023f, global3.c, arg_0.a) * vec4<f32>(-507f, global3.c, global1.x, global3.c)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * -505f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1546f * global1.x) - global3.c), global3.c, global3.c)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.ww, vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(u_input.d), -3959i), global2[_wgslsmith_index_u32(0u, 32u)])), global2[_wgslsmith_index_u32(~global3.a << (_wgslsmith_div_u32(~(~arg_1.x), firstTrailingBit(~4294967295u)) % 32u), 32u)], _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.b.x, -3017i, u_input.c.x), global3.b) >> (reverseBits(46376u) % 32u), -(~(-14404i))), abs(u_input.c.x));
    return select(var_0.wxz, vec3<bool>(true || var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-146f)))), 926f));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~_wgslsmith_div_u32(4085u, 1u);
    global0 = array<Struct_3, 7>();
    let var_1 = vec2<bool>(true, 24821i != arg_0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)), ~vec2<u32>(38381u, 1u << (u_input.b % 32u)), global1.x);
    let var_3 = all(select(!(!select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false), false)), !vec3<bool>(true, !var_1.x, global1.x <= global3.c), select(!(!vec3<bool>(true, var_1.x, true)), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), false), vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, true, false)), all(func_3(Struct_2(var_2.c, var_2.b, var_2.c), vec3<u32>(global3.a, global3.a, 62885u), var_1)))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global3.c), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(526f))));
    let var_1 = _wgslsmith_f_op_f32(ceil(-648f));
    global1 = vec4<f32>(var_1, global3.c, -1024f, -878f);
    var var_2 = all(vec3<bool>(true, !any(vec3<bool>(false, true, false)), !(global3.b.x > u_input.e))) & !(!any(vec4<bool>(true, true, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), u_input.c))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-828f)), _wgslsmith_f_op_f32(ceil(792f))), var_0.c))));
}

