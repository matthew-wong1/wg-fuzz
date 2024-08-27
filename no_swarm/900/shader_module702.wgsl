struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(1624f, -1000f, -127f), vec3<u32>(73666u, 0u, 37375u), Struct_1(vec2<bool>(true, true), vec3<f32>(1650f, 130f, 1000f)), vec4<f32>(469f, -1803f, -903f, 1753f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = global1.c.b;
    var var_1 = false;
    let var_2 = vec4<i32>(-countOneBits(1i), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 14267i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-17466i, 0i, -2147483647i, 41378i), vec4<i32>(-1i, 2147483647i, 0i, -15320i))), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(2147483647i, 25329i, -7i, -5229i), vec4<i32>(-2147483647i, 2147483647i, -4378i, -2147483647i), vec4<bool>(true, false, false, arg_0.a.x))), vec4<i32>(-1i, _wgslsmith_mult_i32(-11774i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 0i), vec3<i32>(-19214i, 29052i, 0i)), i32(-1i) * -75715i))), _wgslsmith_dot_vec3_i32(-min(-vec3<i32>(-1i, 2147483647i, 1i), ~vec3<i32>(-1i, 2265i, 2147483647i)), -vec3<i32>(firstTrailingBit(-2147483647i), 1i, ~(-15867i))), 32470i);
    var var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 99130u, 85508u, 16u)), ~vec4<u32>(u_input.a.x, global1.b.x, 0u, 56813u)), min(vec4<u32>(u_input.a.x, ~0u, _wgslsmith_mod_u32(44658u, 28813u), u_input.a.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(22945u, u_input.a.x, u_input.a.x, 29364u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 15222u, global1.b.x, u_input.a.x), vec4<u32>(0u, 20081u, u_input.a.x, 0u)))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, global1.b.x, 4294967295u, 9516u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global1.b.x), vec4<u32>(u_input.a.x, 0u, 4294967295u, global1.b.x))), ~countOneBits(vec4<u32>(global1.b.x, global1.b.x, 0u, global1.b.x)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(abs(global1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u), vec4<u32>(global1.b.x, u_input.a.x, 1u, 4294967295u)), ~u_input.a.x, global1.b.x), vec4<u32>(~22050u, global1.b.x >> (8039u % 32u), 51523u | global1.b.x, u_input.a.x)), vec4<u32>(~_wgslsmith_add_u32(28729u, 0u), min(0u, global1.b.x), _wgslsmith_mult_u32(global1.b.x, u_input.a.x), 1u)));
    var var_4 = Struct_1(vec2<bool>(false, !(!(!arg_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, arg_0.b.x, var_0.x)))) + vec3<f32>(var_0.x, 431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f * 1000f) - var_0.x))));
    return min(abs(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.a.x, global1.b.x, global1.b.x, 2752u)), vec4<u32>(~0u, ~global1.b.x, _wgslsmith_add_u32(global1.b.x, global1.b.x), 18825u), countOneBits(vec4<u32>(u_input.a.x, global1.b.x, var_3.x, 20504u) & vec4<u32>(u_input.a.x, global1.b.x, global1.b.x, 0u)))), _wgslsmith_add_vec4_u32(vec4<u32>(~var_3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(128791u, var_3.x, 4294967295u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global1.b.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, var_3.x, 24280u), vec4<u32>(u_input.a.x, 0u, 24276u, 15749u))), var_3.x, 1u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(15277u, global1.b.x, 24283u, 25221u), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 2282u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, u_input.a.x, 3574u, 22773u) >> (vec4<u32>(global1.b.x, 66800u, 1u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, global1.b.x, 4294967295u, var_3.x), vec4<u32>(0u, var_3.x, 38614u, 0u), vec4<u32>(16878u, 0u, u_input.a.x, var_3.x))), select(firstLeadingBit(vec4<u32>(119834u, 5921u, 4437u, u_input.a.x)), ~vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<bool>(false, true, var_4.a.x, global1.c.a.x)))));
}

fn func_2() -> vec3<bool> {
    let var_0 = global1.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.d.ywy))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = -996f;
    let var_4 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(~(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, u_input.a.x, u_input.a.x, 11076u) << (vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1u, 0u, global1.b.x) << (vec4<u32>(83051u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), ~min(u_input.a.x, 76167u)), ~(~u_input.a.x) | ~_wgslsmith_div_u32(0u, u_input.a.x), 4294967295u | u_input.a.x), Struct_1(!(!(!vec2<bool>(var_0.a.x, global1.c.a.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(var_1, var_1)), _wgslsmith_f_op_vec3_f32(abs(var_0.b))))))), firstLeadingBit(func_3(Struct_1(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(1737f, var_0.b.x, var_0.b.x), vec3<f32>(var_2, var_2, var_1.x))))));
    return vec3<bool>(true, !var_0.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-11967i, -1i), vec2<i32>(1i, 1i)) < -countOneBits(-13066i));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = !func_2();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(floor(arg_0.b.x))));
    global0 = array<Struct_2, 15>();
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(-global1.d.yxz), select(abs(firstTrailingBit(vec3<u32>(10649u, 114215u, 0u))), u_input.a, true), global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 254f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 + 1242f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-275f - 986f))))));
    var var_2 = Struct_1(!global1.c.a, _wgslsmith_f_op_vec3_f32(ceil(global1.a)));
    return func_2().xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    global1 = Struct_3(vec3<f32>(-703f, _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-global1.c.b.x)), _wgslsmith_f_op_f32(floor(791f))), vec3<u32>(4294967295u, abs(~abs(1u)), _wgslsmith_add_u32(~4294967295u, 4294967295u)), Struct_1(select(vec2<bool>(global1.c.a.x, true), vec2<bool>(false, !global1.c.a.x), select(global1.c.a, func_1(Struct_1(global1.c.a, vec3<f32>(-1855f, 3210f, global1.c.b.x)), true), func_2().x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.a))))), _wgslsmith_div_vec4_f32(global1.d, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -979f), global1.a.x, global1.d.x, _wgslsmith_div_f32(1589f, -310f))));
    var var_1 = global1.c;
    var_1 = Struct_1(vec2<bool>(func_1(global1.c, true).x, global1.c.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, var_1.b.x, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1065f, 1621f, 590f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(global1.d.yzx)))))));
    global1 = Struct_3(vec3<f32>(487f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1155f)) + _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2014f + 788f) + _wgslsmith_f_op_f32(global1.d.x * var_1.b.x))), var_1.b.x), ~u_input.a, global1.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d - vec4<f32>(-1000f, -473f, var_1.b.x, 789f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.x, global1.d.x, 866f, 215f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(1i, abs(-18725i), firstTrailingBit(-16036i))));
}

