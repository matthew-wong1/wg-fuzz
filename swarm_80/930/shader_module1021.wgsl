struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false));

var<private> global1: array<i32, 30>;

var<private> global2: Struct_4 = Struct_4(Struct_3(124f, Struct_1(-529f)), vec4<f32>(-1747f, 1088f, 431f, 1974f), Struct_3(-2134f, Struct_1(166f)), vec3<i32>(-1i, -51428i, 32120i));

var<private> global3: array<u32, 7> = array<u32, 7>(1u, 22221u, 24177u, 126493u, 19462u, 1u, 1u);

var<private> global4: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1083f, -1000f, 1030f), vec3<f32>(2145f, -1266f, -276f), vec3<f32>(356f, -195f, -1000f), vec3<f32>(937f, -1589f, -1289f), vec3<f32>(-1009f, 1215f, -621f), vec3<f32>(942f, -811f, 2076f), vec3<f32>(388f, 1435f, -1247f), vec3<f32>(1684f, -797f, 324f), vec3<f32>(317f, 1187f, -1455f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707f - arg_2)) * arg_2) * -432f)));
    let var_1 = Struct_4(arg_3, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -277f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))), arg_3.b.a, -413f, -2098f), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1351f)) + _wgslsmith_div_f32(-347f, _wgslsmith_f_op_f32(arg_2 + -1000f))), Struct_1(_wgslsmith_div_f32(arg_3.b.a, 259f))), u_input.a.wzw);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) * _wgslsmith_f_op_f32(select(-1219f, -471f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1865f), _wgslsmith_f_op_f32(f32(-1f) * -1334f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(global2.c.a, _wgslsmith_f_op_f32(-var_1.b.x), any(vec3<bool>(arg_0, false, arg_0)))), var_1.b.x, global2.c.b.a));
    global2 = var_1;
    let var_3 = global2.c;
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_5(global2.c, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.a, _wgslsmith_f_op_f32(439f * 777f), -511f) * _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(~u_input.d, 9u)])), ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)] | u_input.b.x)), u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c.b.a - global2.c.b.a), _wgslsmith_f_op_f32(sign(global2.c.b.a))))), global2.c.b.a)));
    return !(!vec3<bool>(true, func_3(false, 1u, _wgslsmith_f_op_f32(-573f * 406f), global2.a), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = vec2<i32>(global2.d.x, u_input.a.x) & abs(u_input.a.wy);
    global0 = array<vec4<bool>, 12>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(global2.b.zyw)), vec3<f32>(global2.c.b.a, 374f, _wgslsmith_f_op_f32(f32(-1f) * -893f)))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(10391u, firstLeadingBit(8857u) >> (~global3[_wgslsmith_index_u32(31175u, 7u)] % 32u)), _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(105782u, 7u)], 7u)] ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 56290u), vec2<u32>(369u, 1u)), _wgslsmith_sub_u32(~u_input.d, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], u_input.d)))), 7u)]);
    global1 = array<i32, 30>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-818f - _wgslsmith_f_op_f32(select(736f, 1541f, !(980f >= global2.b.x)))) + var_1.a.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global2.a.a, global2.c.a), var_1.a, arg_1.x)), func_2())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, 669f, -633f)))))), 53115u);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_4 {
    global3 = array<u32, 7>();
    var var_0 = vec2<u32>(43961u, global3[_wgslsmith_index_u32(~arg_1.b, 7u)]) & ~vec2<u32>(_wgslsmith_add_u32(29461u, 39443u) ^ u_input.d, 58997u);
    global2 = Struct_4(global2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global2.b))), global2.c, vec3<i32>(max(global2.d.x >> (1u % 32u), 0i), (-34460i ^ _wgslsmith_mod_i32(-60390i, global1[_wgslsmith_index_u32(u_input.d, 30u)])) >> (var_0.x % 32u), _wgslsmith_div_i32(~(global1[_wgslsmith_index_u32(var_0.x, 30u)] ^ -1i), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(28185u, 30u)], 25992i) | _wgslsmith_mod_i32(arg_0.x, arg_0.x))));
    var var_1 = firstLeadingBit(vec3<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, firstLeadingBit(min(global1[_wgslsmith_index_u32(var_0.x, 30u)], global2.d.x))), -arg_0.x));
    var var_2 = Struct_4(global2.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(round(global2.b))) + vec4<f32>(-1505f, _wgslsmith_f_op_f32(-global2.c.a), 1f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(global2.b)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - arg_1.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -2001f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(924f)) * _wgslsmith_f_op_f32(round(-1612f))))), global2.d);
    return Struct_4(var_2.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.x, var_2.c.b.a, var_2.a.a, 471f))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -854f), Struct_1(arg_1.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 1i, _wgslsmith_div_i32(-1i, global2.d.x)), ~vec3<i32>(2147483647i, min(0i, var_1.x), -arg_0.x)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global4 = array<vec3<f32>, 9>();
    global0 = array<vec4<bool>, 12>();
    let var_0 = func_5(vec2<i32>(reverseBits(0i), -39276i) & u_input.a.wz, func_4(!vec2<bool>(!arg_0, arg_0), select(select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, true), func_2()), !(!vec3<bool>(true, arg_0, true)), !select(vec3<bool>(arg_0, true, false), vec3<bool>(false, arg_0, false), arg_0))), vec4<bool>(true, arg_0, !(!arg_0), any(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), false))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(440f * global2.b.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -740f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a * -1348f))), _wgslsmith_f_op_f32(round(var_0.c.a))), 4294967295u);
    var var_2 = select(select(vec4<bool>(true, (arg_0 & arg_0) | true, true, all(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, false, false, arg_0), true))), select(select(select(global0[_wgslsmith_index_u32(u_input.d, 12u)], vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true)), select(global0[_wgslsmith_index_u32(82026u, 12u)], global0[_wgslsmith_index_u32(var_1.b, 12u)], arg_0), arg_0), select(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, true, arg_0, false), arg_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14395u, 20573u), vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49587u, 7u)], 7u)])), 12u)], !arg_0), !(false == arg_0)), select(!(!vec4<bool>(arg_0, true, true, true)), global0[_wgslsmith_index_u32(u_input.b.x, 12u)], !all(vec2<bool>(false, arg_0)))), !(!(!vec4<bool>(arg_0, true, arg_0, arg_0))), global0[_wgslsmith_index_u32(0u, 12u)]);
    return func_5(var_0.d.yx, Struct_2(global4[_wgslsmith_index_u32(~(~0u >> (u_input.d % 32u)), 9u)], ~select(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(1u, var_1.b)), arg_0)), global0[_wgslsmith_index_u32(func_4(func_2().zz, vec3<bool>(arg_0, all(vec4<bool>(true, false, var_2.x, false)), !all(vec2<bool>(true, false)))).b, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(-1042f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = true;
    global1 = array<i32, 30>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(global4[_wgslsmith_index_u32(~(~(~53221u)), 9u)])), 1u);
    let var_3 = false;
    global2 = func_1(var_3);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.a, var_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2155f)), func_1(true).c.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f * global2.c.a)))), 4294967295u);
    global0 = array<vec4<bool>, 12>();
    var var_5 = Struct_5(global2.c, func_4(!vec2<bool>(-277f != var_0.a, all(vec3<bool>(var_3, var_3, false))), func_2()), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b ^ u_input.b, _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 13388u, var_4.b)), countOneBits(u_input.b)) | ~(vec3<u32>(var_2.b, var_2.b, 4294967295u) ^ vec3<u32>(41441u, global3[_wgslsmith_index_u32(u_input.d, 7u)], 1u)), ~countOneBits(u_input.b)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global2.d), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - 2289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b.a.x) - _wgslsmith_f_op_f32(-var_5.d)), -311f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-207f)), _wgslsmith_f_op_f32(abs(var_4.a.x)), func_1(var_3).a.a))));
}

