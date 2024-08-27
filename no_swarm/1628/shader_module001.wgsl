struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = select(vec4<i32>(u_input.c.x, i32(-1i) * -12862i, -2147483647i, abs(_wgslsmith_add_i32(abs(48076i), firstLeadingBit(-30321i)))), -select(global0.b, global0.b, vec4<bool>(true, true, any(vec4<bool>(global0.a.c, false, global0.a.e, global1.x)), true && global1.x)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)) != -1885f, !(!global0.a.e), global0.a.e, !(countOneBits(2147483647i) == u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(713f))));
    var_0 = vec4<i32>(2147483647i, -1i, 1i, _wgslsmith_add_i32(firstTrailingBit(-44734i), abs(~(-58395i ^ u_input.c.x))));
    var var_2 = -(~vec4<i32>(1i, countOneBits(var_0.x), -2147483647i, 3713i));
    var_1 = 705f;
    return global1.yzx;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(u_input.c.x | _wgslsmith_sub_i32(global0.b.x, _wgslsmith_mult_i32(global0.b.x, -54659i)), vec4<f32>(-257f, _wgslsmith_f_op_f32(-global0.a.d.x), _wgslsmith_f_op_f32(global0.a.d.x - _wgslsmith_f_op_f32(f32(-1f) * -777f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.b.x, 704f))), arg_0, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.a.b * global0.a.d))), !(global0.a.b.x <= global0.a.d.x) || global1.x), vec4<i32>(countOneBits(arg_1), _wgslsmith_sub_i32(_wgslsmith_mod_i32(21101i, global0.b.x), global0.b.x) << (u_input.a % 32u), -12545i, 11829i));
    return func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.x, var_0.a.b.x, var_0.a.b.x) - _wgslsmith_f_op_vec3_f32(-global0.a.b.zyz)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_4 {
    global1 = select(arg_2.b, arg_2.b, vec4<bool>(global0.a.c, arg_0.x, !(-704f == global0.a.d.x), false));
    let var_0 = !arg_0.yz;
    var var_1 = global0.a.c;
    global1 = select(arg_2.b, arg_2.b, select(vec4<bool>(any(vec2<bool>(global1.x, global1.x)), true, func_2(global0.a.c, _wgslsmith_mult_i32(121270i, global0.b.x)).x, true), !vec4<bool>(global0.a.c & arg_0.x, func_2(global1.x, -20683i).x, arg_2.a.c & global1.x, !arg_0.x), !vec4<bool>(arg_2.a.c, true == arg_0.x, global1.x, any(vec2<bool>(false, global1.x)))));
    let var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-845f * 353f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a.d.x))), !((arg_2.c > 0u) & (true & var_0.x)), global0.a.d.x != _wgslsmith_f_op_f32(-global0.a.d.x), all(vec4<bool>(all(vec4<bool>(true, arg_2.a.e, true, true)), false, true, any(vec4<bool>(arg_0.x, global0.a.e, false, arg_0.x))))), arg_2.b, select((arg_2.b.x | var_0.x) == true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1230f, global0.a.d.x))) > -506f, false));
    return Struct_4(arg_2.a.d.wy, _wgslsmith_div_vec2_u32(u_input.b.xx, _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(57011u, arg_3.x), u_input.b.yy, arg_3.yz), u_input.b.xz, vec2<u32>(52850u, 24096u)), arg_3.ww)), false, var_2, vec4<bool>(any(vec2<bool>(arg_0.x && var_2.x, select(var_2.x, true, var_2.x))), true, !(!var_2.x || (arg_2.a.a <= u_input.c.x)), global1.x));
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = Struct_5(Struct_1(~u_input.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.d), global0.a.d), global1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1639f, -1221f, arg_1.a.x, -1275f), global0.a.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a.d), global0.a.d))), global1.x), !(!select(!vec4<bool>(global0.a.e, false, global1.x, global0.a.e), !arg_1.d, false)), ~max(~arg_1.b.x, 1u));
    return Struct_3(global0.a, global0.b);
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = func_5(abs(abs(~(~u_input.c.x))), func_4(select(func_2(1i > u_input.c.x, global0.a.a), func_3(global0.a.b.xwz), vec3<bool>(u_input.b.x >= u_input.a, -1i <= u_input.c.x, arg_0.x | false)), ~global0.b.xw, Struct_5(global0.a, select(select(vec4<bool>(true, false, arg_0.x, global1.x), vec4<bool>(false, global0.a.c, true, global0.a.c), vec4<bool>(global1.x, true, arg_0.x, arg_0.x)), select(vec4<bool>(false, false, global0.a.c, global0.a.c), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, true, false, global1.x)), select(vec4<bool>(global0.a.e, true, false, global0.a.e), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(true, false, global1.x, true))), reverseBits(u_input.a)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, u_input.a, 1u)), vec4<u32>(4407u, 33389u, u_input.b.x, u_input.a))));
    return max(~(~vec2<u32>(~u_input.a, 64540u)), vec2<u32>(u_input.a, _wgslsmith_add_u32(41125u, ~u_input.b.x) | reverseBits(1u)));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = 550f;
    let var_1 = abs(vec3<i32>(-2147483647i, 2147483647i, min(u_input.c.x | max(-1i, arg_3.a), arg_3.a)));
    let var_2 = firstTrailingBit(global0.b.x);
    global0 = func_5(-(_wgslsmith_div_i32(-global0.b.x, u_input.c.x & 1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a, -10497i, arg_3.a, var_1.x), ~vec4<i32>(24645i, -2147483647i, -2147483647i, 12466i))), arg_0);
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(sign(arg_3.d.zy))) + arg_3.b.ww), vec2<f32>(func_4(!vec3<bool>(global0.a.c, arg_0.c, true), vec2<i32>(-2147483647i, arg_3.a), Struct_5(Struct_1(u_input.c.x, vec4<f32>(arg_1.a.x, arg_0.a.x, arg_2.c.d.x, arg_2.a.d.x), false, arg_3.d, arg_0.c), arg_0.d, 67812u), ~vec4<u32>(u_input.b.x, u_input.a, 39813u, arg_2.d)).a.x, _wgslsmith_f_op_f32(-arg_0.a.x)))), vec2<u32>(arg_2.d, arg_2.d), 42048u >= reverseBits(arg_0.b.x), vec4<bool>(global0.a.c, func_5(var_1.x | (i32(-1i) * -13894i), arg_1).a.e, arg_3.e, global1.x), select(select(arg_1.d, arg_1.d, arg_2.a.c), vec4<bool>(false, global1.x, u_input.b.x <= ~0u, arg_0.d.x), !arg_2.c.e));
    return any(!(!select(select(var_3.e, vec4<bool>(false, true, arg_3.c, var_3.c), false), !vec4<bool>(true, false, arg_2.a.e, arg_2.a.e), func_2(false, 2147483647i).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = global0.b;
    let var_2 = global0.a.b.yw;
    var var_3 = vec3<bool>(!(var_2.x <= 106f), func_6(Struct_4(global0.a.d.yw, ~func_1(vec3<bool>(global0.a.e, global1.x, true)), all(func_4(vec3<bool>(global1.x, global1.x, global1.x), vec2<i32>(3924i, 11521i), Struct_5(Struct_1(-18075i, vec4<f32>(-1126f, var_2.x, 130f, 635f), global1.x, global0.a.b, false), vec4<bool>(true, false, false, global1.x), var_0.x), vec4<u32>(4919u, u_input.b.x, 88632u, u_input.b.x)).e), !vec4<bool>(false, true, true, global1.x), !(!vec4<bool>(false, global1.x, false, global1.x))), Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1513f, var_2.x))), u_input.b.xy, select(true, false, true), func_4(func_3(vec3<f32>(global0.a.d.x, var_2.x, var_2.x)), var_1.yz, Struct_5(Struct_1(global0.b.x, vec4<f32>(-937f, var_2.x, 785f, global0.a.b.x), true, vec4<f32>(global0.a.b.x, global0.a.b.x, var_2.x, global0.a.d.x), global0.a.e), vec4<bool>(global1.x, global1.x, true, false), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.b.x, var_0.x), vec4<u32>(u_input.b.x, u_input.a, 48240u, 31129u))).d, vec4<bool>(func_5(-10159i, Struct_4(global0.a.b.zy, u_input.b.xx, global0.a.c, vec4<bool>(global0.a.c, false, global0.a.c, false), vec4<bool>(false, false, global1.x, global0.a.e))).a.e, global0.a.c == global0.a.c, global0.a.e & false, true)), Struct_2(Struct_1(var_1.x & -9560i, global0.a.d, false, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1602f, 370f, -444f, global0.a.d.x))), !global1.x), abs(abs(vec4<i32>(8384i, 1i, 75354i, u_input.c.x))), func_5(u_input.c.x, Struct_4(global0.a.b.zy, u_input.b.zz, global1.x, vec4<bool>(false, true, true, true), vec4<bool>(false, global1.x, true, global1.x))).a, var_0.x), func_5(countOneBits(_wgslsmith_add_i32(global0.a.a, 0i)), func_4(global1.xxw, countOneBits(vec2<i32>(29067i, u_input.c.x)), Struct_5(global0.a, vec4<bool>(global1.x, true, global0.a.c, true), 55655u), select(vec4<u32>(var_0.x, u_input.a, 0u, 1u), vec4<u32>(u_input.b.x, 0u, 0u, 1u), vec4<bool>(true, global1.x, true, global1.x)))).a), true);
    let var_4 = firstTrailingBit(~_wgslsmith_div_vec4_u32(~vec4<u32>(40444u, u_input.a, var_0.x, 38773u), vec4<u32>(min(u_input.b.x, 1u), reverseBits(var_0.x), ~86497u, 34284u)));
    var var_5 = Struct_2(global0.a, ~global0.b, func_5(_wgslsmith_sub_i32(-59150i, u_input.c.x), func_4(global1.yww, _wgslsmith_mult_vec2_i32(min(u_input.c.xz, vec2<i32>(-1i, global0.b.x)), vec2<i32>(2147483647i, 2147483647i)), Struct_5(global0.a, !vec4<bool>(true, global1.x, false, false), abs(47204u)), vec4<u32>(0u, 0u << (0u % 32u), func_4(global1.yzy, vec2<i32>(-2307i, 1i), Struct_5(Struct_1(var_1.x, vec4<f32>(166f, var_2.x, 1331f, 891f), global0.a.c, vec4<f32>(1266f, -215f, -1780f, -658f), true), vec4<bool>(global0.a.e, false, var_3.x, global0.a.c), u_input.b.x), vec4<u32>(0u, 1u, u_input.b.x, var_4.x)).b.x, max(var_4.x, 21805u)))).a, ~50861u);
    var_1 = abs(vec4<i32>(firstLeadingBit(select(global0.b.x, var_1.x, var_5.a.e) | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), var_1.xy)), global0.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(38389i, global0.a.a), -12638i), firstTrailingBit(0i)));
    var_0 = vec3<u32>(var_5.d, abs(abs(_wgslsmith_mult_u32(var_0.x, _wgslsmith_sub_u32(1u, var_5.d)))), 20205u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(var_5.b, vec4<i32>(var_1.x, 2727i, global0.b.x, -56250i))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.a, 0i, -40490i, var_5.b.x), vec4<i32>(1i, var_5.a.a, -2147483647i, 2147483647i)))), _wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.b.x, -18268i), vec2<i32>(15018i, 1i)), select(u_input.c.xz, -vec2<i32>(-22067i, var_1.x), !global1.x)), var_5.b.x, var_5.b.x), ~(select(var_0.zy, ~vec2<u32>(var_5.d, 42247u), true) ^ ~reverseBits(vec2<u32>(var_0.x, u_input.a))), -2147483647i, var_5.a.b);
}

