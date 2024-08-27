struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17>;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global2: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(-1203f, Struct_3(true, vec2<u32>(10988u, 24098u), vec2<i32>(-49646i, 20246i)), -852f, Struct_3(false, vec2<u32>(73416u, 0u), vec2<i32>(0i, 0i)), Struct_1(vec2<i32>(0i, 0i), 1u)), Struct_4(766f, Struct_3(true, vec2<u32>(46238u, 87414u), vec2<i32>(737i, 0i)), -1215f, Struct_3(true, vec2<u32>(91180u, 41973u), vec2<i32>(-16883i, 46376i)), Struct_1(vec2<i32>(53308i, 2147483647i), 0u)), Struct_4(1000f, Struct_3(true, vec2<u32>(31792u, 31697u), vec2<i32>(1i, -101174i)), -541f, Struct_3(true, vec2<u32>(0u, 1u), vec2<i32>(-71617i, 2147483647i)), Struct_1(vec2<i32>(-10931i, -1i), 4294967295u)), Struct_4(250f, Struct_3(true, vec2<u32>(0u, 1u), vec2<i32>(2147483647i, 172i)), 1000f, Struct_3(false, vec2<u32>(57796u, 14018u), vec2<i32>(21819i, 54600i)), Struct_1(vec2<i32>(-15456i, 1i), 0u)), Struct_4(671f, Struct_3(true, vec2<u32>(4294967295u, 30751u), vec2<i32>(i32(-2147483648), 1820i)), -217f, Struct_3(true, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-11948i, 62420i)), Struct_1(vec2<i32>(-706i, 2147483647i), 0u)), Struct_4(-143f, Struct_3(true, vec2<u32>(1u, 0u), vec2<i32>(35323i, -10747i)), 525f, Struct_3(true, vec2<u32>(9236u, 37312u), vec2<i32>(-20461i, -9942i)), Struct_1(vec2<i32>(16948i, -30858i), 0u)), Struct_4(-812f, Struct_3(false, vec2<u32>(0u, 63300u), vec2<i32>(19437i, 40379i)), 1412f, Struct_3(true, vec2<u32>(6921u, 53483u), vec2<i32>(-42782i, 2147483647i)), Struct_1(vec2<i32>(-13359i, -1i), 1u)), Struct_4(-1000f, Struct_3(true, vec2<u32>(1u, 36387u), vec2<i32>(-21260i, -34360i)), 428f, Struct_3(false, vec2<u32>(0u, 4294967295u), vec2<i32>(-64890i, i32(-2147483648))), Struct_1(vec2<i32>(46877i, 34543i), 38452u)), Struct_4(-1631f, Struct_3(true, vec2<u32>(47496u, 28548u), vec2<i32>(-43279i, 2147483647i)), -237f, Struct_3(false, vec2<u32>(36871u, 0u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(35402i, 0i), 22249u)), Struct_4(413f, Struct_3(true, vec2<u32>(1u, 1u), vec2<i32>(57226i, 0i)), 306f, Struct_3(false, vec2<u32>(37626u, 4294967295u), vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(-70563i, 0i), 9408u)), Struct_4(866f, Struct_3(false, vec2<u32>(4294967295u, 18349u), vec2<i32>(-15735i, i32(-2147483648))), 854f, Struct_3(true, vec2<u32>(0u, 1u), vec2<i32>(73826i, 42111i)), Struct_1(vec2<i32>(-1i, -1i), 62931u)), Struct_4(-666f, Struct_3(true, vec2<u32>(1u, 14264u), vec2<i32>(i32(-2147483648), 39176i)), -812f, Struct_3(true, vec2<u32>(33367u, 129118u), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(19188i, -1i), 1u)), Struct_4(-544f, Struct_3(false, vec2<u32>(77625u, 98382u), vec2<i32>(-16298i, -36082i)), -1000f, Struct_3(true, vec2<u32>(44548u, 0u), vec2<i32>(0i, 8144i)), Struct_1(vec2<i32>(2147483647i, -20187i), 4294967295u)), Struct_4(-1000f, Struct_3(false, vec2<u32>(4294967295u, 1u), vec2<i32>(1i, 14394i)), 805f, Struct_3(false, vec2<u32>(25720u, 1u), vec2<i32>(21821i, 14462i)), Struct_1(vec2<i32>(-1i, 65357i), 45893u)), Struct_4(527f, Struct_3(true, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-44963i, -10304i)), -1489f, Struct_3(true, vec2<u32>(21101u, 23491u), vec2<i32>(-13665i, 38183i)), Struct_1(vec2<i32>(i32(-2147483648), 2461i), 4294967295u)), Struct_4(-302f, Struct_3(true, vec2<u32>(0u, 0u), vec2<i32>(15928i, 12904i)), 273f, Struct_3(false, vec2<u32>(1u, 28638u), vec2<i32>(-29663i, -39847i)), Struct_1(vec2<i32>(17464i, 6493i), 4294967295u)), Struct_4(-266f, Struct_3(true, vec2<u32>(13467u, 0u), vec2<i32>(-1i, 15412i)), 1133f, Struct_3(true, vec2<u32>(108190u, 0u), vec2<i32>(4577i, 31930i)), Struct_1(vec2<i32>(22712i, -1i), 29788u)), Struct_4(-542f, Struct_3(true, vec2<u32>(100915u, 4294967295u), vec2<i32>(27397i, 2147483647i)), -1657f, Struct_3(false, vec2<u32>(0u, 26353u), vec2<i32>(2147483647i, 1i)), Struct_1(vec2<i32>(0i, i32(-2147483648)), 1873u)), Struct_4(426f, Struct_3(true, vec2<u32>(2909u, 0u), vec2<i32>(-22068i, 6986i)), 768f, Struct_3(true, vec2<u32>(0u, 44094u), vec2<i32>(0i, -13828i)), Struct_1(vec2<i32>(1i, 1i), 82890u)), Struct_4(-1721f, Struct_3(true, vec2<u32>(3876u, 1u), vec2<i32>(1i, 0i)), 391f, Struct_3(true, vec2<u32>(4294967295u, 7679u), vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(0i, -1i), 49199u)), Struct_4(1277f, Struct_3(false, vec2<u32>(23914u, 14787u), vec2<i32>(16933i, i32(-2147483648))), -1000f, Struct_3(true, vec2<u32>(15194u, 20008u), vec2<i32>(-639i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), 40988u)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = u_input.a.x;
    global2 = array<Struct_4, 21>();
    var var_1 = Struct_3(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), global1[_wgslsmith_index_u32(var_0, 25u)], false), select(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(var_0, 25u)], false)), vec4<bool>(true, any(vec2<bool>(false, true)), true, all(vec3<bool>(true, false, true))), !(4294967295u <= u_input.a.x))), _wgslsmith_add_vec2_u32(~vec2<u32>(max(1u, u_input.a.x), 60218u), vec2<u32>(51878u, ~(~22057u))), vec2<i32>(-10659i, -1i));
    var var_2 = false;
    var var_3 = u_input.a.zz;
    return var_1.c.x;
}

