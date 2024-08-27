struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 45444u;

var<private> global1: vec3<f32> = vec3<f32>(1000f, 521f, 893f);

var<private> global2: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -660f, global1.x, global1.x) * vec4<f32>(global1.x, 1382f, global1.x, -572f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, 958f, global1.x, 328f), vec4<f32>(global1.x, 916f, global1.x, 1336f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, -779f, global1.x), vec4<f32>(global1.x, global1.x, 233f, 360f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -245f, 957f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1560f, 818f, global1.x, -369f), vec4<f32>(global1.x, global1.x, 1509f, -1872f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -435f, _wgslsmith_f_op_f32(f32(-1f) * -2613f), 1352f)), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1817f + global1.x), _wgslsmith_f_op_f32(1130f + global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-555f - 1537f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1312f))), 1420f)));
    let var_1 = _wgslsmith_div_f32(-283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-544f + 115f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 385f, var_1, 725f) - vec4<f32>(var_0.x, var_1, -1000f, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1423f, global1.x, var_1, -915f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(163f, 1992f, 563f, -1012f) - vec4<f32>(var_0.x, var_0.x, -367f, var_1)))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + var_0.x) - 676f), 581f, var_0.x))));
    let var_2 = Struct_1(global1.zx, vec3<bool>(1u != (~u_input.b ^ firstLeadingBit(u_input.e)), true, true));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_1, -280f, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1009f, -545f, -780f)))))));
    return 1i;
}

