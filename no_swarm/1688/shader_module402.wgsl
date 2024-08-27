struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(true, true)), Struct_4(vec2<i32>(36481i, 0i), vec2<bool>(true, false)), Struct_4(vec2<i32>(12309i, -32416i), vec2<bool>(false, true)), Struct_4(vec2<i32>(-5450i, -34085i), vec2<bool>(true, false)), Struct_4(vec2<i32>(i32(-2147483648), -31971i), vec2<bool>(false, true)), Struct_4(vec2<i32>(-10197i, 0i), vec2<bool>(false, true)), Struct_4(vec2<i32>(0i, 51876i), vec2<bool>(false, false)), Struct_4(vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false)), Struct_4(vec2<i32>(38775i, 0i), vec2<bool>(false, true)), Struct_4(vec2<i32>(66308i, -1i), vec2<bool>(false, true)), Struct_4(vec2<i32>(-14076i, i32(-2147483648)), vec2<bool>(true, false)), Struct_4(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true)), Struct_4(vec2<i32>(5281i, i32(-2147483648)), vec2<bool>(false, false)), Struct_4(vec2<i32>(59666i, i32(-2147483648)), vec2<bool>(false, true)), Struct_4(vec2<i32>(45516i, 1i), vec2<bool>(true, true)), Struct_4(vec2<i32>(-31990i, -1i), vec2<bool>(true, false)), Struct_4(vec2<i32>(84i, i32(-2147483648)), vec2<bool>(false, true)), Struct_4(vec2<i32>(15635i, -1i), vec2<bool>(true, false)), Struct_4(vec2<i32>(0i, -21648i), vec2<bool>(true, true)), Struct_4(vec2<i32>(12191i, 13761i), vec2<bool>(true, true)), Struct_4(vec2<i32>(10682i, 4642i), vec2<bool>(false, false)), Struct_4(vec2<i32>(0i, -6509i), vec2<bool>(false, false)), Struct_4(vec2<i32>(-1i, 57348i), vec2<bool>(true, true)), Struct_4(vec2<i32>(5144i, -10104i), vec2<bool>(false, false)), Struct_4(vec2<i32>(-3449i, -1i), vec2<bool>(false, false)), Struct_4(vec2<i32>(-40448i, -25294i), vec2<bool>(false, true)), Struct_4(vec2<i32>(-36470i, 0i), vec2<bool>(false, true)), Struct_4(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = !(arg_0 & !all(vec2<bool>(false, arg_0)));
    let var_1 = ~firstTrailingBit(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.c, 49521u, 98084u)), select(vec3<u32>(u_input.a, 1u, u_input.c), countOneBits(vec3<u32>(56527u, 1182u, 1u)), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, arg_0), arg_0))));
    global2 = array<Struct_4, 28>();
    let var_2 = ~select(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 60179u, u_input.c, var_1.x), vec4<u32>(4294967295u, u_input.c, 4294967295u, 46390u)), abs(vec4<u32>(4294967295u, 38656u, u_input.c, var_1.x))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.x, u_input.a, u_input.c), ~vec4<u32>(u_input.c, var_1.x, var_1.x, var_1.x), ~vec4<u32>(0u, 1u, 0u, u_input.a)), ~select(vec4<u32>(16911u, 62951u, u_input.c, 634u), vec4<u32>(u_input.a, u_input.a, 45516u, u_input.a), var_0)), !(!select(vec4<bool>(var_0, arg_0, true, var_0), vec4<bool>(arg_0, true, arg_0, var_0), false)));
    var var_3 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(max(var_2.wxw, _wgslsmith_sub_vec3_u32(vec3<u32>(26324u, var_1.x, 5109u), var_2.ywz | var_2.yzx)), reverseBits(var_1), var_2.wxy), var_1);
    return _wgslsmith_f_op_f32(global0.x + -643f);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = arg_2.d.zz;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(true, arg_0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.a.c, arg_2.c.c), global1.xz)), _wgslsmith_f_op_vec2_f32(-global1.xz), true)), global1.xy)), 1924f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + global1.x));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(_wgslsmith_mod_u32(0u, 1u)), ~32050u, min(4294967295u, 1u)), ~arg_2.e.xyz);
    var var_3 = !(!(!vec4<bool>(var_0.x > 38002u, !arg_2.c.e.x, all(vec3<bool>(false, false, true)), true | arg_0.e.x)));
    var var_4 = 7066u;
    return Struct_4(~firstTrailingBit(~vec2<i32>(u_input.d.x, u_input.d.x)), arg_2.a.e);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(-((vec3<i32>(arg_0.a.x, -5945i, 0i) >> (arg_3.xxy % vec3<u32>(32u))) << (~vec3<u32>(arg_3.x, 4294967295u, arg_3.x) % vec3<u32>(32u))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2484f)) * _wgslsmith_f_op_f32(select(global0.x, 194f, true)))), 2147483647i, !(!vec2<bool>(arg_0.b.x, false))), -1834f, Struct_1(max(vec3<i32>(arg_0.a.x, select(35908i, u_input.b.x, false), abs(-237i)), ~vec3<i32>(arg_0.a.x, 26408i, 87837i)), _wgslsmith_sub_u32(arg_2.x ^ arg_3.x, 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -156f)))), u_input.b.x, !arg_1), _wgslsmith_mult_vec3_u32(arg_3.zxw >> (_wgslsmith_mod_vec3_u32(~arg_3.wwz, arg_3.yxx) % vec3<u32>(32u)), vec3<u32>(abs(1u), 0u, arg_2.x)), arg_3);
    let var_1 = Struct_3(0u >> (countOneBits(_wgslsmith_mod_u32(arg_2.x, 0u)) % 32u));
    var var_2 = 42505i;
    var_0 = Struct_2(Struct_1((abs(vec3<i32>(1i, 68755i, arg_0.a.x)) | vec3<i32>(var_0.a.a.x, var_0.a.d, -34220i)) >> (min(var_0.e.wyx, arg_3.zzz >> (vec3<u32>(arg_3.x, 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_3.x, _wgslsmith_f_op_f32(var_0.c.c + -793f), ~u_input.d.x, !vec2<bool>(false, arg_0.b.x)), _wgslsmith_div_f32(global0.x, -1443f), var_0.a, max(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.d, vec3<u32>(40773u, 4294967295u, var_1.a), vec3<u32>(var_0.a.b, arg_3.x, 13665u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 49670u, 9504u), arg_3.www)), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(59495u, var_0.c.b, arg_3.x)), arg_3.wyx), ~_wgslsmith_sub_vec3_u32(vec3<u32>(37856u, arg_3.x, arg_2.x), arg_3.yzx)), reverseBits(~vec3<u32>(var_0.c.b, 0u, var_0.a.b))), max(arg_3, arg_3));
    var var_3 = arg_0.b.x;
    return !arg_0.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = array<Struct_4, 28>();
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -1283f))), _wgslsmith_div_f32(global1.x, 160f)));
    let var_0 = min(_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.b.x, 0i) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.a, 67485u)) % vec2<u32>(32u)), -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, 2147483647i), u_input.d, vec2<i32>(arg_0, u_input.b.x)), u_input.d)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(arg_0, _wgslsmith_mult_i32(-u_input.b.x, arg_0 ^ u_input.d.x))));
    let var_1 = Struct_1(-vec3<i32>(arg_0, select(-arg_0, ~arg_0, u_input.a >= u_input.c), _wgslsmith_div_i32(arg_0, arg_0)), firstTrailingBit(u_input.a), -214f, ~var_0.x, select(vec2<bool>(false, false), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), !func_4(func_2(Struct_1(vec3<i32>(arg_0, -14577i, arg_0), 30426u, -241f, 1i, vec2<bool>(false, false)), -151f, Struct_2(Struct_1(vec3<i32>(22308i, 8402i, -9370i), 29168u, global0.x, -40543i, vec2<bool>(false, false)), 901f, Struct_1(vec3<i32>(var_0.x, 2147483647i, arg_0), u_input.c, global0.x, u_input.d.x, vec2<bool>(true, false)), vec3<u32>(1u, 8160u, 9002u), vec4<u32>(u_input.a, 7874u, u_input.a, u_input.a))), vec2<bool>(true, true), _wgslsmith_mult_vec2_u32(vec2<u32>(60560u, u_input.a), vec2<u32>(3269u, u_input.a)), abs(vec4<u32>(u_input.c, u_input.a, u_input.c, 51073u)))));
    var var_2 = Struct_2(var_1, global0.x, var_1, vec3<u32>(select(_wgslsmith_sub_u32(1u, firstLeadingBit(u_input.a)), ~select(var_1.b, var_1.b, var_1.e.x), var_1.e.x), 35284u, var_1.b), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b, u_input.c & 55919u, _wgslsmith_div_u32(u_input.c, var_1.b), var_1.b), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, 0u, 4294967295u, var_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(5511u, var_1.b, 32247u, u_input.a), vec4<u32>(u_input.c, 15334u, 12146u, u_input.c)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-_wgslsmith_dot_vec2_i32(~(-vec2<i32>(2253i, u_input.d.x)), firstTrailingBit(u_input.b)));
    let var_1 = global0.x;
    let var_2 = select(vec4<bool>(var_0.e.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), vec2<i32>(2147483647i, 0i)) < 1i, var_0.e.x, var_0.e.x), !(!select(select(vec4<bool>(false, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, true), var_0.e.x), select(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x), vec4<bool>(false, false, var_0.e.x, var_0.e.x), vec4<bool>(true, var_0.e.x, true, var_0.e.x)), true)), var_0.e.x);
    let var_3 = Struct_2(var_0, var_0.c, func_1(-_wgslsmith_mod_i32(_wgslsmith_add_i32(4616i, -2147483647i), _wgslsmith_add_i32(u_input.d.x, var_0.a.x))), vec3<u32>(abs(max(~u_input.c, ~var_0.b)), ~var_0.b, max(reverseBits(_wgslsmith_mod_u32(u_input.a, var_0.b)), 4294967295u)), firstLeadingBit(reverseBits(vec4<u32>(54402u, 4294967295u, ~29304u, var_0.b))));
    var var_4 = vec3<bool>(!var_3.c.e.x, var_3.a.e.x, all(select(select(select(var_2.xzy, var_2.wxx, vec3<bool>(true, var_0.e.x, var_0.e.x)), select(vec3<bool>(var_3.c.e.x, var_3.c.e.x, false), vec3<bool>(true, false, true), vec3<bool>(var_0.e.x, true, true)), select(var_2.xyz, var_2.yzy, var_3.a.e.x)), select(var_2.zwz, select(vec3<bool>(var_2.x, var_2.x, true), var_2.xyx, vec3<bool>(var_2.x, var_3.a.e.x, var_0.e.x)), select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, true, true), vec3<bool>(var_3.a.e.x, var_3.c.e.x, false))), func_4(Struct_4(vec2<i32>(u_input.d.x, u_input.b.x), var_2.yw), var_3.a.e, var_3.d.xx, vec4<u32>(16628u, 46696u, 41329u, 22595u)).x && var_2.x)));
    global0 = global1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1491f, 806f, -1565f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - 880f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1267f))))), -1126f), 2374f);
}

