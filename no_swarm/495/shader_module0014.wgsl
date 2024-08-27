struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(4294967295u, 4294967295u, 28815u));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 1i, -21812i), false, vec3<u32>(93937u, 4294967295u, 1u), vec3<f32>(389f, 2412f, -497f)), vec2<u32>(4294967295u, 0u), vec4<u32>(30947u, 0u, 11354u, 1u), 23051u, vec2<bool>(true, false));

var<private> global2: i32;

var<private> global3: array<u32, 8> = array<u32, 8>(61303u, 71046u, 1u, 4294967295u, 18630u, 0u, 9076u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    global0 = array<vec3<u32>, 1>();
    var var_0 = Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(~global1.a.a.x, global1.a.a.x | -62762i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.a.x, -2147483647i, -27534i, -48153i), vec4<i32>(global1.a.a.x, -2147483647i, global1.a.a.x, -1i))), vec3<i32>(-18006i, ~0i, global1.a.a.x)), global1.e.x, _wgslsmith_mod_vec3_u32(min(~(~vec3<u32>(global1.a.c.x, arg_0.x, 1u)), vec3<u32>(73258u >> (global1.c.x % 32u), 4294967295u, ~global3[_wgslsmith_index_u32(global1.a.c.x, 8u)])), ~_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(37934u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], 0u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.a.c.x, 0u, arg_0.x), global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), global1.a.d);
    var var_1 = -1i;
    let var_2 = _wgslsmith_mod_u32(~var_0.c.x | 96884u, ~arg_0.x) ^ (abs(0u) << (_wgslsmith_mod_u32(arg_0.x, var_0.c.x) % 32u));
    var var_3 = select(!(!select(!vec4<bool>(global1.a.b, false, var_0.b, false), vec4<bool>(global1.e.x, global1.a.b, var_0.b, global1.e.x), any(vec4<bool>(true, global1.e.x, var_0.b, false)))), select(vec4<bool>(any(vec2<bool>(false, false)), true, any(!vec3<bool>(global1.a.b, false, true)), !var_0.b), !select(vec4<bool>(var_0.b, global1.a.b, true, var_0.b), !vec4<bool>(false, true, global1.a.b, false), global1.a.b), !(!select(vec4<bool>(var_0.b, global1.a.b, false, var_0.b), vec4<bool>(var_0.b, false, global1.a.b, global1.a.b), false))), !(false & all(vec3<bool>(false, global1.a.b, true))) | all(vec3<bool>(var_0.b, true, !var_0.b)));
    return arg_0.zxw;
}

fn func_2() -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.a.c.x, 1u), 1u)], _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(global1.b.x, global1.b.x, global1.d)), vec3<u32>(57655u, 20815u, 1u))), ~(global1.a.c.x >> (113249u % 32u))) | global3[_wgslsmith_index_u32(~reverseBits(reverseBits(min(global1.d, 4294967295u))), 8u)], 8u)];
    let var_1 = Struct_1(u_input.d << (((func_3(vec4<u32>(global1.a.c.x, 3445u, global3[_wgslsmith_index_u32(39747u, 8u)], global3[_wgslsmith_index_u32(global1.a.c.x, 8u)])) << (global0[_wgslsmith_index_u32(~global1.a.c.x, 1u)] % vec3<u32>(32u))) ^ firstLeadingBit(min(vec3<u32>(0u, 6571u, 1u), vec3<u32>(73653u, 0u, 55039u)))) % vec3<u32>(32u)), all(select(!(!vec3<bool>(global1.e.x, global1.e.x, global1.e.x)), !(!vec3<bool>(global1.e.x, true, global1.a.b)), true)), _wgslsmith_mod_vec3_u32(~global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 1u)], global1.a.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(425f)), _wgslsmith_f_op_f32(sign(global1.a.d.x))))), global1.a.d.x, -617f));
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(u_input.d, var_1.a), (all(vec2<bool>(true, true)) & all(select(vec4<bool>(true, var_1.b, true, global1.e.x), vec4<bool>(false, true, true, true), vec4<bool>(true, var_1.b, true, false)))) | (false | all(!vec3<bool>(var_1.b, var_1.b, global1.e.x))), ~var_1.c, vec3<f32>(989f, 1484f, _wgslsmith_f_op_f32(step(global1.a.d.x, _wgslsmith_f_op_f32(-global1.a.d.x)))));
    global2 = 20421i;
    global0 = array<vec3<u32>, 1>();
    return Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(u_input.d.x, -7317i), max(min(24041i, global1.a.a.x), min(var_2.a.x, global1.a.a.x)), -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2090f), 786f) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.d.x, var_1.d.x)))), ~var_2.c, global1.a.d), func_3(vec4<u32>(1u, 47853u, var_1.c.x, global1.b.x) << (abs(vec4<u32>(4294967295u, var_1.c.x, var_1.c.x, 449u)) % vec4<u32>(32u))).yx, ~firstLeadingBit(global1.c), 51152u, !vec2<bool>(!select(false, global1.a.b, global1.e.x), -627f >= _wgslsmith_f_op_f32(-var_2.d.x)));
}

