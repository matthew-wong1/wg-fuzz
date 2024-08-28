struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32 = -37184i;

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(639f, 169f), vec2<f32>(371f, 271f), vec2<f32>(1038f, 954f), vec2<f32>(186f, 1102f), vec2<f32>(-1000f, -459f), vec2<f32>(672f, -298f), vec2<f32>(-509f, -104f), vec2<f32>(833f, 1000f), vec2<f32>(172f, -107f), vec2<f32>(700f, 148f), vec2<f32>(442f, -1000f), vec2<f32>(476f, 107f), vec2<f32>(1376f, 1253f), vec2<f32>(-403f, -1528f), vec2<f32>(-1268f, 838f), vec2<f32>(-771f, -1003f), vec2<f32>(354f, -307f));

var<private> global2: array<f32, 12> = array<f32, 12>(993f, -355f, 2403f, -1000f, 328f, 362f, -2053f, -530f, 202f, -564f, 661f, 975f);

var<private> global3: vec2<f32>;

var<private> global4: vec4<u32> = vec4<u32>(24950u, 1u, 54347u, 0u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_1.x) - _wgslsmith_f_op_f32(floor(global3.x))), -429f)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1039f, global2[_wgslsmith_index_u32(abs(20104u), 12u)]) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, 1000f, global2[_wgslsmith_index_u32(global4.x, 12u)]))))))));
    let var_1 = vec3<bool>(true, true, !((global3.x < global2[_wgslsmith_index_u32(arg_0.x, 12u)]) | any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_2 = countOneBits(2942u);
    let var_3 = select(vec4<bool>(any(select(var_1.zx, !vec2<bool>(false, var_1.x), true)), true, false, any(vec2<bool>(var_1.x, false))), !vec4<bool>(false, any(!vec2<bool>(var_1.x, true)), all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), false), select(!select(vec4<bool>(var_1.x, false, var_1.x, true), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_1.x), vec4<bool>(var_1.x, true, var_1.x, false)), vec4<bool>(true, true, var_1.x, false), !vec4<bool>(any(vec2<bool>(true, true)), var_0.x != 376f, var_1.x, false)));
    global0 = _wgslsmith_div_i32(~_wgslsmith_mult_i32(max(1i, -44641i), firstLeadingBit(_wgslsmith_mod_i32(42545i, -1i))), 27190i | select(~2147483647i >> (_wgslsmith_clamp_u32(u_input.a, global4.x, 0u) % 32u), select(2147483647i, i32(-1i) * -2147483647i, 3455u != global4.x), true));
    return _wgslsmith_mult_vec4_i32(~vec4<i32>(-5180i, abs(-2147483647i), 1i, _wgslsmith_add_i32(-1i, -53328i)) | vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, -2147483647i), vec4<i32>(-1i, -1i, 2147483647i, -10934i))), _wgslsmith_mod_i32(-9182i, -29623i), _wgslsmith_sub_i32(1i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(15725i, -15073i, -15114i, 10171i) >> (vec4<u32>(arg_0.x, var_2, global4.x, u_input.a) % vec4<u32>(32u)), vec4<i32>(11334i, 12144i, 2147483647i, 1i))), vec4<i32>(-37677i, firstLeadingBit(countOneBits(-27639i)), -34985i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-65709i, -1i, -1i, -2147483647i))) & -vec4<i32>(1i, _wgslsmith_div_i32(-52160i, 5875i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9878i, 2147483647i, -1i), vec4<i32>(2147483647i, -66027i, 0i, 2147483647i)), firstTrailingBit(-2147483647i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1422f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global3.x, true)) - _wgslsmith_f_op_f32(-global3.x)))));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(u_input.a)), 17u)]) + _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(arg_1.d, 17u)], vec2<f32>(_wgslsmith_f_op_f32(var_0 - 1583f), global2[_wgslsmith_index_u32(global4.x, 12u)]), any(arg_0) || true))) - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(global4.x, 17u)] - global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 79857u, 0u, arg_1.d)), vec4<u32>(1u, u_input.a, global4.x, 11849u))), 17u)]));
    var var_1 = arg_1;
    var var_2 = firstTrailingBit(0i);
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(~var_1.a.x & arg_2.x, countOneBits(0i)), -36117i);
    return vec2<u32>(1u, 23085u);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = countOneBits(firstTrailingBit(vec2<i32>(reverseBits(_wgslsmith_div_i32(arg_2.c, arg_2.a.x)), -2147483647i)));
    var var_1 = arg_3 >> ((firstTrailingBit(global4.yy) | (global4.zy ^ _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(1u, 1u)))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_f_op_f32(f32(-1f) * -963f), arg_0.x)), _wgslsmith_f_op_f32(sign(global3.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-247f)) - global3.x)))));
    let var_3 = !all(arg_0.wxx);
    var var_4 = arg_2;
    return 55992u;
}

