struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(2685i, 2147483647i), Struct_1(37973i, -14055i), Struct_1(37091i, -1i), Struct_1(-42974i, 0i), Struct_1(-1i, 7055i), Struct_1(-29296i, -25773i), Struct_1(30096i, 1i), Struct_1(1i, 68243i), Struct_1(-36680i, 51664i), Struct_1(-1i, -31282i), Struct_1(-36026i, 13673i), Struct_1(3266i, 59033i), Struct_1(2147483647i, 0i));

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<f32, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 13>();
    let var_0 = Struct_1(arg_0.b, arg_0.b);
    global3 = array<f32, 32>();
    let var_1 = arg_0;
    global0 = global2[_wgslsmith_index_u32(~(~(~(~0u))), 22u)];
    return -countOneBits(1i);
}

fn func_2() -> f32 {
    let var_0 = -vec3<i32>(_wgslsmith_mult_i32(~(~1i), _wgslsmith_div_i32(firstTrailingBit(2757i), -15278i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(10713i, global0.a) | (93314i & global0.b), _wgslsmith_div_i32(global0.b & 3994i, func_3(global2[_wgslsmith_index_u32(u_input.a, 22u)], true))), global0.a);
    let var_1 = select(select(!vec2<bool>(true, all(vec4<bool>(false, true, true, true))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), true), vec2<bool>(true, u_input.b >= 61749u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true)), vec2<bool>(true, false), !vec2<bool>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 32u)]) != -648f, false));
    global3 = array<f32, 32>();
    let var_2 = var_0.x;
    let var_3 = global2[_wgslsmith_index_u32(abs(~22916u), 22u)];
    return global3[_wgslsmith_index_u32(u_input.b, 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0;
    global3 = array<f32, 32>();
    let var_1 = !select(select(!select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(true, arg_2.x, true, true)), select(!vec4<bool>(false, arg_2.x, false, true), select(vec4<bool>(true, false, false, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), vec4<bool>(true, true, true, arg_2.x)), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), select(select(vec4<bool>(true, true, true, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), false), !(!vec4<bool>(true, arg_2.x, arg_2.x, true)), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f * -938f) - _wgslsmith_f_op_f32(sign(-1608f)));
    let var_3 = abs(select(~_wgslsmith_div_vec4_u32(vec4<u32>(1556u, 13412u, u_input.b, u_input.a), vec4<u32>(0u, u_input.b, 1u, 57623u)), abs(~vec4<u32>(39362u, u_input.b, u_input.b, 30074u)), var_1.x) >> (vec4<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.b, 1u)), firstLeadingBit(u_input.a), 19725u) % vec4<u32>(32u)));
    return Struct_1(reverseBits(arg_0.a), abs(~global0.a));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = func_4(Struct_1(~(-1i), -37739i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 290f), vec2<bool>(_wgslsmith_add_i32(-1i, global0.a) < ~arg_0, true));
    return select(!(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true)))), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global2 = array<Struct_1, 22>();
    var var_0 = select(select(vec4<bool>(true, true, true, true), !func_1(~global0.b, global2[_wgslsmith_index_u32(~42345u, 22u)]), global3[_wgslsmith_index_u32(~0u, 32u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 32u)]))), !vec4<bool>(true, any(vec3<bool>(true, true, true)), false, true), false);
    var var_1 = global2[_wgslsmith_index_u32(~51709u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_mult_i32(~0i, ~global0.b), max(-var_1.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.a), vec2<i32>(2147483647i, 30448i)), -vec2<i32>(-2147483647i, var_1.b))), global0.b, 2147483647i), select(u_input.b, 0u, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(68656u, 32u)], -532f, 410f, 1000f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], 664f, -495f)))))))), global3[_wgslsmith_index_u32(~4294967295u, 32u)]);
}

