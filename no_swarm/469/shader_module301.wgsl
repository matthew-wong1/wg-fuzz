struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(18344i, 19562i, -88572i);

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    global0 = Struct_1(arg_0.a.yy);
    let var_0 = false;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(round(-727f));
    var var_3 = var_0;
    return arg_1.a.x;
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1415f, -1871f, 131f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1514f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 130f, -1906f))), false)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.zz)) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = Struct_3(vec3<u32>(~(~reverseBits(0u)), u_input.a, max(global0.a.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.a.x, 94721u), global0.a.x))), _wgslsmith_sub_i32(~39004i, global1.x));
    var var_4 = global1.xy;
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global1.x, global1.x, var_3.b) & vec4<i32>(var_4.x, 19947i, -1i, var_3.b), vec4<i32>(29278i, var_4.x, var_4.x, -43572i)))), vec4<i32>(~abs(1i), 2147483647i, global1.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_4.x, var_4.x, var_4.x), ~vec3<i32>(-1i, global1.x, -2147483647i))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(50952u, 1u, 52760u, global0.a.x) << (vec4<u32>(global0.a.x, 38035u, global0.a.x, 1u) % vec4<u32>(32u)), ~(vec4<u32>(79332u, u_input.a, 4294967295u, var_3.a.x) | vec4<u32>(0u, 1u, u_input.a, global0.a.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    global1 = vec3<i32>(min(abs(~max(47137i, global1.x)), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.x, -15913i), arg_2.x)), abs(min(~arg_2.x, 2884i)) & -arg_2.x, firstLeadingBit(_wgslsmith_add_i32(1i, ~(-2147483647i))));
    var var_0 = abs(vec4<i32>(-(~_wgslsmith_mod_i32(global1.x, global1.x)), ~((i32(-1i) * -3436i) & (arg_2.x >> (1u % 32u))), -global1.x, -max(global1.x, 30618i) | 0i));
    var var_1 = all(select(!vec4<bool>(arg_3, arg_3 | arg_3, false, !arg_3), !(!(!vec4<bool>(arg_3, arg_3, true, arg_3))), any(select(!vec2<bool>(arg_3, false), !vec2<bool>(false, arg_3), !arg_3))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -357f);
    var var_3 = arg_2.x;
    return Struct_2(~vec4<u32>(global0.a.x, _wgslsmith_clamp_u32(global0.a.x | u_input.a, select(4294967295u, 4112u, true), 1u), ~0u, _wgslsmith_mod_u32(reverseBits(global0.a.x), 4294967295u)), _wgslsmith_mod_i32(i32(-1i) * -max(arg_2.x, -2147483647i), 26912i), Struct_1(_wgslsmith_div_vec2_u32(reverseBits(global0.a ^ vec2<u32>(15712u, u_input.a)), _wgslsmith_mult_vec2_u32(~global0.a, global0.a & global0.a))), var_0.x, func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1011f, _wgslsmith_div_f32(656f, -810f), any(vec2<bool>(arg_3, arg_3))))))).x);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global1 = -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(global1.x), -56829i, min(-17380i, 1i)), vec3<i32>(_wgslsmith_mult_i32(-12303i, arg_0.d), arg_0.d, ~arg_0.b), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -52394i, global1.x), vec3<i32>(arg_0.d, 27995i, 2147483647i))), vec3<i32>(~arg_0.b, 0i, global1.x), true);
    global2 = ~arg_0.e;
    global0 = arg_0.c;
    global0 = arg_0.c;
    var var_0 = false;
    return Struct_3(func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_0.a.yxx, arg_0.a.zzx), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.c.a.x)) & ~global0.a.x, select(64437u >> (_wgslsmith_clamp_u32(arg_0.c.a.x, global0.a.x, 31219u) % 32u), ~select(40225u, global0.a.x, true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))), vec4<i32>(_wgslsmith_add_i32(24078i, reverseBits(global1.x)), ~(54336i ^ global1.x), -select(0i, 2147483647i, true), -1i), false).a.wzy, arg_0.d);
}

fn func_1() -> Struct_1 {
    global2 = 30540i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1086f * -1512f));
    var var_1 = countOneBits(u_input.a);
    let var_2 = func_5(func_4(~countOneBits(func_2(Struct_2(vec4<u32>(32175u, u_input.a, global0.a.x, u_input.a), -36928i, Struct_1(global0.a), 7488i, global1.x), Struct_3(vec3<u32>(4294967295u, 41494u, 43899u), 2147483647i), vec3<f32>(-1309f, var_0, var_0))), _wgslsmith_mod_u32(u_input.a, global0.a.x), min(min(vec4<i32>(2147483647i, global1.x, global1.x, global1.x), vec4<i32>(global1.x, 2147483647i, 2147483647i, 42716i)), func_3(var_0)) | select(vec4<i32>(32863i, 36789i, global1.x, global1.x) << (vec4<u32>(1u, 0u, u_input.a, 44688u) % vec4<u32>(32u)), min(vec4<i32>(13054i, 2147483647i, 11455i, global1.x), vec4<i32>(68258i, -37637i, global1.x, -1i)), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, global0.a.x == 25268u))));
    let var_3 = func_5(Struct_2(countOneBits(max(vec4<u32>(1u, global0.a.x, u_input.a, global0.a.x), firstLeadingBit(vec4<u32>(0u, global0.a.x, var_2.a.x, 4294967295u)))), ~(-global1.x << ((u_input.a >> (u_input.a % 32u)) % 32u)), func_4(func_5(Struct_2(vec4<u32>(global0.a.x, 9880u, 4294967295u, u_input.a), var_2.b, Struct_1(vec2<u32>(global0.a.x, 34965u)), var_2.b, global1.x)).a.x, global0.a.x, ~vec4<i32>(-54218i, 68600i, global1.x, -1i), true).c, 8951i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -53121i, 18113i, global1.x), vec4<i32>(49946i, 5851i, var_2.b, 5048i)), i32(-1i) * -2147483647i), vec3<i32>(-1i) * -vec3<i32>(var_2.b, var_2.b, var_2.b))));
    return Struct_1(~(~min(func_4(var_3.a.x, 0u, vec4<i32>(-2147483647i, var_3.b, -7058i, var_2.b), true).c.a, vec2<u32>(u_input.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.a, 42035u);
    var var_1 = func_1();
    let var_2 = global1.x;
    var var_3 = func_1();
    var var_4 = Struct_2(min(~firstTrailingBit(vec4<u32>(var_1.a.x, var_0, 80163u, 23795u)) >> (~vec4<u32>(26883u, global0.a.x, 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(4294967295u, var_1.a.x, var_0, 1u)), ~firstTrailingBit(vec4<u32>(global0.a.x, u_input.a, 0u, 4294967295u)), ~func_4(0u, 4294967295u, vec4<i32>(-2147483647i, -2147483647i, -50223i, global1.x), false).a)), 1i, Struct_1(vec2<u32>(52333u, func_4(60025u ^ var_0, ~var_3.a.x, ~vec4<i32>(global1.x, 1i, global1.x, -18416i), true).a.x)), -48068i, _wgslsmith_div_i32(global1.x, reverseBits(abs(i32(-1i) * -6238i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1620f)), _wgslsmith_f_op_f32(ceil(588f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-523f + -604f), _wgslsmith_f_op_f32(f32(-1f) * -199f))), _wgslsmith_f_op_f32(1f - -616f))), var_4.a.xzy);
}

