struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: f32 = 1658f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    return select(all(!(!vec4<bool>(arg_2.b, false, arg_1.b, false))), select(true, any(vec3<bool>(true, arg_1.b, any(vec3<bool>(true, true, false)))), !(!all(vec2<bool>(arg_2.b, false)))), arg_1.b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    let var_0 = arg_1;
    let var_1 = u_input.b.x;
    let var_2 = arg_1.b;
    let var_3 = vec2<i32>(select(~firstLeadingBit(-var_0.d.x), 2147483647i, false), -_wgslsmith_clamp_i32(-23308i, arg_1.d.x, arg_1.d.x));
    var var_4 = arg_1;
    return ~(13076u & countOneBits(var_0.c.x)) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_4.c.x), _wgslsmith_add_u32(63564u, var_0.c.x)), vec2<u32>(var_1, var_4.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f + -214f) + _wgslsmith_f_op_f32(-340f * 1744f))), 409f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-803f, 396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(281f)))))));
    var var_1 = select(vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), func_2(u_input.b.x, Struct_1(vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i), false, vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.b.x), vec4<i32>(u_input.c, u_input.a, u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.c, -8069i, 39709i, -2872i), false, vec4<u32>(1u, 4294967295u, 45152u, 41322u), vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a))))), true, true), vec4<bool>(!(_wgslsmith_f_op_f32(-var_0.x) != var_0.x), true, true, true), vec4<bool>(true, any(vec4<bool>(true, true, true, func_2(u_input.d, Struct_1(vec4<i32>(-62451i, 19849i, -20166i, u_input.a), true, vec4<u32>(53070u, 0u, u_input.d, 0u), vec4<i32>(u_input.c, u_input.a, u_input.a, -2147483647i)), Struct_1(vec4<i32>(-1i, u_input.c, u_input.a, u_input.c), true, vec4<u32>(u_input.b.x, 22852u, u_input.b.x, 4294967295u), vec4<i32>(u_input.c, u_input.c, -11645i, u_input.a))))), true, !all(vec4<bool>(true, true, true, true))));
    let var_2 = Struct_1(-reverseBits(~(~vec4<i32>(u_input.a, -1i, u_input.a, 1i))), !(var_1.x || var_1.x), vec4<u32>(1u, func_3(func_2(4294967295u, Struct_1(vec4<i32>(0i, -27842i, u_input.c, 17796i), true, vec4<u32>(0u, 20034u, 4294967295u, 14936u), vec4<i32>(-52018i, u_input.a, 2147483647i, u_input.a)), Struct_1(vec4<i32>(u_input.c, u_input.a, u_input.a, 19915i), true, vec4<u32>(0u, 47120u, u_input.d, 42557u), vec4<i32>(7254i, u_input.a, u_input.c, u_input.c))), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c), var_1.x, vec4<u32>(31803u, u_input.d, u_input.b.x, u_input.d), vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), var_1.zz, u_input.b.x), 0u, u_input.d) | ~vec4<u32>(max(u_input.b.x, u_input.d), u_input.b.x, _wgslsmith_sub_u32(0u, u_input.b.x), abs(19116u)), -reverseBits(vec4<i32>(i32(-1i) * -2147483647i, -1i, u_input.a, _wgslsmith_mod_i32(-1i, u_input.a))));
    var var_3 = var_2;
    var var_4 = u_input.b.x ^ (0u | var_3.c.x);
    return Struct_1(vec4<i32>(_wgslsmith_add_i32(~(-var_2.d.x), -21589i), -u_input.a, ~_wgslsmith_mod_i32(var_3.a.x ^ u_input.c, max(1i, 1i)), min(_wgslsmith_mod_i32(-1i, var_2.a.x) ^ -2147483647i, ~(~(-29985i)))), all(var_1.xzw), firstTrailingBit(countOneBits(vec4<u32>(func_3(var_3.b, var_2, vec2<bool>(var_1.x, false), 4294967295u), var_2.c.x, 1u, select(13507u, var_2.c.x, false)))), reverseBits(var_2.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mod_vec2_u32(countOneBits(arg_1.c.yx), u_input.b);
    var var_1 = arg_0.x;
    var var_2 = arg_1;
    let var_3 = arg_1.a.xx;
    var var_4 = ~(vec2<u32>(func_3(arg_0.x, func_1(), select(vec2<bool>(true, false), arg_0, true), 30248u), _wgslsmith_add_u32(arg_1.c.x << (11632u % 32u), arg_1.c.x | u_input.b.x)) | max(~(vec2<u32>(var_0.x, 77171u) & var_0), var_0));
    return _wgslsmith_dot_vec2_i32(~max(_wgslsmith_mult_vec2_i32(arg_1.a.xx, ~vec2<i32>(var_3.x, 0i)), vec2<i32>(-u_input.a, _wgslsmith_add_i32(55193i, var_2.d.x))), firstLeadingBit(vec2<i32>(max(var_3.x, arg_1.d.x), firstTrailingBit(u_input.a))) & ~vec2<i32>(~var_2.a.x, min(-1i, 1772i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-263f, -764f)), _wgslsmith_f_op_f32(floor(147f)), any(arg_1))))));
    global0 = array<vec4<f32>, 2>();
    var var_0 = -55168i;
    global0 = array<vec4<f32>, 2>();
    var_0 = firstLeadingBit(~func_4(!(!arg_1.yw), Struct_1(select(vec4<i32>(arg_3, 19097i, -66289i, 19461i), vec4<i32>(0i, arg_3, u_input.c, 24589i), arg_1), false, vec4<u32>(arg_2.x, u_input.d, u_input.b.x, u_input.b.x), countOneBits(vec4<i32>(u_input.a, 9877i, 74619i, 12718i)))));
    return Struct_1(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_3, -2147483647i, 1i, arg_0.x)), ~vec4<i32>(-1i, u_input.c, -3753i, -42174i)), !(!arg_1.x), vec4<u32>(u_input.d, arg_2.x, ~(~arg_2.x), ~4294967295u >> (reverseBits(0u) % 32u)), (abs(max(vec4<i32>(arg_3, -2593i, 2147483647i, arg_0.x), vec4<i32>(arg_3, 40872i, -25299i, u_input.a))) | select(vec4<i32>(1i, u_input.a, -2147483647i, u_input.c), select(vec4<i32>(arg_0.x, 0i, -8011i, arg_3), vec4<i32>(2147483647i, arg_3, arg_3, arg_3), true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))) | vec4<i32>(arg_0.x, -1i, 20903i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~(~76223u) & _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 22840u), ~u_input.d), u_input.d), u_input.d);
    let var_1 = func_5(vec2<i32>(~func_4(vec2<bool>(true, false), func_1()), ~(u_input.a | 2147483647i)), vec4<bool>(false, any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)), !func_1().b, true), vec2<u32>(select(1844u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u) << (vec3<u32>(1u, 0u, 31709u) % vec3<u32>(32u)), vec3<u32>(2129u, 28499u, u_input.d) & vec3<u32>(u_input.b.x, 42575u, u_input.b.x)), true), abs(u_input.d)), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_sub_i32(countOneBits(9442i), _wgslsmith_add_i32(u_input.a, u_input.a))), ~(~u_input.c), _wgslsmith_add_i32(-13202i, u_input.c) << (1u % 32u)));
    global0 = array<vec4<f32>, 2>();
    let var_2 = ~12377u;
    var_0 = _wgslsmith_sub_u32(100733u << ((_wgslsmith_sub_u32(func_1().c.x, ~var_1.c.x) << (~4294967295u % 32u)) % 32u), 5528u);
    var var_3 = vec4<i32>(-select(~_wgslsmith_sub_i32(u_input.c, u_input.a), 2147483647i, (var_1.b & var_1.b) && var_1.b), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, ~var_1.d.x, _wgslsmith_mod_i32(u_input.a, 18716i) | 1i), var_1.a), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-var_1.a.xzy, firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(1164i, -1i, var_1.a.x), vec3<i32>(0i, 2147483647i, var_1.d.x)))), ~vec3<i32>(-56276i | u_input.a, var_1.d.x, u_input.a)));
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1f))));
    let var_4 = func_5(countOneBits(countOneBits(var_1.a.wy)), !(!(!(!vec4<bool>(var_1.b, false, var_1.b, var_1.b)))), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 15048u), var_2 | min(64224u, 4294967295u)), func_4(select(select(!vec2<bool>(var_1.b, true), select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, var_1.b), false), true), select(select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b)), !vec2<bool>(var_1.b, var_1.b), !vec2<bool>(var_1.b, var_1.b)), select(vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), vec2<bool>(true, var_1.b)), !vec2<bool>(true, var_1.b))), func_5(vec2<i32>(firstTrailingBit(2147483647i), firstTrailingBit(0i)), vec4<bool>(var_1.b & var_1.b, select(true, var_1.b, var_1.b), var_1.b, var_1.b), var_1.c.yw, u_input.c)));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-var_5.d.xx << ((vec2<u32>(var_2, 4294967295u) & vec2<u32>(u_input.b.x, 34326u)) % vec2<u32>(32u)))), reverseBits(var_1.c.xyz), _wgslsmith_dot_vec2_i32(vec2<i32>(-(~var_3.x), func_4(vec2<bool>(var_5.b, true), Struct_1(vec4<i32>(var_3.x, -2147483647i, u_input.c, -35647i), false, vec4<u32>(var_4.c.x, 4294967295u, 0u, u_input.d), var_4.d))), _wgslsmith_div_vec2_i32(var_1.a.xx, vec2<i32>(abs(var_5.d.x), 0i))), (vec3<i32>(func_1().a.x, -2147483647i & var_3.x, _wgslsmith_div_i32(var_3.x, -1481i)) | abs(reverseBits(vec3<i32>(-58704i, -39141i, 2147483647i)))) << (~(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.c.x, 4294967295u, 0u), var_5.c.yww, vec3<u32>(39348u, var_2, 1u)) | var_4.c.yxz) % vec3<u32>(32u)), ~58429u);
}

