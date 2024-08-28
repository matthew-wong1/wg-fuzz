struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 12> = array<i32, 12>(1i, 0i, -1i, -3171i, 11497i, -66354i, -1i, 1i, 28856i, i32(-2147483648), 12257i, 1i);

var<private> global2: array<i32, 26> = array<i32, 26>(-33266i, 2147483647i, -1i, -1i, 2147483647i, 1i, -31454i, -22622i, 9242i, -22839i, -71i, 2147483647i, 16221i, -1i, -12897i, -3339i, 2147483647i, 2147483647i, -1i, -1i, 1i, -1i, -1i, 1i, -39639i, 8072i);

var<private> global3: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(1150f, vec2<i32>(1i, -37559i), true, true, 32126i), Struct_4(-732f, vec2<i32>(-35582i, 14312i), true, false, 23666i), Struct_4(-137f, vec2<i32>(-7861i, 2147483647i), true, true, 2147483647i), Struct_4(252f, vec2<i32>(56194i, 59949i), true, true, 30593i), Struct_4(-1066f, vec2<i32>(i32(-2147483648), 2147483647i), true, true, -67749i), Struct_4(875f, vec2<i32>(46006i, 14290i), true, true, -63187i), Struct_4(-1167f, vec2<i32>(-31425i, -84963i), false, false, 0i), Struct_4(605f, vec2<i32>(-50462i, -65869i), false, false, 3323i), Struct_4(415f, vec2<i32>(-37203i, 49577i), true, false, -36939i), Struct_4(-1629f, vec2<i32>(i32(-2147483648), 1i), false, true, i32(-2147483648)), Struct_4(-1421f, vec2<i32>(0i, 0i), true, true, -1583i), Struct_4(-589f, vec2<i32>(-1i, -1125i), false, true, 1i), Struct_4(502f, vec2<i32>(12444i, 0i), true, false, 0i), Struct_4(-367f, vec2<i32>(-31989i, -1467i), true, true, 0i), Struct_4(-250f, vec2<i32>(-1i, -3684i), true, true, 2147483647i), Struct_4(551f, vec2<i32>(-1i, 2147483647i), false, false, -28143i), Struct_4(-1291f, vec2<i32>(62384i, 0i), true, false, i32(-2147483648)), Struct_4(-663f, vec2<i32>(-21804i, -33382i), false, false, -1i), Struct_4(-773f, vec2<i32>(13117i, 36344i), true, true, 1i), Struct_4(1224f, vec2<i32>(i32(-2147483648), 5804i), true, true, -1i), Struct_4(993f, vec2<i32>(2147483647i, 18242i), true, false, 1i), Struct_4(298f, vec2<i32>(i32(-2147483648), 976i), false, true, 0i), Struct_4(-314f, vec2<i32>(-11363i, 42230i), false, false, -34442i), Struct_4(370f, vec2<i32>(i32(-2147483648), 567i), true, true, i32(-2147483648)), Struct_4(-881f, vec2<i32>(26866i, 24363i), false, true, -27375i), Struct_4(1785f, vec2<i32>(-1i, 2147483647i), true, false, -1667i), Struct_4(462f, vec2<i32>(i32(-2147483648), 17135i), false, false, 12490i), Struct_4(-292f, vec2<i32>(-34455i, -37935i), false, false, -1i), Struct_4(191f, vec2<i32>(-46725i, -12711i), false, false, -18745i), Struct_4(890f, vec2<i32>(-23518i, 1i), false, true, -4657i));

