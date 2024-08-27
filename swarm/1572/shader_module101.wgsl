struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(-541f, false, true));

var<private> global1: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(48604i, -943i, 1i), vec3<i32>(i32(-2147483648), 30139i, -2848i), vec3<i32>(-26016i, i32(-2147483648), 50281i), vec3<i32>(0i, 39930i, i32(-2147483648)), vec3<i32>(-53085i, -6207i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, -64117i), vec3<i32>(2644i, i32(-2147483648), 1i), vec3<i32>(56457i, -15539i, 1i), vec3<i32>(-1i, -25776i, 36102i), vec3<i32>(26578i, 6644i, 8718i), vec3<i32>(-1i, i32(-2147483648), -43557i), vec3<i32>(15877i, 16703i, 1i), vec3<i32>(-55086i, 1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-56592i, -8837i, -20255i), vec3<i32>(i32(-2147483648), 5384i, 0i));

var<private> global2: array<i32, 20> = array<i32, 20>(-1i, 0i, 1i, 30532i, i32(-2147483648), -4386i, 80i, -40551i, 2147483647i, -1i, -3415i, i32(-2147483648), -11381i, 0i, 1301i, 1927i, -7345i, 59349i, -36333i, 6393i);

var<private> global3: bool = true;

var<private> global4: array<u32, 18> = array<u32, 18>(30626u, 4294967295u, 4294967295u, 24595u, 1u, 30377u, 37126u, 1u, 10811u, 0u, 4294967295u, 0u, 0u, 4294967295u, 1u, 5069u, 1u, 15176u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<i32, 20>();
    global4 = array<u32, 18>();
    let var_0 = Struct_1(arg_1, arg_0.b, arg_0.b);
    global2 = array<i32, 20>();
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a * arg_1), arg_1), var_0.b, !(!(u_input.a == global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 20u)])));
    return _wgslsmith_mod_vec2_u32(~(~vec2<u32>(~0u, firstTrailingBit(94568u))), _wgslsmith_sub_vec2_u32(min(vec2<u32>(19860u, 1u) & ~vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(34375u, 14466u) ^ vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27927u, 18u)], 18u)], 24482u), ~vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(4294967295u, 18u)]), ~vec2<u32>(34048u, 1u))), firstLeadingBit(vec2<u32>(max(0u, global4[_wgslsmith_index_u32(1646u, 18u)]), 22326u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<bool> {
    global3 = any(!select(vec3<bool>(!arg_1.x, arg_0.b, true), select(select(vec3<bool>(arg_3.b, false, true), vec3<bool>(true, true, arg_3.c), true), !vec3<bool>(arg_1.x, true, arg_3.b), true), !vec3<bool>(arg_3.c, false, false)));
    let var_0 = arg_3.b;
    global1 = array<vec3<i32>, 17>();
    global2 = array<i32, 20>();
    global2 = array<i32, 20>();
    return !select(select(select(vec4<bool>(arg_3.b, arg_3.c, true, var_0), select(vec4<bool>(arg_0.b, true, true, arg_3.c), vec4<bool>(false, true, true, arg_1.x), arg_0.c), vec4<bool>(arg_0.b, true, arg_0.c, arg_0.b)), vec4<bool>(all(vec4<bool>(true, arg_1.x, false, arg_1.x)), any(vec4<bool>(false, true, true, arg_0.c)), arg_1.x, !arg_3.b), select(vec4<bool>(false, var_0, arg_1.x, true), select(vec4<bool>(var_0, arg_0.c, arg_3.c, arg_0.b), vec4<bool>(arg_0.b, false, true, arg_3.b), vec4<bool>(arg_1.x, var_0, arg_0.b, false)), false)), !vec4<bool>(arg_0.c, true, all(vec4<bool>(false, true, true, true)), true), true);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: f32) -> vec4<bool> {
    global3 = arg_1.c;
    global0 = array<Struct_1, 1>();
    global4 = array<u32, 18>();
    var var_0 = vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(2147483647i, u_input.a)), min(_wgslsmith_sub_i32(u_input.a, -53739i), arg_0.x))), 0i, min(-31527i, -943i), 2147483647i);
    global4 = array<u32, 18>();
    return select(select(select(!(!vec4<bool>(true, false, arg_1.c, arg_1.b)), !select(vec4<bool>(arg_1.b, arg_1.b, true, true), vec4<bool>(arg_1.b, arg_1.b, arg_1.c, arg_1.c), vec4<bool>(true, arg_1.b, arg_1.b, true)), any(vec4<bool>(false, true, arg_1.b, arg_1.c))), !select(select(vec4<bool>(true, arg_1.c, false, true), vec4<bool>(false, true, false, true), arg_1.b), !vec4<bool>(true, arg_1.b, false, arg_1.c), true), true), func_4(Struct_1(_wgslsmith_f_op_f32(-arg_2.x), var_0.x > ~18507i, true), vec2<bool>(true, true), _wgslsmith_clamp_vec2_u32(func_3(Struct_1(451f, true, false), _wgslsmith_f_op_f32(-1308f + arg_1.a), Struct_1(-1088f, arg_1.c, true)), vec2<u32>(0u, 1u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18715u), vec2<u32>(1u, 121624u)) % vec2<u32>(32u)), ~(~vec2<u32>(0u, 24742u))), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(91185u, global4[_wgslsmith_index_u32(1u, 18u)], 1u, 0u) | vec4<u32>(global4[_wgslsmith_index_u32(0u, 18u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 3329u), _wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(81652u, 18u)], 1u, global4[_wgslsmith_index_u32(42356u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49889u, 18u)], 18u)]), vec4<u32>(global4[_wgslsmith_index_u32(0u, 18u)], 1u, global4[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u)))), 1u)]), func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -864f), select(true, any(vec2<bool>(arg_1.c, true)), arg_1.b), false), vec2<bool>(-673f >= _wgslsmith_f_op_f32(select(1814f, arg_1.a, true)), false), abs(vec2<u32>(~33973u, 15144u & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35455u, 18u)], 18u)], 18u)], 18u)])), arg_1));
}

