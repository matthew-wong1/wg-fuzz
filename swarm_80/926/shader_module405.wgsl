struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 30>;

var<private> global2: vec3<i32> = vec3<i32>(-10386i, 35634i, 5431i);

var<private> global3: bool;

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true, vec3<i32>(1i, i32(-2147483648), -45883i)), Struct_1(true, vec3<i32>(-33944i, -22546i, -32192i)), Struct_1(true, vec3<i32>(-12262i, 21210i, -1i)), Struct_1(false, vec3<i32>(-12250i, -1i, -23037i)), Struct_1(true, vec3<i32>(0i, -27864i, i32(-2147483648))), Struct_1(true, vec3<i32>(3657i, 27562i, -6384i)), Struct_1(false, vec3<i32>(1i, -47487i, i32(-2147483648))), Struct_1(false, vec3<i32>(1i, 17132i, 32697i)), Struct_1(true, vec3<i32>(1i, 0i, -11696i)), Struct_1(true, vec3<i32>(8264i, 0i, -1i)), Struct_1(true, vec3<i32>(-1i, -4183i, -1i)), Struct_1(false, vec3<i32>(-7495i, -22858i, -1i)), Struct_1(true, vec3<i32>(i32(-2147483648), -74919i, -45016i)), Struct_1(true, vec3<i32>(i32(-2147483648), 46233i, -40155i)), Struct_1(false, vec3<i32>(1i, -1i, -36427i)), Struct_1(true, vec3<i32>(2147483647i, 13316i, -1i)), Struct_1(false, vec3<i32>(0i, 1i, 21674i)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global2 = vec3<i32>(u_input.a, abs(_wgslsmith_clamp_i32(~(u_input.a << (u_input.b.x % 32u)), -(-1i ^ global2.x), arg_0)), -_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(arg_0, 2147483647i))), abs(-vec2<i32>(0i, -9250i))));
    var var_0 = global1[_wgslsmith_index_u32(~(u_input.b.x | (~u_input.b.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 83918u), reverseBits(vec2<u32>(78451u, u_input.b.x))))), 30u)];
    var_0 = Struct_2(var_0.a, vec4<u32>(59907u, 43188u, _wgslsmith_dot_vec3_u32(min(u_input.b, var_0.b.xwx), u_input.b << (var_0.b.wyw % vec3<u32>(32u))), 12303u) << (vec4<u32>(~4294967295u, u_input.b.x, ~34392u, 18638u) % vec4<u32>(32u)), Struct_1(!var_0.c.a, vec3<i32>(_wgslsmith_mult_i32(min(var_0.c.b.x, global2.x), _wgslsmith_dot_vec3_i32(var_0.c.b, var_0.c.b)), _wgslsmith_mult_i32(global2.x, firstTrailingBit(arg_0)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.c.b.x, 1i), -1i & u_input.a, _wgslsmith_mult_i32(var_0.c.b.x, u_input.a)))));
    var var_1 = vec2<i32>((i32(-1i) * -2147483647i) << (var_0.b.x % 32u), global2.x);
    global2 = var_0.c.b;
    return _wgslsmith_sub_vec3_i32(~var_0.c.b ^ ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, -1i, 48647i)), vec3<i32>(global2.x, u_input.a, global2.x)), var_0.c.b >> (var_0.b.yxy % vec3<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    let var_0 = global4[_wgslsmith_index_u32(~4294967295u << (_wgslsmith_dot_vec3_u32(u_input.b, ~(~(u_input.b | u_input.b))) % 32u), 17u)];
    let var_1 = Struct_1(var_0.a, func_3(-30674i));
    var var_2 = Struct_2(arg_1.x, countOneBits((_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 66623u), vec4<u32>(u_input.b.x, 62531u, u_input.b.x, u_input.b.x)) & abs(vec4<u32>(14908u, u_input.b.x, 0u, u_input.b.x))) >> ((vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u) | (vec4<u32>(u_input.b.x, 718u, 63880u, 9520u) >> (vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) <= ~(u_input.b.x ^ u_input.b.x), ~var_1.b));
    var var_3 = _wgslsmith_mult_u32(30216u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(15232u, u_input.b.x, var_2.b.x), _wgslsmith_add_u32(var_2.b.x, u_input.b.x))) | max(firstTrailingBit(1u), _wgslsmith_add_u32(abs(u_input.b.x), var_2.b.x));
    let var_4 = global1[_wgslsmith_index_u32(~(~47230u), 30u)];
    return !vec3<bool>(var_0.a, var_2.c.a, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> bool {
    let var_0 = select(select(select(vec3<bool>(true, true, true), select(func_2(-2564f, vec3<f32>(-1671f, -549f, -170f), vec3<f32>(-458f, 2392f, 351f), u_input.a), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true))), true), vec3<bool>(all(vec2<bool>(true, true)), true, arg_1.x <= u_input.a), func_2(_wgslsmith_f_op_f32(step(-394f, -1976f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(495f, 414f, 1000f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, 875f, 1000f) - vec3<f32>(-319f, -1949f, 3494f)) + vec3<f32>(-1000f, 129f, -718f)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 42099i, -26197i), arg_1), _wgslsmith_div_i32(u_input.a, u_input.a)))), vec3<bool>(true, !select(true, false, true), _wgslsmith_f_op_f32(round(580f)) >= _wgslsmith_f_op_f32(f32(-1f) * -138f)), true);
    let var_1 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, arg_0.x, 80237u)), firstLeadingBit(vec4<u32>(24311u, arg_0.x, u_input.b.x, arg_0.x))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(24949u, 4793u, arg_0.x, 1u)), vec4<u32>(select(34053u, 1u, true), 1u, ~arg_0.x, 0u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(661f, 986f, 1279f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1234f, -364f, 1079f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-134f)), -181f, -1514f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -857f), 266f, _wgslsmith_f_op_f32(floor(407f)))))))));
    let var_3 = ~var_1;
    return !all(func_2(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_vec3_f32(sign(var_2)), _wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(var_2 - var_2)), 12979i).yz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 30>();
    var var_0 = !select(vec4<bool>(!(u_input.b.x <= 813u), any(vec4<bool>(true, true, false, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(u_input.b.x == abs(0u), !(0u < u_input.b.x), all(vec3<bool>(false, false, false)), !any(vec4<bool>(false, true, false, false))));
    var_0 = select(vec4<bool>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1970i, global2.x, global2.x), vec3<i32>(u_input.a, global2.x, global2.x)), ~global2.x) == countOneBits(_wgslsmith_add_i32(u_input.a, 1i)), !var_0.x, true, true), vec4<bool>(true, true, true, all(vec4<bool>(var_0.x, var_0.x, false, false)) | !(var_0.x == false)), !vec4<bool>(var_0.x, func_1(~u_input.b.yy, abs(vec3<i32>(u_input.a, -13178i, -2147483647i))), all(var_0.yz), var_0.x));
    global2 = ~(countOneBits(vec3<i32>(u_input.a, u_input.a | -2147483647i, -39048i)) | func_3(2147483647i));
    let var_1 = min(vec3<u32>(_wgslsmith_mult_u32(55183u, select(abs(72767u), ~u_input.b.x, any(var_0.xww))), reverseBits(u_input.b.x), _wgslsmith_add_u32(41319u, ~(u_input.b.x << (u_input.b.x % 32u)))), vec3<u32>(64533u, u_input.b.x, firstTrailingBit(12431u)));
    global2 = firstTrailingBit(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(min(vec3<i32>(global2.x, 1i, 1i), vec3<i32>(-1i, 2147483647i, global2.x)), vec3<i32>(u_input.a, global2.x, u_input.a) & vec3<i32>(global2.x, u_input.a, -2147483647i)), firstTrailingBit(countOneBits(abs(vec3<i32>(u_input.a, u_input.a, 0i))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(973f, 919f)), -122f, func_2(-1327f, vec3<f32>(-496f, -541f, -799f), vec3<f32>(-311f, 571f, 342f), 2147483647i).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-323f)) + _wgslsmith_div_f32(-835f, -814f)))) + 408f), ~select(vec4<u32>(u_input.b.x, var_1.x, var_1.x, 51235u << (u_input.b.x % 32u)), ~vec4<u32>(u_input.b.x, var_1.x, u_input.b.x, var_1.x), false), global4[_wgslsmith_index_u32(u_input.b.x, 17u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

