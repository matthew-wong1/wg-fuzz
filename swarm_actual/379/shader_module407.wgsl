struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-827f, 858f, -591f, -1028f);

var<private> global1: bool = true;

var<private> global2: array<i32, 16> = array<i32, 16>(i32(-2147483648), 0i, 2147483647i, 2147483647i, -29214i, 2147483647i, -9202i, i32(-2147483648), i32(-2147483648), -1i, 39002i, 2147483647i, -6875i, 38869i, 2147483647i, 2147483647i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(step(-1189f, -1201f))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -214f)), _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = Struct_1(-2147483647i, ~1651i | firstTrailingBit(u_input.b.x), firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.c.x, 48450u, 63889u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, 0u, 1u, 4294967295u), arg_0.c))), 1i);
    let var_2 = Struct_4(0u, arg_1.yy, vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~(4294967295u ^ arg_0.c.x)), 16u)], 33694i, var_1.a, _wgslsmith_sub_i32(firstTrailingBit(abs(-12437i)), var_1.a)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 446f)) + -309f)) + global0.x);
    return select(select(!select(arg_1.zxw, !arg_1.yyx, select(arg_1.xzy, vec3<bool>(false, var_2.b.x, arg_1.x), arg_1.x)), select(!arg_1.zwx, select(select(vec3<bool>(true, false, var_2.b.x), arg_1.wwy, vec3<bool>(arg_1.x, false, arg_1.x)), !vec3<bool>(true, var_2.b.x, true), 4294967295u < arg_2.a.x), arg_1.yxw), true), vec3<bool>(_wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(global0.x - global0.x)) == global0.x, arg_1.x, any(select(vec4<bool>(arg_1.x, true, false, true), !vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(var_2.b.x, false, true, false)))), arg_1.wwy);
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, global0.x, global0.x, global0.x), vec4<f32>(-158f, arg_0, 1149f, 236f), vec4<bool>(false, true, true, true))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0, -1181f, false)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global0.x), 1454f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1706f, arg_0, global0.x) + vec4<f32>(arg_0, 1015f, -1897f, global0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1098f, global0.x, 488f, arg_0), vec4<f32>(1245f, arg_0, 782f, global0.x))), true)))));
    global1 = 4294967295u <= u_input.a;
    global1 = any(!(!func_3(Struct_1(0i, -5065i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), -8835i), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(1u, 76199u), u_input.a, vec2<u32>(4294967295u, 4294967295u)))));
    let var_0 = Struct_4(~reverseBits(u_input.a | _wgslsmith_mult_u32(u_input.a, 3830u)), vec2<bool>(true, all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true))), firstTrailingBit(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], 9205i, 1i, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<i32>(global2[_wgslsmith_index_u32(19930u, 16u)], 2147483647i, 0i, -17166i)))));
    let var_1 = _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~1809u, 16u)], u_input.b.x, 1i);
    return Struct_3(max(abs(_wgslsmith_mult_u32(firstTrailingBit(var_0.a), ~u_input.a)), ~1u));
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    global2 = array<i32, 16>();
    var var_0 = !(!vec4<bool>(false, ~34842i == -global2[_wgslsmith_index_u32(arg_0.a, 16u)], true, all(vec2<bool>(true, true))));
    let var_1 = u_input.b.x;
    let var_2 = Struct_4(~(~abs(1u) >> (arg_0.a % 32u)), vec2<bool>(var_0.x, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), select(var_0.wz, vec2<bool>(var_0.x, var_0.x), var_0.x)))), _wgslsmith_mult_vec4_i32(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(arg_0.a, 16u)], global2[_wgslsmith_index_u32(59146u, 16u)], 1i, -42295i), vec4<i32>(1i, u_input.b.x, -2147483647i, 0i))), vec4<i32>(min(global2[_wgslsmith_index_u32(reverseBits(arg_0.a), 16u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], u_input.b.x, -7350i, u_input.b.x), vec4<i32>(var_1, global2[_wgslsmith_index_u32(23084u, 16u)], var_1, 2147483647i))), -max(global2[_wgslsmith_index_u32(u_input.a, 16u)], 36399i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.a, 28190u), vec3<u32>(u_input.a, 25961u, u_input.a)), 16u)] << ((u_input.a >> (4294967295u % 32u)) % 32u), -31439i)));
    let var_3 = Struct_4(13434u, func_3(Struct_1(var_1, -var_1, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.a, u_input.a, var_2.a), vec4<u32>(76194u, arg_0.a, 0u, u_input.a))), var_1), select(select(select(vec4<bool>(var_0.x, var_0.x, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, true, false, false), false), !vec4<bool>(true, false, var_2.b.x, var_0.x), select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, false), vec4<bool>(var_0.x, var_0.x, false, false), false)), vec4<bool>(!var_0.x, false, true, all(vec3<bool>(true, var_2.b.x, false))), !(!var_2.b.x)), Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(u_input.a, var_2.a))), var_2.a, ~vec2<u32>(u_input.a, arg_0.a) ^ abs(vec2<u32>(27762u, 28390u)))).zz, var_2.c);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(357f + -334f)), _wgslsmith_f_op_f32(max(global0.x, -1182f)), _wgslsmith_f_op_f32(select(global0.x, -300f, var_2.b.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1714f, 1036f, 1305f), vec4<f32>(global0.x, 568f, global0.x, -964f))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(984f, -488f, global0.x, global0.x), vec4<f32>(1000f, 277f, -367f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 414f, 1094f, global0.x))), arg_0.a < arg_0.a))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(696f, 907f, global0.x, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2, _wgslsmith_f_op_vec4_f32(arg_2 * arg_2)) + arg_2)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(370f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(func_2(-706f)))))));
    let var_0 = -(~arg_0.c);
    var var_1 = ~reverseBits(vec3<u32>(36205u, 4294967295u | (4294967295u << (arg_1.a % 32u)), ~0u));
    global1 = arg_0.b.x;
    var var_2 = -arg_0.c.x;
    return vec4<i32>(~countOneBits(firstLeadingBit(u_input.b.x >> (u_input.a % 32u))), max(var_0.x, var_0.x), select(~u_input.b.x & arg_0.c.x, -(~0i), false) << (_wgslsmith_sub_u32(41852u, _wgslsmith_dot_vec3_u32(vec3<u32>(95699u, arg_1.a, arg_0.a), vec3<u32>(arg_0.a, arg_1.a, 86313u)) << (53919u % 32u)) % 32u), global2[_wgslsmith_index_u32(~(14085u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, arg_0.a, 0u), vec4<u32>(4294967295u, var_1.x, 42222u, arg_1.a)) % 32u)), 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~min(~reverseBits(~vec3<u32>(u_input.a, u_input.a, u_input.a)), ~vec3<u32>(abs(0u), u_input.a, u_input.a << (u_input.a % 32u)));
    let var_1 = u_input.b.x;
    let var_2 = ~select(abs(~vec4<i32>(u_input.b.x, 0i, 2147483647i, global2[_wgslsmith_index_u32(0u, 16u)]) | func_1(Struct_4(u_input.a, vec2<bool>(true, false), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 16u)], 27930i, 2147483647i, u_input.b.x)), Struct_3(16951u), vec4<f32>(-623f, global0.x, global0.x, -1071f))), abs(vec4<i32>(global2[_wgslsmith_index_u32(47177u, 16u)], u_input.b.x, _wgslsmith_mod_i32(var_1, var_1), 2147483647i >> (u_input.a % 32u))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.x, 9014u, 0u)), abs(vec3<u32>(var_0.x, 10210u, 1u))) > ~_wgslsmith_add_u32(var_0.x, 4294967295u));
    var var_3 = Struct_1(1i, var_1, ~reverseBits(select(~vec4<u32>(17681u, u_input.a, 0u, 6271u), ~vec4<u32>(u_input.a, 9049u, 1u, 0u), vec4<bool>(false, false, false, false))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.x, (u_input.b.x & var_1) & _wgslsmith_mod_i32(var_1, var_2.x)), var_2.x & u_input.b.x));
    let var_4 = Struct_2(_wgslsmith_clamp_vec2_u32(min(_wgslsmith_add_vec2_u32(var_3.c.wz, var_3.c.yw), _wgslsmith_div_vec2_u32(vec2<u32>(50350u, var_0.x), var_3.c.xy)), var_0.yx, var_3.c.xz | var_3.c.yw), 0u, var_0.zy);
    var_3 = Struct_1(var_1, reverseBits(abs(~(-105i >> (u_input.a % 32u)))), max((vec4<u32>(u_input.a, u_input.a, var_3.c.x, 81631u) & var_3.c) << ((vec4<u32>(0u, 1u, 72802u, 90459u) << (var_3.c % vec4<u32>(32u))) % vec4<u32>(32u)), max(var_3.c, ~(~vec4<u32>(var_0.x, var_3.c.x, 0u, var_4.b)))), ~var_1 ^ -1i);
    var var_5 = select(select(!func_3(Struct_1(2429i, var_1, vec4<u32>(1574u, u_input.a, var_4.c.x, u_input.a), 10147i), vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(10448u, var_4.a.x), 18673u, var_3.c.yy)), vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), any(vec3<bool>(true, false, true)), any(vec3<bool>(false, false, true)) || all(vec2<bool>(false, false))), !(u_input.a >= 0u) || (-1653f <= _wgslsmith_f_op_f32(exp2(global0.x)))), vec3<bool>((_wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(f32(-1f) * -840f)) || all(vec2<bool>(true, true)), false, true), false);
    var var_6 = vec4<bool>(var_5.x, true, all(!func_3(Struct_1(-2147483647i, 2147483647i, vec4<u32>(var_0.x, u_input.a, var_3.c.x, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 16u)]), !vec4<bool>(true, var_5.x, true, false), Struct_2(vec2<u32>(var_0.x, var_0.x), var_0.x, vec2<u32>(10170u, u_input.a)))), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2372f + global0.x), _wgslsmith_f_op_f32(abs(-697f)), _wgslsmith_div_f32(-993f, global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(757f, global0.x, global0.x) + vec3<f32>(1000f, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(global0.wyw + vec3<f32>(global0.x, global0.x, global0.x)))))));
}

