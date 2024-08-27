struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: Struct_3 = Struct_3(Struct_1(true, vec2<i32>(-57597i, 84396i), vec4<i32>(i32(-2147483648), -38990i, -58579i, 1i)), vec2<f32>(-694f, -324f), vec3<i32>(0i, -27120i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<f32> {
    global3 = Struct_3(global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, 1030f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.b.x, global3.b.x), vec2<f32>(global3.b.x, 1564f)))))), select(global3.c, ~(~u_input.c.wzx), select(select(vec3<bool>(false, false, global0.x), !vec3<bool>(global2.c.a, global0.x, false), all(vec3<bool>(true, false, global2.a.a))), vec3<bool>(!global2.a.a, global3.a.a, true), !vec3<bool>(global0.x, global3.a.a, global0.x))), global2.c.c.yy);
    var var_0 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, countOneBits(u_input.b.x), ~(~4294967295u)), countOneBits(~_wgslsmith_div_vec3_u32(u_input.b, u_input.b))));
    var var_1 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2.b, global2.b, u_input.b.x), vec4<u32>(global2.b, u_input.b.x, u_input.b.x, var_0.x)) & max(countOneBits(vec4<u32>(var_0.x, 81537u, global2.b, u_input.b.x)), vec4<u32>(global2.b, var_0.x, 0u, u_input.b.x)), vec4<u32>(var_0.x, _wgslsmith_div_u32(1u, ~47803u), _wgslsmith_div_u32(581u, reverseBits(var_0.x)), firstLeadingBit(~16937u))));
    var var_2 = 3971i;
    global2 = Struct_2(global3.a, reverseBits(5307u), Struct_1(global0.x, _wgslsmith_mult_vec2_i32(u_input.c.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), global3.d)), countOneBits(abs(vec4<i32>(u_input.d.x, u_input.c.x, global3.d.x, 1i)))));
    return global3.b;
}

fn func_2() -> f32 {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(countOneBits(-2147483647i), -firstTrailingBit(global2.a.c.x));
    var var_1 = Struct_2(global3.a, global2.b, Struct_1(4294967295u < global2.b, ~vec2<i32>(_wgslsmith_sub_i32(global3.a.c.x, -48897i), 2147483647i), abs(vec4<i32>(33953i, _wgslsmith_mult_i32(u_input.a.x, 0i), ~global2.c.b.x, -1i))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, global3.b.x) + _wgslsmith_f_op_f32(trunc(global3.b.x))) > global3.b.x, global2.c.b, var_1.c.c | reverseBits(vec4<i32>(1i, 10014i, -38585i, 1i))), _wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_1.a.b.x, global2.a.b.x, max(global3.c.x, -2147483647i))), var_1.a.c.xyz), -vec2<i32>(-var_0, -_wgslsmith_mult_i32(-33397i, 0i)));
    var var_3 = Struct_2(Struct_1(1i > -global2.a.c.x, ~vec2<i32>(select(-2147483647i, u_input.c.x, global2.c.a), ~global3.d.x), min(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-357i, u_input.d.x, global3.d.x, -2147483647i), vec4<i32>(var_2.a.b.x, var_2.c.x, var_2.d.x, u_input.d.x)), abs(-1i), ~1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.b.x, var_2.a.c.x, 1i, 32833i) >> (vec4<u32>(global2.b, global2.b, u_input.b.x, 40314u) % vec4<u32>(32u)), global3.a.c))), abs(~60866u), Struct_1(var_1.c.a, _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(~var_0, reverseBits(var_1.c.c.x))), u_input.c));
    var_1 = Struct_2(global3.a, 894u, var_1.c);
    return var_2.b.x;
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    global3 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 17187u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b, 1u, 4294967295u), vec3<u32>(u_input.b.x, 1u, 81500u))) == ~(~1u), vec2<i32>(_wgslsmith_mult_i32(-31853i, ~global3.d.x), 30250i), vec4<i32>(-3663i >> (u_input.b.x % 32u), global3.a.b.x ^ _wgslsmith_mod_i32(global3.a.c.x, global3.c.x), min(global3.d.x, -u_input.c.x), global2.a.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.b)))))), vec3<i32>(firstTrailingBit(-32689i) ^ _wgslsmith_div_i32(-9432i, global2.a.b.x), _wgslsmith_add_i32(reverseBits(15505i), -6741i), 47344i) | max(vec3<i32>(39318i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 19902i), vec2<i32>(-1i, global3.d.x)), 0i), vec3<i32>(abs(global3.c.x), global3.d.x, -u_input.c.x)), global3.d);
    global1 = 1u;
    var var_0 = Struct_2(Struct_1(global0.x, global3.c.zy | global2.a.b, global3.a.c), ~abs(u_input.b.x), Struct_1(false, u_input.c.wy >> (firstLeadingBit(vec2<u32>(43705u, 26401u)) % vec2<u32>(32u)), vec4<i32>(global2.c.c.x, firstLeadingBit(global3.d.x), 1i, global3.c.x >> (693u % 32u)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, u_input.b.x, global2.b, 36346u), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x)), global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(61435u, global2.b, u_input.b.x), u_input.b), 9007u) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -417f), -195f, -1089f, global3.b.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1628f, global3.b.x, 880f) * vec4<f32>(-1000f, global3.b.x, arg_0.x, 444f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1471f, arg_0.x, global3.b.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, arg_0.x, 699f, 1000f)))))));
    var var_2 = Struct_3(global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(var_1.x * 1694f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, var_1.x))))), var_0.a.c.xzx, firstTrailingBit(firstLeadingBit(vec2<i32>(var_0.c.c.x, -global3.a.c.x))));
    return Struct_2(global2.c, ~(~0u), global2.c);
}

