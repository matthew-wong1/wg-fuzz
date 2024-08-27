struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: array<vec4<u32>, 9>;

var<private> global3: array<u32, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = ~(global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(130046u, 4u)], 4u)]), 4u)] & _wgslsmith_dot_vec3_u32(vec3<u32>(65564u, global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40267u, 4u)], 4u)], 76443u), 4u)]), ~abs(vec3<u32>(96021u, global3[_wgslsmith_index_u32(1u, 4u)], 4294967295u))));
    let var_1 = vec3<i32>(reverseBits(-_wgslsmith_div_i32(u_input.a.x, 2147483647i)), reverseBits(u_input.a.x ^ -13570i), max(1i, 1i));
    let var_2 = Struct_3(!(!(!select(vec4<bool>(false, true, arg_0.a, true), vec4<bool>(arg_0.a, false, arg_0.a, true), vec4<bool>(arg_0.b, arg_0.a, true, arg_0.a)))), select(!select(vec3<bool>(false, true, false), select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(false, arg_0.a, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b)), vec3<bool>(arg_0.a, arg_0.a, true)), !vec3<bool>(!arg_0.a, arg_0.a, any(vec3<bool>(true, true, false))), !vec3<bool>(true & arg_0.a, false, true)), 32751u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1092f + -469f), -1279f, all(!(!vec2<bool>(arg_0.a, arg_0.a))))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -756f), abs(firstTrailingBit(vec4<i32>(u_input.a.x, -1i, u_input.a.x, var_1.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, 17882i)))));
    var var_3 = ~abs(var_0);
    return 1702f;
}

fn func_2() -> Struct_4 {
    global2 = array<vec4<u32>, 9>();
    global3 = array<u32, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2208f - 543f), _wgslsmith_f_op_f32(f32(-1f) * -456f))) * _wgslsmith_f_op_f32(func_3(Struct_4(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1095f, 758f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(970f + -1341f) - -188f))));
    return Struct_4(false, false);
}

fn func_1() -> u32 {
    global1 = array<vec2<u32>, 9>();
    global2 = array<vec4<u32>, 9>();
    let var_0 = func_2();
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(895f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(481f, 364f) - _wgslsmith_f_op_f32(f32(-1f) * -847f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(var_0.a, var_0.b))))), false);
    global3 = array<u32, 4>();
    return _wgslsmith_add_u32(~0u, global3[_wgslsmith_index_u32(35281u, 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    let var_1 = countOneBits(vec4<i32>(0i, firstTrailingBit(-2147483647i), u_input.a.x, ~(u_input.a.x << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)] % 32u))) & _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(1i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, -17375i, u_input.a.x), vec4<i32>(50629i, u_input.a.x, -2147483647i, -2147483647i))), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -20157i), vec4<i32>(-51562i, 0i, u_input.a.x, -1i))));
    global3 = array<u32, 4>();
    var var_2 = Struct_2(1f, var_1 << (~select(global2[_wgslsmith_index_u32(~17274u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], vec4<bool>(false, true, true, true)) % vec4<u32>(32u)));
    let var_3 = Struct_1(abs(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(), 4u)], 4u)], 4u)], 9u)], vec4<u32>(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)]), countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54433u, 4u)], 4u)], 4u)]), 57040u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 4u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2375f - _wgslsmith_f_op_f32(ceil(862f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * var_2.a))), 476f, _wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(330f + 1199f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a, var_2.a))))), countOneBits(~vec3<i32>(526i, var_2.b.x, var_2.b.x)) << (~(select(vec3<u32>(60185u, 1u, 9052u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], 4u)], 0u, 4294967295u), vec3<bool>(true, false, false)) >> ((vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33106u, 4u)], 4u)], 4u)], 4u)], 4u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24850u, 4u)], 4u)], 0u) & vec3<u32>(40975u, 17613u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -208f));
    var var_4 = ~_wgslsmith_mod_vec2_i32(var_2.b.xx, vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-8373i, var_2.b.x)), vec2<i32>(-28794i, var_1.x)), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-985f, _wgslsmith_f_op_f32(var_3.b * -199f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d - -1288f), var_2.a)), var_3.c.x);
}

