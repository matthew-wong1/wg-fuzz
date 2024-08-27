struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    global0 = select(~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 70893u), vec2<u32>(9844u, 1u)), ~arg_0.c.b), 62484u, 1u), vec3<u32>(1u, _wgslsmith_sub_u32(16624u, 1u), abs(arg_0.c.b)), !select(arg_0.b, select(select(vec3<bool>(arg_0.b.x, arg_0.c.a.d.x, false), arg_0.b, arg_0.c.c), arg_0.b, !vec3<bool>(arg_0.b.x, true, true)), arg_0.b));
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.a.zwy, u_input.a.wxx, u_input.a.wyz);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.a.a)) * _wgslsmith_f_op_f32(-2012f + -104f))) - _wgslsmith_f_op_f32(select(arg_0.c.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_0.d)), _wgslsmith_div_f32(arg_0.d, -1676f))), arg_0.b.x && (u_input.b > u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.a.a))), arg_0.c.a.a)))));
    let var_2 = Struct_2(arg_0.c.a, 4294967295u, true);
    var_0 = countOneBits(_wgslsmith_add_vec3_i32(-u_input.a.wyy, countOneBits(vec3<i32>(2147483647i >> (arg_0.c.b % 32u), _wgslsmith_add_i32(var_0.x, 1i), var_0.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(542f * arg_0.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1283f)), _wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(min(var_1, var_1)))) - _wgslsmith_f_op_f32(floor(var_1))) * _wgslsmith_f_op_f32(-var_1)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: bool) -> vec2<i32> {
    global0 = vec3<u32>(select(abs(global0.x), 4294967295u, any(vec4<bool>(true, arg_3, arg_0.d.x, true))) & ~(~arg_2.c.b), _wgslsmith_mult_u32(arg_2.c.b, 20509u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(43046u, 1u, 75049u, 9018u), ~vec4<u32>(arg_2.c.b, 122206u, arg_2.c.b, 36446u)));
    let var_0 = arg_1.x;
    var var_1 = vec2<f32>(256f, 535f);
    global0 = _wgslsmith_add_vec3_u32(~(vec3<u32>(global0.x, 19736u, 33204u) | vec3<u32>(4294967295u, 4294967295u, 537u)) ^ vec3<u32>(104488u, ~22545u, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.c.b | 0u, ~arg_2.c.b, 63713u), vec3<u32>(global0.x, 32988u, 78187u), vec3<u32>(arg_2.c.b, 4294967295u, ~arg_2.c.b))) << (vec3<u32>(4294967295u, reverseBits(~1u), _wgslsmith_mult_u32(4294967295u, global0.x)) % vec3<u32>(32u));
    var_1 = arg_1.wy;
    return u_input.a.zz;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = ~countOneBits(~vec4<u32>(global0.x, ~global0.x, _wgslsmith_sub_u32(global0.x, arg_1), global0.x));
    let var_1 = vec3<bool>(arg_0, true, true);
    var var_2 = Struct_1(-315f, vec2<bool>(true, true), vec2<i32>(0i, u_input.a.x), var_1.zy);
    var_2 = Struct_1(var_2.a, !var_1.yx, -func_4(Struct_1(-1000f, select(vec2<bool>(var_2.d.x, arg_0), var_2.d, vec2<bool>(false, false)), vec2<i32>(u_input.a.x, -939i), vec2<bool>(false, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_2.c.x, var_1, Struct_2(Struct_1(var_2.a, var_2.d, vec2<i32>(u_input.b, -2147483647i), vec2<bool>(var_1.x, var_2.d.x)), arg_1, false), 649f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(610f, var_2.a, 120f, arg_2), vec4<f32>(750f, -184f, -408f, var_2.a)))), Struct_3(~1i, select(vec3<bool>(true, true, var_2.d.x), vec3<bool>(arg_0, arg_0, true), false), Struct_2(Struct_1(1000f, vec2<bool>(true, false), vec2<i32>(arg_3.x, var_2.c.x), var_2.d), global0.x, var_2.d.x), _wgslsmith_f_op_f32(arg_2 + var_2.a)), var_1.x), vec2<bool>(_wgslsmith_div_f32(-819f, -1490f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), all(vec3<bool>(true, true, true))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1841f, _wgslsmith_f_op_f32(arg_2 + -1180f), true)), var_2.a))), var_2.d, ~(-max(var_2.c, vec2<i32>(var_2.c.x, 12204i))), vec2<bool>(arg_0, var_0.x > _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x) << (vec2<u32>(var_0.x, 1u) % vec2<u32>(32u)), vec2<u32>(arg_1, var_0.x))));
    return Struct_2(Struct_1(429f, var_1.yz, ~u_input.a.yx & arg_3.yx, select(select(var_1.zz, vec2<bool>(true, true), true == var_2.d.x), select(!vec2<bool>(var_1.x, arg_0), select(var_1.yz, var_2.b, vec2<bool>(var_1.x, var_1.x)), !var_2.b.x), !(!var_2.b))), 14933u, true);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, abs(65314u)), 1u), ~arg_2.x | 0u, _wgslsmith_add_u32(global0.x, arg_2.x));
    let var_0 = func_2(true, global0.x, -978f, u_input.a.xwz);
    global0 = vec3<u32>(15032u, ~(~(~(~0u))), 32478u);
    let var_1 = var_0;
    global0 = select(countOneBits(_wgslsmith_mod_vec3_u32(min(~vec3<u32>(var_1.b, 0u, var_0.b), vec3<u32>(global0.x, 0u, 1u) ^ vec3<u32>(arg_2.x, global0.x, 4294967295u)), ~countOneBits(vec3<u32>(var_0.b, var_0.b, 8703u)))), select(~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(48029u, arg_2.x, 82u), vec3<u32>(var_0.b, 0u, arg_2.x), vec3<u32>(46452u, var_0.b, 0u)), vec3<u32>(global0.x, global0.x, 0u) | vec3<u32>(38240u, var_0.b, 4294967295u), true), vec3<u32>(arg_2.x, var_0.b, reverseBits(~0u)), !(!select(vec3<bool>(var_0.c, false, false), vec3<bool>(false, false, false), vec3<bool>(var_1.c, false, var_1.a.b.x)))), select(select(!select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(true, false, var_1.a.b.x), vec3<bool>(var_1.c, var_0.c, false)), !vec3<bool>(arg_1.x, false, var_1.a.b.x), select(select(vec3<bool>(var_1.a.b.x, arg_1.x, true), vec3<bool>(var_1.c, true, true), var_1.a.d.x), !vec3<bool>(true, var_1.c, true), select(vec3<bool>(var_1.a.b.x, true, true), vec3<bool>(false, var_1.c, var_0.a.b.x), vec3<bool>(true, true, var_0.a.d.x)))), select(vec3<bool>(true, true, true), !(!vec3<bool>(true, arg_1.x, false)), true), vec3<bool>(_wgslsmith_sub_u32(0u, var_0.b) >= (var_0.b & var_1.b), true, true)));
    return var_0.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_3 {
    return Struct_3(min(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-49855i, 1i), 8999i)), -max(45994i, _wgslsmith_div_i32(2147483647i, 2147483647i))), vec3<bool>(arg_1.c, false && (2147483647i >= func_1(vec3<f32>(arg_0.x, arg_1.a.a, arg_0.x), vec2<bool>(false, arg_1.a.b.x), vec2<u32>(global0.x, 0u)).c.x), ~1u >= arg_1.b), arg_1, arg_0.x);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.d, -832f)), _wgslsmith_f_op_f32(select(1186f, -758f, arg_0.b.x)))), _wgslsmith_f_op_f32(-arg_0.d)))), arg_0.c, select(global0.yx, vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(1u), abs(21556u)), firstLeadingBit(global0.x)), arg_0.b.zy));
    var var_1 = _wgslsmith_clamp_i32(arg_2.x, var_0.c.a.c.x, _wgslsmith_sub_i32(-46294i, -2147483647i));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-62i, arg_0.c.a.c.x), abs(max(-var_0.c.a.c, vec2<i32>(-2147483647i, var_0.c.a.c.x))));
    var_1 = -1i;
    var var_3 = ~var_0.c.a.c;
    return func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, var_0.d) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, var_0.c.a.a) - vec2<f32>(var_0.d, 426f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.c.a.a) + vec2<f32>(-1515f, arg_0.c.a.a)), !var_0.b.xy))))), func_2(var_0.c.c, 88820u, _wgslsmith_f_op_f32(796f * 1653f), u_input.a.zxx), vec2<u32>(4294967295u, global0.x & arg_1)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.x, 4294967295u, 0u) & _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(2831u, global0.x, 58336u)), firstTrailingBit(vec3<u32>(global0.x, global0.x, global0.x))) >> (~_wgslsmith_div_vec3_u32(select(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false)), abs(vec3<u32>(global0.x, global0.x, 23944u))) % vec3<u32>(32u)));
    var var_0 = vec2<i32>(max(-(~_wgslsmith_add_i32(-2147483647i, u_input.b)), -(_wgslsmith_dot_vec3_i32(u_input.a.xwx, u_input.a.xxx) & _wgslsmith_mod_i32(2147483647i, u_input.b))), -2147483647i);
    var var_1 = func_6(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(f32(-1f) * -631f))), Struct_2(func_1(vec3<f32>(-530f, 350f, 676f), vec2<bool>(false, true), vec2<u32>(global0.x, global0.x)), firstTrailingBit(22734u ^ global0.x), true), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, global0.x)), ~vec2<u32>(global0.x, global0.x), reverseBits(global0.xx)), global0.yy, vec2<u32>(reverseBits(global0.x), global0.x))), global0.x, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, -1i) << (vec4<u32>(52579u, global0.x, global0.x, global0.x) % vec4<u32>(32u)), u_input.a), ~338i << (_wgslsmith_add_u32(global0.x, global0.x) % 32u)) & vec2<i32>(-15195i, ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, 0i, 40279i, 2147483647i))));
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(1655f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.a.a, var_1.a.a)), _wgslsmith_f_op_f32(var_1.a.a + 957f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-142f + 714f), func_5(vec2<f32>(522f, var_1.a.a), Struct_2(Struct_1(-1716f, var_1.a.b, vec2<i32>(var_0.x, 2147483647i), var_1.a.b), global0.x, var_1.a.d.x), ~vec2<u32>(global0.x, global0.x)).c.a.d, ~u_input.a.xw << (global0.xz % vec2<u32>(32u)), func_2(true, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 43u), vec3<u32>(var_1.b, 1u, var_1.b)), _wgslsmith_f_op_f32(1599f + var_1.a.a), u_input.a.yxx).a.d), ~_wgslsmith_dot_vec3_u32(vec3<u32>(53735u, 32697u, 5449u), vec3<u32>(var_1.b, global0.x, 18880u) & vec3<u32>(22840u, global0.x, var_1.b)), true), _wgslsmith_add_vec2_u32(global0.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(global0.zy, global0.zz) << (global0.x % 32u), global0.x | global0.x))).c;
    global0 = _wgslsmith_div_vec3_u32(select(~vec3<u32>(1u, var_1.b, 27815u), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.yx, vec2<u32>(global0.x, var_2.b), vec2<u32>(var_1.b, 1577u)), vec2<u32>(4294967295u, 1u)), abs(global0.x) & _wgslsmith_div_u32(4294967295u, var_1.b), 37914u), !vec3<bool>(true, var_2.c & var_2.c, var_2.a.d.x)), ~(firstLeadingBit(vec3<u32>(30328u, var_2.b, 8837u)) >> (vec3<u32>(min(var_1.b, var_1.b), _wgslsmith_add_u32(1u, 8416u), 6139u) % vec3<u32>(32u))));
    let var_3 = Struct_1(287f, var_2.a.b, vec2<i32>(min(~abs(var_2.a.c.x), u_input.b), func_6(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, 1000f)), func_6(Struct_3(var_0.x, vec3<bool>(var_1.a.b.x, false, var_2.c), Struct_2(var_2.a, 1u, var_1.c), var_1.a.a), var_1.b, vec2<i32>(u_input.b, 42821i)), global0.xx), global0.x, reverseBits(vec2<i32>(1i, 2147483647i) & var_1.a.c)).a.c.x), vec2<bool>(-func_5(vec2<f32>(-646f, var_2.a.a), Struct_2(Struct_1(var_1.a.a, vec2<bool>(var_2.c, true), vec2<i32>(var_1.a.c.x, -1i), vec2<bool>(var_2.c, var_1.c)), 1u, var_1.c), vec2<u32>(28907u, var_1.b)).a > _wgslsmith_clamp_i32(8054i, var_2.a.c.x << (var_2.b % 32u), var_2.a.c.x), false));
    let var_4 = select(vec4<bool>(!(firstTrailingBit(u_input.b) == -2147483647i), var_1.a.b.x, !func_6(func_5(vec2<f32>(var_3.a, -242f), Struct_2(var_3, global0.x, true), global0.yz), var_2.b << (var_2.b % 32u), var_2.a.c).a.d.x, !var_1.c), !vec4<bool>(!(var_2.b <= global0.x), true | (true && var_2.c), !(!var_1.a.d.x), true && (var_2.a.d.x || var_2.a.b.x)), !select(!(!vec4<bool>(var_2.c, false, var_1.a.b.x, var_2.c)), !(!vec4<bool>(var_3.b.x, var_1.c, true, var_1.a.d.x)), select(!vec4<bool>(false, var_1.a.b.x, true, false), !vec4<bool>(false, var_1.c, var_3.d.x, var_2.a.b.x), vec4<bool>(false, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, -1000f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -803f))), var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, var_1.a.a)), var_1.a.a, var_4.x))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, var_3.a, var_2.a.a, -1887f)), vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a - var_2.a.a), var_2.a.a, _wgslsmith_f_op_f32(106f - var_1.a.a), var_3.a)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a * -289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1251f) + _wgslsmith_f_op_f32(f32(-1f) * -130f)), var_3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -674f), 1160f, _wgslsmith_f_op_f32(step(689f, var_3.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a, var_3.a, 1029f)))))), vec2<i32>(var_2.a.c.x, var_3.c.x));
}

