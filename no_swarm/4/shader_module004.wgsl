struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(1i, 0i), vec2<i32>(39080i, 33605i), vec2<i32>(28366i, 71483i), vec2<i32>(-3549i, 0i), vec2<i32>(-13805i, 0i), vec2<i32>(42092i, 14653i), vec2<i32>(1i, 61160i), vec2<i32>(17868i, i32(-2147483648)), vec2<i32>(-54830i, 6256i), vec2<i32>(2147483647i, 0i), vec2<i32>(-12829i, i32(-2147483648)));

var<private> global1: array<vec4<bool>, 8>;

var<private> global2: vec2<i32> = vec2<i32>(19215i, i32(-2147483648));

var<private> global3: vec2<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x));
    var var_1 = Struct_2(u_input.b.x & -2147483647i, _wgslsmith_mod_i32(max(_wgslsmith_mult_i32(select(-6245i, global2.x, true), i32(-1i) * -1i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-25480i, -68535i, u_input.b.x), vec3<i32>(u_input.b.x, 59196i, global2.x)), 1i)), var_0.x), true, select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, false))), false));
    let var_2 = select(select(countOneBits(vec4<i32>(global2.x, 15804i, -2669i, -1i) | _wgslsmith_sub_vec4_i32(vec4<i32>(28305i, u_input.b.x, global2.x, global2.x), vec4<i32>(0i, var_1.b, var_1.b, 8194i))), abs(-vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x)), !(!(!global1[_wgslsmith_index_u32(global3.x, 8u)]))), vec4<i32>(var_1.b, var_1.a, global2.x >> (global3.x % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(min(var_1.a, 2147483647i), _wgslsmith_mult_i32(var_1.a, 18292i)), 2191i)), select(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global3.x, 59154u, 37997u)), vec3<u32>(4294967295u, 90124u, u_input.a.x)), 8u)], !vec4<bool>(var_1.c, var_1.c, var_1.c, select(var_1.d.x, var_1.c, var_1.d.x)), vec4<bool>(any(!vec3<bool>(true, true, var_1.c)), false, firstLeadingBit(-2147483647i) < var_1.b, var_1.c)));
    let var_3 = Struct_3(u_input.b.x, Struct_1(true, 12579u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(781f, -475f), -976f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(814f, -1456f, -298f), vec3<f32>(-953f, -469f, 171f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, -1582f, 275f))))), min(var_2.zyy, vec3<i32>(global2.x, 1i, u_input.b.x)) ^ var_2.zxz));
    var_0 = var_2.yx;
    return true;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    var var_0 = !select(select(vec3<bool>(!arg_2, any(global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), func_3()), !vec3<bool>(false, false, arg_3.b.a), all(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 43083u), 8u)])), !vec3<bool>(arg_2, 0u > global3.x, any(vec4<bool>(arg_2, false, arg_3.b.a, false))), _wgslsmith_mod_u32(select(u_input.a.x, 37808u, true), 0u) <= ~45482u);
    var var_1 = Struct_2(-58264i, global2.x, !arg_3.b.a, select(var_0.zx, !vec2<bool>(true, var_0.x), !(_wgslsmith_f_op_f32(exp2(arg_3.b.c.x)) >= _wgslsmith_f_op_f32(-arg_3.b.d.x))));
    var var_2 = _wgslsmith_div_u32(~global3.x, 45108u);
    global0 = array<vec2<i32>, 11>();
    var var_3 = ~(~firstLeadingBit(_wgslsmith_mult_u32(global3.x, 40978u) ^ 5149u));
    return arg_3.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = array<vec4<bool>, 8>();
    global2 = u_input.b;
    let var_0 = select(select(!vec4<bool>(arg_3.a, arg_1.d.x, true, true), !global1[_wgslsmith_index_u32(min(1u, ~arg_2), 8u)], vec4<bool>(firstTrailingBit(45318i) != _wgslsmith_mod_i32(1i, u_input.b.x), true, false, true)), !(!(!global1[_wgslsmith_index_u32(1u, 8u)])), !vec4<bool>(true, true, false, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.a, -1i), vec3<i32>(u_input.b.x, arg_3.e.x, 0i)) <= 15272i));
    return -global2.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = ~(~(~4294967295u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(arg_0 + arg_0)))), -2008f);
    let var_2 = Struct_2(arg_2.x, ~func_4(global3.x, Struct_2(_wgslsmith_mod_i32(-2147483647i, global2.x), select(arg_3, arg_3, true), any(vec3<bool>(false, true, false)), vec2<bool>(true, false)), ~27083u, func_2(-2572i, vec3<i32>(0i, -2147483647i, -30552i) << (vec3<u32>(1u, 69660u, u_input.a.x) % vec3<u32>(32u)), true, Struct_3(-12620i, Struct_1(false, u_input.a.x, vec2<f32>(var_1.x, -310f), vec3<f32>(1000f, arg_0, var_1.x), arg_2)))), func_2(2147483647i, vec3<i32>(select(2147483647i, 6705i, false), firstLeadingBit(global2.x) ^ ~arg_1, min(arg_1 & 0i, _wgslsmith_mod_i32(u_input.b.x, -1i))), any(select(global1[_wgslsmith_index_u32(max(20733u, 2690u), 8u)], global1[_wgslsmith_index_u32(6719u, 8u)], vec4<bool>(true, true, true, true))), Struct_3(-func_4(var_0, Struct_2(1i, 5483i, true, vec2<bool>(true, true)), 15435u, Struct_1(true, global3.x, vec2<f32>(var_1.x, 357f), vec3<f32>(-1146f, -1829f, 174f), vec3<i32>(-1i, 2147483647i, -798i))), func_2(_wgslsmith_add_i32(-44954i, arg_1), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 12349i, 1i), vec3<i32>(3331i, 2147483647i, arg_3)), true, Struct_3(global2.x, Struct_1(false, var_0, vec2<f32>(-738f, 831f), vec3<f32>(597f, -2036f, -597f), arg_2))))).a, vec2<bool>(any(vec4<bool>(true, true, true, true)), !((var_0 > 64079u) & false)));
    global3 = ~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << (abs(var_0) % 32u), func_2(~arg_2.x, vec3<i32>(u_input.b.x, arg_2.x, -52560i), true, Struct_3(u_input.b.x, Struct_1(true, 18349u, vec2<f32>(arg_0, var_1.x), vec3<f32>(arg_0, -255f, 923f), vec3<i32>(21554i, arg_2.x, 0i)))).b));
    var var_3 = Struct_1(!select(!var_2.d.x, false, var_2.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(23722u << (0u % 32u), ~1u), u_input.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-859f, arg_0))), _wgslsmith_f_op_f32(step(arg_0, arg_0))) + vec2<f32>(1246f, 1519f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), arg_0, -872f)))), vec3<i32>(func_4(0u & var_0, Struct_2(var_2.a, u_input.b.x, var_2.d.x, vec2<bool>(false, true)), countOneBits(u_input.a.x), Struct_1(var_2.c, 11190u, vec2<f32>(1130f, -378f), vec3<f32>(arg_0, 1256f, 1702f), vec3<i32>(51908i, arg_2.x, 9951i))), 2147483647i, min(_wgslsmith_sub_i32(0i, global2.x), var_2.b)) << (~(~(~vec3<u32>(var_0, 0u, 4294967295u))) % vec3<u32>(32u)));
    return Struct_2(~func_2(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 9902i, 30824i), vec3<i32>(var_3.e.x, var_2.a, -2147483647i)), all(vec2<bool>(true, var_2.c)), Struct_3(global2.x, Struct_1(var_3.a, u_input.a.x, var_3.c, vec3<f32>(var_1.x, 930f, 1021f), arg_2))).e.x & -1i, min(60694i, -14691i | ~_wgslsmith_dot_vec3_i32(var_3.e, vec3<i32>(global2.x, 27669i, 50352i))), any(global1[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(false, false));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = !vec4<bool>(any(vec3<bool>(arg_2.b.a, false, !arg_2.b.a)), ~u_input.a.x <= max(0u, global3.x), all(!select(vec2<bool>(arg_2.b.a, arg_0.c), arg_0.d, arg_0.d)), true);
    var_0 = select(!select(vec4<bool>(func_2(arg_2.b.e.x, arg_2.b.e, true, arg_2).a, arg_0.c, !arg_2.b.a, select(false, true, true)), vec4<bool>(false, arg_2.b.a, arg_0.d.x, true), true), vec4<bool>(arg_2.b.a != !func_3(), all(vec3<bool>(var_0.x, arg_2.b.a, false | arg_2.b.a)), var_0.x, arg_2.b.a), vec4<bool>(!(all(global1[_wgslsmith_index_u32(10673u, 8u)]) || false), !(!all(arg_0.d)), any(!(!vec4<bool>(false, true, true, var_0.x))), true));
    global2 = vec2<i32>(-arg_0.a, reverseBits(-_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x))));
    var var_1 = reverseBits(arg_2.b.e.x) > 39429i;
    return Struct_2(_wgslsmith_dot_vec2_i32(~vec2<i32>(~arg_0.b, func_4(44186u, arg_0, 0u, Struct_1(false, u_input.a.x, vec2<f32>(arg_2.b.d.x, arg_2.b.c.x), arg_2.b.d, arg_2.b.e))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(arg_2.b.b, arg_1.x, global3.x, 1u) ^ arg_1) | vec4<u32>(arg_2.b.b, 17269u, global3.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, u_input.a.x, 0u), ~arg_1)), 11u)]), arg_0.b, true, !(!var_0.xy));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<i32>, 11>();
    let var_0 = select(vec3<bool>(!(!(!arg_0.d.x)), !any(vec4<bool>(arg_0.d.x, arg_0.d.x, true, false)), all(vec3<bool>(arg_0.d.x, !arg_0.d.x, true))), !(!(!vec3<bool>(arg_0.d.x, arg_0.c, arg_0.d.x))), true & !(!arg_0.c));
    global0 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -219f));
    var var_2 = Struct_3(func_5(func_5(arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 31327u, global3.x), vec4<u32>(global3.x, 0u, 50409u, 1u)), Struct_3(global2.x, Struct_1(var_0.x, global3.x, vec2<f32>(var_1, -726f), vec3<f32>(-411f, var_1, -886f), vec3<i32>(15120i, global2.x, -1i)))), select(vec4<u32>(u_input.a.x, 18620u, u_input.a.x, u_input.a.x), ~vec4<u32>(global3.x, global3.x, global3.x, 10142u), true), Struct_3(-2157i, func_2(2147483647i, vec3<i32>(arg_0.a, arg_0.b, 19404i), var_0.x, Struct_3(global2.x, Struct_1(var_0.x, 58661u, vec2<f32>(-337f, -626f), vec3<f32>(-688f, var_1, 382f), vec3<i32>(u_input.b.x, -36846i, 60322i)))))).b >> (0u % 32u), Struct_1(true, 31666u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1458f, var_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1) * vec2<f32>(var_1, var_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 640f))), false)), func_2(global2.x, vec3<i32>(18838i, abs(2147483647i), func_2(5554i, vec3<i32>(arg_0.b, -40660i, 1i), false, Struct_3(-21719i, Struct_1(arg_0.d.x, 0u, vec2<f32>(var_1, 2244f), vec3<f32>(var_1, -272f, 1000f), vec3<i32>(32544i, global2.x, 0i)))).e.x), all(vec3<bool>(false, var_0.x, arg_0.d.x)), Struct_3(_wgslsmith_mod_i32(arg_0.b, 21637i), Struct_1(true, 1u, vec2<f32>(-529f, 2157f), vec3<f32>(-192f, -772f, 242f), vec3<i32>(u_input.b.x, 35540i, u_input.b.x)))).d, _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(arg_0.a, 0i, -33926i)), reverseBits(vec3<i32>(1i, -1i, global2.x) ^ vec3<i32>(u_input.b.x, global2.x, u_input.b.x)))));
    return func_2(_wgslsmith_div_i32(2147483647i, ~(~1i)), countOneBits(firstTrailingBit(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-5388i, var_2.b.e.x, -2147483647i)), abs(var_2.b.e)))), true, Struct_3(-global2.x & var_2.b.e.x, var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(-961f, min(_wgslsmith_sub_i32(0i, 42649i), global2.x), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -2147483647i), countOneBits(vec4<u32>(reverseBits(6232u), ~global3.x, ~1u, 31147u)), Struct_3(global2.x, Struct_1(func_3(), 1u, vec2<f32>(-2826f, 1000f), vec3<f32>(1414f, -768f, 2040f), vec3<i32>(global2.x, 5474i, global2.x)))));
    let var_1 = ~var_0.b;
    let var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

