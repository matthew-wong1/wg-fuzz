struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 15>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(9062u, 0u, 4294967295u), 25964i, 3485u, vec2<bool>(false, false)), Struct_1(vec3<u32>(30605u, 50178u, 0u), 2147483647i, 4294967295u, vec2<bool>(false, true)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), -19945i, 14392u, vec2<bool>(true, true)), Struct_1(vec3<u32>(29307u, 23150u, 1u), -15145i, 0u, vec2<bool>(false, true)), Struct_1(vec3<u32>(20341u, 29258u, 4294967295u), i32(-2147483648), 0u, vec2<bool>(true, false)), Struct_1(vec3<u32>(15888u, 503u, 0u), 2147483647i, 0u, vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 25148u, 13u), 0i, 79897u, vec2<bool>(true, true)), Struct_1(vec3<u32>(3527u, 18987u, 79622u), 14333i, 10001u, vec2<bool>(false, false)), Struct_1(vec3<u32>(0u, 1u, 1u), i32(-2147483648), 37028u, vec2<bool>(true, true)), Struct_1(vec3<u32>(48758u, 72785u, 14847u), 27853i, 0u, vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 0u, 52577u), 2147483647i, 66446u, vec2<bool>(false, true)), Struct_1(vec3<u32>(61748u, 4294967295u, 4294967295u), 44587i, 1u, vec2<bool>(true, false)), Struct_1(vec3<u32>(23604u, 42552u, 0u), i32(-2147483648), 0u, vec2<bool>(true, false)), Struct_1(vec3<u32>(56361u, 4294967295u, 89382u), 45402i, 1u, vec2<bool>(false, false)), Struct_1(vec3<u32>(62515u, 0u, 34503u), -71775i, 87027u, vec2<bool>(false, true)), Struct_1(vec3<u32>(13122u, 4294967295u, 27620u), -1i, 72603u, vec2<bool>(false, true)), Struct_1(vec3<u32>(33560u, 1u, 63089u), 1i, 30357u, vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), -1i, 16161u, vec2<bool>(true, true)), Struct_1(vec3<u32>(12079u, 4294967295u, 16884u), 75820i, 0u, vec2<bool>(false, true)), Struct_1(vec3<u32>(43854u, 1u, 4294967295u), 40690i, 1u, vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 15260u, 4294967295u), -36753i, 34265u, vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 1u, 69683u), -39594i, 4294967295u, vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 10608u, 1u), -14380i, 1u, vec2<bool>(false, true)), Struct_1(vec3<u32>(20993u, 1u, 22043u), 24909i, 28716u, vec2<bool>(false, false)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), -11278i, 1u, vec2<bool>(true, false)));

var<private> global4: vec4<u32> = vec4<u32>(0u, 4294967295u, 29921u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(951f, 447f, false))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1000f + -2344f))), vec2<f32>(1394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f * -520f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1235f, -909f) + vec2<f32>(1030f, -341f)) + _wgslsmith_div_vec2_f32(vec2<f32>(554f, 206f), vec2<f32>(798f, 1000f)))))), global0.d));
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(arg_0, 25u)], 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1680f, 306f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 206f, var_0.x, 1835f), vec4<f32>(-349f, var_0.x, 589f, var_0.x)))))));
    var var_3 = var_2;
    let var_4 = var_3.a;
    return var_3.a.c;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(94020u, global0.c)), 0u), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 3266u, global0.c, 2414u), vec4<u32>(0u, 32952u, 1u, 0u) >> (vec4<u32>(34802u, 13501u, u_input.b, global0.a.x) % vec4<u32>(32u))), func_3(_wgslsmith_mod_u32(u_input.b, u_input.b))), 2400u), _wgslsmith_add_i32(-max(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(103739u, 15u)], vec4<i32>(u_input.a, 13318i, 2147483647i, 8058i)), min(u_input.a, global0.b)), 28541i), ~37401u, global0.d);
    global2 = abs(global1[_wgslsmith_index_u32(~countOneBits(var_0.c), 15u)]);
    var var_1 = min(~(~(vec2<u32>(global0.a.x, u_input.b) | global0.a.zy)), global0.a.zz);
    var var_2 = -2644f;
    let var_3 = true;
    return !select(select(select(vec4<bool>(global0.d.x, false, arg_0, var_3), vec4<bool>(var_3, true, global0.d.x, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), global0.d.x)), select(vec4<bool>(false, false, false, arg_0), !vec4<bool>(global0.d.x, false, true, false), !arg_0), true), !(!select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(var_3, false, var_3, true), true)), arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = !arg_0.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1351f - arg_1.x))) * arg_1.x), _wgslsmith_f_op_f32(min(arg_1.x, -1747f)));
    global2 = -(~abs(select(vec4<i32>(u_input.a, 30736i, 15166i, u_input.c.x) >> (vec4<u32>(global4.x, u_input.b, global0.c, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.a, 1i, u_input.a, global2.x), select(vec4<bool>(global0.d.x, arg_0.x, arg_0.x, false), vec4<bool>(true, true, false, global0.d.x), vec4<bool>(true, global0.d.x, arg_0.x, arg_0.x)))));
    var var_2 = _wgslsmith_div_i32(global2.x, (1i ^ (~global0.b ^ -global0.b)) | 1i);
    var_0 = global0.d.x;
    return Struct_2(Struct_1(~global4.yyz, 0i << (u_input.b % 32u), ~(~4294967295u), !(!arg_0.zz)), select(global4.x >> (1u % 32u), arg_2.x, all(select(arg_0, arg_0, all(arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_1, 429f, var_1) * vec4<f32>(arg_1.x, arg_1.x, 879f, -668f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, var_1, 1000f, var_1), vec4<f32>(var_1, arg_1.x, 1232f, var_1), false))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, var_1, -3118f, arg_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-108f + arg_1.x), arg_1.x, 117f, 139f), !vec4<bool>(false, false, global0.d.x, arg_0.x)))));
}

