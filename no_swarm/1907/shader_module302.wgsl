struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1113f, vec3<i32>(66643i, 1i, 2147483647i), -8888i, false, vec3<bool>(true, true, true)), Struct_1(-322f, vec3<i32>(17383i, 0i, 0i), -1i, true, vec3<bool>(false, true, true)), Struct_1(304f, vec3<i32>(-37993i, 2147483647i, i32(-2147483648)), 51199i, true, vec3<bool>(false, false, false)), Struct_1(-735f, vec3<i32>(7067i, i32(-2147483648), -1i), -1i, true, vec3<bool>(true, true, false)), Struct_1(-910f, vec3<i32>(0i, 21750i, 108526i), 2147483647i, true, vec3<bool>(false, true, true)), Struct_1(-1487f, vec3<i32>(1i, 0i, 34365i), -1i, true, vec3<bool>(false, true, true)), Struct_1(-1090f, vec3<i32>(8389i, -3361i, 2147483647i), 21054i, true, vec3<bool>(true, true, true)), Struct_1(-706f, vec3<i32>(41064i, 1186i, -1i), 62597i, true, vec3<bool>(false, true, true)), Struct_1(-909f, vec3<i32>(-31961i, 13768i, 0i), 2147483647i, true, vec3<bool>(false, false, true)), Struct_1(-595f, vec3<i32>(2147483647i, -1i, 1i), -47611i, false, vec3<bool>(true, false, true)), Struct_1(-327f, vec3<i32>(39796i, 21084i, -16621i), 22404i, true, vec3<bool>(false, true, false)), Struct_1(-2919f, vec3<i32>(-52535i, 0i, -1i), 2147483647i, true, vec3<bool>(false, false, false)), Struct_1(546f, vec3<i32>(-14767i, -30297i, 11625i), 24620i, false, vec3<bool>(true, true, false)), Struct_1(-1078f, vec3<i32>(0i, -1i, -36671i), 2147483647i, true, vec3<bool>(false, false, false)), Struct_1(1000f, vec3<i32>(-16914i, 21461i, 1i), -26856i, false, vec3<bool>(false, false, true)), Struct_1(360f, vec3<i32>(10863i, 5610i, 2147483647i), 1i, true, vec3<bool>(true, false, true)), Struct_1(434f, vec3<i32>(5494i, 1i, -2847i), 2147483647i, false, vec3<bool>(false, true, true)), Struct_1(391f, vec3<i32>(0i, -24674i, -42758i), -1i, true, vec3<bool>(false, false, true)), Struct_1(1110f, vec3<i32>(-20125i, -46438i, 0i), 19508i, false, vec3<bool>(true, false, true)), Struct_1(718f, vec3<i32>(-3462i, -19430i, 0i), 1i, false, vec3<bool>(true, false, true)), Struct_1(1000f, vec3<i32>(-1i, 1i, -1i), -18060i, true, vec3<bool>(false, false, false)), Struct_1(-1477f, vec3<i32>(-66041i, 2147483647i, -4378i), 58586i, true, vec3<bool>(false, false, true)), Struct_1(409f, vec3<i32>(-17229i, -1i, 2147483647i), 7443i, false, vec3<bool>(true, true, true)), Struct_1(1000f, vec3<i32>(25313i, -58559i, -3056i), 25403i, true, vec3<bool>(true, false, false)), Struct_1(-895f, vec3<i32>(-11054i, -1i, i32(-2147483648)), 0i, true, vec3<bool>(false, true, true)), Struct_1(-1000f, vec3<i32>(0i, 1i, -1i), -12211i, true, vec3<bool>(false, false, false)), Struct_1(880f, vec3<i32>(38284i, 1i, -1i), -1i, true, vec3<bool>(false, false, false)), Struct_1(-1000f, vec3<i32>(-1i, 1i, 2147483647i), -19136i, false, vec3<bool>(true, false, true)), Struct_1(-592f, vec3<i32>(19936i, 2147483647i, 2147483647i), 8134i, true, vec3<bool>(false, true, true)), Struct_1(-1147f, vec3<i32>(-1i, 0i, -46221i), 2147483647i, true, vec3<bool>(false, false, false)), Struct_1(-1142f, vec3<i32>(1i, -20386i, 1i), 2147483647i, true, vec3<bool>(false, true, false)), Struct_1(-292f, vec3<i32>(0i, i32(-2147483648), 7252i), 40227i, true, vec3<bool>(false, true, false)));

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec3<u32>(20057u, 0u, 55350u)), Struct_3(vec3<u32>(52554u, 1u, 32642u)), Struct_3(vec3<u32>(132640u, 1u, 51723u)), Struct_3(vec3<u32>(0u, 0u, 0u)), Struct_3(vec3<u32>(20854u, 60650u, 0u)), Struct_3(vec3<u32>(6698u, 0u, 0u)), Struct_3(vec3<u32>(4294967295u, 0u, 66030u)), Struct_3(vec3<u32>(1u, 4294967295u, 0u)), Struct_3(vec3<u32>(1u, 59661u, 4294967295u)), Struct_3(vec3<u32>(1u, 4294967295u, 1u)), Struct_3(vec3<u32>(0u, 1u, 0u)));

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(792f, vec3<i32>(42327i, 1i, -1i), 2147483647i, true, vec3<bool>(true, false, true)), Struct_1(177f, vec3<i32>(-18559i, -34721i, i32(-2147483648)), i32(-2147483648), true, vec3<bool>(false, false, false)), Struct_1(535f, vec3<i32>(1i, -359i, 0i), -67587i, true, vec3<bool>(false, true, true)), Struct_1(-155f, vec3<i32>(105515i, -21824i, -1i), 20277i, false, vec3<bool>(false, false, false)), Struct_1(923f, vec3<i32>(-1i, -1i, 1i), 1i, true, vec3<bool>(false, false, true)), Struct_1(-667f, vec3<i32>(1909i, i32(-2147483648), 17214i), 33556i, true, vec3<bool>(true, false, false)), Struct_1(-898f, vec3<i32>(i32(-2147483648), 7357i, -46661i), -1i, false, vec3<bool>(true, true, true)), Struct_1(-767f, vec3<i32>(1i, 1i, 1i), -97341i, true, vec3<bool>(true, true, false)), Struct_1(719f, vec3<i32>(-1i, 2147483647i, -8127i), -1i, true, vec3<bool>(true, false, true)), Struct_1(-994f, vec3<i32>(-13628i, 2147483647i, 10457i), 1i, false, vec3<bool>(false, false, true)), Struct_1(976f, vec3<i32>(i32(-2147483648), -1113i, -1341i), -9647i, true, vec3<bool>(false, true, false)), Struct_1(-550f, vec3<i32>(-38157i, 9299i, 1i), 18052i, true, vec3<bool>(false, false, true)), Struct_1(-1791f, vec3<i32>(0i, -1i, 49643i), i32(-2147483648), true, vec3<bool>(false, false, true)), Struct_1(-1596f, vec3<i32>(i32(-2147483648), 0i, 1i), -1i, true, vec3<bool>(false, true, false)));

