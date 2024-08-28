struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-17419i, -38992i, -61291i);

var<private> global1: array<bool, 15>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 27>;

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec4<i32>(14170i, 2147483647i, 4544i, -52520i), vec4<bool>(false, true, false, true), -20837i, true, vec2<u32>(0u, 28388u)), Struct_2(vec4<i32>(1i, 3111i, -1i, -1i), vec4<bool>(true, false, true, false), -5239i, true, vec2<u32>(1u, 4294967295u)), Struct_2(vec4<i32>(333i, -75353i, -34498i, -16627i), vec4<bool>(true, true, true, false), 2147483647i, false, vec2<u32>(54158u, 4294967295u)), Struct_2(vec4<i32>(0i, 0i, 0i, 1i), vec4<bool>(false, false, true, false), 30864i, false, vec2<u32>(1u, 50638u)), Struct_2(vec4<i32>(1i, -41865i, 1i, 18835i), vec4<bool>(true, false, false, true), -43640i, true, vec2<u32>(4294967295u, 47387u)), Struct_2(vec4<i32>(2147483647i, 0i, i32(-2147483648), -11428i), vec4<bool>(true, true, false, false), -17441i, false, vec2<u32>(1u, 18347u)), Struct_2(vec4<i32>(i32(-2147483648), -55411i, 33236i, 1i), vec4<bool>(false, true, true, false), -1i, true, vec2<u32>(44040u, 1u)), Struct_2(vec4<i32>(0i, -1i, 75361i, -56403i), vec4<bool>(true, false, false, true), 2147483647i, false, vec2<u32>(4294967295u, 1u)), Struct_2(vec4<i32>(-10805i, i32(-2147483648), 31173i, 0i), vec4<bool>(true, false, true, true), -7283i, true, vec2<u32>(1u, 8309u)), Struct_2(vec4<i32>(31128i, 36267i, 5936i, 0i), vec4<bool>(false, false, false, false), 14982i, false, vec2<u32>(0u, 4294967295u)), Struct_2(vec4<i32>(-36206i, -31667i, -14780i, -3173i), vec4<bool>(false, false, false, true), 0i, false, vec2<u32>(14312u, 1u)), Struct_2(vec4<i32>(i32(-2147483648), 74255i, 1i, 1i), vec4<bool>(true, true, false, false), 2147483647i, true, vec2<u32>(81970u, 0u)), Struct_2(vec4<i32>(8627i, -694i, 66388i, 1i), vec4<bool>(true, true, true, true), -1i, true, vec2<u32>(4294967295u, 69712u)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = ~global2.a.xxy;
    let var_1 = true && all(!global2.b);
    var var_2 = 0u | _wgslsmith_dot_vec3_u32(vec3<u32>(~(~global2.e.x), global2.e.x, ~(u_input.a & global2.e.x)), vec3<u32>(u_input.a, u_input.a | ~global2.e.x, _wgslsmith_div_u32(u_input.a & 49398u, u_input.a)));
    var var_3 = global2.a & countOneBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2.c, global0.x, global3[_wgslsmith_index_u32(global2.e.x, 27u)], global2.a.x), -abs(vec4<i32>(global0.x, global3[_wgslsmith_index_u32(0u, 27u)], global2.a.x, global0.x))));
    var var_4 = Struct_2(abs(-global2.a | countOneBits(~global2.a)), select(!select(global2.b, !global2.b, global2.b), global2.b, select(select(!vec4<bool>(true, global2.b.x, true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], true, false, global2.b.x), global2.b, vec4<bool>(global1[_wgslsmith_index_u32(global2.e.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], true, global1[_wgslsmith_index_u32(u_input.a, 15u)])), select(global2.b.x, false, true)), select(select(vec4<bool>(false, true, true, true), global2.b, false), global2.b, !vec4<bool>(global2.d, global1[_wgslsmith_index_u32(global2.e.x, 15u)], var_1, true)), false & any(global2.b.wyw))), 1i, true, firstTrailingBit(min(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, global2.e.x)), countOneBits(vec2<u32>(global2.e.x, 71831u)))));
    return global0.x;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, -2147483647i), select(33020i, global2.a.x, true)), global0.x);
    global1 = array<bool, 15>();
    var var_1 = 1000f;
    var var_2 = Struct_2(select(global2.a, vec4<i32>(abs(~8003i), -1i, _wgslsmith_sub_i32(func_3(), global3[_wgslsmith_index_u32(u_input.a, 27u)]), ~global0.x << (39611u % 32u)), select(!vec4<bool>(global2.d, true, global2.d, global2.b.x), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(93905u, 15u)], global2.d), true)), vec4<bool>(!global1[_wgslsmith_index_u32(~75802u, 15u)], global2.b.x, all(vec3<bool>(global1[_wgslsmith_index_u32(~4294967295u, 15u)], -1i <= u_input.b, select(false, true, false))), global2.b.x), -2761i, any(vec4<bool>(any(vec3<bool>(global2.d, false, global2.b.x)) & false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~63123u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 24426u), vec3<u32>(u_input.a, global2.e.x, u_input.a))), 15u)], false, false)), global2.e);
    let var_3 = select(var_2.b.zw, !var_2.b.zx, false);
    return u_input.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global2 = arg_0;
    var var_0 = _wgslsmith_f_op_f32(-2880f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1596f))));
    let var_1 = ~max(firstTrailingBit(0u), arg_1.x) != 0u;
    var var_2 = ~(~arg_1.x);
    let var_3 = ~_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(global2.a.yzw ^ vec3<i32>(global2.c, global2.c, global2.a.x), arg_0.a.wwy | global2.a.wwy)), vec3<i32>(_wgslsmith_mod_i32(2147483647i, ~global0.x), -arg_0.a.x | 2147483647i, 1i));
    return arg_3;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<u32> {
    global1 = array<bool, 15>();
    var var_0 = func_4(global4[_wgslsmith_index_u32(4294967295u, 13u)], _wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_2.a.x, arg_2.d, arg_2.d) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.d, global2.e.x, 55978u, 1u), vec4<u32>(arg_1.d, arg_1.a.x, 82735u, 52218u), ~vec4<u32>(arg_1.b.x, 84263u, arg_2.d, u_input.a)), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.e.x, arg_1.a.x), vec3<u32>(u_input.a, 1u, arg_1.a.x)), arg_1.a.x, func_2())), Struct_2(global2.a, global2.b, -global2.a.x, global2.d & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, arg_2.a.x, global2.e.x, arg_1.a.x), vec4<u32>(arg_2.a.x, arg_1.a.x, arg_2.d, u_input.a) & vec4<u32>(42983u, global2.e.x, arg_1.b.x, u_input.a)), 15u)], vec2<u32>(u_input.a, firstLeadingBit(0u))), arg_2);
    let var_1 = -2147483647i;
    global4 = array<Struct_2, 13>();
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -2615f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_div_f32(-461f, 202f), arg_0.x, -1000f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_0.x, arg_3.x, 1072f, -262f)), _wgslsmith_f_op_vec4_f32(-arg_0))))), global2.b)));
    return vec3<u32>(_wgslsmith_sub_u32(~(~(10246u | var_0.d)), var_0.d), firstTrailingBit(_wgslsmith_mult_u32(1u, firstTrailingBit(_wgslsmith_sub_u32(22203u, 0u)))), u_input.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    global1 = array<bool, 15>();
    let var_0 = reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(min(0u, u_input.a), global2.e.x >> (15162u % 32u), ~u_input.a, _wgslsmith_mod_u32(0u, 1u)), _wgslsmith_div_vec4_u32(max(vec4<u32>(49424u, 0u, 0u, 4201u), vec4<u32>(1u, 66587u, arg_1.b.x, u_input.a)), ~vec4<u32>(global2.e.x, arg_0, arg_1.a.x, global2.e.x)))) >> (select(vec4<u32>(~arg_0 ^ countOneBits(78680u), 1u, ~firstLeadingBit(39625u), firstLeadingBit(_wgslsmith_div_u32(0u, 74835u))), ~reverseBits(vec4<u32>(global2.e.x, 0u, arg_1.d, u_input.a)), false) % vec4<u32>(32u));
    var var_1 = func_4(Struct_2(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(15271i, 1i, global3[_wgslsmith_index_u32(global2.e.x, 27u)], global2.c)) | -vec4<i32>(global0.x, 2147483647i, arg_1.c.x, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_1.c.x, -40321i, global2.a.x), vec4<i32>(u_input.b, 67554i, 60246i, u_input.b))), !vec4<bool>(select(false, false, global2.d), true, global1[_wgslsmith_index_u32(var_0.x, 15u)] && global2.d, true), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(1i, -1i, arg_1.c.x, -37684i)), _wgslsmith_mult_i32(func_4(global4[_wgslsmith_index_u32(4294967295u, 13u)], vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u), Struct_2(vec4<i32>(global0.x, 1i, global2.a.x, u_input.b), global2.b, global3[_wgslsmith_index_u32(arg_0, 27u)], global1[_wgslsmith_index_u32(33500u, 15u)], vec2<u32>(var_0.x, 481u)), arg_1).c.x, min(38256i, -2147483647i))), any(!global2.b.xzw) || true, reverseBits(global2.e | var_0.ww)), _wgslsmith_clamp_vec4_u32(abs(~var_0), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~global2.e.x, global2.e.x), ~firstLeadingBit(0u), _wgslsmith_mult_u32(30357u, u_input.a) & (global2.e.x & 1u), ~(u_input.a << (global2.e.x % 32u))), ~(~select(vec4<u32>(121270u, arg_1.b.x, global2.e.x, 42049u), vec4<u32>(var_0.x, arg_1.d, arg_0, arg_1.a.x), true))), global4[_wgslsmith_index_u32(1u, 13u)], func_4(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.b.yz, ~min(vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, arg_1.d))), 13u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.e.x, arg_0 & global2.e.x, 16088u, _wgslsmith_div_u32(0u, global2.e.x)), countOneBits(min(vec4<u32>(44728u, u_input.a, global2.e.x, 7897u), vec4<u32>(0u, 0u, var_0.x, 0u))), var_0), global4[_wgslsmith_index_u32(var_0.x, 13u)], arg_1));
    let var_2 = vec4<f32>(-1000f, -2012f, 1415f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + 489f))), -493f)));
    var var_3 = var_0.wzz;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(541f, var_2.x), var_2.yz, vec2<bool>(true, global2.d))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.xy, vec2<f32>(-1000f, var_2.x), true)) - _wgslsmith_f_op_vec2_f32(var_2.zx + var_2.xz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(~27352u), 0u), 13u)];
    global4 = array<Struct_2, 13>();
    global2 = global4[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(49271u, 40240u) | _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 0u), ~var_0.e.x, countOneBits(33615u)))), 13u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(974f, 939f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1180f, -1242f), vec2<f32>(1471f, 1369f))))))), vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-353f, _wgslsmith_div_f32(632f, 714f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1391f - 329f) + 1692f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(~_wgslsmith_mult_u32(global2.e.x, 4294967295u), Struct_1(vec2<u32>(var_0.e.x, ~0u), ~func_1(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_1(vec2<u32>(27480u, global2.e.x), vec3<u32>(0u, 4294967295u, u_input.a), global2.a.yyw, 223u), Struct_1(var_0.e, vec3<u32>(20419u, 4294967295u, 4294967295u), vec3<i32>(2147483647i, global2.c, u_input.b), 17712u), vec2<f32>(1652f, -1024f)), var_0.a.zzw >> (vec3<u32>(var_0.e.x, global2.e.x, global2.e.x) % vec3<u32>(32u)), _wgslsmith_mult_u32(~38597u, u_input.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, 1438f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1572f, -1329f)) + vec2<f32>(1192f, 496f))))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(-255f - 603f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c, global2.c, -global0.x, -2147483647i) ^ (var_0.a >> (reverseBits(vec4<u32>(0u, 116578u, var_0.e.x, global2.e.x)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b | 2147483647i, global3[_wgslsmith_index_u32(25183u, 27u)], i32(-1i) * -79169i), select(min(vec4<i32>(u_input.b, global0.x, global3[_wgslsmith_index_u32(36060u, 27u)], 1i), vec4<i32>(-2147483647i, 50354i, 31955i, -1i)), global2.a << (vec4<u32>(1u, global2.e.x, var_0.e.x, 0u) % vec4<u32>(32u)), true))), 17209u, min(func_4(global4[_wgslsmith_index_u32(~var_0.e.x, 13u)], vec4<u32>(~1u, global2.e.x & u_input.a, _wgslsmith_mult_u32(31512u, var_0.e.x), 4753u), Struct_2(max(var_0.a, vec4<i32>(global2.c, 19745i, -2147483647i, 5688i)), !vec4<bool>(var_0.b.x, var_0.d, false, true), _wgslsmith_add_i32(u_input.b, -2147483647i), global1[_wgslsmith_index_u32(154631u, 15u)], vec2<u32>(u_input.a, 1u) & vec2<u32>(1u, 4294967295u)), func_4(global4[_wgslsmith_index_u32(1u, 13u)], select(vec4<u32>(0u, global2.e.x, 16103u, 4294967295u), vec4<u32>(global2.e.x, 84926u, 85154u, u_input.a), global2.b.x), Struct_2(vec4<i32>(global2.c, -28663i, -1i, global0.x), vec4<bool>(true, true, true, global2.b.x), -32493i, false, vec2<u32>(54003u, var_0.e.x)), func_4(Struct_2(vec4<i32>(21063i, global2.c, var_0.c, global2.a.x), var_0.b, 2147483647i, global2.d, vec2<u32>(0u, u_input.a)), vec4<u32>(var_0.e.x, global2.e.x, u_input.a, 20252u), global4[_wgslsmith_index_u32(32979u, 13u)], Struct_1(vec2<u32>(79578u, 1u), vec3<u32>(16831u, 48261u, u_input.a), vec3<i32>(-1i, 20167i, -2147483647i), var_0.e.x)))).c.x, 32184i), ~global2.e);
}

