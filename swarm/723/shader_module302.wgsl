struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 46038i;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<u32>(20574u, 4294967295u)), Struct_1(vec2<u32>(0u, 4294967295u)), 25026i, 9358u), Struct_2(Struct_1(vec2<u32>(0u, 16845u)), Struct_1(vec2<u32>(4294967295u, 53021u)), 31031i, 1u), Struct_2(Struct_1(vec2<u32>(1u, 31196u)), Struct_1(vec2<u32>(2530u, 1u)), 2147483647i, 58356u), Struct_2(Struct_1(vec2<u32>(4294967295u, 34497u)), Struct_1(vec2<u32>(30117u, 0u)), i32(-2147483648), 51634u), Struct_2(Struct_1(vec2<u32>(3461u, 28035u)), Struct_1(vec2<u32>(16330u, 4294967295u)), -1i, 4294967295u), Struct_2(Struct_1(vec2<u32>(25855u, 1u)), Struct_1(vec2<u32>(26176u, 34117u)), -1i, 38283u), Struct_2(Struct_1(vec2<u32>(1u, 22854u)), Struct_1(vec2<u32>(4294967295u, 0u)), -42123i, 4294967295u), Struct_2(Struct_1(vec2<u32>(39936u, 4294967295u)), Struct_1(vec2<u32>(88074u, 26074u)), 20172i, 0u), Struct_2(Struct_1(vec2<u32>(4294967295u, 62173u)), Struct_1(vec2<u32>(6856u, 65274u)), -19454i, 4294967295u), Struct_2(Struct_1(vec2<u32>(4294967295u, 65808u)), Struct_1(vec2<u32>(0u, 53258u)), -11168i, 1u), Struct_2(Struct_1(vec2<u32>(35742u, 0u)), Struct_1(vec2<u32>(1u, 1u)), 5162i, 0u), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(11302u, 4294967295u)), 2147483647i, 1u), Struct_2(Struct_1(vec2<u32>(0u, 25369u)), Struct_1(vec2<u32>(301u, 28035u)), -14478i, 1u), Struct_2(Struct_1(vec2<u32>(7108u, 0u)), Struct_1(vec2<u32>(43840u, 0u)), -55075i, 0u), Struct_2(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), i32(-2147483648), 2953u), Struct_2(Struct_1(vec2<u32>(0u, 10671u)), Struct_1(vec2<u32>(0u, 0u)), 29216i, 0u), Struct_2(Struct_1(vec2<u32>(95757u, 4294967295u)), Struct_1(vec2<u32>(80378u, 4294967295u)), -32230i, 10295u), Struct_2(Struct_1(vec2<u32>(33751u, 49881u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), 36569i, 142608u), Struct_2(Struct_1(vec2<u32>(9592u, 597u)), Struct_1(vec2<u32>(1u, 37809u)), 1i, 17821u), Struct_2(Struct_1(vec2<u32>(1u, 11690u)), Struct_1(vec2<u32>(1u, 25353u)), -61081i, 1u), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 0u)), -5392i, 61322u), Struct_2(Struct_1(vec2<u32>(112631u, 1u)), Struct_1(vec2<u32>(0u, 0u)), -79184i, 1u), Struct_2(Struct_1(vec2<u32>(0u, 6999u)), Struct_1(vec2<u32>(31411u, 53699u)), 29744i, 4294967295u), Struct_2(Struct_1(vec2<u32>(79997u, 0u)), Struct_1(vec2<u32>(30077u, 23000u)), i32(-2147483648), 76676u), Struct_2(Struct_1(vec2<u32>(19437u, 26799u)), Struct_1(vec2<u32>(61523u, 525u)), 67239i, 0u), Struct_2(Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(14927u, 0u)), -27471i, 67897u), Struct_2(Struct_1(vec2<u32>(55127u, 1u)), Struct_1(vec2<u32>(1u, 49680u)), 2147483647i, 58626u), Struct_2(Struct_1(vec2<u32>(4294967295u, 34305u)), Struct_1(vec2<u32>(27598u, 14782u)), -1i, 32075u), Struct_2(Struct_1(vec2<u32>(4294967295u, 15995u)), Struct_1(vec2<u32>(13128u, 10575u)), -52925i, 0u));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 4294967295u));

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> vec2<f32> {
    global1 = array<Struct_2, 29>();
    global1 = array<Struct_2, 29>();
    var var_0 = ~vec3<u32>(u_input.d, 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 1u), ~vec3<u32>(592u, u_input.c, u_input.d)), ~(vec3<u32>(56362u, global2.a.x, global2.a.x) & vec3<u32>(0u, 56554u, 102611u))));
    global1 = array<Struct_2, 29>();
    let var_1 = arg_0;
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-548f, 1391f), _wgslsmith_f_op_f32(sign(-404f)))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = 0u;
    let var_1 = u_input.a & u_input.a;
    global1 = array<Struct_2, 29>();
    global0 = arg_0.x;
    let var_2 = select(vec3<i32>(0i, _wgslsmith_mult_i32(global3.x, -2147483647i), arg_0.x), ~vec3<i32>(global3.x, 7475i, ~(-35257i)), true);
    return ~1u;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = select(!vec4<bool>(true, !arg_0.x, _wgslsmith_f_op_f32(round(1000f)) == _wgslsmith_f_op_f32(sign(-879f)), arg_0.x), !select(!select(vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0.x), select(!vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, arg_0.x, true, true), any(vec2<bool>(arg_0.x, arg_0.x))), !vec4<bool>(arg_0.x, false, true, false)), vec4<bool>(true, (_wgslsmith_add_i32(global3.x, 3348i) | _wgslsmith_add_i32(1146i, global3.x)) > -15583i, any(vec4<bool>(!arg_0.x, arg_0.x, arg_0.x, true)), true));
    global3 = -firstLeadingBit(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, 7507i), u_input.a.zx));
    let var_1 = ~vec2<i32>(~(-firstTrailingBit(u_input.a.x)), (firstLeadingBit(-1i) << (1u % 32u)) >> (func_3(u_input.a.xw >> (arg_1 % vec2<u32>(32u))) % 32u));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(abs(32976u), 29u)]);
    global1 = array<Struct_2, 29>();
    return min(-(~firstTrailingBit(var_1.x) & 44522i), ~_wgslsmith_dot_vec3_i32(u_input.a.xyz, ~_wgslsmith_sub_vec3_i32(u_input.a.yww, u_input.a.xyw)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    global0 = func_4(vec2<bool>(true && (true != all(vec3<bool>(false, true, true))), !all(vec4<bool>(false, true, true, false)) | true), vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(func_3(vec2<i32>(-30964i, -2623i)) | (4294967295u | u_input.d), u_input.d)));
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), global2.a), vec2<u32>(global2.a.x, global2.a.x)), min(~vec2<u32>(global2.a.x, arg_1.x), arg_1), global2.a));
    global2 = Struct_1(firstLeadingBit(arg_1));
    var var_1 = arg_2.x;
    let var_2 = global1[_wgslsmith_index_u32(1u, 29u)];
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.e) ^ vec2<i32>(u_input.b, 12455i), _wgslsmith_add_vec2_i32(u_input.a.zz, u_input.a.yw), u_input.a.yy) >> (vec2<u32>(_wgslsmith_add_u32(global2.a.x, 46367u), 142157u) % vec2<u32>(32u)), u_input.a.wz, vec2<bool>(false, true));
    var var_0 = Struct_2(func_2(0i, global2.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(23107i, -1i, -2147483647i, global3.x), u_input.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2470f, -1253f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-444f, 663f), vec2<f32>(-854f, 2193f)))))), 1i), Struct_1(select(min(~vec2<u32>(u_input.d, global2.a.x), ~vec2<u32>(u_input.d, global2.a.x)), abs(select(global2.a, global2.a, false)), vec2<bool>(true, true))), func_4(vec2<bool>(true, select(true, false, false)), func_2(-u_input.b, global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-997f, -315f) - vec2<f32>(-594f, -353f)), 1i).a, Struct_1(~global2.a)) | ~global3.x, 4294967295u);
    var var_1 = Struct_2(var_0.a, var_0.a, var_0.c, _wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.c), ~var_0.d), ~0u & global2.a.x));
    let var_2 = var_1.d;
    let var_3 = ~var_1.a.a;
    var_0 = Struct_2(func_2(countOneBits(u_input.b), func_2(-2147483647i, select(vec2<u32>(26446u, var_3.x), var_0.a.a, any(vec2<bool>(true, false))), _wgslsmith_div_vec2_f32(vec2<f32>(952f, -899f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-759f, 1571f))), -34951i).a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1797f, 2433f), vec2<f32>(-863f, -1121f))), vec2<f32>(-2190f, 1905f), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2025f, -1383f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1369f, 104f) * vec2<f32>(553f, -1163f)), true)), vec2<bool>(select(true, false, true), select(true, false, true)))), abs(-2147483647i)), func_2(15920i, (vec2<u32>(var_1.d, 110470u) << (~var_1.a.a % vec2<u32>(32u))) & ~var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(191f, -1805f) * vec2<f32>(471f, -850f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1260f, -715f) * vec2<f32>(465f, 1000f)) - vec2<f32>(497f, -504f))), _wgslsmith_div_i32(1i | u_input.b, -firstTrailingBit(global3.x))), ~(var_0.c ^ _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.c, var_0.c, -1i), firstTrailingBit(var_1.c))), min(1u, _wgslsmith_div_u32(~(~var_3.x), ~(~1u))));
    global1 = array<Struct_2, 29>();
    global2 = func_2(abs(~global3.x), _wgslsmith_mult_vec2_u32(~(~(vec2<u32>(32131u, var_3.x) & vec2<u32>(0u, var_3.x))), global2.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-357f, 191f), vec2<f32>(-504f, -450f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-835f, 428f))))))), var_1.c);
    let var_4 = vec4<u32>(~min(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(var_0.a.a, vec2<u32>(global2.a.x, global2.a.x)) << (select(4294967295u, var_1.b.a.x, true) % 32u)), _wgslsmith_sub_u32(~func_3(vec2<i32>(var_0.c, var_1.c)), 26056u | ~firstTrailingBit(0u)), _wgslsmith_mod_u32(var_3.x, 0u), _wgslsmith_mult_u32(91784u ^ u_input.c, ~(~(~var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~min(vec2<u32>(8265u, 0u), var_3), var_1.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1630f), _wgslsmith_div_f32(-1024f, 1176f), true)), _wgslsmith_f_op_f32(max(-213f, _wgslsmith_f_op_f32(ceil(-761f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(611f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

