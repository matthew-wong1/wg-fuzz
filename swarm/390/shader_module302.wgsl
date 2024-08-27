struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(46482i, 69914i, 27138i);

var<private> global1: array<bool, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_2(arg_1.a, arg_0, 1u, arg_0, min(vec3<u32>(abs(_wgslsmith_div_u32(25236u, arg_1.c)), ~(~0u), u_input.b), arg_1.e));
    let var_1 = vec4<bool>(false & global1[_wgslsmith_index_u32(select(0u, ~(arg_1.c | arg_1.c), !arg_2.x), 30u)], arg_2.x, true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], true, (arg_1.b.a.x > global0.x) & true, true)));
    var var_2 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, ~select(vec4<u32>(var_0.c, 4294967295u, 47024u, arg_1.e.x), vec4<u32>(78445u, 35440u, u_input.b, u_input.c.x), vec4<bool>(global1[_wgslsmith_index_u32(75273u, 30u)], var_1.x, true, false)), reverseBits(u_input.c) << (_wgslsmith_mod_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))), vec4<u32>(var_0.c, abs(var_0.c), var_0.e.x, var_0.c)), select(_wgslsmith_mod_vec3_i32(-(vec3<i32>(58311i, -35082i, 2147483647i) >> (u_input.c.wzz % vec3<u32>(32u))), vec3<i32>(13271i, -60988i, -23807i)), max(-vec3<i32>(-2147483647i, arg_0.a.x, var_0.d.a.x), ~vec3<i32>(global0.x, var_0.d.a.x, 0i)), false | all(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], arg_2.x, false))), _wgslsmith_mod_i32(23466i, -1107i), Struct_2(~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.a, vec4<i32>(arg_0.a.x, -19236i, -44922i, global0.x)), -vec4<i32>(var_0.b.a.x, 0i, 2147483647i, -1i)), Struct_1(select(vec3<i32>(global0.x, global0.x, 41914i), vec3<i32>(0i, 1i, -2147483647i), select(vec3<bool>(arg_2.x, true, var_1.x), arg_2, vec3<bool>(arg_2.x, true, true)))), ~var_0.e.x, arg_0, ~(~(~vec3<u32>(1864u, arg_1.e.x, 30680u)))), abs(vec3<i32>(reverseBits(arg_0.a.x), ~global0.x, 1i & global0.x)) | vec3<i32>(max(-27120i, -19106i) ^ arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.d.a.x, 40865i, u_input.d.x), _wgslsmith_div_vec3_i32(var_0.a.wxw, vec3<i32>(var_0.b.a.x, var_0.a.x, 11829i))), u_input.d.x));
    global0 = vec3<i32>(~((_wgslsmith_clamp_i32(arg_1.d.a.x, 2147483647i, var_0.d.a.x) & -58526i) >> (arg_1.e.x % 32u)), 0i, 34453i);
    var var_3 = abs(_wgslsmith_mod_u32(30845u, select(arg_1.e.x, ~var_0.e.x >> (1u % 32u), !any(var_1))));
    return -43529i;
}

