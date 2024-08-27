struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(false, vec4<u32>(4294967295u, 1u, 4294967295u, 36509u), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 1u, 1597u), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false)), Struct_2(Struct_1(false, vec4<u32>(66169u, 1u, 1u, 7228u), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(true, vec4<u32>(1u, 24543u, 4294967295u, 1u), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(true, vec4<u32>(51955u, 64925u, 4294967295u, 1u), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), Struct_2(Struct_1(false, vec4<u32>(1u, 88544u, 32246u, 0u), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(true, vec4<u32>(1u, 85067u, 0u, 1u), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(false, vec4<u32>(33196u, 0u, 1u, 17910u), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), Struct_2(Struct_1(false, vec4<u32>(1u, 61203u, 4294967295u, 8556u), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false)), Struct_2(Struct_1(true, vec4<u32>(64765u, 1u, 11127u, 105693u), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), Struct_2(Struct_1(true, vec4<u32>(0u, 82844u, 1u, 5005u), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false)), Struct_2(Struct_1(false, vec4<u32>(0u, 67238u, 118669u, 1u), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false)), Struct_2(Struct_1(false, vec4<u32>(5741u, 0u, 1u, 3464u), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)), Struct_2(Struct_1(true, vec4<u32>(3116u, 0u, 1u, 1u), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false)), Struct_2(Struct_1(false, vec4<u32>(44345u, 0u, 4294967295u, 43996u), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 4525u, 4294967295u, 86266u), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), true)), Struct_2(Struct_1(false, vec4<u32>(19516u, 4294967295u, 52358u, 4294967295u), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)), Struct_2(Struct_1(true, vec4<u32>(0u, 13082u, 25543u, 15005u), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false)), Struct_2(Struct_1(true, vec4<u32>(1432u, 8082u, 1u, 8059u), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), Struct_2(Struct_1(true, vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)), Struct_2(Struct_1(true, vec4<u32>(30435u, 0u, 1u, 49936u), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)), Struct_2(Struct_1(false, vec4<u32>(14460u, 0u, 1u, 1u), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true)), Struct_2(Struct_1(true, vec4<u32>(18976u, 0u, 0u, 1u), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true)), Struct_2(Struct_1(false, vec4<u32>(127526u, 1u, 78799u, 4669u), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(false, vec4<u32>(12784u, 14649u, 1u, 83821u), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_0 = _wgslsmith_div_vec3_i32(-(~vec3<i32>(-u_input.e, 25707i, 0i)), -vec3<i32>(~(i32(-1i) * -26940i), _wgslsmith_mod_i32(~u_input.a, i32(-1i) * -9606i), u_input.d.x));
    let var_1 = 1000f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1479f)) + var_1)))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = select(vec3<bool>(true, true, true), !arg_2.www, !select(!vec3<bool>(arg_2.x, false, false), !arg_2.xyw, arg_2.xww));
    global0 = array<Struct_2, 26>();
    var var_1 = u_input.d.x;
    var var_2 = Struct_2(Struct_1(false, min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.c.x)), u_input.b, firstLeadingBit(vec4<u32>(72669u, u_input.b.x, u_input.b.x, u_input.c.x))), countOneBits(u_input.b)), !vec4<bool>(arg_2.x, var_0.x, all(var_0.yx), true), select(vec4<bool>(false, false, var_0.x, any(arg_2.ww)), arg_2, !(!arg_2)), !arg_2.x));
    let var_3 = select(reverseBits(_wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(arg_1.x, u_input.a, arg_1.x, arg_1.x)), vec4<i32>(abs(3662i), -2147483647i, arg_1.x | u_input.e, _wgslsmith_add_i32(14971i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(6483i, -2147483647i, u_input.e, 2147483647i), vec4<i32>(0i, u_input.a, u_input.a, -48496i)) | firstLeadingBit(vec4<i32>(-35635i, arg_1.x, u_input.a, arg_1.x)))), _wgslsmith_mult_vec4_i32(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-58149i, 0i, -19949i, u_input.a), vec4<i32>(arg_1.x, 1i, 2147483647i, u_input.a))), -vec4<i32>(_wgslsmith_div_i32(arg_1.x, -57815i), arg_1.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -19068i, u_input.e), vec3<i32>(u_input.a, 0i, 12358i)))), arg_2);
    return var_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    return func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-213f)) - 1f))), vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, -14158i), u_input.d, false), vec2<i32>(u_input.e, u_input.a)))), select(select(vec4<bool>(true, any(vec4<bool>(var_0, var_0, false, var_0)), any(vec4<bool>(var_0, true, var_0, true)), true), select(!vec4<bool>(true, var_0, true, var_0), !vec4<bool>(var_0, var_0, true, var_0), false), vec4<bool>(true, var_0, all(vec3<bool>(false, var_0, true)), true)), !vec4<bool>(1u <= u_input.c.x, all(vec3<bool>(false, var_0, var_0)), var_0, true | var_0), vec4<bool>(false, _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(96380u, 26u)])) < _wgslsmith_f_op_f32(414f + -543f), true, var_0 == var_0)));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<Struct_2, 26>();
    var var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c.x, abs(~16605u), 4294967295u) >> (vec3<u32>(u_input.b.x, arg_0.b.x, func_3(-371f, vec2<i32>(u_input.a, u_input.d.x), !arg_0.c).b.x) % vec3<u32>(32u)), ~abs(arg_0.b.yzx >> (select(arg_0.b.wwy, vec3<u32>(u_input.b.x, arg_0.b.x, 10823u), true) % vec3<u32>(32u))));
    var_0 = vec3<u32>(var_0.x, 4294967295u, countOneBits(19199u));
    let var_1 = firstTrailingBit(reverseBits(u_input.b.yx) ^ (~(~var_0.yx) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(18863u, arg_0.b.x), vec2<u32>(u_input.c.x, u_input.c.x))));
    global0 = array<Struct_2, 26>();
    return arg_0.c.xww;
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = reverseBits(arg_3) ^ reverseBits(vec4<i32>(~2147483647i, 28040i, 1i, arg_1));
    var var_1 = arg_1;
    let var_2 = select(-vec3<i32>(2147483647i, abs(~(-1i)), _wgslsmith_mult_i32(-1i, abs(1i))), (_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_1, -1i, arg_3.x)), _wgslsmith_clamp_vec3_i32(var_0.zyz, var_0.zxy, var_0.www)) & select(vec3<i32>(arg_3.x, 7270i, arg_1), -var_0.xyx, !arg_0)) >> (u_input.b.xzz % vec3<u32>(32u)), arg_0.x);
    global0 = array<Struct_2, 26>();
    let var_3 = Struct_4(Struct_2(func_1()), Struct_3(arg_1), 7195u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -529f, _wgslsmith_f_op_f32(f32(-1f) * -719f))))), _wgslsmith_dot_vec2_u32(u_input.c.yz, ~u_input.c.yz));
    return Struct_3(_wgslsmith_clamp_i32(arg_1, var_2.x, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstLeadingBit(-_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, -50017i, u_input.e, 3938i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.e), vec4<i32>(-21992i, 1i, 9633i, -1i)))));
    var_0 = func_5(func_4(func_1()), ~abs(-42832i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), firstLeadingBit(max(vec4<i32>(~83966i, var_0.a, ~u_input.e, ~(-2147483647i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1556i, 0i, 2147483647i, 0i), vec4<i32>(4383i, u_input.e, 0i, -29984i)))));
    global0 = array<Struct_2, 26>();
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~abs(_wgslsmith_mult_u32(53745u, u_input.c.x)), _wgslsmith_mod_u32(2937u, 1u) << (func_1().b.x % 32u)), countOneBits(u_input.b.x), max(u_input.b.x, u_input.c.x), u_input.b.x);
    global0 = array<Struct_2, 26>();
    var_0 = func_5(vec3<bool>(~(~(-16067i)) == ~(-u_input.a), true, u_input.e == ~u_input.a), -_wgslsmith_div_i32(~(-u_input.d.x), -2147483647i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-336f, 664f, -462f))))))), -(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, 0i, var_0.a, u_input.a) & vec4<i32>(u_input.d.x, u_input.e, 1i, u_input.a))));
    var var_2 = 20744u << (0u % 32u);
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1878f, _wgslsmith_f_op_f32(f32(-1f) * -438f), 1294f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, 1086f, 1000f)) * vec3<f32>(-1000f, 671f, -994f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1039f, 698f, -937f), vec3<f32>(-1177f, -835f, -366f)))))));
}

