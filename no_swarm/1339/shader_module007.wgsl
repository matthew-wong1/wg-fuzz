struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(1i, -1i), vec2<i32>(112400i, 50368i), vec2<i32>(-15237i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(74463i, -22167i));

var<private> global1: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(arg_3.a, i32(-1i) * -arg_0.x, -max(_wgslsmith_div_i32(-arg_0.x, max(-2391i, arg_0.x)), arg_3.c));
    global0 = array<vec2<i32>, 6>();
    var_0 = Struct_1(true, _wgslsmith_mod_i32(arg_1, arg_0.x), firstLeadingBit(_wgslsmith_sub_i32(-68785i, countOneBits(-1i))));
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    return arg_0.zyz ^ (arg_0.xzw | vec3<i32>(var_0.b, arg_0.x, _wgslsmith_add_i32(abs(arg_1), arg_3.c)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1.zyz, select(func_3(vec4<i32>(9205i, arg_1.x, arg_1.x, -6660i), 20056i, -1369f, Struct_1(false, arg_1.x, arg_1.x)), arg_1.xyz, vec3<bool>(true, true, true))), arg_1.x), -_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.x & 0i, arg_1.x), -9260i));
    var var_1 = arg_1.xxz;
    var_1 = abs(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, arg_1.x, ~arg_1.x), arg_1.xxy ^ -vec3<i32>(var_0.b, var_1.x, 0i), !var_0.a), -firstLeadingBit(arg_1.yyw)));
    var var_2 = Struct_1(!(!(any(vec3<bool>(var_0.a, true, false)) && true)), min(-24487i, ~_wgslsmith_dot_vec2_i32(var_1.yz, min(arg_1.zz, vec2<i32>(var_0.c, arg_1.x)))), -1i);
    var var_3 = Struct_1(true != all(select(vec3<bool>(var_0.a, false, var_2.a), select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(var_2.a, false, var_2.a), true), !vec3<bool>(true, var_0.a, var_0.a))), _wgslsmith_mod_i32(abs(firstLeadingBit(~(-2533i))), ~_wgslsmith_add_i32(-30239i, -var_1.x)), _wgslsmith_add_i32(var_2.c, arg_1.x));
    return any(!(!vec3<bool>(var_0.a, var_2.a, all(vec3<bool>(var_2.a, true, true)))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!arg_0.a.a, 1i, arg_1 >> (arg_0.b.x % 32u)), u_input.b);
    var var_1 = 1f;
    var var_2 = Struct_1(false, _wgslsmith_mod_i32(i32(-1i) * -arg_0.a.c, var_0.a.c) | arg_1, ~(-27186i));
    var var_3 = arg_0;
    let var_4 = Struct_1(func_2((_wgslsmith_sub_vec2_u32(var_3.b.yx, var_3.b.zz) | ~vec2<u32>(u_input.a, var_3.b.x)) ^ ~max(vec2<u32>(42026u, 5778u), arg_0.b.yz), min(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.b, 2147483647i, 2147483647i, -10279i), vec4<i32>(67633i, var_3.a.c, var_2.b, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.b, arg_1, arg_0.a.b, -2147483647i), vec4<i32>(arg_0.a.c, -31371i, var_0.a.b, 711i))) >> (~(~vec4<u32>(4294967295u, 24162u, u_input.b.x, 10083u)) % vec4<u32>(32u)), vec4<f32>(158f, 1428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f + -1174f)), 1f)), _wgslsmith_mod_i32(~var_0.a.c, var_0.a.c), 0i);
    return var_4;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global1 = 53042i;
    var var_0 = arg_1.b.yy;
    var var_1 = -func_3(vec4<i32>(-27913i, arg_2, -39982i, -32044i), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-829f + _wgslsmith_f_op_f32(f32(-1f) * -1321f)), 1f), arg_1.a);
    var var_2 = func_1(Struct_2(arg_0, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.a, 74741u) ^ u_input.b, arg_1.b) | ((vec3<u32>(arg_1.b.x, 41731u, arg_1.b.x) | u_input.b) << (vec3<u32>(4294967295u, 0u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_mult_i32(arg_1.a.b, func_1(arg_1, i32(-1i) * -var_1.x).c));
    let var_3 = arg_1;
    return Struct_1(!(!arg_0.a), 1i, var_2.b ^ select(-min(var_2.b, -1i), select(max(arg_0.b, arg_2), _wgslsmith_clamp_i32(-3331i, 13364i, 0i), false), arg_0.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(false, _wgslsmith_dot_vec3_i32(-(vec3<i32>(arg_0.c, -21637i, 2147483647i) | firstTrailingBit(vec3<i32>(2147483647i, -36843i, arg_0.c))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0.c, arg_0.c), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b, -66914i, 2147483647i), vec3<i32>(arg_0.b, arg_0.c, arg_0.c))), countOneBits(abs(vec3<i32>(arg_0.c, arg_0.b, -57453i))), _wgslsmith_mod_vec3_i32(vec3<i32>(-10076i, arg_0.c, 1i), vec3<i32>(-15755i, arg_0.c, -35664i)) << (vec3<u32>(arg_1.x, 37410u, u_input.b.x) % vec3<u32>(32u)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(max(35447i, arg_0.b), -arg_0.c), -countOneBits(global0[_wgslsmith_index_u32(15587u, 6u)])));
    global1 = _wgslsmith_mult_i32(252i, abs(min(reverseBits(_wgslsmith_div_i32(0i, var_0.c)), -1i)));
    let var_1 = var_0;
    global1 = var_1.b & select(~6154i ^ arg_0.b, -2147483647i, true);
    let var_2 = max(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.c, var_1.b, arg_0.b, var_1.c), min(vec4<i32>(-68594i, -2147483647i, 1i, var_1.c), vec4<i32>(var_1.c, 9853i, var_1.c, -2147483647i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c, arg_0.b, -28705i, arg_0.c), vec4<i32>(-12466i, 21691i, -2147483647i, -2147483647i))) >> (~(~(~vec4<u32>(0u, 6171u, 19914u, 32744u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~(~firstTrailingBit(vec4<i32>(-1i, -2147483647i, var_1.c, -2147483647i))), vec4<i32>(func_3(vec4<i32>(1i, var_1.c, -26042i, -29717i), max(55237i, var_0.c), _wgslsmith_f_op_f32(round(-1925f)), Struct_1(true, 1i, var_1.b)).x, -(~(-6059i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, var_0.c, -5338i, 23168i)), ~vec4<i32>(-9611i, -50939i, arg_0.b, var_0.c)), -14915i)));
    return vec3<bool>(568f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1235f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(579f + -750f), _wgslsmith_f_op_f32(-1459f - 1000f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, -399f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2051f, 884f)) * _wgslsmith_f_op_f32(691f - -941f))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_1(true, -2147483647i, _wgslsmith_clamp_i32(92758i, -21324i, 32038i) << (~u_input.b.x % 32u)), Struct_2(func_1(Struct_2(Struct_1(true, 2147483647i, -19725i), vec3<u32>(u_input.a, 1u, 42512u)), abs(-1i)), u_input.b), _wgslsmith_sub_i32(~(~(-5948i)), ~(~61485i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_clamp_u32(0u | u_input.b.x, 18641u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 16599u, 0u, 17504u), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u)))), ~(vec3<u32>(4294967295u, u_input.b.x, 30635u) ^ vec3<u32>(1u, 1u, 1u)), ~(~u_input.b)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1347f, -120f, 345f) - vec3<f32>(-310f, 1923f, 494f)), vec3<f32>(401f, -473f, 1128f)) - vec3<f32>(_wgslsmith_f_op_f32(-231f * 557f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -626f))))));
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    let var_2 = func_4(Struct_1(var_0.x, ~42997i, min(_wgslsmith_mod_i32(select(-1i, 27165i, true), _wgslsmith_div_i32(2147483647i, 22622i)), ~(-1i))), Struct_2(func_4(func_1(Struct_2(Struct_1(var_0.x, 40445i, 2147483647i), u_input.b), 1i), Struct_2(Struct_1(false, -9642i, -32090i), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(57228u, 39614u, u_input.b.x))), 47365i), reverseBits(vec3<u32>(~u_input.b.x, ~u_input.a, ~u_input.a))), -(_wgslsmith_mult_i32(1i, -1i << (u_input.b.x % 32u)) | select(abs(-1i), select(22393i, 53770i, false), true)));
    var var_3 = abs(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-31949i, var_2.b, -1i, var_2.c), vec4<i32>(var_2.c, 44082i, 0i, 15979i)), i32(-1i) * -1i), var_2.b)) << (_wgslsmith_dot_vec2_u32(u_input.b.zz, ~vec2<u32>(4294967295u, u_input.a)) % 32u);
    let var_4 = u_input.b.yx;
    let var_5 = ~firstTrailingBit((abs(vec4<i32>(2147483647i, var_2.b, 2147483647i, -1i)) | vec4<i32>(-51881i, var_2.b, var_2.b, -29376i)) ^ abs(~vec4<i32>(var_2.c, 38113i, var_2.c, -17204i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)))), min(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_4.x, 4294967295u, var_4.x, var_4.x), vec4<u32>(29108u, var_4.x, 1u, 82904u))) << (~(~vec4<u32>(u_input.a, 4294967295u, var_4.x, 0u)) % vec4<u32>(32u)), vec4<u32>(abs(u_input.a), select(max(4294967295u, u_input.a), 34565u, 781f < var_1.x), _wgslsmith_add_u32(~var_4.x, u_input.a), 1u)));
}

