struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 8491i;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: vec4<f32> = vec4<f32>(331f, -1415f, -549f, -1210f);

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = Struct_2(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, 1i, 1i), vec4<i32>(global3.a, -1i, 3016i, -50970i)), ~(-vec4<i32>(u_input.a, 0i, 38404i, global3.a)) | _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.a, 62700i, u_input.a, -1i) << (vec4<u32>(1u, u_input.b, u_input.b, global3.d) % vec4<u32>(32u)), vec4<i32>(arg_0.a.a, 48281i, -1i, arg_0.a.a))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.a, -2147483647i, u_input.a) >> (vec3<u32>(1u, 16131u, u_input.b) % vec3<u32>(32u)), min(vec3<i32>(global3.a, -2147483647i, -64092i), vec3<i32>(u_input.a, u_input.a, 2147483647i))), global1.xxw, global1.ww, 146147u, vec3<bool>(true && !global3.b.x, any(global1.xy), true)));
    let var_1 = vec3<u32>(u_input.b, 33057u, ~1u);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global2.x, -297f, true)), _wgslsmith_f_op_f32(-arg_2), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(779f - -1149f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1425f - global2.x) + _wgslsmith_div_f32(arg_1, arg_1)), _wgslsmith_f_op_f32(-arg_1)))));
    let var_2 = _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1021f), global2.x), global2.x)));
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, arg_2, var_2, arg_1) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2, 350f, -1840f, 1000f)))))))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(var_0.a, var_0.a, true), _wgslsmith_clamp_vec4_i32(~countOneBits(vec4<i32>(u_input.a, arg_0.a.a, -17812i, -14667i)), var_0.a ^ vec4<i32>(-28466i, -2147483647i, -2147483647i, arg_0.a.a), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.a, var_0.a), vec4<i32>(1i, 35252i, var_0.b.a, -5310i)))), select(var_0.a, vec4<i32>(_wgslsmith_add_i32(global3.a, 344i) | var_0.b.a, -2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, 1i), i32(-1i) * -1i), -firstTrailingBit(u_input.a)), vec4<bool>(!any(arg_0.a.c), any(vec4<bool>(var_0.b.b.x, true, true, var_0.b.c.x)) || true, all(vec4<bool>(true, global3.c.x, global1.x, global1.x)), countOneBits(-1i) >= arg_0.a.a)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_5(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global3.a, -5748i), vec3<i32>(0i, -1i, u_input.a)), vec3<i32>(u_input.a, global3.a, u_input.a)), vec3<i32>(~0i, -2147483647i, firstTrailingBit(global3.a))), global1.zzy, !select(!global3.e.zy, global3.e.zy, vec2<bool>(true, true)), 1u, select(!select(global1.wyz, global1.wwy, global3.c.x), vec3<bool>(true, 4294967295u <= u_input.b, select(true, false, global1.x)), _wgslsmith_f_op_f32(1314f * 386f) == _wgslsmith_f_op_f32(-877f - arg_0.x))), arg_0, Struct_3(Struct_1(~func_3(Struct_3(Struct_1(0i, vec3<bool>(false, global1.x, false), global3.b.zx, global3.d, vec3<bool>(global1.x, global3.b.x, global1.x))), -264f, 1059f), vec3<bool>(true, !global1.x, true), select(vec2<bool>(true, global3.c.x), vec2<bool>(global1.x, true), global1.yw), _wgslsmith_mult_u32(18904u, u_input.b), !select(global3.b, global3.b, global1.zzz))));
    global1 = vec4<bool>(true, all(vec2<bool>(true, !all(global1.wx))), any(select(vec4<bool>(true, var_0.a.b.x, global1.x, all(vec4<bool>(false, var_0.c.a.c.x, false, true))), select(select(vec4<bool>(var_0.c.a.b.x, false, false, true), vec4<bool>(var_0.a.e.x, var_0.c.a.e.x, var_0.c.a.e.x, false), var_0.a.b.x), !vec4<bool>(true, true, global3.c.x, global3.b.x), false), !all(global3.b))), abs(_wgslsmith_sub_i32(2147483647i | var_0.a.a, 2147483647i)) != -2147483647i);
    let var_1 = Struct_2(vec4<i32>(77469i, _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(-3698i, var_0.c.a.a), abs(u_input.a))), i32(-1i) * -var_0.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.a.a & global3.a, 0i), ~(~vec2<i32>(18682i, var_0.a.a)))), var_0.c.a);
    var var_2 = var_0.c;
    let var_3 = var_0.c;
    return select(select(var_1.b.e, !var_1.b.b, !vec3<bool>(true, false, all(vec4<bool>(var_2.a.c.x, true, var_0.c.a.e.x, global3.c.x)))), global1.zzy, true);
}

