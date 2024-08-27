struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_3(reverseBits(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_1 = any(vec2<bool>((1i << (var_0.a.x % 32u)) <= u_input.b, any(vec2<bool>(true, true)))) || true;
    var var_2 = u_input.b;
    var var_3 = abs(-50012i);
    return vec3<i32>(_wgslsmith_sub_i32(abs(u_input.a.x), u_input.a.x), u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, -2147483647i), u_input.a.x));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = 24004u;
    var var_1 = _wgslsmith_sub_vec3_i32(-u_input.a, _wgslsmith_clamp_vec3_i32(func_3(), -u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, reverseBits(vec3<i32>(-1i, u_input.b, u_input.a.x))) >> (max(~arg_0, vec3<u32>(78107u, var_0, 71452u)) % vec3<u32>(32u))));
    var var_2 = vec4<bool>(all(vec2<bool>(!(u_input.b <= 8238i), all(vec3<bool>(true, global2.x, false)))), any(vec4<bool>(true, global2.x, global2.x, true)), global2.x, true);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(~1u, var_0), firstLeadingBit(arg_0.x)), _wgslsmith_mult_u32(~countOneBits(var_0), arg_0.x)), 21u)];
    global1 = array<Struct_1, 21>();
    return Struct_2(!(!(37219u <= (arg_0.x & arg_0.x))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.b, u_input.b), var_1.x), vec2<i32>(~var_3.a.x, -7054i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(125f, 1542f) + vec2<f32>(-1253f, -1991f))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1524f)), -140f)), -1000f)), global1[_wgslsmith_index_u32(var_0, 21u)]);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    global2 = select(vec2<bool>(false, any(select(select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), true), select(vec3<bool>(true, true, arg_1.a), vec3<bool>(true, false, false), vec3<bool>(true, global2.x, false)), true))), !vec2<bool>(true, arg_1.a), any(vec2<bool>(false, arg_1.a)));
    var var_0 = u_input.a;
    var var_1 = u_input.a | u_input.a;
    let var_2 = arg_0.x ^ 4294967295u;
    var_1 = ~firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.a ^ vec3<i32>(2147483647i, u_input.b, var_0.x), u_input.a, ~u_input.a)));
    return Struct_3(~firstTrailingBit(~vec4<u32>(arg_0.x, 25837u, 31511u, 1u) | reverseBits(vec4<u32>(25576u, 24467u, arg_0.x, 1u))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(303f, 1328f))) - -1076f), _wgslsmith_div_f32(-1807f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-990f, 310f))))));
    global1 = array<Struct_1, 21>();
    var var_1 = func_4(~firstTrailingBit(~vec3<u32>(1u, 1u, 5317u)), func_2(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(56480u, 33145u), vec2<u32>(19358u, 5630u))), max(_wgslsmith_mult_u32(1u, 70599u), ~10198u), ~1u)));
    let var_2 = -734f;
    let var_3 = func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(~var_1.a.x, var_1.a.x ^ var_1.a.x, ~var_1.a.x), vec3<u32>(firstLeadingBit(var_1.a.x | 1u), ~(~31235u), ~var_1.a.x)));
    return -7308i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(select(!global2.x, global2.x, false && global2.x), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f * -1419f) + _wgslsmith_f_op_f32(ceil(1042f))) >= _wgslsmith_f_op_f32(abs(1357f))));
    let var_0 = min(func_1(global2.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 62351u), ~36730u), 40797u), 21u)], u_input.a.x), -2147483647i);
    let var_1 = select(!select(vec3<bool>(true, true, true), select(!vec3<bool>(false, global2.x, false), vec3<bool>(false, true, false), global2.x | global2.x), vec3<bool>(true, select(true, true, global2.x), global2.x)), select(!select(select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, true, global2.x), false), vec3<bool>(false, true, global2.x), !global2.x), !(!vec3<bool>(false, true, global2.x)), select(!vec3<bool>(false, global2.x, global2.x), select(vec3<bool>(false, global2.x, global2.x), !vec3<bool>(global2.x, global2.x, true), true), false)), vec3<bool>(true, select(any(!vec4<bool>(global2.x, false, global2.x, global2.x)), true, global2.x), global2.x));
    global0 = -989f;
    var var_2 = func_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(23254u, 36497u), firstLeadingBit(20454u)), 1u, reverseBits(1u)) ^ vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(43546u, 1u, 4294967295u), 1u), _wgslsmith_add_u32(abs(1u), firstTrailingBit(16636u)), func_4(vec3<u32>(100937u, 4294967295u, 72443u), Struct_2(true, var_0, vec2<f32>(1220f, 771f), Struct_1(vec2<i32>(u_input.b, -94018i)))).a.x));
    let var_3 = 99028u;
    let var_4 = vec2<bool>(false, var_2.a);
    global0 = 345f;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, var_2.c.x) * -819f) - _wgslsmith_f_op_f32(-func_2(vec3<u32>(38169u, 0u, 0u)).c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-803f, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.c.x, 856f, -224f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, var_2.c.x, -551f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, -1587f, -1373f))))), _wgslsmith_clamp_vec2_u32(countOneBits(~vec2<u32>(29048u, var_3) << (_wgslsmith_add_vec2_u32(vec2<u32>(var_3, var_3), vec2<u32>(var_3, 1u)) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(49027u, var_3), vec2<u32>(52143u, 31962u)) | abs(vec2<u32>(0u, var_3))), vec2<u32>(1u, firstLeadingBit(_wgslsmith_mult_u32(98000u, var_3)))), -var_2.d.a.x);
}

