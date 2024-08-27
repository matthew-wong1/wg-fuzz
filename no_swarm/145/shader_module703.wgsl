struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec3<bool> {
    let var_0 = min(vec2<u32>(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x) ^ u_input.b, ~(vec2<u32>(~u_input.b.x, u_input.b.x) & vec2<u32>(_wgslsmith_add_u32(43325u, 16464u), 11128u)));
    let var_1 = vec4<bool>(true, false, any(!vec4<bool>(arg_1 >= 295f, true, true, select(true, false, false))), !((var_0.x > var_0.x) | !all(vec3<bool>(true, false, false))));
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    var var_2 = var_1.wyz;
    return !select(var_1.wwz, var_1.ywy, select(!(!var_1.xxz), !vec3<bool>(false, var_1.x, true), false || !var_2.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = arg_0.a.yy;
    let var_1 = Struct_3(func_3(~_wgslsmith_mod_vec3_i32(u_input.d.yyw, arg_3 ^ vec3<i32>(arg_1.c, arg_3.x, 12183i)), 1000f), abs(reverseBits(select(u_input.d.zww, arg_1.b, arg_0.a.x))), reverseBits(_wgslsmith_mod_i32(-arg_0.c, ~(-5268i)) >> (firstTrailingBit(u_input.b.x) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(672f * -1220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(218f, -342f))), _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(-289f - -1232f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), -1213f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, -538f)) + arg_0.d.x))));
    let var_2 = Struct_1(func_3(vec3<i32>(arg_1.c, _wgslsmith_mult_i32(2147483647i, select(arg_3.x, 2147483647i, true)), arg_0.b.x), arg_0.d.x));
    var var_3 = ~min(vec4<u32>(countOneBits(93731u), u_input.b.x, _wgslsmith_mult_u32(76206u, u_input.b.x) ^ 1u, 68223u), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 32989u), vec4<u32>(14294u, 20167u, u_input.b.x, 38043u))));
    var var_4 = Struct_1(func_3(arg_1.b, arg_0.d.x));
    return func_3(-arg_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.d.x, 749f, false)) * var_1.d.x))))));
}

fn func_2() -> Struct_3 {
    var var_0 = ~min(select(select(firstLeadingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 67091u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 50926u, 39580u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 34458u)), all(vec2<bool>(false, false))), select(vec4<u32>(0u, 4294967295u, 47934u, u_input.b.x), ~vec4<u32>(u_input.b.x, 28449u, 91244u, u_input.b.x), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), true), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, ~40043u));
    global0 = 399f;
    let var_1 = Struct_1(func_4(Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<i32>(~20781i, abs(u_input.a), u_input.c), ~(u_input.c & 2147483647i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, -589f, 550f, -1000f))))), Struct_3(func_3(-u_input.d.zzz, 1000f), ~max(vec3<i32>(u_input.c, u_input.a, 1i), vec3<i32>(u_input.c, u_input.d.x, 1i)), select(u_input.a, 11513i, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(555f, 686f, 306f, -657f)))), !vec4<bool>(true, true, u_input.b.x != u_input.b.x, 24379i == u_input.a), firstTrailingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-21169i, -18383i, -36905i), u_input.d.yzz, vec3<i32>(u_input.d.x, u_input.c, u_input.c)))));
    var var_2 = reverseBits(_wgslsmith_mod_i32(countOneBits(abs(39261i)), -firstTrailingBit(u_input.a)));
    global1 = array<vec2<f32>, 8>();
    return Struct_3(func_4(Struct_3(!var_1.a, _wgslsmith_mod_vec3_i32(~u_input.d.zwy, u_input.d.zwy), i32(-1i) * -u_input.a, vec4<f32>(1455f, -1497f, _wgslsmith_f_op_f32(-1339f - -861f), _wgslsmith_f_op_f32(ceil(-668f)))), Struct_3(select(vec3<bool>(true, var_1.a.x, false), func_3(vec3<i32>(u_input.d.x, u_input.a, u_input.a), -368f), select(var_1.a, var_1.a, var_1.a)), ~(~u_input.d.www), -u_input.c | u_input.d.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(567f, 895f, -1103f, 1000f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-730f, -1454f, -1545f, -744f))))), vec4<bool>(true, true || (var_1.a.x || var_1.a.x), !select(false, false, var_1.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(54655u, 52592u), u_input.b) < 1u), ~vec3<i32>(~1i, 20660i, _wgslsmith_div_i32(-30197i, -78399i))), vec3<i32>(u_input.d.x, u_input.d.x, 0i), -_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.d.yx), u_input.d.xw & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, -5240i), vec2<i32>(36674i, 2147483647i), u_input.d.zz)), vec4<f32>(-1029f, -940f, 242f, -1000f));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = func_2();
    var var_1 = select(vec4<u32>(reverseBits(1u), ~(~(u_input.b.x >> (u_input.b.x % 32u))), u_input.b.x, min(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b))), ~firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(13189u, 57920u, u_input.b.x, 50580u), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x))), !vec4<bool>(any(vec2<bool>(false, false)), u_input.a <= countOneBits(-38100i), arg_0.d.x < 440f, !func_3(vec3<i32>(-11886i, var_0.c, arg_0.c), arg_0.d.x).x));
    global1 = array<vec2<f32>, 8>();
    var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(5999u, 1u, 36999u, var_1.x), vec4<u32>(1u, var_1.x, 0u, 3150u)), abs(67855u), var_1.x) | vec4<u32>(_wgslsmith_clamp_u32(var_1.x, 0u, var_1.x), var_1.x, _wgslsmith_sub_u32(69327u, u_input.b.x), var_1.x), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), countOneBits(firstLeadingBit(12644u)), abs(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 97005u));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(trunc(var_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~(~4294967295u);
    let var_2 = Struct_3(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false)))), vec3<bool>(all(vec2<bool>(true, true)), select(any(vec3<bool>(true, true, false)), true, true), 1u > (36875u >> (u_input.b.x % 32u))), true), u_input.d.xww, -41557i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(661f, 924f, -920f, -158f))) * vec4<f32>(-987f, _wgslsmith_f_op_f32(floor(-1312f)), -142f, 225f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(893f, 913f, 869f, -1287f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-311f, var_2.d.x, var_2.d.x), var_2.d.zwy))), var_2.d.zyz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(977f, var_2.d.x, _wgslsmith_f_op_f32(func_1(var_2))) + vec3<f32>(-1029f, var_2.d.x, func_2().d.x)), vec3<bool>(true, var_2.a.x, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.d.zwz)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(383f, var_2.d.x, var_2.d.x)))), var_2.d.xzy)) * _wgslsmith_f_op_vec3_f32(select(var_2.d.zwy, vec3<f32>(_wgslsmith_f_op_f32(ceil(-181f)), _wgslsmith_f_op_f32(trunc(var_2.d.x)), var_2.d.x), var_2.a.x))));
    var var_4 = _wgslsmith_f_op_f32(178f - 1813f);
    var var_5 = -1i;
    var_5 = _wgslsmith_div_i32(abs(firstTrailingBit(0i >> (~u_input.b.x % 32u))), ~var_2.b.x);
    var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-func_2().b.x, 55062i), var_2.d);
}

