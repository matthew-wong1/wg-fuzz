struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = max(4294967295u, ~1u);
    var_0 = 1u;
    var_0 = 48999u;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1126f, 570f) - vec2<f32>(949f, 315f)) * vec2<f32>(-1083f, 161f)) + vec2<f32>(_wgslsmith_f_op_f32(1179f * -912f), _wgslsmith_f_op_f32(f32(-1f) * -620f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(406f, 1514f) + -117f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(f32(-1f) * -122f))))));
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(2506u, 0u), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(78209u, 1u), vec2<u32>(2611u, 10950u)))));
    return 7111i;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), vec3<bool>(true, _wgslsmith_f_op_f32(select(-180f, 712f, false)) > -526f, true), !(_wgslsmith_dot_vec3_u32(vec3<u32>(64693u, 26631u, 4294967295u), vec3<u32>(1u, 0u, 25207u)) < ~8312u)));
    var var_1 = Struct_4(abs(func_3()), Struct_2(u_input.a, vec3<f32>(-973f, _wgslsmith_f_op_f32(-463f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f - -1574f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-291f, -660f, -769f))), vec4<u32>(_wgslsmith_div_u32(4294967295u, ~25477u), 1u, 1u, ~(~6251u))));
    var_1 = Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-65379i, firstTrailingBit(var_1.b.a), -1i), vec3<i32>(18034i >> (1u % 32u), u_input.a | var_1.a, 1i)) >> (var_1.b.d.x % 32u), var_1.b);
    var_1 = Struct_4(min(-28547i, select(-2147483647i, var_1.b.a & -1i, true)) & (_wgslsmith_mult_i32(~var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-50082i, 1i, var_1.a, 2147483647i), vec4<i32>(u_input.a, 34340i, -19854i, -4353i))) << (var_1.b.d.x % 32u)), var_1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1.b.c)))) - _wgslsmith_f_op_vec3_f32(-var_1.b.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.c + _wgslsmith_f_op_vec3_f32(var_1.b.b - _wgslsmith_f_op_vec3_f32(var_1.b.c * var_1.b.b))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.x, var_1.b.b.x, var_1.b.c.x)) - vec3<f32>(var_1.b.b.x, 1000f, 980f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.b.b, vec3<f32>(1000f, var_1.b.b.x, var_1.b.c.x))) + _wgslsmith_f_op_vec3_f32(max(var_1.b.b, vec3<f32>(var_1.b.c.x, 358f, var_1.b.c.x)))), var_0.a.x))));
    return vec3<bool>(any(!select(select(var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, false), true), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.x)), false, var_0.a.x);
}

fn func_1(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = select(!(!vec3<bool>(all(vec2<bool>(false, true)), false, true)), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), func_2(), vec3<bool>(true, false, true)), false), !func_2());
    let var_1 = Struct_2(_wgslsmith_clamp_i32(u_input.a & arg_0.x, u_input.a, min(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i) ^ vec2<i32>(u_input.a, arg_0.x), arg_0))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(384f))), _wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(-743f * -152f)))), _wgslsmith_f_op_f32(1857f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(908f, -847f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -449f), 114f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(842f * 319f), _wgslsmith_f_op_f32(abs(-771f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(634f + _wgslsmith_f_op_f32(floor(-402f))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, 1390f), 1f)), _wgslsmith_f_op_f32(-1191f - -945f), 1f), vec4<u32>(1u, 1u, 1u, 1u));
    let var_2 = 1u;
    let var_3 = Struct_3(~((var_1.d.xzx ^ abs(vec3<u32>(0u, var_2, var_1.d.x))) << (var_1.d.xzx % vec3<u32>(32u))));
    let var_4 = -101358i;
    return -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_4, countOneBits(var_4), _wgslsmith_mod_i32(arg_0.x, 17719i), 7842i), -vec4<i32>(var_4 | -32131i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_4, arg_0.x, 0i), vec4<i32>(var_4, var_1.a, var_1.a, -71923i)), 1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4517u ^ firstTrailingBit(1u);
    var var_1 = Struct_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 0i, u_input.a, u_input.a), -vec4<i32>(0i, 52388i, u_input.a, u_input.a)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -10472i, 1i, u_input.a), vec4<i32>(u_input.a, 6598i, 1i, -19904i))), func_1(firstTrailingBit(~vec2<i32>(u_input.a, -40099i)))), Struct_2(_wgslsmith_add_i32(u_input.a, 34841i) >> (var_0 % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1550f, 520f, -481f) - vec3<f32>(-116f, 1141f, -1306f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(479f, 667f, -1473f) - vec3<f32>(-647f, -377f, -565f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(944f, 495f, 1028f) * vec3<f32>(158f, -2552f, 1000f))))), vec3<f32>(_wgslsmith_f_op_f32(1073f + 298f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1341f) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -1435f)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(select(vec4<u32>(4294967295u, 74166u, var_0, var_0), vec4<u32>(106506u, 1230u, 0u, var_0), false)), max(vec4<u32>(0u, var_0, 92849u, 4294967295u), firstLeadingBit(vec4<u32>(36545u, var_0, 18912u, 3715u))), select(select(vec4<u32>(61329u, var_0, var_0, var_0), vec4<u32>(var_0, var_0, 47421u, var_0), false), ~vec4<u32>(0u, var_0, 0u, var_0), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))))));
    let var_2 = -(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 19586i), vec2<i32>(16280i, -1i)), abs(vec2<i32>(-2147483647i, var_1.b.a))), -_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a) & vec3<i32>(_wgslsmith_add_i32(-32556i, u_input.a) ^ reverseBits(u_input.a), _wgslsmith_sub_i32(~u_input.a, u_input.a), var_1.a));
    let var_3 = countOneBits(abs(45705u));
    var var_4 = reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, abs(-u_input.a), var_2.x, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i)), vec4<i32>(5551i, var_1.b.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, -1048i), countOneBits(var_1.b.a)), i32(-1i) * -15404i)));
    var_1 = Struct_4(-40607i, var_1.b);
    var_4 = _wgslsmith_add_vec4_i32(func_1(reverseBits(~vec2<i32>(-26051i, -1i))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(3487i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, -39203i, var_2.x), vec4<i32>(-1i, 2234i, var_2.x, 31278i)), u_input.a, var_2.x ^ u_input.a), max(~vec4<i32>(-2147483647i, 2147483647i, 0i, var_4.x), -vec4<i32>(-13757i, 2147483647i, 8445i, 0i)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_4.x, var_4.x, 2147483647i), vec4<i32>(2147483647i, var_1.a, var_2.x, u_input.a)) & max(vec4<i32>(-7897i, -31147i, u_input.a, 0i), vec4<i32>(var_2.x, -2147483647i, var_4.x, var_4.x))));
    let var_5 = u_input.a;
    var var_6 = Struct_1(!(!func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(var_3, firstLeadingBit(abs(var_3)), ~_wgslsmith_add_u32(var_1.b.d.x, 1u)), firstTrailingBit(~var_1.b.d.xyy << (~vec3<u32>(var_0, 66988u, 0u) % vec3<u32>(32u)))));
}