fn func_1() -> f32 {
    global2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), global3.b.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-830f, 977f), _wgslsmith_div_vec2_f32(global3.b, vec2<f32>(609f, -506f))))));
    var var_0 = _wgslsmith_f_op_f32(trunc(-486f));
    global3 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, -838f)))).c, global3.b, vec3<i32>(global2.a.b.x, -2147483647i << (~u_input.b.x % 32u), u_input.c.x | u_input.c.x), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(global2.a.c, vec4<i32>(57852i, global3.a.b.x, global3.c.x, ~(-22822i)))));
    let var_1 = Struct_2(Struct_1(any(global0.xy), global2.c.b, ~global2.c.c), ~u_input.b.x, global2.c);
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b + global3.b))));
    return _wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1446f * global3.b.x))), var_1.a.a));
}

fn func_5(arg_0: vec3<f32>) -> f32 {
    global0 = !select(!select(!vec3<bool>(global0.x, global3.a.a, global2.a.a), vec3<bool>(global0.x, false, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), !vec3<bool>(true, global2.a.a, global3.a.a), vec3<bool>(false, global3.a.a, false)), vec3<bool>(!global3.a.a, true, global3.a.a), false & all(vec4<bool>(false, false, false, global2.c.a))), !(!vec3<bool>(global3.a.a, global2.c.a, false)));
    let var_0 = vec3<u32>(~u_input.b.x, 44973u, 4294967295u);
    global1 = var_0.x;
    let var_1 = global2.a;
    global0 = vec3<bool>(var_1.a, var_1.a, any(!select(select(vec4<bool>(global0.x, global0.x, false, global2.a.a), vec4<bool>(false, global3.a.a, true, global0.x), vec4<bool>(true, false, global0.x, var_1.a)), !vec4<bool>(global3.a.a, false, global3.a.a, true), !vec4<bool>(global3.a.a, false, var_1.a, global2.c.a))));
    return _wgslsmith_f_op_f32(1469f * global3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!global0.x, u_input.c.yw, ~u_input.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - -453f))) * _wgslsmith_f_op_f32(abs(806f)));
    var_1 = _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1657f, global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f))))));
    var var_2 = reverseBits(u_input.b.x);
    let var_3 = vec4<u32>(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1492f, -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global3.b, global3.b, vec2<bool>(false, true)))))).b, ~32790u, global2.b, 70014u);
    let var_4 = Struct_2(var_0, u_input.b.x, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3.b))) * global3.b)).c);
    var_2 = var_4.b;
    var var_5 = -global3.d;
    global1 = ~global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1220f, global3.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.b.x, global3.b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b.x, global3.b.x), global3.b, global0.x)), true)))).c.b.x);
}