fn func_5(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    let var_0 = select(!select(func_2(~global1[_wgslsmith_index_u32(1u, 17u)], arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 582f, arg_2.a) * vec3<f32>(391f, arg_2.a, arg_2.a)), 229f), !vec4<bool>(arg_1.x, true, true, arg_1.x), any(func_2(global1[_wgslsmith_index_u32(0u, 17u)], Struct_1(arg_2.a, true, arg_2.c), vec3<f32>(-530f, 237f, -717f), arg_2.a).xw)), vec4<bool>(true, any(func_2(abs(global1[_wgslsmith_index_u32(0u, 17u)]), arg_2, _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, arg_2.a, -930f), vec3<f32>(-489f, arg_2.a, arg_2.a)), 352f).yxx), false, func_4(global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(29285u, 18u)], 1u)], vec2<bool>(select(true, arg_2.c, false), false), _wgslsmith_mult_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29456u, 18u)], 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15193u, 18u)], 18u)], 18u)], 18u)], global4[_wgslsmith_index_u32(34730u, 18u)])), global0[_wgslsmith_index_u32(min(0u, ~4294967295u), 1u)]).x), all(func_4(global0[_wgslsmith_index_u32(countOneBits(~global4[_wgslsmith_index_u32(4294967295u, 18u)]), 1u)], select(arg_1.zx, func_4(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 1u)], arg_1.zx, vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(36264u, 18u)], 18u)], global4[_wgslsmith_index_u32(21697u, 18u)]), Struct_1(arg_2.a, arg_2.b, arg_1.x)).wx, arg_1.x), ~firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(59969u, 18u)], 18u)], 18u)], 18u)], 16370u)), arg_2).ywy));
    global0 = array<Struct_1, 1>();
    global3 = any(func_4(Struct_1(arg_2.a, true, false), !(!(!var_0.wz)), vec2<u32>(16414u, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(92548u, 18u)], 18u)], 8288u) | global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 18u)], 18u)] & global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)]), global0[_wgslsmith_index_u32(abs(0u), 1u)]).ww);
    let var_1 = abs(~firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(-23245i, u_input.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), arg_2.b, !select(select(func_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), Struct_1(arg_2.a, var_0.x, false), vec3<f32>(-353f, 1583f, arg_2.a), arg_2.a).x, any(vec3<bool>(arg_2.c, false, true)), arg_2.b), true, (true != arg_2.c) & (arg_2.b & false)));
    return any(select(func_2(-vec3<i32>(arg_0, var_1, var_1), Struct_1(309f, var_0.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 268f, arg_2.a), vec3<f32>(arg_2.a, var_2.a, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(f32(-1f) * -553f))).zxx, vec3<bool>(!(true && arg_2.c), any(vec3<bool>(false, arg_1.x, false)), true), select(!func_2(vec3<i32>(4109i, 53120i, 1i), Struct_1(-306f, var_2.b, false), vec3<f32>(-1000f, arg_2.a, -2060f), 1141f).xwy, !(!vec3<bool>(arg_1.x, arg_2.b, true)), func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, -12438i), vec3<i32>(arg_0, 2147483647i, 34575i)), arg_2, vec3<f32>(arg_2.a, arg_2.a, -507f), arg_2.a).x)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 17>();
    var var_0 = Struct_1(arg_1.a, !arg_0.x, false);
    global4 = array<u32, 18>();
    let var_1 = firstLeadingBit(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 20u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 20u)]), vec2<i32>(global2[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 18u)], 20u)], countOneBits(u_input.a)), -(vec2<i32>(-7794i, global2[_wgslsmith_index_u32(4294967295u, 20u)]) & vec2<i32>(-11384i, u_input.a))));
    global0 = array<Struct_1, 1>();
    return Struct_1(_wgslsmith_f_op_f32(round(var_0.a)), arg_0.x, true);
}