fn func_2() -> Struct_2 {
    let var_0 = ~global0.x;
    global1 = array<bool, 30>();
    var var_1 = u_input.c;
    global0 = vec3<i32>(~_wgslsmith_sub_i32(~func_3(Struct_1(vec3<i32>(-53617i, global0.x, u_input.d.x)), Struct_2(vec4<i32>(75583i, -2147483647i, -3251i, global0.x), Struct_1(vec3<i32>(2147483647i, 1i, var_0)), u_input.b, Struct_1(vec3<i32>(u_input.d.x, global0.x, -65338i)), vec3<u32>(0u, 1u, 50436u)), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(var_1.x, 30u)], true)), firstTrailingBit(0i)), -global0.x, -var_0);
    global1 = array<bool, 30>();
    return Struct_2(_wgslsmith_add_vec4_i32(abs(vec4<i32>(firstLeadingBit(var_0), func_3(Struct_1(vec3<i32>(2147483647i, -1i, 924i)), Struct_2(vec4<i32>(-2147483647i, 16289i, 2147483647i, global0.x), Struct_1(vec3<i32>(var_0, -1i, global0.x)), 65331u, Struct_1(vec3<i32>(0i, u_input.d.x, 10597i)), var_1.zyw), vec3<bool>(true, false, true)), global0.x, -25033i)), select((vec4<i32>(-1i, u_input.d.x, var_0, global0.x) << (u_input.c % vec4<u32>(32u))) >> (u_input.c % vec4<u32>(32u)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(4286i, -43160i, 0i, global0.x), vec4<i32>(var_0, var_0, var_0, -12626i)), -vec4<i32>(global0.x, u_input.d.x, -18879i, var_0)), vec4<bool>(all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 30u)], true)), all(vec3<bool>(false, false, true)), all(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)], false, false)), true))), Struct_1(vec3<i32>(46229i, -2147483647i, 2147483647i)), var_1.x, Struct_1(firstTrailingBit(vec3<i32>(1i, -27305i, -33479i))), u_input.c.www);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(countOneBits(firstTrailingBit(vec3<i32>(-16793i, arg_1.x, arg_0.b.a.x) | -vec3<i32>(-1i, global0.x, 1i))));
    global0 = vec3<i32>(~_wgslsmith_mod_i32(-arg_0.b.a.x, -14589i) | -1i, select(var_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-4864i), 19848i & var_0.a.x, 1i), ~min(arg_1.yxw, vec3<i32>(u_input.d.x, -11195i, 1i))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c, 13597u, 4294967295u), abs(arg_0.e)), 30u)]), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-global0.x, var_0.a.x), _wgslsmith_div_i32(2147483647i, ~1i ^ reverseBits(arg_1.x))));
    let var_1 = _wgslsmith_add_i32(arg_1.x, _wgslsmith_dot_vec2_i32(reverseBits(~arg_1.yz), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.x, -479i), var_0.a.zy))));
    let var_2 = Struct_3(u_input.c, vec3<i32>(func_2().b.a.x, ~_wgslsmith_sub_i32(0i, var_0.a.x), ~reverseBits(31845i)), -7432i & global0.x, arg_0, vec3<i32>(countOneBits(0i), -(~_wgslsmith_sub_i32(global0.x, u_input.d.x)), 0i));
    global1 = array<bool, 30>();
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_2(), -(vec4<i32>(-1i) * -func_2().a), u_input.a << (u_input.a % 32u));
    global0 = _wgslsmith_add_vec3_i32(var_0.d.a, var_0.d.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(floor(-628f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1190f * 1049f) - _wgslsmith_f_op_f32(438f - 657f))), -1000f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(447f, -879f)) + vec2<f32>(_wgslsmith_f_op_f32(493f + -290f), -954f)))));
    global1 = array<bool, 30>();
    let var_2 = !vec2<bool>(!global1[_wgslsmith_index_u32(~3388u, 30u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.x, 30u)], global1[_wgslsmith_index_u32(var_0.e.x, 30u)], false)) && (true && global1[_wgslsmith_index_u32(var_0.e.x, 30u)]));
    return func_4(func_2(), vec4<i32>(var_0.a.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, -1i), -22470i), func_2().d.a.x, global0.x), func_4(func_4(Struct_2(abs(vec4<i32>(2147483647i, var_0.a.x, 29862i, var_0.d.a.x)), Struct_1(var_0.b.a), var_0.c, var_0.b, u_input.c.xzz), select(select(vec4<i32>(0i, -2147483647i, -13898i, u_input.d.x), var_0.a, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], false)), vec4<i32>(global0.x, 2147483647i, 0i, 7176i) >> (u_input.c % vec4<u32>(32u)), 4334u >= u_input.a), var_0.c), var_0.a, _wgslsmith_mod_u32(func_4(func_2(), var_0.a, _wgslsmith_mod_u32(u_input.c.x, 35142u)).e.x, u_input.b)).c).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(vec4<bool>(any(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(29852u, 30u)], false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(108599u, 30u)], global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], true)), select(vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(26432u, 30u)]), false))), all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(119803u, 30u)], false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 30u)], false), false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], true, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]))), false, select(any(vec3<bool>(global1[_wgslsmith_index_u32(35465u, 30u)], true, true)), false, true | global1[_wgslsmith_index_u32(min(0u, 3591u), 30u)])), vec4<bool>(all(!(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)], false))), all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(45450u, 30u)])), select(all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(66220u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]), vec3<bool>(global1[_wgslsmith_index_u32(1664u, 30u)], false, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 30u)]))), all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], true, true)), (u_input.a ^ u_input.c.x) != _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), global1[_wgslsmith_index_u32(func_4(func_4(Struct_2(vec4<i32>(global0.x, global0.x, 2147483647i, var_0.a.x), Struct_1(vec3<i32>(2147483647i, -23709i, u_input.d.x)), u_input.c.x, var_0, u_input.c.xww), vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, -48769i) & vec4<i32>(global0.x, global0.x, global0.x, var_0.a.x), u_input.b), ~firstLeadingBit(vec4<i32>(-22845i, -1i, u_input.d.x, u_input.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 72695u), reverseBits(vec3<u32>(u_input.a, 1u, u_input.c.x)))).e.x, 30u)]), false);
    var var_2 = var_0;
    let var_3 = _wgslsmith_mod_i32(-(var_2.a.x ^ ~var_0.a.x), -var_0.a.x);
    var var_4 = func_1().a.x;
    let var_5 = 1858f;
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(var_3, 0i, 0i, i32(-1i) * -55591i), countOneBits(-vec4<i32>(var_2.a.x, var_0.a.x, global0.x, var_2.a.x)) ^ vec4<i32>(abs(u_input.d.x), var_3, firstTrailingBit(u_input.d.x), func_1().a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, u_input.c.x << (_wgslsmith_mult_u32(3098u, u_input.b) % 32u), ~(~20427u), _wgslsmith_div_u32(1u, ~u_input.b)), vec4<u32>(1u, max(1u, ~u_input.a), u_input.c.x, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-656f, var_5)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, -1284f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5, var_5)))))) * vec2<f32>(_wgslsmith_f_op_f32(1000f + 1101f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_5, var_5))))), _wgslsmith_div_f32(1294f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5 - -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_5, var_5, false)))))), 4294967295u);
}

