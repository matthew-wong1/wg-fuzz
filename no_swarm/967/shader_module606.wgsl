struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec4<i32>(4589i, -1i, 1i, 1i), vec4<bool>(true, true, true, false), 38185i, false, vec2<f32>(219f, -238f)), Struct_4(vec4<i32>(29646i, i32(-2147483648), 23508i, 2147483647i), vec4<bool>(false, false, true, true), 0i, true, vec2<f32>(434f, 1000f)), Struct_4(vec4<i32>(-22940i, 2147483647i, -24624i, -1i), vec4<bool>(true, true, true, false), 0i, true, vec2<f32>(-1000f, 3290f)), Struct_4(vec4<i32>(-46405i, -1i, 25183i, -1i), vec4<bool>(false, false, true, true), 1i, false, vec2<f32>(748f, 1050f)), Struct_4(vec4<i32>(1i, -4626i, 1i, 0i), vec4<bool>(true, true, false, false), 29015i, true, vec2<f32>(-420f, -1992f)), Struct_4(vec4<i32>(-55233i, 3405i, -22212i, i32(-2147483648)), vec4<bool>(true, false, false, true), 7165i, true, vec2<f32>(-1000f, 617f)), Struct_4(vec4<i32>(-85144i, -22590i, 1i, 2147483647i), vec4<bool>(false, false, false, true), 1i, true, vec2<f32>(-252f, -349f)), Struct_4(vec4<i32>(-1i, -23579i, 2147483647i, -63063i), vec4<bool>(false, true, false, true), -1i, false, vec2<f32>(-550f, -1008f)), Struct_4(vec4<i32>(i32(-2147483648), 0i, -66252i, i32(-2147483648)), vec4<bool>(true, true, false, true), 9777i, false, vec2<f32>(-1339f, 782f)), Struct_4(vec4<i32>(54777i, -182i, -7982i, -29522i), vec4<bool>(true, false, true, false), -8928i, false, vec2<f32>(-340f, -1896f)), Struct_4(vec4<i32>(-4132i, 14989i, 30960i, 7389i), vec4<bool>(true, false, true, true), -1i, false, vec2<f32>(-1092f, -681f)), Struct_4(vec4<i32>(i32(-2147483648), -18i, 34741i, 38098i), vec4<bool>(false, false, true, false), -43767i, false, vec2<f32>(1000f, 1000f)), Struct_4(vec4<i32>(-1i, i32(-2147483648), -55848i, -32529i), vec4<bool>(false, false, false, false), 32360i, false, vec2<f32>(-1000f, -1000f)), Struct_4(vec4<i32>(i32(-2147483648), -36883i, 1i, 25603i), vec4<bool>(true, true, false, true), 2147483647i, true, vec2<f32>(887f, -357f)), Struct_4(vec4<i32>(14471i, i32(-2147483648), i32(-2147483648), -1i), vec4<bool>(false, true, false, false), i32(-2147483648), true, vec2<f32>(267f, 667f)), Struct_4(vec4<i32>(16844i, 2147483647i, -18309i, 1i), vec4<bool>(true, false, true, true), 0i, false, vec2<f32>(-855f, 174f)), Struct_4(vec4<i32>(1i, -55408i, 34139i, -53696i), vec4<bool>(true, false, false, false), 50183i, true, vec2<f32>(120f, 661f)), Struct_4(vec4<i32>(-11406i, i32(-2147483648), 2147483647i, 17679i), vec4<bool>(true, false, false, true), 4330i, true, vec2<f32>(855f, -1238f)), Struct_4(vec4<i32>(1i, -1054i, 0i, 2147483647i), vec4<bool>(false, false, true, true), -44968i, false, vec2<f32>(-1039f, 739f)), Struct_4(vec4<i32>(11571i, 24871i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, false), 18353i, true, vec2<f32>(-1000f, 417f)), Struct_4(vec4<i32>(1i, 37865i, 1i, 35871i), vec4<bool>(false, true, false, false), -59257i, true, vec2<f32>(1124f, -613f)), Struct_4(vec4<i32>(i32(-2147483648), -24757i, 39376i, 19672i), vec4<bool>(false, true, false, true), 2147483647i, false, vec2<f32>(1000f, 1000f)), Struct_4(vec4<i32>(i32(-2147483648), 57929i, 0i, 84173i), vec4<bool>(true, true, false, false), 2147483647i, true, vec2<f32>(-165f, -492f)), Struct_4(vec4<i32>(-29041i, 21980i, 1i, -25239i), vec4<bool>(true, true, false, false), -29868i, true, vec2<f32>(537f, -943f)), Struct_4(vec4<i32>(0i, 24078i, 1i, 34494i), vec4<bool>(false, false, true, true), i32(-2147483648), false, vec2<f32>(-2139f, 1476f)), Struct_4(vec4<i32>(-50268i, -46746i, 6298i, i32(-2147483648)), vec4<bool>(true, false, true, true), -38750i, true, vec2<f32>(-216f, -758f)), Struct_4(vec4<i32>(-28348i, i32(-2147483648), 21567i, 0i), vec4<bool>(false, true, true, true), 0i, true, vec2<f32>(-1087f, -1299f)), Struct_4(vec4<i32>(-1i, 35517i, 0i, 0i), vec4<bool>(true, false, false, true), -1i, true, vec2<f32>(-1000f, -850f)), Struct_4(vec4<i32>(-1622i, -13191i, -44913i, -40031i), vec4<bool>(false, false, true, false), i32(-2147483648), true, vec2<f32>(206f, -810f)), Struct_4(vec4<i32>(4927i, 20657i, 1i, -9106i), vec4<bool>(false, false, false, false), -23142i, true, vec2<f32>(1783f, 1127f)), Struct_4(vec4<i32>(3836i, 2147483647i, -49158i, -49119i), vec4<bool>(true, true, true, true), 8861i, true, vec2<f32>(-194f, 1000f)));

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> u32 {
    return ~(arg_2.a.b.x ^ (((arg_1 >> (4294967295u % 32u)) >> (8793u % 32u)) ^ arg_0));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> i32 {
    global1 = 81848u;
    var var_0 = arg_1.b.zx;
    var var_1 = Struct_3(Struct_2(Struct_1(any(!vec3<bool>(var_0.x, true, true)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, u_input.d, u_input.c), vec3<u32>(4294967295u, 0u, u_input.c)), vec3<u32>(u_input.e.x, 1u, 4294967295u)), !arg_1.b.zz, abs(arg_1.a), ~arg_1.a), Struct_1(arg_1.b.x, vec3<u32>(38234u, _wgslsmith_div_u32(28524u, u_input.d), ~4294967295u), vec2<bool>(!var_0.x, 942f <= arg_1.e.x), vec4<i32>(1i, arg_1.a.x, ~u_input.a.x, firstLeadingBit(arg_1.a.x)), arg_1.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-317f, arg_1.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(534f, 940f) * vec2<f32>(-1385f, arg_1.e.x))))), vec4<bool>(arg_1.d, !select(arg_1.d, arg_1.d, false), arg_1.d, select(var_0.x, var_0.x || true, true))), Struct_1(~1i != (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.a.x, 1i), vec3<i32>(arg_0, 44531i, arg_0)) ^ (arg_0 & u_input.a.x)), vec3<u32>(u_input.d ^ ~87510u, _wgslsmith_clamp_u32(~u_input.b, 25709u, u_input.d & 4294967295u), 38926u), arg_1.b.wz, -reverseBits(abs(vec4<i32>(1i, -34054i, -88058i, u_input.a.x))), vec4<i32>(~(-arg_0), -54830i, 10629i, -arg_0 & ~arg_0)), Struct_2(Struct_1(any(select(arg_1.b.www, arg_1.b.xwx, arg_1.b.xxz)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.c), vec3<u32>(u_input.b, u_input.d, u_input.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.c, u_input.b, u_input.b), vec3<u32>(11555u, 1u, 3251u))), !select(vec2<bool>(arg_1.d, var_0.x), arg_1.b.yy, true), ~_wgslsmith_clamp_vec4_i32(arg_1.a, arg_1.a, vec4<i32>(arg_0, arg_0, 13222i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, -2147483647i) | vec4<i32>(arg_1.c, arg_0, u_input.a.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0, arg_1.c, 10461i), arg_1.a))), Struct_1(arg_1.b.x, ~countOneBits(vec3<u32>(4294967295u, u_input.d, 1u)), select(vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, arg_1.d), arg_1.b.yy), select(vec2<bool>(var_0.x, var_0.x), arg_1.b.wy, var_0.x)), _wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.a.x, arg_1.c, arg_1.c, -1i), arg_1.a), abs(vec4<i32>(0i, u_input.a.x, 2147483647i, arg_0))), reverseBits(-arg_1.a)), _wgslsmith_f_op_vec2_f32(-arg_1.e), vec4<bool>(arg_1.d, false, arg_1.b.x, arg_1.b.x)), vec4<u32>(firstLeadingBit(abs(32145u)), _wgslsmith_mult_u32(reverseBits(~u_input.c), ~4294967295u ^ u_input.b), min(~1u, u_input.e.x), min(u_input.e.x, 4294967295u)), 10625u);
    global1 = select(0u, _wgslsmith_sub_u32(~(~countOneBits(1u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 0u), var_1.a.b.b.zz), vec2<u32>(var_1.a.b.b.x, 9737u))), any(!select(arg_1.b.xxy, var_1.a.d.zww, vec3<bool>(true, true, false))) && (var_1.a.b.c.x | (!arg_1.b.x | (36829u >= u_input.b))));
    var var_2 = false;
    return _wgslsmith_clamp_i32(i32(-1i) * -(i32(-1i) * -u_input.a.x), _wgslsmith_add_i32((-2147483647i << (_wgslsmith_div_u32(31857u, u_input.b) % 32u)) >> (abs(func_2(u_input.d, var_1.b.b.x, var_1.c, arg_1.e.x)) % 32u), _wgslsmith_sub_i32(i32(-1i) * -2994i, _wgslsmith_sub_i32(-39185i, -25449i))), 2147483647i);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    global0 = array<Struct_4, 31>();
    let var_0 = func_3(2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.b.b.x, _wgslsmith_clamp_u32(arg_3.x, _wgslsmith_sub_u32(select(0u, arg_3.x, arg_2.b.c.x), firstLeadingBit(4148u)), max(max(46703u, arg_3.x), func_2(arg_2.b.b.x, u_input.c, Struct_2(arg_2.b, Struct_1(true, vec3<u32>(13422u, u_input.e.x, 103207u), vec2<bool>(arg_0, arg_1.x), vec4<i32>(arg_2.b.e.x, 49627i, 32017i, u_input.a.x), arg_2.a.d), arg_2.c, vec4<bool>(arg_1.x, false, arg_2.a.a, false)), 1388f)))), 31u)]);
    let var_1 = abs((min(_wgslsmith_mult_u32(arg_3.x, 90781u), u_input.b | arg_3.x) & 4294967295u) >> (arg_3.x % 32u));
    var var_2 = 100012u;
    let var_3 = 1u;
    return arg_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(340f - -482f))))), _wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec3<bool>(false, false, true), Struct_2(Struct_1(false, vec3<u32>(u_input.e.x, u_input.d, 4294967295u), vec2<bool>(false, false), vec4<i32>(u_input.a.x, 44229i, -21328i, -30245i), vec4<i32>(-2858i, 0i, 2147483647i, -685i)), Struct_1(true, vec3<u32>(18954u, 0u, 14964u), vec2<bool>(false, false), vec4<i32>(u_input.a.x, -39485i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, -50508i, u_input.a.x, u_input.a.x)), vec2<f32>(869f, -1553f), vec4<bool>(false, false, true, true)), vec4<u32>(77522u, 1u, 1u, 10546u)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f - 1000f), _wgslsmith_f_op_f32(trunc(702f)))))));
    global1 = ~4294967295u;
    var var_1 = _wgslsmith_mod_i32(~countOneBits(-2147483647i), -41413i);
    global0 = array<Struct_4, 31>();
    var_1 = u_input.a.x;
    var var_2 = vec3<i32>(1i, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(-1i >> (u_input.c % 32u), -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -16386i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, 11546i)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 39666i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(vec3<i32>(-20895i, 32027i, u_input.a.x))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 2147483647i)) << (firstTrailingBit(vec4<u32>(u_input.d, u_input.b, 8681u, 33983u)) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, reverseBits(u_input.a.x), _wgslsmith_sub_i32(-1i, u_input.a.x), 27241i)), firstLeadingBit(select(select(vec4<i32>(-2147483647i, 1i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -1i, -1i), false), max(vec4<i32>(24802i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, 52811i, u_input.a.x)), select(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -451f, var_0.x, var_0.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(839f, var_0.x, -1159f, 1271f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 280f, var_0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-807f, var_0.x, var_0.x, var_0.x) * vec4<f32>(545f, var_0.x, var_0.x, var_0.x))))), 34582u ^ _wgslsmith_mod_u32(u_input.b, u_input.b), vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-39616i, ~2147483647i, -25751i, -var_2.x), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_2.x, 0i, 2147483647i, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i))), -29453i, countOneBits(u_input.a.x)), vec2<u32>(abs(func_2(46647u, 1u, Struct_2(Struct_1(true, vec3<u32>(u_input.e.x, u_input.b, 4294967295u), vec2<bool>(false, false), vec4<i32>(23136i, var_2.x, var_2.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -1i, -1i)), Struct_1(false, vec3<u32>(82371u, u_input.c, u_input.d), vec2<bool>(false, true), vec4<i32>(2147483647i, u_input.a.x, var_2.x, u_input.a.x), vec4<i32>(var_2.x, var_2.x, -12986i, var_2.x)), var_0.xy, vec4<bool>(true, true, true, true)), -492f)) & u_input.d, u_input.c), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))))));
}

