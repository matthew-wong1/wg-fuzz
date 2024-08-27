struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec4<i32>(-1i, -1i, 0i, 7834i), vec2<bool>(false, true), 2147483647i, vec2<i32>(55246i, -36787i), vec2<i32>(2147483647i, 2147483647i)), vec4<i32>(-37410i, 0i, -17712i, 0i)), Struct_2(Struct_1(vec4<i32>(-47026i, 6554i, 0i, 18188i), vec2<bool>(true, false), -15623i, vec2<i32>(-29140i, i32(-2147483648)), vec2<i32>(24729i, 12501i)), vec4<i32>(-1i, -21503i, 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i), vec2<bool>(false, true), 1i, vec2<i32>(-23174i, 1i), vec2<i32>(1i, -1i)), vec4<i32>(0i, -1i, 36895i, -22276i)), Struct_2(Struct_1(vec4<i32>(-6017i, -36695i, -3951i, -2368i), vec2<bool>(false, true), -11601i, vec2<i32>(-1i, -33257i), vec2<i32>(-1i, -15637i)), vec4<i32>(2147483647i, 2147483647i, 25678i, -40621i)), Struct_2(Struct_1(vec4<i32>(-15613i, -1i, 1i, -1i), vec2<bool>(false, false), -5544i, vec2<i32>(20244i, -31308i), vec2<i32>(2147483647i, i32(-2147483648))), vec4<i32>(i32(-2147483648), i32(-2147483648), 49537i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -17149i, 1i), vec2<bool>(false, false), -35652i, vec2<i32>(0i, -4038i), vec2<i32>(-8419i, -51434i)), vec4<i32>(i32(-2147483648), 24671i, -36924i, -46784i)), Struct_2(Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), -1i), vec2<bool>(false, true), 2147483647i, vec2<i32>(-40831i, 1703i), vec2<i32>(38579i, 1i)), vec4<i32>(-22237i, -1i, i32(-2147483648), 31489i)), Struct_2(Struct_1(vec4<i32>(16401i, -5569i, -1i, 1i), vec2<bool>(false, true), i32(-2147483648), vec2<i32>(-40066i, 368i), vec2<i32>(0i, -34405i)), vec4<i32>(41921i, 1i, -1i, -1i)), Struct_2(Struct_1(vec4<i32>(-6510i, i32(-2147483648), -1i, -65554i), vec2<bool>(true, true), 22029i, vec2<i32>(1i, 1i), vec2<i32>(12616i, i32(-2147483648))), vec4<i32>(2147483647i, -30971i, i32(-2147483648), -18038i)), Struct_2(Struct_1(vec4<i32>(1i, 1i, -1i, -8763i), vec2<bool>(true, true), -13121i, vec2<i32>(-643i, 27603i), vec2<i32>(-1i, 0i)), vec4<i32>(1i, 1i, -67661i, -6601i)), Struct_2(Struct_1(vec4<i32>(-34082i, 2147483647i, 2147483647i, i32(-2147483648)), vec2<bool>(true, false), -1i, vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(859i, 1i)), vec4<i32>(1i, 2147483647i, 60049i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(-7292i, -4i, 0i, 11099i), vec2<bool>(true, true), 2147483647i, vec2<i32>(-1i, -16530i), vec2<i32>(1i, -52435i)), vec4<i32>(-46189i, 2147483647i, 0i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(25605i, 2147483647i, 36656i, 0i), vec2<bool>(false, true), 2147483647i, vec2<i32>(-4539i, 11217i), vec2<i32>(37110i, -41777i)), vec4<i32>(2147483647i, 2147483647i, 58692i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-23619i, -1i, -14455i, 2147483647i), vec2<bool>(true, false), 13197i, vec2<i32>(-29555i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i)), vec4<i32>(9097i, -3115i, -1i, 11218i)), Struct_2(Struct_1(vec4<i32>(16641i, i32(-2147483648), -3554i, i32(-2147483648)), vec2<bool>(false, true), i32(-2147483648), vec2<i32>(14400i, 5939i), vec2<i32>(i32(-2147483648), -1i)), vec4<i32>(31431i, 2147483647i, -1i, -7218i)), Struct_2(Struct_1(vec4<i32>(-10663i, i32(-2147483648), 7022i, -13304i), vec2<bool>(false, false), -12567i, vec2<i32>(-29776i, 35543i), vec2<i32>(-8609i, 1i)), vec4<i32>(-41172i, 42313i, -71283i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 3897i, 40908i, 37156i), vec2<bool>(false, true), 2382i, vec2<i32>(17099i, 2147483647i), vec2<i32>(1031i, 1i)), vec4<i32>(9600i, -4386i, 1i, 0i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -46390i, 12554i, i32(-2147483648)), vec2<bool>(false, true), i32(-2147483648), vec2<i32>(6311i, i32(-2147483648)), vec2<i32>(2634i, -1826i)), vec4<i32>(23868i, 18534i, -1148i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(1i, -36284i, 2147483647i, 2147483647i), vec2<bool>(false, false), i32(-2147483648), vec2<i32>(-1i, -15698i), vec2<i32>(7866i, -57033i)), vec4<i32>(1i, 0i, -1i, 36627i)), Struct_2(Struct_1(vec4<i32>(1i, 0i, 2147483647i, 56592i), vec2<bool>(true, true), 46810i, vec2<i32>(-40922i, -1i), vec2<i32>(12107i, 39775i)), vec4<i32>(27085i, 47765i, 1i, 1i)), Struct_2(Struct_1(vec4<i32>(-1i, 4497i, 25290i, i32(-2147483648)), vec2<bool>(true, false), -7060i, vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 23853i)), vec4<i32>(-5306i, -27972i, 1i, 0i)), Struct_2(Struct_1(vec4<i32>(1i, 19617i, -25316i, 36002i), vec2<bool>(false, true), -67505i, vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1981i, 32734i)), vec4<i32>(4504i, -1i, -1i, -60969i)), Struct_2(Struct_1(vec4<i32>(60416i, 2147483647i, -1i, 1i), vec2<bool>(true, false), 2147483647i, vec2<i32>(-32939i, -1383i), vec2<i32>(1i, 1i)), vec4<i32>(1i, 19266i, 1i, 64317i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, -21524i, i32(-2147483648)), vec2<bool>(false, false), i32(-2147483648), vec2<i32>(-1i, 17079i), vec2<i32>(-21480i, 8341i)), vec4<i32>(1i, 1i, 2147483647i, -4195i)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, -19723i, -1778i), vec2<bool>(false, true), 2147483647i, vec2<i32>(i32(-2147483648), -5729i), vec2<i32>(2774i, -28739i)), vec4<i32>(i32(-2147483648), -28478i, 41504i, 11339i)), Struct_2(Struct_1(vec4<i32>(-15243i, 2147483647i, 2147483647i, 1i), vec2<bool>(true, true), 1i, vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-4373i, 25090i)), vec4<i32>(-32069i, 31863i, 19979i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<bool>(true, true), 54921i, vec2<i32>(1i, 0i), vec2<i32>(-1i, 19791i)), vec4<i32>(-25586i, 25606i, -32558i, i32(-2147483648))));

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), -44505i, -56253i), vec2<bool>(true, false), i32(-2147483648), vec2<i32>(i32(-2147483648), -52813i), vec2<i32>(-10981i, 1i)), vec4<i32>(-4340i, -1i, 2147483647i, 0i)));

