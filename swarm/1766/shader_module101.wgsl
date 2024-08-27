struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(2147483647i, -5337i, -1i, -1i), vec4<i32>(-71627i, -63219i, -1i, i32(-2147483648)), vec4<i32>(1i, 1i, 0i, -60957i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 56716i), vec4<i32>(2730i, -8181i, -1i, -1i), vec4<i32>(2147483647i, i32(-2147483648), 33482i, 19845i), vec4<i32>(-64249i, 1i, 96931i, i32(-2147483648)), vec4<i32>(-20247i, -17493i, -45533i, 22421i), vec4<i32>(4311i, -59277i, 7067i, 66784i), vec4<i32>(11060i, 0i, 14563i, 9144i), vec4<i32>(6445i, 12225i, 1i, -1i), vec4<i32>(-37377i, 2147483647i, 0i, -1751i), vec4<i32>(i32(-2147483648), -1i, 22651i, -52138i), vec4<i32>(-4594i, 1i, 34857i, -56768i));

var<private> global1: Struct_3;

var<private> global2: Struct_3;

var<private> global3: array<bool, 2>;

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~1u, 2u)];
    var var_1 = Struct_2(all(vec4<bool>(global3[_wgslsmith_index_u32(~(var_0.b | 88208u), 2u)], any(select(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.b, 2u)], global3[_wgslsmith_index_u32(global2.a.b, 2u)], global3[_wgslsmith_index_u32(arg_2.a.b, 2u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(arg_2.a.b, 2u)], global3[_wgslsmith_index_u32(1u, 2u)]))), select(global2.a.b == 30209u, any(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.b, 2u)], global3[_wgslsmith_index_u32(var_0.b, 2u)], false)), global3[_wgslsmith_index_u32(arg_1.b, 2u)]), true)), _wgslsmith_add_i32(global1.d, -19399i), -(~(-2147483647i)));
    var var_2 = select(false, firstLeadingBit(_wgslsmith_clamp_i32(-6392i, 21283i, abs(var_1.b))) >= abs(u_input.e.x), true);
    var var_3 = Struct_4(global2.c.xx, -reverseBits(u_input.e), -1096f);
    let var_4 = arg_2.a;
    return global2.a.b;
}

fn func_2() -> Struct_2 {
    global1 = Struct_3(global2.a, u_input.d.x, ~(~_wgslsmith_add_vec3_i32(vec3<i32>(359i, global2.d, global1.d) >> (vec3<u32>(1u, global2.a.b, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(global1.c.x, global1.d, 4910i))), countOneBits(-global1.d));
    var var_0 = vec2<i32>(~0i, u_input.d.x);
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~1u, abs(u_input.a.x), 1u, global1.a.b), reverseBits(~max(vec4<u32>(0u, global2.a.b, global1.a.b, 4294967295u), firstTrailingBit(vec4<u32>(global1.a.b, 47114u, 26859u, 4294967295u)))));
    global0 = array<vec4<i32>, 14>();
    global4 = array<Struct_1, 2>();
    return Struct_2(min(~1u | select(0u, var_1.x, false), ~_wgslsmith_mod_u32(8268u, u_input.a.x)) < func_3(-301f, global1.a, Struct_3(global1.a, _wgslsmith_mod_i32(u_input.b, global2.d), vec3<i32>(global2.b, u_input.e.x, global2.d) >> (var_1.wyw % vec3<u32>(32u)), _wgslsmith_div_i32(-2147483647i, u_input.d.x))), 0i, ~(~1i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = Struct_3(global1.a, global1.b, u_input.d, arg_0.c);
    global4 = array<Struct_1, 2>();
    global3 = array<bool, 2>();
    global1 = Struct_3(Struct_1(global1.a.a, reverseBits(~max(112618u, global1.a.b))), -_wgslsmith_mult_i32(global2.c.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 64612i), u_input.d.xz))), min(vec3<i32>(arg_0.c, arg_0.b >> (26457u % 32u), u_input.b), ~vec3<i32>(~2147483647i, var_1.c.x, global1.b)), -1i);
    return global2.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(global2.a, ~(-1i), abs(arg_1.b.xww) & _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 24479i, 2147483647i), u_input.d)), global2.c, global2.c), i32(-1i) * -2147483647i);
    global0 = array<vec4<i32>, 14>();
    var var_1 = 1832f;
    let var_2 = ~vec4<i32>(func_2().c, select(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(63103i, arg_1.b.x), arg_1.a.x), all(vec2<bool>(false, false))), ~arg_1.b.x, -arg_1.a.x);
    global0 = array<vec4<i32>, 14>();
    return arg_1;
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = func_5(func_4(func_2(), select(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(global1.a.b, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], true), vec2<bool>(true, true)), select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(global2.a.b, 2u)]), false), vec2<bool>(true, global3[_wgslsmith_index_u32(global2.a.b, 2u)]), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 2u)]))), vec2<bool>(!global3[_wgslsmith_index_u32(u_input.c, 2u)], global3[_wgslsmith_index_u32(~38u, 2u)]))), arg_0);
    global3 = array<bool, 2>();
    global3 = array<bool, 2>();
    let var_1 = !(!(!vec3<bool>(true, !global3[_wgslsmith_index_u32(0u, 2u)], true)));
    var var_2 = -1282f;
    return !var_1.zy;
}

