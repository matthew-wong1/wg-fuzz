struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: Struct_3;

var<private> global2: vec3<bool>;

var<private> global3: array<u32, 27> = array<u32, 27>(1u, 4294967295u, 4355u, 22679u, 34748u, 25244u, 0u, 4294967295u, 3821u, 45498u, 4294967295u, 0u, 75663u, 4294967295u, 4778u, 0u, 4294967295u, 1u, 8187u, 27467u, 1u, 4294967295u, 1u, 1u, 1u, 57419u, 4294967295u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    global3 = array<u32, 27>();
    let var_0 = _wgslsmith_mod_vec4_i32(abs(~vec4<i32>(-19174i, u_input.c.x, 37456i, 67544i | u_input.c.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, 31205i), _wgslsmith_add_i32(-_wgslsmith_div_i32(0i, u_input.c.x), firstLeadingBit(2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(48869i, u_input.c.x, 25314i), ~vec3<i32>(-1i, u_input.c.x, 22645i)), ~vec3<i32>(u_input.c.x, -33699i, u_input.c.x) >> (max(vec3<u32>(35652u, arg_0.x, u_input.a), arg_0.zzx) % vec3<u32>(32u))), -2147483647i));
    return -u_input.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_4) -> vec3<bool> {
    global2 = vec3<bool>(any(vec2<bool>(any(select(arg_0, vec3<bool>(false, false, false), false)), true)), select(true, false, true), true);
    var var_0 = vec3<i32>(_wgslsmith_div_i32(~(-(~arg_3.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(17744i), arg_3.a), func_3(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.b.x, global3[_wgslsmith_index_u32(78814u, 27u)], arg_3.b.x, global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(46231u, u_input.a, 4294967295u, arg_3.b.x))))), ~(-max(min(u_input.c.x, 1930i), ~u_input.c.x)), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c));
    global1 = arg_3.e;
    global2 = !arg_0;
    global0 = array<vec3<f32>, 27>();
    return !select(!select(vec3<bool>(arg_0.x, global2.x, global2.x), arg_0, arg_0), !vec3<bool>(true, any(vec2<bool>(arg_3.d, arg_0.x)), true), false);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = all(arg_2.zz);
    var var_1 = arg_1;
    let var_2 = Struct_4(-1159i, ~vec3<u32>(53385u, ~global3[_wgslsmith_index_u32(4294967295u, 27u)], firstTrailingBit(reverseBits(u_input.a))), i32(-1i) * -1i, true, Struct_3(global1.a, arg_1.x));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, -1000f, var_2.e.a.b, global1.b) * vec4<f32>(global1.a.b, var_1.x, -159f, global1.b))))) + vec4<f32>(var_2.e.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -278f))), _wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(-1526f + -667f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_1, arg_1))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, 802f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.e.b, 108f), var_2.e.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(632f * -1820f) + var_2.e.a.b))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(416f, 690f) - vec2<f32>(-1000f, 500f)))), -1472f), select(~min(vec3<i32>(u_input.c.x, var_2.a, u_input.c.x), vec3<i32>(20214i, var_2.c, var_2.c)) << (vec3<u32>(32835u, _wgslsmith_mult_u32(12909u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48189u, 27u)], 27u)]), ~0u) % vec3<u32>(32u)), vec3<i32>(19123i, reverseBits(_wgslsmith_div_i32(u_input.c.x, var_2.a)), u_input.c.x), vec3<bool>(func_2(func_2(vec3<bool>(true, arg_0, arg_0), Struct_1(vec2<f32>(arg_1.x, -1219f), var_1.x), var_2.e.a.a, Struct_4(33534i, vec3<u32>(0u, u_input.a, u_input.b), u_input.c.x, var_2.d, var_2.e)), var_2.e.a, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, global1.a.a.x))), Struct_4(-116i, vec3<u32>(u_input.b, var_2.b.x, u_input.a), u_input.c.x, true, Struct_3(Struct_1(var_2.e.a.a, 767f), -746f))).x, u_input.c.x > var_2.a, global3[_wgslsmith_index_u32(1u, 27u)] >= ~var_2.b.x)), var_1.x, -14614i);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_4(u_input.c.x, vec3<u32>(~_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(u_input.a, global3[_wgslsmith_index_u32(1u, 27u)], 114702u), global3[_wgslsmith_index_u32(~u_input.a, 27u)]), ~select(global3[_wgslsmith_index_u32(1u, 27u)] | global3[_wgslsmith_index_u32(58315u, 27u)], 68224u, global2.x), ~(~(~40929u))), max(_wgslsmith_mult_i32(25136i, u_input.c.x), -u_input.c.x), any(!(!select(vec3<bool>(false, false, global2.x), vec3<bool>(true, true, global2.x), vec3<bool>(false, false, global2.x)))), Struct_3(global1.a, -995f));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 170f))), _wgslsmith_f_op_vec2_f32(-global1.a.a))) + vec2<f32>(_wgslsmith_f_op_f32(1000f * global1.a.a.x), -653f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(839f - global1.a.b)), false))), Struct_1(var_0.e.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(var_0.c, 2147483647i))), ~abs(abs(vec3<i32>(42572i, u_input.c.x, u_input.c.x)))), -548f, -57967i);
    let var_2 = ~vec3<u32>(1u ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(34471u, 27u)], u_input.b), 4294967295u), 1u, 13411u);
    var var_3 = !vec3<bool>(true, global2.x, false);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, _wgslsmith_f_op_f32(arg_0 + var_1.a.b), _wgslsmith_f_op_f32(abs(var_1.d)), _wgslsmith_f_op_f32(-var_1.a.b)))) * vec4<f32>(_wgslsmith_f_op_f32(select(572f, 273f, all(!vec4<bool>(var_0.d, false, false, global2.x)))), _wgslsmith_f_op_f32(var_0.e.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f + var_0.e.b))), 1158f, var_0.e.a.a.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.e.b)), _wgslsmith_f_op_f32(select(528f, 268f, u_input.c.x > var_0.a)))), -180f);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(func_4(global2.x, _wgslsmith_f_op_vec4_f32(-arg_0), select(func_2(vec3<bool>(global2.x, false, global2.x), arg_2, global1.a.a, Struct_4(0i, vec3<u32>(1369u, 17162u, u_input.b), arg_1.x, false, Struct_3(arg_2, 1535f))), !vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x))))), global1.a, min(-select(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(u_input.c.x, arg_1.x, -1i), vec3<bool>(true, false, global2.x)), vec3<i32>(-u_input.c.x, u_input.c.x, arg_1.x)) & (firstLeadingBit(-vec3<i32>(-2147483647i, -19811i, arg_1.x)) ^ _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, -27572i, arg_1.x), ~vec3<i32>(arg_1.x, arg_1.x, -14055i), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -67361i, u_input.c.x), vec3<i32>(u_input.c.x, -57442i, arg_1.x)))), _wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_2.b))), 1i);
    let var_1 = global1.a;
    var var_2 = ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.b), ~vec2<u32>(17210u, 4294967295u)) | vec2<u32>(global3[_wgslsmith_index_u32(28739u, 27u)] << (14352u % 32u), ~global3[_wgslsmith_index_u32(0u, 27u)]));
    global0 = array<vec3<f32>, 27>();
    var_2 = vec2<u32>(_wgslsmith_sub_u32(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(16902u, global3[_wgslsmith_index_u32(u_input.a, 27u)]))), firstTrailingBit(reverseBits(87467u >> (var_2.x % 32u)))), 26568u >> (~var_2.x % 32u));
    return arg_0;
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    global0 = array<vec3<f32>, 27>();
    let var_0 = vec2<i32>(-1i) * -arg_3.c.xz;
    let var_1 = global3[_wgslsmith_index_u32(~5960u, 27u)];
    global3 = array<u32, 27>();
    var var_2 = arg_3.b;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 153f)))), arg_0.wx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + global1.a.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)), 417f, !(!global2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(39714u, 27u)];
    global0 = array<vec3<f32>, 27>();
    var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(firstTrailingBit(global3[_wgslsmith_index_u32(87679u, 27u)])), 27u)], 27u)];
    global1 = func_6(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, var_0.x, var_0.x, global1.b) * vec4<f32>(var_0.x, 2178f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, global1.b)))), firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, u_input.c), abs(u_input.c))), global1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), ~vec4<i32>(max(u_input.c.x, ~u_input.c.x), -6494i, -52655i, ~u_input.c.x), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, global1.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2510f - var_0.x)))), global1.a, _wgslsmith_mod_vec3_i32(~vec3<i32>(-46114i, 1i, u_input.c.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-18368i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -567i, u_input.c.x)), u_input.c.x, 0i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(-994f, -322f, var_0.x, global1.a.a.x), u_input.c, global1.a)).x)))), _wgslsmith_mod_i32(func_3(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 27u)], 41804u, u_input.a, 1u)).x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5072i, u_input.c.x, 0i, u_input.c.x), vec4<i32>(u_input.c.x, 20021i, 2147483647i, u_input.c.x)), u_input.c.x << (global3[_wgslsmith_index_u32(1u, 27u)] % 32u)))));
    var var_1 = Struct_3(Struct_1(vec2<f32>(-701f, var_0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f)));
    var var_2 = Struct_4(u_input.c.x, vec3<u32>(4294967295u, u_input.b, ~u_input.a), func_3(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(u_input.b, 27u)], 47336u, global3[_wgslsmith_index_u32(0u, 27u)])).x | _wgslsmith_mult_i32(max(u_input.c.x, ~u_input.c.x), abs(-43229i) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -38526i), vec3<i32>(-19136i, 19025i, 7954i))), true, func_6(vec4<f32>(150f, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1842f - -450f) * _wgslsmith_f_op_f32(-var_0.x)), var_0.x), -1383f, _wgslsmith_mult_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x), vec4<bool>(false, global2.x, true, global2.x))), -max(vec4<i32>(u_input.c.x, 68067i, -1i, -36495i), vec4<i32>(39123i, u_input.c.x, -1i, -158i))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global1.a.a)), var_0.x), func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, -1674f, 1715f, -1000f) + vec4<f32>(-642f, var_1.b, var_1.a.b, -1360f)), var_0.x, -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_2(Struct_1(var_0.yz, 776f), global1.a, vec3<i32>(u_input.c.x, u_input.c.x, 36196i), global1.a.a.x, -15626i)).a, _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, u_input.c.x, -2147483647i)), countOneBits(vec3<i32>(1i, 2147483647i, u_input.c.x)), ~vec3<i32>(u_input.c.x, u_input.c.x, 0i)), 1462f, -reverseBits(u_input.c.x))));
    let var_3 = Struct_2(Struct_1(var_1.a.a, var_2.e.b), func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(-508f, _wgslsmith_f_op_f32(-1186f + 753f), 237f, -209f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, var_1.b, var_1.b, 100f)))), _wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.b), vec4<i32>(-countOneBits(0i), -6722i, select(abs(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.a, 0i, u_input.c.x), vec4<i32>(u_input.c.x, var_2.c, -37140i, -205i)), var_2.d), -2147483647i), Struct_2(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, 179f, 352f, var_0.x)), _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(var_2.e.b, var_0.x, var_1.a.b, 1393f), vec2<i32>(12274i, var_2.a), var_1.a)).x, vec4<i32>(897i, u_input.c.x, u_input.c.x, 14451i) & vec4<i32>(var_2.a, u_input.c.x, u_input.c.x, var_2.a), Struct_2(global1.a, var_1.a, vec3<i32>(46187i, -1i, 66138i), var_2.e.a.b, u_input.c.x)).a, func_5(global1.b), _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.c.x, 0i, -78386i), vec3<i32>(1i, -44473i, 125i)), abs(vec3<i32>(0i, 1i, 0i))), -521f, ~_wgslsmith_add_i32(1i, var_2.c))).a, max(select(-firstLeadingBit(vec3<i32>(var_2.c, -19423i, 0i)), vec3<i32>(1i, ~34748i, _wgslsmith_div_i32(var_2.c, u_input.c.x)), func_2(vec3<bool>(false, var_2.d, true), Struct_1(vec2<f32>(global1.b, var_2.e.a.a.x), var_1.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.b) - var_1.a.a), Struct_4(var_2.a, var_2.b, -14281i, var_2.d, var_2.e))), vec3<i32>(-1i & firstLeadingBit(var_2.c), ~(u_input.c.x | var_2.c), func_3(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], u_input.b, 34317u, u_input.a)).x)), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(abs(global1.a.b))))), (u_input.c.x << (firstLeadingBit(0u) % 32u)) | var_2.a);
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(var_2.b.x, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2884u, 27u)], 27u)], 22997u))), abs(_wgslsmith_mod_u32(select(41471u, 0u, false), ~var_2.b.x))), firstLeadingBit(var_2.b.yy));
    var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(7689u, 27u)] | (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3[_wgslsmith_index_u32(var_2.b.x, 27u)], u_input.a, 4294967295u, 1u)), ~vec4<u32>(943u, 46671u, 4294967295u, 4294967295u)), 27u)] ^ ~u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.d, var_1.b, global1.a.a.x, -1824f))), vec4<f32>(314f, var_0.x, -577f, -369f)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(-777f, -994f), _wgslsmith_f_op_f32(f32(-1f) * -528f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(sign(-735f)))), -728f, global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1196f))))), _wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(round(var_0.x)))));
}

