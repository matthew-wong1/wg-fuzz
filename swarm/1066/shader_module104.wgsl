struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_2 = Struct_2(956f, -560f, i32(-2147483648), Struct_1(vec2<f32>(-297f, -876f), -20400i, -1000f, vec2<f32>(156f, 173f), vec3<i32>(i32(-2147483648), 35533i, 74282i)));

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: vec2<u32> = vec2<u32>(67006u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    global2 = array<vec2<f32>, 9>();
    global0 = vec2<bool>(!global0.x, select(!(!(!global0.x)), !global0.x, global0.x && true));
    var var_0 = select(vec4<bool>(global0.x, false, global0.x, global0.x), !select(vec4<bool>(global0.x && false, all(vec4<bool>(global0.x, global0.x, false, global0.x)), true, all(vec4<bool>(true, global0.x, global0.x, global0.x))), vec4<bool>(true, true && global0.x, global0.x, true), vec4<bool>(-29033i != arg_0.x, true, select(false, false, true), global0.x)), any(vec4<bool>(global0.x, true || global0.x, true, global0.x)));
    let var_1 = 1540f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - global1.b) - 1207f) * _wgslsmith_f_op_f32(ceil(global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -227f), !global0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1053f, var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -245f)))) - global1.d.d.x));
    return u_input.b.xyy;
}

fn func_2() -> f32 {
    global3 = vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(u_input.b.yyw) << (u_input.b.yxz % vec3<u32>(32u)), vec3<u32>(26863u, ~u_input.b.x, _wgslsmith_mod_u32(16293u, global3.x)) | func_3(-global1.d.e)), min(~32337u, 1u) << (~u_input.b.x % 32u));
    global3 = _wgslsmith_sub_vec2_u32(u_input.b.zy, ~_wgslsmith_add_vec2_u32(u_input.b.zw >> (u_input.b.wz % vec2<u32>(32u)), vec2<u32>(0u, u_input.b.x))) << (vec2<u32>(~global3.x, global3.x) % vec2<u32>(32u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.c - _wgslsmith_f_op_f32(ceil(313f))));
    global2 = array<vec2<f32>, 9>();
    var var_1 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(58204u, 40070u, 4007u), vec3<u32>(2378u, 28142u, 4294967295u)), abs(_wgslsmith_sub_u32(1u, global3.x))), u_input.b.zx), ~(u_input.b << ((vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))), -275f)), _wgslsmith_div_f32(1f, global1.d.c), global1.c, global1.d));
    return global1.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<vec2<f32>, 9>();
    var var_0 = vec3<i32>(-1i, arg_1.d.e.x << (1u % 32u), min(-40988i, -(~(~u_input.a))));
    let var_1 = -(~abs(_wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(2147483647i, u_input.d))));
    global2 = array<vec2<f32>, 9>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1007f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1227f)) - _wgslsmith_f_op_f32(-816f + -1021f)))), ~4907i, 327f, _wgslsmith_f_op_vec2_f32(global1.d.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1729f, -375f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -160f))))), select(arg_1.d.e, ~global1.d.e, select(vec3<bool>(true, false, any(vec4<bool>(global0.x, arg_0, false, true))), vec3<bool>(true, !global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false))), all(vec3<bool>(arg_0, global0.x, arg_0)))));
    return arg_1.d;
}

fn func_1() -> bool {
    global1 = Struct_2(global1.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1579f + -1000f)))) - _wgslsmith_f_op_f32(-global1.d.d.x)), _wgslsmith_mod_i32(u_input.d, global1.c), func_4(select(true, any(vec2<bool>(global0.x, global0.x)), true), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -977f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_mult_i32(countOneBits(-44723i), ~1i), Struct_1(_wgslsmith_f_op_vec2_f32(global1.d.a - global1.d.d), 1i, _wgslsmith_f_op_f32(select(636f, -1399f, global0.x)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(8198u, 9u)]), ~vec3<i32>(-1i, global1.d.b, -50595i))), _wgslsmith_f_op_vec2_f32(-global1.d.a)));
    let var_0 = ~_wgslsmith_add_u32(1u, u_input.b.x);
    var var_1 = vec3<u32>(var_0, abs(var_0), u_input.b.x);
    return global0.x;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    return Struct_2(967f, arg_1, -_wgslsmith_mod_i32(10886i, u_input.c.x), func_4(4294967295u == firstTrailingBit(_wgslsmith_clamp_u32(1u, 0u, u_input.b.x)), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x * 651f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1188f))), 1i, func_4(all(vec3<bool>(arg_0, false, arg_0)), Struct_2(1537f, -2734f, -34127i, global1.d), global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 9u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(57113u, 9u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1144f, 1152f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, -385f), vec2<f32>(-555f, 776f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global1.d.b, _wgslsmith_dot_vec2_i32(global1.d.e.xx, vec2<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a, -2147483647i)), ~(~global1.d.e.x))), _wgslsmith_add_i32(global1.c, 1i), 1494i);
    global3 = _wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(_wgslsmith_div_u32(4294967295u, global3.x), _wgslsmith_mult_u32(select(~u_input.b.x, _wgslsmith_sub_u32(global3.x, 30729u), true), ~global3.x)));
    var var_1 = func_5(select(true || func_1(), false, global0.x), _wgslsmith_f_op_f32(floor(496f)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3.x, u_input.b.x & ((u_input.b.x & u_input.b.x) ^ countOneBits(82449u))), 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.d.d.x), -943i, global1.d.d.x, _wgslsmith_dot_vec4_i32(var_0, reverseBits((vec4<i32>(global1.d.e.x, 18603i, 8342i, var_1.c) | vec4<i32>(57598i, global1.d.e.x, 0i, 0i)) | -vec4<i32>(var_1.c, -39933i, u_input.c.x, 2147483647i))));
}

