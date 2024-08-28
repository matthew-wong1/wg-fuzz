struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true, Struct_1(vec2<u32>(25737u, 2994u), true, vec3<i32>(46096i, -31515i, -1i), vec4<bool>(true, false, true, false))), Struct_2(false, Struct_1(vec2<u32>(59814u, 50125u), true, vec3<i32>(1i, 2147483647i, 1i), vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(vec2<u32>(1u, 27954u), false, vec3<i32>(38718i, -1i, 18731i), vec4<bool>(true, true, false, false))), Struct_2(true, Struct_1(vec2<u32>(48077u, 37591u), false, vec3<i32>(-1i, 0i, -50472i), vec4<bool>(true, true, false, true))), Struct_2(true, Struct_1(vec2<u32>(1u, 14131u), true, vec3<i32>(0i, 6251i, 19234i), vec4<bool>(false, true, false, false))), Struct_2(false, Struct_1(vec2<u32>(36659u, 4294967295u), true, vec3<i32>(2147483647i, 1i, 2147483647i), vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(vec2<u32>(1u, 87147u), true, vec3<i32>(-5860i, -1i, 1i), vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(vec2<u32>(1u, 0u), false, vec3<i32>(54719i, 1i, i32(-2147483648)), vec4<bool>(false, false, false, true))), Struct_2(true, Struct_1(vec2<u32>(29079u, 73427u), false, vec3<i32>(43345i, 1i, 0i), vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(vec2<u32>(0u, 0u), true, vec3<i32>(-6125i, 3663i, -61742i), vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(vec2<u32>(21582u, 0u), true, vec3<i32>(1i, -1i, 2147483647i), vec4<bool>(false, false, false, false))), Struct_2(true, Struct_1(vec2<u32>(38371u, 1u), true, vec3<i32>(0i, 0i, i32(-2147483648)), vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(vec2<u32>(33236u, 0u), true, vec3<i32>(1i, -51042i, i32(-2147483648)), vec4<bool>(true, true, false, true))), Struct_2(true, Struct_1(vec2<u32>(72713u, 108291u), true, vec3<i32>(12390i, 2147483647i, 58504i), vec4<bool>(true, true, false, false))), Struct_2(true, Struct_1(vec2<u32>(1u, 27029u), false, vec3<i32>(8120i, 1i, 19035i), vec4<bool>(false, false, true, false))), Struct_2(false, Struct_1(vec2<u32>(0u, 1u), false, vec3<i32>(14728i, 26043i, 2147483647i), vec4<bool>(false, true, true, false))), Struct_2(false, Struct_1(vec2<u32>(0u, 17096u), true, vec3<i32>(1i, 1i, 14182i), vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(vec2<u32>(42001u, 56735u), true, vec3<i32>(0i, -388i, -16496i), vec4<bool>(false, false, true, false))), Struct_2(true, Struct_1(vec2<u32>(1u, 4294967295u), false, vec3<i32>(20401i, 0i, 37585i), vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(vec2<u32>(0u, 40647u), true, vec3<i32>(i32(-2147483648), -196i, -40232i), vec4<bool>(false, false, true, true))), Struct_2(false, Struct_1(vec2<u32>(10224u, 38597u), false, vec3<i32>(-18678i, i32(-2147483648), -1i), vec4<bool>(true, false, false, true))), Struct_2(true, Struct_1(vec2<u32>(28018u, 1u), true, vec3<i32>(34936i, 1i, 1i), vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 4294967295u), false, vec3<i32>(47679i, 5369i, -14784i), vec4<bool>(false, true, false, true))), Struct_2(false, Struct_1(vec2<u32>(1u, 1u), true, vec3<i32>(15908i, 9112i, 1103i), vec4<bool>(true, true, true, true))), Struct_2(true, Struct_1(vec2<u32>(80330u, 0u), true, vec3<i32>(26918i, -17348i, 19788i), vec4<bool>(false, false, false, true))), Struct_2(false, Struct_1(vec2<u32>(33585u, 0u), false, vec3<i32>(-1i, -8218i, -34146i), vec4<bool>(true, false, false, true))));

var<private> global1: vec2<u32>;

var<private> global2: i32 = 2147483647i;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 74474u);

var<private> global4: array<Struct_2, 31>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global1 = ~min(select(~(~vec2<u32>(global3.x, 88081u)), vec2<u32>(abs(4294967295u), 31195u), vec2<bool>(true, true)), firstTrailingBit((vec2<u32>(global3.x, global3.x) & vec2<u32>(4294967295u, u_input.b)) >> (vec2<u32>(global1.x, u_input.b) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-257f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -910f) * _wgslsmith_f_op_f32(f32(-1f) * -718f)) + -1671f), -320f, 1f));
    var var_1 = Struct_2(any(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), u_input.c < _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), true, true)), Struct_1(~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(u_input.b, global1.x), vec2<u32>(23190u, global1.x)), vec2<u32>(global3.x, u_input.b), ~vec2<u32>(u_input.b, u_input.b)), false, _wgslsmith_div_vec3_i32(u_input.e.zxy, vec3<i32>(_wgslsmith_add_i32(u_input.e.x, u_input.e.x), -1i, u_input.a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, false), true, u_input.d <= u_input.d))));
    var var_2 = firstLeadingBit(vec3<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 56258u, 5207u, u_input.b), vec4<u32>(0u, 22575u, 4294967295u, global1.x))), firstLeadingBit(61097u), select(_wgslsmith_sub_u32(32377u, u_input.b), _wgslsmith_mult_u32(var_1.b.a.x, u_input.b), var_1.a))) << (abs(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x ^ 25644u, firstTrailingBit(1u), _wgslsmith_div_u32(u_input.b, var_1.b.a.x)), ~vec3<u32>(1u, var_1.b.a.x, 23029u))) % vec3<u32>(32u));
    let var_3 = firstLeadingBit(vec4<u32>(global1.x, ~u_input.b >> (~(~global3.x) % 32u), 11385u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 23653u, 76896u, ~global1.x), countOneBits(vec4<u32>(u_input.b, 51641u, 114665u, var_1.b.a.x) & vec4<u32>(1u, global1.x, 1u, var_2.x)))));
    return -(firstTrailingBit(select(var_1.b.c.x >> (global1.x % 32u), 19721i, true)) & _wgslsmith_add_i32(~(-61517i), -1i));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = 0i;
    global2 = max(i32(-1i) * -(-6433i ^ func_3()), _wgslsmith_add_i32(1i, -(-33535i | -u_input.a.x)));
    var var_1 = vec3<u32>(56236u, 8537u, 46281u);
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(5444u, global3.x, var_1.x), vec3<u32>(u_input.b, 5151u, global1.x)), firstLeadingBit(vec3<u32>(13240u, 0u, global1.x))), ~vec3<u32>(u_input.b, var_1.x, global3.x)) > _wgslsmith_mult_u32(~_wgslsmith_add_u32(61374u, global3.x), 1u), Struct_1(var_1.xz, true, firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, _wgslsmith_add_i32(u_input.d, -24792i))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(arg_1));
    return Struct_2(all(vec2<bool>((var_2.a || true) || var_2.a, true)), Struct_1(vec2<u32>(reverseBits(u_input.b | 30631u), 58217u), var_2.b.b, abs(~vec3<i32>(1i, u_input.a.x, -2147483647i) | reverseBits(vec3<i32>(-62340i, -1i, 40508i))), vec4<bool>(true, !(!var_2.a), select(select(var_2.a, true, true), true, false), var_2.b.d.x & all(vec3<bool>(var_2.a, var_2.a, var_2.a)))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec2<u32> {
    global4 = array<Struct_2, 31>();
    global2 = func_3();
    var var_0 = firstLeadingBit(~(arg_2.b.a.x ^ 11030u));
    let var_1 = Struct_1(arg_2.b.a, !arg_2.a, reverseBits(select(vec3<i32>(-60453i, u_input.c, arg_2.b.c.x), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(u_input.c, arg_2.b.c.x, u_input.d)), !vec3<bool>(arg_0, arg_0, arg_3))) & u_input.a, func_2(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 223f) + vec3<f32>(641f, arg_1, -1051f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) * vec3<f32>(arg_1, arg_1, -440f))))).b.d);
    let var_2 = arg_2.b;
    return var_1.a;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.b ^ 23926u, 1u >> (firstLeadingBit(_wgslsmith_mult_u32(4294967295u, 1u)) % 32u), ~global3.x) & vec3<u32>(u_input.b ^ (1u >> (firstLeadingBit(global1.x) % 32u)), global3.x, global1.x);
    global2 = _wgslsmith_add_i32(u_input.c, countOneBits(0i));
    let var_1 = u_input.d;
    global3 = firstLeadingBit(~(~(~vec2<u32>(global3.x, 4294967295u))));
    let var_2 = func_4(true, 1f, func_2(_wgslsmith_f_op_f32(select(-1123f, _wgslsmith_f_op_f32(1683f * arg_0), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, 572f)))), false) << (~var_0.yz % vec2<u32>(32u));
    return func_2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-732f)))), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-706f, arg_0))), vec3<f32>(_wgslsmith_f_op_f32(1444f - -2175f), -2379f, 637f)).b.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, arg_0, _wgslsmith_f_op_f32(1636f + _wgslsmith_f_op_f32(trunc(arg_0)))) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0))))))).b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = 1u;
    var var_1 = firstTrailingBit(-_wgslsmith_sub_i32(-46486i, -1i));
    let var_2 = func_2(-270f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) + 1831f)), _wgslsmith_f_op_f32(-1148f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2169f, -612f)))), 983f)).b.d.xz;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1138f))));
    let var_4 = arg_0;
    return _wgslsmith_div_u32(u_input.b, global3.x | (arg_1.b.a.x >> (arg_1.b.a.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 31>();
    global3 = select(vec2<u32>(u_input.b, func_5(Struct_2(any(vec3<bool>(false, false, false)), Struct_1(vec2<u32>(63653u, u_input.b), false, vec3<i32>(40814i, u_input.c, u_input.c), vec4<bool>(true, true, false, true))), Struct_2(any(vec2<bool>(true, false)), func_1(656f)))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global1.x, 6108u), global1.x), vec2<u32>(~4294967295u, global3.x))), true);
    global2 = firstTrailingBit(u_input.a.x);
    global0 = array<Struct_2, 26>();
    var var_0 = Struct_1(_wgslsmith_mod_vec2_u32(select(vec2<u32>(reverseBits(global1.x), u_input.b >> (u_input.b % 32u)), min(firstTrailingBit(vec2<u32>(0u, 1u)), max(vec2<u32>(global1.x, global3.x), vec2<u32>(global1.x, 1u))), false), ~vec2<u32>(u_input.b, global3.x << (73225u % 32u))), !select(true, select(true, true, true), true), u_input.a, !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true));
    var var_1 = !(true || any(vec2<bool>(true, false))) & any(var_0.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

