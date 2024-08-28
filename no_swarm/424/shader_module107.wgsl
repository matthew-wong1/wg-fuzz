struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: i32 = 10965i;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = ~(~firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), 1644f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(142f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-743f)))), var_1.b))), -1315f);
    var var_3 = _wgslsmith_mult_i32(func_3(var_1, var_1, any(vec3<bool>(true, true, false)) || true), 0i);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-657f * 1000f), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(max(-2241f, -690f))))), 1572f);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_2.a - var_2.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.a.x, 228f)))), var_2.b);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(19321u, abs(_wgslsmith_mod_u32(26485u, u_input.a.x))), ~min(0u, u_input.a.x)), u_input.a.x);
    global2 = select(func_3(func_2(u_input.a.x), arg_0, (true || (u_input.a.x <= 33568u)) && true), _wgslsmith_sub_i32(countOneBits(~(-8422i << (u_input.a.x % 32u))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 40358i), vec2<i32>(-63536i, -41128i) & firstTrailingBit(vec2<i32>(0i, -9814i)))), false);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.a.x, 1061f)), _wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_f_op_f32(-arg_0.b), true)), -365f, func_2(0u).b), _wgslsmith_f_op_f32(-arg_0.b));
    global1 = -(i32(-1i) * -2147483647i);
    var_1 = func_2(var_0.x);
    return arg_0;
}

fn func_5(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<f32>, 11>();
    let var_0 = arg_2;
    var var_1 = select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true)), select(select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, any(vec2<bool>(false, true)), true), select(any(vec2<bool>(false, false)), true, true)), false), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(0u).b), _wgslsmith_f_op_f32(f32(-1f) * -255f))))));
    global0 = array<vec2<f32>, 11>();
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))));
}

fn func_1() -> f32 {
    global2 = -30218i;
    let var_0 = ~firstLeadingBit(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), true), max(vec4<u32>(53018u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 48879u, u_input.a.x, 1u))));
    global1 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(~vec3<i32>(0i, -1i, 2147483647i), abs(vec3<i32>(10010i, 1i, -13942i))), vec3<i32>(-26376i >> (u_input.a.x % 32u), -2147483647i, select(-3749i, -1i, true))), _wgslsmith_add_i32(_wgslsmith_sub_i32(1i, reverseBits(-22884i)), ~11835i));
    var var_1 = func_5(-804f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(815f)), -1216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-707f, -394f, false))))), func_4(func_2(~(u_input.a.x << (21185u % 32u)))));
    var var_2 = min(vec2<u32>(select(reverseBits(363u), var_0.x >> (0u % 32u), true) ^ ~_wgslsmith_mult_u32(4294967295u, var_0.x), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(~(~var_0.x), ~_wgslsmith_dot_vec3_u32(var_0.xyx, vec3<u32>(4294967295u, u_input.a.x, 5127u))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x ^ var_0.x, ~31610u), u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1369f)))))) - _wgslsmith_f_op_f32(ceil(664f)));
}

fn func_6(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = 1000f;
    let var_1 = Struct_1(func_2(~_wgslsmith_div_u32(min(u_input.a.x, u_input.a.x), u_input.a.x)).a, _wgslsmith_f_op_f32(-310f - arg_0));
    let var_2 = arg_1.x;
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(trunc(var_1.a.x)), true != arg_1.x)) + 1088f)));
    let var_4 = all(arg_1.xz);
    return -820f;
}

fn func_7(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, func_5(-1061f, vec2<f32>(_wgslsmith_f_op_f32(func_6(-307f, vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(-arg_0.a.x)), func_5(arg_0.b, arg_0.a.xz, func_2(6176u))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    global0 = array<vec2<f32>, 11>();
    global2 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.a))) * _wgslsmith_f_op_vec3_f32(-func_5(var_0.x, vec2<f32>(arg_0.b, -974f), Struct_1(arg_0.a, -489f)).a))), _wgslsmith_f_op_f32(-arg_0.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1101f, -486f)) - var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), func_2(4294967295u).a.x), var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + var_0.x), -1617f, false)));
    return select(select(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, arg_1 < 1i, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), all(vec4<bool>(true, true, true, any(vec2<bool>(false, true))))), vec4<bool>(true, true, true, false), !(min(arg_1, -arg_1) > (_wgslsmith_sub_i32(1i, -70440i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 25239u), u_input.a) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 55528u), vec4<u32>(55610u, 26117u, u_input.a.x, 39366u)))));
    let var_1 = func_7(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f - 243f)), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(func_1()), vec4<bool>(true, false, false, false))), -198f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), 1i);
    var var_2 = vec3<bool>(false, var_1.x, var_1.x);
    global2 = firstLeadingBit(1i);
    let var_3 = func_7(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, 1000f, -221f))), func_5(_wgslsmith_f_op_f32(func_6(-743f, var_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1400f) + global0[_wgslsmith_index_u32(var_0.x, 11u)]), func_2(var_0.x)).b)), -_wgslsmith_mod_i32(-(15716i >> (var_0.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), select(vec2<i32>(-1i, 42460i), vec2<i32>(-2147483647i, 1i), var_2.x)))).xxz;
    let var_4 = func_2(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(1i), min(25316i, 2147483647i), firstLeadingBit(1i)), reverseBits(reverseBits(vec3<i32>(0i, -8503i, 37205i)))), ~vec3<i32>(firstTrailingBit(-58583i), -2147483647i, -36125i >> (1u % 32u))), -51533i);
}

