struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<u32, 19>;

var<private> global2: array<Struct_4, 1>;

var<private> global3: array<u32, 30> = array<u32, 30>(4294967295u, 44449u, 55019u, 0u, 1u, 6294u, 0u, 11060u, 4294967295u, 27806u, 31115u, 54226u, 1u, 1u, 35037u, 40467u, 1u, 4294967295u, 1u, 17484u, 8274u, 56070u, 32101u, 72647u, 1u, 4294967295u, 63281u, 45583u, 12859u, 20022u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = vec2<u32>(firstTrailingBit(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 68293u), vec2<u32>(4294967295u, 46623u)))), 26849u);
    return -(~(i32(-1i) * -24907i));
}

fn func_2() -> u32 {
    global1 = array<u32, 19>();
    let var_0 = func_3(~_wgslsmith_div_vec2_i32(select(u_input.a, vec2<i32>(-30177i, 3535i), false), ~u_input.a)) | -2147483647i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1185f, -110f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -989f), vec2<f32>(1000f, 460f)))), vec2<f32>(-1150f, 179f))), any(vec4<bool>(select(true, true, true), any(vec4<bool>(false, false, true, true)), true, true)), false));
    let var_2 = ~(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6519u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78489u, 19u)], 30u)], 19u)], 30u)], 30u)], 30u)] % 32u), 19u)], 19u)], 35987u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50767u, 30u)], 19u)])) << (abs(~(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], 1u))) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.a.x)) * 1175f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-786f + _wgslsmith_div_f32(var_1.a.a.x, 1040f)) + 1134f)) - _wgslsmith_f_op_f32(-462f * 2316f));
    return global3[_wgslsmith_index_u32(countOneBits(var_2.x), 30u)];
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(690f)))), arg_0)));
    var var_1 = vec3<bool>(true, false, true);
    var_1 = vec3<bool>(!all(vec3<bool>(any(vec4<bool>(var_1.x, false, false, true)), true, var_1.x)), true, any(!select(vec4<bool>(false, var_1.x, var_1.x, true), !vec4<bool>(true, true, var_1.x, false), any(vec4<bool>(var_1.x, false, true, false)))));
    global1 = array<u32, 19>();
    let var_2 = Struct_1(vec2<f32>(var_0.x, -1392f), var_1.x, true);
    return var_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 18>();
    let var_0 = global2[_wgslsmith_index_u32(18348u, 1u)];
    global3 = array<u32, 30>();
    global2 = array<Struct_4, 1>();
    let var_1 = Struct_4(reverseBits(var_0.a), select(vec4<bool>(arg_2.b, !arg_0.x | (-232f != arg_2.a.x), (var_0.c >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63306u, 30u)], 30u)] % 32u)) <= _wgslsmith_add_i32(u_input.a.x, 24321i), arg_0.x), arg_0, !(!(!arg_1.x))), var_0.a.x);
    return Struct_2(func_4(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(step(254f, 1f))), vec4<u32>(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]) << (abs(global1[_wgslsmith_index_u32(70505u, 19u)]) % 32u), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 30u)], 30u)], 1u), ~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29837u, 19u)], 30u)] | global3[_wgslsmith_index_u32(31796u, 30u)], 19u)], 6502u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: i32) -> vec2<f32> {
    global3 = array<u32, 30>();
    var var_0 = ~countOneBits(arg_1.x);
    var_0 = arg_1.x;
    let var_1 = func_5(vec4<bool>(any(vec4<bool>(arg_0.x, true, true, true)) && all(arg_0), true == ((arg_1.x | 52486u) < 79497u), arg_0.x, true), !select(vec4<bool>(true, !arg_0.x, arg_0.x || arg_0.x, arg_0.x && false), select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, true)), arg_0.x), arg_0.x | false), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1094f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(588f, -684f)))), vec4<u32>(func_2(), 15715u, _wgslsmith_mod_u32(arg_1.x, arg_1.x) ^ reverseBits(0u), 60280u)));
    var var_2 = firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(-19822i, arg_2.x ^ arg_3, -62062i), -(~(vec3<i32>(1i, arg_3, arg_2.x) >> (vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(71677u, 30u)], 30u)], 30u)], 19u)], global3[_wgslsmith_index_u32(0u, 30u)]) % vec3<u32>(32u))))));
    return _wgslsmith_f_op_vec2_f32(round(var_1.a.a));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 44643i, -1i), vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x)), _wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_add_i32(-6849i, u_input.a.x)), ~(~6031i), u_input.a.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -3418i))) & firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)));
    let var_1 = ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(10990u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 19u)], 0u), select(~vec3<u32>(7108u, 1u, 4294967295u), ~vec3<u32>(0u, 5038u, 1u), !vec3<bool>(arg_2.b, true, arg_2.b))));
    global3 = array<u32, 30>();
    var var_2 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(_wgslsmith_mod_i32(~28182i, u_input.a.x & -41476i), -2147483647i, -3567i << (global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~12441u, 30u)], 19u)] % 32u)), _wgslsmith_mult_vec3_i32(~var_0.yww >> (vec3<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 19u)], 30u)], 19u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 19u)], 30u)], 19u)], 19u)], 30059u) % vec3<u32>(32u)), -(vec3<i32>(-11537i, var_0.x, -30575i) & var_0.ywx))), vec3<i32>(max(countOneBits(0i), ~var_0.x), 2147483647i, -2614i));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1402f) * vec2<f32>(arg_2.a.x, 644f))))), func_5(vec4<bool>(true, all(vec3<bool>(false, true, false)), arg_2.c, false), !select(vec4<bool>(true, arg_2.b, true, true), vec4<bool>(arg_2.b, true, true, true), vec4<bool>(arg_2.c, arg_2.b, arg_2.b, false)), func_5(select(vec4<bool>(arg_2.c, false, arg_2.b, true), vec4<bool>(arg_2.c, true, arg_2.b, arg_2.b), arg_2.c), !vec4<bool>(true, true, true, arg_2.b), func_5(vec4<bool>(arg_2.b, true, false, false), vec4<bool>(arg_2.b, false, arg_2.c, true), arg_2).a).a).a.a), false, true);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-666f, _wgslsmith_f_op_f32(func_4(arg_2.a.x, vec4<u32>(47644u, global1[_wgslsmith_index_u32(var_1.x, 19u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])).a.x - arg_1.a.x), !arg_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1837f) - _wgslsmith_f_op_f32(abs(arg_1.a.x))))), -1337f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(502f, 788f, true)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f + -1296f))), ~min(global3[_wgslsmith_index_u32(0u, 30u)], 16486u) <= firstTrailingBit(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(38690u, 30u)], global1[_wgslsmith_index_u32(0u, 19u)])), true));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a)), false, -(~(~u_input.a.x)) >= -u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_1.a, vec2<f32>(var_1.a.x, -719f))), vec2<f32>(var_1.a.x, var_0.a.a.x), vec2<bool>(var_0.a.c, var_1.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, var_0.a.a) + var_1.a))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(!vec3<bool>(true, var_0.a.b, true), vec2<u32>(38718u, 29771u), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), u_input.a.x)))), func_5(vec4<bool>(var_0.a.c | var_1.b, select(var_1.c, true, true) & (false && var_0.a.b), all(vec2<bool>(false, var_1.b)), false), !(!vec4<bool>(var_0.a.c, var_1.c, false, true)), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-366f, 438f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(239f, var_0.a.a.x)))), !all(vec2<bool>(var_0.a.b, true)), false)).a));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-287f, -1754f), _wgslsmith_div_f32(var_1.a.x, 796f))), func_5(vec4<bool>(true, false & var_1.c, any(vec3<bool>(var_0.a.c, true, var_0.a.b)), true), vec4<bool>(!var_1.c, false, !var_0.a.c, all(vec3<bool>(var_1.c, var_1.c, var_0.a.c))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_2.x)), !var_0.a.b, any(vec3<bool>(true, var_0.a.c, var_1.c)))).a.b, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19338u, 30u)], 30u)], 19u)], 19u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12662u, 19u)], 19u)], 37817u), vec3<u32>(4294967295u, 0u, 1u))), 19u)] > 1u));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1254f, _wgslsmith_f_op_f32(-1000f * var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.a.x + -1819f)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -435f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.x))), -1544f))));
    let var_5 = ~(-abs(select(u_input.a, u_input.a, true)) & (vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.x, var_4.x, var_3.a.a.x, -769f), vec4<f32>(738f, var_0.a.a.x, -1151f, 1000f))) * vec4<f32>(var_3.a.a.x, 838f, var_4.x, var_3.a.a.x))) - vec4<f32>(-936f, _wgslsmith_f_op_f32(-func_5(vec4<bool>(var_0.a.c, true, var_1.b, false), vec4<bool>(true, var_3.a.c, var_1.c, var_3.a.c), var_0.a).a.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1859f)))), 1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_4)) + _wgslsmith_f_op_vec3_f32(ceil(var_4))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4 * vec3<f32>(-363f, var_2.x, 435f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1938f, _wgslsmith_div_f32(var_2.x, var_0.a.a.x), var_3.a.a.x)))));
}