fn func_1() -> Struct_2 {
    global3 = array<Struct_1, 25>();
    let var_0 = global0.a;
    global1 = array<vec4<i32>, 15>();
    let var_1 = func_4(vec3<bool>(any(func_2(any(vec3<bool>(global0.d.x, false, global0.d.x)))), !global0.d.x, select(_wgslsmith_f_op_f32(sign(-2114f)) <= 978f, ~global2.x != u_input.a, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, -1000f, -961f))) - vec3<f32>(-1289f, _wgslsmith_f_op_f32(max(-1208f, 149f)), _wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_add_vec4_u32(min(~vec4<u32>(0u, 4294967295u, u_input.b, 0u) ^ abs(vec4<u32>(u_input.b, u_input.b, global0.c, global4.x)), abs(~vec4<u32>(global4.x, 4294967295u, u_input.b, 20851u))), ~(~(~vec4<u32>(global0.c, u_input.b, 0u, 0u)))));
    global0 = var_1.a;
    return Struct_2(global3[_wgslsmith_index_u32(~1u, 25u)], 0u, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_sub_u32(2813u, abs(var_0.b));
    let var_2 = select(select(select(select(vec4<bool>(var_0.a.d.x, false, global0.d.x, var_0.a.d.x), !vec4<bool>(global0.d.x, false, var_0.a.d.x, global0.d.x), select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.a.d.x, global0.d.x, false, true), vec4<bool>(true, var_0.a.d.x, true, var_0.a.d.x))), select(!vec4<bool>(global0.d.x, true, false, false), !vec4<bool>(global0.d.x, true, var_0.a.d.x, false), global0.d.x & global0.d.x), !(!vec4<bool>(true, var_0.a.d.x, global0.d.x, false))), vec4<bool>(false, true, any(func_2(var_0.a.d.x).zyx), global0.d.x), func_2(true)), func_2(!(!var_0.a.d.x) || all(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.a.d.x, false, false, global0.d.x), vec4<bool>(var_0.a.d.x, true, var_0.a.d.x, global0.d.x)))), global0.d.x);
    var var_3 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a.a, _wgslsmith_clamp_vec3_u32(var_0.a.a, global4.xzy, var_0.a.a) << (~vec3<u32>(1u, 59409u, global4.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(34021u, var_1, var_1), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(global4.yyw, global0.a), ~global0.a))), 1i, (~(~0u) >> (~global0.c % 32u)) ^ global0.a.x, vec2<bool>(var_2.x, !(var_0.a.d.x && func_2(var_0.a.d.x).x)));
    global0 = func_4(!var_2.wxx, var_0.c.xyy, ~(~(~(vec4<u32>(1u, u_input.b, 0u, 67786u) ^ vec4<u32>(91987u, 4294967295u, var_3.a.x, var_3.c))))).a;
    global4 = min(_wgslsmith_mult_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, var_3.c, 1u, 34204u) >> (vec4<u32>(3565u, 46814u, var_3.a.x, 25593u) % vec4<u32>(32u)), vec4<u32>(30625u, global4.x, 74948u, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, global4.x, 4294967295u, 66205u), vec4<u32>(28845u, var_1, 80286u, 0u), vec4<u32>(24363u, var_0.a.a.x, global4.x, 306u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_3.a.x, u_input.b), 4294967295u, ~var_0.b, firstLeadingBit(3824u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_1, 39955u, var_1, var_1)), vec4<u32>(58355u, 16014u, var_3.a.x, 0u) | vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), ~select(~(vec4<u32>(32934u, global4.x, global4.x, 66641u) << (vec4<u32>(50321u, 83424u, var_3.a.x, u_input.b) % vec4<u32>(32u))), firstLeadingBit(abs(vec4<u32>(1u, var_1, 29726u, global4.x))), ~var_3.a.x > abs(4294967295u)));
    global2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-42592i, reverseBits(0i), -14948i >> (~global0.a.x % 32u), abs(-7862i)), vec4<i32>(-59627i, var_3.b ^ 40511i, -1i, global0.b) & abs(-vec4<i32>(u_input.c.x, global0.b, 1i, u_input.c.x))), reverseBits(~vec4<i32>(func_1().a.b, ~(-44458i), -1i, 0i)));
    let var_4 = func_4(!func_2(true).xyx, vec3<f32>(_wgslsmith_f_op_f32(465f + _wgslsmith_f_op_f32(select(var_0.c.x, var_0.c.x, all(vec2<bool>(global0.d.x, global0.d.x))))), var_0.c.x, func_1().c.x), vec4<u32>(firstTrailingBit(34050u), 124411u, 35575u, _wgslsmith_mod_u32((1u >> (global0.a.x % 32u)) | ~var_0.a.a.x, var_0.b >> (~4294967295u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(_wgslsmith_dot_vec3_i32(global2.zyy, global2.xxz)) ^ 44536i, -1i, var_0.a.b), global1[_wgslsmith_index_u32(1555u, 15u)], ~(~func_4(var_2.zxx, _wgslsmith_f_op_vec3_f32(trunc(var_4.c.zwx)), max(vec4<u32>(32210u, 6851u, var_4.a.a.x, global0.a.x), vec4<u32>(46606u, u_input.b, 4294967295u, 4294967295u))).a.c));
}

