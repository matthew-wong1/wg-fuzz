struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: Struct_4,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = ~firstTrailingBit(~_wgslsmith_mod_vec4_i32(u_input.d, firstLeadingBit(vec4<i32>(global0.a, global0.a, arg_0, arg_1.c.x))));
    let var_1 = ~abs(reverseBits(~vec3<u32>(arg_1.b, arg_1.b, arg_1.b))) >> (min(reverseBits(vec3<u32>(~arg_1.b, abs(global0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(71206u, 6252u, arg_1.b, u_input.a), vec4<u32>(4294967295u, global0.b.x, u_input.b.x, arg_1.b)))), select(vec3<u32>(0u, arg_1.b, ~4294967295u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(global0.b.zwz, vec3<u32>(arg_1.b, global0.b.x, arg_1.b)), ~vec3<u32>(arg_1.b, 8083u, arg_1.b), ~vec3<u32>(1u, 15885u, u_input.a)), arg_1.a)) % vec3<u32>(32u));
    var var_2 = Struct_4(vec4<i32>(global0.a, _wgslsmith_div_i32(u_input.d.x, arg_1.c.x), -2147483647i, ~(-28167i)), !vec3<bool>(arg_1.a, arg_1.a, true), Struct_3(var_0.x, ~(~global0.b | _wgslsmith_mult_vec4_u32(global0.b, global0.b))));
    let var_3 = _wgslsmith_div_u32(11461u, abs(1u));
    var_2 = Struct_4(min(_wgslsmith_div_vec4_i32(var_2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 0i, u_input.d.x), -u_input.d)), vec4<i32>(-2147483647i, u_input.d.x, 2147483647i, 0i)), select(var_2.b, var_2.b, true), Struct_3(var_0.x, vec4<u32>(1u ^ (var_1.x | var_2.c.b.x), arg_1.b, 30052u, firstTrailingBit(34966u) >> (30722u % 32u))));
    return ~(i32(-1i) * -1i);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_4 {
    let var_0 = !vec4<bool>(arg_2, arg_2, arg_2 & !arg_2, arg_2);
    let var_1 = vec2<bool>(all(select(var_0.yz, select(vec2<bool>(true, false), var_0.zx, var_0.wy), true)), any(!(!vec4<bool>(arg_2, false, arg_2, var_0.x))));
    var var_2 = Struct_4(countOneBits(u_input.d), !(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, false, var_1.x), var_0.x))), Struct_3(global0.a, vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 6958u, 4294967295u, u_input.a), vec4<u32>(global0.b.x, u_input.c, arg_0.x, u_input.a))), _wgslsmith_div_u32(~u_input.c, 44117u), countOneBits(_wgslsmith_mod_u32(14111u, 4294967295u)), ~(~4294967295u))));
    var_2 = Struct_4(_wgslsmith_sub_vec4_i32(firstTrailingBit(max(u_input.d, vec4<i32>(u_input.d.x, -13307i, global0.a, 0i))) | _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(11755i, u_input.d.x, arg_1, var_2.c.a), u_input.d), -vec4<i32>(0i, 1i, 2147483647i, 1i)), -_wgslsmith_mult_vec4_i32(var_2.a, vec4<i32>(global0.a, -31417i, -23309i, -22287i))), var_0.ywy, var_2.c);
    var_2 = Struct_4(-vec4<i32>(~(-1i), -28983i, -33613i, func_3(1i, Struct_1(var_2.b.x, arg_0.x, u_input.d.xxy))), !(!select(!vec3<bool>(var_2.b.x, false, false), vec3<bool>(true, true, true), arg_2)), var_2.c);
    return Struct_4(~(vec4<i32>(-1i) * -vec4<i32>(65475i, global0.a, 0i, 53282i)), var_0.zxw, var_2.c);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = 0i;
    global0 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global0.a), arg_0.a.wz), ~func_3(16879i, Struct_1(arg_0.b.x, arg_0.c.b.x, vec3<i32>(u_input.d.x, 14877i, 10642i)))) ^ arg_0.a.x, vec4<u32>(reverseBits(countOneBits(_wgslsmith_mult_u32(u_input.c, u_input.b.x))), abs(arg_0.c.b.x), 34641u, 52401u));
    var var_1 = select(-(~(~vec4<i32>(18265i, 19771i, arg_0.a.x, arg_0.c.a) >> (vec4<u32>(arg_0.c.b.x, 31039u, 1u, 1u) % vec4<u32>(32u)))), arg_0.a, !select(select(!vec4<bool>(arg_0.b.x, true, true, true), !vec4<bool>(arg_0.b.x, arg_0.b.x, false, false), select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(false, false, arg_0.b.x, arg_0.b.x), true)), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, any(vec4<bool>(false, true, arg_0.b.x, false))), !select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-229f, 586f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-arg_2.x)))), arg_2));
    var var_3 = arg_2.yww;
    return Struct_1(true, 28735u, arg_0.a.zxx);
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_2(func_4(func_2(firstLeadingBit(~global0.b), max(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, global0.a), u_input.d), ~global0.a), false), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2252f, -166f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, 625f, -467f, -1718f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(985f, -1659f, 1459f, 1121f), vec4<f32>(-774f, 554f, 1102f, 1000f)))))), Struct_1(true, ~u_input.a, select(~vec3<i32>(global0.a, global0.a, -2147483647i), u_input.d.yyw, !select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x)))), Struct_1(true, ~92484u, u_input.d.www));
    global0 = Struct_3(54985i, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1687u, global0.b.x, u_input.a, global0.b.x)), global0.b), global0.b));
    let var_1 = global0.b;
    global0 = Struct_3(-1i, _wgslsmith_sub_vec4_u32((~vec4<u32>(4294967295u, 1u, 14010u, 0u) >> ((global0.b >> (global0.b % vec4<u32>(32u))) % vec4<u32>(32u))) & vec4<u32>(global0.b.x, _wgslsmith_mod_u32(global0.b.x, 0u), 28625u, 1u), global0.b));
    let var_2 = func_2(vec4<u32>(4294967295u, 1u, var_0.c.b, var_0.a.b), func_3(-max(global0.a, _wgslsmith_sub_i32(u_input.d.x, var_0.c.c.x)), func_4(func_2(vec4<u32>(72455u, 0u, 4294967295u, var_0.b.b), abs(-56182i), true), vec2<f32>(_wgslsmith_div_f32(-743f, 626f), -413f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -238f, 988f, 765f)), vec4<f32>(1361f, 915f, -821f, 1372f)))), !var_0.b.a);
    return _wgslsmith_mod_vec4_u32((abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 86924u, var_1.x, 56914u), global0.b)) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(global0.b.x, var_0.a.b, global0.b.x, 1u))) % vec4<u32>(32u))) ^ ~global0.b, ~vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, var_2.c.b.x)), 0u, global0.b.x, 69658u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(6541i, func_1(vec3<bool>(true, 2147483647i < (u_input.d.x << (u_input.b.x % 32u)), select(true, true, true))));
    global0 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, global0.a, global0.a, u_input.d.x), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, -31360i, -54609i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, u_input.d.x))), ~global0.a >> (global0.b.x % 32u), global0.a), _wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, global0.a, global0.a, 4976i), ~u_input.d)), _wgslsmith_mod_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.a, 142193u, u_input.a, 6192u))), vec4<u32>(1u, ~4294967295u, global0.b.x, ~u_input.c)) | firstTrailingBit(select(vec4<u32>(u_input.a, 46450u, 45195u, global0.b.x), global0.b, vec4<bool>(false, false, false, false)) << (~vec4<u32>(u_input.c, 13164u, 34190u, 20353u) % vec4<u32>(32u))));
    global0 = func_2(vec4<u32>(u_input.a, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 1u), func_1(vec3<bool>(false, true, false)))), ~(~27774u << (~u_input.a % 32u)), u_input.a << (28773u % 32u)), -abs(-(~0i)), ((~u_input.d.x != u_input.d.x) & all(vec2<bool>(true, true))) | (true && (func_4(Struct_4(vec4<i32>(global0.a, u_input.d.x, u_input.d.x, 9252i), vec3<bool>(false, true, true), Struct_3(-1i, vec4<u32>(1u, u_input.b.x, 1u, 6730u))), vec2<f32>(1000f, 160f), vec4<f32>(-1244f, 995f, 190f, 241f)).a && true))).c;
    global0 = Struct_3(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), vec4<u32>(_wgslsmith_mod_u32(24076u, global0.b.x) << (~1u % 32u), global0.b.x, ~(~(~global0.b.x)), ~(~u_input.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, 55029u), vec3<u32>(u_input.c, 0u, 0u)) % 32u))));
    let var_0 = _wgslsmith_add_vec3_i32(-u_input.d.wwz, firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.d.wwz, select(u_input.d.xwy, _wgslsmith_mod_vec3_i32(u_input.d.ywx, vec3<i32>(u_input.d.x, -21762i, global0.a)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d, select(-max(vec4<i32>(var_0.x, 1i, 13969i, global0.a), u_input.d), select(vec4<i32>(global0.a, global0.a, -36053i, var_0.x), select(vec4<i32>(u_input.d.x, var_0.x, -19494i, 1i), u_input.d, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), true))), 1u, var_0.x, -199f, -(~((vec3<i32>(var_0.x, 57102i, global0.a) >> (global0.b.yyy % vec3<u32>(32u))) >> (countOneBits(vec3<u32>(u_input.a, 0u, u_input.a)) % vec3<u32>(32u)))));
}

