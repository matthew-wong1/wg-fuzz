struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 28>;

var<private> global4: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_3(!(!(!(!vec3<bool>(false, global2.a, true)))), ~global2.b, vec2<i32>(select(-1i, ~countOneBits(global2.c.x), any(vec2<bool>(true, false))), global2.c.x));
    let var_1 = ~77733i;
    global1 = array<Struct_2, 9>();
    let var_2 = _wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(902f, -1000f) - arg_0) + arg_0), _wgslsmith_f_op_vec2_f32(abs(arg_0))))));
    let var_3 = _wgslsmith_mult_i32(1i >> ((53026u >> (var_0.b % 32u)) % 32u), -1i);
    return countOneBits(1u);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_4(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -2170f) - vec2<f32>(2202f, arg_1))))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-global2.c.xx, -reverseBits(vec2<i32>(global2.c.x, u_input.a))), 1i));
    var var_1 = _wgslsmith_dot_vec3_i32(global2.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(global2.c, global2.c), global2.c, ~(_wgslsmith_mult_vec3_i32(global2.c, vec3<i32>(var_0.c, u_input.a, arg_0)) ^ global2.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1471f + _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    var var_3 = _wgslsmith_f_op_f32(ceil(438f));
    let var_4 = false;
    return !(!select(select(!vec2<bool>(var_4, false), !vec2<bool>(var_0.a, false), true), vec2<bool>(!var_4, false), vec2<bool>(false, var_0.a)));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = vec2<bool>(global2.a, any(func_4(_wgslsmith_dot_vec2_i32(global2.c.zy, vec2<i32>(u_input.a, -2298i)) << ((1u & global2.b) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), max(select(vec3<u32>(0u, 0u, global2.b), vec3<u32>(global2.b, global2.b, 4294967295u), vec3<bool>(true, global2.a, true)), ~vec3<u32>(global2.b, 0u, 106801u)), vec4<u32>(global2.b, ~49170u, func_3(vec2<f32>(-416f, 511f)), 19041u))));
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(trunc(486f));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, -209f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-484f, 1652f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, 463f)))))));
    let var_4 = select(vec3<bool>(arg_0, true, arg_0), !select(!(!vec3<bool>(false, arg_0, false)), !(!vec3<bool>(false, var_0.x, false)), vec3<bool>(all(var_0), true || arg_0, true)), any(vec2<bool>(!global2.a, !arg_0 & true)));
    return vec2<u32>(_wgslsmith_mult_u32(~(~global2.b), max(func_3(vec2<f32>(-2385f, -646f)), max(countOneBits(1u), 6949u))), 0u);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(global2.c, Struct_1(all(vec3<bool>(false, all(vec4<bool>(true, global2.a, false, true)), true)), 22562u, select(vec3<i32>(_wgslsmith_div_i32(u_input.a, -1i), countOneBits(2147483647i), -4239i), countOneBits(firstLeadingBit(vec3<i32>(global2.c.x, global2.c.x, -2147483647i))), any(select(vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(true, true, false, false), vec4<bool>(arg_2.x, global2.a, arg_2.x, arg_2.x))))));
    let var_1 = select(!vec2<bool>(global2.a, var_0.b.a), vec2<bool>(arg_0 >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0, arg_0, var_0.b.a)), arg_0)), false), true);
    global1 = array<Struct_2, 9>();
    let var_2 = !vec4<bool>(any(!(!vec4<bool>(false, var_0.b.a, arg_2.x, false))), all(arg_2), true, any(select(select(vec3<bool>(var_0.b.a, arg_2.x, var_0.b.a), arg_2, global2.a), select(arg_2, vec3<bool>(true, true, global2.a), vec3<bool>(arg_2.x, var_1.x, true)), true)));
    global0 = array<vec4<i32>, 6>();
    return Struct_3(select(vec3<bool>(any(!var_2.yzz), var_1.x, !(true || global2.a)), vec3<bool>(all(select(vec4<bool>(true, arg_2.x, false, arg_2.x), var_2, vec4<bool>(true, false, global2.a, true))), all(!vec2<bool>(var_1.x, false)), all(vec3<bool>(true, false, global2.a))), -1i < u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x) & _wgslsmith_sub_vec2_u32(arg_1, vec2<u32>(35845u, var_0.b.b)), arg_1), vec2<i32>(_wgslsmith_mult_i32(1i, u_input.a), ~var_0.b.c.x));
}