var<private> global3: array<i32, 8> = array<i32, 8>(-35461i, 0i, -1i, 0i, 0i, -1i, 11765i, 1i);

var<private> global4: bool = false;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    return _wgslsmith_f_op_f32(-1806f - -1018f);
}

fn func_3() -> f32 {
    var var_0 = -39320i;
    let var_1 = -245f;
    global3 = array<i32, 8>();
    var var_2 = ~u_input.d;
    var_2 = ~4294967295u;
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global2 = array<Struct_1, 14>();
    let var_0 = -411f;
    global1 = array<Struct_3, 11>();
    return 4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> bool {
    global0 = array<Struct_1, 32>();
    var var_0 = vec3<bool>(!any(vec4<bool>(true, false, true, true)), select(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(1000f + 854f)) != arg_3, true, _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(293f + arg_3))) <= _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(arg_3 + arg_3))), any(!vec2<bool>(true, any(vec4<bool>(false, false, false, false)))));
    global3 = array<i32, 8>();
    let var_1 = global1[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-925f, _wgslsmith_f_op_f32(func_2(vec3<bool>(var_0.x, true, var_0.x))), _wgslsmith_f_op_f32(func_3()), 1678f)), countOneBits(_wgslsmith_sub_u32(4294967295u, 4294967295u) | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), 11u)];
    return ((1i >= _wgslsmith_div_i32(-u_input.b, u_input.b)) && true) & (~1u != (u_input.c | (1u & firstTrailingBit(arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    global4 = all(!vec3<bool>(func_1(~u_input.a.xxx, global3[_wgslsmith_index_u32(reverseBits(1u), 8u)], select(u_input.a.xz, u_input.a.yz, vec2<bool>(true, false)), _wgslsmith_f_op_f32(f32(-1f) * -248f)), true, (u_input.d >= u_input.a.x) & true));
    let var_0 = u_input.d << (_wgslsmith_add_u32(~u_input.e, func_4(vec4<f32>(-420f, -682f, -1201f, _wgslsmith_f_op_f32(372f + 165f)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) | u_input.e)) % 32u);
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-923f * _wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(floor(-102f))) + _wgslsmith_f_op_f32(-813f + _wgslsmith_f_op_f32(select(1000f, 177f, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -394f), -484f)), 311f), vec4<bool>(true, true, true, true));
    var var_2 = select(~var_0, ~min(~(23512u ^ u_input.c), _wgslsmith_add_u32(27339u >> (u_input.a.x % 32u), countOneBits(var_0))), any(select(vec2<bool>(any(var_1.b.yx), all(vec4<bool>(true, var_1.b.x, var_1.b.x, false))), select(vec2<bool>(var_1.b.x, var_1.b.x), var_1.b.xy, true), false)));
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a.x, 11u)];
    let var_4 = select(!var_1.b, !select(vec4<bool>(var_1.b.x, var_1.b.x, true, true), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), true), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -41997i, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_3.a.x, var_0, 0u, 46640u) >> (u_input.a % vec4<u32>(32u))), countOneBits(u_input.a), u_input.a << (reverseBits(vec4<u32>(4294967295u, var_0, var_3.a.x, 1u)) % vec4<u32>(32u))), ~select(~u_input.a, firstLeadingBit(u_input.a), vec4<bool>(var_4.x, var_4.x, var_1.b.x, true))), 4294967295u, firstTrailingBit(max(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(39583u, var_0), 8u)], 3271i), u_input.b >> (max(var_3.a.x, var_3.a.x) % 32u))));
}

