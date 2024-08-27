struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec2<f32>(1044f, 997f)), Struct_3(Struct_1(269f, 4294967295u, false), 0u, vec2<u32>(135497u, 64785u), Struct_1(-2010f, 15307u, true), false), Struct_1(173f, 1u, false), vec2<f32>(1000f, -409f), 309f);

var<private> global1: vec2<u32> = vec2<u32>(27089u, 4294967295u);

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(-544f, 528f)), Struct_2(vec2<f32>(1722f, 1847f)), Struct_2(vec2<f32>(-160f, -996f)), Struct_2(vec2<f32>(-1169f, -1481f)), Struct_2(vec2<f32>(352f, 911f)), Struct_2(vec2<f32>(1417f, 547f)), Struct_2(vec2<f32>(-544f, -206f)), Struct_2(vec2<f32>(1634f, -967f)), Struct_2(vec2<f32>(1026f, 366f)), Struct_2(vec2<f32>(1887f, -241f)), Struct_2(vec2<f32>(363f, 906f)), Struct_2(vec2<f32>(1542f, -775f)), Struct_2(vec2<f32>(525f, -214f)), Struct_2(vec2<f32>(548f, -328f)), Struct_2(vec2<f32>(-1310f, 3199f)));

var<private> global3: Struct_3 = Struct_3(Struct_1(-384f, 1u, false), 4294967295u, vec2<u32>(101702u, 0u), Struct_1(-221f, 34205u, false), true);

var<private> global4: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.a, global0.d.x, global3.a.a)) * vec3<f32>(_wgslsmith_div_f32(960f, global0.d.x), global3.d.a, _wgslsmith_f_op_f32(sign(1000f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1456f, 507f, _wgslsmith_f_op_f32(global0.b.a.a * _wgslsmith_f_op_f32(round(global3.a.a)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1007f, -786f, 1441f)))))));
    let var_1 = !global0.b.a.c && !(_wgslsmith_mod_i32(1i ^ u_input.e, firstLeadingBit(2147483647i)) > firstTrailingBit(_wgslsmith_mult_i32(18221i, 9493i)));
    global2 = array<Struct_2, 15>();
    var var_2 = global0.a;
    let var_3 = u_input.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0))));
}