var<private> global2: bool = false;

var<private> global3: vec4<u32> = vec4<u32>(22451u, 130568u, 1u, 7286u);

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: u32) -> u32 {
    global4 = Struct_3(global1.a);
    global1 = Struct_3(Struct_2(global4.a.a, select(-vec4<i32>(36878i, u_input.c.x, 4987i, -36225i), global1.a.b, vec4<bool>(all(vec4<bool>(global1.a.a.b.x, false, false, true)), global4.a.a.b.x, false, !global1.a.a.b.x))));
    global4 = Struct_3(Struct_2(global1.a.a, global4.a.a.a));
    let var_0 = Struct_2(global1.a.a, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(7673i, global4.a.a.d.x, u_input.d.x, global1.a.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-38282i, global4.a.b.x, u_input.d.x, 2147483647i), vec4<i32>(1i, 57218i, -59511i, 45606i))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 12896u, 0u), vec4<u32>(20166u, arg_0, 1u, 4294967295u)), vec4<u32>(4294967295u, 1u, arg_0, u_input.b.x) | vec4<u32>(0u, arg_0, arg_0, 4294967295u)) % vec4<u32>(32u))));
    let var_1 = Struct_3(Struct_2(var_0.a, global1.a.b));
    return ~u_input.b.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: i32) -> vec4<i32> {
    global3 = vec4<u32>(u_input.b.x, countOneBits(firstLeadingBit(_wgslsmith_sub_u32(~0u, arg_0.x >> (28245u % 32u)))), func_2(4294967295u), ~global3.x);
    return vec4<i32>(~arg_1.x, -(~28132i), _wgslsmith_div_i32(max(-48391i, _wgslsmith_dot_vec4_i32(vec4<i32>(-7752i, -2147483647i, global4.a.b.x, arg_1.x), u_input.c)), ~arg_1.x) & abs(1i), arg_1.x);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_2, 27>();
    global3 = _wgslsmith_mult_vec4_u32(select(~(~vec4<u32>(u_input.b.x, u_input.b.x, global3.x, 4294967295u)), _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(21487u, u_input.b.x, u_input.b.x, 1u)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 65922u, 4294967295u)) ^ vec4<u32>(1u, 1u, global3.x, global3.x)), select(!(!vec4<bool>(false, true, false, global1.a.a.b.x)), vec4<bool>(false, true, true, true), global1.a.a.b.x)), vec4<u32>(global3.x, global3.x, global3.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(35906u, u_input.b.x), global3.x)));
    global3 = vec4<u32>(44700u, _wgslsmith_div_u32(u_input.b.x, 18541u), global3.x, 1u);
    var var_0 = 1379u;
    var var_1 = vec4<u32>(110365u, countOneBits(64522u), firstLeadingBit(4294967295u), func_2(min(abs(_wgslsmith_mod_u32(0u, u_input.b.x)), _wgslsmith_mult_u32(global3.x, 1u))));
    return Struct_2(Struct_1(vec4<i32>(global4.a.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, -5076i), u_input.d.zz), u_input.d.yy), global4.a.b.x, global1.a.b.x), vec2<bool>(global1.a.a.b.x, global4.a.a.b.x), global1.a.b.x, global1.a.a.e, u_input.c.xz), func_3(~vec2<u32>(abs(global3.x), 4294967295u >> (u_input.b.x % 32u)), -u_input.c, global4.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!(!vec4<bool>(true, true, global1.a.a.b.x, false)))));
    var var_1 = firstLeadingBit(~72498i);
    let var_2 = Struct_3(func_1());
    global1 = Struct_3(global0[_wgslsmith_index_u32(0u & _wgslsmith_clamp_u32(~1u, ~u_input.b.x | 139064u, abs(global3.x)), 27u)]);
    global0 = array<Struct_2, 27>();
    global4 = var_2;
    var var_3 = global4.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-710f, -186f), vec2<f32>(1576f, -556f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(485f, 1343f), _wgslsmith_f_op_vec2_f32(vec2<f32>(788f, -287f) + vec2<f32>(372f, -288f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2185f, 2007f), vec2<f32>(868f, 147f))) - vec2<f32>(-566f, 1033f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), ~firstLeadingBit(~vec4<u32>(63707u, u_input.b.x, 0u, global3.x)), 15344i, vec2<i32>(-1i, ~abs(~(-57149i))));
}

