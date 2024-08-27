struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(-1793f + global1.d.x), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-619f, global1.d.x, global1.c.x, global1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, 1000f, global1.d.x, global1.c.x))))))), global1.e);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.b;
    var var_1 = vec3<i32>(-9365i & _wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, arg_1.b.x), 1i), -2147483647i, select(1i, firstTrailingBit(2579i), all(vec4<bool>(true, true, global1.e, var_0.a)))) | abs(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b.x, -20107i, u_input.b.x) & vec3<i32>(1i, 17590i, -2147483647i), ~vec3<i32>(u_input.b.x, 0i, -2147483647i))));
    let var_2 = ~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(_wgslsmith_mult_i32(global1.b.x, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, global1.b.x, 59767i, global1.b.x), vec4<i32>(u_input.b.x, arg_1.b.x, 1i, 1i)), 0i)), vec3<i32>(u_input.b.x, -2147483647i, -_wgslsmith_div_i32(1i, -23426i)));
    global1 = Struct_4(_wgslsmith_f_op_f32(select(arg_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1669f))), true)), (-(~arg_1.b) ^ _wgslsmith_mod_vec2_i32(arg_1.b, ~vec2<i32>(global1.b.x, 36022i))) | vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 20148i, global1.b.x), vec4<i32>(35044i, 20887i, var_2.x, -1i)), -28563i), arg_1.b.x), vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(arg_1.d.x)))), 772f, global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(-1079f + 832f), 465f, -403f, arg_1.d.x), arg_1.e);
    let var_3 = abs(~(~22105i));
    return arg_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    global2 = array<Struct_2, 2>();
    var var_0 = select(-select(u_input.b, u_input.b >> (select(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 28u)]), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 28u)]), vec2<bool>(arg_0.a.a, arg_1.a)) % vec2<u32>(32u)), global1.e), select(u_input.b, ~global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f - -638f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.x - -917f), _wgslsmith_f_op_f32(-arg_2))), ~countOneBits(global1.b.x) < -107893i);
    let var_1 = select(vec2<bool>(arg_1.a, arg_0.b.a), vec2<bool>(arg_0.b.a, global1.e), true);
    global1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))))))));
    return Struct_4(-344f, ~firstTrailingBit(-vec2<i32>(44476i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(global1.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(global1.c)))))))), true);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> vec3<u32> {
    global2 = array<Struct_2, 2>();
    global1 = func_4(Struct_2(Struct_1(global1.e), func_3(vec4<u32>(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15793u, 28u)], 28u)], global0[_wgslsmith_index_u32(u_input.e.x, 28u)]), ~global0[_wgslsmith_index_u32(64910u, 28u)], 1u, ~global0[_wgslsmith_index_u32(1u, 28u)]), func_2(), Struct_2(Struct_1(true), Struct_1(false)))), Struct_1(!(true || global1.e)), arg_1);
    global1 = func_2();
    let var_0 = u_input.b.x;
    global1 = func_2();
    return ~vec3<u32>(~countOneBits(global0[_wgslsmith_index_u32(1u, 28u)]), ~u_input.c, 14831u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(floor(global1.d.x)), 1148f))))));
    var var_1 = Struct_3(-u_input.b.x, func_1(_wgslsmith_mult_vec2_i32((u_input.b | global1.b) & abs(vec2<i32>(23578i, 1i)), abs(global1.b)), _wgslsmith_f_op_f32(select(-2140f, -1137f, !global1.e))), Struct_2(func_3(~_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11032u, 28u)], 28u)], 0u, 0u, 65558u)), func_2(), Struct_2(func_3(vec4<u32>(0u, 4294967295u, 40869u, u_input.e.x), Struct_4(global1.a, u_input.b, global1.c, global1.d, false), Struct_2(Struct_1(true), Struct_1(global1.e))), Struct_1(global1.e))), func_3(abs(~u_input.e), Struct_4(global1.d.x, global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1259f, -1285f, global1.c.x, 124f)), global1.d, true), Struct_2(func_3(vec4<u32>(35773u, u_input.e.x, 5799u, 12622u), Struct_4(422f, u_input.b, global1.d, vec4<f32>(-1733f, var_0.x, var_0.x, 1000f), global1.e), Struct_2(Struct_1(global1.e), Struct_1(global1.e))), func_3(u_input.e, Struct_4(1390f, vec2<i32>(-2147483647i, 48127i), global1.c, global1.d, global1.e), Struct_2(Struct_1(global1.e), Struct_1(false)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(-519f)), var_0.x, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) * var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x + 1113f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(false), Struct_1(var_1.c.a.a)), var_1.c.a, 312f).a + _wgslsmith_div_f32(var_0.x, 102f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, -491f)))), -358f, _wgslsmith_f_op_f32(sign(-2592f)))))));
    var var_3 = var_1.c;
    let var_4 = true;
    var var_5 = all(vec4<bool>(true, !all(vec2<bool>(false, global1.e)) != false, false, 4410i != (~2147483647i | ~u_input.b.x)));
    var var_6 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), 1000f), _wgslsmith_f_op_f32(-func_2().a)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_div_f32(-1886f, var_0.x)), -1828f, all(vec4<bool>(true, var_4, var_3.b.a, true)) && var_1.c.b.a))), vec2<i32>(~global1.b.x << ((_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 27628u) | 0u) % 32u), (select(63479i, u_input.b.x, true) | 0i) | var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_0.x, func_4(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24377u, 1u, var_1.b.x, 21532u), u_input.e), 28u)], 28u)], 2u)], func_3(vec4<u32>(4294967295u, 0u, 7873u, 44475u), Struct_4(-947f, vec2<i32>(-2147483647i, var_1.a), var_2, vec4<f32>(-614f, 1633f, var_2.x, global1.c.x), var_4), Struct_2(var_1.c.a, Struct_1(false))), var_2.x).d.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a, -349f), _wgslsmith_f_op_f32(step(761f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(118f, var_0.x, var_2.x, var_2.x))))), _wgslsmith_f_op_vec4_f32(-global1.d), false);
    let var_7 = _wgslsmith_div_i32(global1.b.x, max(_wgslsmith_mod_i32(_wgslsmith_mult_i32(18434i, 54870i), -global1.b.x) << ((global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 8153u, 81241u, 14133u), vec4<u32>(4294967295u, var_1.b.x, var_1.b.x, u_input.e.x)), 28u)] ^ ~41290u) % 32u), func_2().b.x));
    var var_8 = vec2<f32>(var_6.c.x, _wgslsmith_f_op_f32(-var_6.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_6.d.wy * var_0.xy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_6.a, global1.d.x), vec2<f32>(1137f, var_0.x), false)) + vec2<f32>(-1711f, var_0.x)))), _wgslsmith_mult_vec4_i32(select(-_wgslsmith_div_vec4_i32(vec4<i32>(41332i, var_6.b.x, global1.b.x, 1i), vec4<i32>(global1.b.x, -1i, 0i, -1i)), reverseBits(~vec4<i32>(1i, u_input.b.x, u_input.b.x, var_7)), vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec2<bool>(false, false)), global1.e != global1.e)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-26618i, 1i, -1i, 749i), firstTrailingBit(vec4<i32>(u_input.b.x, var_6.b.x, -1i, var_6.b.x)))), 1220f, 0i, ~var_7);
}

