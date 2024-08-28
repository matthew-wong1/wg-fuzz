struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = true;
    var var_0 = arg_0;
    let var_1 = u_input.a.yxw;
    global0 = array<vec4<u32>, 4>();
    global0 = array<vec4<u32>, 4>();
    return all(vec4<bool>(!(!select(arg_0.a.x, var_0.a.x, true)), arg_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(427f)), 769f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + _wgslsmith_f_op_f32(1279f * 1000f)), any(!vec4<bool>(false, arg_0.a.x, arg_0.a.x, true))));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = -44924i;
    let var_1 = Struct_1(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), func_3(Struct_1(vec3<bool>(true, false, true), u_input.a.x, vec3<i32>(-1i, 1i, -2147483647i))))), 1u, vec3<i32>(firstLeadingBit(0i), firstTrailingBit(-2147483647i), ~(1i << (~u_input.a.x % 32u))));
    global1 = false;
    var var_2 = -1170f;
    let var_3 = -_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.c.x, 20192i, var_1.c.x), abs(var_1.c)), ~(-var_1.c));
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 4u)], u_input.a | vec4<u32>(u_input.b.x, var_1.b, var_1.b, 15995u), vec4<u32>(0u, var_1.b, 4294967295u, 0u) ^ vec4<u32>(u_input.a.x, 1u, 1u, u_input.b.x))), abs(~(~vec4<u32>(34495u, var_1.b, u_input.b.x, var_1.b)))) & (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_1.b), vec2<u32>(19734u, var_1.b)), u_input.a.yw), u_input.b.x) ^ u_input.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5) -> Struct_1 {
    global1 = true;
    var var_0 = ~(~1u);
    global1 = false;
    var_0 = arg_1.e.c.b;
    var var_1 = Struct_5(vec3<i32>(-7975i, 2147483647i, arg_1.c.c.x), 10862i, arg_1.c, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1587f, arg_1.d.x, 993f, 1208f), arg_1.d), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_div_f32(arg_1.d.x, 293f), _wgslsmith_f_op_f32(arg_1.d.x - -574f), _wgslsmith_f_op_f32(-arg_1.d.x)))))), Struct_4((_wgslsmith_f_op_f32(min(arg_1.d.x, -560f)) >= _wgslsmith_f_op_f32(trunc(-2250f))) & ((arg_1.a.x | arg_1.a.x) == firstTrailingBit(-8117i)), arg_1.e.b, Struct_3(select(arg_1.c.a.zy, vec2<bool>(false, arg_1.c.a.x), vec2<bool>(arg_1.e.a, arg_1.e.c.a.x)), 101576u, arg_1.d, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c.c.x, -29253i, 41993i, arg_1.e.d.x) & vec4<i32>(27721i, 0i, -330i, 1i), vec4<i32>(1i, -2147483647i, 29399i, arg_1.c.c.x)), ~u_input.b.x), arg_1.a.xx));
    return var_1.c;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_3 {
    return Struct_3(!select(select(vec2<bool>(true, arg_2.c.a.x), !arg_2.c.a.yx, arg_2.e.c.a), select(!vec2<bool>(arg_2.e.a, arg_2.c.a.x), vec2<bool>(true, true), vec2<bool>(true, true)), !(!arg_2.c.a.x)), arg_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1355f, arg_0, arg_0, arg_2.e.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(select(621f, 437f, false)), _wgslsmith_f_op_f32(min(arg_2.e.c.c.x, arg_0)), _wgslsmith_f_op_f32(1022f * arg_0)))), vec4<i32>(firstTrailingBit(arg_2.e.d.x | arg_2.e.c.d.x), _wgslsmith_dot_vec3_i32(arg_2.c.c, reverseBits(vec3<i32>(arg_2.e.c.d.x, arg_2.e.d.x, 41303i)) << (_wgslsmith_add_vec3_u32(u_input.a.yxw, vec3<u32>(4294967295u, 1u, arg_1.x)) % vec3<u32>(32u))), arg_2.b, arg_2.a.x), _wgslsmith_add_u32(~(9300u ^ func_4(global0[_wgslsmith_index_u32(u_input.b.x, 4u)], Struct_5(arg_2.a, 2147483647i, Struct_1(arg_2.c.a, u_input.b.x, vec3<i32>(arg_2.c.c.x, 1i, -21107i)), arg_2.d, Struct_4(true, arg_2.e.b, arg_2.e.c, arg_2.a.zz))).b), _wgslsmith_sub_u32(max(1u, 1u), abs(arg_1.x)) >> (118654u % 32u)));
}

