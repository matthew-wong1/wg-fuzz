struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(1u, vec3<u32>(0u, 76203u, 1u), vec2<i32>(0i, 1i), Struct_2(Struct_1(vec4<f32>(-697f, 643f, 1095f, -1448f)), vec2<f32>(-1000f, 1323f), vec4<u32>(23566u, 96647u, 46797u, 4294967295u)), vec2<f32>(841f, 1436f)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_4(~abs(min(arg_2.a, 0u)) >> (~4294967295u % 32u), false);
    var var_1 = -(vec4<i32>(~abs(24559i), ~u_input.a, _wgslsmith_mod_i32(firstTrailingBit(arg_2.c.x), -1i), reverseBits(_wgslsmith_dot_vec2_i32(arg_2.c, arg_2.c))) & vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wxx, vec3<i32>(u_input.a, u_input.d, 1i)), 40958i, 14460i, 1i));
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    let var_2 = arg_2.c;
    return var_0.b;
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, -249f, -1000f, 1491f)))), vec4<f32>(_wgslsmith_f_op_f32(max(1561f, -1392f)), _wgslsmith_f_op_f32(-681f - -289f), -1000f, -738f), vec4<bool>(u_input.e.x != 72738u, func_3(Struct_5(u_input.e, Struct_2(Struct_1(vec4<f32>(-639f, -357f, -713f, 204f)), vec2<f32>(-137f, 1684f), vec4<u32>(u_input.e.x, u_input.e.x, 0u, 80015u)), Struct_1(vec4<f32>(390f, 1073f, 427f, 168f))), vec2<bool>(false, true), Struct_3(u_input.e.x, vec3<u32>(1u, 1u, u_input.e.x), vec2<i32>(-2147483647i, u_input.b.x), Struct_2(Struct_1(vec4<f32>(-106f, -824f, -1000f, -1700f)), vec2<f32>(1241f, 1000f), vec4<u32>(0u, u_input.e.x, 4294967295u, 105614u)), vec2<f32>(239f, 705f))), func_3(Struct_5(u_input.e, Struct_2(Struct_1(vec4<f32>(-929f, 1719f, -652f, -1000f)), vec2<f32>(545f, -203f), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 46489u)), Struct_1(vec4<f32>(-1410f, 824f, -2397f, 1457f))), vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), true))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-1543f, 999f, _wgslsmith_f_op_f32(step(439f, 107f)), _wgslsmith_f_op_f32(1268f - -2243f)), vec4<bool>(select(true, true, false), false, u_input.e.x >= u_input.e.x, false))), vec4<bool>(any(vec2<bool>(true, true)), func_3(Struct_5(u_input.e, Struct_2(Struct_1(vec4<f32>(986f, 1439f, 575f, 126f)), vec2<f32>(-1925f, 1705f), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 1u)), Struct_1(vec4<f32>(-3091f, -805f, 2090f, 1335f))), vec2<bool>(true, true), Struct_3(u_input.e.x, vec3<u32>(4294967295u, 1u, 1u), u_input.b.yz, Struct_2(Struct_1(vec4<f32>(-1000f, -1722f, 1077f, -651f)), vec2<f32>(378f, 1253f), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), vec2<f32>(919f, -1000f))), false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-243f, -1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-542f, -1125f))), 1836f) - vec4<f32>(-106f, _wgslsmith_f_op_f32(floor(-508f)), -1375f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1235f * 388f), -851f)))), true));
    var_0 = vec4<f32>(-465f, var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(ceil(1066f))))) * 146f));
    global0 = array<Struct_3, 1>();
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 1036f), -1000f), _wgslsmith_div_f32(-1564f, var_0.x), -152f, var_0.x);
    let var_1 = u_input.e.x;
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(-1i, u_input.c.x, 1i, u_input.d), u_input.b)), vec4<i32>(_wgslsmith_sub_i32(-1i, ~u_input.a), reverseBits(0i), firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, 33792i)), 20272i)), u_input.b, u_input.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<f32> {
    var var_0 = select(vec4<i32>(arg_0.x, 46897i, -max(u_input.d, ~2147483647i), -_wgslsmith_div_i32(-arg_2.x, arg_0.x)), u_input.b, !(true || (u_input.b.x != arg_0.x)) & (any(vec4<bool>(true, true, false, false)) | false));
    var var_1 = Struct_2(Struct_1(vec4<f32>(925f, _wgslsmith_div_f32(-2121f, _wgslsmith_div_f32(1732f, -958f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(559f + 311f) * -295f), -1053f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2055f, 1000f), vec2<f32>(-790f, -620f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1592f, 767f) * vec2<f32>(238f, -927f))), vec2<f32>(-142f, _wgslsmith_f_op_f32(f32(-1f) * -886f)))), select(vec2<bool>(select(false, false, true), true), vec2<bool>(arg_2.x != -50003i, true), vec2<bool>(true, true)))), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 28017u), select(vec4<u32>(56852u, 4294967295u, u_input.e.x, u_input.e.x), vec4<u32>(54641u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<bool>(false, false, true, true)))));
    let var_2 = true;
    let var_3 = vec2<u32>(~32814u, reverseBits(41909u >> ((u_input.e.x << (u_input.e.x % 32u)) % 32u)) | u_input.e.x);
    var var_4 = 1i;
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1592f, 1922f))), var_1.a.a.zx, select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, true), vec2<bool>(var_2, var_2))))))));
}

