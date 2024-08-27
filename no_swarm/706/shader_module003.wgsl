struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<i32, 1> = array<i32, 1>(2147483647i);

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(6287u, vec4<bool>(false, false, true, false), vec2<f32>(-636f, -936f), Struct_2(vec2<bool>(true, false), Struct_1(true, 5747i, 1u, vec4<f32>(-1661f, -1326f, 533f, -1401f), vec2<f32>(-202f, -566f)), true, Struct_1(true, -1i, 0u, vec4<f32>(-487f, 3086f, -652f, -580f), vec2<f32>(1000f, 450f)), Struct_1(false, 2147483647i, 4294967295u, vec4<f32>(1060f, 2300f, -1695f, -1000f), vec2<f32>(1875f, 1031f)))), Struct_3(22065u, vec4<bool>(true, false, true, true), vec2<f32>(-870f, -317f), Struct_2(vec2<bool>(true, true), Struct_1(true, 17500i, 1u, vec4<f32>(633f, 869f, -726f, -479f), vec2<f32>(3005f, -642f)), true, Struct_1(true, -4217i, 1u, vec4<f32>(-1236f, 879f, -1495f, 1843f), vec2<f32>(-337f, 172f)), Struct_1(false, 0i, 0u, vec4<f32>(-989f, 1025f, 921f, 892f), vec2<f32>(290f, -576f)))), Struct_3(92442u, vec4<bool>(true, false, false, true), vec2<f32>(-190f, 827f), Struct_2(vec2<bool>(false, true), Struct_1(false, 35837i, 102532u, vec4<f32>(-1000f, -114f, -147f, -1131f), vec2<f32>(-700f, -1742f)), true, Struct_1(false, 1i, 0u, vec4<f32>(-294f, -1756f, 1975f, -1030f), vec2<f32>(-1524f, 1412f)), Struct_1(false, -1i, 1u, vec4<f32>(-452f, 625f, 406f, 1000f), vec2<f32>(107f, -1025f)))), Struct_3(47352u, vec4<bool>(true, true, false, true), vec2<f32>(-1181f, -1402f), Struct_2(vec2<bool>(false, true), Struct_1(true, -24722i, 87652u, vec4<f32>(-300f, -629f, 1623f, -2184f), vec2<f32>(-854f, 665f)), false, Struct_1(true, 8618i, 0u, vec4<f32>(-1678f, 489f, -1000f, 601f), vec2<f32>(-261f, -1717f)), Struct_1(true, -1i, 0u, vec4<f32>(2406f, 221f, -809f, -494f), vec2<f32>(1272f, -552f)))));

