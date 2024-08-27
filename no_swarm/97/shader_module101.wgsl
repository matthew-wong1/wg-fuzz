struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_2, 32>;

var<private> global3: i32;

var<private> global4: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-13984i, -1i), vec2<i32>(-33342i, 2147483647i), vec2<i32>(44990i, 60534i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(56501i, 1i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 9437i), vec2<i32>(2147483647i, 1i), vec2<i32>(-78070i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 35542i), vec2<i32>(1i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(6863i, 2147483647i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = Struct_1(u_input.e, true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.x, 1656f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.c.x)) + _wgslsmith_f_op_vec2_f32(step(global0.c, vec2<f32>(global0.c.x, global0.c.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), global0.c.x) + _wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(-global0.c))))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, ~2147483647i, _wgslsmith_mult_i32(0i, u_input.e.x)), 8008i), vec2<i32>(global0.a.x, max(reverseBits(u_input.e.x), -29299i))), vec2<bool>(global0.b, any(!vec3<bool>(global0.e.x, global0.e.x, false))));
    global0 = var_0;
    global1 = u_input.b.zzy;
    var var_1 = !vec2<bool>(!global0.e.x, var_0.b & true);
    var_1 = !select(vec2<bool>(!(false || var_1.x), var_0.e.x), global0.e, !global0.e);
    return -(~global0.a.yyy);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)));
    let var_1 = abs(u_input.c.x);
    let var_2 = abs(firstLeadingBit(~arg_1.x));
    let var_3 = ~61244u;
    global3 = u_input.d.x;
    return countOneBits(-_wgslsmith_mult_vec3_i32(abs(global0.a.xzy), func_3(_wgslsmith_dot_vec3_u32(u_input.b.ywx, vec3<u32>(36057u, u_input.b.x, 0u)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(max(func_2(!arg_1.e, vec2<u32>(u_input.a, 58943u) & vec2<u32>(28256u, 53420u), global1.x & u_input.c.x, arg_1), select(vec3<i32>(arg_1.a.x, -2147483647i, arg_1.d.x), vec3<i32>(u_input.e.x, 0i, u_input.d.x), vec3<bool>(global0.b, false, true)) | ~vec3<i32>(u_input.e.x, arg_1.a.x, u_input.e.x)) >> ((firstLeadingBit(~vec3<u32>(4335u, 1u, u_input.c.x)) & vec3<u32>(u_input.a, 1u, global1.x & global1.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_add_vec4_i32(~(vec4<i32>(arg_1.a.x, u_input.e.x, 7214i, arg_0.d.x) ^ global0.a), min(vec4<i32>(global0.a.x, 69093i, 3473i, arg_1.d.x), global0.a) & global0.a), true, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(148f)), _wgslsmith_f_op_f32(select(-198f, arg_1.c.x, arg_0.b))))), global4[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(4294967295u, 32166u)) ^ ((u_input.b.x >> (15977u % 32u)) >> (_wgslsmith_add_u32(27195u, u_input.c.x) % 32u)), 15u)], vec2<bool>(all(select(vec2<bool>(true, global0.e.x), arg_0.e, arg_0.e)), ~global0.d.x <= u_input.e.x)));
    global0 = Struct_1(_wgslsmith_add_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(var_0.b.a, ~vec4<i32>(14288i, 25927i, arg_0.a.x, -2147483647i))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, 23333i, global0.d.x) << (u_input.b % vec4<u32>(32u)), firstTrailingBit(u_input.e)), vec4<i32>(countOneBits(var_0.b.a.x), u_input.e.x | 26719i, 1i, 2147483647i))), any(vec3<bool>(false, true, !(-1i < arg_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1156f, -123f) * vec2<f32>(arg_0.c.x, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(-arg_0.c)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), 539f))), firstLeadingBit(vec2<i32>(func_3(max(0u, u_input.b.x)).x, _wgslsmith_mod_i32(-arg_0.d.x, -var_0.a.x))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f * 1535f)) <= _wgslsmith_f_op_f32(-928f - _wgslsmith_f_op_f32(trunc(arg_1.c.x))), true));
    var var_1 = i32(-1i) * -_wgslsmith_dot_vec2_i32(-global0.a.zw, func_3(u_input.c.x).zy);
    var var_2 = global2[_wgslsmith_index_u32(~countOneBits(reverseBits(~1u)), 32u)];
    global0 = Struct_1(countOneBits(var_0.b.a), -var_2.b.a.x != _wgslsmith_clamp_i32(~func_3(54677u).x, abs(var_0.a.x), _wgslsmith_add_i32(~u_input.e.x, 0i)), vec2<f32>(1123f, -1698f), -(~(~vec2<i32>(-97376i, -1i))), var_2.b.e);
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b ^ (vec4<u32>(0u, global1.x, global1.x, u_input.b.x) & u_input.b), vec4<u32>(global1.x, select(u_input.a, 4294967295u, global0.b), global1.x, ~global1.x)), u_input.b), u_input.b);
    let var_1 = global0.d.x;
    let var_2 = ~max(u_input.d, vec2<i32>(max(select(global0.d.x, 1i, false), -32407i), -(-2147483647i >> (global1.x % 32u))));
    let var_3 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -1i, global0.a.x), vec3<i32>(-2147483647i, 11933i, 77378i)), u_input.e.yyy >> (u_input.b.wzy % vec3<u32>(32u))) << (u_input.b.x % 32u), 4376i, -(_wgslsmith_mult_i32(u_input.d.x, u_input.e.x) ^ _wgslsmith_div_i32(0i, global0.d.x)), 13870i), any(!(!(!global0.e))), global0.c, ~(~global0.d), vec2<bool>(!(!global0.b), !(-535f >= _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(var_2.x, u_input.e.x, -6599i, 27334i), global0.e.x, vec2<f32>(-102f, -1000f), vec2<i32>(u_input.d.x, global0.d.x), vec2<bool>(true, global0.e.x)), Struct_1(vec4<i32>(7702i, 1i, -1i, u_input.d.x), false, vec2<f32>(global0.c.x, global0.c.x), vec2<i32>(var_2.x, -56020i), vec2<bool>(false, global0.e.x)))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1805f))));
    var var_5 = var_3;
    let var_6 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, var_5.c.x, var_5.c.x, global0.c.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1665f, -633f, 1553f, global0.c.x), vec4<f32>(-875f, var_5.c.x, global0.c.x, var_3.c.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_1(var_3, var_3)), _wgslsmith_f_op_f32(-var_5.c.x), var_5.c.x, var_3.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, 982f, var_3.c.x, var_5.c.x)))))));
    var var_7 = global0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(abs(-1i), _wgslsmith_add_i32(var_5.d.x, 1i) >> (var_0.x % 32u), _wgslsmith_clamp_i32(var_2.x, countOneBits(1571i), ~var_2.x)));
}

