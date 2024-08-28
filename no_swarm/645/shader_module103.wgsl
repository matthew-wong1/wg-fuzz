struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_3(12137u, vec4<f32>(786f, 1844f, 764f, 1370f))), Struct_4(Struct_3(1u, vec4<f32>(1782f, -1389f, 950f, 696f))), Struct_4(Struct_3(1u, vec4<f32>(-816f, 642f, -954f, 1474f))), Struct_4(Struct_3(0u, vec4<f32>(-1285f, -492f, 1019f, -1232f))), Struct_4(Struct_3(3287u, vec4<f32>(151f, -602f, -786f, -763f))), Struct_4(Struct_3(9759u, vec4<f32>(-1000f, -163f, -191f, -346f))), Struct_4(Struct_3(95939u, vec4<f32>(1664f, -485f, 524f, 163f))), Struct_4(Struct_3(0u, vec4<f32>(-1000f, -909f, -1152f, -1000f))), Struct_4(Struct_3(96387u, vec4<f32>(-416f, 518f, -247f, -343f))), Struct_4(Struct_3(0u, vec4<f32>(-102f, 537f, 1248f, -1096f))), Struct_4(Struct_3(4294967295u, vec4<f32>(1000f, 1487f, 241f, 203f))), Struct_4(Struct_3(23476u, vec4<f32>(746f, -1437f, 2253f, -831f))), Struct_4(Struct_3(29423u, vec4<f32>(1262f, 1000f, -2581f, -295f))), Struct_4(Struct_3(1u, vec4<f32>(733f, 491f, -301f, -1610f))), Struct_4(Struct_3(7828u, vec4<f32>(1229f, -509f, -360f, 1530f))), Struct_4(Struct_3(53612u, vec4<f32>(137f, 3337f, 193f, -1011f))), Struct_4(Struct_3(4294967295u, vec4<f32>(-2094f, 826f, -1129f, -1446f))), Struct_4(Struct_3(0u, vec4<f32>(699f, 1256f, -227f, -513f))), Struct_4(Struct_3(9021u, vec4<f32>(-612f, -625f, 753f, -573f))), Struct_4(Struct_3(0u, vec4<f32>(-634f, -1385f, 451f, 1265f))), Struct_4(Struct_3(0u, vec4<f32>(2267f, -1423f, 103f, -489f))), Struct_4(Struct_3(76405u, vec4<f32>(-1061f, -146f, -279f, -130f))), Struct_4(Struct_3(4294967295u, vec4<f32>(-1060f, 479f, 1050f, 1000f))), Struct_4(Struct_3(22732u, vec4<f32>(-805f, 861f, -1592f, -321f))), Struct_4(Struct_3(29072u, vec4<f32>(365f, 1324f, -945f, 640f))), Struct_4(Struct_3(1u, vec4<f32>(-439f, -1000f, -1180f, 1497f))), Struct_4(Struct_3(4294967295u, vec4<f32>(-1283f, -356f, -447f, -1162f))), Struct_4(Struct_3(0u, vec4<f32>(1196f, -485f, -1175f, 1729f))), Struct_4(Struct_3(0u, vec4<f32>(-876f, -784f, -783f, -2263f))), Struct_4(Struct_3(48938u, vec4<f32>(552f, 422f, -208f, 1193f))), Struct_4(Struct_3(1u, vec4<f32>(-1263f, 138f, 1062f, 1319f))));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = 23331u;
    let var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, arg_0.a.a, 45153u, 0u), ~vec4<u32>(34879u, arg_0.a.a, 0u, u_input.c))), abs(countOneBits(countOneBits(vec4<u32>(0u, 70400u, var_0, 4294967295u)))) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, arg_0.a.a, var_0, arg_0.a.a)), ~vec4<u32>(4294967295u, u_input.c, arg_0.a.a, u_input.a.x) & min(vec4<u32>(25254u, 24422u, 4294967295u, 0u), vec4<u32>(0u, u_input.a.x, 1u, 40856u)), _wgslsmith_mult_vec4_u32(vec4<u32>(88183u, 51327u, u_input.b.x, 0u), vec4<u32>(64809u, 51700u, u_input.a.x, 8768u)) | ~vec4<u32>(27018u, 39082u, 51846u, arg_0.a.a)) % vec4<u32>(32u)));
    return reverseBits(~(-arg_3) >> (u_input.b % vec3<u32>(32u))) ^ -(~_wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_1, 18970i), arg_3));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> f32 {
    var var_0 = 41376i;
    let var_1 = Struct_2(Struct_1(~(~(~vec3<i32>(u_input.d, -3453i, u_input.d)))), Struct_1(select(func_3(Struct_4(arg_3.a), reverseBits(u_input.d), vec4<bool>(true, true, false, false), firstLeadingBit(vec3<i32>(u_input.d, u_input.d, u_input.d))), ~(~vec3<i32>(u_input.d, -1583i, -82982i)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a.b - arg_3.a.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.b.x, arg_2)), -561f, _wgslsmith_f_op_f32(floor(arg_0.x)), -437f)), Struct_1(_wgslsmith_add_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, -4265i, 1i), vec3<i32>(-2147483647i, u_input.d, u_input.d)), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-11002i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.d)), ~vec3<i32>(u_input.d, u_input.d, u_input.d)))));
    let var_2 = u_input.d;
    global0 = array<Struct_4, 31>();
    var var_3 = Struct_2(Struct_1(var_1.b.a), Struct_1(var_1.b.a), var_1.c, var_1.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-218f, 310f, all(vec3<bool>(all(vec3<bool>(true, true, false)), true, false)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(arg_1.c.x, arg_0.x, arg_1.c.x), vec4<u32>(u_input.a.x, u_input.c, u_input.b.x, 31950u), -1168f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), _wgslsmith_f_op_f32(-1002f - 223f)))), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(728f, arg_1.c.x)))), _wgslsmith_f_op_f32(-arg_1.c.x))));
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-(~u_input.d), -35431i, ~(~1i))), vec3<i32>(firstTrailingBit(-9240i), max(46255i, _wgslsmith_dot_vec2_i32(arg_1.d.a.xz, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, arg_1.d.a.x), arg_1.b.a.yy))), _wgslsmith_sub_i32(u_input.d, u_input.d | -arg_1.d.a.x)));
    var var_2 = Struct_4(Struct_3(_wgslsmith_mod_u32(~(~u_input.b.x), abs(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2442f, var_0.x, arg_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -399f, arg_1.c.x, 595f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1.c * arg_1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -1000f, 933f, arg_1.c.x)))))));
    let var_3 = Struct_3(u_input.c | var_2.a.a, vec4<f32>(_wgslsmith_f_op_f32(var_2.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(743f + var_2.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - -1163f), arg_0.x)), _wgslsmith_f_op_f32(step(-142f, 1647f))));
    global0 = array<Struct_4, 31>();
    return 18418u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1000f, 138f))));
    global0 = array<Struct_4, 31>();
    let var_1 = countOneBits(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1327f, -1327f)), Struct_2(Struct_1(vec3<i32>(u_input.d, u_input.d, u_input.d)), Struct_1(vec3<i32>(1i, u_input.d, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, var_0, -649f)), Struct_1(vec3<i32>(-2138i, -1i, -63355i))))) ^ _wgslsmith_add_u32(~1u ^ _wgslsmith_dot_vec2_u32(~u_input.a, u_input.b.xz >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, ~12938u, 1u), max(u_input.c, select(84063u, u_input.a.x, true))));
    let var_2 = Struct_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1069f, var_0, var_0) * vec4<f32>(1000f, 753f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1817f, var_0, var_0)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(323f, var_0, var_0, var_0) + vec4<f32>(1000f, var_0, var_0, var_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1328f, -189f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) + vec4<f32>(260f, var_0, 1000f, var_0))))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(u_input.d >> (0u % 32u), max(u_input.d, u_input.d), 1i)), u_input.d, vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1, 0u, u_input.c, 21270u), vec4<u32>(u_input.b.x, u_input.c, 0u, var_1)), vec4<u32>(~4294967295u, abs(1u), reverseBits(var_3.a), max(19455u, var_1))), 1u, ~4294967295u));
}

