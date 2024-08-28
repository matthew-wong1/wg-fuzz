struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<i32> {
    var var_0 = -(abs(vec2<i32>(~28541i, reverseBits(-49732i))) << (~vec2<u32>(firstLeadingBit(u_input.a), u_input.a) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_mod_vec3_i32(abs(~countOneBits(vec3<i32>(71527i, 2147483647i, -1i) << (vec3<u32>(arg_0.x, 0u, 1715u) % vec3<u32>(32u)))), vec3<i32>(2147483647i, var_0.x, _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, var_0.x), vec4<i32>(45783i, 39629i, 14778i, var_0.x)))) >> (vec3<u32>(0u, ~u_input.a, _wgslsmith_sub_u32(u_input.a, ~arg_0.x)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1835f, _wgslsmith_f_op_f32(floor(arg_2.a))))));
    var_2 = -1270f;
    var_2 = -1121f;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(abs(_wgslsmith_dot_vec2_i32(~var_1.zy, vec2<i32>(-1i, var_1.x))), _wgslsmith_clamp_i32(1i, firstTrailingBit(var_1.x), -1i), 34964i, ~var_1.x), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~(vec4<i32>(var_1.x, var_0.x, var_0.x, 2147483647i) & vec4<i32>(var_1.x, var_0.x, 2147483647i, var_1.x)), select(-vec4<i32>(-42058i, 16690i, -9783i, 2147483647i), vec4<i32>(-1i, var_0.x, 1i, var_0.x) ^ vec4<i32>(var_1.x, -14691i, var_1.x, 2147483647i), true)), select(vec4<i32>(var_1.x << (1u % 32u), var_1.x >> (u_input.a % 32u), var_1.x, _wgslsmith_clamp_i32(var_1.x, -1806i, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, 76216i), firstLeadingBit(vec4<i32>(-37645i, var_1.x, 18174i, var_1.x)), countOneBits(vec4<i32>(-2147483647i, -2317i, -1i, var_0.x))), vec4<bool>(true, true, select(false, true, true), true))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec2<bool> {
    global0 = arg_2.x;
    let var_0 = !all(!(!arg_0.a.a.b));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-633f, -1203f)))))), arg_2.zx, Struct_1(518f));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, var_1.c.a, arg_0.a.a.a.a, -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-981f, arg_0.c.a, 957f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, var_1.a.a, 1027f, arg_0.a.c.x) + arg_0.a.c)))))));
    var var_3 = ~arg_1.zxy;
    return select(!var_1.b, vec2<bool>(!var_0, false), var_1.b);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global0 = false != arg_0.x;
    let var_0 = firstLeadingBit(firstTrailingBit(firstLeadingBit(~vec3<u32>(4294967295u, u_input.a, 23860u)))) ^ vec3<u32>(firstTrailingBit(~u_input.a << (~u_input.a % 32u)), 4294967295u, u_input.a >> (~u_input.a % 32u));
    global0 = !all(func_4(Struct_5(Struct_3(Struct_2(Struct_1(-1607f), arg_0, Struct_1(-861f)), 1i, vec4<f32>(-1823f, -1064f, 179f, 979f), arg_0.x), Struct_4(vec2<u32>(u_input.a, var_0.x), vec2<i32>(-6549i, -1i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), Struct_1(1105f)), select(~vec4<i32>(0i, 43465i, 2147483647i, 0i), func_3(vec2<u32>(11862u, 4294967295u), 4294967295u, Struct_1(-2177f), vec3<u32>(4294967295u, var_0.x, u_input.a)), !vec4<bool>(arg_0.x, true, false, arg_0.x)), vec3<bool>(arg_0.x, true, all(vec3<bool>(false, false, true)))));
    let var_1 = Struct_2(Struct_1(-318f), vec2<bool>(false, arg_0.x), Struct_1(-779f));
    let var_2 = 1000f;
    return Struct_2(Struct_1(var_2), arg_0, Struct_1(_wgslsmith_f_op_f32(sign(var_2))));
}