fn func_1() -> Struct_1 {
    global4 = array<u32, 18>();
    global2 = array<i32, 20>();
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(1u, 18u)], ~4294967295u), 18u)], global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~48721u, 1u), 18u)], 18u)], abs(0u)), _wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 18u)], global4[_wgslsmith_index_u32(0u, 18u)], 25932u)), ~vec4<u32>(firstTrailingBit(global4[_wgslsmith_index_u32(4294967295u, 18u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(98154u, 18u)], 18u)], global4[_wgslsmith_index_u32(firstLeadingBit(35108u), 18u)], ~global4[_wgslsmith_index_u32(1u, 18u)])));
    var var_1 = func_6(vec2<bool>(!func_5(-29409i, func_2(global1[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(-264f, true, false), vec3<f32>(-914f, -804f, -789f), -853f), Struct_1(-1136f, true, false)), true), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-799f)))), func_4(Struct_1(_wgslsmith_div_f32(-438f, 293f), false, true), vec2<bool>(u_input.a <= -1i, true), _wgslsmith_mult_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(var_0, 18u)]), vec2<u32>(0u, global4[_wgslsmith_index_u32(8836u, 18u)])) << (_wgslsmith_div_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(61362u, 18u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0, 18u)], 18u)], 18u)]), vec2<u32>(var_0, 4294967295u)) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(countOneBits(~var_0), 1u)]).x, true));
    let var_2 = func_6(vec2<bool>(any(vec4<bool>(var_1.b == var_1.c, var_1.b, true, !var_1.c)), any(vec4<bool>(false, var_1.c, all(vec2<bool>(var_1.c, true)), var_1.c || true))), global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(var_0 << (global4[_wgslsmith_index_u32(0u, 18u)] % 32u), 18u)], _wgslsmith_div_u32(0u, var_0)) | var_0), 1u)]);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    global4 = array<u32, 18>();
    let var_0 = func_1();
    let var_1 = ~vec2<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(countOneBits(global4[_wgslsmith_index_u32(90116u, 18u)]), ~global4[_wgslsmith_index_u32(35023u, 18u)])), 18u)], func_3(func_6(vec2<bool>(false, true), Struct_1(1645f, true, true)), 1279f, Struct_1(_wgslsmith_f_op_f32(-var_0.a), false, true)).x);
    let var_2 = 717f;
    let var_3 = select(func_4(global0[_wgslsmith_index_u32(min(var_1.x, abs(6257u)), 1u)], vec2<bool>(true, 551f == var_0.a), select(~vec2<u32>(var_1.x, 0u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(40771u, 18u)], 18u)], 0u) >> (~var_1 % vec2<u32>(32u)), !(false || var_0.c)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1 & ~vec2<u32>(var_1.x, 1u), var_1), 1u)]).zw, !func_4(var_0, func_4(Struct_1(var_2, var_0.c, var_0.b), func_4(Struct_1(-1000f, true, var_0.c), vec2<bool>(false, false), vec2<u32>(4294967295u, 50459u), var_0).zw, var_1, func_6(vec2<bool>(var_0.b, var_0.c), global0[_wgslsmith_index_u32(var_1.x, 1u)])).wz, var_1, func_1()).zx, !func_4(Struct_1(-1166f, true, false), vec2<bool>(!var_0.b, !var_0.c), vec2<u32>(1u, select(global4[_wgslsmith_index_u32(var_1.x, 18u)], 34934u, false)), global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(43965u, 18u)]), 18u)], 1u)]).ww);
    var var_4 = select(select(global4[_wgslsmith_index_u32(var_1.x, 18u)], ~var_1.x, !func_5(_wgslsmith_mod_i32(u_input.a, 2147483647i), vec4<bool>(false, true, false, var_0.b), var_0)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(32490u, 18u)]), 18u)] & ~_wgslsmith_add_u32(88565u, 0u), 18u)] & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(var_1.x, 18u)], global4[_wgslsmith_index_u32(var_1.x, 18u)], 0u), reverseBits(vec4<u32>(1u, 19430u, var_1.x, global4[_wgslsmith_index_u32(var_1.x, 18u)])))), var_3.x & select(false, var_0.b, !all(vec3<bool>(var_3.x, false, var_0.b))));
    var var_5 = vec4<f32>(1292f, _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(-1648f * func_1().a), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-42632i, u_input.a), global2[_wgslsmith_index_u32(37655u, 20u)], global2[_wgslsmith_index_u32(var_1.x, 20u)]), vec3<i32>(18110i, -2147483647i, u_input.a)));
}

