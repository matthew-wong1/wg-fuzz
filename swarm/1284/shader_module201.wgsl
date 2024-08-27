struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(17857i, -9777i, -47473i), vec3<i32>(-11647i, i32(-2147483648), 16390i), vec3<i32>(10312i, 36625i, 3339i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(2147483647i, -7272i, -69630i), vec3<i32>(1i, 14082i, 10401i), vec3<i32>(-30820i, i32(-2147483648), 0i), vec3<i32>(-22524i, i32(-2147483648), 6702i), vec3<i32>(0i, -1i, 0i), vec3<i32>(3809i, i32(-2147483648), -57511i), vec3<i32>(6119i, 1i, 35344i), vec3<i32>(2147483647i, -1i, 37863i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<vec3<i32>, 12>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, 789f, -503f, -231f)))));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(arg_0.b.x, arg_0.c.x, max(firstLeadingBit(0i), ~11857i)) & arg_0.a, arg_0.a);
    var var_2 = !(!((u_input.a > 4294967295u) != true)) & false;
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1369f), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - -853f)))));
    return 11215i;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(((~arg_0.a & _wgslsmith_div_i32(20407i, arg_0.a)) ^ ~(~10909i)) >> (_wgslsmith_sub_u32(25970u, firstLeadingBit(u_input.a)) % 32u), vec4<i32>(_wgslsmith_add_i32(func_3(Struct_1(arg_0.a, vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), global0[_wgslsmith_index_u32(98033u, 12u)])), arg_0.a), firstLeadingBit(countOneBits(arg_0.a)), 0i, 30961i), abs(_wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, -4885i), global0[_wgslsmith_index_u32(u_input.a, 12u)], vec3<i32>(arg_0.a, 1i, arg_0.a)), abs(-global0[_wgslsmith_index_u32(38073u, 12u)]))));
    let var_1 = arg_0.d.x;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, _wgslsmith_sub_i32(func_3(var_0), var_0.c.x)), vec2<i32>(-2147483647i, countOneBits(~(-1i)))), arg_0.a, min(abs(abs(-60593i)), ~_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(54007u, 12u)] ^ global0[_wgslsmith_index_u32(17445u, 12u)], var_0.c)), arg_0.a);
    var var_3 = arg_0.b;
    global0 = array<vec3<i32>, 12>();
    return Struct_1(arg_0.a, var_0.b, _wgslsmith_div_vec3_i32(~reverseBits(~vec3<i32>(arg_0.a, 3732i, var_0.b.x)), _wgslsmith_div_vec3_i32(~var_2.zww & _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_2.x, arg_0.a), var_2.wyw, global0[_wgslsmith_index_u32(1u, 12u)]), select(countOneBits(vec3<i32>(-26531i, var_0.b.x, var_0.b.x)), ~var_2.wwz, false))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_5) -> vec3<i32> {
    var var_0 = !select(!(!vec4<bool>(arg_1, false, arg_1, true)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1, arg_1, true, arg_1), select(vec4<bool>(true, false, false, true), vec4<bool>(false, arg_1, arg_1, false), arg_1)), select(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, true), false), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1), select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, true, false, false), vec4<bool>(arg_1, true, arg_1, true)), vec4<bool>(arg_1, true, arg_1, arg_1), arg_1)), all(vec4<bool>(arg_1, any(vec2<bool>(arg_1, arg_1)), !arg_1, !arg_1)));
    let var_1 = Struct_2(arg_2.a.a, !(!select(select(vec4<bool>(true, var_0.x, false, arg_1), vec4<bool>(false, true, true, true), false), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(false, false, false, false)), !vec4<bool>(true, false, var_0.x, var_0.x))), true, vec3<f32>(_wgslsmith_f_op_f32(min(-715f, 473f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-719f)), _wgslsmith_f_op_f32(443f - -396f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1095f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f - _wgslsmith_f_op_f32(f32(-1f) * -478f)))));
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = Struct_1(-(i32(-1i) * -18774i) >> (1u % 32u), ~_wgslsmith_sub_vec4_i32(vec4<i32>(min(2147483647i, arg_0.b.x), var_2.a << (53108u % 32u), ~arg_2.a.b.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(13975i, 2147483647i, 0i, var_3.a), arg_0.b)), -firstTrailingBit(vec3<i32>(var_2.a, 12695i, 2147483647i)) & vec3<i32>(0i, var_3.a, 23021i));
    return -abs(min(abs(~vec3<i32>(0i, -629i, 7385i)), vec3<i32>(var_4.c.x, var_3.a >> (u_input.a % 32u), firstLeadingBit(var_2.a))));
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<vec3<i32>, 12>();
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(min(-2147483647i, 0i), reverseBits(~77818i), 2147483647i), -12366i);
    var var_1 = Struct_5(Struct_1(_wgslsmith_sub_i32(-22471i, 4164i), ~(firstTrailingBit(vec4<i32>(-2147483647i, -33320i, -1i, 1203i)) ^ reverseBits(vec4<i32>(23719i, -2147483647i, -1i, -1i))), -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53034u, 53907u, u_input.a), vec3<u32>(46389u, 4294967295u, u_input.a)), 12u)] ^ func_4(func_2(Struct_2(2147483647i, vec4<bool>(true, false, true, false), false, vec3<f32>(arg_0, arg_0, arg_0))), true, Struct_5(Struct_1(-46410i, vec4<i32>(-6415i, -2147483647i, 46138i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 12u)])))));
    var_0 = 1i;
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, 1133f, 1814f, arg_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 245f, arg_0, arg_0), vec4<f32>(-1000f, 1679f, arg_0, 566f), false)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0, 1632f), _wgslsmith_f_op_f32(trunc(168f)), arg_0, _wgslsmith_f_op_f32(min(1953f, arg_0))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(704f, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -683f, 850f, arg_0) * vec4<f32>(138f, -425f, arg_0, arg_0))))));
    return -15821i;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec2<bool> {
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_3, arg_2.d.x)), arg_3))) - -2100f)));
    return vec2<bool>((~2147483647i << ((~arg_0.x & u_input.a) % 32u)) != abs(-1i), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<i32>(i32(-1i) * -1i, -13518i));
    var var_1 = !func_5(reverseBits(vec3<u32>(u_input.a, u_input.a, ~u_input.a)), true, Struct_2(func_1(-904f), vec4<bool>(true, true, all(vec2<bool>(true, false)), true), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec3<f32>(379f, -581f, _wgslsmith_f_op_f32(trunc(-265f)))), -1279f);
    var_1 = select(func_5(~(~vec3<u32>(48729u, u_input.a, 4294967295u) | vec3<u32>(u_input.a, u_input.a, 1u)), all(!(!vec4<bool>(true, var_1.x, var_1.x, false))), Struct_2(1i, vec4<bool>(!var_1.x, !var_1.x, true, true), all(vec2<bool>(true, true)) & var_1.x, vec3<f32>(477f, -1000f, -1536f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1057f * -2312f), _wgslsmith_f_op_f32(abs(-643f))))), vec2<bool>(true, true), true | !all(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true), vec2<bool>(true, true))));
    let var_2 = Struct_3(func_2(Struct_2(45871i >> (_wgslsmith_mod_u32(1u, u_input.a) % 32u), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.x, false, var_1.x), true), var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, 1051f, -532f)))), Struct_2(_wgslsmith_mult_i32(func_3(Struct_1(41370i, vec4<i32>(var_0.x, -3224i, 0i, 27469i), vec3<i32>(var_0.x, 45897i, 2147483647i))), ~2147483647i), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), false), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, true, true, false)), false), any(!vec4<bool>(var_1.x, true, false, var_1.x))), any(vec4<bool>(var_1.x, all(vec3<bool>(false, var_1.x, false)), true, var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1512f, 164f, 832f) * vec3<f32>(-889f, -2140f, -172f)))))), func_2(Struct_2(countOneBits(915i << (u_input.a % 32u)), vec4<bool>(true || var_1.x, true, var_0.x > 0i, var_1.x), (u_input.a > u_input.a) == (false == var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(1239f, -859f, 1624f), vec3<f32>(368f, -635f, 129f)))), firstTrailingBit(abs(countOneBits(vec3<u32>(u_input.a, 36152u, 1u) & vec3<u32>(24033u, 4294967295u, u_input.a)))), func_2(Struct_2(-1i, vec4<bool>(!var_1.x, select(var_1.x, false, false), true, true), any(vec4<bool>(var_1.x, true, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1084f, -872f, 627f), vec3<f32>(401f, -153f, 1722f))))));
    let var_3 = vec3<i32>(-_wgslsmith_mod_i32(func_2(Struct_2(-1i, var_2.b.b, var_2.b.c, vec3<f32>(var_2.b.d.x, 609f, var_2.b.d.x))).b.x, ~1i & _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(var_2.d.x, 12u)], vec3<i32>(2147483647i, -1i, 47696i))), 22144i, var_0.x);
    let var_4 = var_3.zy;
    global0 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(-33195i, ~var_3, countOneBits(var_0));
}