var<private> global4: array<i32, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(sign(-1666f)), ~u_input.b, true, true, -2147483647i);
    let var_1 = !vec2<bool>(select(any(!vec4<bool>(true, var_0.c, false, var_0.c)), true, select(true, all(vec2<bool>(var_0.c, var_0.c)), 16257u <= u_input.d.x)), var_0.c);
    global1 = array<i32, 12>();
    var var_2 = Struct_1(max(u_input.d.wzw, vec3<u32>(100074u, 0u, _wgslsmith_mult_u32(35573u ^ u_input.a.x, 0u))), global4[_wgslsmith_index_u32(~max(select(u_input.a.x, u_input.d.x, var_1.x), u_input.c), 8u)] == _wgslsmith_sub_i32(-1i, arg_0), var_0.a, vec4<u32>(~_wgslsmith_div_u32(reverseBits(u_input.d.x), u_input.a.x), u_input.d.x, _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.xz), vec2<u32>(select(28676u, 98612u, false), u_input.c)), (_wgslsmith_div_u32(u_input.a.x, 0u) >> (u_input.c % 32u)) << (u_input.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)) + _wgslsmith_f_op_f32(-var_0.a)));
    let var_3 = var_2.a.yy;
    return var_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> bool {
    global2 = array<i32, 26>();
    global4 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(210f, -275f))) * -1129f) - 1293f) - 1628f);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - -484f), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0)), 646f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-776f, -183f, var_0, 638f)))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, 1400f, -679f, var_0)))))), !select(all(!vec3<bool>(arg_0.x, arg_1.x, false)), all(vec4<bool>(true, true, false, arg_0.x)), true)));
    global4 = array<i32, 8>();
    return arg_0.x;
}

fn func_2() -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -128f)))))), -vec2<i32>((global2[_wgslsmith_index_u32(54518u, 26u)] & global1[_wgslsmith_index_u32(u_input.a.x, 12u)]) & -11706i, reverseBits(abs(38884i))), true, !func_4(vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_3(0i))), countOneBits(-1i));
    global1 = array<i32, 12>();
    let var_1 = _wgslsmith_div_vec4_i32(-vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), ~u_input.d.zw), 8u)], max(var_0.b.x, 0i), _wgslsmith_div_i32(var_0.e, var_0.e), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.e, 0i), -23348i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_0.b.x, -61577i), vec4<i32>(1i, 29987i, 71579i, 67338i))), 37963i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-16798i, -2147483647i, global2[_wgslsmith_index_u32(805u, 26u)], 5801i), vec4<i32>(22697i, -2147483647i, u_input.b.x, -1i)), vec4<i32>(-1i, -2147483647i, 32597i, -31441i)), global2[_wgslsmith_index_u32(u_input.d.x, 26u)]), ~(-vec4<i32>(0i, global4[_wgslsmith_index_u32(u_input.d.x, 8u)], 20796i, global4[_wgslsmith_index_u32(u_input.c, 8u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(select(25825i, -9189i, false), -u_input.b.x, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(49162u, 12u)], var_0.e), -global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 26u)], u_input.b.x, 2147483647i), vec4<i32>(-1i, -62746i, var_0.b.x, 1899i))))));
    var var_2 = var_0.a;
    return var_0.d;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec3<i32>(0i, ~(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global4[_wgslsmith_index_u32(62595u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(44840i, 0i, u_input.b.x)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -1i), _wgslsmith_add_i32(35404i, global4[_wgslsmith_index_u32(min(firstLeadingBit(0u), _wgslsmith_mod_u32(arg_1.x, arg_1.x)), 8u)])));
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(u_input.d.yyw, vec3<u32>(~arg_1.x | ~u_input.a.x, min(~arg_1.x, u_input.a.x), ~(u_input.c & arg_1.x))), select(true, true, arg_0.x) == !func_3(-10584i).x, _wgslsmith_f_op_f32(step(-1167f, _wgslsmith_f_op_f32(974f * 993f))), vec4<u32>(arg_1.x, reverseBits(u_input.a.x), ~66999u >> (~(~0u) % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, firstTrailingBit(24865u)), 78018u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1078f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + _wgslsmith_f_op_f32(abs(313f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(546f, 376f)) * _wgslsmith_f_op_f32(floor(1780f))))));
    global4 = array<i32, 8>();
    var_1 = Struct_1(~vec3<u32>(~(~93069u), ~var_1.d.x, _wgslsmith_div_u32(reverseBits(arg_1.x), 26116u)), arg_0.x, -1068f, vec4<u32>(firstTrailingBit(4294967295u), 1u, 4294967295u, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) + -198f)));
    return Struct_2(Struct_1(min(reverseBits(_wgslsmith_div_vec3_u32(u_input.d.zwx, var_1.a)), ~arg_1 | countOneBits(vec3<u32>(arg_1.x, arg_1.x, u_input.a.x))), true || var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c)), _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(1751f + var_1.c)))), vec4<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(var_1.a.x, u_input.d.x)), arg_1.x, reverseBits(~var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1127f, 2366f, arg_0.x)) * -1649f))));
}

