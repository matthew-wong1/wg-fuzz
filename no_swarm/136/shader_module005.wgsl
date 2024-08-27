struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 14558u, 9504u, 21656u, 12131u, 4294967295u, 49977u, 4294967295u, 25227u, 56296u, 4294967295u, 39792u, 1u, 10599u, 1u, 4294967295u, 19811u, 29409u, 4294967295u, 10717u, 14218u, 0u, 44465u, 4294967295u, 79326u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = min(9900i, -23699i);
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, max(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-31275i, var_0, -22680i) & vec3<i32>(var_0, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, 1i))), u_input.b.x), vec3<i32>(-38077i, ~(var_0 | select(u_input.b.x, var_0, false)), -11194i));
    let var_2 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1285f + -291f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1337f)))) == -1601f, !(!(true || any(vec4<bool>(false, true, true, false)))), !any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    return abs(1i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = arg_0;
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    let var_1 = select(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), vec3<bool>(false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true)), _wgslsmith_add_i32(func_3(35172u), abs(-8506i)) > -(~(-40473i))), false);
    global0 = array<u32, 25>();
    return Struct_2(arg_0.zy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), 8690i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), var_0.x)), vec3<bool>(~u_input.a.x > global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25029u), 25u)], var_1.x, any(vec2<bool>(true, var_1.x))), var_1.yx));
}

fn func_1() -> bool {
    let var_0 = Struct_3(1f, func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-402f, -195f, -446f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1643f, -652f, 1010f)))))))), vec2<i32>(abs(-select(-30082i, u_input.b.x, false)), u_input.b.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -937f) * _wgslsmith_f_op_vec2_f32(-var_0.b.a))))) - var_0.b.a);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -486f)) + _wgslsmith_f_op_vec2_f32(exp2(var_0.b.a)))));
    var var_2 = var_0;
    var var_3 = ~select(u_input.e | (u_input.c.yz & vec2<u32>(1u, 0u)), vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)]), 25u)], ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)] << (u_input.d.x % 32u))), var_2.b.b.d.yz);
    return var_2.b.b.e.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<u32, 25>();
    let var_0 = Struct_1(-575f, u_input.b.x, arg_1.a, vec3<bool>((u_input.c.x == (global0[_wgslsmith_index_u32(73786u, 25u)] | global0[_wgslsmith_index_u32(u_input.d.x, 25u)])) & !arg_1.b.b.d.x, arg_1.b.b.d.x, arg_1.b.b.d.x), vec2<bool>(!func_1(), !arg_1.b.b.d.x));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(125f, var_0.a, var_0.a) * vec3<f32>(1008f, arg_1.a, -1839f))))))));
    return firstLeadingBit(firstTrailingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -3034i, -13969i), vec3<i32>(28420i, -1i, -30281i)) >> (~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 4294967295u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    let var_0 = func_4(!func_1(), Struct_3(476f, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1937f, -111f, -379f))), vec2<i32>(u_input.b.x, -1i))) << (select(reverseBits(vec3<u32>(u_input.e.x & u_input.c.x, ~4294967295u, 1u)), ~(~u_input.c.yxy), true) % vec3<u32>(32u));
    global0 = array<u32, 25>();
    var var_1 = false;
    var_1 = any(vec4<bool>(!all(vec4<bool>(true, false, true, true)), !(_wgslsmith_f_op_f32(round(-825f)) >= _wgslsmith_f_op_f32(min(1648f, -1162f))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, false))), true & (~u_input.d.x == _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e.x), u_input.c.wx))));
    var_1 = false;
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1295f, 431f, -515f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2179f, -109f, 617f) - vec3<f32>(-249f, 459f, 1000f))))).a, Struct_1(-589f, u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-193f))))), vec3<bool>(all(vec3<bool>(true, false, false)), false, false), vec2<bool>(true, select(any(vec4<bool>(false, false, true, true)), true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x, reverseBits(_wgslsmith_mod_i32(u_input.b.x >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30100u, 25u)], 25u)]) % 32u), func_3(1u))), u_input.a.yy);
}

