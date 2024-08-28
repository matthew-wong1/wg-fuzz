struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = true;
    var var_1 = vec4<i32>(-45836i, global1.x, global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_mod_i32(1726i, u_input.b.x) << (~arg_1.b.a.x % 32u), 3682i), vec3<i32>(2147483647i, global1.x, min(-u_input.b.x, firstLeadingBit(u_input.b.x)))));
    let var_2 = false;
    var var_3 = Struct_1(vec4<u32>(6841u, 27595u, _wgslsmith_div_u32(arg_3.x, countOneBits(30903u)), ~_wgslsmith_div_u32(34539u, arg_1.e.a.x)), any(vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.b.c.x, arg_1.d.e.x), false)), var_2, true)), !select(vec2<bool>(var_2 & arg_2, arg_2), select(select(arg_1.d.c, arg_1.b.c, true), arg_1.c.yz, arg_0.x != 2296f), false), arg_1.e.d, arg_1.c.zy);
    var var_4 = arg_1.e;
    return vec3<f32>(-816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x)), 1015f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.d.x)))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global0 = arg_0;
    var var_0 = Struct_1(vec4<u32>(reverseBits(~4294967295u), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(53225u, 3312u, u_input.a.x), vec3<u32>(u_input.a.x, 9505u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), ~(~u_input.a.x)) & ((~vec4<u32>(1u, 70975u, u_input.a.x, 0u) >> (max(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), vec4<u32>(1u, 10964u, u_input.a.x, 5040u)) % vec4<u32>(32u))) << (firstTrailingBit(select(vec4<u32>(u_input.a.x, 9421u, 7613u, u_input.a.x), vec4<u32>(84758u, u_input.a.x, u_input.a.x, 27238u), true)) % vec4<u32>(32u))), ~(~27u) == ((_wgslsmith_mult_u32(54030u, u_input.a.x) | u_input.a.x) << (abs(1u) % 32u)), vec2<bool>(false, !(_wgslsmith_mod_i32(-2147483647i, global1.x) == abs(-16511i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(arg_0, 353f), Struct_2(vec2<f32>(527f, 841f), Struct_1(vec4<u32>(29005u, 12513u, 0u, u_input.a.x), true, vec2<bool>(true, false), vec3<f32>(arg_0, -1535f, arg_0), vec2<bool>(false, false)), vec3<bool>(false, false, false), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 16415u), true, vec2<bool>(false, true), vec3<f32>(arg_0, 122f, 458f), vec2<bool>(false, true)), Struct_1(vec4<u32>(24893u, u_input.a.x, 1u, 4294967295u), false, vec2<bool>(false, true), vec3<f32>(arg_0, -450f, arg_0), vec2<bool>(true, false))), false, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -615f, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1313f, 1000f, -1329f), vec3<f32>(-614f, arg_0, arg_0))))), vec2<bool>(max(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), 0i) < -1i, true));
    let var_1 = ~u_input.a.x;
    let var_2 = var_0.c.x;
    var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a.wz, vec2<u32>(firstLeadingBit(0u), var_0.a.x)), 1u, ~select(var_0.a.x, abs(var_0.a.x), var_0.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1, 0u, var_1), min(vec4<u32>(var_1, var_1, 0u, 4294967295u), var_0.a))), var_0.e.x, !var_0.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, 375f)))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-865f - arg_0))), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 402f))))), !var_0.c);
    return vec4<u32>(_wgslsmith_add_u32(var_0.a.x, _wgslsmith_clamp_u32(min(u_input.a.x, ~var_1), ~reverseBits(u_input.a.x), 41959u)), u_input.a.x, ~var_1, ~var_1);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(1289f * -165f);
    var var_0 = vec2<bool>(arg_2.x, !(!(!arg_2.x)));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(func_2(_wgslsmith_div_f32(1000f, -215f))), vec4<u32>(~(~42089u), func_2(1240f).x & 33370u, reverseBits(4294967295u), ~1u)), _wgslsmith_add_i32(-countOneBits(u_input.b.x), 1i) > arg_1, !arg_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-459f, -2344f, -1345f) * vec3<f32>(-1476f, -637f, 1397f)) - vec3<f32>(285f, -216f, -146f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(453f * 504f), _wgslsmith_f_op_f32(step(-283f, 396f)), _wgslsmith_f_op_f32(402f * 431f)))), arg_2);
    global0 = -1007f;
    let var_2 = Struct_3(min(~(~u_input.a.x), u_input.a.x), vec4<f32>(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-733f + var_1.d.x), _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), var_1.d.x == 256f))), _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), var_1.d.x), -select(_wgslsmith_sub_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, arg_1), u_input.b, vec2<i32>(-2147483647i, 0i))), vec2<i32>(abs(u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-347i, global1.x, arg_1), vec3<i32>(-91479i, 1i, arg_0))), false), Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d.x, 460f), var_1.d.zz)))))), Struct_1(abs(~vec4<u32>(86825u, var_1.a.x, 5109u, 4294967295u)), false, arg_2, _wgslsmith_f_op_vec3_f32(floor(var_1.d)), !select(vec2<bool>(arg_2.x, arg_2.x), arg_2, arg_2)), select(select(vec3<bool>(false, var_1.e.x, false), !vec3<bool>(var_0.x, true, true), !arg_2.x), vec3<bool>(true, true, any(vec4<bool>(true, true, arg_2.x, arg_2.x))), !arg_2.x), Struct_1(_wgslsmith_mod_vec4_u32(~var_1.a, var_1.a), (u_input.b.x & arg_1) < global1.x, var_1.c, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1134f, var_1.d.x))), Struct_2(var_1.d.zz, Struct_1(var_1.a, false, vec2<bool>(var_1.b, false), var_1.d, var_1.c), vec3<bool>(arg_2.x, true, true), Struct_1(vec4<u32>(57154u, u_input.a.x, var_1.a.x, u_input.a.x), true, arg_2, vec3<f32>(var_1.d.x, -1000f, var_1.d.x), var_1.c), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 44181u), var_1.c.x, var_1.c, vec3<f32>(var_1.d.x, 167f, 879f), vec2<bool>(true, arg_2.x))), var_1.b, var_1.a)), !select(vec2<bool>(arg_2.x, false), arg_2, true)), Struct_1(~(vec4<u32>(var_1.a.x, 1u, 62808u, 9261u) | var_1.a), var_1.b, var_1.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, var_1.d.x, -1238f)), _wgslsmith_f_op_vec3_f32(-var_1.d))), !select(var_1.e, vec2<bool>(arg_2.x, var_1.e.x), vec2<bool>(var_0.x, var_0.x)))), Struct_1(reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(var_1.a.x, 1u), 38602u, var_1.a.x)), true, var_1.c, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * 1103f) - _wgslsmith_f_op_f32(974f + var_1.d.x)), var_1.d.x), var_1.e));
    return vec3<bool>(false, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(203f, var_1.d.x, var_2.e.e.x)))) > _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x)), !any(!vec3<bool>(false, true, var_2.e.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> i32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -978f);
    global0 = -922f;
    var var_0 = Struct_3(~arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(150f, -508f, -2526f, 205f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 2150f, -1000f, 856f))))), -(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-44023i, 1i), vec2<i32>(u_input.b.x, -2147483647i), global1.yz), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(global1.x, 1i)), false) >> (_wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.a.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(1u, arg_1))) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(277f, 550f), vec2<f32>(-1000f, 1000f), arg_0.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1142f), vec2<f32>(-1061f, -1227f), arg_0.x)), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(469f, 1106f) - _wgslsmith_div_vec2_f32(vec2<f32>(1696f, 839f), vec2<f32>(688f, 1184f))))), Struct_1(vec4<u32>(~0u, reverseBits(u_input.a.x), 4294967295u, arg_1), false, func_1(~40674i, abs(u_input.b.x), arg_0.yx).yx, vec3<f32>(_wgslsmith_f_op_f32(527f + 874f), _wgslsmith_f_op_f32(-1055f - -587f), _wgslsmith_f_op_f32(step(1000f, 1181f))), func_1(-54057i, countOneBits(u_input.b.x), !vec2<bool>(arg_0.x, false)).zx), select(vec3<bool>(all(arg_0.xy), true, !arg_0.x), func_1(i32(-1i) * -41031i, ~u_input.b.x, select(arg_0.xx, arg_0.zx, arg_0.xz)), !arg_0.x), Struct_1((vec4<u32>(arg_1, 1u, arg_1, 1u) >> (vec4<u32>(13819u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(51270u, arg_1, arg_1, arg_1) % vec4<u32>(32u)), true, arg_0.zy, _wgslsmith_f_op_vec3_f32(vec3<f32>(531f, -1097f, 1139f) - vec3<f32>(-612f, -183f, -635f)), !vec2<bool>(true, arg_0.x)), Struct_1(vec4<u32>(~u_input.a.x, 1u, arg_1 << (u_input.a.x % 32u), ~27899u), true, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, 11882i), vec3<i32>(global1.x, u_input.b.x, global1.x)), abs(25758i), func_1(global1.x, 0i, arg_0.zx).yy).yz, vec3<f32>(_wgslsmith_f_op_f32(sign(-174f)), -1803f, _wgslsmith_f_op_vec3_f32(func_3(vec2<f32>(783f, 1297f), Struct_2(vec2<f32>(345f, -462f), Struct_1(vec4<u32>(36750u, arg_1, 69349u, arg_1), arg_0.x, arg_0.yz, vec3<f32>(479f, 325f, -988f), vec2<bool>(true, arg_0.x)), arg_0, Struct_1(vec4<u32>(arg_1, u_input.a.x, u_input.a.x, 1u), arg_0.x, arg_0.xz, vec3<f32>(-1631f, -776f, -731f), arg_0.xx), Struct_1(vec4<u32>(arg_1, arg_1, u_input.a.x, arg_1), arg_0.x, vec2<bool>(false, true), vec3<f32>(-357f, 546f, 240f), vec2<bool>(arg_0.x, false))), arg_0.x, vec4<u32>(arg_1, arg_1, 0u, u_input.a.x))).x), vec2<bool>(any(vec4<bool>(arg_0.x, true, false, arg_0.x)), !arg_0.x))), Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 49263u, u_input.a.x, arg_1), vec4<u32>(arg_1, arg_1, 7232u, arg_1))), true, arg_0.xy, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-199f * 1131f), -686f, _wgslsmith_f_op_f32(669f + 554f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 1675f, -538f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-864f, 121f, 218f), vec3<f32>(1000f, 528f, -1338f))), !(!vec3<bool>(arg_0.x, arg_0.x, true)))), arg_0.xx));
    let var_1 = Struct_3(20168u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, 966f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.e.d.x - -510f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.b.d.x), _wgslsmith_f_op_f32(-1365f + var_0.b.x)))), abs(_wgslsmith_sub_vec2_i32(global1.zz, var_0.c)), var_0.d, Struct_1(vec4<u32>(min(42559u, arg_1) << (~1u % 32u), ~(~41464u), u_input.a.x, var_0.d.b.a.x), any(vec3<bool>(arg_0.x, false && arg_0.x, all(vec4<bool>(true, true, true, var_0.d.e.c.x)))), arg_0.zy, var_0.b.zyz, vec2<bool>(any(vec4<bool>(true, true, arg_0.x, arg_0.x)), true)));
    var_0 = var_1;
    return _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_sub_i32(-27977i, ~(-13960i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-global1.x, _wgslsmith_add_i32(var_0.c.x, global1.x), ~32874i), vec3<i32>(min(var_0.c.x, 3477i), u_input.b.x ^ -51019i, _wgslsmith_sub_i32(var_0.c.x, global1.x))), ~(~(~vec3<i32>(-2147483647i, global1.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -509f);
    var var_1 = u_input.a.xx;
    global1 = vec3<i32>(select(func_4(func_1(-12111i, global1.x, vec2<bool>(true, true)), _wgslsmith_add_u32(23974u, var_1.x)), min(global1.x, global1.x) & ~(-2659i), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b) >= (u_input.b.x >> (37724u % 32u))) << (min(var_1.x, 4294967295u) % 32u), 1i, firstLeadingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, u_input.b.x, u_input.b.x) & vec3<i32>(global1.x, 2147483647i, u_input.b.x), vec3<i32>(-10092i, -2037i, 15685i)), abs(vec3<i32>(u_input.b.x, 2147483647i, global1.x)))));
    var_1 = firstTrailingBit(min(vec2<u32>(~u_input.a.x | ~u_input.a.x, var_1.x), u_input.a.zz));
    var var_2 = ~vec3<u32>(abs(~var_1.x), var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(938f, 704f, -1000f))))), vec2<i32>(global1.x, max(i32(-1i) * -u_input.b.x, -2147483647i)), ~(-firstTrailingBit(~2147483647i)), abs(var_2.x));
}

