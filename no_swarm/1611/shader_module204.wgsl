struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(0u, 4294967295u, 92441u, 1u), false, true, vec3<i32>(-27631i, -24745i, 2147483647i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = firstTrailingBit(24838u);
    var var_1 = Struct_2(arg_1.a, arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), arg_1.a.a) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, arg_1.a.a) - vec2<f32>(arg_1.a.a, arg_1.a.a))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.a)), arg_1.a.a))), Struct_1(arg_1.a.a, firstTrailingBit(26508i), global0.d.yy, arg_1.a.e, min(~(~arg_1.a.d), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.d.x, 0i, arg_3.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(32825i, 5288i, arg_1.a.d.x, 55528i), arg_1.a.d, vec4<i32>(-8225i, -39177i, arg_3.d.x, -25555i))))), arg_3.a);
    var var_2 = _wgslsmith_clamp_vec2_i32(-(vec2<i32>(-1i) * -abs(global0.d.zz)), -(arg_3.d.zz & countOneBits(vec2<i32>(2147483647i, arg_3.d.x))), var_1.a.c | min(~_wgslsmith_div_vec2_i32(arg_1.c, global0.d.xy), u_input.b));
    var_2 = vec2<i32>(~arg_1.a.e.x, abs(0i | global0.d.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-727f, arg_1.a.a)))), 1073f, var_1.d.a) - vec3<f32>(var_1.c.x, 1590f, 440f));
    return var_0;
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(486f, -696f, 782f, 1344f), vec4<f32>(-749f, 2698f, -172f, -2194f))), vec4<f32>(857f, -2768f, -896f, 1203f), !(!vec4<bool>(global0.c, global0.b, false, global0.b))))))));
    global0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(~abs(global0.a), ~vec4<u32>(39761u, u_input.d, 1u, u_input.d)), u_input.d, max(~(~global0.a.x), func_3(46937u, Struct_4(Struct_1(var_0.x, global0.d.x, global0.d.zx, vec4<i32>(global0.d.x, u_input.a, global0.d.x, global0.d.x), vec4<i32>(-13753i, global0.d.x, 2147483647i, global0.d.x)), vec2<bool>(true, true), vec2<i32>(-2147483647i, global0.d.x)), global0.a.x, Struct_3(global0.a, global0.b, global0.c, global0.d))), 1u), !(!(false || any(vec3<bool>(global0.b, false, global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2383f) * var_0.x) < var_0.x, _wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(u_input.c.x, u_input.b.x, -48349i)), vec3<i32>(global0.d.x, u_input.c.x, u_input.a), true) ^ global0.d, abs(global0.d)));
    global0 = Struct_3(global0.a, !(_wgslsmith_clamp_i32(u_input.b.x, ~u_input.e.x, -13452i) < -2147483647i), !global0.c, _wgslsmith_add_vec3_i32(~global0.d, vec3<i32>(-1949i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0.d.x, -31282i) << (global0.a.zxx % vec3<u32>(32u)), vec3<i32>(1i, u_input.b.x, -10862i) | vec3<i32>(u_input.a, 2147483647i, global0.d.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -990f))), global0.d.x, _wgslsmith_add_vec2_i32(vec2<i32>(0i, _wgslsmith_div_i32(u_input.e.x, global0.d.x)), vec2<i32>(~global0.d.x, _wgslsmith_clamp_i32(-2147483647i, -16921i, 0i))), vec4<i32>(global0.d.x, -global0.d.x >> (0u % 32u), countOneBits(-global0.d.x), ~global0.d.x), -vec4<i32>(u_input.c.x ^ -18762i, firstLeadingBit(1i), 0i, _wgslsmith_sub_i32(global0.d.x, 1i))), Struct_1(var_0.x, u_input.a, vec2<i32>(select(~u_input.b.x, global0.d.x & global0.d.x, !global0.b), -38482i), vec4<i32>(12210i, countOneBits(min(global0.d.x, 7587i)), _wgslsmith_mod_i32(max(22275i, global0.d.x), _wgslsmith_add_i32(-2147483647i, 10370i)), _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(global0.d.x, 27875i), min(u_input.b.x, 43575i))), select(abs(vec4<i32>(-4448i, global0.d.x, u_input.b.x, u_input.a) << (global0.a % vec4<u32>(32u))), vec4<i32>(-45532i, global0.d.x, -1i, 58916i) >> (min(global0.a, global0.a) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(global0.c, true, global0.b)), true, !global0.b, all(vec3<bool>(false, global0.b, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -187f), -1087f) * _wgslsmith_f_op_vec2_f32(-var_0.yw)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.xw))), var_0.zx)), Struct_1(var_0.x, _wgslsmith_clamp_i32(62969i, max(global0.d.x, global0.d.x) ^ _wgslsmith_mod_i32(-12663i, u_input.b.x), -36703i), vec2<i32>(-1i, _wgslsmith_mult_i32(u_input.e.x, global0.d.x)) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(63207u, global0.a.x)) % vec2<u32>(32u)), vec4<i32>(i32(-1i) * -76124i, -firstTrailingBit(u_input.b.x), global0.d.x, ~_wgslsmith_add_i32(-30304i, u_input.a)), firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.a, global0.d.x, 20291i, 53260i) ^ vec4<i32>(u_input.e.x, u_input.b.x, 2744i, global0.d.x)))), firstTrailingBit(global0.a));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-234f)), -174f);
    return _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~var_1.e.x), u_input.d, 64u), vec3<u32>(~0u, ~u_input.d, _wgslsmith_div_u32(global0.a.x & 60292u, 4294967295u))), ~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global0.a.x, u_input.d), var_1.e.yxy << (global0.a.wwz % vec3<u32>(32u))), global0.a.xww, select(vec3<bool>(global0.c, true, global0.c), !vec3<bool>(global0.b, global0.b, global0.c), true)));
}