fn func_1(arg_0: vec4<bool>) -> vec4<i32> {
    global3 = array<u32, 8>();
    var var_0 = Struct_2(global1.a, global1.c.zw, global1.c, 81037u, arg_0.yw);
    var var_1 = func_2();
    var var_2 = 743f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-710f)))));
    var var_3 = Struct_3(_wgslsmith_sub_vec4_i32(-abs(select(vec4<i32>(2147483647i, 44472i, 54655i, 2147483647i), vec4<i32>(var_1.a.a.x, global1.a.a.x, -18248i, 2428i), true)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -1703i, u_input.a, 5997i), vec4<i32>(var_1.a.a.x, 29164i, global1.a.a.x, -10507i)), select(vec4<i32>(var_0.a.a.x, var_0.a.a.x, var_1.a.a.x, -23284i), vec4<i32>(-2147483647i, -1i, global1.a.a.x, global1.a.a.x), vec4<bool>(arg_0.x, false, var_0.e.x, true)), abs(vec4<i32>(var_0.a.a.x, u_input.b, -2147483647i, -11180i))))), vec2<f32>(var_0.a.d.x, 110f), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, ~var_1.a.a.x), ~(~select(vec2<i32>(1i, 0i), vec2<i32>(var_0.a.a.x, var_0.a.a.x), global1.e.x))), var_0.a);
    return -_wgslsmith_div_vec4_i32(max(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_3.a.x, var_1.a.a.x, u_input.b, 2147483647i), vec4<i32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, 0i)), var_3.a), var_3.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = Struct_1(u_input.d, arg_0.d.b, _wgslsmith_clamp_vec3_u32(min(~global1.c.wxz, vec3<u32>(global3[_wgslsmith_index_u32(arg_2.d.c.x, 8u)], 8743u, 1769u)) >> (~arg_0.d.c % vec3<u32>(32u)), vec3<u32>(~(~67691u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.c.x, 0u, global1.a.c.x, 73640u), global1.c), 1u | arg_1.x), 36157u), max(abs(~vec3<u32>(arg_2.d.c.x, arg_2.d.c.x, arg_1.x)), vec3<u32>(abs(1u), _wgslsmith_add_u32(53006u, arg_1.x), arg_1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.d.d))));
    let var_1 = Struct_3(vec4<i32>(firstLeadingBit(~(-var_0.a.x)), func_1(vec4<bool>(false, all(vec3<bool>(arg_2.d.b, false, true)), any(vec3<bool>(var_0.b, false, false)), func_2().a.b)).x, arg_0.d.a.x & 11770i, global1.a.a.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b), global1.a.d.yy), var_0.a.xz, global1.a);
    var var_2 = Struct_2(func_2().a, func_2().a.c.yz, abs(select(func_2().c >> (~arg_1 % vec4<u32>(32u)), func_2().c, select(select(vec4<bool>(true, arg_0.d.b, false, global1.e.x), vec4<bool>(false, arg_2.d.b, arg_2.d.b, var_1.d.b), false), vec4<bool>(arg_0.d.b, true, arg_0.d.b, arg_2.d.b), vec4<bool>(arg_0.d.b, global1.e.x, var_1.d.b, arg_0.d.b)))), ~4294967295u, vec2<bool>(!func_2().e.x, var_1.d.b));
    let var_3 = func_2();
    let var_4 = ~(~4294967295u);
    return max(var_3.b.x, arg_2.d.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.c.wxw;
    let var_1 = ~vec2<u32>(func_4(Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, 0i), vec4<i32>(global1.a.a.x, -1i, global1.a.a.x, 65358i)), _wgslsmith_f_op_vec2_f32(global1.a.d.zy - vec2<f32>(-1373f, global1.a.d.x)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), global1.a.a.yz), global1.a), vec4<u32>(_wgslsmith_sub_u32(global1.c.x, global3[_wgslsmith_index_u32(17026u, 8u)]), 0u, var_0.x, 20329u), Struct_3(func_1(vec4<bool>(global1.e.x, global1.a.b, true, global1.e.x)), vec2<f32>(-219f, 1000f), vec2<i32>(global1.a.a.x, global1.a.a.x), global1.a), _wgslsmith_clamp_i32(countOneBits(2147483647i), max(u_input.b, -54877i), 2147483647i)), ~(~func_2().d));
    var var_2 = all(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global1.e.x, global1.e.x, true, true), vec4<bool>(global1.a.b, global1.a.b, global1.a.b, true), vec4<bool>(global1.e.x, global1.a.b, global1.a.b, false)), !global1.e.x), select(!select(vec4<bool>(global1.a.b, global1.a.b, global1.e.x, true), vec4<bool>(false, true, true, false), false), vec4<bool>(all(vec3<bool>(true, true, true)), true, false, any(global1.e)), vec4<bool>(false, global1.a.b, true, true)), false));
    let var_3 = global3[_wgslsmith_index_u32(42638u, 8u)];
    var var_4 = vec3<u32>(min(global3[_wgslsmith_index_u32(var_1.x, 8u)], ~54379u), ~firstLeadingBit(_wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_dot_vec3_u32(vec3<u32>(~max(6987u, 1134u), 435u, ~1u), ~select(~vec3<u32>(var_0.x, global1.b.x, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 98887u, 45277u), global0[_wgslsmith_index_u32(var_0.x, 1u)]), vec3<bool>(global1.a.b, global1.e.x, false))));
    let var_5 = global1.a.a.x;
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, var_4.x), select(~abs(var_1.x), select(37631u & var_1.x, 4294967295u, true), any(vec3<bool>(global1.a.b, false, global1.a.b)) || all(vec4<bool>(true, global1.e.x, global1.a.b, global1.a.b))), ~global3[_wgslsmith_index_u32(22814u, 8u)] | ~4294967295u), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(40469u, var_0.x << (global1.c.x % 32u), countOneBits(global3[_wgslsmith_index_u32(17476u, 8u)])), 1u)] ^ ~global1.c.zyz);
    var_0 = ~global1.a.c;
    let var_6 = Struct_3(_wgslsmith_clamp_vec4_i32(firstLeadingBit(~min(vec4<i32>(-1i, u_input.b, u_input.c, u_input.b), vec4<i32>(u_input.d.x, u_input.c, u_input.c, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -u_input.c, u_input.c, u_input.b & u_input.d.x), -select(vec4<i32>(global1.a.a.x, -2147483647i, -2147483647i, -1i), vec4<i32>(global1.a.a.x, global1.a.a.x, global1.a.a.x, -17211i), false)), vec4<i32>(max(u_input.b, -2147483647i), select(u_input.c, u_input.d.x, global1.a.b), 54911i, _wgslsmith_div_i32(1i, global1.a.a.x)) & vec4<i32>(-global1.a.a.x, func_1(vec4<bool>(false, global1.e.x, true, true)).x, global1.a.a.x, max(global1.a.a.x, global1.a.a.x))), _wgslsmith_f_op_vec2_f32(round(global1.a.d.xy)), ~(-(u_input.d.yz << (~vec2<u32>(1u, var_4.x) % vec2<u32>(32u)))), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(7128i, -87612i);
}

