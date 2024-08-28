struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_3, 16>;

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(335f + -2056f), _wgslsmith_f_op_f32(285f - -852f), _wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(floor(1698f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-1889f, 951f, -360f, 868f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1253f, -2072f, 850f, 1502f))))));
    let var_1 = vec3<i32>(-u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(24999i, u_input.c), countOneBits(-21772i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -44727i), vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(4218u, 22158u) % vec2<u32>(32u)))), countOneBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(-8758i, -65570i, u_input.c, u_input.c), ~vec4<i32>(u_input.c, 0i, 41368i, -2147483647i)))), u_input.c);
    let var_2 = ~u_input.a & u_input.a;
    let var_3 = _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -(var_1 << (vec3<u32>(4294967295u, 0u, 14644u) % vec3<u32>(32u)))), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.c), vec4<i32>(1i, -2147483647i, var_1.x, u_input.c) & vec4<i32>(10421i, u_input.c, -36699i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x, -6231i, u_input.c) ^ (vec4<i32>(1i, -2147483647i, 2147483647i, 11910i) >> (u_input.b % vec4<u32>(32u))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, 1i), vec4<i32>(-22635i, 2147483647i, u_input.c, 2147483647i)), vec4<i32>(var_1.x, 2147483647i, u_input.c, 2147483647i))), ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, var_1.x, u_input.c), vec4<i32>(var_1.x, u_input.c, -1i, u_input.c)), ~var_1.x, true)));
    return var_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<Struct_2, 23>();
    var var_0 = Struct_3(func_3(4294967295u), Struct_1(vec4<f32>(238f, arg_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1883f, arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(ceil(-886f)))), vec3<bool>(true, true, true));
    let var_1 = vec2<bool>(false, true);
    let var_2 = global0[_wgslsmith_index_u32(~global2.x, 23u)];
    var_0 = global3[_wgslsmith_index_u32(global2.x, 16u)];
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_2.a.wxw, var_0.b.a.zzz))));
}

fn func_1(arg_0: u32) -> i32 {
    global4 = _wgslsmith_add_u32(78073u, u_input.a);
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<f32>(-1502f, 418f, 887f, 1498f), -1i), 5007u, global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-684f, 418f, 891f) * vec3<f32>(1177f, 882f, -1000f))) + _wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<f32>(-1166f, 1000f, 283f, 163f), -2147483647i), ~10284u, global0[_wgslsmith_index_u32(1u, 23u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(530f, -1000f, 583f)))));
    let var_2 = u_input.c;
    var var_3 = global1[_wgslsmith_index_u32(18532u & global2.x, 18u)];
    return _wgslsmith_add_i32(2147483647i, u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)))), arg_0.a.x))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_1, arg_1), -min(~arg_1, 1i)));
    var var_2 = !select(!vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, select(true, true, true), any(vec3<bool>(true, false, false))), !vec3<bool>(all(vec2<bool>(true, false)), true, true));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1504f + 887f) - _wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<f32>(1000f, -548f, 1297f, -358f), 0i), 0u, global0[_wgslsmith_index_u32(global2.x, 23u)])).x))));
    var var_3 = global3[_wgslsmith_index_u32(u_input.a, 16u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.b.a.x - _wgslsmith_f_op_f32(-var_3.b.a.x)), _wgslsmith_f_op_f32(-var_3.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!((u_input.c << (~3456u % 32u)) > (i32(-1i) * -u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(43746u, 18u)], func_1(~0u) << (~u_input.a % 32u))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-284f)) - _wgslsmith_f_op_vec3_f32(func_2(global0[_wgslsmith_index_u32(1u, 23u)], 1u, global0[_wgslsmith_index_u32(u_input.a, 23u)])).x)) + -493f));
    let var_2 = vec2<f32>(1f, 1f);
    var_0 = true;
    global0 = array<Struct_2, 23>();
    global4 = _wgslsmith_dot_vec3_u32(u_input.b.xyx & u_input.b.yzx, abs(vec3<u32>(~firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(46816u, u_input.a) | (u_input.a << (u_input.a % 32u)), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(global2.x, 8186u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_f32(step(-392f, _wgslsmith_div_f32(var_2.x, var_2.x))))), ~abs(~min(vec3<i32>(-1i, -1i, -76557i), vec3<i32>(2147483647i, u_input.c, -1i))), _wgslsmith_div_i32(~(u_input.c << (_wgslsmith_div_u32(global2.x, 7111u) % 32u)), -39756i | max(-1i, u_input.c)), u_input.a);
}

