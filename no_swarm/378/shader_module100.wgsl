struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, false, false, true, true, false, false);

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-1410i, 0i, 53005i, -27602i), false, -26612i, -1408f), vec3<i32>(0i, -1i, -1i), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-20419i, 91491i, 63890i, 1i), true, 6057i, 331f));

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    let var_0 = global2.c;
    var var_1 = var_0.a.wyz;
    let var_2 = Struct_2(global2.c, global1.b.wyw, Struct_1(!global2.c.a, select(global2.a.b, vec4<i32>(_wgslsmith_div_i32(u_input.c, -23253i), 18755i, -1i, firstTrailingBit(-2147483647i)), !select(vec4<bool>(false, true, var_1.x, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], arg_3, global0[_wgslsmith_index_u32(u_input.b, 8u)], global1.c), false)), !all(!vec2<bool>(var_1.x, global2.c.c)), ~(-firstTrailingBit(global1.d)), arg_1));
    return var_0.a;
}

fn func_2() -> Struct_3 {
    global3 = vec2<bool>(all(func_3(~(u_input.a | 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-168f, -526f))), _wgslsmith_clamp_u32(705u, 1u, 1u), _wgslsmith_f_op_f32(-global2.a.e) <= _wgslsmith_f_op_f32(trunc(global2.c.e)))), true);
    var var_0 = global2.c.b.x;
    global0 = array<bool, 8>();
    var_0 = global2.c.b.x;
    var var_1 = min(_wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.a), global1.d), abs(max(select(vec2<i32>(global1.d, -48833i), global1.b.xx, global3.x), global2.b.yz << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))))), global1.b.xw);
    return Struct_3(global2.b.x, all(!(!vec2<bool>(false, global2.c.a.x))), ~vec3<i32>(2147483647i, u_input.a, global1.b.x), global2.c);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var var_1 = Struct_3(var_0.d.d, !func_3(_wgslsmith_sub_i32(var_0.c.x | 25042i, _wgslsmith_clamp_i32(u_input.c, -1i, var_0.d.d)), -1000f, firstLeadingBit(u_input.b), false).x, vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 2147483647i, 427i), global1.b.xzw), vec3<i32>(u_input.d, 2147483647i, var_0.d.d) | global1.b.yxx), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-2696i, global1.b.x), 28684i), -_wgslsmith_mult_vec2_i32(var_0.d.b.xx, vec2<i32>(global1.b.x, -2147483647i)))), func_2().d);
    global1 = var_0.d;
    global4 = _wgslsmith_div_i32(27388i, 31034i);
    global1 = var_0.d;
    return Struct_2(func_2().d, global1.b.yzw, global2.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(1i, -1i)), reverseBits(-1i)), global1.b.zz), true, _wgslsmith_add_vec3_i32(global1.b.wwx, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global2.b.x, global1.b.x) >> (vec3<u32>(1u, u_input.b, 57373u) % vec3<u32>(32u)), arg_1.c.b.wzy) & global1.b.wyy), Struct_1(vec4<bool>(true, !func_3(arg_1.c.d, 122f, u_input.b, true).x, global2.a.c, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) >= _wgslsmith_mod_u32(46000u, 4294967295u)), select(vec4<i32>(global1.b.x, u_input.a, _wgslsmith_mult_i32(0i, -32370i), -1i), vec4<i32>(arg_1.c.d, i32(-1i) * -28014i, ~(-5703i), global2.c.d), global2.c.a), global2.c.a.x, abs(-1i), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f + global2.c.e) + _wgslsmith_f_op_f32(ceil(global2.c.e))))));
    var var_1 = Struct_2(arg_1.a, select(vec3<i32>(max(2147483647i, u_input.d) | (i32(-1i) * -1i), 2147483647i, _wgslsmith_sub_i32(u_input.c, 14742i & var_0.c.x)), vec3<i32>(~(-1i), 1i, global2.b.x), global2.c.a.xyw), Struct_1(vec4<bool>(false, true, true, func_2().b), vec4<i32>(-36812i, global1.d, 1i, global2.b.x), true, -15416i, -503f));
    let var_2 = global2.c.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-977f, var_1.c.e), vec2<f32>(941f, arg_1.c.e), false)), vec2<f32>(var_1.a.e, var_0.d.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.e, 1131f)), all(var_1.c.a.yyw))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global2.c.e))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-204f, -514f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(894f, -391f), vec2<f32>(var_0.d.e, 754f), var_1.c.a.x)))))));
    let var_4 = Struct_3(arg_1.c.b.x, true, select(var_1.a.b.xzy, var_1.c.b.zyx, all(!select(global2.a.a.xw, vec2<bool>(true, var_0.d.a.x), var_1.a.a.x))), arg_1.c);
    return Struct_2(func_1().c, vec3<i32>(var_0.a, global1.b.x, firstTrailingBit(u_input.a)), Struct_1(!vec4<bool>(false, 4294967295u <= arg_2, false, true), vec4<i32>(936i, 2147483647i, firstTrailingBit(max(global2.c.b.x, 0i)), u_input.d), true, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.d.b, _wgslsmith_div_vec4_i32(var_4.d.b, global2.c.b)), arg_1.c.b), -347f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    let var_0 = func_4(!vec2<bool>(_wgslsmith_f_op_f32(select(-1281f, global2.a.e, global2.a.a.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -302f), (257f > global2.a.e) != !global3.x), func_1(), ~u_input.b);
    global4 = -18649i;
    global2 = Struct_2(Struct_1(!vec4<bool>(global3.x, !var_0.a.c, any(global1.a.xz), global1.a.x), _wgslsmith_div_vec4_i32(func_4(vec2<bool>(global1.c, global0[_wgslsmith_index_u32(39611u, 8u)]), var_0, u_input.b).c.b, ~var_0.a.b) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(12155u, u_input.b, u_input.b, u_input.b)), ~4294967295u, 4294967295u, _wgslsmith_div_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), global1.a.x, -abs(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e - global1.e)))), vec3<i32>(_wgslsmith_mod_i32(u_input.d, -33255i | firstLeadingBit(global1.d)), u_input.a, reverseBits(u_input.a)), func_2().d);
    global1 = var_0.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e))), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.a.e, 392f), 1374f), _wgslsmith_f_op_f32(-var_0.c.e)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(971f - global1.e), -1109f, var_0.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(428f + -301f) * 707f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e, -203f, 1496f, global2.a.e)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.e, 2218f, 493f, 796f))))));
    var var_2 = Struct_1(global1.a, vec4<i32>(_wgslsmith_mod_i32(u_input.c, 45884i), _wgslsmith_add_i32(u_input.a, var_0.c.d), i32(-1i) * -firstLeadingBit(u_input.c), firstLeadingBit(54222i) ^ global2.b.x), func_1().a.a.x, -2147483647i, global2.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1815f + _wgslsmith_div_f32(var_2.e, global2.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(863f, -3471f)))), func_1().a.b.x, ~vec3<u32>(u_input.b, u_input.b, 89576u), firstLeadingBit(global1.d) >> (58160u % 32u));
}

