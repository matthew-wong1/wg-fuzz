struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 27>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(17920u, 112044u, 0u, 1u), vec3<u32>(7789u, 1u, 22196u), -20768i, 43007u), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 58071u), vec3<u32>(71547u, 95026u, 0u), -60585i, 10821u), Struct_1(vec4<u32>(82489u, 30645u, 4294967295u, 3744u), vec3<u32>(35977u, 1u, 0u), i32(-2147483648), 4294967295u), Struct_1(vec4<u32>(4294967295u, 0u, 32950u, 17351u), vec3<u32>(21238u, 1u, 4294967295u), 40008i, 75968u), Struct_1(vec4<u32>(79389u, 35266u, 91746u, 4294967295u), vec3<u32>(126746u, 2532u, 11954u), -1619i, 46566u), Struct_1(vec4<u32>(0u, 42180u, 1u, 20423u), vec3<u32>(18148u, 7790u, 95097u), 2147483647i, 48562u), Struct_1(vec4<u32>(106949u, 0u, 4294967295u, 0u), vec3<u32>(1u, 4294967295u, 62662u), 0i, 29539u), Struct_1(vec4<u32>(97205u, 44740u, 71502u, 1u), vec3<u32>(0u, 4294967295u, 61698u), 2147483647i, 0u), Struct_1(vec4<u32>(0u, 15487u, 0u, 4294967295u), vec3<u32>(11120u, 0u, 28507u), -2196i, 4294967295u), Struct_1(vec4<u32>(98047u, 8288u, 18620u, 1432u), vec3<u32>(1u, 4294967295u, 4294967295u), 1i, 0u), Struct_1(vec4<u32>(84911u, 69075u, 65029u, 4294967295u), vec3<u32>(5014u, 8299u, 22695u), 5726i, 24592u), Struct_1(vec4<u32>(0u, 34723u, 1u, 0u), vec3<u32>(48641u, 0u, 31635u), i32(-2147483648), 4294967295u), Struct_1(vec4<u32>(1u, 1u, 29816u, 1u), vec3<u32>(1u, 0u, 93133u), -16573i, 934u), Struct_1(vec4<u32>(4294967295u, 0u, 3286u, 21812u), vec3<u32>(1u, 0u, 0u), 0i, 48290u), Struct_1(vec4<u32>(0u, 46402u, 0u, 28106u), vec3<u32>(0u, 4294967295u, 47757u), 31168i, 8567u), Struct_1(vec4<u32>(1u, 9314u, 4294967295u, 1u), vec3<u32>(45204u, 1u, 41107u), 39341i, 0u), Struct_1(vec4<u32>(1u, 1u, 0u, 19477u), vec3<u32>(0u, 1u, 1u), 29374i, 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 67199u), vec3<u32>(80876u, 51798u, 20773u), 2147483647i, 9644u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 9401u, 50424u), vec3<u32>(66878u, 4294967295u, 4294967295u), 29011i, 4294967295u), Struct_1(vec4<u32>(58199u, 13477u, 0u, 43020u), vec3<u32>(30192u, 4294967295u, 10831u), i32(-2147483648), 4294967295u), Struct_1(vec4<u32>(0u, 1u, 1u, 69305u), vec3<u32>(4294967295u, 32187u, 4294967295u), 3746i, 55225u), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 3772u), 1i, 61708u), Struct_1(vec4<u32>(87544u, 38815u, 68045u, 37879u), vec3<u32>(21887u, 1u, 0u), 1i, 38668u), Struct_1(vec4<u32>(1u, 4294967295u, 1731u, 4294967295u), vec3<u32>(28039u, 4294967295u, 0u), -741i, 0u), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u), vec3<u32>(0u, 99613u, 29882u), 42111i, 53099u), Struct_1(vec4<u32>(1u, 70584u, 43499u, 37133u), vec3<u32>(0u, 60320u, 8706u), -3216i, 104486u), Struct_1(vec4<u32>(0u, 1u, 11576u, 4294967295u), vec3<u32>(33919u, 75412u, 0u), 3999i, 4294967295u), Struct_1(vec4<u32>(45680u, 58057u, 4294967295u, 2864u), vec3<u32>(34607u, 41107u, 0u), -1i, 24733u), Struct_1(vec4<u32>(20229u, 4294967295u, 0u, 6145u), vec3<u32>(0u, 0u, 11934u), 18261i, 1u));

var<private> global3: vec4<i32>;

