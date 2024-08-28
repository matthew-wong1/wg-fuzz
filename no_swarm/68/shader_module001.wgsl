struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_mod_i32(-1i, arg_2.x);
    global1 = vec2<bool>(all(!select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), true)), !global1.x);
    var var_1 = Struct_1(abs(reverseBits(var_0)), -338f, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(1604i, arg_2.x)), reverseBits(firstTrailingBit(vec2<i32>(arg_2.x, arg_2.x)))), _wgslsmith_div_vec2_i32(~u_input.a.xz, u_input.a.yz)), arg_1, select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 26u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 26u)], true), vec2<bool>(false, false)), vec2<bool>(global1.x, global1.x), true && global1.x));
    global0 = array<bool, 26>();
    global1 = select(var_1.e, !select(!vec2<bool>(var_1.e.x, global1.x), select(!vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), any(vec4<bool>(global1.x, global1.x, global1.x, false))), arg_3.x != var_1.b), var_1.e);
    return ~4294967295u;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> bool {
    global0 = array<bool, 26>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -948f));
    var var_1 = 1i;
    var var_2 = vec2<u32>(23143u, arg_1.x);
    var var_3 = Struct_5(!(!(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, 1u), 26u)])), vec2<f32>(762f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -577f))), Struct_1(abs(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -308f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-837f, -634f)), -1085f)), -(u_input.a.xx ^ -vec2<i32>(u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, 1u, arg_1.x), vec4<u32>(1u, var_2.x, 27231u, 0u)) << (arg_1.x % 32u), !(!(!vec2<bool>(true, global1.x)))));
    return all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.c.d, func_3(_wgslsmith_f_op_vec2_f32(var_3.b * var_3.b), var_2.x, abs(vec4<i32>(var_3.c.c.x, u_input.a.x, var_3.c.a, u_input.a.x)), vec3<f32>(457f, -415f, var_3.c.b))), 26u)], 0u >= firstTrailingBit(~var_3.c.d), _wgslsmith_mult_i32(firstTrailingBit(33490i), var_3.c.a) != abs(1i)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> f32 {
    var var_0 = select(select(!vec4<bool>(func_2(-1i, arg_1.wyw), true, true, all(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.x, 26u)], false, true))), !select(!vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(101903u, 26u)], false, false), u_input.a.x >= u_input.a.x), true), vec4<bool>(any(vec3<bool>(true, true, !global0[_wgslsmith_index_u32(1u, 26u)])), any(vec3<bool>(select(true, global0[_wgslsmith_index_u32(15619u, 26u)], false), global1.x, global1.x)), all(!(!vec3<bool>(false, global1.x, global0[_wgslsmith_index_u32(arg_1.x, 26u)]))), global0[_wgslsmith_index_u32(8088u >> (((arg_1.x ^ 56155u) | 13127u) % 32u), 26u)]), any(select(vec4<bool>(true, global1.x, true, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(arg_1.x, 26u)], true), true)) & false);
    var var_1 = arg_0;
    let var_2 = abs(~abs(abs(abs(arg_1.zwz))));
    var var_3 = Struct_1(-5021i, _wgslsmith_div_f32(703f, arg_0), select(_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a.x, u_input.a.x), -vec2<i32>(-2147483647i, 10849i)), ~vec2<i32>(~u_input.a.x, -2147483647i), !vec2<bool>(global1.x, true)), ~firstLeadingBit(arg_1.x | 22530u) << (_wgslsmith_mult_u32(~var_2.x | min(var_2.x, arg_1.x), max(1u, reverseBits(72551u))) % 32u), vec2<bool>(_wgslsmith_clamp_i32(-1i, 2147483647i, -2147483647i) != _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, -2147483647i), u_input.a.x | -2147483647i, abs(-1i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.x, 20950u, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, var_2.x, 19627u, var_2.x), vec4<u32>(var_2.x, 13613u, 61360u, var_2.x))), arg_1), 26u)]));
    var var_4 = ~u_input.a;
    return -934f;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_5(arg_0, _wgslsmith_f_op_vec2_f32(-arg_2), Struct_1(_wgslsmith_add_i32(-u_input.a.x, 1i), _wgslsmith_f_op_f32(trunc(arg_2.x)), -vec2<i32>(arg_1, 1i), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(~0u, 10266u)), select(vec2<bool>(!global1.x, true), vec2<bool>(true, any(vec2<bool>(true, true))), func_2(u_input.a.x, ~vec3<u32>(14843u, 1u, 4294967295u)))));
    global0 = array<bool, 26>();
    global1 = !(!(!(!select(var_0.c.e, vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.d, 26u)], false), var_0.c.e))));
    var var_1 = -(-2147483647i ^ max(u_input.a.x, ~(-arg_1)));
    global1 = vec2<bool>(global0[_wgslsmith_index_u32(0u, 26u)], any(select(select(!vec3<bool>(var_0.c.e.x, false, false), select(vec3<bool>(global1.x, var_0.c.e.x, global0[_wgslsmith_index_u32(var_0.c.d, 26u)]), vec3<bool>(arg_0, global0[_wgslsmith_index_u32(12625u, 26u)], var_0.a), var_0.a), true), !(!vec3<bool>(var_0.c.e.x, true, true)), !(!vec3<bool>(var_0.a, true, false)))));
    return Struct_2(Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-621f, 124f))), ~vec2<i32>(~3741i, select(u_input.a.x, 66186i, global0[_wgslsmith_index_u32(var_0.c.d, 26u)])), var_0.c.d, vec2<bool>(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!(~min(4542i, 22646i) != ~_wgslsmith_sub_i32(0i, u_input.a.x)), u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(-509f, 303f), min(vec4<u32>(90262u, 11729u, 1u, 1u), vec4<u32>(1u, 41619u, 20462u, 41788u))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(741f, 848f), vec2<f32>(795f, -478f), vec2<bool>(global1.x, true))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1599f), _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_f_op_f32(abs(var_0.a.b))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, -1000f, -392f, -1780f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-365f, var_0.a.b, var_0.a.b, var_0.a.b)))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.b)), _wgslsmith_f_op_f32(-var_0.a.b), -2071f, var_0.a.b)))));
    let var_2 = Struct_3(-(~select(var_0.a.c.x, u_input.a.x, global0[_wgslsmith_index_u32(var_0.a.d, 26u)]) ^ var_0.a.c.x));
    var var_3 = !vec3<bool>(var_0.a.e.x, global0[_wgslsmith_index_u32(0u, 26u)], true);
    global1 = !vec2<bool>(all(vec3<bool>(false, any(vec2<bool>(var_3.x, true)), all(vec3<bool>(true, var_0.a.e.x, true)))), 18322u < _wgslsmith_sub_u32(func_3(var_1.zy, 9730u, vec4<i32>(var_0.a.a, -87732i, u_input.a.x, 2147483647i), var_1.ywx), 1u));
    var_0 = Struct_2(func_4(true, ~u_input.a.x, _wgslsmith_f_op_vec2_f32(var_1.xx - var_1.wx)).a);
    let var_4 = u_input.a;
    var var_5 = vec4<bool>(false, func_4(true, _wgslsmith_div_i32(-u_input.a.x, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.a.b)))).a.e.x, select(true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.d, 43399u, var_0.a.d, var_0.a.d), vec4<u32>(var_0.a.d, var_0.a.d, 0u, var_0.a.d)) <= var_0.a.d, func_2(_wgslsmith_mod_i32(var_4.x, 2147483647i), vec3<u32>(3876u, 4294967295u, var_0.a.d))) && func_2(-u_input.a.x, countOneBits(select(vec3<u32>(25925u, var_0.a.d, var_0.a.d), vec3<u32>(var_0.a.d, var_0.a.d, var_0.a.d), vec3<bool>(var_0.a.e.x, true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.yz, vec2<i32>(-max(1i, u_input.a.x), ~0i), any(vec4<bool>(true, true | var_3.x, true, var_0.a.e.x))), firstTrailingBit(max(vec3<u32>(select(var_0.a.d, 1190u, false), 4294967295u, firstLeadingBit(var_0.a.d)), ~reverseBits(vec3<u32>(1u, var_0.a.d, 33437u)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-994f, -1540f, _wgslsmith_f_op_f32(-448f * -1000f)), _wgslsmith_f_op_vec3_f32(exp2(var_1.zwx)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.b), var_0.a.b, _wgslsmith_f_op_f32(round(970f))))), var_1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.x))))))));
}