fn func_1() -> Struct_4 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_0 = u_input.e.yz;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(u_input.b.x, abs(u_input.a), u_input.a), _wgslsmith_add_vec4_i32(func_2(), _wgslsmith_div_vec4_i32(u_input.b, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(u_input.b.xyw, u_input.b & u_input.b, vec4<i32>(-1i, u_input.d, u_input.c.x, 1i))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-797f, 1000f)))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_1.x, 1016f))), _wgslsmith_f_op_f32(-var_1.x)))));
    return Struct_4(0u, !(!(all(vec4<bool>(false, true, true, true)) | false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(547f)) - _wgslsmith_f_op_f32(sign(2251f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1177f, 1834f)), -627f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1259f, -2693f)) - -378f), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1215f, -208f)))) + vec2<f32>(_wgslsmith_f_op_f32(911f + 587f), -131f)) + _wgslsmith_f_op_vec2_f32(func_4(-vec3<i32>(16050i, 18038i, -56087i), func_2(), vec4<i32>(-2147483647i, u_input.c.x, ~u_input.c.x, ~u_input.a)))), firstLeadingBit(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, var_0.a, 4294967295u, 30603u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(u_input.e.x, var_0.a, u_input.e.x, 24486u)) ^ abs(vec4<u32>(u_input.e.x, u_input.e.x, var_0.a, 43905u)))));
    var_0 = Struct_4(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, ~u_input.e.x, _wgslsmith_mult_u32(153627u, 7415u), _wgslsmith_add_u32(60913u, 19400u)), ~vec4<u32>(var_1.c.x, 4294967295u, var_1.c.x, var_0.a)), u_input.e.x), select(false, var_0.b, !var_0.b));
    let var_2 = all(select(select(vec3<bool>(!var_0.b, var_0.b, true), !select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, var_0.b, true), var_0.b), select(!vec3<bool>(var_0.b, var_0.b, var_0.b), select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), all(vec2<bool>(var_0.b, true)))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, false, true)), vec3<bool>(true, var_0.b, false), vec3<bool>(var_0.b, true, var_0.b)), select(vec3<bool>(var_0.b, var_0.b, var_0.b), select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b), false), false), false), !(!(!var_0.b))));
    var var_3 = Struct_5(vec3<u32>(var_1.c.x, var_0.a, ~_wgslsmith_dot_vec2_u32(reverseBits(var_1.c.xw), var_1.c.xy)), var_1, var_1.a);
    var var_4 = var_2;
    let var_5 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.b.x)), 504f, _wgslsmith_f_op_f32(round(var_3.c.a.x))), var_1.a.a.xyz)), var_1.a.a.yww));
    let var_6 = Struct_5(var_3.a, Struct_2(Struct_1(var_3.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a.a.yx, var_1.a.a.zx, false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1583f, var_3.b.a.a.x) * var_3.b.b))), vec4<u32>(var_1.c.x, var_3.b.c.x >> (u_input.e.x % 32u), 22456u, _wgslsmith_dot_vec3_u32(vec3<u32>(26523u, 35706u, 4294967295u), countOneBits(vec3<u32>(36431u, var_1.c.x, var_0.a))))), Struct_1(var_1.a.a));
    var var_7 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_6.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, ~var_0.a), 117911u, abs(1u)), vec3<u32>(var_0.a, ~0u, ~var_0.a))), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~(~var_7.c.x));
}

