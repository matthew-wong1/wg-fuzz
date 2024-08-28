struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<i32>(71959i, -47582i, 1i, 35055i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 38379u, 3798u)), vec3<bool>(true, true, false), true), Struct_2(vec4<i32>(0i, 2147483647i, 36575i, 1i), Struct_1(vec4<u32>(86328u, 43404u, 4294967295u, 39631u)), vec3<bool>(true, false, false), false), Struct_2(vec4<i32>(-1i, -8156i, -11448i, 3188i), Struct_1(vec4<u32>(52482u, 0u, 1u, 4294967295u)), vec3<bool>(true, true, false), true), Struct_2(vec4<i32>(0i, -35607i, -1i, -48762i), Struct_1(vec4<u32>(38412u, 1u, 0u, 56305u)), vec3<bool>(false, false, false), false), Struct_2(vec4<i32>(24995i, 80017i, 2147483647i, 2147483647i), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 57321u)), vec3<bool>(true, false, true), true), Struct_2(vec4<i32>(45105i, 1i, 0i, -68215i), Struct_1(vec4<u32>(23784u, 32976u, 0u, 4294967295u)), vec3<bool>(true, true, false), false), Struct_2(vec4<i32>(2147483647i, -14463i, -7331i, -1329i), Struct_1(vec4<u32>(6686u, 1u, 8546u, 1u)), vec3<bool>(true, false, true), true), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 16476i), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 61311u)), vec3<bool>(true, false, true), false), Struct_2(vec4<i32>(-49442i, 0i, i32(-2147483648), -9172i), Struct_1(vec4<u32>(1u, 23591u, 55240u, 0u)), vec3<bool>(true, true, false), false), Struct_2(vec4<i32>(39665i, 3378i, 1i, 18742i), Struct_1(vec4<u32>(1u, 1u, 24555u, 4294967295u)), vec3<bool>(false, false, true), false), Struct_2(vec4<i32>(-33990i, -7383i, -28333i, i32(-2147483648)), Struct_1(vec4<u32>(0u, 31409u, 110616u, 70885u)), vec3<bool>(true, false, false), true), Struct_2(vec4<i32>(4474i, -2647i, -1i, -3585i), Struct_1(vec4<u32>(0u, 1u, 19574u, 34662u)), vec3<bool>(false, true, false), true), Struct_2(vec4<i32>(56178i, -481i, -68564i, -1i), Struct_1(vec4<u32>(33510u, 30853u, 4908u, 3410u)), vec3<bool>(false, true, true), false), Struct_2(vec4<i32>(i32(-2147483648), 0i, 2147483647i, 1i), Struct_1(vec4<u32>(15556u, 71437u, 0u, 0u)), vec3<bool>(true, true, false), true), Struct_2(vec4<i32>(1i, 2147483647i, 51196i, -1i), Struct_1(vec4<u32>(67476u, 135675u, 0u, 27105u)), vec3<bool>(true, true, false), false), Struct_2(vec4<i32>(-24859i, 38197i, -1i, 67215i), Struct_1(vec4<u32>(4294967295u, 99842u, 100951u, 16456u)), vec3<bool>(true, true, false), true), Struct_2(vec4<i32>(i32(-2147483648), 0i, -2708i, 0i), Struct_1(vec4<u32>(4294967295u, 1u, 51316u, 1u)), vec3<bool>(true, false, false), false), Struct_2(vec4<i32>(-1i, 0i, -1i, -2293i), Struct_1(vec4<u32>(17636u, 35635u, 4294967295u, 17579u)), vec3<bool>(true, true, false), false), Struct_2(vec4<i32>(820i, 0i, -17333i, -37387i), Struct_1(vec4<u32>(80912u, 133812u, 0u, 0u)), vec3<bool>(false, false, true), true), Struct_2(vec4<i32>(i32(-2147483648), -1i, -12626i, 1i), Struct_1(vec4<u32>(1u, 19608u, 16245u, 33692u)), vec3<bool>(true, false, false), false), Struct_2(vec4<i32>(2147483647i, -4766i, 54900i, 0i), Struct_1(vec4<u32>(4294967295u, 7125u, 95616u, 46823u)), vec3<bool>(false, true, true), true), Struct_2(vec4<i32>(-71864i, 17834i, 0i, -38628i), Struct_1(vec4<u32>(18375u, 4294967295u, 4294967295u, 4294967295u)), vec3<bool>(true, false, true), false));

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> i32 {
    global2 = array<Struct_1, 32>();
    let var_0 = global1[_wgslsmith_index_u32(arg_1, 22u)];
    let var_1 = Struct_4(countOneBits(var_0.b.a.yxx));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 106f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_div_f32(arg_0.a.x, -2149f)))), -1000f));
    global1 = array<Struct_2, 22>();
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-233f, -1798f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1216f, 1639f, 838f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -629f, 726f))))));
    let var_1 = global1[_wgslsmith_index_u32(17853u, 22u)];
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.b.a.xx, _wgslsmith_clamp_vec2_u32(var_1.b.a.wz, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u) | var_1.b.a.wx, var_1.b.a.xx), vec2<u32>(var_1.b.a.x, reverseBits(0u))))), 22u)];
    var var_3 = var_2.b.a;
    var_2 = global1[_wgslsmith_index_u32(0u ^ select(0u, 1u >> (1u % 32u), ~func_3(Struct_3(vec3<f32>(901f, var_0.a.x, -1000f)), var_2.b.a.x, -42050i) <= ~(~(-2147483647i))), 22u)];
    return _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 4519i, -20042i, var_2.a.x), reverseBits(vec4<i32>(34018i, 56117i, -20308i, 2147483647i))), firstLeadingBit(-12984i), var_1.a.x), min(firstLeadingBit(var_2.a), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.a, u_input.a & var_2.a, vec4<i32>(var_2.a.x, -2147483647i, u_input.a.x, var_2.a.x)), vec4<i32>(-1i) * -var_2.a)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec4<u32> {
    global1 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~firstLeadingBit(23182u), ~(~abs(4294967295u))), abs(4294967295u));
    var var_1 = min(abs(countOneBits(u_input.a.yy)), vec2<i32>(func_2(vec2<bool>(false, false)), func_3(Struct_3(vec3<f32>(-139f, -772f, arg_0.x)), 4294967295u, u_input.a.x)) << (vec2<u32>(abs(42765u), var_0 << (var_0 % 32u)) % vec2<u32>(32u))) << ((select(reverseBits(vec2<u32>(var_0, 10977u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(11051u, 138941u)) % vec2<u32>(32u)), vec2<u32>(reverseBits(16664u), _wgslsmith_sub_u32(1u, var_0)), vec2<bool>(true, true)) << (~(~(~vec2<u32>(var_0, var_0))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = Struct_3(arg_0);
    var var_3 = var_2;
    return ~vec4<u32>(~var_0 | ~abs(20163u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_0, 4294967295u, var_0), var_0 & 46715u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(var_0, 0u))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 0u, var_0, 0u), vec4<u32>(var_0, var_0, 1u, var_0)))), countOneBits(~var_0), ~var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(0u, 1u, 25357u, 4294967295u)) ^ ~(~func_1(vec3<f32>(127f, 1554f, 1216f), 401f)), (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(~1u, max(50040u, 0u), func_1(vec3<f32>(398f, 849f, -385f), -1630f).x, 1u) % vec4<u32>(32u))) << (vec4<u32>(firstLeadingBit(~1u), firstLeadingBit(countOneBits(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 22438u, 39568u, 25511u), vec4<u32>(1u, 1u, 1u, 1u)), ~73887u) % vec4<u32>(32u)));
    let var_1 = Struct_2(-(u_input.a | (vec4<i32>(-1i) * -u_input.a)), global2[_wgslsmith_index_u32(4294967295u & ~(~_wgslsmith_clamp_u32(0u, 1u, 33714u)), 32u)], !vec3<bool>((u_input.a.x > u_input.b) | true, false, true), true);
    var var_2 = global1[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_sub_u32(var_1.b.a.x, var_0.x)) | var_0.x) & (var_0.x | ~(reverseBits(0u) >> (var_0.x % 32u))), 22u)];
    var_2 = global1[_wgslsmith_index_u32(var_1.b.a.x, 22u)];
    let var_3 = select(var_1.a.x, 0i, all(select(var_2.c.zy, var_2.c.yy, !var_1.c.zy)));
    var_2 = global1[_wgslsmith_index_u32(~0u, 22u)];
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 2261f, -495f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, 305f, 1022f)))))));
    var var_5 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_4.a));
    let var_6 = Struct_3(var_4.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.a.x, 1i, firstLeadingBit(firstLeadingBit(-var_3)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.a.x, var_3, var_1.a.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_3, 26771i), var_2.a.xww))));
}

