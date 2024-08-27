struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35805u;

var<private> global1: vec3<i32>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 59004u);

var<private> global3: array<Struct_1, 30>;

var<private> global4: i32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = 2829u;
    let var_1 = select(_wgslsmith_mod_u32(select(firstTrailingBit(1u), ~1u, false), arg_2.e), arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(557f, -890f)), 197f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_2.a.x)), -371f));
    return select(!(!select(vec3<bool>(arg_2.d, arg_2.d, arg_2.d), select(vec3<bool>(true, arg_2.d, false), vec3<bool>(true, arg_2.d, arg_2.d), vec3<bool>(true, arg_2.d, arg_2.d)), true)), !select(vec3<bool>(true, arg_2.d || arg_2.d, arg_2.d), vec3<bool>(arg_2.d, false, arg_2.d), vec3<bool>(true, false, false)), all(vec4<bool>(false != (true | arg_2.d), true, !any(vec3<bool>(arg_2.d, false, arg_2.d)), true)));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(arg_0.a.x, -662f), arg_0.a.x, arg_0.a.x, -1000f), vec4<i32>(~(-global1.x), 1i, _wgslsmith_div_i32(-1i, countOneBits(-1i)), -32056i), _wgslsmith_dot_vec4_i32(arg_0.b, abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(-23438i, global1.x, arg_0.c, 1i), arg_0.b))), true, countOneBits(u_input.a | arg_0.e));
    var var_1 = true;
    let var_2 = var_0.a.x < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))));
    let var_3 = global3[_wgslsmith_index_u32(var_0.e, 30u)];
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x)));
    return func_3(var_3.e, vec3<f32>(var_0.a.x, 1000f, -504f), arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = 1u;
    global2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, ~var_0, _wgslsmith_mod_u32(32447u, var_0)), vec3<u32>(firstLeadingBit(global2.x), 58211u, max(u_input.b, 0u))), _wgslsmith_add_u32(select(global2.x, 0u, arg_0.x) ^ 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, global2.x, global2.x), vec3<u32>(var_0, 30893u, var_0)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.x, 42662u), vec3<u32>(var_0, 25961u, 17777u))), abs(select(vec2<u32>(global2.x, 68834u), vec2<u32>(62454u, 0u), vec2<bool>(arg_0.x, arg_0.x)))));
    global4 = _wgslsmith_sub_i32(global1.x, global1.x);
    let var_1 = global3[_wgslsmith_index_u32(select(var_0, countOneBits(var_0), arg_0.x), 30u)];
    let var_2 = 142f;
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, -492f, 1000f, 318f), _wgslsmith_f_op_vec4_f32(-var_1.a), all(arg_0))), var_1.a)))), _wgslsmith_mod_vec4_i32(abs(countOneBits(vec4<i32>(-1138i, global1.x, global1.x, arg_1) & var_1.b)), abs(-vec4<i32>(arg_1, 1i, arg_1, -25419i)) << (vec4<u32>(countOneBits(0u), ~66367u, 4294967295u, global2.x) % vec4<u32>(32u))), _wgslsmith_div_i32(i32(-1i) * -abs(42474i), countOneBits(firstLeadingBit(0i))), true, var_1.e);
}

fn func_1() -> bool {
    global4 = 19854i;
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 30u)];
    global0 = 20245u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(190f, -1852f));
    var var_2 = func_4(select(select(func_2(Struct_1(vec4<f32>(var_0.a.x, -502f, 907f, 319f), vec4<i32>(global1.x, global1.x, var_0.c, -1i), 33581i, var_0.d, var_0.e)), vec3<bool>(!var_0.d, var_0.a.x < var_0.a.x, true), !vec3<bool>(true, var_0.d, true)), !(!select(vec3<bool>(false, var_0.d, true), vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(var_0.d, var_0.d, false))), func_3(~var_0.e, vec3<f32>(_wgslsmith_div_f32(-1443f, -100f), _wgslsmith_div_f32(425f, 1746f), _wgslsmith_f_op_f32(round(var_0.a.x))), global3[_wgslsmith_index_u32(abs(4294967295u), 30u)]).x), 4997i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(global1.x), global1.x), _wgslsmith_mult_i32(-global1.x, 78059i >> (u_input.a % 32u))), -2147483647i);
    global3 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_mult_u32(min(~u_input.a, select(_wgslsmith_mod_u32(1u << (1u % 32u), 60530u), 82013u, !func_1())), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global2.x, u_input.b, 1u, global2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(37196u, global2.x, global2.x, u_input.a), vec4<u32>(global2.x, u_input.a, u_input.b, 9156u)), vec4<u32>(1u, 31098u, global2.x, global2.x)), countOneBits(vec4<u32>(global2.x, global2.x, 68990u, global2.x) ^ vec4<u32>(10401u, 4294967295u, 28412u, 31658u))));
    var var_2 = global2.x | _wgslsmith_dot_vec2_u32(vec2<u32>(2127u, 4172u), vec2<u32>(countOneBits(u_input.a), firstLeadingBit(select(u_input.b, global2.x, false))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1296f, 333f, -1000f, 606f) + vec4<f32>(-906f, 967f, -396f, 604f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(3764f, 1714f, -303f, -291f) + vec4<f32>(295f, -1987f, -2393f, 407f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-304f * -1249f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(sign(2771f)), 663f))), min(~_wgslsmith_sub_vec4_i32(vec4<i32>(-42052i, global1.x, global1.x, -12176i), vec4<i32>(global1.x, 1i, global1.x, global1.x)), vec4<i32>(_wgslsmith_div_i32(global1.x, global1.x), ~global1.x, 36184i, reverseBits(-31141i))) << (vec4<u32>(_wgslsmith_add_u32(u_input.b, global2.x), 4294967295u, ~4294967295u, (global2.x & 75814u) >> (8387u % 32u)) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-abs(-71161i), global1.x), _wgslsmith_mod_i32(~(-36998i), min(global1.x, 9864i) & (0i ^ global1.x))), any(!vec2<bool>(true, func_3(u_input.b, vec3<f32>(1517f, 693f, 404f), global3[_wgslsmith_index_u32(0u, 30u)]).x)), ~global2.x);
    let var_4 = _wgslsmith_mult_vec3_i32(-countOneBits((var_3.b.xzy >> (vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u))) ^ -var_3.b.yyw), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), ~global1.x, _wgslsmith_div_i32(global1.x, 2147483647i)), var_3.b.wzw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(725f, var_3.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -951f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.a.x, 821f, var_3.d)) + _wgslsmith_f_op_f32(-var_3.a.x)))));
}