var<private> global4: array<f32, 28> = array<f32, 28>(992f, 314f, -497f, 412f, 300f, -1066f, 1096f, -1000f, 100f, -787f, -541f, 898f, 242f, 1467f, 2531f, 606f, 632f, -1202f, -819f, -296f, 712f, -430f, 586f, -1237f, -703f, -393f, -388f, 1854f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), false))), all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<f32> {
    global3 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, 1i, global3.x), u_input.a), vec4<i32>(arg_1.c, global3.x, 9953i, -17586i) ^ vec4<i32>(-61536i, -1i, 33786i, 2459i))), _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(reverseBits(vec3<i32>(2147483647i, 22410i, -45920i))), -(vec3<i32>(u_input.a.x, -1i, global3.x) >> (arg_1.b % vec3<u32>(32u)))), max(countOneBits(global3.x), -7197i) | _wgslsmith_sub_i32(select(u_input.a.x, 7000i, arg_2.x), _wgslsmith_div_i32(global3.x, -1i))), _wgslsmith_add_i32(_wgslsmith_div_i32(-u_input.a.x, -1i), global3.x));
    global4 = array<f32, 28>();
    global2 = array<Struct_1, 29>();
    var var_0 = vec4<u32>(arg_1.a.x, 30017u, 1u, arg_1.a.x);
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(~abs(44964u), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(arg_1.d, 28u)], global4[_wgslsmith_index_u32(abs(var_0.x), 28u)]))), 504f), false);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f + 161f) + -940f), _wgslsmith_f_op_f32(ceil(763f)), _wgslsmith_f_op_f32(arg_0.x - var_1.a.x), _wgslsmith_f_op_f32(-199f - 497f)))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    global3 = vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, 0i, global3.x, -3331i) ^ vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -3771i, 33854i, 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, -1318f, global4[_wgslsmith_index_u32(u_input.b, 28u)], global4[_wgslsmith_index_u32(u_input.b, 28u)])))))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2080f, global4[_wgslsmith_index_u32(u_input.b, 28u)], global4[_wgslsmith_index_u32(1u, 28u)], global4[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(81010u, 28u)], -1000f, -196f, 794f) + vec4<f32>(-1200f, 1842f, 390f, global4[_wgslsmith_index_u32(u_input.b, 28u)]))), global2[_wgslsmith_index_u32(u_input.b << (~1u % 32u), 29u)], select(func_3(), vec2<bool>(true, true), vec2<bool>(true, true))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2006f, global4[_wgslsmith_index_u32(u_input.b, 28u)]), -1021f)) * 1000f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(countOneBits(u_input.b), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f + -2357f) - global4[_wgslsmith_index_u32(u_input.b & u_input.b, 28u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(0u, 1u, 23970u)), 28u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 28u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1446f, global4[_wgslsmith_index_u32(u_input.b, 28u)])), global4[_wgslsmith_index_u32(~u_input.b, 28u)])), -1761f, true))));
    var var_2 = u_input.b ^ ~_wgslsmith_clamp_u32(firstTrailingBit(1u) ^ u_input.b, 4294967295u, ~(~18809u));
    var var_3 = Struct_2(var_1.yzy, _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, 0u), 28u)], _wgslsmith_f_op_f32(-890f - -1718f), select(false, true, true))) >= global4[_wgslsmith_index_u32(u_input.b, 28u)]);
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~1u & u_input.b), 40480u), 27u)], (_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1358f, -1514f, var_1.x, var_3.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(95918u, u_input.b), 29u)], select(vec2<bool>(false, var_3.b), vec2<bool>(false, false), var_3.b))).x <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3.a.x))))) | (true != (true || all(vec4<bool>(true, var_3.b, var_3.b, var_3.b)))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = -2147483647i;
    global3 = min(abs(_wgslsmith_mod_vec4_i32(u_input.a, firstTrailingBit(~u_input.a))), ~u_input.a);
    var var_2 = global2[_wgslsmith_index_u32(u_input.b & (32741u | ~u_input.b), 29u)];
    let var_3 = select(func_2().b, false, var_0.b);
    return vec3<bool>(var_0.b & var_0.b, !(var_2.d <= var_2.a.x), var_0.b == var_3);
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    global0 = u_input.a.x;
    global0 = _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(~global3.x, i32(-1i) * -2147483647i, 1i, global3.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 29421i, -6394i), global3.zzw), _wgslsmith_clamp_vec3_i32(u_input.a.wyy, vec3<i32>(-1i, u_input.a.x, 1i), vec3<i32>(global3.x, global3.x, u_input.a.x))), global3.xxx), -_wgslsmith_dot_vec4_i32(~vec4<i32>(-1354i, u_input.a.x, global3.x, 42790i), vec4<i32>(48167i, global3.x, 73532i, 12251i)), 2147483647i, _wgslsmith_mult_i32(global3.x, 1i << (_wgslsmith_div_u32(17270u, u_input.b) % 32u))));
    global2 = array<Struct_1, 29>();
    let var_0 = vec4<i32>(global3.x, select(countOneBits(-_wgslsmith_div_i32(-2147483647i, 1i)), ~(~(-1i)), func_1().x), firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x) & u_input.a.x), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -3411i), vec3<i32>(11681i, u_input.a.x, 1i))) | ~0i);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1249f, 482f, -1000f, 749f) + vec4<f32>(arg_0, 234f, -1000f, arg_0)) - vec4<f32>(1387f, global4[_wgslsmith_index_u32(4294967295u, 28u)], 243f, 109f))))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~func_5(global4[_wgslsmith_index_u32(~(~(~83554u)), 28u)], select(!func_1(), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), true)), 29u)];
    var var_1 = any(!vec3<bool>(global4[_wgslsmith_index_u32(29910u, 28u)] != -1447f, false, 0u <= u_input.b)) & !(0i == u_input.a.x);
    var var_2 = vec3<bool>(all(!vec3<bool>(func_3().x, true, true)), true, _wgslsmith_dot_vec3_i32(u_input.a.wzz >> (vec3<u32>(var_0.a.x, 20095u, u_input.b) % vec3<u32>(32u)), vec3<i32>(1i >> (u_input.b % 32u), u_input.a.x, reverseBits(var_0.c))) != _wgslsmith_add_i32(u_input.a.x, 2147483647i));
    var var_3 = ~((~16738u | _wgslsmith_clamp_u32(~var_0.d, ~u_input.b, 534u)) | (firstLeadingBit(38086u) | ~_wgslsmith_dot_vec4_u32(var_0.a, var_0.a)));
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(16814u), _wgslsmith_div_u32(u_input.b, 0u)) ^ vec2<u32>(1u, var_0.a.x >> (12180u % 32u)), ~vec2<u32>(~30403u, reverseBits(var_0.b.x))), 29u)];
    global3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b), vec3<i32>(var_0.c, _wgslsmith_mult_i32(global3.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-18014i, u_input.a.x, 1i), global3.xxy)), global3.x));
}

