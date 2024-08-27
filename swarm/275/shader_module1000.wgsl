struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<bool, 5>;

var<private> global2: vec4<f32> = vec4<f32>(1000f, -1319f, -624f, -145f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<bool, 5>();
    let var_0 = global2.x;
    let var_1 = u_input.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(max(global2.x, global2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), select(!vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(61863u, 5u)])), global1[_wgslsmith_index_u32(67243u, 5u)]), select(!vec4<bool>(global1[_wgslsmith_index_u32(26038u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(2946u, 5u)], global1[_wgslsmith_index_u32(63398u, 5u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)] && false, global1[_wgslsmith_index_u32(u_input.d | u_input.d, 5u)], global2.x == global2.x, global1[_wgslsmith_index_u32(0u, 5u)]), !vec4<bool>(global1[_wgslsmith_index_u32(85581u, 5u)], false, true, true)), true), var_1.x << (_wgslsmith_add_u32(~(u_input.d >> (20749u % 32u)), u_input.b & u_input.b) % 32u), firstLeadingBit(abs(reverseBits(-vec3<i32>(u_input.c, 26625i, var_1.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(642f, _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_2.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f * var_2.a))), global2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.a, 293f), _wgslsmith_f_op_f32(select(var_3.x, 598f, var_2.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1332f)) * _wgslsmith_f_op_f32(1432f * 1107f)))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1648f), vec4<bool>(!(!global1[_wgslsmith_index_u32(u_input.d ^ 1u, 5u)]), true, -1882f <= _wgslsmith_f_op_f32(func_3()), all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 5u)], true, global1[_wgslsmith_index_u32(1u, 5u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], false, false, true), vec4<bool>(true, true, arg_0, global1[_wgslsmith_index_u32(u_input.d, 5u)]), vec4<bool>(arg_0, false, true, false)), all(vec4<bool>(false, arg_0, false, global1[_wgslsmith_index_u32(u_input.d, 5u)]))))), 0i, _wgslsmith_add_vec3_i32(vec3<i32>(~(~(-2147483647i)), u_input.a.x, u_input.a.x), vec3<i32>(~u_input.c & -u_input.e, select(u_input.e | u_input.a.x, -63813i, u_input.e >= -2147483647i), 2147483647i)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), !var_0.b, _wgslsmith_mod_i32(var_0.d.x, ~var_0.d.x), var_0.d);
    let var_2 = Struct_1(firstLeadingBit(-40153i), ~vec3<i32>(_wgslsmith_dot_vec2_i32(~var_1.d.zz, _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(2147483647i, -2147483647i))), 2147483647i, -15418i));
    var var_3 = Struct_1(countOneBits(0i), _wgslsmith_mult_vec3_i32(vec3<i32>(min(var_2.a ^ var_2.b.x, -1i), (i32(-1i) * -15528i) ^ u_input.c, var_0.d.x), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_1.c, 1i, 0i) << (vec3<u32>(u_input.b, 1u, 1u) % vec3<u32>(32u))), min(var_0.d, var_2.b))));
    var var_4 = ~u_input.b;
    return _wgslsmith_f_op_f32(364f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -713f), 864f, arg_0)), -1303f, select(reverseBits(var_3.a) >= (var_1.c ^ 60351i), false, true))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = !(!(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 5u)], true, true), vec3<bool>(global1[_wgslsmith_index_u32(128642u, 5u)], global1[_wgslsmith_index_u32(39060u, 5u)], true), true))));
    return 757f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_vec3_f32(-global2.zww))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_f32(-global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<u32>(~u_input.b, ~(u_input.b | 1u)), ~vec2<u32>(~0u, min(18541u, 86286u)) ^ ~(~vec2<u32>(61100u, u_input.b)), true);
    let var_1 = Struct_1(33472i, -vec3<i32>(-2147483647i >> (_wgslsmith_add_u32(845u, u_input.d) % 32u), u_input.e, _wgslsmith_add_i32(i32(-1i) * -8960i, select(30031i, u_input.c, global1[_wgslsmith_index_u32(12128u, 5u)]))));
    let var_2 = vec4<f32>(global2.x, global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(global2.x * -580f)), global2.x);
    let var_3 = !vec4<bool>(true, !global1[_wgslsmith_index_u32(countOneBits(65537u), 5u)], any(select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 5u)], global1[_wgslsmith_index_u32(u_input.d, 5u)], true, global1[_wgslsmith_index_u32(u_input.d, 5u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(31292u, 5u)], false, global1[_wgslsmith_index_u32(48150u, 5u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 5u)], false, global1[_wgslsmith_index_u32(u_input.b, 5u)], true), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 5u)], false, global1[_wgslsmith_index_u32(u_input.d, 5u)], global1[_wgslsmith_index_u32(35927u, 5u)])), func_1(global2.x, Struct_1(var_1.b.x, vec3<i32>(u_input.c, 13294i, u_input.c))))), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, global2.x))), var_1));
    let var_4 = Struct_2(-1323f, !select(select(!var_3, select(var_3, var_3, var_3), var_3.x), var_3, select(var_3, select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(36467u, 5u)]), false), any(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d, 5u)], var_3.x)))), _wgslsmith_add_i32(_wgslsmith_add_i32(abs(max(-33931i, var_1.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-59866i, var_1.a, -75672i, -1i), -vec4<i32>(var_1.b.x, 34595i, 0i, u_input.e))), ~(i32(-1i) * -var_1.a)), vec3<i32>(_wgslsmith_div_i32(var_1.b.x, _wgslsmith_mod_i32(-110595i, ~44925i)), _wgslsmith_div_i32(min(reverseBits(u_input.a.x), ~var_1.b.x), -_wgslsmith_clamp_i32(-1995i, u_input.a.x, -1i)), _wgslsmith_sub_i32(-(~var_1.b.x), var_1.b.x)));
    var var_5 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-736f, -1i, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_4.c, -1i, var_4.c), var_4.d), var_4.d) ^ ~vec3<i32>(_wgslsmith_mod_i32(var_4.c, var_1.a), var_1.b.x, u_input.c));
}

