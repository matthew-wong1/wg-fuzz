struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(Struct_1(vec2<u32>(12582u, 38496u), 11767u, false, vec4<u32>(21419u, 1u, 0u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 1u), 64531u, false, vec4<u32>(0u, 24481u, 0u, 28691u))), Struct_2(Struct_1(vec2<u32>(1u, 0u), 4294967295u, false, vec4<u32>(4294967295u, 1u, 0u, 9319u)), Struct_1(vec2<u32>(39565u, 45108u), 4294967295u, true, vec4<u32>(4294967295u, 35138u, 4294967295u, 25022u))), Struct_2(Struct_1(vec2<u32>(4785u, 52603u), 922u, false, vec4<u32>(0u, 22368u, 83820u, 1u)), Struct_1(vec2<u32>(1u, 0u), 50764u, true, vec4<u32>(1u, 0u, 0u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 33126u), 1u, false, vec4<u32>(0u, 0u, 158420u, 4294967295u)), Struct_1(vec2<u32>(0u, 49171u), 0u, true, vec4<u32>(0u, 53314u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 77711u), 4294967295u, true, vec4<u32>(4294967295u, 26117u, 1u, 11509u)), Struct_1(vec2<u32>(0u, 38615u), 14062u, false, vec4<u32>(52255u, 0u, 4294967295u, 0u))), Struct_2(Struct_1(vec2<u32>(1u, 38444u), 4294967295u, true, vec4<u32>(4294967295u, 84658u, 4294967295u, 1u)), Struct_1(vec2<u32>(1u, 39082u), 14547u, false, vec4<u32>(1u, 0u, 0u, 23100u))), Struct_2(Struct_1(vec2<u32>(14844u, 33141u), 9698u, false, vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(vec2<u32>(50996u, 50071u), 4294967295u, false, vec4<u32>(4294967295u, 20257u, 24499u, 5032u))), Struct_2(Struct_1(vec2<u32>(0u, 9442u), 4294967295u, false, vec4<u32>(0u, 4294967295u, 16457u, 4294967295u)), Struct_1(vec2<u32>(0u, 6709u), 4294967295u, true, vec4<u32>(3789u, 1u, 0u, 30598u))), Struct_2(Struct_1(vec2<u32>(34100u, 86277u), 53514u, false, vec4<u32>(1u, 55713u, 0u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 1u), 23852u, false, vec4<u32>(38179u, 1u, 4294967295u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 0u), 43246u, false, vec4<u32>(0u, 4294967295u, 0u, 11196u)), Struct_1(vec2<u32>(0u, 4294967295u), 53041u, true, vec4<u32>(4294967295u, 4294967295u, 34137u, 37973u))), Struct_2(Struct_1(vec2<u32>(24979u, 1u), 0u, true, vec4<u32>(57996u, 0u, 60110u, 1u)), Struct_1(vec2<u32>(22864u, 13997u), 32417u, false, vec4<u32>(0u, 4294967295u, 0u, 28412u))), Struct_2(Struct_1(vec2<u32>(1u, 1u), 0u, false, vec4<u32>(4294967295u, 4294967295u, 17026u, 0u)), Struct_1(vec2<u32>(1u, 27361u), 4294967295u, true, vec4<u32>(11882u, 4294967295u, 1u, 0u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u, true, vec4<u32>(8328u, 126623u, 74299u, 11606u)), Struct_1(vec2<u32>(24302u, 5485u), 0u, true, vec4<u32>(26956u, 0u, 1u, 1u))), Struct_2(Struct_1(vec2<u32>(41489u, 1u), 22616u, true, vec4<u32>(40915u, 0u, 4294967295u, 0u)), Struct_1(vec2<u32>(16962u, 41524u), 1u, false, vec4<u32>(4294967295u, 1u, 0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 7757u), 72496u, true, vec4<u32>(66629u, 4294967295u, 9661u, 22321u)), Struct_1(vec2<u32>(1u, 28313u), 0u, false, vec4<u32>(4294967295u, 4294967295u, 1u, 24688u))), Struct_2(Struct_1(vec2<u32>(15205u, 4294967295u), 0u, false, vec4<u32>(4294967295u, 18709u, 34139u, 1467u)), Struct_1(vec2<u32>(0u, 44376u), 3690u, false, vec4<u32>(1u, 0u, 4294967295u, 4929u))), Struct_2(Struct_1(vec2<u32>(0u, 1u), 37160u, true, vec4<u32>(1u, 34206u, 0u, 9694u)), Struct_1(vec2<u32>(8046u, 0u), 16843u, false, vec4<u32>(0u, 13388u, 4294967295u, 1u))), Struct_2(Struct_1(vec2<u32>(34636u, 1633u), 16750u, false, vec4<u32>(54741u, 1u, 34243u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u), 27628u, true, vec4<u32>(25068u, 0u, 4294967295u, 0u))), Struct_2(Struct_1(vec2<u32>(3811u, 33884u), 0u, false, vec4<u32>(0u, 5167u, 0u, 1u)), Struct_1(vec2<u32>(19003u, 1u), 6632u, false, vec4<u32>(20871u, 4294967295u, 23204u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(432u, 47599u), 1u, true, vec4<u32>(4294967295u, 23340u, 2923u, 34308u)), Struct_1(vec2<u32>(28958u, 14859u), 4294967295u, true, vec4<u32>(0u, 0u, 0u, 37693u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 61417u), 20343u, true, vec4<u32>(0u, 0u, 12538u, 1263u)), Struct_1(vec2<u32>(0u, 0u), 1u, true, vec4<u32>(1u, 0u, 29035u, 44929u))), Struct_2(Struct_1(vec2<u32>(18721u, 2982u), 55736u, false, vec4<u32>(39513u, 4294967295u, 24960u, 51559u)), Struct_1(vec2<u32>(9969u, 0u), 0u, false, vec4<u32>(12338u, 70524u, 0u, 8796u))), Struct_2(Struct_1(vec2<u32>(1u, 22889u), 0u, false, vec4<u32>(0u, 0u, 4978u, 1u)), Struct_1(vec2<u32>(37084u, 73000u), 4294967295u, false, vec4<u32>(24941u, 4294967295u, 4294967295u, 1u))), Struct_2(Struct_1(vec2<u32>(68716u, 74295u), 17407u, false, vec4<u32>(4294967295u, 18483u, 4294967295u, 24631u)), Struct_1(vec2<u32>(1543u, 11067u), 1u, false, vec4<u32>(103625u, 54637u, 1u, 20523u))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, -770f)) + vec2<f32>(_wgslsmith_f_op_f32(-1000f * 2454f), _wgslsmith_f_op_f32(-1221f - -264f))))));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return select(vec2<bool>(_wgslsmith_f_op_f32(floor(var_0.x)) != 236f, any(vec4<bool>(true, true, true, true))), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(true, true));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f + 390f) + 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-673f * 2591f) * _wgslsmith_div_f32(971f, -1380f))) - _wgslsmith_f_op_f32(-1018f - -849f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(f32(-1f) * -2276f))));
    global0 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -545f);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return arg_2.b.d;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(_wgslsmith_sub_vec4_u32(~(u_input.c | vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), func_3(Struct_1(vec2<u32>(0u, u_input.c.x), 0u, false, vec4<u32>(u_input.c.x, u_input.c.x, 37560u, u_input.c.x)), ~u_input.c.x, Struct_2(Struct_1(u_input.c.zy, u_input.c.x, false, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u)), Struct_1(vec2<u32>(33255u, u_input.c.x), u_input.c.x, false, vec4<u32>(1u, u_input.c.x, 1u, 65408u))))) & ~u_input.c);
    let var_1 = Struct_3(Struct_1(~(~u_input.c.xz), func_3(Struct_1(vec2<u32>(u_input.c.x, 1u), u_input.c.x, false, vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.c.x)), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), Struct_2(Struct_1(var_0.yz, 35035u, false, vec4<u32>(var_0.x, var_0.x, 58336u, var_0.x)), Struct_1(var_0.zy, 4294967295u, true, vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)))).x ^ u_input.c.x, any(vec2<bool>(true, true)), var_0), min(vec3<i32>(u_input.b.x, -u_input.b.x, u_input.b.x) & vec3<i32>(_wgslsmith_add_i32(39348i, 7859i), u_input.b.x & -1i, 44110i), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.a) >> (vec3<u32>(51104u, u_input.c.x, var_0.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 17573i, -36186i), vec3<i32>(1i, -34346i, u_input.a), vec3<i32>(45504i, u_input.b.x, u_input.b.x))))));
    global0 = array<Struct_2, 24>();
    let var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-28709i), i32(-1i) * -24076i, var_1.b.x), max(abs(var_1.b), ~var_1.b), var_1.b), var_1.b), ~10079i, firstLeadingBit(var_1.b.x), var_1.b.x);
    let var_3 = global0[_wgslsmith_index_u32(~var_0.x, 24u)];
    return Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, var_1.a.b >> (var_1.a.a.x % 32u)), vec2<u32>(_wgslsmith_add_u32(var_3.a.a.x, 11485u), var_3.a.b | 75210u)) & vec2<u32>(max(4294967295u, 1u), var_1.a.a.x), var_0.x, var_1.b.x <= u_input.a, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, var_3.a.d.x), _wgslsmith_add_u32(8534u, min(22595u, var_1.a.b))), select(~var_0.x, ~var_1.a.a.x, true), reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_3.b.d.zw, vec2<u32>(var_3.b.b, u_input.c.x)), var_0.x ^ var_0.x)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    var var_0 = all(!select(vec2<bool>(true, true), func_1(), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1014f, -436f, -402f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1364f, 1440f, 632f)), true)))))));
    var_0 = false;
    var var_2 = func_2();
    global0 = array<Struct_2, 24>();
    var var_3 = Struct_2(func_2(), func_2());
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(_wgslsmith_add_u32(firstTrailingBit(~1u), ~(var_3.a.a.x << (u_input.c.x % 32u))), _wgslsmith_dot_vec2_u32(u_input.c.zy, ~min(vec2<u32>(0u, var_2.b), var_3.b.a))), _wgslsmith_mult_u32(firstTrailingBit(var_3.b.d.x), ~11164u)), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.yxx, 1i, var_1.xy);
}