fn func_1() -> bool {
    let var_0 = func_5(select(vec4<bool>(!any(vec4<bool>(true, false, false, false)), true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, true)) || all(vec4<bool>(false, false, true, false)), true, false, true), func_2()), select(min(countOneBits(~u_input.d.ywz), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 103466u, u_input.a.x), u_input.d.zwx, _wgslsmith_sub_vec3_u32(u_input.d.yzy, u_input.d.ywy))), ~u_input.d.xyz, vec3<bool>(true, true, true)));
    global4 = array<i32, 8>();
    let var_1 = select(_wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x), 12u)], -374i, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, global1[_wgslsmith_index_u32(var_0.a.d.x, 12u)]), _wgslsmith_clamp_i32(0i, 1i, u_input.b.x))), -64973i, func_5(select(vec4<bool>(all(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b)), var_0.a.b, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), false), select(vec4<bool>(false, var_0.a.b, true, var_0.a.b), vec4<bool>(false, false, true, true), vec4<bool>(false, var_0.a.b, false, false)), !vec4<bool>(var_0.a.b, var_0.a.b, false, false)), !vec4<bool>(var_0.a.b, false, var_0.a.b, var_0.a.b)), var_0.a.a).a.b);
    var var_2 = vec2<u32>(var_0.a.a.x, 32683u);
    global2 = array<i32, 26>();
    return all(select(!select(vec4<bool>(false, false, var_0.a.b, var_0.a.b), !vec4<bool>(var_0.a.b, false, var_0.a.b, var_0.a.b), vec4<bool>(true, true, var_0.a.b, var_0.a.b)), vec4<bool>(func_2(), false, func_3(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.a.x, 48557u), 8u)]).x, var_0.a.b || false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    let var_1 = _wgslsmith_add_vec4_u32(u_input.d, select(~vec4<u32>(max(u_input.d.x, u_input.d.x), u_input.c, min(u_input.c, u_input.a.x), 1u), vec4<u32>(u_input.c >> (u_input.d.x % 32u), _wgslsmith_div_u32(18519u, u_input.a.x), ~_wgslsmith_mod_u32(u_input.a.x, u_input.d.x), ~(~4294967295u)), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    global1 = array<i32, 12>();
    var var_2 = !(!func_1()) && all(vec4<bool>(!func_4(vec4<bool>(false, false, true, true), vec2<bool>(true, false)), ~1u != ~var_1.x, all(vec2<bool>(false, false)) && any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true))));
    var var_3 = !func_5(vec4<bool>(global2[_wgslsmith_index_u32(79212u, 26u)] > -118i, true, true, 1i > global4[_wgslsmith_index_u32(5612u, 8u)]), ~vec3<u32>(4294967295u, 33608u, 1u) >> (_wgslsmith_mult_vec3_u32(var_1.yzy, vec3<u32>(25703u, var_1.x, 4294967295u)) % vec3<u32>(32u))).a.b & false;
    let var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -777f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2520f, -1944f) * vec2<f32>(-1000f, 305f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-337f, -1497f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, 163f)))))))));
    let var_5 = vec4<u32>(u_input.a.x, ~(~(var_1.x ^ var_1.x)), firstTrailingBit(~4294967295u), _wgslsmith_sub_u32(u_input.a.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(515f, -840f))), _wgslsmith_f_op_f32(var_4.x + -288f), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)))), _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1786f)))), var_4, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, var_4.x)) * vec3<f32>(var_4.x, var_4.x, var_4.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1340f, var_4.x, 217f) * vec3<f32>(var_4.x, var_4.x, var_4.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, var_4.x, var_4.x), vec3<f32>(1487f, var_4.x, var_4.x)))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, 427f, -303f), vec3<f32>(var_4.x, var_4.x, var_4.x), false))))));
}

