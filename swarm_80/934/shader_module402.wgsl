struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(52470i, 36042i, 34044i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_i32(2147483647i, i32(-1i) * -18405i);
    let var_1 = vec2<bool>(false, any(select(vec4<bool>(any(vec4<bool>(true, arg_2, arg_2, true)), any(vec2<bool>(arg_2, arg_2)), true, !arg_2), select(vec4<bool>(arg_2, arg_2, false, false), !vec4<bool>(false, true, arg_2, false), false), 373f <= _wgslsmith_f_op_f32(ceil(-1000f)))));
    var var_2 = -10423i;
    let var_3 = Struct_1(global0.zyx << (vec3<u32>(global0.x, u_input.a, _wgslsmith_div_u32(~arg_1, _wgslsmith_mult_u32(4294967295u, u_input.b))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(236f, -854f, _wgslsmith_f_op_f32(round(907f)), _wgslsmith_f_op_f32(-305f * -1659f)))), _wgslsmith_div_vec4_f32(vec4<f32>(546f, -1265f, _wgslsmith_f_op_f32(-1000f * 1734f), -1649f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, -1000f, 1813f, 1000f) - vec4<f32>(174f, -841f, -353f, -584f)))), !vec4<bool>(true, true, global0.x != u_input.b, any(vec3<bool>(arg_2, true, false))))), var_1, arg_0.zyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-603f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(161f - 157f))), false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-407f - -888f), _wgslsmith_div_f32(551f, 1466f))))));
    global1 = arg_0.zyz;
    return vec4<bool>(true, false, all(vec3<bool>(false, false, !arg_2)), any(select(vec3<bool>(arg_2, !var_3.c.x, any(vec2<bool>(false, false))), vec3<bool>(24754i <= global1.x, var_1.x, arg_2), vec3<bool>(var_3.c.x, true, !arg_2))));
}