fn func_1() -> i32 {
    global0 = array<vec4<u32>, 4>();
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-542f * 601f), _wgslsmith_f_op_f32(252f * -861f)))), vec2<u32>(~14479u, u_input.a.x), Struct_5(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(1i, -54046i, 0i)) | (-2147483647i << (u_input.a.x % 32u)), -(i32(-1i) * -14722i), 2147483647i), 1i, func_4(global0[_wgslsmith_index_u32(func_2(vec4<f32>(941f, 749f, -172f, 1942f)), 4u)] & vec4<u32>(39026u, 17761u, u_input.a.x, 61261u), Struct_5(vec3<i32>(2147483647i, 1i, -10033i), ~(-18539i), Struct_1(vec3<bool>(true, false, true), 16028u, vec3<i32>(-1i, -2147483647i, 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(799f, -1499f, -615f, 543f) + vec4<f32>(-2466f, -1209f, 1694f, 347f)), Struct_4(false, vec4<f32>(-1730f, -898f, -1094f, 1153f), Struct_3(vec2<bool>(false, true), u_input.a.x, vec4<f32>(-1479f, -302f, -369f, 166f), vec4<i32>(-2147483647i, -40415i, 76341i, 68528i), u_input.b.x), vec2<i32>(0i, -35219i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, _wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_div_f32(-1000f, -892f), _wgslsmith_f_op_f32(f32(-1f) * -316f))), Struct_4(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(822f, -308f, -681f, 1260f), vec4<f32>(-854f, -1000f, -1467f, 1000f))), vec4<f32>(-404f, -369f, -1132f, -160f), true)), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), false), _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(771f, -345f, -961f, -194f) * vec4<f32>(1520f, 1000f, -1016f, -214f)), vec4<i32>(59330i, -36442i, 0i, 2147483647i), 18614u), ~(~vec2<i32>(-28048i, -28812i)))));
    var var_1 = Struct_4(var_0.a.x && false, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.c.x, var_0.c.x, -236f, 1000f)), _wgslsmith_f_op_vec4_f32(-var_0.c)))))), Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)), u_input.a.yy, Struct_5(vec3<i32>(2147483647i, -70205i, 2147483647i), _wgslsmith_mult_i32(var_0.d.x, var_0.d.x), Struct_1(vec3<bool>(var_0.a.x, true, true), 26177u, vec3<i32>(var_0.d.x, -2147483647i, 21186i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(949f, -517f, var_0.c.x, var_0.c.x) + vec4<f32>(var_0.c.x, 835f, var_0.c.x, var_0.c.x)), Struct_4(true, vec4<f32>(var_0.c.x, -1000f, 906f, -945f), Struct_3(vec2<bool>(true, var_0.a.x), var_0.b, vec4<f32>(-1310f, var_0.c.x, var_0.c.x, var_0.c.x), var_0.d, 39322u), var_0.d.xw))).a, firstTrailingBit(0u), var_0.c, vec4<i32>(var_0.d.x, 34505i, _wgslsmith_sub_i32(var_0.d.x | var_0.d.x, firstTrailingBit(var_0.d.x)), -reverseBits(40196i)), _wgslsmith_mult_u32(select(~var_0.b, var_0.b, any(vec3<bool>(true, var_0.a.x, var_0.a.x))), 29896u)), vec2<i32>(2147483647i, var_0.d.x));
    var var_2 = var_0.e;
    let var_3 = var_0.d.x;
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(firstTrailingBit(-var_1.c.d.x), var_0.d.x, 1i), select(-(~vec3<i32>(var_0.d.x, 18436i, 1i)), select(~vec3<i32>(var_1.c.d.x, var_1.d.x, var_1.c.d.x), _wgslsmith_sub_vec3_i32(var_1.c.d.yxw, var_0.d.xxx), true), vec3<bool>(var_1.c.a.x, all(vec4<bool>(false, false, var_0.a.x, true)), !var_0.a.x)), select(!(!vec3<bool>(false, true, var_0.a.x)), func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e, var_0.e, 4294967295u, var_1.c.b), global0[_wgslsmith_index_u32(1548u, 4u)]), Struct_5(vec3<i32>(var_1.c.d.x, 3287i, 2147483647i), var_0.d.x, Struct_1(vec3<bool>(false, var_0.a.x, false), 18528u, vec3<i32>(-1i, var_1.d.x, var_0.d.x)), var_0.c, Struct_4(true, vec4<f32>(var_1.c.c.x, var_0.c.x, 1271f, var_0.c.x), var_1.c, var_0.d.yw))).a, select(select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.a.x, false), var_1.c.a.x), !vec3<bool>(var_1.c.a.x, false, false), var_1.a))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-(vec3<i32>(var_0.d.x, -54716i, var_1.d.x) & vec3<i32>(-17966i, 26851i, var_1.c.d.x)), var_1.c.d.xyw), var_1.c.d.zxy));
}

