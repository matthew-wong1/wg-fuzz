struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(1642f, 762f), vec2<f32>(206f, 1974f), vec2<f32>(-629f, 2010f), vec2<f32>(609f, -1088f), vec2<f32>(1130f, -1576f), vec2<f32>(1355f, -258f), vec2<f32>(-336f, -1604f), vec2<f32>(-457f, -1878f), vec2<f32>(-400f, 780f), vec2<f32>(1000f, 1000f), vec2<f32>(-249f, -896f), vec2<f32>(281f, -1778f), vec2<f32>(-974f, -655f), vec2<f32>(-1000f, -958f), vec2<f32>(283f, -315f), vec2<f32>(-1000f, -1499f), vec2<f32>(-279f, 775f), vec2<f32>(2310f, -267f), vec2<f32>(-995f, -259f), vec2<f32>(296f, 1949f), vec2<f32>(1899f, 1000f));

var<private> global3: Struct_5 = Struct_5(1488f);

var<private> global4: Struct_3 = Struct_3(vec4<u32>(48548u, 4294967295u, 0u, 14270u), Struct_2(vec3<u32>(51103u, 1u, 1174u), vec2<i32>(-1i, 2147483647i), false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = global4.b;
    return Struct_5(global3.a);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: vec4<bool>) -> vec4<u32> {
    global2 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(reverseBits(~1u)), ~74870u, _wgslsmith_mod_u32(arg_0.a.x | select(52286u, 0u, false), min(global4.b.a.x ^ 10234u, u_input.b.x))), vec3<u32>(_wgslsmith_mult_u32(global0.b.a.x, _wgslsmith_add_u32(54688u, global0.b.a.x) ^ ~1u), global0.b.a.x, _wgslsmith_div_u32(56001u, ~global4.a.x)));
    global3 = arg_2;
    let var_1 = ~arg_0.a.x;
    global1 = all(vec4<bool>(true, arg_0.c, true, arg_0.c)) && true;
    return ((_wgslsmith_mod_vec4_u32(global4.a, _wgslsmith_mod_vec4_u32(vec4<u32>(25611u, 90374u, global4.a.x, var_0), global4.a)) | global0.a) << (vec4<u32>(_wgslsmith_mod_u32(var_1 >> (global0.b.a.x % 32u), 48885u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(39966u, 10102u, 9314u, global4.a.x), global0.a), max(vec4<u32>(u_input.b.x, global0.a.x, 27713u, 84888u), vec4<u32>(var_1, 45829u, global4.b.a.x, 65305u))), _wgslsmith_mod_u32(abs(83950u), var_0), global0.b.a.x) % vec4<u32>(32u))) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, var_0 >> (global0.a.x % 32u), firstLeadingBit(u_input.b.x), 24662u), _wgslsmith_clamp_vec4_u32(global4.a, global4.a, global0.a >> (vec4<u32>(16427u, global4.b.a.x, global4.a.x, 13282u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    return Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global4.a.x, func_3(global0.b, 1037f, Struct_5(global3.a), vec4<bool>(global4.b.c, arg_1.b.c, true, arg_1.b.c)).x, ~1u), global4.a), global0.b);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    global1 = all(select(vec4<bool>(any(vec3<bool>(arg_3.b.c, global4.b.c, false)), true, false, true), select(vec4<bool>(true, global0.b.c, global0.b.c, !global4.b.c), select(!vec4<bool>(true, true, arg_3.b.c, false), select(vec4<bool>(true, false, global4.b.c, global0.b.c), vec4<bool>(true, arg_3.b.c, true, true), vec4<bool>(arg_3.b.c, false, true, global0.b.c)), all(vec2<bool>(false, global0.b.c))), vec4<bool>(all(vec4<bool>(true, false, global4.b.c, arg_3.b.c)), arg_3.b.c | false, all(vec4<bool>(arg_3.b.c, true, true, false)), any(vec3<bool>(global4.b.c, arg_3.b.c, arg_3.b.c)))), select(vec4<bool>(true, !global0.b.c, global4.b.c, true), !vec4<bool>(global0.b.c, false, false, false), vec4<bool>(global4.b.c, true, any(vec4<bool>(global4.b.c, true, false, true)), false))));
    global3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - global3.a));
    let var_0 = _wgslsmith_mult_vec4_i32(~select(vec4<i32>(arg_2.a.x, global0.b.b.x, 4977i, 2643i) << (vec4<u32>(85336u, 57389u, 0u, 72087u) % vec4<u32>(32u)), ~vec4<i32>(2232i, -398i, -42807i, 74597i), any(vec4<bool>(global0.b.c, false, true, arg_3.b.c))), select(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_2.a, arg_0.a), arg_0.a), max(reverseBits(vec4<i32>(arg_0.a.x, arg_2.a.x, 2147483647i, 12338i)), vec4<i32>(arg_3.b.b.x, 36864i, arg_3.b.b.x, arg_2.a.x) ^ arg_2.a), global4.b.c & func_4(arg_0, arg_3).b.c)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-44852i, arg_0.a.x, arg_0.a.x, firstTrailingBit(~(-1i))), ~(-arg_0.a) >> (vec4<u32>(27012u, arg_3.b.a.x, 0u, 0u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(max(-740f, _wgslsmith_f_op_f32(-global3.a)))));
    let var_2 = arg_3;
    return Struct_1(countOneBits(~(vec4<i32>(global4.b.b.x, 0i, arg_2.a.x, var_2.b.b.x) << (~vec4<u32>(8666u, 1u, 26817u, 0u) % vec4<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<f32>, 21>();
    var var_0 = Struct_1(vec4<i32>(global4.b.b.x, _wgslsmith_add_i32(-12340i, global4.b.b.x), 1i, -_wgslsmith_mod_i32(-29674i, 71441i) >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global0.b.a.x, global4.a.x)) % 32u)));
    global1 = !(global3.a == 104f);
    var_0 = func_5(Struct_1(~var_0.a ^ ((vec4<i32>(global4.b.b.x, global0.b.b.x, global4.b.b.x, global0.b.b.x) & var_0.a) ^ var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-995f, global3.a, global3.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.a, global3.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, 1100f, global3.a))))))), Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global4.b.b.x, var_0.a.x, global0.b.b.x, 3376i), var_0.a) & max(vec4<i32>(global0.b.b.x, global0.b.b.x, global4.b.b.x, 44521i), var_0.a))), func_4(Struct_1(min(vec4<i32>(global0.b.b.x, 64125i, global0.b.b.x, var_0.a.x), max(vec4<i32>(1i, var_0.a.x, 1i, -1i), var_0.a))), Struct_3(func_3(global4.b, -437f, func_2(var_0.a.zww, Struct_2(global0.b.a, global0.b.b, false), 0u, 2147483647i), !vec4<bool>(false, global4.b.c, false, false)), Struct_2(global4.a.yxz, -vec2<i32>(global4.b.b.x, global4.b.b.x), any(vec3<bool>(global4.b.c, global0.b.c, global0.b.c))))));
    let var_1 = countOneBits(-vec3<i32>(-62746i, global4.b.b.x, -2147483647i));
    return func_5(func_5(func_5(func_5(func_5(Struct_1(var_0.a), vec4<f32>(904f, 1000f, 1883f, 1588f), Struct_1(var_0.a), Struct_3(global4.a, global0.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-359f, global3.a, 2619f, 227f), vec4<f32>(1000f, 176f, 1262f, global3.a))), func_5(Struct_1(vec4<i32>(34650i, -1i, -8128i, var_0.a.x)), vec4<f32>(-398f, -1000f, global3.a, global3.a), Struct_1(var_0.a), Struct_3(vec4<u32>(1u, 0u, global0.b.a.x, u_input.a), global0.b)), func_4(Struct_1(vec4<i32>(global0.b.b.x, 2147483647i, -10767i, var_0.a.x)), Struct_3(vec4<u32>(4294967295u, global4.b.a.x, 8531u, 1u), Struct_2(vec3<u32>(1u, u_input.b.x, u_input.a), global0.b.b, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1396f, -885f, global3.a, -1809f), vec4<f32>(global3.a, global3.a, 1325f, -877f), vec4<bool>(global0.b.c, false, false, global4.b.c))), vec4<f32>(global3.a, global3.a, 662f, 1434f)), Struct_1(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a)), Struct_3(vec4<u32>(global4.b.a.x, global0.a.x, 1u, global0.b.a.x), Struct_2(vec3<u32>(global4.a.x, global0.a.x, u_input.a), vec2<i32>(1i, -63885i), global4.b.c))), vec4<f32>(_wgslsmith_f_op_f32(step(1000f, -304f)), _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(-852f + -641f)), -283f, global3.a), Struct_1(-(vec4<i32>(global4.b.b.x, -11762i, global4.b.b.x, -2147483647i) & var_0.a)), Struct_3(global4.a, func_4(func_5(Struct_1(var_0.a), vec4<f32>(global3.a, global3.a, 695f, 1328f), Struct_1(var_0.a), Struct_3(vec4<u32>(4294967295u, global0.b.a.x, 32367u, global0.b.a.x), Struct_2(global0.b.a, vec2<i32>(global0.b.b.x, 12658i), global0.b.c))), Struct_3(global4.a, global0.b)).b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.a, 1000f, 1000f) - vec4<f32>(global3.a, global3.a, -1213f, global3.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(-global3.a))))), Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(-1i, 47534i, var_1.x, 1i), var_0.a), var_0.a) << (select(~vec4<u32>(4294967295u, global0.b.a.x, 30443u, global4.a.x), ~global4.a, vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), Struct_3(global0.a, Struct_2(~(~global0.a.zyw), -max(vec2<i32>(var_1.x, global0.b.b.x), var_1.yy), any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_4(func_5(Struct_1(-reverseBits(vec4<i32>(var_0.a.x, global4.b.b.x, 46618i, global4.b.b.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.a, global3.a, global3.a, global3.a), vec4<f32>(-1000f, 747f, -413f, -1000f))))), Struct_1(vec4<i32>(global4.b.b.x >> (4294967295u % 32u), global4.b.b.x << (1u % 32u), -2147483647i, abs(var_0.a.x))), func_4(func_5(func_5(var_0, vec4<f32>(global3.a, 848f, -413f, global3.a), var_0, Struct_3(vec4<u32>(42995u, 4294967295u, u_input.a, 45124u), Struct_2(vec3<u32>(global0.a.x, 4294967295u, 93376u), vec2<i32>(global4.b.b.x, -26434i), global4.b.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, 532f, global3.a, 384f)), var_0, Struct_3(global4.a, Struct_2(vec3<u32>(global4.b.a.x, 4294967295u, u_input.b.x), global0.b.b, false))), func_4(func_1(), func_4(var_0, Struct_3(vec4<u32>(global4.a.x, 34595u, 0u, 1u), global4.b))))), func_4(var_0, Struct_3(_wgslsmith_mod_vec4_u32(~global4.a, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, global0.a.x), global0.a)), Struct_2(firstLeadingBit(vec3<u32>(global0.a.x, 0u, global4.a.x)), reverseBits(global0.b.b), !global4.b.c)))).b;
    var var_2 = Struct_5(global3.a);
    let var_3 = firstLeadingBit(15885i);
    let var_4 = !(!vec4<bool>(!global0.b.c, false | all(vec4<bool>(global0.b.c, true, false, true)), true, var_0.a.x == _wgslsmith_mod_i32(0i, global0.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_u32(~72131u, reverseBits(30654u), global4.a.x)));
}

