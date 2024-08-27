struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<i32>(-4104i, 1i), vec2<u32>(76246u, 4294967295u), Struct_1(vec2<f32>(-124f, 1661f), 1u, 1u, 644f), true, true), Struct_2(vec2<i32>(-47588i, -11016i), vec2<u32>(66702u, 4294967295u), Struct_1(vec2<f32>(-151f, 118f), 92378u, 40457u, -1506f), false, false), Struct_2(vec2<i32>(2147483647i, 2147483647i), vec2<u32>(74670u, 0u), Struct_1(vec2<f32>(1328f, -1586f), 4294967295u, 32871u, -1488f), false, true), Struct_2(vec2<i32>(35752i, -31436i), vec2<u32>(1u, 46963u), Struct_1(vec2<f32>(785f, 987f), 52029u, 31598u, 1000f), true, false), Struct_2(vec2<i32>(-35282i, 36348i), vec2<u32>(42609u, 0u), Struct_1(vec2<f32>(-103f, 308f), 1u, 4294967295u, -417f), false, true), Struct_2(vec2<i32>(-28373i, 7828i), vec2<u32>(109262u, 26760u), Struct_1(vec2<f32>(-772f, 1190f), 80413u, 36799u, -323f), false, false), Struct_2(vec2<i32>(-1i, -16798i), vec2<u32>(0u, 17120u), Struct_1(vec2<f32>(-166f, -137f), 50995u, 46438u, 164f), false, true), Struct_2(vec2<i32>(i32(-2147483648), 24745i), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(-2773f, 1000f), 0u, 47503u, 1322f), false, true), Struct_2(vec2<i32>(-21162i, -32686i), vec2<u32>(63894u, 0u), Struct_1(vec2<f32>(1193f, 314f), 0u, 0u, 1384f), true, false), Struct_2(vec2<i32>(-1i, -14188i), vec2<u32>(0u, 25550u), Struct_1(vec2<f32>(1887f, -1000f), 1u, 0u, 139f), true, true), Struct_2(vec2<i32>(1i, 0i), vec2<u32>(60419u, 0u), Struct_1(vec2<f32>(-1094f, -1068f), 11059u, 24837u, 645f), false, false), Struct_2(vec2<i32>(0i, 4308i), vec2<u32>(13005u, 4294967295u), Struct_1(vec2<f32>(-148f, -174f), 68146u, 0u, 267f), true, true), Struct_2(vec2<i32>(i32(-2147483648), 1i), vec2<u32>(1u, 1u), Struct_1(vec2<f32>(885f, -1449f), 4294967295u, 1u, 1808f), true, true), Struct_2(vec2<i32>(2147483647i, 1743i), vec2<u32>(44384u, 24131u), Struct_1(vec2<f32>(729f, -949f), 24993u, 0u, -413f), true, false), Struct_2(vec2<i32>(0i, 2147483647i), vec2<u32>(4294967295u, 0u), Struct_1(vec2<f32>(237f, 270f), 1u, 31435u, 1392f), true, false), Struct_2(vec2<i32>(23630i, -1i), vec2<u32>(52676u, 26555u), Struct_1(vec2<f32>(551f, 1000f), 26373u, 1u, 419f), false, false), Struct_2(vec2<i32>(0i, 1i), vec2<u32>(13804u, 44279u), Struct_1(vec2<f32>(835f, 399f), 1u, 0u, -1356f), false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(arg_1, arg_1);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-arg_0.a), 41107i), arg_2.a) | arg_2.a.x;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, max(arg_0.a, -arg_1.x)), vec2<i32>(-arg_1.x, arg_2.a.x)), 4521i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(arg_0.a, 40906i, arg_2.a.x)), vec3<i32>(arg_1.x, arg_0.a, 28550i)), arg_1.ywx), firstLeadingBit((0i >> (arg_2.b.x % 32u)) >> (~33288u % 32u))));
    var var_2 = global0[_wgslsmith_index_u32(~(1u | ~u_input.a.x), 17u)];
    var var_3 = ~1u;
    return _wgslsmith_mult_i32(-3427i, 1i);
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = select(-func_3(Struct_5(2147483647i), ~vec4<i32>(-26499i, 1i, -9186i, 1i), Struct_2(vec2<i32>(0i, -2147483647i), vec2<u32>(72295u, 8575u), Struct_1(vec2<f32>(arg_0.a.x, arg_0.d), 95914u, u_input.a.x, arg_0.d), false, true)) != -3775i, !(!(true && all(vec3<bool>(false, false, false)))), any(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), arg_0.a.x)));
    var var_2 = select(!(!vec2<bool>(all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)))), !vec2<bool>(all(vec2<bool>(true, true)), !all(vec4<bool>(false, false, false, true))), true);
    let var_3 = Struct_3(Struct_2(-vec2<i32>(1i, 49713i) >> (u_input.a.zy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~47950u, u_input.a.x ^ 28354u), min(~u_input.a.zx, u_input.a.yy), u_input.a.yy), arg_0, !(var_2.x & false), !(!any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), vec4<i32>(-_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -1i), 1i, ~1i & -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, -2147483647i), vec4<i32>(-32591i, -23705i, 12622i, 1i)), -1i), select(select(vec3<bool>(true, any(vec3<bool>(false, var_2.x, true)), all(vec3<bool>(false, var_2.x, true))), !select(vec3<bool>(false, false, var_2.x), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false), vec3<bool>(var_2.x, !any(vec4<bool>(false, true, var_2.x, var_2.x)), var_2.x), vec3<bool>(any(vec2<bool>(var_2.x, true)) && false, firstTrailingBit(-2147483647i) >= ~2147483647i, select(var_2.x, var_2.x, var_2.x != false))), Struct_2(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(1i, -26760i), vec2<i32>(2147483647i, -25220i)) ^ ~vec2<i32>(63694i, -1057i)), vec2<u32>(1u, 1u), arg_0, _wgslsmith_add_i32(firstLeadingBit(-61961i), _wgslsmith_mult_i32(25354i, 54082i)) == _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -21689i, 42688i, -42264i), vec4<i32>(2147483647i, 1i, 222i, -23996i)), true), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(1349f, arg_0.a.x))))), ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(15643u, 35163u, arg_0.b, u_input.a.x), vec4<u32>(4294967295u, arg_0.b, u_input.a.x, u_input.a.x))), arg_0.b << (max(_wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, arg_0.b)) % 32u), 224f));
    var var_4 = Struct_1(arg_0.a, _wgslsmith_mod_u32(25226u, 1u), var_3.e.c, _wgslsmith_f_op_f32(-var_3.e.a.x));
    return _wgslsmith_mult_i32(var_3.b.x, min(var_3.b.x, firstTrailingBit(_wgslsmith_mod_i32(var_3.a.a.x, -5335i)) >> (arg_0.b % 32u)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_0.x, 17u)], vec4<i32>(2147483647i, -2147483647i, firstLeadingBit(_wgslsmith_add_i32(func_2(Struct_1(vec2<f32>(-1000f, -519f), arg_0.x, u_input.a.x, 1819f)), ~38917i)), _wgslsmith_div_i32(27175i, -(i32(-1i) * -1434i))), !vec3<bool>(any(vec4<bool>(true, true, true, false)), true, !all(vec2<bool>(false, false))), Struct_2(firstLeadingBit(~(~vec2<i32>(0i, -1i))), ~((u_input.a.xz << (vec2<u32>(u_input.a.x, 40037u) % vec2<u32>(32u))) >> ((vec2<u32>(arg_0.x, 34740u) | u_input.a.xz) % vec2<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(408f - 1186f), _wgslsmith_f_op_f32(abs(699f))), _wgslsmith_sub_u32(arg_0.x & arg_0.x, arg_0.x), 0u << (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1800f, -1439f)))), !(-42051i == (-35423i << (u_input.a.x % 32u))), true & all(vec4<bool>(true, false, true, false))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1000f * -288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-605f)))), _wgslsmith_dot_vec3_u32(u_input.a, abs(arg_0)), _wgslsmith_dot_vec2_u32(arg_0.zz, u_input.a.yz) << (~5856u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-680f - -250f))));
    var var_1 = var_0.a.a.x;
    let var_2 = !var_0.c.xy;
    var var_3 = max(4294967295u, reverseBits(~10408u));
    var var_4 = var_0.c;
    return Struct_4(Struct_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0.d.a.x), vec2<i32>(var_0.a.a.x, var_0.b.x), abs(vec2<i32>(var_0.b.x, 22006i))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 34006u)), u_input.a.zz) | firstLeadingBit(arg_0.xz), var_0.a.c, false, -func_3(Struct_5(var_0.d.a.x), vec4<i32>(var_0.d.a.x, var_0.b.x, 0i, -2147483647i), global0[_wgslsmith_index_u32(70199u, 17u)]) <= 0i), _wgslsmith_f_op_f32(min(-851f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(round(280f)))), -1057f)))), ~_wgslsmith_mult_u32(~51151u, arg_0.x) > ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, 2487u), arg_0 << (vec3<u32>(u_input.a.x, var_0.a.c.b, u_input.a.x) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 17>();
    let var_0 = func_1(~(~firstLeadingBit(vec3<u32>(38256u, 8975u, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.b);
    var var_2 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.a.a.x, 20367i), _wgslsmith_div_vec4_i32(vec4<i32>(8039i, -2147483647i, 44091i, var_0.a.a.x), vec4<i32>(76145i, var_0.a.a.x, 1i, var_0.a.a.x))), 6633i, -reverseBits(0i)), vec3<i32>(-_wgslsmith_add_i32(2147483647i, var_0.a.a.x), ~1i, _wgslsmith_mod_i32(var_0.a.a.x >> (42672u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.x, 1i, var_0.a.a.x), vec3<i32>(var_0.a.a.x, var_0.a.a.x, 2147483647i))))));
    let var_3 = 14769u;
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~var_2.a, 2147483647i), vec3<i32>(-1i, var_2.a, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 17162u, 12241u) | ~var_3, reverseBits(_wgslsmith_mult_u32(3088u, 21326u)), ~max(41821u, var_0.a.c.b), min(_wgslsmith_mult_u32(0u, u_input.a.x), u_input.a.x)), ~max(vec4<u32>(u_input.a.x, u_input.a.x, var_0.a.c.b, u_input.a.x), vec4<u32>(4294967295u, var_0.a.c.c, 1u, 0u) | vec4<u32>(1u, 1u, 17886u, 23525u))), -399f, ~(~(-(var_0.a.a.x << (u_input.a.x % 32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, 614f), vec3<f32>(1552f, 1000f, var_0.a.c.d))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, var_0.a.c.d, var_0.a.c.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, var_0.a.c.d, -124f), vec3<f32>(-1000f, -931f, 603f))))), !vec3<bool>(true, var_0.c, false)))));
}

