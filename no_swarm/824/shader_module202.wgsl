struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(i32(-2147483648), vec4<i32>(i32(-2147483648), 1i, -1i, -31293i), -13981i, true, Struct_1(-970f, 15206i, -45315i, 27635i, false));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(i32(-2147483648), vec4<i32>(50793i, 2147483647i, 18331i, i32(-2147483648)), -27013i, false, Struct_1(726f, 1i, 48853i, -1i, true)), Struct_2(-6769i, vec4<i32>(0i, 2147483647i, 60564i, 1i), 0i, false, Struct_1(2110f, 1i, -30273i, 1i, true)), Struct_2(-1i, vec4<i32>(1i, -29897i, 32353i, 2147483647i), 2147483647i, true, Struct_1(-528f, 2147483647i, 2147483647i, i32(-2147483648), false)), Struct_2(6251i, vec4<i32>(-46098i, 0i, i32(-2147483648), 2147483647i), -16590i, false, Struct_1(314f, -7106i, 1i, -54325i, true)), Struct_2(42010i, vec4<i32>(-28499i, i32(-2147483648), -18754i, 1799i), 1i, false, Struct_1(804f, 1i, -63668i, i32(-2147483648), true)), Struct_2(2147483647i, vec4<i32>(2147483647i, 1i, 7813i, -1i), -16787i, false, Struct_1(-735f, 0i, -9311i, 296i, false)), Struct_2(-22870i, vec4<i32>(31077i, -8424i, 1i, 1i), -39466i, false, Struct_1(-251f, 22393i, -16603i, -1i, true)), Struct_2(196i, vec4<i32>(921i, -28877i, 0i, -20072i), 2147483647i, false, Struct_1(-1193f, 37688i, 11891i, 24548i, false)), Struct_2(-19485i, vec4<i32>(-1i, 55163i, 7353i, -1i), 0i, true, Struct_1(-499f, 0i, 2147483647i, 1i, true)), Struct_2(-1i, vec4<i32>(34316i, 2147483647i, -1i, -1i), 2147483647i, true, Struct_1(811f, 0i, 4837i, -22920i, false)), Struct_2(2147483647i, vec4<i32>(-1i, -12975i, i32(-2147483648), 26820i), 1i, true, Struct_1(-1976f, 2147483647i, 0i, -1i, true)), Struct_2(-49302i, vec4<i32>(2147483647i, 70362i, -1i, 45414i), -23527i, false, Struct_1(-1604f, 16159i, -1i, -35544i, false)), Struct_2(2147483647i, vec4<i32>(29315i, 8867i, 1i, 32004i), -7244i, false, Struct_1(918f, 2147483647i, 0i, -1i, true)), Struct_2(5618i, vec4<i32>(-2672i, 0i, -57511i, 1i), 0i, true, Struct_1(-137f, 1i, -24509i, 0i, true)), Struct_2(2147483647i, vec4<i32>(-26439i, 1i, i32(-2147483648), 47193i), -73102i, true, Struct_1(-1000f, 1i, 2147483647i, -5030i, false)), Struct_2(-43947i, vec4<i32>(-12099i, -53602i, i32(-2147483648), 2147483647i), 0i, false, Struct_1(907f, 18893i, -56559i, -1i, false)), Struct_2(-1i, vec4<i32>(-33078i, -1i, -22144i, 3344i), -18849i, false, Struct_1(358f, -16271i, i32(-2147483648), -9371i, true)), Struct_2(1i, vec4<i32>(i32(-2147483648), -1i, -45607i, 1i), -50336i, false, Struct_1(397f, -38613i, -16374i, -26277i, false)), Struct_2(1i, vec4<i32>(0i, 31895i, 21973i, 68891i), -1i, true, Struct_1(-476f, 14904i, -1i, 22330i, false)), Struct_2(4915i, vec4<i32>(48937i, 23968i, -7592i, i32(-2147483648)), -1i, false, Struct_1(1054f, -27341i, 19012i, -26618i, false)), Struct_2(-1i, vec4<i32>(24181i, 53875i, 4290i, 33820i), 29040i, false, Struct_1(-341f, i32(-2147483648), i32(-2147483648), 17805i, false)), Struct_2(-24388i, vec4<i32>(1i, 2147483647i, 26460i, 18388i), i32(-2147483648), true, Struct_1(178f, -28398i, -1i, -7672i, false)), Struct_2(29482i, vec4<i32>(0i, 2147483647i, 1i, 2143i), -1870i, true, Struct_1(-359f, 0i, 19010i, 23465i, true)), Struct_2(2147483647i, vec4<i32>(30070i, 892i, -10887i, 9233i), -18290i, false, Struct_1(-381f, 31385i, -75206i, 0i, true)), Struct_2(-1i, vec4<i32>(0i, 20205i, 1i, -85713i), 11727i, true, Struct_1(-1049f, 25862i, i32(-2147483648), i32(-2147483648), false)), Struct_2(-1i, vec4<i32>(0i, -2969i, -27115i, -1i), 0i, true, Struct_1(2080f, 1i, 0i, -1i, true)), Struct_2(2147483647i, vec4<i32>(31308i, i32(-2147483648), 41821i, 1i), -1i, false, Struct_1(430f, i32(-2147483648), 2147483647i, 0i, true)), Struct_2(2147483647i, vec4<i32>(2147483647i, i32(-2147483648), 21151i, 0i), 1i, false, Struct_1(-683f, 27068i, 0i, -1i, true)), Struct_2(-1i, vec4<i32>(14182i, 0i, 2256i, -53324i), 0i, false, Struct_1(1000f, 0i, -31641i, 1i, false)), Struct_2(6381i, vec4<i32>(i32(-2147483648), -1i, -4176i, 0i), 50837i, false, Struct_1(721f, -1i, 19111i, 2147483647i, true)));

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-254f, -9071i, 22581i, 29269i, true), Struct_1(1000f, -1i, 13742i, -25500i, true), Struct_1(2334f, 14935i, 48384i, 10458i, true), Struct_1(1000f, -50488i, -1i, 0i, false), Struct_1(1564f, 14517i, 0i, 3193i, false), Struct_1(359f, 12757i, i32(-2147483648), 26984i, false), Struct_1(2485f, 51017i, 56443i, -1i, true), Struct_1(1243f, -38425i, 1i, 15931i, false), Struct_1(944f, 1i, 1i, -12165i, false), Struct_1(442f, 1i, -1i, 0i, true));

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> vec4<bool> {
    let var_0 = 344f;
    let var_1 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(~arg_0.x, -55814i, global4.x), arg_0.wxx), global0.b.yzy);
    let var_2 = true;
    global3 = array<Struct_1, 10>();
    global4 = min(global0.b, arg_0);
    return vec4<bool>(var_2, !all(select(vec4<bool>(var_2, global0.e.e, false, false), vec4<bool>(global0.d, false, var_2, false), false)), ~1i <= (-1i & (~global0.c << (u_input.a % 32u))), true);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: bool) -> vec2<i32> {
    global0 = Struct_2(~(-firstLeadingBit(global0.b.x)), vec4<i32>(~global4.x, _wgslsmith_mod_i32(1i, 28681i), 14635i, (-40534i >> (_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.b.x) % 32u)) & (global0.b.x ^ abs(global4.x))), global0.b.x, all(select(vec3<bool>(global0.e.e, false, global0.e.e), !vec3<bool>(true, global0.e.e, arg_3), false)) != !func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(3387i, global0.a, 29342i, 2147483647i), global0.b), _wgslsmith_div_i32(-1542i, 6024i)).x, global3[_wgslsmith_index_u32(u_input.b.x, 10u)]);
    global3 = array<Struct_1, 10>();
    global0 = global2[_wgslsmith_index_u32(abs(21716u) >> (1u % 32u), 30u)];
    let var_0 = u_input.a;
    var var_1 = !(!(~global0.e.c == (i32(-1i) * -2147483647i)));
    return vec2<i32>(-countOneBits(global0.a), _wgslsmith_div_i32(~global0.c, 0i));
}