fn func_2() -> vec4<f32> {
    var var_0 = !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) & (_wgslsmith_f_op_f32(f32(-1f) * -1234f) < _wgslsmith_f_op_f32(floor(-201f))), true, true, all(vec4<bool>(true, true, true, true)));
    global0 = vec4<u32>(~u_input.a, u_input.d.x ^ 1u, 50920u, 4294967295u);
    let var_1 = select(select(vec4<bool>(var_0.x, true, !(!var_0.x), true), select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, false, true)), select(!vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false), true), vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(false, true, any(var_0.zx), !var_0.x)), select(select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x || var_0.x), func_3(~vec4<i32>(u_input.c, u_input.c, 0i, 0i), ~2983u, any(vec2<bool>(true, var_0.x))), select(vec4<bool>(var_0.x, false, var_0.x, false), func_3(vec4<i32>(0i, -2147483647i, 0i, global1.x), global0.x, false), vec4<bool>(var_0.x, var_0.x, true, false)))), vec4<bool>(all(!(!vec2<bool>(var_0.x, var_0.x))), false, true, all(vec2<bool>(true, true)) && true), vec4<bool>(-(i32(-1i) * -7090i) >= -global1.x, var_0.x || true, all(var_0.wzx), true));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global0.zyw, vec3<u32>(u_input.d.x, u_input.b, 25495u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(2020u, global0.x, 0u), global0.wxy, vec3<u32>(global0.x, 52544u, global0.x))) & global0.yzx, ~_wgslsmith_add_vec3_u32(global0.wzx, global0.zzw) << (firstTrailingBit(global0.xxx) % vec3<u32>(32u)), global0.yzz) & vec3<u32>(4294967295u, u_input.d.x, global0.x);
    var var_3 = global0.xy;
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(693f * -1000f), 1000f))), -1997f, -781f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f - var_0.x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1416f))) * arg_0.x), vec3<u32>(select(min(1u, _wgslsmith_div_u32(global0.x, u_input.a)), global0.x, all(vec4<bool>(true, true, false, true)) == all(vec4<bool>(true, true, false, false))), ~global0.x, global0.x), -951f, Struct_1(vec3<u32>(0u, global0.x | u_input.b, _wgslsmith_mult_u32(0u, 4294967295u)) >> (vec3<u32>(abs(27951u), ~global0.x, global0.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -877f, 663f, -353f), vec4<f32>(1291f, arg_0.x, 833f, arg_0.x), vec4<bool>(true, false, false, false)))), vec2<bool>(true, true), firstTrailingBit(vec3<i32>(1i, 2147483647i, 2147483647i) & arg_1) << (vec3<u32>(0u >> (u_input.b % 32u), 4294967295u, u_input.d.x) % vec3<u32>(32u)), var_0.x), var_0.wyy);
    var var_3 = var_2;
    return select(func_3(_wgslsmith_add_vec4_i32(~max(vec4<i32>(var_2.d.d.x, var_2.d.d.x, global1.x, 36806i), vec4<i32>(-2147483647i, -1i, -31164i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(68040i, 0i, 1i, var_3.d.d.x)), _wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~abs(u_input.d.x)), any(var_2.d.c)).yx, var_2.d.c, (var_2.a && select(select(var_3.d.c.x, var_3.a, var_3.a), true, !var_3.d.c.x)) != all(!select(vec3<bool>(false, var_2.d.c.x, var_3.a), vec3<bool>(var_3.a, true, true), vec3<bool>(false, true, var_2.d.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<i32> {
    let var_0 = !(!(!(!(!vec3<bool>(false, arg_0.c.x, true)))));
    global0 = firstLeadingBit(vec4<u32>(u_input.a, ~0u, u_input.a, arg_0.a.x));
    let var_1 = Struct_4(firstTrailingBit(0u << (global0.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.xyz), _wgslsmith_f_op_vec3_f32(arg_0.b.yxz * arg_0.b.wxw))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.zzz + _wgslsmith_f_op_vec3_f32(arg_0.b.zzz - arg_0.b.yzy)))));
    global1 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(arg_1, arg_1), 1i), arg_0.d.x, -(arg_0.d.x << (0u % 32u)) & (0i >> ((u_input.a & 4294967295u) % 32u))));
    return ~vec4<i32>(1i, max(abs(global1.x), 21431i), _wgslsmith_div_i32(-u_input.c, select(2147483647i, -1086i, true)), ~(-arg_0.d.x)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_1.a, var_1.a, global0.x, 3997u), ~vec4<u32>(global0.x, u_input.b, 1u, arg_0.a.x)), firstLeadingBit(vec4<u32>(var_1.a, global0.x, var_1.a, 74892u) & vec4<u32>(61787u, 8777u, 0u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, arg_0.a.x, global0.x, var_1.a), vec4<u32>(u_input.a, arg_0.a.x, 0u, 21981u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(11054u, 9441u, arg_0.a.x, arg_0.a.x), vec4<u32>(18318u, arg_0.a.x, 30590u, var_1.a)) % vec4<u32>(32u))), vec4<u32>(u_input.d.x, 24532u, 23242u, 3380u)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(abs(_wgslsmith_mod_u32(0u, u_input.b)) >> (firstLeadingBit(global0.x) % 32u), 69117u, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, global0.x), global0.x), u_input.b);
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(min(func_4(Struct_1(~global0.xxz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-254f, -1000f, 1303f, 665f)), func_1(vec2<f32>(732f, -1043f), vec3<i32>(global1.x, global1.x, 2147483647i)), reverseBits(vec3<i32>(global1.x, 57099i, global1.x)), _wgslsmith_f_op_f32(abs(-1000f))), reverseBits(vec4<i32>(global1.x, 2857i, global1.x, 725i) >> (vec4<u32>(45082u, 4294967295u, 4294967295u, global0.x) % vec4<u32>(32u)))), ~vec4<i32>(_wgslsmith_div_i32(-1i, global1.x), i32(-1i) * -1i, global1.x, global1.x)), _wgslsmith_dot_vec3_u32(global0.wyx, global0.wwx) | global0.x, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 419f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-826f, 1694f)), _wgslsmith_f_op_f32(round(199f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1023f) - _wgslsmith_f_op_f32(trunc(-1024f))))))));
}

