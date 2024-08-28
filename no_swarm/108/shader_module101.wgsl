struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 44243u;

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, !any(vec2<bool>(true, true)), true, !(!all(vec3<bool>(true, false, false))));
    let var_1 = Struct_2(arg_0);
    return Struct_1(select(select(select(select(global1[_wgslsmith_index_u32(arg_3.x, 21u)], vec3<bool>(var_0.x, false, true), var_0.x), select(global1[_wgslsmith_index_u32(76417u, 21u)], global1[_wgslsmith_index_u32(arg_3.x, 21u)], var_0.x), false), vec3<bool>(true, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), var_0.x), vec3<bool>(any(vec4<bool>(true, false, var_0.x, var_0.x)), false, true), global1[_wgslsmith_index_u32(arg_1.x, 21u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_2.x, -4773i >> (arg_3.x % 32u), 1i, min(1i, -9003i)) >> (vec4<u32>(_wgslsmith_mod_u32(arg_3.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 46456u, arg_3.x, 4294967295u), vec4<u32>(arg_1.x, 16073u, 1u, u_input.b)), arg_3.x, ~0u) % vec4<u32>(32u)), reverseBits(~abs(vec4<i32>(-12958i, var_1.a, var_1.a, -1i)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(!global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 6105u), vec4<u32>(u_input.a, 4294967295u, 69670u, u_input.a)), ~u_input.b), 21u)], select(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.a << (u_input.b % 32u), 2798i), reverseBits(~arg_1.a)), min(min(184i, arg_1.a), -1i), false));
    var var_1 = Struct_1(select(vec3<bool>(all(arg_0) && any(vec2<bool>(var_0.a.x, true)), arg_0.x, arg_1.a > -1i), arg_0.zwy, vec3<bool>(any(!vec4<bool>(true, false, var_0.a.x, false)), true, false)), arg_1.a);
    global1 = array<vec3<bool>, 21>();
    let var_2 = select(vec4<bool>((countOneBits(var_0.b) >= ~arg_1.a) | (!arg_0.x || !var_0.a.x), !var_0.a.x, any(select(arg_0.yxx, !arg_0.wwx, select(vec3<bool>(arg_0.x, false, var_1.a.x), vec3<bool>(true, var_0.a.x, false), true))), !all(vec4<bool>(true, var_1.a.x, var_1.a.x, false)) | all(arg_0.zzx)), !vec4<bool>(!any(arg_0), any(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, arg_0.x)), true, any(var_1.a.zx)), all(arg_0));
    var var_3 = vec4<bool>(!(!(!var_1.a.x) & true), false, func_2(arg_1.a, vec3<u32>(_wgslsmith_sub_u32(24801u, 14345u), u_input.b, u_input.a), vec3<i32>(1i, ~var_0.b, 1i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-33137i, -2147483647i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, var_1.b), vec3<i32>(var_0.b, 2147483647i, -39660i))), vec2<u32>(reverseBits(21723u), countOneBits(u_input.a))).a.x, var_1.a.x);
    return ~(-(vec3<i32>(select(1i, 18469i, true), reverseBits(3611i), i32(-1i) * -14310i) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(34455u, u_input.b, u_input.a), vec3<u32>(0u, u_input.b, 4294967295u)) % vec3<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> vec3<u32> {
    let var_0 = arg_2.x;
    let var_1 = Struct_2((i32(-1i) * -arg_2.x) >> (u_input.b % 32u));
    var var_2 = func_2(-2147483647i, (~(~vec3<u32>(u_input.b, 51439u, 4294967295u)) & firstLeadingBit(vec3<u32>(4294967295u, 24542u, u_input.b))) >> (max(abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 56427u), vec3<u32>(0u, 1u, u_input.a))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, u_input.a, 73557u)))) % vec3<u32>(32u)), -(reverseBits(arg_2) & arg_2), countOneBits(~max(vec2<u32>(u_input.a, 5577u) & vec2<u32>(4863u, u_input.b), _wgslsmith_div_vec2_u32(vec2<u32>(63307u, u_input.a), vec2<u32>(u_input.b, u_input.b)))));
    global1 = array<vec3<bool>, 21>();
    var var_3 = _wgslsmith_mult_u32(~max(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 14209u), vec2<u32>(9192u, u_input.b)), abs(countOneBits(u_input.b))), ~(u_input.b ^ 1u));
    return _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_div_u32(u_input.a, min(u_input.b, u_input.b))), u_input.b, 2493u), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37849u), ~vec2<u32>(u_input.a, 41201u)), 1u, _wgslsmith_clamp_u32(0u & u_input.a, u_input.a, firstTrailingBit(0u)))));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(23798i, 35391i, 17077i))), _wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 0i, _wgslsmith_sub_i32(-1i, 22186i)))));
    let var_1 = ~(~_wgslsmith_mult_u32(~(~u_input.b), ~u_input.a | 0u));
    var_0 = func_2(1i, vec3<u32>(var_1, 1u, u_input.b), vec3<i32>(~1i, -select(var_0.b, var_0.b, true), -2147483647i), select(vec2<u32>(1u, ~1u >> ((var_1 | 4294967295u) % 32u)), countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 24916u), vec2<u32>(var_1, var_1))), any(vec4<bool>(var_0.a.x, 35312u < u_input.b, var_0.a.x, select(false, var_0.a.x, true)))));
    let var_2 = _wgslsmith_sub_u32(~u_input.b, ~var_1);
    global0 = _wgslsmith_dot_vec3_u32(func_4(_wgslsmith_f_op_f32(738f + _wgslsmith_div_f32(-1361f, 422f)), 1353f, firstLeadingBit(vec3<i32>(var_0.b, 2147483647i, var_0.b)) & func_3(vec4<bool>(true, false, true, var_0.a.x), Struct_2(var_0.b))), ~(~vec3<u32>(69344u, 1u, 68091u)) >> (vec3<u32>(var_1, 72636u, ~var_2) % vec3<u32>(32u))) ^ reverseBits(_wgslsmith_mod_u32(var_1, ~(~var_1)));
    return vec3<bool>(all(!(!select(vec4<bool>(true, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(false, false, false, true)))), false, min(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1, u_input.a), _wgslsmith_div_u32(37593u, 7577u))) > 34215u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~23453u, 4294967295u);
    var var_1 = _wgslsmith_div_f32(-860f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-473f * 918f))), _wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(trunc(-735f))))));
    var var_2 = Struct_2(firstLeadingBit(min(-2147483647i, ~firstTrailingBit(2114i))));
    var var_3 = Struct_1(!func_1(), ~(_wgslsmith_add_i32(firstTrailingBit(0i), _wgslsmith_sub_i32(11522i, var_2.a)) | abs(-var_2.a)));
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1577f, 1000f)), vec2<f32>(_wgslsmith_f_op_f32(min(532f, 1694f)), _wgslsmith_f_op_f32(round(-442f)))))));
    global1 = array<vec3<bool>, 21>();
    var_0 = ~vec2<u32>(4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 52967u, 4294967295u, var_0.x), ~vec4<u32>(4294967295u, u_input.b, u_input.a, var_0.x))));
    var var_5 = select(select(vec2<bool>(var_3.a.x, true), !(!select(vec2<bool>(var_3.a.x, true), vec2<bool>(var_3.a.x, false), vec2<bool>(false, var_3.a.x))), vec2<bool>(all(var_3.a.xz), !any(vec4<bool>(false, true, false, var_3.a.x)))), vec2<bool>(false, -var_3.b > 29844i), func_1().xy);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec4_i32(vec4<i32>(18191i, var_3.b, var_3.b, var_2.a) & vec4<i32>(var_3.b, 0i, var_3.b, 1i), abs(vec4<i32>(-101748i, var_2.a, var_2.a, var_2.a)) >> ((vec4<u32>(var_0.x, u_input.a, var_0.x, 79992u) | vec4<u32>(var_0.x, 25418u, 4294967295u, var_0.x)) % vec4<u32>(32u))), ~firstLeadingBit(reverseBits(var_3.b))), vec4<i32>(-select(~(-33773i), _wgslsmith_div_i32(13442i, var_2.a), any(vec4<bool>(false, var_5.x, true, var_5.x))), -1431i, 0i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_2.a & var_3.b, 26865i >> (0u % 32u), var_2.a), -2147483647i, ~max(var_3.b, 70429i))), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.x, 4294967295u, u_input.a)), _wgslsmith_div_vec3_u32(~vec3<u32>(34691u, var_0.x, 79630u), vec3<u32>(0u, 49068u, var_0.x))), _wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 0u, var_0.x) & vec3<u32>(75992u, u_input.a, var_0.x)), ~abs(vec3<u32>(1u, 1u, u_input.b)))), _wgslsmith_mult_i32(countOneBits(var_3.b), _wgslsmith_mult_i32(var_2.a ^ var_3.b, func_2(var_3.b, vec3<u32>(u_input.b, u_input.a, var_0.x), vec3<i32>(-1i, -43806i, var_3.b), vec2<u32>(0u, var_0.x)).b & -1i)));
}