var<private> global3: array<i32, 1> = array<i32, 1>(58886i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global1 = array<i32, 1>();
    global1 = array<i32, 1>();
    global3 = array<i32, 1>();
    var var_0 = Struct_2(!select(!vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), arg_1.a), arg_1, !arg_1.a, Struct_1(!any(select(vec3<bool>(false, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, true), true)), max(~(~(-1i)), ~(-7785i)), 1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1735f, 1209f, 845f, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(-arg_1.d))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1391f, arg_1.d.x) - _wgslsmith_f_op_vec2_f32(floor(arg_1.e)))))), Struct_1(~countOneBits(2147483647i) == arg_1.b, u_input.b, 0u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1.d))), arg_1.d)), _wgslsmith_f_op_vec2_f32(-arg_1.d.yx)));
    global1 = array<i32, 1>();
    return (_wgslsmith_sub_i32(17190i, -max(12034i, var_0.e.b)) == arg_1.b) & select(var_0.e.a, true, any(vec4<bool>(!var_0.e.a, select(false, false, var_0.b.a), arg_1.a, -20613i >= global3[_wgslsmith_index_u32(arg_1.c, 1u)])));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, -342f)));
    global2 = array<Struct_3, 4>();
    var var_1 = Struct_2(select(vec2<bool>(~(-31571i) > global1[_wgslsmith_index_u32(1u, 1u)], all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), select(vec2<bool>(false, u_input.b == u_input.b), vec2<bool>(func_3(vec4<i32>(-27258i, u_input.a.x, 14223i, 20281i), Struct_1(false, 36427i, 0u, vec4<f32>(arg_0.x, var_0.x, -1123f, var_0.x), arg_1.xx)), false), global1[_wgslsmith_index_u32(u_input.c, 1u)] > -23649i), func_3(vec4<i32>(global3[_wgslsmith_index_u32(u_input.c, 1u)], -23207i, -arg_2, abs(arg_2)), Struct_1(true, global3[_wgslsmith_index_u32(1u, 1u)] ^ arg_2, ~5152u, vec4<f32>(-565f, 744f, -842f, arg_0.x), _wgslsmith_f_op_vec2_f32(ceil(arg_1.yy))))), Struct_1(!(!(7546u <= u_input.c)), -(arg_2 >> (u_input.c % 32u)), 1u << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(35352u, 4294967295u, u_input.c), vec3<u32>(30366u, 26423u, 0u), vec3<u32>(1u, u_input.c, 4294967295u))) % 32u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(arg_1.x, -424f, var_0.x, arg_1.x)), arg_1)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(3000f, _wgslsmith_f_op_f32(-var_0.x))))), !(!all(vec3<bool>(false, false, false)) || (global1[_wgslsmith_index_u32(1u, 1u)] == ~arg_2)), Struct_1(var_0.x != _wgslsmith_div_f32(-1000f, arg_1.x), -14316i, 77636u, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_0.x), var_0.x, arg_1.x), _wgslsmith_f_op_vec4_f32(ceil(arg_1))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_0.x, var_0.x))))), Struct_1(_wgslsmith_add_u32(u_input.c, ~31091u) >= firstTrailingBit(48970u), i32(-1i) * -9847i, u_input.c >> (reverseBits(_wgslsmith_div_u32(57529u, u_input.c)) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(765f, 132f, var_0.x, -1643f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(arg_1))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.x)), arg_1.zz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.zy)), vec2<f32>(var_0.x, -1000f))))));
    global2 = array<Struct_3, 4>();
    global1 = array<i32, 1>();
    return select(!(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, var_1.d.a, var_1.d.a, true), var_1.e.a))), select(select(select(select(vec4<bool>(var_1.d.a, false, true, false), vec4<bool>(var_1.c, var_1.c, false, var_1.d.a), true), !vec4<bool>(true, true, var_1.c, var_1.c), any(vec3<bool>(false, var_1.a.x, false))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, var_1.e.a), vec4<bool>(false, var_1.b.a, false, var_1.c), vec4<bool>(true, var_1.d.a, var_1.b.a, false)), select(vec4<bool>(true, false, var_1.d.a, var_1.c), vec4<bool>(var_1.e.a, var_1.d.a, var_1.d.a, var_1.d.a), vec4<bool>(true, true, false, true))), select(select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(false, true, var_1.e.a, true), true), !vec4<bool>(false, true, var_1.c, false), !var_1.d.a)), !vec4<bool>(true, any(vec3<bool>(false, var_1.e.a, true)), var_1.c, false == var_1.c), select(select(vec4<bool>(var_1.c, var_1.a.x, false, var_1.a.x), !vec4<bool>(var_1.a.x, true, var_1.d.a, true), false), !(!vec4<bool>(var_1.e.a, var_1.b.a, var_1.e.a, false)), var_1.d.a)), !(firstLeadingBit(var_1.d.c) == ~u_input.c));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_3(reverseBits(abs(106943u)), func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(159f, arg_3.x), arg_3.x), _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(sign(1414f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(420f * arg_0), _wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -767f, -929f, -1000f) + vec4<f32>(arg_3.x, arg_0, arg_0, 995f)))), 20860i), arg_3, Struct_2(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, -600f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-636f, 364f, -171f, arg_3.x))), 28318i << (0u % 32u)).yw, Struct_1(arg_2.x, u_input.b, ~_wgslsmith_add_u32(59355u, 17688u), vec4<f32>(_wgslsmith_f_op_f32(arg_3.x + arg_0), _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(1000f + 354f), -1000f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3), _wgslsmith_f_op_vec2_f32(round(arg_3)), true))), any(select(vec2<bool>(false, true), arg_2.zy, all(arg_2.zx))), Struct_1(true, firstLeadingBit(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(8450u, 1u)])), u_input.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3.x, arg_3.x, 925f, arg_3.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_3, vec2<f32>(1259f, -1244f), false)), _wgslsmith_f_op_vec2_f32(-arg_3), !arg_2.x))), Struct_1(all(!vec3<bool>(arg_2.x, arg_2.x, true)), 29125i, ~(~u_input.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -422f, arg_3.x, -133f) + vec4<f32>(arg_3.x, 705f, arg_0, 1989f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-912f, -467f))))));
    global1 = array<i32, 1>();
    var var_1 = var_0.d;
    let var_2 = global2[_wgslsmith_index_u32(27844u, 4u)];
    var var_3 = (global3[_wgslsmith_index_u32(var_2.d.d.c, 1u)] >= _wgslsmith_sub_i32(_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.e.c, 1069u, var_1.e.c, u_input.c), vec4<u32>(1u, 0u, 4294967295u, var_0.d.d.c)), 1u)], _wgslsmith_mod_i32(1i, 1i)), -1i)) & func_2(var_0.d.e.d.yxz, _wgslsmith_f_op_vec4_f32(var_2.d.d.d - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1167f, 1376f, -134f, 981f)))), var_2.d.b.b).x;
    return u_input.c;
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    global1 = array<i32, 1>();
    let var_0 = Struct_3(~_wgslsmith_sub_u32(max(0u, u_input.c), func_4(_wgslsmith_f_op_f32(trunc(arg_0.x)), 2147483647i, func_2(vec3<f32>(1565f, arg_0.x, 433f), vec4<f32>(-613f, arg_0.x, 1475f, arg_0.x), global3[_wgslsmith_index_u32(u_input.c, 1u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-211f, 1000f) * vec2<f32>(arg_0.x, arg_0.x)))), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true, !(!any(vec3<bool>(true, true, false))), func_2(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(676f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(814f, 1723f, 1194f, 207f)), global3[_wgslsmith_index_u32(countOneBits(u_input.c), 1u)] | ~global3[_wgslsmith_index_u32(u_input.c, 1u)]).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))), Struct_2(vec2<bool>(false, _wgslsmith_f_op_f32(arg_0.x - -333f) >= _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(!any(vec3<bool>(false, true, false)), abs(global3[_wgslsmith_index_u32(reverseBits(u_input.c), 1u)]), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, arg_0.x, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1170f, arg_0.x, arg_0.x, arg_0.x) + vec4<f32>(-1000f, -3436f, arg_0.x, arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, arg_0.x))), arg_0.xy)), false, Struct_1(all(vec4<bool>(false, true, false, false)), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)], -23579i) << (17053u % 32u), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-335f, -1000f, -2337f, 177f) * vec4<f32>(-1582f, 1188f, arg_0.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-487f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), -680f)), Struct_1(true, i32(-1i) * -49631i, _wgslsmith_add_u32(u_input.c | u_input.c, u_input.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, arg_0.x, arg_0.x, 1358f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2064f, -2626f, arg_0.x, -1763f) * vec4<f32>(1417f, 2680f, 1000f, 907f)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.xy))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(348f, -1142f, var_0.d.e.d.x, arg_0.x), vec4<f32>(var_0.d.d.e.x, -1613f, -1000f, -747f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), arg_0.x, _wgslsmith_f_op_f32(-1000f * 930f), 1352f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, arg_0.x)) * var_0.d.e.d))))));
    let var_2 = Struct_3(109926u, !vec4<bool>(var_0.b.x, false, var_0.d.a.x, _wgslsmith_f_op_f32(-var_0.d.e.e.x) < _wgslsmith_div_f32(-514f, -1000f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.b.e * vec2<f32>(var_0.c.x, var_1.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(103f, arg_0.x)))))), var_0.d);
    global0 = array<Struct_3, 13>();
    return ~vec3<u32>(u_input.c, var_0.a, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(0u, 1u);
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_0.x, var_0.x) ^ func_1(vec3<f32>(658f, 851f, -239f)), ~vec3<u32>(var_0.x, 0u, 24919u)), vec3<u32>(47350u, countOneBits(_wgslsmith_div_u32(0u, var_0.x)), ~_wgslsmith_sub_u32(u_input.c, var_0.x))), _wgslsmith_div_u32(var_0.x, var_0.x));
    global2 = array<Struct_3, 4>();
    global0 = array<Struct_3, 13>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1587f, -169f, _wgslsmith_f_op_f32(trunc(1408f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2030f, -2033f, 470f) + vec3<f32>(1947f, 1130f, -158f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-554f, -941f, -1977f) + vec3<f32>(1442f, -733f, 656f)), vec3<bool>(true, false, true)))) * vec3<f32>(1f, 1f, 1f)));
    global3 = array<i32, 1>();
    var var_3 = -775f;
    var_3 = var_2.x;
    global2 = array<Struct_3, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(-global3[_wgslsmith_index_u32(var_0.x, 1u)], u_input.b & 1i, i32(-1i) * -2147483647i) | (u_input.a | ~vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], -1i, global1[_wgslsmith_index_u32(var_0.x, 1u)]))), vec4<i32>(u_input.b, -global1[_wgslsmith_index_u32(~var_1.x, 1u)] >> (1u % 32u), countOneBits(_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(-1i, -1i), -41i ^ u_input.b)), _wgslsmith_div_i32(firstLeadingBit(0i), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.c, 1u)], global3[_wgslsmith_index_u32(u_input.c, 1u)])) | ~_wgslsmith_add_i32(1i, -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(min(var_2.x, -1000f))))), _wgslsmith_f_op_f32(ceil(-102f))));
}

