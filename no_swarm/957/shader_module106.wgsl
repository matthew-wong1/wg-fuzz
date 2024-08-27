struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_div_u32(min(arg_1.x, abs(arg_1.x) & ~137u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(20488u, u_input.c.x, arg_1.x), u_input.c), vec3<u32>(1u, 4294967295u, arg_1.x) << (vec3<u32>(1u, 51218u, u_input.c.x) % vec3<u32>(32u)))), ~vec3<i32>(u_input.a.x, u_input.a.x >> (1u % 32u), 22718i), Struct_2(Struct_1(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), vec2<f32>(-390f, arg_2), arg_0.x & arg_0.x)), 1843f, abs(~u_input.a.x)), Struct_1(select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, true), !vec3<bool>(true, arg_0.x, arg_0.x)), vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(500f, 2664f)))), -2147483647i), ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, u_input.c.x, u_input.c.x), vec4<u32>(32896u, u_input.c.x, arg_1.x, 0u)), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, arg_1.x)), 4294967295u, max(u_input.c.x, abs(1u))), Struct_1(!(!vec3<bool>(arg_0.x, true, arg_0.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -221f) - vec2<f32>(arg_2, 1329f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1441f, arg_2)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), 855i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 473f, -338f, 1636f)))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-400f)) + _wgslsmith_f_op_f32(-var_0.c.b.c))), var_0.d.b.x);
    var var_2 = var_0.c.a;
    var_2 = var_0.d;
    var var_3 = max(arg_1.x, ~max(1u, arg_1.x << (30881u % 32u))) >> (u_input.c.x % 32u);
    return min(_wgslsmith_div_u32(min(arg_1.x, u_input.c.x), u_input.c.x) ^ max(~28801u, ~39722u), max(firstTrailingBit(~_wgslsmith_dot_vec4_u32(var_0.c.c, var_0.c.c)), 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(~firstLeadingBit(0u) & abs(max(u_input.c.x, func_3(vec2<bool>(arg_1.a.x, true), u_input.c.yz, 1719f))), vec3<i32>(0i, ~u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(select(50469i, 15119i, true), ~42079i), 13314i)), Struct_2(Struct_1(select(vec3<bool>(arg_1.a.x, arg_1.a.x, true), !vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 304f) - arg_1.b), arg_1.b), _wgslsmith_f_op_f32(floor(-582f)), -(u_input.a.x << (76314u % 32u))), arg_1, ~firstLeadingBit(vec4<u32>(18425u, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x << (~(~0u) % 32u), u_input.c.x), Struct_1(vec3<bool>(arg_1.a.x, all(vec4<bool>(arg_1.a.x, true, arg_1.a.x, true)), !arg_1.a.x), vec2<f32>(_wgslsmith_f_op_f32(-2059f + -309f), arg_0.x), 1482f, 55857i), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(min(-165f, _wgslsmith_div_f32(-1056f, arg_1.c))), _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)) * arg_0.x)), arg_0.x));
    let var_1 = var_0.d.a.x;
    let var_2 = var_1;
    let var_3 = var_0.c;
    let var_4 = Struct_1(!arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.e.x)), arg_1.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-534f, -1130f), var_0.c.b.b))))), _wgslsmith_f_op_f32(abs(arg_1.c)), countOneBits(u_input.a.x ^ 1i));
    return -2325f;
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> vec4<u32> {
    let var_0 = firstTrailingBit(-u_input.b);
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_f_op_f32(func_2(arg_0.e, Struct_1(arg_0.c.b.a, arg_0.d.b, -1139f, u_input.a.x))))) * _wgslsmith_f_op_f32(115f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(407f))))));
    var var_3 = arg_2;
    var_3 = firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, ~87978u), u_input.c.x));
    return arg_0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!any(vec3<bool>(true, true, true)));
    var var_1 = ~select(select(~vec4<u32>(u_input.c.x, 16870u, u_input.c.x, 4294967295u), ~(~vec4<u32>(0u, 0u, 72849u, u_input.c.x)), !select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false))), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(4294967295u, 1u, 15572u, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 2658u, 4294967295u, 16444u)), func_1(Struct_3(u_input.c.x, u_input.a.wxy, Struct_2(Struct_1(vec3<bool>(var_0, var_0, var_0), vec2<f32>(-2011f, 156f), -146f, u_input.b), Struct_1(vec3<bool>(true, var_0, false), vec2<f32>(386f, 1187f), -661f, 1i), vec4<u32>(u_input.c.x, 4131u, u_input.c.x, u_input.c.x), 64226u, u_input.c.x), Struct_1(vec3<bool>(var_0, true, var_0), vec2<f32>(2305f, 1130f), 1152f, 56932i), vec4<f32>(1069f, 642f, 866f, 310f)), var_0, u_input.c.x)), ~(vec4<u32>(u_input.c.x, u_input.c.x, 46338u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), !(!select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_0, var_0, false, false), var_0)));
    var_1 = abs(min(~firstLeadingBit(firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, u_input.c.x, var_1.x))), vec4<u32>(abs(4294967295u) << (_wgslsmith_mod_u32(u_input.c.x, var_1.x) % 32u), ~firstTrailingBit(u_input.c.x), countOneBits(4294967295u), 1u)));
    let var_2 = !all(!select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), false));
    var_1 = countOneBits(~vec4<u32>(u_input.c.x, ~(u_input.c.x & u_input.c.x), ~countOneBits(var_1.x), var_1.x));
    let var_3 = Struct_1(!(!select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_2, false), vec3<bool>(false, var_0, var_2)), vec3<bool>(true, true, true), !var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-792f, 1554f) * vec2<f32>(1996f, 1000f)))) * vec2<f32>(605f, _wgslsmith_f_op_f32(abs(1506f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(484f, -1000f), vec2<f32>(465f, -454f), vec2<bool>(var_2, var_2))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(663f, -1569f)))), vec2<f32>(-303f, -277f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1454f) * _wgslsmith_div_f32(-879f, 489f)))) - -1000f), -u_input.a.x);
    var_1 = _wgslsmith_add_vec4_u32(select(reverseBits(abs(vec4<u32>(u_input.c.x, var_1.x, u_input.c.x, 0u))) << (~max(vec4<u32>(0u, 1u, var_1.x, 32101u), vec4<u32>(4294967295u, u_input.c.x, 40631u, var_1.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(var_1.x, u_input.c.x), u_input.c.x | 4294967295u, countOneBits(u_input.c.x), 2187u) & vec4<u32>(54356u, ~1u, ~var_1.x, _wgslsmith_mod_u32(u_input.c.x, 75281u)), !(!vec4<bool>(true, var_2, true, true))), ~(~(~min(vec4<u32>(var_1.x, 27862u, var_1.x, var_1.x), vec4<u32>(31642u, 8316u, var_1.x, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(u_input.a, ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_3.d, 10580i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 2147483647i, var_3.d, 30071i))));
}