fn func_2() -> bool {
    let var_0 = Struct_2(u_input.a, vec4<i32>(global2.b.x, reverseBits(-1i), func_3(~u_input.c.yz, -global2.b.zww) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.e), max(vec3<u32>(36543u, u_input.c.x, u_input.d), vec3<u32>(u_input.e, u_input.c.x, 1u))) % 32u), firstLeadingBit(func_3(firstLeadingBit(u_input.c.xz), _wgslsmith_add_vec3_i32(vec3<i32>(-22452i, u_input.a, 19902i), global2.b.wzz)))), _wgslsmith_dot_vec2_i32(max(abs(global2.b.xy) & (global2.b.wx >> (vec2<u32>(37924u, 1u) % vec2<u32>(32u))), global2.b.yx), _wgslsmith_add_vec2_i32(~(~vec2<i32>(global2.b.x, 33673i)), max(global2.b.wx, global2.b.yy))));
    return !(!(!all(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    var var_0 = (firstLeadingBit(abs(0i)) | -arg_3) >> (1u % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.e.a.x, arg_0.e.a.x, arg_2.e.a.x, -1320f), vec4<f32>(arg_2.e.a.x, -1552f, arg_0.e.a.x, global1.x)))), vec4<f32>(arg_2.e.a.x, _wgslsmith_f_op_f32(-arg_0.e.a.x), -486f, _wgslsmith_f_op_f32(-arg_2.e.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.e.a.x, arg_2.e.a.x, global1.x, -827f), vec4<f32>(1912f, -1164f, 904f, global1.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.a.x, 1354f, arg_2.e.a.x, 742f) - vec4<f32>(1020f, arg_0.e.a.x, 1448f, arg_0.e.a.x))))), arg_2.b));
    let var_2 = select(_wgslsmith_add_vec3_u32(~u_input.c, countOneBits(vec3<u32>(firstTrailingBit(u_input.d), _wgslsmith_mult_u32(u_input.b, u_input.b), firstTrailingBit(u_input.b)))), u_input.c, arg_0.b.x);
    return Struct_2(-(~(-18464i)), firstTrailingBit(arg_2.c.b << ((~vec4<u32>(var_2.x, 1u, u_input.b, 4294967295u) << (_wgslsmith_div_vec4_u32(vec4<u32>(34625u, u_input.b, 1u, u_input.b), vec4<u32>(1u, 1u, u_input.e, 18107u)) % vec4<u32>(32u))) % vec4<u32>(32u))), func_3(~abs(~vec2<u32>(48892u, 14912u)), global2.b.zyx));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1691f)))) * -784f), _wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = func_4(Struct_3(true, !vec4<bool>(global1.x > 601f, true, func_2(), false), Struct_2(u_input.a >> (u_input.b % 32u), vec4<i32>(-4585i, 31158i, firstLeadingBit(global2.b.x), 1i), firstLeadingBit(-29121i) | _wgslsmith_dot_vec3_i32(global2.b.xxz, global2.b.wyz)), -_wgslsmith_div_i32(0i, u_input.a), Struct_1(vec2<f32>(-1131f, global1.x), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true))), true, Struct_3(!(global2.a <= u_input.a), vec4<bool>(false, all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), true, true), Struct_2(u_input.a, global2.b, 6700i), 37589i, Struct_1(global1.xx, vec3<bool>(func_2(), true, true))), -u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -1742f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(global1.yy, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(625f)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(-357f, 470f)))))), select(!vec3<bool>(true, 48902i > global2.a, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    let var_4 = Struct_2(-(~max(var_1.a << (4294967295u % 32u), 0i)), select(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(var_1.c, u_input.a)), 61890i, _wgslsmith_clamp_i32(~var_1.a, u_input.a, _wgslsmith_add_i32(-1492i, -4430i)), -1i), global2.b, var_3.b.x), _wgslsmith_add_i32(1i, func_4(Struct_3(func_2(), !vec4<bool>(false, true, var_3.b.x, var_3.b.x), Struct_2(-2147483647i, global2.b, 0i), var_1.b.x, Struct_1(var_3.a, vec3<bool>(false, true, var_3.b.x))), false && var_3.b.x, Struct_3(var_3.b.x || var_3.b.x, vec4<bool>(var_3.b.x, var_3.b.x, true, var_3.b.x), func_4(Struct_3(true, vec4<bool>(false, true, false, var_3.b.x), Struct_2(-16558i, vec4<i32>(48877i, u_input.a, var_1.a, global2.c), 41766i), -18246i, Struct_1(vec2<f32>(-567f, global1.x), vec3<bool>(false, var_3.b.x, var_3.b.x))), var_3.b.x, Struct_3(false, vec4<bool>(var_3.b.x, true, true, true), Struct_2(1i, vec4<i32>(-37256i, 0i, global2.a, -50259i), 35921i), 2147483647i, Struct_1(vec2<f32>(-235f, 640f), var_3.b)), -49076i), -26294i, var_3), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -17206i, u_input.a), var_1.b.yyx)).a));
    return Struct_1(global1.yy, var_3.b);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = !arg_1.b;
    var var_1 = func_1();
    let var_2 = u_input.c.x;
    global0 = u_input.e;
    var var_3 = var_2;
    return Struct_3(var_1.b.x | func_2(), vec4<bool>(var_1.b.x | all(arg_1.b.zx), arg_1.b.x || (true | !arg_1.b.x), (min(u_input.a, -3263i) | ~(-2147483647i)) >= 45186i, false), func_4(Struct_3(!(var_0.x == var_1.b.x), !(!vec4<bool>(var_1.b.x, true, true, var_0.x)), Struct_2(-1561i >> (var_2 % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 36866i, -3688i), global2.b), select(2147483647i, arg_0.x, false)), 1i, func_1()), all(select(!vec4<bool>(arg_1.b.x, false, true, var_0.x), !vec4<bool>(var_0.x, arg_1.b.x, false, arg_1.b.x), !vec4<bool>(false, var_1.b.x, arg_1.b.x, false))), Struct_3(all(!vec4<bool>(false, var_1.b.x, false, false)), !(!vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x)), Struct_2(~global2.a, global2.b, -global2.a), global2.a, Struct_1(var_1.a, vec3<bool>(false, false, true))), ~(~(~arg_0.x))), _wgslsmith_add_i32(func_3(vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 28111u, 0u), vec4<u32>(var_2, 2312u, 1u, 4294967295u))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, global2.c, 0i), _wgslsmith_add_vec3_i32(global2.b.yzw, vec3<i32>(u_input.a, -17501i, -5109i)))), firstLeadingBit(~0i >> (1u % 32u))), arg_1);
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_3(true, vec4<bool>(true, false, true, true), Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(func_3(u_input.c.zx, arg_1.c.b.wwy), global2.b.x), arg_1.c.c), vec4<i32>(_wgslsmith_mod_i32(abs(u_input.a), 0i), func_3(~vec2<u32>(0u, 33597u), func_4(Struct_3(arg_1.a, arg_1.b, arg_1.c, -1i, arg_1.e), arg_1.b.x, Struct_3(arg_1.a, vec4<bool>(arg_1.b.x, arg_1.e.b.x, false, arg_1.b.x), arg_1.c, 2147483647i, Struct_1(global1.zy, vec3<bool>(false, arg_1.a, true))), global2.a).b.xxz), -26430i, min(-32238i, u_input.a) ^ u_input.a), -2147483647i), -2147483647i, func_1());
    let var_1 = Struct_3(arg_1.b.x, !vec4<bool>(any(select(arg_1.b.yx, vec2<bool>(true, arg_1.e.b.x), arg_1.e.b.x)), -2147483647i >= firstTrailingBit(52856i), _wgslsmith_f_op_f32(arg_0 + arg_0) != _wgslsmith_f_op_f32(529f - 834f), true), func_4(Struct_3(var_0.a, !(!vec4<bool>(var_0.a, false, false, var_0.e.b.x)), Struct_2(_wgslsmith_div_i32(var_0.c.b.x, arg_1.c.b.x), global2.b, max(-32420i, 0i)), var_0.c.a, arg_1.e), arg_1.a, func_5(-var_0.c.b.yw, var_0.e), global2.a), abs(-21296i), arg_1.e);
    let var_2 = firstTrailingBit(2147483647i) ^ u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), -1000f, _wgslsmith_f_op_f32(min(arg_0, var_0.e.a.x))))) + vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f + 863f) + _wgslsmith_f_op_f32(arg_1.e.a.x + var_1.e.a.x)), _wgslsmith_f_op_f32(global1.x - -217f)), _wgslsmith_f_op_f32(abs(-1908f)), _wgslsmith_f_op_f32(f32(-1f) * -1038f)));
    let var_4 = func_5(-func_4(func_5(vec2<i32>(var_0.d, var_0.c.b.x), func_5(var_0.c.b.yw, Struct_1(var_1.e.a, vec3<bool>(false, false, true))).e), true, var_1, 1i).b.wz, func_1());
    return 39143i << (u_input.d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(-(~(0i ^ global2.a)) < func_6(_wgslsmith_f_op_f32(f32(-1f) * -1883f), func_5(firstTrailingBit(vec2<i32>(u_input.a, 24793i)), func_1())));
    var var_1 = func_5(global2.b.zy, Struct_1(_wgslsmith_f_op_vec2_f32(floor(global1.yz)), select(select(!vec3<bool>(var_0, true, false), func_5(vec2<i32>(global2.a, global2.c), Struct_1(global1.xy, vec3<bool>(false, var_0, true))).b.wzz, vec3<bool>(true, false, var_0)), !select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, true)), func_1().b)));
    var var_2 = 8530i;
    var var_3 = u_input.c;
    var var_4 = Struct_3(false, vec4<bool>(var_0, !func_5(var_1.c.b.wx, var_1.e).b.x, !func_5(var_1.c.b.xx, var_1.e).e.b.x, var_0), Struct_2(var_1.d << (~u_input.d % 32u), min(vec4<i32>(29163i, -2282i, 1i, global2.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.a, global2.b.x, 21041i, -2147483647i), var_1.c.b, vec4<i32>(-77091i, var_1.d, global2.c, 0i))) | reverseBits(global2.b ^ vec4<i32>(var_1.c.c, global2.b.x, u_input.a, var_1.d)), ~2147483647i), _wgslsmith_mult_i32(-9619i, _wgslsmith_div_i32(-7073i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a, u_input.a, u_input.a), var_1.c.b.wwz)) >> (_wgslsmith_mod_u32(~20129u, reverseBits(4294967295u)) % 32u)), var_1.e);
    var var_5 = -20375i;
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.e.a.x, var_4.e.a.x));
    global2 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(var_3.x) >> (~var_3.x % 32u), select(1u, select(0u, reverseBits(17702u), var_4.a || var_1.e.b.x), true)), ~_wgslsmith_mod_vec2_u32(abs(u_input.c.yy >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), var_3.zz), -1400f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_1.e.a.x), _wgslsmith_f_op_f32(313f + 212f), _wgslsmith_f_op_f32(-var_1.e.a.x), -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-643f, -702f, 712f, -515f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1064f, -1000f, var_4.e.a.x, -1113f))))) * vec4<f32>(_wgslsmith_f_op_f32(-824f + -2708f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_6 * var_1.e.a.x))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -_wgslsmith_mod_i32(global2.a, 11364i));
}

