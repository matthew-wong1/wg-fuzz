struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec4<f32>(-911f, 981f, 1082f, -1227f), vec3<u32>(92838u, 6886u, 4294967295u));

var<private> global2: vec2<i32> = vec2<i32>(-51686i, 1i);

var<private> global3: vec3<u32> = vec3<u32>(8688u, 1u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = var_0;
    global1 = var_0;
    let var_2 = var_0;
    let var_3 = 36321u;
    return arg_2.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    global1 = Struct_1(vec3<bool>(true, global1.a.x, any(func_3(~vec3<u32>(20571u, 5022u, global1.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global2.x, -2147483647i), vec3<i32>(0i, arg_1, u_input.b)), Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), arg_0, u_input.d.yyw), vec2<i32>(u_input.b, 20953i) ^ vec2<i32>(u_input.b, 52480i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1053f) - arg_0.x), _wgslsmith_f_op_f32(-245f + arg_0.x), _wgslsmith_f_op_f32(ceil(global1.b.x)), -995f)), vec3<u32>(global1.c.x, _wgslsmith_add_u32(abs(global3.x), ~1u), global3.x) << (global1.c % vec3<u32>(32u)));
    var var_0 = Struct_1(!vec3<bool>(true, all(global1.a.xx), !(!global1.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1808f, -878f, global1.b.x, 396f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1080f, -1412f, -481f))), _wgslsmith_f_op_vec4_f32(ceil(arg_0))) + _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(arg_0 - arg_0))), ~(~_wgslsmith_div_vec3_u32(global1.c, max(global1.c, vec3<u32>(24671u, u_input.a, global1.c.x)))));
    global1 = Struct_1(vec3<bool>(func_3(max(~u_input.d.xww, vec3<u32>(var_0.c.x, global1.c.x, 26390u)), -2147483647i << (_wgslsmith_sub_u32(global1.c.x, global1.c.x) % 32u), Struct_1(vec3<bool>(true, false, global1.a.x), _wgslsmith_f_op_vec4_f32(-var_0.b), vec3<u32>(4294967295u, global3.x, 23678u)), reverseBits(select(vec2<i32>(37105i, -76616i), vec2<i32>(2147483647i, 13434i), global1.a.yz))).x, all(select(global1.a, vec3<bool>(false, var_0.a.x, false), true)) | !select(global1.a.x, global1.a.x, global1.a.x), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.b))), ~vec3<u32>(var_0.c.x | u_input.a, ~u_input.d.x, 46012u));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b), vec4<f32>(-993f, 2807f, -590f, arg_0.x)))), u_input.d.xxx);
    var_0 = Struct_1(vec3<bool>(_wgslsmith_clamp_i32(global2.x, -36014i, i32(-1i) * -2576i) > firstTrailingBit(1i), var_0.a.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-350f, -119f, var_0.b.x, arg_0.x)) - _wgslsmith_f_op_vec4_f32(global1.b * var_0.b)))), vec3<u32>(global3.x, select(1u, 12656u, !global1.a.x), 1u));
    return func_3(~(~_wgslsmith_add_vec3_u32(vec3<u32>(97021u, 4294967295u, 4294967295u) | vec3<u32>(global3.x, global3.x, 4294967295u), global1.c)), firstLeadingBit(_wgslsmith_add_i32(u_input.b, global2.x)), Struct_1(select(global1.a, select(var_0.a, !vec3<bool>(global1.a.x, false, var_0.a.x), !global1.a.x), true), global1.b, ~vec3<u32>(1u, u_input.a ^ var_0.c.x, ~global1.c.x)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, u_input.b), ~vec2<i32>(3125i, u_input.b)) & vec2<i32>(global2.x, ~u_input.b))).xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d.xyz, vec3<u32>(_wgslsmith_clamp_u32(101727u, 85607u, 1u), 1u, abs(0u)) & global1.c, global1.c), max(vec3<u32>(global3.x, ~4294967295u, firstTrailingBit(u_input.a & 4294967295u)), global1.c));
    var var_1 = ~global1.c.x >> (global1.c.x % 32u);
    var_1 = _wgslsmith_mod_u32(~(~(~(~global1.c.x))), global3.x);
    global1 = Struct_1(vec3<bool>(true && global1.a.x, false, any(!global1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1030f + _wgslsmith_f_op_f32(-global1.b.x)), 1f, -226f, -549f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(global1.b.x, -692f, 483f, global1.b.x))))), _wgslsmith_add_vec3_u32(u_input.d.wyx, _wgslsmith_sub_vec3_u32(max(~global1.c, vec3<u32>(arg_1, 44059u, u_input.e)), ~max(vec3<u32>(global3.x, global1.c.x, global1.c.x), vec3<u32>(global1.c.x, global1.c.x, 51361u)))));
    global1 = Struct_1(select(!vec3<bool>(true, all(vec4<bool>(true, arg_0.x, true, false)), false), vec3<bool>(!global1.a.x, all(select(global1.a, vec3<bool>(false, global1.a.x, false), global1.a.x)), func_2(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-50569i, global2.x))).x), ~_wgslsmith_sub_i32(global2.x, global2.x) <= ~global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))), global1.b.x, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -1250f))), ~vec3<u32>(global3.x, reverseBits(60936u), u_input.d.x) << (vec3<u32>(_wgslsmith_div_u32(u_input.d.x, ~global3.x), 1u, global1.c.x) % vec3<u32>(32u)));
    return vec3<bool>(global1.a.x, arg_0.x, !((-40218i ^ (0i << (arg_1 % 32u))) >= _wgslsmith_mod_i32(u_input.b, 2147483647i)));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(max(1712f, _wgslsmith_f_op_f32(-1173f * global1.b.x))), _wgslsmith_f_op_f32(-672f * 1000f), _wgslsmith_f_op_f32(exp2(global1.b.x)), 1534f);
    global2 = countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_1, _wgslsmith_clamp_vec2_i32(arg_1, vec2<i32>(arg_2, 27130i), vec2<i32>(u_input.b, u_input.b))), 1i)) ^ _wgslsmith_mult_vec2_i32(arg_1, ~arg_1);
    var var_1 = Struct_1(func_4(select(global1.a.zz, select(vec2<bool>(false, global1.a.x), func_2(vec4<f32>(global1.b.x, -454f, -1139f, -1000f), global2.x), arg_3), true), _wgslsmith_sub_u32(global3.x >> (19365u % 32u), global3.x)), var_0, ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global1.c.x, 1u, global3.x), vec3<u32>(0u, global3.x, 1u)), global1.c));
    global0 = array<vec3<f32>, 12>();
    let var_2 = reverseBits(global3.x);
    return Struct_1(vec3<bool>(func_2(var_0, _wgslsmith_div_i32(-1i, arg_2 | 2147483647i)).x, false, true), _wgslsmith_f_op_vec4_f32(var_1.b * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -946f, 1000f, var_1.b.x), var_0, global1.a.x)) * vec4<f32>(735f, 468f, 826f, 523f))))), ~u_input.d.yzw);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = select(select(!(!select(vec4<bool>(arg_1.a.x, global1.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_1.a.x, global1.a.x, true, arg_1.a.x), arg_1.a.x)), select(!(!vec4<bool>(arg_1.a.x, arg_2.a.x, arg_2.a.x, arg_1.a.x)), select(select(vec4<bool>(false, global1.a.x, arg_1.a.x, global1.a.x), vec4<bool>(false, arg_1.a.x, true, false), vec4<bool>(global1.a.x, false, true, true)), vec4<bool>(arg_2.a.x, true, arg_2.a.x, global1.a.x), true), vec4<bool>(true, arg_1.a.x && false, any(arg_1.a.zy), arg_1.a.x)), !vec4<bool>(global1.a.x, true, arg_2.a.x | arg_2.a.x, false)), vec4<bool>(!((0u >> (arg_2.c.x % 32u)) <= 24572u), firstTrailingBit(global2.x | -2147483647i) == abs(countOneBits(-20231i)), any(vec2<bool>(true, !arg_2.a.x)), (1528i << (arg_2.c.x % 32u)) != (global2.x & u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-294f - arg_2.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x)))) != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(-1334f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(581f, 1000f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_2.b.wxz);
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(arg_1.b.zzw));
    global3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(abs(global3.x), _wgslsmith_sub_u32(arg_1.c.x, global1.c.x)) << (arg_1.c.x % 32u), ~_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.e), arg_2.c);
    var var_3 = vec3<bool>(true | (all(!arg_2.a) | func_1(!arg_2.a.x, -vec2<i32>(u_input.b, 2147483647i), -u_input.b, vec2<bool>(arg_2.a.x, global1.a.x)).a.x), true && arg_1.a.x, true);
    return vec3<u32>(~global1.c.x, ~arg_1.c.x, arg_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~func_5(vec2<u32>(~global1.c.x, ~abs(0u)), func_1(true, vec2<i32>(global2.x, 12308i), -(global2.x & -2147483647i), global1.a.zy), func_1(func_4(vec2<bool>(true, true), u_input.a).x, _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.b), vec2<i32>(-50227i, global2.x) | vec2<i32>(0i, global2.x)), -2147483647i, global1.a.xz));
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var var_0 = 1u;
    global0 = array<vec3<f32>, 12>();
    var var_1 = vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(117f, -393f)))) * 788f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-737f)) - _wgslsmith_f_op_f32(737f - -813f)), global1.b.x), global1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d.zwy, u_input.d.yzx), u_input.d.xww | u_input.d.wwz)), 48731u, ~_wgslsmith_mult_u32(~7174u, ~global3.x), (~global3.x << (~69619u % 32u)) >> (24739u % 32u)), select(u_input.b, countOneBits(max(-u_input.b, global2.x ^ -2147483647i)), global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f - global1.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f))), abs(-(~(vec2<i32>(global2.x, global2.x) | vec2<i32>(u_input.b, u_input.b)))));
}