fn func_6(arg_0: f32) -> vec4<u32> {
    global1 = array<vec2<f32>, 17>();
    var var_0 = Struct_1(firstTrailingBit(min(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -52642i, -4486i), firstLeadingBit(-32879i), -613i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(29371i, -2147483647i, 0i, -53773i))), reverseBits(~vec4<i32>(6361i, -2147483647i, 0i, 71187i)))), -9474i, func_3(vec3<u32>(1u, 0u, 22880u)).x, 13228u, func_3(vec3<u32>(~(~u_input.a), u_input.a, 51763u)));
    let var_1 = vec4<i32>(var_0.b, -func_3(vec3<u32>(u_input.a, var_0.d, u_input.a) ^ global4.wzz).x ^ var_0.c, ~var_0.b, -1i);
    var_0 = Struct_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(-16574i, 2147483647i, var_0.a.x, var_1.x), vec4<i32>(-2147483647i, var_1.x, var_0.b, 27925i))), 44523i, 32060i, ~reverseBits(1u), ~var_0.e);
    let var_2 = !vec4<bool>(!(_wgslsmith_div_i32(var_0.e.x, var_1.x) < var_1.x), true, !select(all(vec4<bool>(false, true, false, false)), true, false), all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), global3.x <= global2[_wgslsmith_index_u32(1u, 12u)])));
    return vec4<u32>(countOneBits(~79563u), 48730u, 4561u, _wgslsmith_mod_u32(16119u, u_input.a));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -1559f), vec2<f32>(-591f, 1024f), false))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_3.yx, _wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(u_input.a, 17u)])))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zx)), _wgslsmith_f_op_vec2_f32(floor(arg_0.yw)))) + vec2<f32>(global3.x, arg_0.x))));
    global4 = ~func_6(global2[_wgslsmith_index_u32(func_5(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), global4.yyz ^ _wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 4294967295u, 1u), vec3<u32>(global4.x, 4294967295u, arg_1)), Struct_1(-vec4<i32>(0i, arg_2.x, -55916i, 16172i), _wgslsmith_sub_i32(-452i, -2147483647i), -arg_2.x, global4.x, firstTrailingBit(vec4<i32>(0i, 0i, arg_2.x, arg_2.x))), func_4(vec3<bool>(true, true, true), Struct_1(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), 0i, 2147483647i, arg_1, vec4<i32>(arg_2.x, -3813i, arg_2.x, 1i)), func_3(global4.xxz))), 12u)]);
    var var_1 = _wgslsmith_div_vec2_i32(arg_2 << (abs(~vec2<u32>(arg_1, 1u)) % vec2<u32>(32u)), -min(countOneBits(-arg_2), vec2<i32>(2147483647i, _wgslsmith_add_i32(-1i, arg_2.x))));
    global2 = array<f32, 12>();
    let var_2 = vec4<u32>(37027u, u_input.a | 0u, arg_1, 7123u) >> ((vec4<u32>(_wgslsmith_mult_u32(15490u, 40992u), u_input.a, 8547u, 4294967295u) ^ ~vec4<u32>(arg_1 & 0u, 1u, 1u, 1u)) % vec4<u32>(32u));
    return Struct_1(vec4<i32>(var_1.x, arg_2.x, var_1.x, arg_2.x), _wgslsmith_dot_vec3_i32(min(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x, -2565i, arg_2.x), vec3<i32>(var_1.x, var_1.x, -1i), vec3<i32>(arg_2.x, -33559i, 1i))), vec3<i32>(3887i, var_1.x, var_1.x) << (~vec3<u32>(arg_1, u_input.a, global4.x) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1430i, 1i, 2147483647i), vec3<i32>(arg_2.x, -2147483647i, var_1.x) ^ vec3<i32>(11754i, arg_2.x, var_1.x)))), var_1.x, ~_wgslsmith_add_u32(45856u, func_5(vec4<bool>(true, false, false, false), vec3<u32>(var_2.x, 20268u, var_2.x), Struct_1(vec4<i32>(arg_2.x, 27773i, -43925i, -1i), arg_2.x, arg_2.x, global4.x, vec4<i32>(var_1.x, arg_2.x, 1i, var_1.x)), vec2<u32>(0u, u_input.a)) << (_wgslsmith_div_u32(45496u, arg_1) % 32u)), reverseBits(-vec4<i32>(_wgslsmith_add_i32(-27539i, 12266i), -1i, arg_2.x, _wgslsmith_sub_i32(var_1.x, 2147483647i))));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = !(!vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    global0 = arg_0.b;
    let var_2 = Struct_1(_wgslsmith_mult_vec4_i32(~(-var_0.a), -firstLeadingBit(arg_0.a)) | ~(countOneBits(arg_0.e) | ~arg_0.e), arg_0.b, -33015i, 1u, vec4<i32>(-arg_0.a.x, 1i, firstLeadingBit(arg_0.a.x), var_0.a.x));
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, global3.x, -1000f, global2[_wgslsmith_index_u32(15507u, 12u)]))), vec4<f32>(894f, 1000f, 1001f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.x, 12u)] - -582f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 510f, 499f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], -544f, 283f, global2[_wgslsmith_index_u32(arg_0.d, 12u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(954f, 2645f, 1000f, global3.x) + vec4<f32>(-497f, global3.x, global2[_wgslsmith_index_u32(12725u, 12u)], global2[_wgslsmith_index_u32(arg_2, 12u)]))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_1, 12u)], 1616f, global2[_wgslsmith_index_u32(arg_0.d, 12u)], global3.x) + vec4<f32>(-575f, global3.x, 934f, 632f))))))), 14554u, -firstTrailingBit(vec2<i32>(2147483647i, arg_0.e.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, -2094f, 178f))));
    return Struct_1(arg_0.e, min(arg_0.b, 2147483647i), -(var_3.e.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(11000u, arg_0.d, var_0.d), global4.xyx) % 32u)), 4294967295u, vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.a.x, var_2.a.x), -min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(arg_0.a.x, var_3.e.x))), 1i, select(_wgslsmith_div_i32(-38772i, _wgslsmith_add_i32(var_0.e.x, var_2.c)), min(_wgslsmith_dot_vec2_i32(arg_0.a.zx, var_0.e.wz), 39548i), any(vec3<bool>(false, true, true))), var_0.c));
}