fn func_1() -> Struct_1 {
    global0 = true;
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(~min(-6077i, 2147483647i), i32(-1i) * -51975i, select(_wgslsmith_mod_i32(18190i, 17741i), _wgslsmith_dot_vec3_i32(vec3<i32>(-20195i, 0i, 0i), vec3<i32>(13941i, 1i, -11632i)), true)), firstTrailingBit(~(-47663i)));
    let var_1 = _wgslsmith_sub_i32(-1i, 1i);
    let var_2 = func_2(vec2<bool>(true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), any(vec2<bool>(true, true))))));
    var_0 = -_wgslsmith_sub_i32(var_1, -func_3(~vec2<u32>(u_input.a, u_input.a), 1u, Struct_1(387f), select(vec3<u32>(1u, 13972u, u_input.a), vec3<u32>(u_input.a, 1u, 37960u), vec3<bool>(var_2.b.x, true, false))).x);
    return func_2(var_2.b).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> i32 {
    global0 = any(vec4<bool>(true, arg_3, true, all(select(vec2<bool>(arg_3, arg_3), !vec2<bool>(arg_3, arg_3), !vec2<bool>(false, arg_3)))));
    let var_0 = Struct_3(func_2(vec2<bool>((i32(-1i) * -31477i) == _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-28784i, 2147483647i)), !arg_3)), firstLeadingBit(func_3(max(vec2<u32>(0u, u_input.a), vec2<u32>(0u, 0u)), arg_2.x, func_1(), ~vec3<u32>(1u, u_input.a, u_input.a)).x) & max(1i, ~0i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a, -437f, arg_0.a, arg_1.a))) * vec4<f32>(arg_0.a, -440f, 631f, arg_0.a))), vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(arg_0.a - 443f)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), arg_1.a), ~_wgslsmith_mod_u32(arg_2.x, 22952u) <= ~(~4294967295u))), !arg_3);
    let var_1 = arg_2.xy;
    global0 = true;
    var var_2 = var_0.c.zw;
    return _wgslsmith_sub_i32(0i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = ~(~(~(-firstTrailingBit(vec3<i32>(-16914i, 0i, 9845i)))));
    let var_1 = 901f;
    var var_2 = 4294967295u;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~abs(var_0.x), 0i, countOneBits(func_5(Struct_1(var_1), func_1(), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), false))), ~vec3<i32>(var_0.x, 2147483647i, ~select(var_0.x, -19612i, false)));
    var var_3 = Struct_5(Struct_3(Struct_2(func_2(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))).c, vec2<bool>(true, true), func_1()), func_5(func_1(), func_2(vec2<bool>(true, false)).c, abs(_wgslsmith_mod_vec4_u32(vec4<u32>(36016u, u_input.a, u_input.a, 50058u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), false & any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, var_1, var_1, -287f))))), select(true | any(vec3<bool>(true, false, false)), false, !all(vec3<bool>(false, true, true)))), Struct_4(countOneBits(vec2<u32>(u_input.a, ~u_input.a)), vec2<i32>(-1i) * -select(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(var_0.x, var_0.x), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), func_2(vec2<bool>(false, false)).b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, 757f), var_1)))));
    let var_4 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_3.a.b, 2147483647i, -2147483647i), vec4<i32>(2147483647i, var_0.x, 20728i, var_3.a.b)) & vec4<i32>(_wgslsmith_clamp_i32(5779i, 21029i, var_0.x), _wgslsmith_div_i32(var_0.x, -7264i), 1i, ~var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.a.c.x))) + var_3.c.a)), func_1().a, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, 1i, _wgslsmith_sub_i32(var_0.x, 50638i)) << (select(reverseBits(vec4<u32>(3889u, 53989u, 1u, var_4.x)), ~vec4<u32>(var_3.b.a.x, var_3.b.a.x, u_input.a, 22100u), !vec4<bool>(var_3.a.d, var_3.a.a.b.x, false, var_3.b.c.x)) % vec4<u32>(32u)), vec4<i32>(min(0i, -var_0.x), func_3(var_3.b.a, min(u_input.a, 4640u), func_2(var_3.a.a.b).a, vec3<u32>(var_3.b.a.x, 93017u, 1u) | vec3<u32>(var_4.x, 82103u, 4294967295u)).x, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -27425i, var_3.a.b), vec3<i32>(2147483647i, -1i, var_0.x)), 0i)));
}