fn func_6(arg_0: vec4<f32>, arg_1: bool) -> vec2<f32> {
    var var_0 = 0i;
    global3 = array<bool, 2>();
    var var_1 = !(!any(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false, true), global3[_wgslsmith_index_u32(~1244u, 2u)])));
    global3 = array<bool, 2>();
    var var_2 = Struct_3(func_4(Struct_2(all(vec2<bool>(arg_1, true)), abs(global1.b), ~(-u_input.d.x)), select(vec2<bool>(global3[_wgslsmith_index_u32(~4294967295u, 2u)], global3[_wgslsmith_index_u32(24749u, 2u)] | false), vec2<bool>(!arg_1, true), vec2<bool>(global1.a.a.x < -779f, !arg_1))), -func_5(Struct_1(vec2<f32>(575f, -912f), u_input.a.x), func_5(Struct_1(global2.a.a, global2.a.b), func_5(Struct_1(vec2<f32>(arg_0.x, 500f), 0u), Struct_4(vec2<i32>(global2.c.x, u_input.b), vec4<i32>(u_input.d.x, global2.b, 7608i, global2.d), 366f)))).a.x, -vec3<i32>(0i, abs(-52330i), ~global1.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(~33313i, _wgslsmith_add_i32(global2.c.x, 2147483647i), reverseBits(global1.d)), countOneBits(-(vec3<i32>(global2.d, 2147483647i, u_input.b) << (vec3<u32>(global1.a.b, global2.a.b, 0u) % vec3<u32>(32u))))));
    return global2.a.a;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = vec4<u32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.a.x))) * _wgslsmith_f_op_f32(max(global2.a.a.x, _wgslsmith_f_op_f32(global2.a.a.x - arg_0.a.x)))), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a.b, ~3226u | global1.a.b), 2u)], Struct_3(func_4(Struct_2(global3[_wgslsmith_index_u32(global2.a.b, 2u)], u_input.d.x, 600i), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 2u)])), max(-1i, _wgslsmith_dot_vec2_i32(global2.c.zz, vec2<i32>(1i, -1i))), vec3<i32>(_wgslsmith_mult_i32(global1.c.x, u_input.b), i32(-1i) * -1i, -u_input.d.x), u_input.e.x)), global1.a.b, _wgslsmith_sub_u32(~arg_0.b, max(~(~0u), 65597u ^ firstTrailingBit(24638u))), 1u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -421f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1185f)) - -1708f), _wgslsmith_div_f32(-298f, var_1)))), _wgslsmith_mod_u32(~(~global2.a.b), _wgslsmith_add_u32(_wgslsmith_add_u32(1677u, 128u), global2.a.b)) >> (global2.a.b % 32u));
    global0 = array<vec4<i32>, 14>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-361f - _wgslsmith_div_f32(func_4(Struct_2(false, global2.b, global2.c.x), vec2<bool>(false, false)).a.x, _wgslsmith_f_op_f32(trunc(-311f)))))), _wgslsmith_f_op_f32(min(global2.a.a.x, _wgslsmith_f_op_f32(964f - _wgslsmith_f_op_f32(-var_1)))));
    return Struct_3(func_4(Struct_2(!(global2.a.b <= 48285u), -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(34132i, global1.b, global2.c.x, 1i), min(vec4<i32>(global2.c.x, -33752i, global2.d, u_input.e.x), vec4<i32>(1i, 8787i, global2.b, global1.b)))), vec2<bool>(true, true)), -2147483647i, ~reverseBits(min(global1.c, vec3<i32>(1i, global2.c.x, -26057i))), -abs(max(_wgslsmith_mod_i32(global1.d, global1.d), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(global1.a.b, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, ~1u), _wgslsmith_mod_u32(reverseBits(1u), u_input.a.x | ~global2.a.b)), _wgslsmith_dot_vec2_u32(u_input.a, abs(countOneBits(vec2<u32>(global2.a.b, 1u)))), u_input.a.x >> (638u % 32u));
    global1 = Struct_3(global4[_wgslsmith_index_u32(firstTrailingBit(85954u) | 15684u, 2u)], i32(-1i) * -11494i, -global1.c, 1i);
    global1 = func_7(Struct_1(_wgslsmith_f_op_vec2_f32(func_6(vec4<f32>(-756f, _wgslsmith_f_op_f32(global1.a.a.x - 559f), _wgslsmith_f_op_f32(abs(global1.a.a.x)), global1.a.a.x), all(func_1(Struct_4(global1.c.zz, vec4<i32>(-6524i, global1.c.x, 2147483647i, u_input.b), global2.a.a.x))))), ~_wgslsmith_sub_u32(u_input.c & 57041u, global2.a.b)), _wgslsmith_f_op_vec2_f32(round(global1.a.a)));
    let var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0, vec4<u32>(58426u, 31328u, global2.a.b, 55941u)), ~var_0), ~(~vec4<u32>(31047u, 4294967295u, u_input.c, u_input.a.x))) & ((vec4<u32>(u_input.a.x, 1u, var_0.x, 1u) ^ abs(var_0)) ^ ((var_0 ^ var_0) & vec4<u32>(1u, global1.a.b, 1u, global2.a.b))), var_0 & vec4<u32>(_wgslsmith_mod_u32(1u & global2.a.b, abs(global2.a.b)), 44919u, u_input.c, u_input.c));
    let var_2 = func_5(global1.a, func_5(global2.a, Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global1.b), select(vec2<i32>(-36072i, -2147483647i), global2.c.zx, global3[_wgslsmith_index_u32(var_1.x, 2u)])), ~global0[_wgslsmith_index_u32(u_input.c, 14u)], global1.a.a.x)));
    var var_3 = _wgslsmith_div_vec2_i32(select(global2.c.zz, reverseBits(select(vec2<i32>(1i, u_input.d.x), global2.c.zz, vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], true))), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], false), select(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec2<bool>(global3[_wgslsmith_index_u32(global2.a.b, 2u)], global3[_wgslsmith_index_u32(u_input.c, 2u)]), false))), var_2.a) >> (~vec2<u32>(94446u, _wgslsmith_mult_u32(0u, 0u | global2.a.b)) % vec2<u32>(32u));
    let var_4 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(vec3<i32>(~(-76943i), ~(-2147483647i), max(2147483647i, 404i))), global1.c);
    let var_5 = select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u | func_4(func_2(), !vec2<bool>(global3[_wgslsmith_index_u32(31377u, 2u)], true)).b, 2u)], false, global3[_wgslsmith_index_u32(min(9290u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, var_1.x), global2.a.b)), 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(~var_1.x, 2u)], false, all(!(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], true, global3[_wgslsmith_index_u32(global2.a.b, 2u)])))), select(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(49491u, 2u)], true, global3[_wgslsmith_index_u32(u_input.c, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.a.b, 2u)], false, global3[_wgslsmith_index_u32(1u, 2u)]), global3[_wgslsmith_index_u32(var_1.x, 2u)])), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 2u)], global3[_wgslsmith_index_u32(global1.a.b, 2u)], global3[_wgslsmith_index_u32(var_1.x, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(17699u, 2u)], global3[_wgslsmith_index_u32(var_1.x, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(var_1.x, 2u)], true, true))), false));
    global4 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.a.x, countOneBits(_wgslsmith_add_i32(72267i, countOneBits(_wgslsmith_mult_i32(-10164i, 19918i)))));
}