fn func_2() -> f32 {
    let var_0 = -func_3();
    let var_1 = global2[_wgslsmith_index_u32(0u, 21u)];
    let var_2 = ~4294967295u;
    let var_3 = -var_1.e.a.x;
    let var_4 = Struct_3(var_1.b.a, vec2<u32>(82670u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_2, u_input.a.x, 1u), vec4<u32>(4294967295u, 19669u, var_1.e.b, var_2))) >> (var_1.d.b.x % 32u)), abs(vec2<i32>(-1i, var_1.d.c.x)) | min(var_1.e.a, vec2<i32>(var_3, var_0)));
    return _wgslsmith_f_op_f32(select(var_1.c, -1996f, ((_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, -64251i, var_1.e.a.x, var_1.e.a.x), vec4<i32>(0i, -1i, var_4.c.x, var_3)) >= -var_1.b.c.x) | true) && all(global1[_wgslsmith_index_u32(u_input.a.x << (0u % 32u), 25u)])));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(func_2()), Struct_3(true, u_input.a.xy, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-13519i, 1347i), vec2<i32>(-22409i, -58697i)), abs(vec2<i32>(16017i, -30051i))), countOneBits(vec2<i32>(2147483647i, -4491i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(14322u, u_input.a.x)) % vec2<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(485f))) - -2075f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)), _wgslsmith_f_op_f32(select(1514f, _wgslsmith_f_op_f32(f32(-1f) * -929f), true))))), Struct_3(any(vec3<bool>(true, true, true)), u_input.a.xz, ~(~vec2<i32>(1i, 2147483647i) << (~u_input.a.yx % vec2<u32>(32u)))), Struct_1(firstTrailingBit(select(~vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, 1i), true)), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 5481u) & u_input.a.x, abs(~u_input.a.x))));
    global2 = array<Struct_4, 21>();
    global2 = array<Struct_4, 21>();
    global2 = array<Struct_4, 21>();
    global1 = array<vec4<bool>, 25>();
    return StorageBuffer(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(-var_0.a))))), abs(var_0.b.c) & vec2<i32>(1i, firstLeadingBit(_wgslsmith_clamp_i32(var_0.d.c.x, 1i, -2147483647i))), max(var_0.e.a, select(~(~vec2<i32>(var_0.e.a.x, var_0.e.a.x)), _wgslsmith_clamp_vec2_i32(select(var_0.d.c, var_0.e.a, vec2<bool>(var_0.d.a, var_0.d.a)), -var_0.d.c, -var_0.d.c), vec2<bool>(!var_0.d.a, any(global1[_wgslsmith_index_u32(0u, 25u)])))), vec3<i32>(var_0.e.a.x, ~var_0.e.a.x, ~(-3000i)), ~_wgslsmith_mod_i32(-var_0.d.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.e.a.x, var_0.e.a.x, var_0.b.c.x), vec4<i32>(var_0.b.c.x, -4057i, var_0.d.c.x, var_0.d.c.x))) << (38470u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    let x = u_input.a;
    s_output = func_1();
}

