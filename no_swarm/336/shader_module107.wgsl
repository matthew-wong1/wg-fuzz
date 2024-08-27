struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<f32> = vec3<f32>(1000f, 1000f, 320f);

var<private> global2: u32;

var<private> global3: array<Struct_1, 10>;

var<private> global4: array<Struct_3, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global0 = !vec3<bool>(false, !any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.x)), all(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(true, true, global0.x, false), !vec4<bool>(false, global0.x, global0.x, true))));
    global0 = vec3<bool>(!(global0.x || (global0.x && !global0.x)), false, !global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -203f, -898f) * vec3<f32>(-1846f, -251f, arg_0.a)) + vec3<f32>(2077f, global1.x, 900f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-561f, -1487f, 1000f))) + vec3<f32>(-1931f, global1.x, global1.x)), vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-666f, arg_0.a, 1282f), vec3<f32>(global1.x, -396f, -988f), vec3<bool>(true, global0.x, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 837f, arg_0.a) - vec3<f32>(293f, 672f, arg_0.a)))))));
    let var_1 = _wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_0.c.x, u_input.d), -arg_0.c, select(select(select(global0.xz, vec2<bool>(global0.x, global0.x), global0.x), global0.xz, true), vec2<bool>(!global0.x, false), !global0.x | global0.x)), vec2<i32>(u_input.c.x, u_input.d));
    var var_2 = min(vec3<i32>(~1i, _wgslsmith_add_i32(-1574i & arg_0.b, firstTrailingBit(11234i)), _wgslsmith_div_i32(arg_0.c.x, -1i)), ~reverseBits(vec3<i32>(var_1.x, arg_0.b, -6736i))) ^ max(abs(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, arg_0.c.x, -86763i), u_input.b.yzx))), u_input.b.xzz);
    return var_0;
}

fn func_2(arg_0: f32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, 720f, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(433f, global1.x, arg_0) - vec3<f32>(616f, -1236f, global1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-476f, arg_0, global1.x) + vec3<f32>(-418f, -1358f, 376f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, 514f, 821f) - vec3<f32>(arg_0, global1.x, arg_0)), vec3<f32>(global1.x, arg_0, arg_0))))));
    global1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1733f)) + -1783f))), _wgslsmith_mod_i32(reverseBits(1i), abs(reverseBits(-9022i))), u_input.c)));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-315f + 1565f), u_input.c.x, u_input.c);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, -196f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), 683f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0.a + 669f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(max(arg_0, 690f)), _wgslsmith_add_i32(-countOneBits(27440i), 1i), u_input.b.xz);
    return var_1;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1672f, global1.x))))));
    var var_1 = arg_0;
    let var_2 = select(!(!select(!vec3<bool>(global0.x, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, arg_0, arg_0), true), select(vec3<bool>(false, arg_0, false), vec3<bool>(true, false, global0.x), vec3<bool>(arg_0, false, false)))), !vec3<bool>(true, !arg_0 == any(vec3<bool>(arg_0, arg_0, true)), all(vec2<bool>(false, false))), global0.x);
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, 0u)), abs(vec2<u32>(80090u, 1u))), _wgslsmith_mult_u32(firstTrailingBit(1u), 1u), ~_wgslsmith_mult_u32(44588u, 15111u)), ~0u), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, 59043u), min(~43261u, abs(4294967295u)))), 10u)];
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(_wgslsmith_mod_u32(1u, 59602u) >> (1u % 32u))), min(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(15835u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 77832u, 83965u, 4294967295u)))) | max(_wgslsmith_sub_u32(3347u, 2752u), 12117u)), 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global2 = abs(_wgslsmith_div_u32(1u, ~arg_1.x));
    let var_0 = select(40783u, arg_1.x, global0.x & true);
    let var_1 = firstTrailingBit(select(-u_input.b, vec4<i32>(arg_0.c.x, u_input.c.x | u_input.c.x, arg_0.c.x, 0i ^ arg_0.c.x), false));
    var var_2 = var_1.x & abs(arg_0.b);
    let var_3 = false;
    return var_1.x;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!vec3<bool>(!(global1.x == -909f), !global0.x, true));
    global0 = vec3<bool>(any(select(select(select(vec4<bool>(global0.x, false, var_0.x, global0.x), vec4<bool>(true, var_0.x, false, true), vec4<bool>(var_0.x, global0.x, true, var_0.x)), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, false, global0.x), true), !vec4<bool>(false, true, true, var_0.x)), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(global0.x, false, var_0.x, var_0.x), vec4<bool>(global0.x, global0.x, false, var_0.x), true))), arg_1.x > ~(-2147483647i), !(~firstLeadingBit(2885u) <= ~firstTrailingBit(2999u)));
    let var_1 = ~countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(29482u, 39678u, 0u), vec3<u32>(4294967295u, 5220u, 31327u))));
    let var_2 = Struct_1(1647f, -59707i, ~_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0, 1i), _wgslsmith_mult_vec2_i32(arg_1, u_input.c)));
    global0 = vec3<bool>(!(arg_0 >= _wgslsmith_add_i32(1i, -u_input.c.x)), false, !global0.x);
    return Struct_1(arg_2.a, arg_1.x, -min(vec2<i32>(u_input.b.x, arg_0 ^ 15686i), ~(~arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(~29097u, ~1u, 1u));
    let var_1 = func_5(func_4(func_1(global0.x), vec4<u32>(var_0.x, var_0.x, ~17631u, _wgslsmith_mod_u32(4294967295u, var_0.x)) & vec4<u32>(var_0.x, var_0.x, 33287u, var_0.x & var_0.x)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_add_i32(u_input.b.x, -1i)), 43023i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) * _wgslsmith_f_op_f32(-826f * global1.x)) - global1.x), -u_input.d, firstTrailingBit(vec2<i32>(0i, firstTrailingBit(0i)))));
    global2 = var_0.x;
    global4 = array<Struct_3, 18>();
    let var_2 = Struct_3(firstTrailingBit(41241i), var_0.x, var_0.x, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 142f, var_1.a, 215f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.b, var_1.b, u_input.b.x, 84942i)), ~u_input.b), vec4<i32>(-25049i, var_1.b, u_input.b.x, var_1.c.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(var_1.a)).x * 127f), min(u_input.c.x, u_input.b.x), u_input.b.yy), ~(~firstLeadingBit(1u)), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true), global0.x), select(vec3<bool>(true, true, global0.x), select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, false)), !vec3<bool>(global0.x, global0.x, false)), u_input.a > firstTrailingBit(1802i))));
    let var_3 = var_2.d;
    global0 = !vec3<bool>(false, !(!(18985i < u_input.d)), any(vec2<bool>(true, false)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~160i, ~4294967295u, ~var_1.b, reverseBits(_wgslsmith_sub_u32(0u, var_2.d.d)));
}

