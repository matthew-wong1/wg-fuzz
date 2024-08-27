struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec3<f32>(145f, 691f, 2331f), 4294967295u, -571f, 151f), Struct_4(vec3<f32>(298f, -403f, 497f), 47422u, -1649f, -1061f), Struct_4(vec3<f32>(1039f, -681f, -1209f), 1u, -953f, 1000f), Struct_4(vec3<f32>(1000f, 1291f, 558f), 1u, 627f, 568f), Struct_4(vec3<f32>(742f, 931f, 636f), 3081u, 850f, 1652f), Struct_4(vec3<f32>(638f, -648f, 836f), 69489u, -1000f, 830f), Struct_4(vec3<f32>(-566f, 997f, -415f), 2947u, -1000f, 411f), Struct_4(vec3<f32>(1621f, -1973f, -1224f), 1u, 295f, 1922f), Struct_4(vec3<f32>(661f, -674f, 2004f), 19634u, -363f, 316f), Struct_4(vec3<f32>(-396f, 147f, -1350f), 0u, 360f, 1015f), Struct_4(vec3<f32>(1056f, -100f, -527f), 57479u, -1000f, -1879f), Struct_4(vec3<f32>(-1725f, 202f, 1313f), 0u, -344f, -550f), Struct_4(vec3<f32>(-122f, 773f, 648f), 0u, 1249f, -1577f), Struct_4(vec3<f32>(1508f, 329f, -758f), 0u, 1106f, -1293f), Struct_4(vec3<f32>(-2514f, 927f, 1000f), 22418u, -112f, 498f), Struct_4(vec3<f32>(1379f, -1334f, 767f), 0u, 1682f, 624f), Struct_4(vec3<f32>(-447f, -217f, -501f), 44711u, 981f, -601f), Struct_4(vec3<f32>(198f, 630f, -560f), 14227u, -443f, 437f), Struct_4(vec3<f32>(-1159f, 1000f, 285f), 0u, 1031f, -228f), Struct_4(vec3<f32>(790f, -110f, -1322f), 0u, 213f, -595f), Struct_4(vec3<f32>(-898f, -273f, 163f), 4294967295u, -1000f, -341f), Struct_4(vec3<f32>(-202f, 1183f, -619f), 50501u, 449f, 478f), Struct_4(vec3<f32>(-1000f, -1000f, -482f), 0u, -1329f, -373f), Struct_4(vec3<f32>(414f, -137f, 150f), 22552u, -907f, 562f), Struct_4(vec3<f32>(850f, 731f, 511f), 49864u, -134f, -241f), Struct_4(vec3<f32>(-1879f, 437f, 780f), 21858u, -725f, -2487f), Struct_4(vec3<f32>(-1464f, -1854f, -878f), 0u, 1000f, 666f), Struct_4(vec3<f32>(359f, -795f, -559f), 4294967295u, 462f, 1237f), Struct_4(vec3<f32>(-382f, 1197f, 1016f), 1u, 218f, -237f), Struct_4(vec3<f32>(232f, -1507f, -773f), 1u, -848f, 115f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec3<f32> {
    var var_0 = Struct_3(Struct_1(true, -21871i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.c))))), _wgslsmith_f_op_vec3_f32(-arg_0.a.c.zwz), arg_0.a.e), _wgslsmith_add_u32(u_input.c.x, arg_0.b & u_input.c.x), ~countOneBits(firstTrailingBit(arg_0.b)) <= _wgslsmith_add_u32(_wgslsmith_mult_u32(~0u, arg_0.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 6717u, arg_0.b, 1u), vec4<u32>(arg_0.b, 0u, arg_0.b, u_input.b))), 929f, !select(select(vec4<bool>(arg_0.c, true, false, arg_0.c), select(arg_0.e, arg_0.e, arg_0.e), true), vec4<bool>(all(vec4<bool>(false, true, false, arg_0.e.x)), false, arg_0.a.e.x != 6980i, arg_0.a.a), arg_0.a.a));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~arg_0.b), var_0.b, ~var_0.b), reverseBits(~(~vec3<u32>(56452u, 62415u, 15912u) << (abs(vec3<u32>(arg_0.b, 4294967295u, arg_0.b)) % vec3<u32>(32u))))), 30u)];
    let var_2 = 0u;
    var var_3 = _wgslsmith_dot_vec2_i32(abs(abs(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-11974i, 21959i), vec2<i32>(-2147483647i, 0i), vec2<i32>(arg_0.a.b, -1i))))), var_0.a.e.zx);
    let var_4 = Struct_2(var_0.a.e.zyz, Struct_1(var_0.c, abs(-u_input.a) ^ -38607i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, arg_0.a.c.x, -758f, -973f), _wgslsmith_f_op_vec4_f32(select(arg_0.a.c, arg_0.a.c, arg_0.c)), var_0.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-286f - 346f), _wgslsmith_f_op_f32(-arg_1), -1000f), var_0.a.e));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.c.xxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.b.d.x, _wgslsmith_div_f32(arg_1, var_0.a.c.x), _wgslsmith_div_f32(678f, 530f)), vec3<f32>(var_4.b.d.x, arg_0.a.c.x, _wgslsmith_f_op_f32(1000f * arg_1)), var_4.b.a))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1696f))));
    let var_1 = arg_1;
    var var_2 = arg_2.x;
    var var_3 = Struct_2(~(-select(var_1.e.zyy, var_1.e.xzw, arg_1.a)) << (~_wgslsmith_div_vec3_u32(arg_2.xyw, arg_2.xzw) % vec3<u32>(32u)), Struct_1(!(~u_input.b > firstTrailingBit(u_input.c.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.e.x, var_1.b, arg_1.b), vec3<i32>(-2147483647i, var_1.b, u_input.a)) & arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - 1000f), var_0, -129f, _wgslsmith_f_op_f32(max(246f, var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(914f, 1780f, -341f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-371f, 382f, arg_1.d.x) + _wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_1, 35951u, var_1.a, 441f, vec4<bool>(false, var_1.a, true, var_1.a)), var_1.d.x)))), select(arg_1.e, _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.b, 0i, arg_1.e.x, arg_1.b), var_1.e | arg_1.e), !(!var_1.a))));
    let var_4 = !(!(var_1.a | var_3.b.a));
    return Struct_3(Struct_1(select(var_3.b.a, ~33878u <= _wgslsmith_clamp_u32(u_input.b, arg_2.x, arg_2.x), all(!vec4<bool>(true, var_4, var_1.a, true))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, arg_1.b, -8148i), vec4<i32>(0i, var_3.b.e.x, arg_1.b, 0i)) | var_3.b.e, -arg_1.e), var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.c.xxz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.d.x, -777f, arg_0)))), select(vec4<i32>(var_3.a.x, _wgslsmith_add_i32(var_1.b, u_input.a), var_3.a.x, 0i), vec4<i32>(arg_1.b, 1i, var_3.b.b, _wgslsmith_dot_vec2_i32(var_1.e.yw, var_1.e.wy)), -1470f == var_3.b.c.x)), _wgslsmith_div_u32(15261u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_2, arg_2 << (arg_2 % vec4<u32>(32u))), ~(arg_2 << (vec4<u32>(arg_2.x, u_input.b, u_input.c.x, arg_2.x) % vec4<u32>(32u))))), (abs(abs(u_input.b)) >> (~_wgslsmith_add_u32(1u, u_input.b) % 32u)) >= ~(~28212u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), !select(!vec4<bool>(arg_1.a, true, var_4, var_3.b.a), select(select(vec4<bool>(var_3.b.a, var_4, var_4, true), vec4<bool>(true, false, var_3.b.a, true), var_4), select(vec4<bool>(true, arg_1.a, var_1.a, false), vec4<bool>(true, false, var_1.a, var_1.a), true), !vec4<bool>(var_4, arg_1.a, true, var_4)), all(!vec2<bool>(var_3.b.a, var_4))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_1.a.x)) * _wgslsmith_f_op_f32(step(func_2(arg_1.c, Struct_1(true, arg_0.a.b, arg_2, vec3<f32>(arg_0.a.d.x, -318f, arg_0.a.d.x), vec4<i32>(arg_0.a.e.x, u_input.a, u_input.a, arg_3.a.x)), vec4<u32>(22320u, 31883u, arg_1.b, 0u)).d, _wgslsmith_f_op_f32(arg_3.b.d.x * -867f))))), arg_0.a, min(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.b, 0u, arg_1.b), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 29528u), vec4<u32>(arg_0.b, arg_0.b, arg_1.b, 1u))), vec4<u32>(~_wgslsmith_mult_u32(arg_0.b, arg_0.b), arg_0.b, 0u, ~u_input.c.x))).e.x;
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(min(firstLeadingBit(arg_1.b), arg_0.b) ^ 87600u, arg_0.b), _wgslsmith_div_u32(~1u, ~func_2(arg_0.a.d.x, arg_0.a, ~vec4<u32>(arg_0.b, u_input.b, arg_1.b, 4294967295u)).b), _wgslsmith_add_u32(778u & (0u ^ (u_input.c.x | 1u)), arg_0.b), ~31132u ^ ~(u_input.c.x | _wgslsmith_add_u32(59123u, 19523u)));
    var var_2 = arg_3.b.e;
    let var_3 = arg_3.b.c.x;
    var var_4 = !arg_3.b.a;
    return _wgslsmith_div_vec3_u32(max(vec3<u32>(~(arg_1.b >> (0u % 32u)), ~(~u_input.b), ~(~arg_1.b)), ~(~firstLeadingBit(var_1.zwz))), _wgslsmith_add_vec3_u32(var_1.xxx, var_1.yyy) & vec3<u32>(arg_1.b, abs(firstLeadingBit(19699u)), ~24597u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> vec4<bool> {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    let var_0 = firstTrailingBit(arg_0.e.yy);
    global0 = array<Struct_4, 30>();
    return vec4<bool>(arg_2, false, false, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(u_input.b, 1u));
    var var_1 = select(vec4<bool>(!(!(!arg_2.b.a)), true, arg_2.b.a, false), func_5(arg_2.b, func_4(func_2(arg_1, Struct_1(arg_2.b.a, 2280i, arg_2.b.c, vec3<f32>(arg_1, arg_1, arg_2.b.d.x), vec4<i32>(arg_2.a.x, -4913i, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(1u, var_0, var_0, 4294967295u))), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1579f, arg_1, 926f)), u_input.b, _wgslsmith_f_op_f32(-arg_1), -565f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.c)), arg_2), false), select(vec4<bool>(true, true, arg_2.b.a, false), !(!func_2(arg_2.b.c.x, arg_2.b, vec4<u32>(u_input.c.x, var_0, 4294967295u, var_0)).e), any(vec3<bool>(!arg_2.b.a, false, true))));
    let var_2 = arg_0.yz;
    global0 = array<Struct_4, 30>();
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(arg_2.b.c.wzx));
    return Struct_2(-max(min(vec3<i32>(1i, arg_2.a.x, -1i), abs(arg_2.b.e.zxz)), abs(vec3<i32>(arg_0.x, var_2.x, arg_0.x))), arg_2.b);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_i32(~(_wgslsmith_dot_vec2_i32(arg_1.a.yx, arg_2.e.zy) | abs(-1i)), ~min(1i, arg_2.e.x ^ arg_0)) >= ~(~countOneBits(-arg_0));
    global0 = array<Struct_4, 30>();
    var var_1 = u_input.c.x;
    var_1 = 2649u;
    var var_2 = ~vec3<u32>(func_2(arg_2.d.x, func_2(_wgslsmith_f_op_f32(floor(arg_2.d.x)), Struct_1(false, arg_2.e.x, vec4<f32>(1000f, arg_1.b.d.x, arg_1.b.c.x, arg_2.d.x), vec3<f32>(arg_2.c.x, arg_1.b.c.x, arg_1.b.d.x), vec4<i32>(0i, 0i, -9236i, arg_1.a.x)), abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u))).a, ~(~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, u_input.c.x))).b, firstLeadingBit(u_input.c.x), u_input.b);
    return !vec2<bool>(arg_1.b.a, arg_1.b.a);
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = arg_3.yz;
    var var_1 = func_1(func_2(_wgslsmith_div_f32(-1051f, -677f), Struct_1(!arg_2.x, u_input.a ^ var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(387f, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, -1439f, arg_1, -1076f)), vec3<f32>(arg_1, arg_1, -2007f), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, 4723i)), vec4<u32>(arg_0, arg_0 & arg_0, ~u_input.b, 1u)).a.e >> (vec4<u32>(u_input.c.x, firstTrailingBit(u_input.c.x), u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_div_f32(arg_1, 1568f), Struct_2(vec3<i32>(~arg_3.x, -1i, -var_0.x), func_1(_wgslsmith_add_vec4_i32(-vec4<i32>(12445i, u_input.a, var_0.x, arg_3.x), abs(vec4<i32>(arg_3.x, 0i, 1i, var_0.x))), 976f, func_1(vec4<i32>(arg_3.x, u_input.a, var_0.x, u_input.a), _wgslsmith_div_f32(arg_1, 2580f), func_1(vec4<i32>(-1i, -1i, arg_3.x, var_0.x), arg_1, Struct_2(arg_3, Struct_1(true, 0i, vec4<f32>(389f, 548f, -1500f, arg_1), vec3<f32>(-1446f, arg_1, arg_1), vec4<i32>(arg_3.x, arg_3.x, arg_3.x, 6881i)))))).b)).b;
    var_1 = func_1(abs((~vec4<i32>(var_0.x, -102272i, 51315i, 558i) >> (vec4<u32>(arg_0, arg_0, 4294967295u, arg_0) % vec4<u32>(32u))) << (~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.b) % vec4<u32>(32u))), var_1.d.x, Struct_2(vec3<i32>(_wgslsmith_clamp_i32(var_1.e.x, var_0.x, 30844i), 0i, max(-57510i, var_1.b)) | -vec3<i32>(var_0.x, arg_3.x, -3191i), func_2(_wgslsmith_f_op_f32(step(var_1.d.x, _wgslsmith_f_op_f32(-arg_1))), func_2(-795f, func_1(var_1.e, var_1.d.x, Struct_2(var_1.e.xwx, Struct_1(var_1.a, var_1.b, vec4<f32>(arg_1, var_1.c.x, 422f, 493f), var_1.d, var_1.e))).b, firstLeadingBit(vec4<u32>(0u, 73641u, arg_0, u_input.c.x))).a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, arg_0, 42147u, arg_0) ^ vec4<u32>(37012u, u_input.c.x, arg_0, u_input.c.x), firstTrailingBit(vec4<u32>(1u, arg_0, 4294967295u, 24789u)))).a)).b;
    var var_2 = arg_1;
    global0 = array<Struct_4, 30>();
    return Struct_3(Struct_1(!(true & (var_1.a & true)), _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(var_1.e.xww, vec3<i32>(0i, var_1.b, 0i)), func_2(_wgslsmith_f_op_f32(trunc(364f)), func_1(var_1.e, 1282f, Struct_2(arg_3, Struct_1(arg_2.x, -19509i, vec4<f32>(-927f, 1086f, arg_1, -241f), var_1.c.yzw, var_1.e))).b, vec4<u32>(7122u, 1u, arg_0, 4294967295u) | vec4<u32>(4294967295u, 6463u, u_input.b, u_input.b)).a.b), _wgslsmith_f_op_vec4_f32(-var_1.c), _wgslsmith_f_op_vec3_f32(step(var_1.c.xyw, var_1.d)), _wgslsmith_mod_vec4_i32(func_2(_wgslsmith_f_op_f32(-var_1.d.x), func_1(vec4<i32>(arg_3.x, 2147483647i, 1i, -20092i), var_1.c.x, Struct_2(vec3<i32>(var_0.x, arg_3.x, var_0.x), Struct_1(arg_2.x, 0i, var_1.c, var_1.d, var_1.e))).b, vec4<u32>(4294967295u, arg_0, u_input.b, arg_0)).a.e, _wgslsmith_sub_vec4_i32(func_2(var_1.c.x, Struct_1(arg_2.x, var_0.x, var_1.c, var_1.d, var_1.e), vec4<u32>(47142u, u_input.c.x, 4294967295u, 4294967295u)).a.e, -vec4<i32>(1i, var_1.b, -1i, -29537i)))), u_input.b, arg_2.x, -824f, func_5(func_1(var_1.e & ~var_1.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(340f + 640f), 442f)), func_1(var_1.e, _wgslsmith_f_op_f32(step(2007f, arg_1)), func_1(var_1.e, arg_1, Struct_2(arg_3, Struct_1(var_1.a, -1i, vec4<f32>(377f, -1341f, -882f, var_1.d.x), var_1.d, vec4<i32>(1i, -25911i, 2147483647i, var_1.e.x)))))).b, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_div_u32(arg_0, arg_0), _wgslsmith_div_u32(0u, arg_0)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 83965u, arg_0), vec3<u32>(4294967295u, 8824u, 4294967295u), ~vec3<u32>(0u, 1u, 19120u))), !(reverseBits(arg_3.x) > abs(0i))));
}

