struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-298f, Struct_2(vec4<bool>(true, true, true, true), 52304u, vec2<i32>(50698i, -10930i)), vec4<u32>(0u, 46054u, 54626u, 0u), vec3<bool>(true, false, false), Struct_2(vec4<bool>(true, true, true, false), 18643u, vec2<i32>(0i, i32(-2147483648))));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    return global1.c;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<bool>) -> i32 {
    let var_0 = select(vec3<bool>(any(!(!vec2<bool>(arg_3.x, false))), true, arg_3.x), vec3<bool>(global0.d.x & (_wgslsmith_f_op_f32(global0.a * global0.a) == 426f), select(global0.d.x, !global0.b.a.x, true), _wgslsmith_mult_u32(arg_0.a.x, global0.e.b) != global0.c.x), vec3<bool>(((global1.b << (22252u % 32u)) <= ~u_input.c.x) && true, false, true));
    var var_1 = min(vec2<u32>(arg_0.a.x, 11294u & reverseBits(~global1.a.x)), u_input.d);
    var_1 = global0.c.zw;
    global0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -435f)) + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(trunc(477f))), Struct_2(vec4<bool>(any(vec2<bool>(true, false)), select(true, false, true), (arg_1 | arg_1) && select(var_0.x, false, global0.e.a.x), all(vec4<bool>(global0.b.a.x, true, false, false))), ~min(abs(4294967295u), 1u), select(-(~u_input.c), max(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.b.wz, u_input.c), -vec2<i32>(-23765i, arg_2)), !global0.e.a.x)), select(reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(2195u, 4294967295u, 11126u, 47057u), _wgslsmith_sub_vec4_u32(global1.a, global1.a))), global0.c, arg_1), select(var_0, vec3<bool>(any(vec2<bool>(false, true)), arg_3.x, 1f <= global0.a), true), global0.b);
    let var_2 = Struct_2(vec4<bool>(all(vec2<bool>(true, arg_3.x)), !(!arg_3.x), false, !all(select(vec3<bool>(false, var_0.x, arg_1), vec3<bool>(false, arg_1, global0.e.a.x), true))), ~1u, u_input.b.zx);
    return firstLeadingBit(30159i);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = global0.d;
    var var_1 = Struct_1(~vec4<u32>(~(global1.a.x << (global0.c.x % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(39772u, 0u), vec2<u32>(0u, 41739u)), (global0.c.x << (1u % 32u)) | (9462u >> (global0.e.b % 32u)), firstTrailingBit(_wgslsmith_div_u32(6157u, 1u))), _wgslsmith_mod_i32(func_2(), global1.c), ~(-abs(1i)));
    let var_2 = arg_0.x;
    var var_3 = global0.e;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1066f)))), -970f) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.a, 204f), vec2<f32>(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(-1080f + global0.a)))));
    return Struct_1(global0.c, var_2, -_wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 52970u, u_input.a), 0i, -1i), var_0.x, 0i, var_3.a.xxz), _wgslsmith_sub_i32(-4662i, 0i)), vec2<i32>(-var_2, global0.e.c.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    global1 = func_1(vec4<i32>(43565i, -min(~10170i, u_input.b.x & -2147483647i), _wgslsmith_add_i32(1i & arg_1.c, arg_1.c), _wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global1.b), u_input.c), arg_2.c, true), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-53551i, global1.b), arg_2.c), arg_2.c))));
    let var_0 = global0.b;
    let var_1 = func_1(u_input.b).a.x;
    global0 = Struct_3(-1078f, Struct_2(global0.b.a, var_1, _wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, global0.b.c.x), vec2<i32>(-2147483647i, global0.e.c.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_1.c), u_input.b.zz))), global0.c, !global0.b.a.wxx, global0.e);
    global1 = Struct_1(vec4<u32>(abs(var_1), ~abs(4294967295u), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_1.a.wzy, global1.a.wzx)), _wgslsmith_clamp_u32(26565u, 0u, 1u) | 0u, ~u_input.a << (4294967295u % 32u)), 1u), abs(firstLeadingBit(~55484i)), ~2147483647i);
    return Struct_3(_wgslsmith_f_op_f32(-global0.a), Struct_2(select(select(vec4<bool>(false, true, false, false), !vec4<bool>(var_0.a.x, true, arg_0.x, false), !vec4<bool>(arg_0.x, var_0.a.x, arg_2.a.x, true)), select(vec4<bool>(arg_0.x, true, arg_0.x, var_0.a.x), !vec4<bool>(arg_2.a.x, var_0.a.x, false, var_0.a.x), true), global0.a <= -487f), var_1, vec2<i32>(abs(~25143i), -(~39644i))), abs(~(~vec4<u32>(60307u, 4294967295u, global1.a.x, 287u))), !vec3<bool>(var_0.a.x, reverseBits(arg_2.c.x) == arg_2.c.x, global0.d.x), arg_2);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global0 = func_4(select(vec2<bool>(u_input.d.x != ~arg_2.c.x, !(!global0.e.a.x)), select(select(!arg_2.d.xx, vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, arg_2.b.a.x == arg_2.e.a.x), vec2<bool>(true, true)), func_4(global0.b.a.zz, arg_1, func_4(func_4(global0.e.a.wy, arg_1, global0.e).d.zy, Struct_1(vec4<u32>(u_input.d.x, 73904u, global0.b.b, arg_2.e.b), -1i, -2147483647i), func_4(global0.e.a.xx, arg_1, Struct_2(arg_2.b.a, 0u, vec2<i32>(-1i, arg_1.c))).e).b).e.a.xx), arg_1, Struct_2(vec4<bool>((-12002i << (global0.b.b % 32u)) < firstLeadingBit(arg_2.b.c.x), !(!global0.b.a.x), false, true & (arg_2.d.x && false)), countOneBits(4294967295u >> (1u % 32u)), vec2<i32>(-2147483647i, abs(47396i) & u_input.b.x)));
    var var_0 = 413f;
    global1 = func_1(u_input.b);
    let var_1 = !(arg_2.e.a.x || !all(select(vec2<bool>(false, arg_2.e.a.x), vec2<bool>(true, false), arg_2.b.a.x)));
    var var_2 = u_input.c.x;
    return Struct_1(global1.a, _wgslsmith_sub_i32(func_2(), -38022i), -11335i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 32558i;
    let var_1 = func_5(u_input.b.wxw << (global1.a.zzw % vec3<u32>(32u)), Struct_1(firstLeadingBit(reverseBits(global0.c)), i32(-1i) * -34105i, _wgslsmith_div_i32(-1i, -28431i)), func_4(!global0.b.a.yw, func_1(_wgslsmith_mult_vec4_i32(u_input.b, -u_input.b)), Struct_2(vec4<bool>(true, !global0.e.a.x, !global0.e.a.x, global0.b.a.x), 47855u, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1.c), vec2<i32>(u_input.c.x, 9578i)) | u_input.b.xz)), _wgslsmith_f_op_f32(799f * 1312f));
    var var_2 = Struct_3(global0.a, func_4(vec2<bool>(global0.b.a.x, true), var_1, Struct_2(!global0.e.a, abs(u_input.d.x) >> (global0.e.b % 32u), countOneBits(vec2<i32>(-2147483647i, var_1.b) << (vec2<u32>(u_input.a, 11335u) % vec2<u32>(32u))))).b, vec4<u32>(func_1(select(vec4<i32>(u_input.b.x, var_1.b, -2147483647i, global0.e.c.x), vec4<i32>(1i, -39007i, global0.b.c.x, 2147483647i), global0.d.x || false)).a.x, u_input.d.x, global1.a.x, func_4(global0.e.a.xw, func_5(u_input.b.xyx, var_1, Struct_3(-555f, Struct_2(global0.e.a, u_input.a, vec2<i32>(global0.b.c.x, u_input.b.x)), global1.a, vec3<bool>(true, false, false), Struct_2(vec4<bool>(global0.e.a.x, global0.e.a.x, global0.e.a.x, true), 1u, vec2<i32>(-2147483647i, global1.b))), _wgslsmith_f_op_f32(-global0.a)), global0.e).c.x), global0.d, func_4(!select(vec2<bool>(true, false), vec2<bool>(global0.e.a.x, global0.d.x), true), Struct_1(var_1.a, global0.b.c.x, firstTrailingBit(global0.b.c.x)), Struct_2(vec4<bool>(false, true, global0.b.a.x, false), min(4294967295u, 0u), u_input.c)).e);
    global1 = func_1(u_input.b);
    let var_3 = vec4<i32>(-1i) * -(~u_input.b);
    var var_4 = vec3<bool>(!(!(!select(false, global0.d.x, false))), select(all(vec3<bool>(false, true, true)), false, false), var_2.e.a.x);
    global1 = func_5(-(~vec3<i32>(1i, global1.c, 45501i)) | _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(7800i, var_2.e.c.x, u_input.b.x), min(vec3<i32>(0i, global0.b.c.x, -23015i), vec3<i32>(18392i, u_input.b.x, -2147483647i))), _wgslsmith_mod_vec3_i32(abs(u_input.b.zxy), firstTrailingBit(vec3<i32>(var_2.e.c.x, 2147483647i, 0i))), u_input.b.zxz), var_1, func_4(!var_4.yz, Struct_1(vec4<u32>(countOneBits(global0.c.x), ~global1.a.x, ~global1.a.x, u_input.a), reverseBits(~global1.c), var_1.c), Struct_2(func_4(var_2.e.a.zz, func_1(vec4<i32>(global1.b, global1.c, -3822i, var_2.e.c.x)), Struct_2(vec4<bool>(var_4.x, true, var_4.x, var_4.x), 4294967295u, var_3.xy)).e.a, ~global0.e.b, var_2.e.c)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yxw, -reverseBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, 19548i), var_3.zxw)), max(vec2<i32>(reverseBits(-44853i), var_2.e.c.x), max(-_wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, var_1.b), vec2<i32>(global1.b, u_input.c.x)), reverseBits(firstLeadingBit(vec2<i32>(u_input.c.x, 15417i))))));
}