fn func_6(arg_0: Struct_3, arg_1: u32) -> Struct_3 {
    let var_0 = false;
    let var_1 = arg_0.c;
    global3 = array<Struct_2, 28>();
    let var_2 = false;
    global3 = array<Struct_2, 28>();
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(235f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1342f, 576f, false)))) * _wgslsmith_f_op_f32(f32(-1f) * -185f)), ~vec2<u32>(arg_1, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-982f, 451f), vec2<f32>(-593f, 1622f)))), select(arg_0.a, arg_0.a, !(!select(vec3<bool>(var_0, false, false), vec3<bool>(true, false, var_0), true))));
}

fn func_1(arg_0: Struct_4) -> i32 {
    var var_0 = func_6(func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1073f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0.b.x)))))), func_2(true), vec3<bool>(global2.a, !global2.a, 11824i <= ~u_input.a)), func_5(1425f, vec2<u32>(~13062u, global2.b) | _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(18188u, global2.b)), ~vec2<u32>(global2.b, 1u)), select(!(!vec3<bool>(global2.a, false, global2.a)), vec3<bool>(true, true | arg_0.a, true), true)).b);
    let var_1 = Struct_1((global2.b << (global2.b % 32u)) > var_0.b, _wgslsmith_div_u32(var_0.b, min(~105940u, global2.b) & ~_wgslsmith_mult_u32(var_0.b, var_0.b)), firstLeadingBit(-global2.c));
    let var_2 = func_5(-649f, vec2<u32>(min(firstTrailingBit(var_1.b), ~_wgslsmith_sub_u32(12674u, var_1.b)), ~21965u), select(!(!(!var_0.a)), var_0.a, !vec3<bool>(global2.a, false, arg_0.b.x <= arg_0.b.x)));
    global3 = array<Struct_2, 28>();
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.x, 548f, _wgslsmith_f_op_f32(abs(1302f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f * -477f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, -702f), _wgslsmith_f_op_f32(step(arg_0.b.x, -183f)), 1666f, _wgslsmith_f_op_f32(max(1000f, -132f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 993f, -778f, arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), arg_0.b.x, _wgslsmith_f_op_f32(sign(-544f)), arg_0.b.x)))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, ~global2.b, vec3<i32>(-global2.c.x, -1i, func_1(Struct_4(!global2.a, _wgslsmith_div_vec2_f32(vec2<f32>(662f, -578f), vec2<f32>(-128f, -1867f)), -40887i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1666f - -386f), 586f, true))))) - 1f);
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(~0i, func_1(Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-453f, 140f)), u_input.a)), -8105i), _wgslsmith_sub_vec3_i32(-(~reverseBits(vec3<i32>(-1i, var_0.c.x, -1i))), vec3<i32>(-(~(-1i)), u_input.a, global2.c.x | (i32(-1i) * -42160i))));
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-755f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f + -1167f) - -981f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1291f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(782f, 1265f, _wgslsmith_f_op_f32(856f * 664f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-150f, 398f, 360f), vec3<f32>(-325f, -1265f, 344f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, -1i, -3022i, min(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, global2.c.x, 72925i, var_2.x), global0[_wgslsmith_index_u32(var_0.b, 6u)]), vec4<i32>(0i, var_0.c.x, -1i, -595i)), -1i)), -global0[_wgslsmith_index_u32(select(~(1u >> (var_0.b % 32u)), func_2(false).x, true), 6u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x))), countOneBits(26097i) | _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -88375i, 4204i ^ var_2.x), global2.c));
}