fn func_2() -> u32 {
    var var_0 = global0.c.c;
    global0 = Struct_4(Struct_2(global0.d), Struct_3(global3.a, firstLeadingBit(global0.c.b), global3.c, global3.d, (global0.c.b >> (14937u % 32u)) >= abs(global3.d.b | 4294967295u)), global3.a, vec2<f32>(global3.a.a, _wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.a.a.x)), global0.a.a.x)))), 1f);
    global1 = abs(abs(abs(countOneBits(vec2<u32>(36872u, u_input.c)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a), vec2<f32>(-302f, _wgslsmith_f_op_f32(-global3.d.a)));
    var var_2 = !global0.c.c;
    return (_wgslsmith_add_u32(1u, ~(0u ^ global0.c.b)) & (40589u << (global3.a.b % 32u))) >> (reverseBits(~4294967295u) % 32u);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> bool {
    var var_0 = -_wgslsmith_clamp_i32(u_input.a, select(u_input.a, ~u_input.e, any(vec3<bool>(false, true, arg_1.x))), -39570i) <= u_input.d;
    let var_1 = abs(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(25611i, -2147483647i), vec2<i32>(u_input.e, u_input.e)) ^ _wgslsmith_sub_i32(u_input.e, u_input.a)), 18030i, i32(-1i) * -2147483647i));
    var var_2 = global0.a;
    let var_3 = Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.e))), _wgslsmith_div_f32(-1675f, 1459f))), Struct_3(Struct_1(1f, ~reverseBits(4294967295u), arg_1.x), 1u, global0.b.c, global3.a, all(vec3<bool>(all(arg_1.zy), true, any(arg_1.zx)))), global3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.e)) - -1000f))), global3.d.a);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    global1 = vec2<u32>(~(~global1.x) << ((max(~43804u, _wgslsmith_mult_u32(0u, u_input.b)) ^ _wgslsmith_div_u32(~38958u, func_2())) % 32u), global3.c.x);
    global3 = global0.b;
    let var_1 = Struct_3(Struct_1(1000f, 142152u, func_3(global3.d.b, select(vec4<bool>(true, true, global0.b.d.c, false), select(vec4<bool>(global3.a.c, global0.b.e, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, global0.c.c, true)), true))), ~u_input.b, (vec2<u32>(16351u >> (global1.x % 32u), 47929u) & global3.c) | global3.c, Struct_1(global0.d.x, global0.b.a.b, select(_wgslsmith_f_op_f32(sign(266f)) > _wgslsmith_f_op_f32(abs(var_0.x)), true, !(global3.a.a < global0.e))), any(select(vec4<bool>(global0.b.d.c, false || global0.b.a.c, any(vec4<bool>(global3.e, true, global0.b.e, global0.c.c)), all(vec2<bool>(true, true))), vec4<bool>(true, false, any(vec2<bool>(true, false)), global0.b.a.c), vec4<bool>(true, !global3.a.c, false, u_input.e > 1i))));
    var var_2 = 33543i;
    var var_3 = _wgslsmith_add_vec2_i32(select(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(2147483647i, u_input.d))), vec2<i32>(2147483647i, -u_input.a), vec2<bool>(true, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a & 2147483647i, -24645i), abs(select(vec2<i32>(1i, u_input.d), vec2<i32>(-34909i, -14653i), true)))) >> (abs(~vec2<u32>(abs(0u), _wgslsmith_add_u32(global1.x, 0u))) % vec2<u32>(32u));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_dot_vec2_u32(global3.c ^ (vec2<u32>(u_input.b, global1.x) << ((vec2<u32>(574u, global0.c.b) | vec2<u32>(1u, var_1.d.b)) % vec2<u32>(32u))), countOneBits(global3.c)), false);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(exp2(var_0.x))))), ~global3.d.b, false);
    global0 = Struct_4(global2[_wgslsmith_index_u32(u_input.c & (4294967295u >> (max(0u & var_5.b, 19492u >> (0u % 32u)) % 32u)), 15u)], Struct_3(global0.c, ~var_5.b, global0.b.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(max(var_5.a, 130f))), var_4.b & _wgslsmith_div_u32(9809u, var_4.b), true), false), Struct_1(_wgslsmith_f_op_f32(271f - -551f), ~114509u, func_3(select(global1.x, 16263u, true) & 4294967295u, !vec4<bool>(var_1.d.c, false, true, global0.c.c))), vec2<f32>(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_5.a + _wgslsmith_f_op_f32(step(-1039f, global3.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec4<f32>(-824f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, -196f)), global3.d.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.a) + _wgslsmith_div_f32(327f, global0.d.x)), var_5.a, all(vec3<bool>(var_5.c, var_1.d.c, var_5.c)) && var_1.e))), vec3<i32>(-(~_wgslsmith_mult_i32(u_input.d, var_3.x)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-48991i, var_3.x, -45175i) ^ vec3<i32>(var_3.x, var_3.x, var_3.x), vec3<i32>(u_input.e, u_input.a, var_3.x) << (vec3<u32>(4294967295u, u_input.c, 4294967295u) % vec3<u32>(32u)))), min(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, 10261i), select(vec2<i32>(var_3.x, u_input.a), vec2<i32>(u_input.a, var_3.x), vec2<bool>(var_4.c, true))), -20480i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, global0.e, var_0.x, var_0.x)), vec4<f32>(var_4.a, var_1.a.a, var_0.x, 110f))) + vec4<f32>(var_1.a.a, global3.a.a, _wgslsmith_f_op_f32(global0.a.a.x - 956f), -358f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, var_5.a, 1342f, global3.a.a)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-263f, var_1.d.a, 805f, 1330f)))))), _wgslsmith_f_op_vec3_f32(func_1()).yy);
}

