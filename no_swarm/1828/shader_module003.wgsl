struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: vec3<f32> = vec3<f32>(763f, -1376f, 196f);

var<private> global3: vec4<bool>;

var<private> global4: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_2(all(arg_1.wyx), ~u_input.c | u_input.c, Struct_1(global2.x, !global3.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1103f)) + global2.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -633f))))), global2.yz, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(4703i, u_input.a, u_input.c), ~firstLeadingBit(vec3<i32>(u_input.a, 1i, -56696i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.c, u_input.c, 41639i), _wgslsmith_mod_vec3_i32(vec3<i32>(60752i, -1i, u_input.c), vec3<i32>(u_input.a, u_input.a, u_input.a)))) & _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.a, u_input.c, 9094i)), vec3<i32>(_wgslsmith_mult_i32(u_input.c, -1i), u_input.a, _wgslsmith_add_i32(1i, 17525i))));
    let var_1 = Struct_2(all(select(select(arg_1, vec4<bool>(false, global3.x, arg_1.x, arg_1.x), !arg_1), vec4<bool>(false && arg_1.x, global3.x, true || arg_1.x, any(vec2<bool>(false, false))), arg_1)), u_input.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-689f)), _wgslsmith_f_op_f32(f32(-1f) * -284f))), select(arg_1.wy, arg_1.wx, global3.xy), _wgslsmith_f_op_f32(1361f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), -760f))), global2.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.d.x, global2.x)))), -vec3<i32>(~u_input.c, 21226i, u_input.c));
    global3 = select(vec4<bool>(any(vec4<bool>(var_0.a, !global3.x, var_1.a | var_0.a, global3.x)), true, true, var_0.c.b.x), vec4<bool>(false, var_1.a, var_1.c.b.x, -var_1.b < firstLeadingBit(~var_1.b)), !(!select(vec4<bool>(true, true, true, true), arg_1, arg_1)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.c.d);
    global1 = var_1.c.d.x;
    return any(select(select(global3.yxz, vec3<bool>(false, false, select(false, var_1.c.b.x, var_0.c.b.x)), true), !select(arg_1.wwz, select(vec3<bool>(arg_1.x, false, true), vec3<bool>(var_0.a, global3.x, var_0.c.b.x), global3.wyy), arg_1.x), global3.zwy));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(732f - arg_0.c.c);
    let var_1 = firstTrailingBit(~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(38557u, u_input.b.x), u_input.b.x), 4294967295u, ~17615u));
    var var_2 = vec2<bool>(!global3.x, true & func_3(var_1 << (_wgslsmith_sub_vec3_u32(var_1, vec3<u32>(8425u, 57693u, 1u)) % vec3<u32>(32u)), vec4<bool>(true, true, !arg_0.a, true)));
    var var_3 = false;
    let var_4 = -(~arg_0.e.x);
    return !vec4<bool>(func_3(~(~vec3<u32>(var_1.x, 23777u, var_1.x)), !(!vec4<bool>(var_2.x, true, global3.x, arg_0.c.b.x))), arg_0.c.b.x, !any(select(vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(true, arg_0.c.b.x, true, false))), all(!vec2<bool>(global3.x, true)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(1741u, u_input.b.x), 24669u)), ~(~(vec3<u32>(32205u, u_input.b.x, u_input.b.x) | firstLeadingBit(vec3<u32>(u_input.b.x, 1u, 31089u)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + 779f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1076f))));
    global3 = select(!(!vec4<bool>(21409u > u_input.b.x, !global3.x, global3.x & true, select(false, true, global3.x))), !(!func_2(Struct_2(true, 46747i, Struct_1(2013f, vec2<bool>(global3.x, true), global2.x, global2.zx), vec2<f32>(global2.x, -868f), vec3<i32>(2147483647i, u_input.a, u_input.c)))), global3.x);
    var var_0 = 5270u ^ max(5984u, select(u_input.b.x, firstLeadingBit(u_input.b.x) ^ _wgslsmith_sub_u32(u_input.b.x, 68246u), true));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.a, 2147483647i)) << (~u_input.b.x % 32u), _wgslsmith_add_i32(u_input.a | u_input.c, -2661i) << (0u % 32u)), _wgslsmith_mult_i32(32660i, firstTrailingBit(max(u_input.a, u_input.c))), -2147483647i, -(~_wgslsmith_mod_i32(u_input.c, 1i)));
    return Struct_1(163f, vec2<bool>(!select(global3.x, global3.x, u_input.c >= u_input.a), select(global3.x, global3.x, true)), global2.x, _wgslsmith_f_op_vec2_f32(-global2.yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1217f, 456f, _wgslsmith_f_op_f32(f32(-1f) * -439f), -1983f)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -734f) <= global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(step(var_1.xyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.yxw, vec3<f32>(_wgslsmith_f_op_f32(round(global2.x)), var_1.x, _wgslsmith_f_op_f32(233f + var_0.c)), vec3<bool>(false, !var_2, true))) + vec3<f32>(2240f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f + 1337f) * _wgslsmith_f_op_f32(sign(var_0.c))), _wgslsmith_f_op_f32(ceil(669f))))));
    global3 = select(!func_2(Struct_2(false, -u_input.a, Struct_1(global2.x, var_0.b, -1042f, vec2<f32>(1220f, global2.x)), vec2<f32>(global2.x, var_0.a), -vec3<i32>(1i, u_input.a, u_input.c))), vec4<bool>(var_0.b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(52097u, u_input.b.x, 28792u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))) != 4294967295u, global3.x, all(select(vec3<bool>(true, true, false), func_2(Struct_2(global3.x, -1i, Struct_1(var_1.x, global3.wy, 307f, global2.yy), vec2<f32>(global2.x, -1690f), vec3<i32>(u_input.a, 51876i, 1i))).yyw, true))), func_2(Struct_2(global3.x || all(vec4<bool>(false, global3.x, var_0.b.x, true)), -60194i, func_1(), var_0.d, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.c, 53120i), vec3<i32>(3865i, -24083i, 1i)), max(vec3<i32>(-1i, u_input.c, u_input.a), vec3<i32>(-2147483647i, 1i, u_input.a))))));
    var var_3 = Struct_2(true, firstLeadingBit(abs(-1i)), Struct_1(var_1.x, !func_1().b, _wgslsmith_f_op_f32(step(var_0.c, 826f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(757f, var_1.x), var_1.wx))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -483f), _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_mod_i32(u_input.c, u_input.a), u_input.c), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(25207i, u_input.a, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.c), vec3<i32>(-26114i, u_input.c, 0i)))) & abs(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 17501i), -20325i, 0i)));
    let var_4 = var_0;
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, u_input.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(551f - -1572f) + func_1().c)), -187f)), _wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 6075u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), ~45978u), abs(u_input.b)));
}

