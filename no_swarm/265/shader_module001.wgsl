struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(792f)))) + 1f), _wgslsmith_f_op_f32(round(-131f)), -2689f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, 1558f, -1017f, -378f) * _wgslsmith_div_vec4_f32(vec4<f32>(638f, -1957f, -1048f, 1000f), vec4<f32>(476f, -108f, 1003f, -209f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(-123f)), _wgslsmith_f_op_f32(step(410f, -301f)), 434f)))))));
    var var_1 = Struct_1(abs(~(vec4<i32>(-2147483647i, 0i, -26093i, 1i) & select(vec4<i32>(-1250i, 2147483647i, -14135i, 16333i), vec4<i32>(0i, 1i, 31417i, 1i), global0[_wgslsmith_index_u32(arg_0, 18u)]))), -(~(-(vec2<i32>(-4248i, -1i) >> (u_input.b.yx % vec2<u32>(32u))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1025f, -517f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(1353f, 330f)))), -416f));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1041f, _wgslsmith_div_f32(-416f, _wgslsmith_f_op_f32(-var_0.x))) - vec4<f32>(-601f, var_0.x, -395f, -885f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -1011f, var_0.x, 622f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1087f, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(237f, 680f, -916f, 507f))))))));
    var var_2 = vec4<u32>(~39641u, u_input.c.x, arg_0, arg_0);
    return -var_1.b.x;
}

fn func_2() -> vec4<i32> {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    var var_0 = countOneBits(7111u);
    global0 = array<vec4<bool>, 18>();
    let var_1 = abs(firstLeadingBit(reverseBits(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -13202i, 1i), vec3<i32>(-3497i, 32408i, -32421i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -15028i), vec2<i32>(2147483647i, 1i)), 1i))));
    return -vec4<i32>(~1i, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(var_1.x, 1535i)), var_1.xy), func_3(1u), var_1.x);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    global0 = array<vec4<bool>, 18>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = _wgslsmith_div_u32(abs(4294967295u), arg_1);
    global0 = array<vec4<bool>, 18>();
    var var_1 = !(!(~arg_0 < arg_0));
    return Struct_3(Struct_1(-(~(~vec4<i32>(533i, arg_0, 2366i, 1i))), vec2<i32>(countOneBits(11399i), -1i) ^ -func_2().yz), 1i >> (~var_0 % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, 1092f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(893f, 667f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1508f, -1472f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(407f, 469f))), !select(vec2<bool>(true, true), vec2<bool>(true, false), true))), Struct_2(u_input.d.x, global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.c.x), 18u)], true, Struct_1(~countOneBits(vec4<i32>(arg_0, -1284i, -52288i, -2147483647i)), countOneBits(max(vec2<i32>(2147483647i, arg_0), vec2<i32>(-1i, arg_0))))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) || false, ~u_input.a == abs(firstTrailingBit(60210u)), true, true));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec4<bool>, 18>();
    let var_0 = func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(func_2(), select(reverseBits(vec4<i32>(-2147483647i, -1i, -1i, 38037i)), vec4<i32>(-1i, 0i, 2147483647i, 0i), !global0[_wgslsmith_index_u32(59728u, 18u)])), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-43663i, 16129i), vec2<i32>(0i, 1i)), 1i, 1i, ~15403i)), u_input.a, ~vec2<u32>(_wgslsmith_add_u32(~0u, arg_2.x), ~4294967295u));
    global0 = array<vec4<bool>, 18>();
    var var_1 = arg_1;
    global0 = array<vec4<bool>, 18>();
    return var_0.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = arg_1.a.a | vec4<i32>(_wgslsmith_dot_vec2_i32(arg_3.a.b, arg_2.zy ^ min(vec2<i32>(-51544i, -2147483647i), arg_3.d.d.a.wz)), max(-(~arg_1.d.d.a.x), _wgslsmith_sub_i32(arg_1.b, -50792i)), _wgslsmith_mult_i32(arg_2.x, arg_1.a.b.x), _wgslsmith_div_i32(arg_3.d.d.b.x >> (arg_3.d.a % 32u), i32(-1i) * -2147483647i));
    return -func_1(!any(arg_1.d.b), !arg_3.d.c, u_input.c.xx).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -691f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-280f, -844f))))));
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1086f, var_0)) * var_0))));
    global0 = array<vec4<bool>, 18>();
    let var_3 = -(func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 1594f, var_2, var_0), vec4<f32>(var_2, -123f, var_0, var_0)), vec4<f32>(-216f, 523f, var_2, var_2), true)), Struct_3(func_1(false, true, vec2<u32>(0u, u_input.a)), i32(-1i) * -1i, vec2<f32>(1148f, 1110f), func_4(var_1, u_input.b.x, u_input.b.yz).d, vec4<bool>(false, false, false, true)), vec3<i32>(~var_1, var_1, var_1), Struct_3(func_4(var_1, u_input.d.x, vec2<u32>(u_input.c.x, u_input.d.x)).a, _wgslsmith_mod_i32(var_1, 249i), vec2<f32>(var_2, var_0), func_4(5478i, 4294967295u, vec2<u32>(0u, 4294967295u)).d, global0[_wgslsmith_index_u32(~1u, 18u)])) & func_4(var_1, u_input.b.x, vec2<u32>(4294967295u, u_input.b.x)).d.d.a);
    let x = u_input.a;
    s_output = StorageBuffer(28530u);
}

