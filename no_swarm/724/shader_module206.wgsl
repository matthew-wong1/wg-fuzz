struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3440i;

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: vec2<i32> = vec2<i32>(-50898i, -33500i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: vec3<i32>) -> vec2<bool> {
    global2 = arg_3.zy;
    global2 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, -1i) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<i32>(1i, 1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(global2.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(arg_2, arg_2, 34120u)) % 32u), -3512i), vec2<i32>(1i, ~min(arg_3.x, 31383i))), arg_3.zy);
    let var_0 = arg_0;
    return select(select(vec2<bool>(var_0.c.x, arg_0.c.x), select(var_0.c, select(!vec2<bool>(true, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(arg_0.c.x, true)), arg_0.c), true), var_0.c, select(arg_0.c, arg_0.c, vec2<bool>(true, true)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f * -2035f) + 1727f)), -276f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -161f)))), -1549f)));
    global2 = ~(_wgslsmith_mod_vec2_i32(-(vec2<i32>(-2147483647i, global2.x) | vec2<i32>(74843i, global2.x)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(75867u, 4294967295u, arg_0), vec3<u32>(4294967295u, 68736u, 55161u)), firstTrailingBit(63184u)), 25u)]) | global1[_wgslsmith_index_u32(min(92012u, reverseBits(arg_0 ^ arg_0)), 25u)]);
    let var_2 = Struct_1(min(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.x, global2.x), vec3<i32>(32735i, u_input.a, u_input.a))), arg_1.a), ~(-arg_1.a)), 2147483647i, arg_1.c);
    var var_3 = var_2;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_div_vec2_f32(var_0, var_0)), var_0, !var_2.c.x))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(~40299u ^ select(~1u, _wgslsmith_clamp_u32(1u, 85230u, _wgslsmith_dot_vec2_u32(vec2<u32>(8127u, 4421u), vec2<u32>(12497u, 62889u))), any(vec2<bool>(true, true))), Struct_1(_wgslsmith_sub_i32(-(1i & u_input.a), u_input.a), u_input.a, !func_3(Struct_1(global2.x, u_input.a, vec2<bool>(true, false)), global2.x, 1u, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global2.x, 2147483647i), vec3<i32>(6196i, 2147483647i, global2.x), vec3<i32>(-1i, global2.x, u_input.a))))));
    global0 = abs(-2147483647i);
    let var_1 = var_0.x;
    global0 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(5594u, Struct_1(15182i, u_input.a << (18728u % 32u), func_3(Struct_1(global2.x, -2147483647i, vec2<bool>(false, true)), global2.x, 1u, vec3<i32>(global2.x, u_input.a, 12765i))))).x)));
    return global2.x;
}

fn func_1() -> i32 {
    global2 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var var_0 = 21895u;
    let var_1 = u_input.a >= ~(func_2() ^ _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global2.x), global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(9240u, 25u)]), ~vec2<i32>(global2.x, global2.x)));
    let var_2 = !(!var_1);
    let var_3 = select(max(select(abs(vec2<i32>(u_input.a, 2147483647i) | global1[_wgslsmith_index_u32(52410u, 25u)]), global1[_wgslsmith_index_u32(0u, 25u)], !var_1), vec2<i32>(global2.x, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(8887i, global2.x), -global1[_wgslsmith_index_u32(firstTrailingBit(26957u), 25u)] & ~abs(global1[_wgslsmith_index_u32(7606u, 25u)])), var_1);
    return -reverseBits(var_3.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(max(u_input.a, arg_2) | global2.x, -(countOneBits(arg_0.x) ^ firstTrailingBit(_wgslsmith_clamp_i32(-1i, global2.x, u_input.a))), select(!func_3(Struct_1(arg_2, 24201i, vec2<bool>(true, false)), arg_0.x, _wgslsmith_sub_u32(2517u, 1u), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, arg_0.x, 1i), vec3<i32>(global2.x, arg_0.x, u_input.a))), select(vec2<bool>(true, false), vec2<bool>(true, any(vec2<bool>(false, false))), any(vec3<bool>(true, true, true))), true));
    var_0 = Struct_1(_wgslsmith_clamp_i32(1i, arg_2, var_0.b), -2147483647i, vec2<bool>(true | all(select(vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<bool>(false, var_0.c.x, var_0.c.x))), !(!var_0.c.x)));
    var var_1 = Struct_1(-7000i, select(min(~(-51115i), abs(abs(global2.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -u_input.a, reverseBits(global2.x), var_0.a), vec4<i32>(var_0.a, _wgslsmith_mult_i32(0i, arg_2), -arg_2, 1i)), true), select(var_0.c, var_0.c, all(select(!vec4<bool>(true, true, var_0.c.x, var_0.c.x), !vec4<bool>(var_0.c.x, false, var_0.c.x, true), all(vec4<bool>(true, var_0.c.x, var_0.c.x, true))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-537f, 438f))), 1f, 496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(679f)), _wgslsmith_f_op_f32(-430f - 127f))) * _wgslsmith_f_op_f32(min(-673f, _wgslsmith_f_op_f32(-362f + 1012f)))))));
    var var_3 = Struct_1(u_input.a, max(arg_2 ^ -32822i, ~var_1.a), !select(var_1.c, var_0.c, select(var_1.c, select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_1.c.x, false), var_0.c), var_0.c)));
    return Struct_1(_wgslsmith_add_i32(29728i, max(~(~var_1.a), 0i)), func_1(), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 25>();
    let var_0 = -firstLeadingBit(~vec3<i32>(~u_input.a, u_input.a, 2469i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2566f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1008f + -1291f))))), -160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f)) + -1742f));
    let var_2 = func_5(~max(vec2<i32>(u_input.a, var_0.x), -vec2<i32>(var_0.x, 37812i)) | (vec2<i32>(-1i) * -vec2<i32>(var_0.x, -1i)), _wgslsmith_add_u32(4294967295u ^ (_wgslsmith_clamp_u32(44924u, 0u, 26203u) >> (40767u % 32u)), reverseBits(abs(1u))), func_1());
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1879f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -122f) * 1237f))));
    let var_4 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, var_0.x), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(32360u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), var_0.x, min(-61813i, 1i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2.x, 4741i, var_2.a, var_0.x)), vec4<i32>(var_2.a, -2147483647i, var_2.b, -28815i))), -vec4<i32>(45842i, -2147483647i ^ global2.x, abs(0i), select(-1i, global2.x, var_2.c.x)));
    let var_5 = -1619f;
    global0 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(~(~vec4<u32>(70682u, 0u, 30691u, 0u)), firstTrailingBit(vec4<u32>(31990u, 4294967295u, 13968u, 0u))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(50622u, 39033u, 15802u, 22112u)), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_vec2_f32(vec2<f32>(-530f, -1000f), var_1.xy), ~vec2<u32>(64066u, 28976u));
}

