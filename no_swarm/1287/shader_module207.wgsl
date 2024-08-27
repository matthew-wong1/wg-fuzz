struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(2147483647i, i32(-2147483648), 0i), 1132f, Struct_1(vec2<bool>(true, false), -1i, 9809u, vec3<bool>(true, true, false)), Struct_2(-689f));

var<private> global1: vec2<f32> = vec2<f32>(-1165f, -1536f);

var<private> global2: bool;

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: u32) -> Struct_5 {
    let var_0 = arg_1.yz;
    global2 = true;
    global0 = Struct_4(-vec3<i32>((arg_0.x | 2147483647i) >> (0u % 32u), -1i, 81i), _wgslsmith_f_op_f32(-423f + -342f), global0.c, global0.d);
    global1 = vec2<f32>(-384f, _wgslsmith_f_op_f32(f32(-1f) * -2011f));
    let var_1 = vec3<i32>(-1i) * -(reverseBits(~global0.a) & global0.a);
    return Struct_5(global3.zx);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = Struct_4(firstLeadingBit(firstTrailingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-16222i, global0.a.x, 66132i), vec3<i32>(arg_1.x, global0.a.x, 55091i)))), -857f, Struct_1(global0.c.d.yx, arg_1.x, min(0u, global3.x), !(!global0.c.d)), global0.d);
    let var_1 = i32(-1i) * -(~global0.c.b);
    var var_2 = 4294967295u;
    var var_3 = countOneBits(select(4294967295u, max(max(global3.x, 26144u), _wgslsmith_dot_vec3_u32(global3.xzx, vec3<u32>(93441u, global3.x, 1u))), any(vec4<bool>(var_0.c.d.x, global0.c.a.x, false, var_0.c.d.x)))) <= max(global3.x, 4374u);
    global2 = true;
    return 2530u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = func_2(_wgslsmith_add_vec3_i32(~global0.a, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2978i, arg_1.c.b, arg_0.b), global0.a, global0.a)) ^ (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(-8071i, arg_1.c.b, 23120i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_f_op_vec4_f32(-arg_3)) * arg_3), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_3, vec4<f32>(-549f, arg_3.x, 617f, arg_1.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_3, vec4<f32>(arg_3.x, arg_1.b.a, -730f, 563f)))), _wgslsmith_add_i32(arg_1.c.b, global0.c.b) >= arg_0.b)), true)), (arg_0.c << ((4294967295u >> (~u_input.a % 32u)) % 32u)) | _wgslsmith_div_u32(35268u, global0.c.c));
    global0 = Struct_4(reverseBits(max(global0.a, vec3<i32>(1i, arg_0.b, arg_1.c.b))), -1372f, Struct_1(select(select(arg_0.a, arg_1.a.xz, select(arg_0.d.xz, arg_0.d.zz, arg_0.d.xx)), select(vec2<bool>(false, arg_0.a.x), arg_1.c.d.yx, global0.c.a), all(arg_0.d.zy) || global0.c.a.x), 2147483647i << (select(func_3(arg_1.a.x, vec3<i32>(5569i, global0.c.b, arg_0.b), 865f, arg_0.d.x), 29393u, any(arg_1.a)) % 32u), ~(~global3.x), !(!global0.c.d)), global0.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(arg_3.xw, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.a)), _wgslsmith_f_op_f32(sign(arg_3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1636f), arg_1.b.a, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.zx) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(449f, -113f))))), arg_3.xz)));
    return !arg_1.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_5(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(global3.yy, vec2<u32>(64044u, global0.c.c)), vec2<u32>(1u, 1u), ~vec2<u32>(79169u, global3.x))) | select(vec2<u32>(u_input.a, firstTrailingBit(global0.c.c)), ~vec2<u32>(4294967295u, 80241u), vec2<bool>(all(global0.c.a), global0.c.a.x)));
    global1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.a) - global1.x), _wgslsmith_f_op_f32(-global1.x))), global0.b), arg_0.yy));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), global0.c.d.x)), global0.c, global0.d);
    global3 = ~(vec4<u32>(4294967295u, ~var_0.a.x, _wgslsmith_div_u32(global0.c.c, var_0.a.x), 36961u) | vec4<u32>(~u_input.a, ~global0.c.c, u_input.a & 4294967295u, _wgslsmith_mult_u32(14317u, 17541u))) | vec4<u32>(global3.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, u_input.a), u_input.a), ~(~var_0.a.x)), 1u, global0.c.c);
    var var_1 = !select(true, global0.c.a.x, _wgslsmith_f_op_f32(1615f * 786f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1545f, -392f))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(global0.c.c), _wgslsmith_mult_u32(42554u, 4147u)) ^ ~var_0.a.x, u_input.a, func_2(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 1272f, 1421f, -672f))), ~_wgslsmith_dot_vec3_u32(global3.wyy, vec3<u32>(4294967295u, 1u, 46076u))).a.x, 0u), select(vec4<u32>(func_3(global0.c.a.x, vec3<i32>(global0.a.x, global0.a.x, global0.c.b), _wgslsmith_f_op_f32(round(-227f)), true), _wgslsmith_mod_u32(26622u, _wgslsmith_dot_vec3_u32(global3.xww, vec3<u32>(global0.c.c, u_input.a, global0.c.c))), u_input.a, 0u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(338u, 1u, 57812u, global3.x), vec4<u32>(51010u, 4294967295u, 20908u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, global3.x, 48470u), vec4<u32>(26317u, var_0.a.x, 46756u, 13768u))), false || all(select(vec4<bool>(arg_1.x, global0.c.d.x, global0.c.d.x, false), vec4<bool>(false, true, arg_1.x, true), arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.c.a, countOneBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-5882i, global0.c.b, global0.c.b)) >> (global3.wyy % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(-18307i, -15557i), -1i & global0.c.b, i32(-1i) * -5900i))), ~_wgslsmith_add_u32(~(~2128u), ~u_input.a << (~58955u % 32u)), vec3<bool>(global0.c.d.x, global0.c.a.x, !any(!vec2<bool>(global0.c.a.x, global0.c.d.x))));
    global3 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(42881u, u_input.a, 1u, global3.x), vec4<u32>(global3.x, global0.c.c, 21022u, 0u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 33425u, u_input.a, var_0.c), vec4<u32>(27575u, var_0.c, 0u, 60502u)), vec4<u32>(622u, global0.c.c, 4294967295u, var_0.c) ^ vec4<u32>(4294967295u, global0.c.c, global0.c.c, 9182u), select(vec4<bool>(var_0.d.x, false, true, false), vec4<bool>(var_0.d.x, var_0.d.x, global0.c.a.x, true), vec4<bool>(global0.c.a.x, false, false, false)))), vec4<u32>(~46446u, var_0.c, _wgslsmith_div_u32(select(4294967295u, u_input.a, var_0.a.x), ~global0.c.c), _wgslsmith_div_u32(abs(u_input.a), ~global3.x))) >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.c, var_0.c), var_0.c, global0.c.c, global3.x), func_4(vec3<f32>(global0.b, -100f, global1.x), func_1(global0.c, Struct_3(vec4<bool>(false, var_0.a.x, true, var_0.a.x), global0.d, Struct_1(vec2<bool>(var_0.a.x, true), global0.a.x, global3.x, vec3<bool>(var_0.d.x, var_0.a.x, false))), vec3<u32>(u_input.a, global3.x, 5350u), vec4<f32>(-1827f, -1281f, global1.x, 656f))))) % vec4<u32>(32u));
    var var_1 = func_2((firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(23254i, -2147483647i, -2147483647i), vec3<i32>(var_0.b, var_0.b, global0.a.x), global0.a)) << (global3.xzy % vec3<u32>(32u))) << (~((global3.wxz & global3.yww) >> (firstTrailingBit(global3.ywz) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), _wgslsmith_div_f32(1676f, _wgslsmith_f_op_f32(f32(-1f) * -522f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.a)), _wgslsmith_clamp_u32(~(~u_input.a << (countOneBits(global0.c.c) % 32u)), var_0.c, 1u));
    var_1 = func_2(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-108f, 1074f, global0.d.a, -2170f) + vec4<f32>(global1.x, -125f, 304f, global0.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-866f, 666f, -1099f, global0.d.a) * vec4<f32>(global1.x, -1005f, 328f, 1692f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a, global1.x, -701f, -1000f)) - vec4<f32>(-991f, 1291f, global1.x, -274f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1000f + global0.b), global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1506f))))), global0.c.c >> (select(4294967295u, abs(global3.x), var_0.a.x) % 32u));
    var var_2 = global0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(-global1.x)), var_2.a, _wgslsmith_f_op_f32(ceil(697f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, global1.x, -417f), _wgslsmith_f_op_vec3_f32(vec3<f32>(803f, var_2.a, -800f) * vec3<f32>(607f, global1.x, global1.x)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-10920i, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-956i), 1i), global0.a.x), _wgslsmith_sub_i32(13310i, _wgslsmith_dot_vec2_i32(global0.a.zy, vec2<i32>(-1i, 74674i)))), 1509f, var_1.a, var_0.b);
}