fn func_6(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -156f)) + _wgslsmith_f_op_f32(f32(-1f) * -2615f))), -165f, 1f);
    let var_2 = all(vec3<bool>(true, !any(vec2<bool>(false, true)), func_3(Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), 4294967295u >> (u_input.b.x % 32u), -vec3<i32>(arg_0, arg_3, 7594i)))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(-1411f, -981f, -2144f)))))));
    var_0 = !(func_4(vec4<u32>(~4294967295u, ~38194u, ~45635u, 1u), Struct_5(vec3<i32>(arg_0, arg_0, 1i), 58538i, Struct_1(vec3<bool>(var_2, false, var_2), 7150u, vec3<i32>(-39007i, 23898i, arg_0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, 705f, var_1.x))), Struct_4(var_2, vec4<f32>(var_1.x, var_1.x, var_1.x, -327f), Struct_3(vec2<bool>(true, var_2), 44307u, vec4<f32>(-591f, var_1.x, -942f, 722f), vec4<i32>(arg_0, 0i, 2147483647i, 0i), arg_2), vec2<i32>(arg_3, arg_0)))).b > max(12073u, 0u | u_input.b.x));
    return Struct_1(vec3<bool>(false, var_2, !var_2), 41071u, func_4(~global0[_wgslsmith_index_u32(arg_1.x, 4u)], Struct_5(vec3<i32>(arg_3, arg_0 & arg_3, ~arg_3), abs(arg_0 << (81913u % 32u)), func_4(firstLeadingBit(arg_1), Struct_5(vec3<i32>(arg_0, 0i, arg_3), arg_3, Struct_1(vec3<bool>(true, false, var_2), arg_2, vec3<i32>(0i, arg_0, arg_0)), vec4<f32>(-730f, var_1.x, 712f, var_1.x), Struct_4(var_2, vec4<f32>(662f, var_1.x, -3051f, 1000f), Struct_3(vec2<bool>(var_2, true), 1u, vec4<f32>(var_1.x, var_1.x, var_1.x, -1524f), vec4<i32>(-36324i, -15028i, arg_0, 0i), 1u), vec2<i32>(7836i, -61994i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1364f, 497f, var_1.x, -891f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-132f, 1169f, -184f, var_1.x)))), Struct_4(var_1.x >= var_1.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1131f, 1231f, var_1.x, 970f))), Struct_3(vec2<bool>(var_2, var_2), u_input.a.x, vec4<f32>(123f, var_1.x, var_1.x, 1193f), vec4<i32>(arg_3, arg_3, arg_3, arg_0), 1u), firstLeadingBit(vec2<i32>(arg_3, arg_0))))).c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false))) | all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_0 = Struct_5(-_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(7723i, -1i, 12192i), vec3<i32>(1i, 1i, 1i), vec3<i32>(11114i, -1i, 1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 7966i, -2147483647i) << (u_input.a.zwx % vec3<u32>(32u)), vec3<i32>(39440i, 1i, 1i))), ~(i32(-1i) * -(i32(-1i) * -16248i)), func_6(8358i, u_input.a ^ vec4<u32>(19480u, 1u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec3<u32>(29007u, 73526u, u_input.b.x))), _wgslsmith_div_u32(~(~u_input.b.x), ~u_input.a.x), _wgslsmith_add_i32(-26543i, func_1())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2358f, -1287f, -713f, -1000f), vec4<f32>(952f, -429f, -1480f, 1000f)))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(113f, -841f, 2108f, -212f)))), Struct_4(all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_div_f32(1019f, _wgslsmith_f_op_f32(trunc(893f))), -1632f, -813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f * -2094f))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1205f - -488f)), u_input.b, Struct_5(vec3<i32>(-41665i, -38021i, -13578i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -34992i, 5690i), vec4<i32>(-30977i, -12478i, 0i, 31411i)), func_6(-1i, vec4<u32>(1u, 1u, u_input.a.x, u_input.b.x), u_input.b.x, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, -344f, 611f, -1297f)), Struct_4(false, vec4<f32>(1130f, -168f, 1000f, 1314f), Struct_3(vec2<bool>(true, false), u_input.b.x, vec4<f32>(-288f, -764f, 408f, -896f), vec4<i32>(-8889i, -1i, -24086i, -2147483647i), u_input.b.x), vec2<i32>(2147483647i, 1i)))), -vec2<i32>(i32(-1i) * -2147483647i, -14959i)));
    let var_1 = var_0;
    let var_2 = ~99944u;
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x & 4294967295u, ~var_2) ^ vec2<u32>(~1u, 1u), ~vec2<u32>(var_2, u_input.a.x)) | (vec2<u32>(_wgslsmith_add_u32(abs(var_1.c.b), ~4294967295u), reverseBits(var_1.e.c.e)) & u_input.b);
    let var_4 = !(!select(!select(vec4<bool>(var_1.e.c.a.x, var_0.e.c.a.x, true, false), vec4<bool>(false, true, false, var_0.c.a.x), vec4<bool>(var_1.c.a.x, false, var_1.e.a, false)), select(vec4<bool>(true, true, var_0.e.c.a.x, true), !vec4<bool>(var_0.c.a.x, var_0.e.a, true, true), true & var_0.e.a), !(u_input.b.x != 28007u)));
    global1 = var_0.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.zz, var_0.a.yx), ~select(vec2<i32>(2147483647i, -38321i), var_0.a.yx, var_1.c.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, var_1.d.x, var_0.d.x, -1695f)) + var_1.d)))), var_1.d.ywx);
}

