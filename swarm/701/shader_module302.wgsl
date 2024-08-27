struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: f32 = -671f;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<bool>(true, true, true, false), vec3<i32>(0i, 0i, 32979i)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(-24200i, -15514i, 6126i)), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(-13041i, -1i, 0i)), Struct_2(vec4<bool>(false, false, false, false), vec3<i32>(2147483647i, 2147483647i, 90539i)), Struct_2(vec4<bool>(true, false, false, true), vec3<i32>(3617i, 31319i, -7891i)), Struct_2(vec4<bool>(true, true, false, true), vec3<i32>(-23256i, 1i, i32(-2147483648))), Struct_2(vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), 1i, 36036i)), Struct_2(vec4<bool>(false, false, false, true), vec3<i32>(-32367i, 66823i, 2486i)), Struct_2(vec4<bool>(false, false, true, true), vec3<i32>(-1i, 9582i, 0i)), Struct_2(vec4<bool>(false, true, true, true), vec3<i32>(-9736i, -1i, -1i)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(i32(-2147483648), 0i, 0i)), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(85246i, 1i, 48777i)), Struct_2(vec4<bool>(false, true, false, true), vec3<i32>(1i, 18929i, -52367i)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(-21674i, 13710i, -1i)), Struct_2(vec4<bool>(false, false, true, true), vec3<i32>(-1i, 47461i, -1i)), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(-3396i, 30019i, -51116i)), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(-1i, 0i, -14381i)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(-1i, -43751i, 1i)), Struct_2(vec4<bool>(false, true, true, false), vec3<i32>(-1i, -1986i, 20558i)), Struct_2(vec4<bool>(true, true, true, true), vec3<i32>(-26486i, i32(-2147483648), 34954i)), Struct_2(vec4<bool>(false, true, false, false), vec3<i32>(88477i, 1i, -41245i)), Struct_2(vec4<bool>(true, false, true, false), vec3<i32>(21567i, -5374i, 0i)), Struct_2(vec4<bool>(true, true, false, true), vec3<i32>(i32(-2147483648), -30371i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, true, false), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_2(vec4<bool>(true, true, false, true), vec3<i32>(0i, 0i, 2147483647i)));

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(594f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, -1121f))) + arg_0.a)), arg_0.b);
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_div_i32(0i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-4980i, u_input.b, -52962i), vec3<i32>(u_input.b, u_input.a, 2147483647i)) << (var_0.b.x % 32u)) | -19397i;
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~var_0.b.x, arg_0.b.x), arg_0.b.x, _wgslsmith_sub_u32(4294967295u, 25903u) ^ ~arg_0.b.x) & _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.b.zyx, vec3<u32>(71651u, 30997u, arg_0.b.x)), arg_0.b.x, abs(arg_0.b.x)), firstLeadingBit(vec3<u32>(arg_0.b.x, 147u, var_0.b.x))), vec3<u32>(abs(_wgslsmith_div_u32(0u, min(var_0.b.x, 64641u))), var_0.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.b.x, var_0.b.x, 64103u)), _wgslsmith_div_vec3_u32(arg_0.b.zyz ^ arg_0.b.wwy, ~vec3<u32>(5030u, arg_0.b.x, 26985u)))));
    var_2 = vec3<u32>(_wgslsmith_sub_u32(max(_wgslsmith_mod_u32(var_0.b.x, countOneBits(var_2.x)), 4294967295u), arg_0.b.x), ~var_0.b.x, max(63476u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(74727u, 80686u, arg_0.b.x, var_2.x), var_0.b), vec4<u32>(var_0.b.x, 66652u, 1u, 4294967295u))) | 0u);
    return _wgslsmith_f_op_f32(f32(-1f) * -1666f);
}

fn func_2() -> bool {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(reverseBits(u_input.b ^ (i32(-1i) * -2147483647i)), ~(-3785i)), u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-445f, _wgslsmith_f_op_f32(round(945f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1297f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -920f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(626f - 411f), _wgslsmith_div_f32(546f, 337f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(1000f, vec4<u32>(16959u, 9794u, 53589u, 50532u)))), _wgslsmith_f_op_f32(max(-636f, 579f))))) + vec3<f32>(-2007f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1138f, 326f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-464f)), _wgslsmith_f_op_f32(select(-750f, 1696f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1026f, _wgslsmith_f_op_f32(-1795f * -637f))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f));
    let var_2 = var_0.x;
    let var_3 = -1197f;
    return !all(vec2<bool>(true, true));
}

fn func_1() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(1u), 17u)];
    let var_1 = 0u;
    let var_2 = Struct_2(vec4<bool>(false, true, select(select(u_input.a, -1i, true) == u_input.b, true, func_2()), func_2()), abs(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-1i, u_input.b, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(-1i, 0i), _wgslsmith_clamp_i32(u_input.b, 2147483647i, 38665i), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.a)))));
    global3 = reverseBits(var_2.b.x) >= select(-21967i, var_2.b.x, _wgslsmith_f_op_f32(var_0.a - -995f) <= _wgslsmith_f_op_f32(-var_0.a));
    let var_3 = var_2.a.yx;
    return !select(var_2.a, !select(vec4<bool>(true, true, false, var_3.x), var_2.a, 15456i <= u_input.b), !select(vec4<bool>(false, false, var_2.a.x, var_2.a.x), vec4<bool>(false, var_3.x, var_3.x, true), !vec4<bool>(true, var_2.a.x, var_2.a.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))) - 618f);
    global0 = array<Struct_1, 17>();
    var var_0 = -abs(_wgslsmith_mult_i32(1i, -u_input.b));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_2(select(vec4<bool>(true, false, true, !any(vec3<bool>(true, true, true))), func_1(), true), _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-57837i, 1i, u_input.b), vec3<i32>(1i, 44594i, u_input.a)) ^ vec3<i32>(1i, u_input.b >> (1u % 32u), 28786i), _wgslsmith_mod_vec3_i32(reverseBits(select(vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(u_input.b, 0i, -5013i), true)), -(vec3<i32>(-46868i, u_input.b, u_input.a) >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(918f, ~vec4<u32>(3373u, 1u, 40438u, 22965u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) * -525f)), _wgslsmith_f_op_f32(-1f)), ~max(firstLeadingBit(-u_input.b), countOneBits(-1i)), select(countOneBits(vec3<i32>(1i, i32(-1i) * -37031i, -var_1.b.x)), vec3<i32>(-1i, -14603i, max(var_1.b.x, 19045i)), select(var_1.a.wyx, var_1.a.yxz, true)), -21223i);
}