fn func_8(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    var var_0 = func_1(max(arg_0.a.e, vec4<i32>(-abs(u_input.a), 1i, arg_0.a.b, func_1(arg_0.a.e, -1000f, Struct_2(arg_0.a.e.wyy, arg_0.a)).a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_0.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 12750u, arg_1.x, arg_1.x)) % 32u))), _wgslsmith_f_op_f32(-arg_0.a.c.x), func_1(arg_0.a.e, arg_0.d, Struct_2(-(~arg_0.a.e.www), arg_0.a)));
    let var_1 = var_0.b;
    let var_2 = Struct_3(func_1(var_1.e, -393f, Struct_2(_wgslsmith_div_vec3_i32(~vec3<i32>(-31402i, arg_0.a.b, arg_0.a.b), firstTrailingBit(vec3<i32>(2147483647i, 0i, var_1.e.x))), func_2(_wgslsmith_f_op_f32(round(-1000f)), func_7(74712u, -2966f, vec2<bool>(arg_0.e.x, var_1.a), var_1.e.yzw).a, max(vec4<u32>(u_input.b, arg_0.b, arg_1.x, 1u), vec4<u32>(u_input.c.x, arg_1.x, 1u, arg_0.b))).a)).b, 30268u, !(!arg_0.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.c.x, -277f), _wgslsmith_f_op_f32(min(arg_2, -1000f))) + var_1.d.x), _wgslsmith_f_op_f32(237f - var_1.c.x)), arg_0.e);
    return -41041i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 30>();
    let var_0 = func_8(func_7(~4294967295u, 423f, !func_6(0i, func_1(vec4<i32>(u_input.a, 22103i, u_input.a, -333i), -2371f, Struct_2(vec3<i32>(u_input.a, u_input.a, -1953i), Struct_1(true, -1i, vec4<f32>(545f, -1141f, -668f, 196f), vec3<f32>(-1002f, 965f, -817f), vec4<i32>(u_input.a, u_input.a, u_input.a, 14685i)))), func_2(-1972f, Struct_1(false, u_input.a, vec4<f32>(252f, 1348f, -500f, -708f), vec3<f32>(1505f, 1000f, 1592f), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i)), vec4<u32>(19044u, u_input.b, 4294967295u, 0u)).a), -vec3<i32>(u_input.a >> (u_input.c.x % 32u), i32(-1i) * -17226i, 9424i)), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 63863u), select(vec2<u32>(26017u, u_input.b), vec2<u32>(u_input.c.x, 4294967295u), true))), vec2<u32>(firstLeadingBit(select(u_input.b, u_input.c.x, true)), ~_wgslsmith_div_u32(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(913f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2501f, -414f)) * func_7(0u, -995f, vec2<bool>(true, false), vec3<i32>(u_input.a, u_input.a, -25012i)).a.c.x))));
    var var_1 = false;
    let var_2 = abs(~min(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.c.x ^ 1u, ~u_input.c.x), min(vec3<u32>(40136u, 4294967295u, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, 54128u), vec3<u32>(u_input.c.x, u_input.b, u_input.c.x)))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-159f, -477f)) - _wgslsmith_f_op_f32(ceil(1027f))), _wgslsmith_f_op_f32(ceil(-1255f))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f), 835f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -897f)))), reverseBits(max(~var_0, -1i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1776f, 1438f, 1000f, 1696f)), vec4<f32>(1029f, 950f, 960f, -948f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, -1672f, -825f, 337f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1330f, -1009f, 463f), vec3<f32>(-112f, -1000f, 742f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, 589f, 1778f) * vec3<f32>(680f, 148f, 727f)), vec3<bool>(true, true, true)))))), vec4<i32>(46186i, _wgslsmith_div_i32(-(-1860i | var_0), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, var_0), var_0)), -56732i, -1312i));
    let var_4 = vec3<u32>(4294967295u, u_input.c.x | 57020u, u_input.c.x >> (81617u % 32u));
    global0 = array<Struct_4, 30>();
    var_1 = (func_7(~(4294967295u >> (u_input.c.x % 32u)), _wgslsmith_f_op_f32(exp2(var_3.c.x)), select(func_6(-2320i, Struct_2(var_3.e.wzy, Struct_1(var_3.a, -2147483647i, var_3.c, vec3<f32>(1710f, 532f, -217f), var_3.e)), var_3), vec2<bool>(var_3.a, false), any(vec2<bool>(true, false))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(var_0, 1i, 5191i)), abs(vec3<i32>(-2147483647i, var_0, -2147483647i)), -vec3<i32>(-30884i, var_0, var_0))).e.x & ((max(u_input.a, var_3.e.x) != u_input.a) && func_2(_wgslsmith_f_op_f32(-var_3.c.x), func_2(860f, Struct_1(var_3.a, -36809i, vec4<f32>(var_3.d.x, var_3.d.x, var_3.d.x, var_3.c.x), var_3.c.wxy, vec4<i32>(2147483647i, var_3.b, 46253i, var_3.e.x)), vec4<u32>(var_2.x, 61696u, 3744u, u_input.c.x)).a, vec4<u32>(var_4.x, u_input.c.x, 2191u, 66397u)).e.x)) && all(!select(!vec3<bool>(false, false, var_3.a), func_2(var_3.d.x, var_3, vec4<u32>(10695u, 48458u, 4294967295u, 20432u)).e.xzz, func_2(-450f, Struct_1(var_3.a, 2147483647i, var_3.c, vec3<f32>(var_3.d.x, var_3.d.x, -635f), vec4<i32>(1i, 0i, u_input.a, 12588i)), vec4<u32>(36982u, var_4.x, 48148u, u_input.c.x)).e.zxw));
    var var_5 = func_8(Struct_3(func_1(var_3.e, -199f, func_1(vec4<i32>(2147483647i, -43521i, 2147483647i, 0i), -1658f, Struct_2(vec3<i32>(var_0, var_0, 0i), Struct_1(true, 0i, vec4<f32>(var_3.c.x, var_3.c.x, var_3.d.x, var_3.d.x), var_3.c.yzw, vec4<i32>(-42305i, 2147483647i, u_input.a, 0i))))).b, abs(1u), firstTrailingBit(28230i) < _wgslsmith_sub_i32(u_input.a, -6908i), 1306f, func_5(var_3, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_4.x), var_4), func_1(vec4<i32>(2147483647i, -1i, u_input.a, -27986i), 2528f, Struct_2(vec3<i32>(u_input.a, var_0, 2147483647i), var_3)).b.a)), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) | _wgslsmith_dot_vec3_i32(func_7(u_input.b, -1697f, !vec2<bool>(var_3.a, true), vec3<i32>(57690i, var_3.e.x, var_0) | vec3<i32>(34845i, 18361i, var_0)).a.e.zxz << (var_4 % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(var_0, u_input.a), func_2(509f, Struct_1(var_3.a, -26502i, var_3.c, var_3.c.xzy, vec4<i32>(-20555i, -8043i, -30253i, u_input.a)), vec4<u32>(4294967295u, u_input.b, var_4.x, 6176u)).a.b, var_3.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_3.c)))), var_3.e.wxy, -15931i ^ (-u_input.a << (min(1u, abs(var_4.x)) % 32u)));
}

