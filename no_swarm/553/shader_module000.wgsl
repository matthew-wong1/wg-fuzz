struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(-14872i, 8284u, vec4<f32>(1951f, -186f, 503f, 329f), vec4<u32>(0u, 29114u, 4294967295u, 1u)), 51955i, false), Struct_2(Struct_1(-58410i, 11659u, vec4<f32>(464f, -183f, 1007f, 157f), vec4<u32>(81630u, 66210u, 1u, 4294967295u)), 22705i, false), Struct_2(Struct_1(-1814i, 1u, vec4<f32>(-1098f, 1201f, -1001f, -1067f), vec4<u32>(0u, 4294967295u, 0u, 0u)), -1i, false), Struct_2(Struct_1(-1i, 3650u, vec4<f32>(643f, 187f, 1209f, -167f), vec4<u32>(1u, 0u, 10424u, 0u)), 17464i, false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(u_input.d, 59659u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-903f, -765f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(563f + 422f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-857f - 794f)) + 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -561f)))), u_input.c);
    let var_1 = var_0.a;
    var var_2 = !vec4<bool>((reverseBits(u_input.c.x) == 30033u) || all(vec4<bool>(false, false, true, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))), true, false);
    var var_3 = 455f;
    return !vec2<bool>(var_2.x & any(select(vec2<bool>(false, false), var_2.zw, vec2<bool>(true, true))), true);
}

fn func_2() -> Struct_2 {
    let var_0 = select(!all(vec2<bool>(true, true)), u_input.c.x >= 4294967295u, any(!(!func_3())));
    var var_1 = Struct_2(Struct_1(u_input.d, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 79011u, 28411u), u_input.c.yzy), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, -1037f, -432f, -313f)) - vec4<f32>(694f, -788f, 1376f, 356f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(314f, -113f, 468f, -526f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(498f, 316f, 709f, 415f), vec4<f32>(120f, 481f, 445f, 733f), false)))), vec4<u32>(10398u, 1u, ~u_input.a.x, min(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(4294967295u, u_input.a.x)))), firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, 17618i, -1i), select(-35573i, -1i, true)) & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b, u_input.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(u_input.b, -2147483647i)))), -39717i == _wgslsmith_dot_vec3_i32(abs(vec3<i32>(12730i, u_input.b, u_input.b)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, 29131i), vec3<i32>(16090i, -29582i, 19354i))));
    let var_2 = Struct_1(1i, select(var_1.a.d.x, var_1.a.d.x, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, var_0, true), vec3<bool>(true, true, var_0)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(max(var_1.a.c.x, 1277f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c.x) - _wgslsmith_f_op_f32(-var_1.a.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.a.c.x, 2313f))), _wgslsmith_f_op_f32(select(-704f, _wgslsmith_f_op_f32(-514f * var_1.a.c.x), var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a.c, vec4<f32>(149f, var_1.a.c.x, -1000f, var_1.a.c.x), var_1.c))) * var_1.a.c))), _wgslsmith_clamp_vec4_u32(var_1.a.d, ~max(countOneBits(vec4<u32>(0u, u_input.a.x, 1u, 20295u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.a.d.x, var_1.a.d.x, var_1.a.b), u_input.c)), var_1.a.d | _wgslsmith_mult_vec4_u32(reverseBits(var_1.a.d), _wgslsmith_sub_vec4_u32(vec4<u32>(77839u, u_input.c.x, var_1.a.b, 4294967295u), var_1.a.d))));
    let var_3 = var_2;
    global0 = array<Struct_2, 4>();
    return Struct_2(var_1.a, countOneBits(min(-(i32(-1i) * -2147483647i), var_2.a)), all(func_3()));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = (vec4<i32>(-1i) * -vec4<i32>(var_0.a.a, ~u_input.b, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-63807i, -35342i), vec2<i32>(u_input.d, u_input.b)))) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(-5445i, ~var_0.a.a, 2147483647i, 0i), vec4<i32>(_wgslsmith_div_i32(9380i, u_input.b), min(var_0.b, var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -52684i, -1i), vec3<i32>(1i, u_input.d, -34042i)), u_input.b ^ 17665i));
    var var_2 = vec2<bool>(~(_wgslsmith_dot_vec3_u32(var_0.a.d.yzw, var_0.a.d.wwz) | ~var_0.a.d.x) > ~(~_wgslsmith_dot_vec3_u32(var_0.a.d.xwy, var_0.a.d.xwz)), any(select(vec4<bool>(select(var_0.c, false, true), true, false, true), select(!vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, var_0.c, var_0.c))), false)));
    let var_3 = var_0.a;
    var var_4 = func_2();
    return max(var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, max(4294967295u | (u_input.a.x >> (u_input.a.x % 32u)), 13907u)), 4u)];
    var var_1 = !var_0.c;
    var var_2 = -u_input.d;
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(func_1(vec2<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(var_0.c, true, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.c - vec4<f32>(-774f, 1000f, var_0.a.c.x, -110f)), _wgslsmith_f_op_vec4_f32(var_0.a.c - var_0.a.c))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_0.b, var_0.a.a, u_input.d) >> (vec4<u32>(4294967295u, var_0.a.b, 0u, 13177u) % vec4<u32>(32u)), -vec4<i32>(-20884i, -1i, var_0.b, u_input.b))), _wgslsmith_dot_vec4_u32(min(_wgslsmith_add_vec4_u32(var_0.a.d, u_input.c >> (vec4<u32>(var_0.a.b, u_input.c.x, 67265u, 74591u) % vec4<u32>(32u))), u_input.c), var_0.a.d >> (~abs(u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(var_0.a.c, _wgslsmith_f_op_vec4_f32(var_0.a.c + vec4<f32>(_wgslsmith_div_f32(var_0.a.c.x, -1232f), _wgslsmith_div_f32(-218f, 935f), var_0.a.c.x, var_0.a.c.x)), false)), vec4<u32>(~(~func_2().a.d.x), var_0.a.d.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(u_input.c.xxz, u_input.c.wxz), var_0.a.b), 4294967295u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.x)));
    var var_5 = var_0.a.c;
    var var_6 = func_2().a;
    var var_7 = var_0.a.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec4<i32>(~var_0.b, _wgslsmith_add_i32(0i, -1i), i32(-1i) * -8864i, reverseBits(var_6.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_3.c.x, 1601f, -899f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_6.c * var_0.a.c), vec4<f32>(var_6.c.x, -966f, -409f, var_0.a.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c))))));
}