fn func_2() -> Struct_3 {
    var var_0 = func_1(global0.b, _wgslsmith_dot_vec2_i32(countOneBits(func_3(global0.d, global1.x, global1.x, true)), (-global0.b.ww ^ (vec2<i32>(global0.e.d, global0.e.d) >> (u_input.b.zx % vec2<u32>(32u)))) | global0.b.zx)).x;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.a, 1394f, global1.x, -1000f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.e.a, -639f, global1.x, 193f))))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), global0.e.a, global0.e.a, -418f));
    let var_1 = global1.wzy;
    return Struct_3(!((997f >= _wgslsmith_f_op_f32(-532f * var_1.x)) | all(select(vec2<bool>(global0.d, true), vec2<bool>(global0.e.e, global0.d), vec2<bool>(true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(-select(2147483647i, ~46470i, !global0.e.e), 1632i, global0.e.b);
    global4 = _wgslsmith_clamp_vec4_i32(-global0.b, _wgslsmith_mult_vec4_i32(global0.b, abs(global0.b)), vec4<i32>(-(~(0i << (u_input.c % 32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.b.yzz, vec3<i32>(global0.a, 1i, var_0.x)), _wgslsmith_dot_vec3_i32(global4.xzz, global4.zwy) << ((u_input.a ^ 68739u) % 32u)), reverseBits(1i), abs(2147483647i)));
    global3 = array<Struct_1, 10>();
    var var_1 = func_1(vec4<i32>(abs(_wgslsmith_div_i32(_wgslsmith_add_i32(global4.x, 19146i), global0.a)), ~abs(_wgslsmith_dot_vec2_i32(global4.yw, global4.zz)), global4.x, 0i), _wgslsmith_mult_i32(global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, global4.x, -10417i), firstTrailingBit(vec3<i32>(global0.e.b, global4.x, global0.c))) & global4.x));
    var var_2 = ~(-(global0.a | abs(-24482i)));
    var var_3 = func_2();
    let var_4 = ~(~u_input.a);
    let var_5 = firstLeadingBit(reverseBits(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.b.x, 54450u)), ~firstTrailingBit(u_input.b.zz), firstLeadingBit(~u_input.b.zx))));
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1000f), _wgslsmith_f_op_f32(min(155f, 1321f))))))), var_4, vec4<i32>(select(~global4.x << ((u_input.b.x | 0u) % 32u), -3079i, any(vec4<bool>(global0.d, false, true, var_3.a))), -countOneBits(var_0.x) ^ var_0.x, -19397i, 5002i));
}

