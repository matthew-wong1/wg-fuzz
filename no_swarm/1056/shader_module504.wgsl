struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<i32>(0i, 1i), 4294967295u, false), Struct_1(vec2<i32>(9194i, -1i), 4294967295u, false), Struct_1(vec2<i32>(-23419i, 0i), 26018u, true), Struct_1(vec2<i32>(i32(-2147483648), 36149i), 1u, false), Struct_1(vec2<i32>(-28202i, 29877i), 1u, true), Struct_1(vec2<i32>(-1i, -1i), 49397u, false), Struct_1(vec2<i32>(1i, 29381i), 27267u, true), Struct_1(vec2<i32>(-44935i, 25401i), 4294967295u, false));

var<private> global2: f32;

var<private> global3: array<i32, 21>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(abs(abs(abs(vec2<i32>(-45096i, arg_1.a.x)))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(~arg_1.b, u_input.a), arg_1.b), true);
    var_0 = Struct_1(arg_1.a, 4294967295u, any(vec4<bool>(arg_1.c, arg_1.c, true, arg_0.x > _wgslsmith_f_op_f32(f32(-1f) * -421f))));
    global1 = array<Struct_1, 8>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.b, 8u)];
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-1i), ~(-24179i), 0i, var_1.a.x) & vec4<i32>(var_0.a.x, -17778i, 19063i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_1.b, 21u)] << (38644u % 32u), u_input.b.x, abs(u_input.b.x), arg_1.a.x), -_wgslsmith_div_vec4_i32(vec4<i32>(-53031i, 0i, -2147483647i, u_input.b.x), vec4<i32>(-2147483647i, arg_1.a.x, -21526i, var_1.a.x)))), -38952i);
    return select(vec2<bool>(!any(select(vec2<bool>(true, arg_1.c), vec2<bool>(arg_1.c, var_0.c), vec2<bool>(true, arg_1.c))), (var_2 ^ (0i ^ global3[_wgslsmith_index_u32(49993u, 21u)])) != -abs(0i)), !select(!select(vec2<bool>(var_1.c, false), vec2<bool>(true, false), vec2<bool>(var_0.c, arg_1.c)), select(vec2<bool>(var_1.c, false), vec2<bool>(false, true), vec2<bool>(false, true)), !(!vec2<bool>(false, var_0.c))), vec2<bool>(any(!select(vec4<bool>(var_0.c, true, true, var_1.c), vec4<bool>(var_0.c, false, false, true), var_0.c)), arg_1.c));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = Struct_1(vec2<i32>(arg_3.a.x, u_input.b.x), 35310u, !(true || all(func_3(vec3<f32>(1936f, -1648f, -257f), global1[_wgslsmith_index_u32(u_input.a, 8u)]))));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 8u)];
    global2 = -326f;
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(423f)), _wgslsmith_div_f32(881f, 1237f), _wgslsmith_div_f32(-1301f, 171f)), vec3<f32>(-484f, -218f, -751f))))));
    return func_3(var_3, Struct_1(vec2<i32>(1i, arg_3.a.x), _wgslsmith_sub_u32(~1u, 19530u), all(!vec3<bool>(true, true, arg_1.x)))).x | arg_1.x;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, arg_0 >> (u_input.a % 32u), u_input.a << (0u % 32u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(22771u, u_input.a, arg_0, 2697u), ~vec4<u32>(1u, 1u, u_input.a, 75u))));
    global1 = array<Struct_1, 8>();
    let var_1 = min(vec4<u32>(10341u, firstTrailingBit(_wgslsmith_sub_u32(~var_0, u_input.a)), ~(~4294967295u), _wgslsmith_sub_u32(arg_0, firstLeadingBit(_wgslsmith_mult_u32(54663u, u_input.a)))), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, arg_0), u_input.a, var_0) << (~_wgslsmith_mod_u32(1u, 92466u) % 32u), 118365u, 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-419f, 2020f)))));
    let var_3 = select(_wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.b.yz, vec2<i32>(1i, -1i)), vec2<i32>(~(i32(-1i) * -1i), global3[_wgslsmith_index_u32(var_1.x, 21u)])), u_input.b.xz, true);
    return select(_wgslsmith_add_vec2_i32(var_3 & u_input.b.yy, var_3 << ((~vec2<u32>(0u, u_input.a) & (vec2<u32>(arg_0, 4294967295u) ^ var_1.yx)) % vec2<u32>(32u))), vec2<i32>(~var_3.x, countOneBits(_wgslsmith_div_i32(~14452i, var_3.x))), arg_1.x);
}

fn func_1() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(~1u, 21u)];
    var_0 = u_input.b.x;
    var var_1 = Struct_1(func_4(u_input.a, vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), func_2(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), u_input.a, Struct_1(u_input.b.yz, 4294967295u, true)), true, true | all(vec3<bool>(false, false, true)))), u_input.a, false);
    let var_2 = vec4<u32>(0u, u_input.a << (min(_wgslsmith_clamp_u32(select(u_input.a, var_1.b, var_1.c), u_input.a, 0u << (0u % 32u)), reverseBits(62367u)) % 32u), var_1.b, max(~68689u, _wgslsmith_sub_u32(~(~u_input.a), 29765u)));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-563f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-220f, -439f)) + _wgslsmith_f_op_f32(floor(-260f))), all(vec2<bool>(var_1.c, var_1.c)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1068f, _wgslsmith_f_op_f32(f32(-1f) * -305f))));
    return (_wgslsmith_add_i32(0i, ~(-10802i)) >> (1u % 32u)) << (var_2.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(countOneBits(firstLeadingBit(func_1())), global3[_wgslsmith_index_u32(max(u_input.a, _wgslsmith_div_u32(u_input.a & 25042u, 4294967295u)), 21u)]), u_input.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.zy & u_input.b.xz)) >= 1i);
    let var_1 = vec2<u32>(u_input.a ^ ~_wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.a), u_input.a), ~_wgslsmith_dot_vec3_u32(max(vec3<u32>(var_0.b, var_0.b, 1u), ~vec3<u32>(var_0.b, u_input.a, 7358u)), vec3<u32>(u_input.a | 4294967295u, select(u_input.a, u_input.a, false), 0u)));
    var var_2 = abs(40129u);
    global0 = ~82609u;
    var var_3 = var_1.x;
    var var_4 = global3[_wgslsmith_index_u32(var_1.x, 21u)];
    var var_5 = var_0.b;
    global1 = array<Struct_1, 8>();
    var var_6 = ~var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-237f - -1906f), 572f) * -141f), _wgslsmith_div_f32(1258f, 464f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(329f, -641f)) * 528f))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, 923f, -279f, -499f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1017f, -1213f, 954f, 534f), vec4<f32>(540f, -250f, 718f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(-440f)), 1851f, _wgslsmith_f_op_f32(floor(817f)), 305f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(379f - _wgslsmith_f_op_f32(max(186f, -791f))), -420f, _wgslsmith_f_op_f32(-1f))));
}

