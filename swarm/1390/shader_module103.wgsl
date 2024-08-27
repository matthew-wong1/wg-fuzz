struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-926f, 309f, -483f), vec3<f32>(1600f, 942f, -953f), vec3<f32>(904f, -388f, -835f), vec3<f32>(1038f, -2084f, 459f), vec3<f32>(236f, -254f, -1259f), vec3<f32>(475f, -373f, 953f), vec3<f32>(-836f, -378f, 329f), vec3<f32>(-1342f, 749f, -170f), vec3<f32>(-736f, -804f, 565f), vec3<f32>(943f, 468f, 778f), vec3<f32>(-655f, 1494f, -124f), vec3<f32>(161f, -1000f, 1683f), vec3<f32>(-1000f, -387f, 356f), vec3<f32>(1058f, -2138f, 2500f), vec3<f32>(404f, 1018f, -676f), vec3<f32>(-548f, -1192f, -1185f), vec3<f32>(735f, 1300f, -1800f), vec3<f32>(259f, 196f, 1243f), vec3<f32>(907f, 1355f, -1208f), vec3<f32>(1246f, 1639f, -1674f), vec3<f32>(450f, 130f, -182f), vec3<f32>(619f, 256f, 753f), vec3<f32>(272f, -787f, 868f), vec3<f32>(-1065f, -1335f, 1000f), vec3<f32>(-740f, -1420f, -646f), vec3<f32>(-2336f, -1420f, 1000f), vec3<f32>(1082f, 273f, 933f), vec3<f32>(-1000f, -271f, -349f), vec3<f32>(-275f, 1963f, -1000f), vec3<f32>(-1042f, -286f, -1404f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    global0 = array<vec3<f32>, 30>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, -174f, 512f)))), ~vec2<u32>(~(~u_input.c.x), u_input.c.x), !select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, select(false, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), Struct_2(~u_input.d.x <= -(u_input.b >> (1u % 32u)), -819f, Struct_1(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 0u), ~u_input.c.x, u_input.c.x | u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 69248u)), -(~u_input.a), any(vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, -1941f) - vec2<f32>(-447f, 1304f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1384f * -773f) - _wgslsmith_f_op_f32(round(635f)))), -select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.a.x, u_input.b), true), vec4<i32>(27354i, firstLeadingBit(firstLeadingBit(-2147483647i)), u_input.d.x, -1i)), Struct_2(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-634f)))))), Struct_1(u_input.c, -vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-472f, -1564f), vec2<f32>(1000f, 1600f))), 182f), firstTrailingBit(~u_input.d.zy), select(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.d.x), vec4<i32>(-18881i, -5118i, -1i, u_input.d.x)), ~abs(vec4<i32>(22131i, 1i, u_input.d.x, -2147483647i)), vec4<bool>(true, true, true, true))));
    var_0 = Struct_3(var_0.a, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~(u_input.c.ww | vec2<u32>(4294967295u, 1503u)), firstTrailingBit(~u_input.c.yx)), u_input.c.zx), select(var_0.c, !select(select(vec3<bool>(var_0.c.x, var_0.e.a, var_0.c.x), vec3<bool>(var_0.c.x, false, var_0.e.c.c), false), vec3<bool>(var_0.c.x, var_0.e.c.c, false), select(var_0.c, vec3<bool>(true, false, var_0.e.c.c), vec3<bool>(var_0.c.x, false, false))), vec3<bool>(_wgslsmith_f_op_f32(var_0.d.b + var_0.a.x) == var_0.a.x, var_0.e.a, true)), Struct_2(!var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b)), Struct_1(~u_input.c >> (var_0.d.c.a % vec4<u32>(32u)), var_0.e.c.b, !(492f > var_0.d.c.e), var_0.e.c.d, -142f), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -379i), -2147483647i), _wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec3_i32(u_input.a, var_0.d.c.b))), abs(select(var_0.d.e, vec4<i32>(var_0.d.c.b.x, 1i, var_0.d.c.b.x, 2147483647i), false)) >> (~min(vec4<u32>(14703u, 28238u, 40225u, 28623u), vec4<u32>(8539u, var_0.e.c.a.x, var_0.d.c.a.x, var_0.d.c.a.x)) % vec4<u32>(32u))), var_0.e);
    let var_1 = !var_0.c.zz;
    let var_2 = -227f;
    return ~u_input.c;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    global0 = array<vec3<f32>, 30>();
    return Struct_1(func_3(), -(-(u_input.d & u_input.a) ^ ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), u_input.a)), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), 1559f);
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(abs(~u_input.c.x));
    let var_1 = Struct_2(any(arg_0.zx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-604f)))), func_2(var_0.a.x), reverseBits(~(abs(vec2<i32>(u_input.b, u_input.d.x)) | reverseBits(vec2<i32>(-2147483647i, u_input.d.x)))), ~min(~(vec4<i32>(-2147483647i, -12787i, 1156i, u_input.b) >> (var_0.a % vec4<u32>(32u))), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -1i), vec4<i32>(u_input.a.x, var_0.b.x, var_0.b.x, -2147483647i))));
    global0 = array<vec3<f32>, 30>();
    var var_2 = 0u | ~var_0.a.x;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-696f * 179f)));
    return Struct_2(!(!func_2(1u).c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_0.d.x))) * -2380f))), func_2(u_input.c.x >> (firstLeadingBit(_wgslsmith_div_u32(var_1.c.a.x, 1u)) % 32u)), u_input.d.zx, ~(-vec4<i32>(var_1.c.b.x, 1i, func_2(u_input.c.x).b.x, min(u_input.d.x, u_input.b))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.d.x, -247f, arg_0.c.e) + vec3<f32>(-1301f, 1284f, arg_0.c.e)) - _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)], vec3<f32>(-326f, -815f, 982f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -451f, arg_0.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))), arg_0.c.a.yy, !select(vec3<bool>(false, arg_0.c.c, arg_0.b >= -549f), vec3<bool>(true, all(vec2<bool>(true, arg_2.a)), true), select(select(vec3<bool>(arg_2.c.c, arg_0.c.c, arg_0.a), vec3<bool>(arg_2.a, true, true), vec3<bool>(arg_2.a, true, arg_2.a)), !vec3<bool>(arg_0.a, false, false), false)), func_1(vec4<bool>(any(select(vec3<bool>(true, arg_0.a, arg_2.c.c), vec3<bool>(true, true, false), vec3<bool>(arg_0.c.c, arg_2.a, arg_0.a))), _wgslsmith_dot_vec3_u32(u_input.c.yzw, vec3<u32>(arg_2.c.a.x, arg_0.c.a.x, 17311u)) >= u_input.c.x, all(vec3<bool>(arg_0.c.c, arg_0.a, true)), false)), Struct_2(true, _wgslsmith_f_op_f32(231f + arg_2.b), Struct_1(countOneBits(vec4<u32>(u_input.c.x, arg_2.c.a.x, arg_0.c.a.x, 6431u)), vec3<i32>(0i, ~arg_1, -arg_0.e.x), any(vec4<bool>(false, arg_2.a, true, arg_0.c.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, arg_0.c.d.x))), _wgslsmith_div_f32(1947f, -678f)), func_2(4294967295u).b.xy, arg_2.e));
    var var_1 = select(select(vec4<bool>(true, true, false, !var_0.d.a), select(vec4<bool>(select(false, arg_2.c.c, true), select(true, true, var_0.c.x), any(vec3<bool>(arg_0.a, false, true)), arg_0.c.a.x <= 43188u), vec4<bool>(any(var_0.c), var_0.c.x, var_0.d.c.c & true, arg_0.a), !arg_0.c.c), true), !vec4<bool>(false, 858f < var_0.e.c.d.x, !(arg_2.e.x != 14910i), var_0.d.c.c), vec4<bool>(true, func_1(select(vec4<bool>(true, arg_2.a, arg_2.c.c, arg_2.c.c), select(vec4<bool>(true, arg_0.c.c, var_0.d.a, false), vec4<bool>(false, false, arg_2.a, true), false), select(vec4<bool>(arg_2.a, arg_2.c.c, true, arg_2.a), vec4<bool>(true, false, arg_0.c.c, arg_2.c.c), vec4<bool>(false, false, true, true)))).a, var_0.e.c.c, true));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.e, 1000f, arg_0.c.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(floor(361f)), var_0.e.b, -176f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, func_2(var_0.b.x).d.x, _wgslsmith_f_op_f32(step(arg_2.c.e, var_0.d.b))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.e, 415f, -364f)))))), vec2<u32>(arg_0.c.a.x, (_wgslsmith_div_u32(1u, 4294967295u) | func_1(vec4<bool>(false, arg_0.a, var_1.x, false)).c.a.x) ^ u_input.c.x), vec3<bool>(var_0.d.a && arg_0.a, func_1(select(vec4<bool>(true, var_1.x, var_0.e.c.c, var_1.x), vec4<bool>(false, true, false, arg_0.c.c), vec4<bool>(arg_0.c.c, false, var_1.x, true))).c.c & select(!var_0.d.c.c, func_2(arg_2.c.a.x).c, arg_2.a), abs(1u) > arg_0.c.a.x), Struct_2(!all(!vec4<bool>(arg_2.a, false, var_1.x, true)), 1677f, arg_2.c, u_input.a.yx, firstTrailingBit(~vec4<i32>(2147483647i, -21068i, 1i, -1i))), func_1(select(vec4<bool>(false, all(var_0.c.xx), var_0.d.c.c & arg_0.c.c, select(true, arg_0.c.c, false)), select(vec4<bool>(var_0.d.c.c, var_1.x, false, arg_0.c.c), vec4<bool>(arg_2.c.c, var_0.c.x, arg_2.c.c, var_0.c.x), !vec4<bool>(true, true, arg_0.a, true)), !vec4<bool>(arg_0.a, arg_2.a, false, false))));
    global0 = array<vec3<f32>, 30>();
    var_0 = Struct_3(vec3<f32>(var_0.e.c.e, 185f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1069f, -755f) + -159f)), arg_2.c.a.wz, select(!(!var_0.c), var_1.xxw, var_1.zxx), Struct_2(false, _wgslsmith_f_op_f32(step(arg_0.b, var_0.a.x)), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.a.x, 4294967295u, 1u, 71157u), var_0.e.c.a), vec3<i32>(1i, arg_0.d.x >> (15106u % 32u), _wgslsmith_clamp_i32(u_input.a.x, u_input.b, -3950i)), arg_0.a, var_0.a.yy, var_0.a.x), _wgslsmith_clamp_vec2_i32(~firstTrailingBit(arg_2.c.b.yx), ~(vec2<i32>(arg_2.c.b.x, arg_3.x) ^ u_input.d.yz), countOneBits(vec2<i32>(var_0.e.c.b.x, u_input.d.x))), -vec4<i32>(arg_1, i32(-1i) * -25352i, var_0.d.c.b.x, min(arg_1, -42851i))), Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1070f, func_1(vec4<bool>(true, var_0.d.a, var_0.c.x, arg_0.a)).b, arg_3.x != arg_2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b)) + arg_2.b)), Struct_1(var_0.d.c.a, firstTrailingBit(-vec3<i32>(-535i, 10810i, arg_1)), (u_input.c.x != var_0.d.c.a.x) && all(vec3<bool>(arg_2.a, true, arg_2.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.d.c.d), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-453f, arg_2.c.d.x))), true)), _wgslsmith_f_op_f32(-1783f + _wgslsmith_f_op_f32(-var_0.e.b))), vec2<i32>(u_input.a.x, -2147483647i), -(~arg_0.e)));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-705f, _wgslsmith_f_op_f32(exp2(var_0.d.b)), -992f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, var_0.a.x, 1029f))))), var_0.b, !vec3<bool>(var_0.d.a, false, all(vec4<bool>(true, false, true, true))), func_1(vec4<bool>(507f >= _wgslsmith_f_op_f32(select(var_0.a.x, 728f, false)), any(vec4<bool>(arg_2.a, arg_2.c.c, false, arg_2.a)), !(false || arg_2.c.c), true)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), abs(_wgslsmith_mod_i32(reverseBits(18289i), -1i) << (1u % 32u)), func_1(vec4<bool>(u_input.c.x >= u_input.c.x, all(vec2<bool>(true, false)) & true, true, _wgslsmith_f_op_f32(round(-738f)) >= func_2(0u).d.x)), ~max(firstLeadingBit(vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, 46614i, u_input.d.x) | vec4<i32>(u_input.b, u_input.d.x, -21910i, -17784i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, -19564i, u_input.d.x, 3302i), vec4<i32>(66315i, -1i, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_1(~(~countOneBits(func_2(18259u).a)), ~vec3<i32>(var_0.d.e.x, _wgslsmith_add_i32(-13404i, u_input.b << (11167u % 32u)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.c.b.x, 0i, 1i, -1i), vec4<i32>(0i, u_input.d.x, u_input.b, u_input.a.x)))), var_0.d.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.x)), -1980f), var_0.e.b);
    let var_2 = _wgslsmith_mult_i32(var_0.d.c.b.x | var_0.d.e.x, _wgslsmith_mod_i32(var_1.b.x, _wgslsmith_div_i32(countOneBits(-1i), ~_wgslsmith_add_i32(-1i, var_1.b.x))));
    var_1 = func_1(select(vec4<bool>(any(!var_0.c.zx), false, false, false), !vec4<bool>(!var_0.e.c.c, true, var_1.a.x >= 53760u, true), all(!(!vec4<bool>(false, var_1.c, true, var_1.c))))).c;
    let var_3 = var_0.c;
    var_0 = func_4(var_0.d, abs(_wgslsmith_dot_vec3_i32(var_0.d.c.b | var_0.e.e.zxx, _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.d.e.x, 29493i, var_1.b.x), u_input.a >> (u_input.c.xzx % vec3<u32>(32u))))), func_4(func_4(var_0.d, select(u_input.d.x, var_1.b.x, var_0.d.a), Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -262f), var_0.d.c, u_input.a.zz, vec4<i32>(-24327i, 2147483647i, 1i, -2147483647i)), var_0.d.e).e, _wgslsmith_mod_i32(-var_0.d.e.x ^ abs(var_1.b.x), -69672i << (var_1.a.x % 32u)), func_1(!vec4<bool>(var_1.c, false, true, false)), var_0.d.e).d, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.x, reverseBits(var_1.b.x), firstLeadingBit(-48108i), 40461i), func_1(!vec4<bool>(var_1.c, var_1.c, var_3.x, var_1.c)).e), ~vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_mod_i32(29001i, var_2), countOneBits(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.d.x), ~(~var_0.e.c.a.zzx), ~(~_wgslsmith_clamp_u32(~0u, ~82552u, _wgslsmith_dot_vec2_u32(var_1.a.wx, var_1.a.wz))));
}