fn func_1() -> Struct_3 {
    global0 = ~0i;
    global0 = 39137i;
    global0 = u_input.a;
    let var_0 = Struct_1(2147483647i, vec3<bool>((_wgslsmith_clamp_u32(u_input.b, 2399u, u_input.b) >= 4294967295u) & false, global1.x, select(global1.x, !all(vec3<bool>(false, global3.c.x, false)), all(select(vec4<bool>(false, false, global3.c.x, global1.x), vec4<bool>(true, true, global3.c.x, global1.x), global3.e.x)))), !vec2<bool>(global3.e.x, global3.e.x), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(26014u, 4294967295u), vec2<u32>(global3.d, global3.d))) | firstTrailingBit(global3.d), select(global1.wwy, func_2(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x)), !func_2(global2.zy)));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-551f, global2.x)), global2.x));
    return Struct_3(Struct_1(-3965i ^ (~var_0.a | global3.a), vec3<bool>(true, var_0.d <= reverseBits(39027u), all(vec4<bool>(global1.x, global1.x, false, true))), !vec2<bool>(!var_0.c.x, global1.x), ~var_0.d, vec3<bool>(var_0.e.x, !var_0.b.x, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: f32) -> bool {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -141f, global2.x, -1201f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, -487f, arg_3, -173f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-354f, -399f, global2.x, 281f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(272f, 545f, -1013f, global2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, 760f, arg_3, arg_3))))));
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), global2.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(round(global2.x)))))));
    let var_1 = Struct_5(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.zw * vec2<f32>(-1592f, 835f)) - _wgslsmith_f_op_vec2_f32(global2.zx - vec2<f32>(380f, 730f))) - vec2<f32>(arg_3, 703f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))))))), func_1());
    global1 = !(!(!select(vec4<bool>(false, var_1.a.c.x, true, true), !vec4<bool>(arg_0, false, arg_0, global1.x), true)));
    let var_2 = reverseBits(_wgslsmith_mult_i32(u_input.a, -1i));
    return var_1.a.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-317f, 1846f, 113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x))) - vec4<f32>(1000f, -1153f, global2.x, global2.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f * _wgslsmith_f_op_f32(f32(-1f) * -1104f))), 522f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x - global2.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))))));
    var var_0 = 423f;
    let var_1 = u_input.a;
    var var_2 = !func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global3.d, 20773u, global3.d), vec4<u32>(u_input.b, 2638u, 45401u, global3.d)) < 19805u, func_1(), abs(vec2<u32>(0u, 0u)) << (vec2<u32>(1u << (u_input.b % 32u), 1u) % vec2<u32>(32u)), -1000f);
    global3 = Struct_1(-53753i, global1.yyw, !vec2<bool>(true, !global1.x), ~38010u, global1.xzx);
    var var_3 = func_1();
    let var_4 = Struct_4(vec2<bool>(true, true), all(!vec2<bool>(!var_3.a.e.x, true)), 56007i, vec4<u32>(1u, ~abs(_wgslsmith_mod_u32(17624u, global3.d)), _wgslsmith_mult_u32(_wgslsmith_add_u32(func_1().a.d, 1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 89461u), _wgslsmith_sub_u32(77036u, 60706u))), func_1().a.d), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1496f + global2.x), _wgslsmith_f_op_f32(275f * global2.x)), global2.x, global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -958f), global2.x))) * vec4<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), -670f, _wgslsmith_f_op_f32(global2.x - -1405f), _wgslsmith_f_op_f32(f32(-1f) * -113f))), ~_wgslsmith_div_vec3_u32(var_4.d.wxy, reverseBits(vec3<u32>(14916u, 39086u, u_input.b)) ^ abs(vec3<u32>(4294967295u, 87164u, global3.d))));
}

