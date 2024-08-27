struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(0i);
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_1 = vec4<bool>(true | any(vec3<bool>(true, true, true)), true, !any(vec3<bool>(all(vec2<bool>(true, true)), true, true)), false);
    let var_2 = 2147483647i;
    return true;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = !(!(u_input.b.x >= u_input.a));
    var_0 = !(false & !(false && func_3()));
    let var_1 = Struct_1(min(vec3<i32>(~(~(-50711i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(-7792i, -17088i, 1i)), reverseBits(~2147483647i)), abs(~(-vec3<i32>(1i, 2147483647i, 27355i)))), !all(!vec4<bool>(false, arg_2, true, true)), vec4<f32>(-1493f, -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1611f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -413f))))));
    var var_2 = var_1.a ^ select(var_1.a, vec3<i32>(countOneBits(firstLeadingBit(-2228i)), i32(-1i) * -2147483647i, var_1.a.x), vec3<bool>((arg_2 && arg_2) == any(vec3<bool>(false, true, arg_2)), true | !var_1.b, 0u != (arg_0 & 33324u)));
    var var_3 = !select(false, arg_2, any(select(!vec2<bool>(false, var_1.b), vec2<bool>(arg_2, false), !vec2<bool>(arg_2, false))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), 177f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    global0 = array<Struct_2, 31>();
    let var_0 = global0[_wgslsmith_index_u32(0u, 31u)];
    var var_1 = Struct_2(var_0.a, Struct_1(vec3<i32>(-20381i, 0i, _wgslsmith_mult_i32(arg_3.x, ~var_0.e)), arg_0, var_0.a.c), firstTrailingBit(~16264u), arg_1, _wgslsmith_mult_i32(_wgslsmith_add_i32(~arg_3.x, 1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.a.x, -4969i, arg_3.x), 1i)) << ((select(var_0.c, var_0.c, any(vec4<bool>(arg_1.b, true, arg_0, arg_1.b))) >> (1u % 32u)) % 32u));
    var_1 = Struct_2(var_1.b, Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.a.x & 1i, -var_0.a.a.x, arg_3.x), arg_3, ~vec3<i32>(-1i, arg_3.x, 27929i)), var_0.b.b | arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), _wgslsmith_f_op_f32(sign(-1304f)), var_0.b.c.x, _wgslsmith_f_op_f32(trunc(arg_1.c.x))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(var_1.b.c, var_0.a.c)), _wgslsmith_f_op_vec4_f32(ceil(var_0.b.c)))))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_0.c, var_1.c, var_0.c, var_0.c), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, u_input.a, 32681u, var_0.c)), !vec4<bool>(var_0.d.b, arg_0, var_1.d.b, true)), u_input.b), Struct_1(_wgslsmith_clamp_vec3_i32(var_0.d.a, -vec3<i32>(-8638i, arg_3.x, arg_3.x), countOneBits(vec3<i32>(-1i, -30237i, arg_3.x) & var_0.d.a)), var_0.b.b != false, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1358f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.c.x, -829f, var_0.b.b)), arg_2), 1613f)), abs(reverseBits(2147483647i)));
    global0 = array<Struct_2, 31>();
    return arg_3.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, ~9945i, func_4(any(vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-2147483647i, -1i, -12699i), true, vec4<f32>(130f, arg_1, arg_1, -1452f)), _wgslsmith_f_op_f32(func_2(4294967295u, 1u, false)), -vec3<i32>(-40475i, 20643i, 2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i))), !func_3() == !(!any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-580f)), arg_1, 530f, _wgslsmith_f_op_f32(f32(-1f) * -1450f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(min(-1070f, arg_1))), arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -421f)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)];
    let var_2 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(max(firstTrailingBit(2147483647i), var_0.a.x), var_0.a.x), (i32(-1i) * -37102i) & var_1.a.a.x));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(countOneBits(~abs(~130190u))), 31u)];
    var var_4 = var_3.a.c.xyy;
    return Struct_1(var_1.d.a, true, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(392f, var_4.x), _wgslsmith_f_op_f32(-var_3.a.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.c.x), 1206f, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0.c.x, -1146f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.c.x + -270f) - 527f), true))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = Struct_2(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a | u_input.b.x, 4294967295u, 14690u, 74625u), vec4<u32>(~4294967295u, countOneBits(1u), firstTrailingBit(u_input.b.x), u_input.b.x)), 125f), Struct_1(vec3<i32>(arg_1.a.x, -arg_0, arg_2), 0i <= -(2147483647i >> (u_input.a % 32u)), _wgslsmith_f_op_vec4_f32(-arg_1.c)), u_input.b.x, arg_1, 63613i << (select(4294967295u, _wgslsmith_sub_u32(u_input.c, 0u), all(vec4<bool>(arg_1.b, arg_1.b, false, true))) % 32u));
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_1 = select(!select(select(select(vec4<bool>(false, var_0.d.b, var_0.d.b, arg_1.b), vec4<bool>(var_0.a.b, false, arg_1.b, false), false), vec4<bool>(arg_1.b, false, arg_1.b, var_0.b.b), true), select(vec4<bool>(false, var_0.a.b, false, var_0.d.b), !vec4<bool>(var_0.b.b, arg_1.b, arg_1.b, arg_1.b), false), select(!vec4<bool>(var_0.d.b, true, var_0.b.b, arg_1.b), !vec4<bool>(arg_1.b, arg_1.b, arg_1.b, true), false)), !vec4<bool>(true, arg_1.b, arg_1.b, select(select(true, var_0.d.b, arg_1.b), any(vec3<bool>(arg_1.b, false, var_0.d.b)), !var_0.d.b)), any(!(!vec4<bool>(true, arg_1.b, arg_1.b, false))) || var_0.a.b);
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1702f - 337f))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-903f + var_2.c.x), -667f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(select(select(vec3<i32>(2147483647i, -27674i, 2147483647i), vec3<i32>(-23050i, 1i, 2147483647i), false), abs(vec3<i32>(14061i, -2147483647i, -15028i)), vec3<bool>(true, true, true)), vec3<i32>(1i, 1i, 1i)), vec3<i32>(firstTrailingBit(19696i) >> ((u_input.c | u_input.a) % 32u), (i32(-1i) * -1i) >> (u_input.b.x % 32u), 1i)), func_5(36121i << (((u_input.b.x | 1u) >> (~u_input.b.x % 32u)) % 32u), func_1(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(57523u, u_input.b.x, 4294967295u, u_input.a), vec4<u32>(12502u, 0u, 0u, 1u)), u_input.a), _wgslsmith_div_f32(-1092f, _wgslsmith_f_op_f32(f32(-1f) * -249f))), ~(-1i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(807f, 478f, 573f, -1685f)) - vec4<f32>(-1458f, -1000f, 505f, 2306f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(3386f, 474f, -2058f, 182f), vec4<f32>(539f, 1291f, 1000f, 213f), any(vec2<bool>(false, false)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1516f), _wgslsmith_f_op_f32(ceil(-297f))), _wgslsmith_f_op_f32(max(-124f, -305f)), -459f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-871f + 1603f), _wgslsmith_f_op_f32(-306f - 185f))))));
    var var_1 = 8455i;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-294f)), 418f, _wgslsmith_f_op_f32(var_0.c.x * 1612f), -1989f) * var_0.c);
    global0 = array<Struct_2, 31>();
    var_1 = var_0.a.x;
    global0 = array<Struct_2, 31>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, _wgslsmith_clamp_i32(2147483647i, -28214i, 70391i), _wgslsmith_mod_i32(-34327i, var_0.a.x))), -1000f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-305f - -284f), _wgslsmith_f_op_f32(func_2(u_input.a, 5867u, var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, u_input.c | u_input.b.x, select(var_0.b, true, var_0.b))), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(sign(var_0.c.x))), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), _wgslsmith_f_op_f32(1022f - -506f))), Struct_1(vec3<i32>(var_0.a.x, _wgslsmith_mult_i32(i32(-1i) * -1i, firstTrailingBit(var_0.a.x)), -1i), all(vec2<bool>(var_0.b, all(vec2<bool>(false, var_0.b)))), var_2), 22408u, var_0, -firstTrailingBit(~var_0.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, func_1(u_input.b, -2544f).a.x, 2147483647i, ~var_0.a.x), ~(-vec4<i32>(1i, var_0.a.x, var_0.a.x, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(min(0u, 60942u) >> (_wgslsmith_mod_u32(u_input.b.x, 24183u) % 32u), ~countOneBits(u_input.b.x)), 37995u, abs(u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.c.xyx * var_2.yyw)))) - var_2.yxx));
}

