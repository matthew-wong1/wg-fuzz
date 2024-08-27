struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<bool>(true, false, true), 612f, 823f), 4294967295u, Struct_2(vec3<bool>(false, false, true), 263f, 1488f), Struct_2(vec3<bool>(false, false, true), -1113f, -1056f), Struct_1(vec4<bool>(false, true, false, true), false, vec2<i32>(1i, 59288i)));

var<private> global1: array<i32, 17>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = array<i32, 17>();
    var var_0 = Struct_2(vec3<bool>(false, true && arg_0, all(!vec3<bool>(false, global0.a.a.x, global3.a.x)) || (arg_0 || false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -592f));
    var_0 = global0.c;
    var var_1 = Struct_2(!(!select(arg_1.a.zxz, vec3<bool>(global0.e.b, false, arg_1.b), all(global0.d.a))), 1448f, _wgslsmith_f_op_f32(-global0.c.b));
    var var_2 = _wgslsmith_sub_i32(u_input.c, ~u_input.b);
    return u_input.d.x < global1[_wgslsmith_index_u32(4294967295u, 17u)];
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.c)) * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_1.c))), -318f);
    global0 = arg_0;
    global3 = Struct_2(vec3<bool>(false, var_0.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(42771u, 6610u, global0.b), vec3<u32>(4294967295u, 63184u, arg_0.b) & vec3<u32>(arg_0.b, 36853u, 94266u)) <= global0.b), global2.x, _wgslsmith_f_op_f32(-var_0.c));
    let var_1 = Struct_2(select(select(arg_0.a.a, var_0.a, all(!vec4<bool>(true, true, var_0.a.x, false))), arg_0.a.a, select(global3.a, arg_0.d.a, arg_1.a)), 277f, _wgslsmith_f_op_f32(-arg_1.b));
    let var_2 = ~(global0.e.c & _wgslsmith_add_vec2_i32(~reverseBits(vec2<i32>(global0.e.c.x, 15755i)), vec2<i32>(global0.e.c.x, _wgslsmith_div_i32(arg_0.e.c.x, arg_0.e.c.x))));
    return func_3(arg_1.a.x, arg_0.e);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-297f, global2.x) + -1223f) != 1276f, any(vec2<bool>(true, global0.c.a.x | global3.a.x)), select(any(global3.a.yz), global0.e.a.x, false), global3.a.x), any(select(vec2<bool>(all(vec4<bool>(true, true, global0.d.a.x, global0.e.b)), false), select(!global0.a.a.yy, global3.a.xy, all(global0.d.a)), !select(global3.a.zz, global3.a.zx, global3.a.xy))), abs(_wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(2147483647i, global0.e.c.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d, u_input.d), vec2<i32>(2147483647i, global0.e.c.x)), vec2<i32>(46942i, global1[_wgslsmith_index_u32(reverseBits(2545u), 17u)]))));
    var var_1 = var_0;
    let var_2 = ~(abs(4294967295u) & select(countOneBits(1u), ~(14661u & global0.b), !func_2(Struct_3(global0.d, global0.b, global0.a, Struct_2(var_0.a.xww, 398f, global0.a.c), global0.e), global0.a)));
    global1 = array<i32, 17>();
    let var_3 = Struct_3(Struct_2(select(!select(var_0.a.xxz, global3.a, true), select(!vec3<bool>(global3.a.x, false, false), select(global3.a, global0.d.a, var_1.a.yyw), vec3<bool>(global3.a.x, var_0.a.x, true)), global0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f - global0.c.c) * -284f)), -1405f), 46255u, global0.c, global0.d, var_0);
    return Struct_1(global0.e.a, var_1.a.x, ~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2, 7964u), 17u)]), -_wgslsmith_mult_vec2_i32(vec2<i32>(-714i, 30775i), vec2<i32>(23730i, global1[_wgslsmith_index_u32(var_3.b, 17u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> vec4<f32> {
    global0 = Struct_3(global0.c, 1u, global0.a, global0.c, global0.e);
    let var_0 = arg_1.e;
    var var_1 = arg_1.c;
    var var_2 = !arg_1.e.a;
    global1 = array<i32, 17>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1085f, global2.x, 1357f, -700f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, -767f, global3.b, global3.b), vec4<f32>(-1753f, var_1.c, 882f, 259f), false))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = global0.c;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.xz)) - arg_1.xx);
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), var_0.c))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -1930f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xy))), false));
    let var_1 = Struct_3(Struct_2(vec3<bool>(var_0.a.x, !global0.c.a.x, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-932f))), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -738f)), arg_2 & 1u, Struct_2(!vec3<bool>(func_3(global0.a.a.x, Struct_1(vec4<bool>(false, global0.d.a.x, global3.a.x, global3.a.x), global3.a.x, u_input.d)), func_3(var_0.a.x, Struct_1(global0.e.a, global3.a.x, arg_0)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-219f)), -664f), global2.x), Struct_2(!vec3<bool>(all(global0.e.a), true, true), _wgslsmith_f_op_f32(global0.c.c - 1344f), -515f), func_1());
    let var_2 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global1[_wgslsmith_index_u32(23792u, 17u)], global0.e.c.x), vec2<i32>(u_input.c, 52065i)), max(vec2<i32>(0i, u_input.a), u_input.d)), 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c, 613f, global2.x, global3.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global0.d.c, -1110f, -1369f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.d.b, 711f, global3.b)))) * _wgslsmith_f_op_vec4_f32(func_4(func_1(), Struct_3(Struct_2(vec3<bool>(global0.d.a.x, global3.a.x, true), -955f, -283f), 4294967295u | global0.b, Struct_2(vec3<bool>(true, global3.a.x, true), global3.b, -1393f), Struct_2(vec3<bool>(global3.a.x, false, global3.a.x), global0.c.c, global2.x), func_1()), !global3.a.x))), _wgslsmith_mult_u32(1u, 1u));
    var var_1 = Struct_3(global0.c, _wgslsmith_add_u32(global0.b, 1u), Struct_2(global0.e.a.zww, global3.c, _wgslsmith_f_op_f32(f32(-1f) * -1424f)), Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(~global0.b, 17u)] != 1i, true, global0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c.c, global3.c)) * global0.d.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c) * _wgslsmith_f_op_f32(round(-257f)))), Struct_1(global0.e.a, false | (_wgslsmith_f_op_f32(abs(-599f)) < global2.x), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(var_0.c, vec2<i32>(-26252i, -2147483647i)), _wgslsmith_add_vec2_i32(global0.e.c, _wgslsmith_div_vec2_i32(var_0.c, var_0.c)))));
    var var_2 = -2147483647i;
    var var_3 = Struct_3(var_1.c, ~107024u, var_1.c, Struct_2(vec3<bool>(var_0.a.x, !(!var_1.c.a.x), !(var_0.b || false)), global3.b, _wgslsmith_f_op_f32(f32(-1f) * -391f)), func_5(~vec2<i32>(-44734i, var_0.c.x) | global0.e.c, vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-609f * var_1.c.c) - _wgslsmith_f_op_f32(-global3.b)), 371f, -1034f), 68813u));
    var var_4 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b, 0u, 16471u, 36410u) << (~vec4<u32>(var_1.b, 36402u, global0.b, global0.b) % vec4<u32>(32u)), ~vec4<u32>(global0.b, var_3.b, 1u, var_1.b) << ((vec4<u32>(17714u, global0.b, 1u, 34159u) >> (vec4<u32>(0u, 16242u, 50694u, var_3.b) % vec4<u32>(32u))) % vec4<u32>(32u))), global0.b >> (63425u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(i32(-1i) * -1i, global1[_wgslsmith_index_u32(~(~66563u), 17u)]), global0.e.c.x, ~firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b, var_4.x), vec3<u32>(1u, 1u, 4294967295u))));
}

