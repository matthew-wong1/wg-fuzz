struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: u32;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-208f, vec4<i32>(-10699i, -44828i, 1i, -27059i), vec2<u32>(0u, 0u)), Struct_1(-1318f, vec4<i32>(-38044i, 9700i, -6211i, 2147483647i), vec2<u32>(4294967295u, 44811u)), Struct_1(1509f, vec4<i32>(-30625i, 50491i, 1i, 1i), vec2<u32>(4294967295u, 11167u)), Struct_1(2594f, vec4<i32>(1i, -1i, -1i, 1i), vec2<u32>(30941u, 63072u)), Struct_1(877f, vec4<i32>(2147483647i, -33642i, -9278i, -17600i), vec2<u32>(1u, 4294967295u)), Struct_1(-1129f, vec4<i32>(-35962i, 0i, 14813i, 29165i), vec2<u32>(0u, 49634u)), Struct_1(1056f, vec4<i32>(1i, -17703i, 13029i, 9537i), vec2<u32>(4294967295u, 1u)), Struct_1(1150f, vec4<i32>(i32(-2147483648), -38718i, 16289i, 62399i), vec2<u32>(1u, 27415u)), Struct_1(156f, vec4<i32>(2147483647i, -1i, 0i, -63816i), vec2<u32>(9433u, 85283u)), Struct_1(501f, vec4<i32>(-21774i, -29189i, 1i, 3798i), vec2<u32>(80201u, 0u)), Struct_1(-1063f, vec4<i32>(i32(-2147483648), -39140i, 7977i, -52427i), vec2<u32>(4294967295u, 0u)), Struct_1(-251f, vec4<i32>(0i, 5348i, 16032i, 1i), vec2<u32>(9262u, 865u)), Struct_1(-250f, vec4<i32>(-1i, -29200i, -33293i, 1i), vec2<u32>(1u, 1u)));

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 12>;

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = -2147483647i;
    let var_1 = (1u >> (_wgslsmith_dot_vec4_u32(max(min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, 12577u), u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 31792u, u_input.c.x, 63198u), u_input.c)), ~u_input.c) % 32u)) ^ 1u;
    global3 = array<f32, 12>();
    var var_2 = abs(u_input.d);
    var_2 = _wgslsmith_mult_i32(1i ^ _wgslsmith_div_i32(-u_input.d, u_input.d), -select(u_input.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-26274i, -29183i), _wgslsmith_clamp_i32(2147483647i, u_input.d, u_input.d)), true));
    return any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), !vec3<bool>(true, select(false, false, false), all(vec4<bool>(true, false, true, false)))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = -1071f;
    var var_1 = Struct_2(all(vec4<bool>(true | (2147483647i > arg_1.x), func_3(), true, false)), global1[_wgslsmith_index_u32(34917u, 13u)]);
    global2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1049f, var_0)));
    var var_2 = var_1.b.b;
    global2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(1156f - _wgslsmith_f_op_f32(min(-698f, -252f))), _wgslsmith_div_f32(var_1.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.x, global3[_wgslsmith_index_u32(u_input.c.x, 12u)])), var_0))))));
    return Struct_3(-1938i << (var_1.b.c.x % 32u));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_5(Struct_4(arg_0, vec3<u32>(24727u, ~28438u, u_input.c.x), true, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_4(arg_0, vec3<u32>(~u_input.b, _wgslsmith_add_u32(~u_input.c.x, u_input.a.x), u_input.a.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))));
    let var_1 = _wgslsmith_sub_i32(51274i, min(12912i, reverseBits(min(~var_0.b.a.a, _wgslsmith_sub_i32(u_input.d, arg_0.a)))));
    return vec3<bool>(all(!vec3<bool>(all(vec4<bool>(var_0.a.c, true, false, var_0.a.c)), var_0.a.d.x == var_0.a.c, true)), true, var_0.a.c | var_0.a.c);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, 2323f))), vec2<f32>(362f, 985f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1544f, arg_2.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_2.a) - vec2<f32>(214f, global3[_wgslsmith_index_u32(4294967295u, 12u)]))), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global3[_wgslsmith_index_u32(u_input.c.x, 12u)]) + vec2<f32>(global3[_wgslsmith_index_u32(67625u, 12u)], 2261f)), vec2<f32>(global3[_wgslsmith_index_u32(arg_2.c.x, 12u)], -830f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-496f, arg_2.a))))))));
    let var_1 = Struct_5(Struct_4(Struct_3(~(~u_input.d)), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_2.c.x), arg_2.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_1.c.x), vec2<u32>(1u, arg_2.c.x), arg_2.c)), _wgslsmith_div_u32(0u, u_input.b) << (4294967295u % 32u), ~u_input.a.x), !(-931f >= var_0.x), !vec3<bool>(true, arg_0, false)), Struct_4(func_2(~u_input.b, max(~arg_2.b.yww, countOneBits(arg_1.b.xwz)), vec4<bool>(true, true, true, true)), u_input.a, arg_0, select(vec3<bool>(all(vec2<bool>(arg_0, false)), !arg_0, arg_0 | arg_0), vec3<bool>(true, any(vec2<bool>(arg_0, arg_0)), global2.x <= 1024f), select(!vec3<bool>(arg_0, false, arg_0), func_4(Struct_3(u_input.d)), all(vec4<bool>(arg_0, false, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - _wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f * arg_1.a) + _wgslsmith_f_op_f32(global2.x * -484f))))));
    var var_2 = Struct_2(var_1.b.b.x != ~(~u_input.c.x), global1[_wgslsmith_index_u32(select(~countOneBits(max(41910u, u_input.a.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4406u, var_1.a.b.x, var_1.a.b.x, 4294967295u)), ~select(u_input.c, u_input.c, arg_0)), (reverseBits(var_1.a.a.a) & var_1.b.a.a) >= _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.b.x, arg_2.b.x, u_input.d), -6445i, arg_1.b.x)), 13u)]);
    var var_3 = Struct_2(var_2.a, Struct_1(arg_2.a, vec4<i32>(~(-2147483647i) << (_wgslsmith_dot_vec3_u32(var_1.b.b, vec3<u32>(arg_1.c.x, 1u, 6957u)) % 32u), 5620i, -2147483647i, select(35140i, 0i, var_1.a.c) >> (~39830u % 32u)), vec2<u32>(var_2.b.c.x, 1u)));
    var var_4 = _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(arg_2.c.x, 12u)]));
    return Struct_4(Struct_3(-2147483647i), ~u_input.a >> (max(min(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c.x, 57772u, 0u), vec3<u32>(44091u, var_1.b.b.x, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.c.x, 20105u, 1u), vec3<u32>(var_3.b.c.x, var_1.a.b.x, 52441u))), var_1.b.b) % vec3<u32>(32u)), !(!var_2.a || true), select(select(var_1.a.d, vec3<bool>(any(vec4<bool>(false, var_1.b.d.x, var_3.a, arg_0)), true, true), !var_1.b.d), var_1.b.d, func_4(Struct_3(select(-21315i, -19257i, arg_0))).x));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global4 = true;
    let var_0 = firstTrailingBit(-20181i);
    let var_1 = func_5(all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(arg_0 >= 32838u, false, true), func_4(func_2(4294967295u, vec3<i32>(-1i, -2147483647i, -2147483647i), vec4<bool>(false, false, true, true))))), global1[_wgslsmith_index_u32(arg_0, 13u)], Struct_1(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 12u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0, -var_0, abs(20480i), _wgslsmith_mult_i32(var_0, 7325i)), -vec4<i32>(68778i, 0i, u_input.d, u_input.d)), u_input.a.yx));
    var var_2 = ~31044u;
    var var_3 = func_5(var_1.c, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_5(var_1.d.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.b.x, arg_0, 15377u) >> (_wgslsmith_clamp_u32(30890u, 36817u, u_input.b) % 32u), 13u)], Struct_1(global2.x, vec4<i32>(var_0, 0i, var_0, u_input.d), var_1.b.xx)).b.x, 4294967295u), 13u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -210f), -1226f))), -_wgslsmith_sub_vec4_i32(-vec4<i32>(46949i, -2147483647i, 2470i, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.a, var_1.a.a, 2147483647i, u_input.d), vec4<i32>(39978i, -43063i, var_1.a.a, u_input.d))), max(~u_input.a.xz, _wgslsmith_sub_vec2_u32(vec2<u32>(18029u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, 83172u), vec2<u32>(arg_0, u_input.c.x)))))).b.x;
    return Struct_2(!all(!(!vec4<bool>(true, var_1.c, false, var_1.c))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 12u)]))) * _wgslsmith_f_op_f32(floor(-1225f))), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_1.a.a, -25899i, 2147483647i), vec4<i32>(var_0, -38719i, 1i, var_0)), ~var_1.a.a, 2147483647i | var_1.a.a) >> (min(u_input.c, u_input.c) % vec4<u32>(32u)), max(vec2<u32>(~u_input.c.x, countOneBits(var_1.b.x)), ~(~vec2<u32>(var_1.b.x, 64015u)))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = ~1u;
    global3 = array<f32, 12>();
    var var_1 = arg_1.a;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz));
    global3 = array<f32, 12>();
    return _wgslsmith_f_op_vec2_f32(-arg_0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(func_6(vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, 65505u, 1u), 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 131f) * _wgslsmith_f_op_f32(round(global2.x)))), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_mod_u32(0u, 52713u)), 12u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.xxy, u_input.c.wyy), 12u)] - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_1(~_wgslsmith_add_u32(1u, ~u_input.a.x))));
    var var_0 = !(!(!select(func_4(Struct_3(u_input.d)), vec3<bool>(true, true, true), true)));
    var var_1 = Struct_5(func_5(any(vec3<bool>(!var_0.x, var_0.x, true)), func_1(_wgslsmith_sub_u32(~u_input.c.x, 26781u)).b, global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.c.x), 13u)]), func_5(var_0.x, func_1(~(~u_input.c.x)).b, func_1(u_input.c.x).b), global2.x);
    let var_2 = 1u;
    var_1 = Struct_5(func_5(!((u_input.d < 0i) || !var_0.x), func_1(var_1.a.b.x).b, Struct_1(_wgslsmith_f_op_f32(223f * global2.x), -vec4<i32>(u_input.d, var_1.a.a.a, 31068i, u_input.d), var_1.a.b.yx)), Struct_4(func_2(_wgslsmith_clamp_u32(firstTrailingBit(u_input.c.x), ~34232u, min(var_2, 4294967295u)), countOneBits(-vec3<i32>(u_input.d, u_input.d, u_input.d)), select(vec4<bool>(false, var_0.x, var_1.b.d.x, var_0.x), !vec4<bool>(var_1.a.c, false, var_1.a.d.x, false), var_0.x)), u_input.a, var_1.a.c, !select(var_1.a.d, !vec3<bool>(var_1.a.d.x, false, false), var_1.b.d)), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.d, var_1.b.a.a), -9459i, i32(-1i) * -59251i), vec4<i32>(max(var_1.b.a.a, u_input.d), abs(u_input.d), func_5(true, global1[_wgslsmith_index_u32(35064u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]).a.a, _wgslsmith_mod_i32(90092i, 1i)))));
}