fn func_8(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    global3 = vec2<f32>(-925f, _wgslsmith_f_op_f32(sign(-367f)));
    var var_0 = _wgslsmith_add_u32(1u, min(u_input.a, u_input.a));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1660f, -142f, 1000f, global2[_wgslsmith_index_u32(372u, 12u)]), vec4<f32>(global3.x, arg_0, global2[_wgslsmith_index_u32(u_input.a, 12u)], -675f), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, global3.x, -983f, global2[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(517f, 307f, arg_0, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-234f, global2[_wgslsmith_index_u32(arg_1.d, 12u)]), _wgslsmith_f_op_f32(108f * global3.x), -278f, _wgslsmith_f_op_f32(global3.x - 251f)))), global4.x, abs(vec2<i32>(-2147483647i, i32(-1i) * -42676i) ^ (vec2<i32>(-1i) * -arg_1.e.yx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 12u)]), 1096f))).a;
    let var_2 = arg_1;
    return !(!vec3<bool>(arg_2.x, true, all(select(vec2<bool>(arg_2.x, true), arg_2, vec2<bool>(false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 17>();
    global1 = array<vec2<f32>, 17>();
    global2 = array<f32, 12>();
    var var_0 = !vec3<bool>(true, true, (any(vec2<bool>(true, true)) && true) | true);
    var var_1 = func_8(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-614f, vec4<f32>(-359f, global2[_wgslsmith_index_u32(u_input.a, 12u)], global3.x, 711f), Struct_1(vec4<i32>(-2644i, 2147483647i, -18043i, -168i), -2147483647i, 0i, global4.x, vec4<i32>(23084i, 36012i, 20558i, 1i)))), -437f, true)) * -570f)), func_7(func_2(vec4<f32>(228f, 1000f, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(85237u, 12u)], 691f)), _wgslsmith_f_op_f32(round(1135f))), global4.x, -_wgslsmith_clamp_vec2_i32(vec2<i32>(23004i, -1i), vec2<i32>(29076i, 35023i), vec2<i32>(-51986i, 2147483647i)), vec3<f32>(1117f, _wgslsmith_f_op_f32(349f * global3.x), global3.x)), firstLeadingBit(_wgslsmith_add_u32(~u_input.a, 0u)), global4.x), select(var_0.zz, select(vec2<bool>(all(vec4<bool>(false, true, var_0.x, var_0.x)), var_0.x != true), vec2<bool>(var_0.x, false), var_0.xx), vec2<bool>(var_0.x, ~u_input.a < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(global4.x, u_input.a, global4.x, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(11931i, 20341i, 26587i, -36764i), ~vec4<i32>(1i, 1i, 1i, 1i))));
}