fn func_1() -> Struct_3 {
    var var_0 = firstTrailingBit(_wgslsmith_div_vec3_u32(global0.a.xzw, _wgslsmith_add_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 23410u, 69435u), vec3<u32>(global0.a.x, 57359u, u_input.d)), ~vec3<u32>(38905u, 1u, 0u), select(global0.b, true, global0.b)), global0.a.xzx)));
    var_0 = _wgslsmith_mod_vec3_u32(global0.a.zwz, func_2());
    let var_1 = Struct_4(Struct_1(-625f, -674i, global0.d.zz, countOneBits(vec4<i32>(-34412i, 62i, u_input.b.x, 14163i)) << (max(~vec4<u32>(1u, 1u, u_input.d, 13020u), ~vec4<u32>(1u, 51334u, 1u, var_0.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<i32>(u_input.a, global0.d.x, global0.d.x, -59816i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -10181i, -15319i, -1i), vec4<i32>(u_input.b.x, global0.d.x, -1i, global0.d.x), vec4<i32>(-1i, -2147483647i, u_input.b.x, u_input.a)), vec4<i32>(-1i, u_input.e.x, 84061i, global0.d.x)) ^ ((vec4<i32>(global0.d.x, u_input.e.x, u_input.a, 39650i) ^ vec4<i32>(1i, global0.d.x, 0i, 0i)) | ~vec4<i32>(1i, global0.d.x, -41330i, u_input.e.x))), !(!(!vec2<bool>(false, global0.b))), select(vec2<i32>(u_input.c.x, -(u_input.e.x >> (var_0.x % 32u))), vec2<i32>(_wgslsmith_mult_i32(0i, global0.d.x), global0.d.x), u_input.e.x >= 2147483647i));
    var var_2 = reverseBits(select(~_wgslsmith_mod_i32(u_input.e.x, -u_input.a), 2147483647i & var_1.a.d.x, !all(vec4<bool>(true, var_1.b.x, true, global0.c))));
    let var_3 = Struct_3(global0.a, all(vec3<bool>(all(vec4<bool>(global0.b, var_1.b.x, true, true)), !var_1.b.x, global0.d.x != 15402i)), -var_1.a.d.x != 1i, ~(-countOneBits(vec3<i32>(-8396i, global0.d.x, 0i))) | var_1.a.d.zzy);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    global0 = func_1();
    var var_0 = Struct_3(global0.a, any(!vec3<bool>(global0.c, 29333i < global0.d.x, any(vec2<bool>(global0.b, false)))), select(!global0.c, any(select(!vec2<bool>(global0.b, global0.b), vec2<bool>(false, false), select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.b, true), true))), global0.b), ~vec3<i32>(u_input.a, -38629i, _wgslsmith_div_i32(-2147483647i, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1096f, _wgslsmith_f_op_f32(726f * 1000f)) + vec2<f32>(-277f, -714f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), -1028f), !vec2<bool>(true, false && var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(8577u, 4294967295u);
}

