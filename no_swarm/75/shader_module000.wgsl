struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    var var_0 = vec4<u32>(1u, 1u, _wgslsmith_add_u32(~(arg_1.x << (arg_1.x % 32u)), 4294967295u), select(~countOneBits(reverseBits(4294967295u)), 1u, select(!(!arg_2), false, !arg_2 == !arg_2)));
    var_0 = ~(~(~(~(~vec4<u32>(u_input.b, 1u, 4294967295u, arg_1.x)))));
    var var_1 = arg_0.yy;
    global1 = 16723u;
    let var_2 = -(-reverseBits(vec3<i32>(u_input.a, -2147483647i, 0i)) << (arg_1 % vec3<u32>(32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f), 1348f);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_u32(select(~(~vec4<u32>(4294967295u, 57456u, u_input.c, 22222u)), countOneBits(vec4<u32>(u_input.c, 4294967295u, u_input.b, 21010u)) & select(vec4<u32>(u_input.b, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true)), abs(vec4<u32>(u_input.c, min(4294967295u, 6681u), u_input.c, 1u))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), !any(vec3<bool>(true, true, true))), arg_0);
    var var_1 = Struct_2(select(select(!(!vec2<bool>(var_0.b.x, var_0.b.x)), var_0.b, !select(vec2<bool>(true, true), var_0.b, var_0.b)), var_0.b, var_0.b), select(select(select(select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), vec4<bool>(true, var_0.b.x, true, false)), vec4<bool>(false, var_0.b.x, true, var_0.b.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.b.x, var_0.b.x, true), false)), !(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), true), select(select(vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(var_0.b.x, true, false, var_0.b.x), true || var_0.b.x), select(select(vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), var_0.b.x), vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.b.x, var_0.b.x, true)), select(!vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), select(vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x | false)), all(select(select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b, var_0.b), vec2<bool>(var_0.b.x, var_0.b.x), true))), true, Struct_1(vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), 89095u, ~4294967295u, var_0.a.x), var_0.b, _wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -821f)))));
    let var_2 = Struct_2(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(var_1.c, var_1.a.x, var_1.b.x))), !select(select(vec2<bool>(var_0.b.x, true), var_0.b, false), select(vec2<bool>(true, false), vec2<bool>(var_1.a.x, var_1.b.x), var_0.b.x), var_1.b.yz), vec2<bool>(all(vec2<bool>(false, var_1.c)), true)), !select(vec4<bool>(!var_1.c, true, true, 4294967295u >= var_0.a.x), !var_1.b, !var_1.b), var_1.a.x, Struct_1(vec4<u32>(firstTrailingBit(abs(u_input.b)), var_1.d.a.x, ~firstTrailingBit(u_input.c), ~_wgslsmith_mult_u32(var_1.d.a.x, 21497u)), var_0.b, 1995f));
    global0 = ~29561u;
    let var_3 = var_0.a.yz;
    return ~(i32(-1i) * -2147483647i);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    global1 = abs(_wgslsmith_dot_vec4_u32(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(43363u, u_input.b, u_input.b, u_input.c), vec4<u32>(u_input.b, 25124u, 1u, 1u), vec4<u32>(u_input.b, 4294967295u, 1u, 51845u)), vec4<u32>(u_input.b, _wgslsmith_add_u32(11212u, u_input.c), 1u, _wgslsmith_sub_u32(1u, u_input.b)), !vec4<bool>(false, false, arg_1.x, true)), reverseBits(select(vec4<u32>(u_input.b, 0u, 50914u, u_input.b), vec4<u32>(0u, u_input.c, 63431u, u_input.b), arg_1.x)) << (firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 4565u, 871u)) % vec4<u32>(32u))));
    var var_0 = abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a | u_input.a, _wgslsmith_clamp_i32(2147483647i, 0i, -14084i), ~8798i, u_input.a << (70978u % 32u)), vec4<i32>(firstTrailingBit(u_input.a), u_input.a, _wgslsmith_mod_i32(u_input.a, 2147483647i), arg_0.x >> (16518u % 32u)) << ((abs(vec4<u32>(1048u, u_input.b, u_input.c, u_input.c)) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 9622u), vec4<u32>(1u, u_input.b, 14398u, 4294967295u))) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(-6360i, arg_0.x, -17050i, 33621i))));
    var var_1 = -vec3<i32>(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(691f, 141f))), Struct_3(arg_0.x)), _wgslsmith_clamp_i32(var_0.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.x, 39109i), 45634i), countOneBits(_wgslsmith_mult_i32(u_input.a, u_input.a))), arg_0.x);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(497f + -1914f))) + _wgslsmith_f_op_f32(ceil(-575f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<i32>(arg_0.x, -13232i, var_1.x), vec3<u32>(0u, 4294967295u, 4294967295u), arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2021f + -945f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-538f, -398f)))) + _wgslsmith_f_op_f32(min(-522f, 1f))))), select(arg_1, !arg_1, select(arg_1, arg_1, true)), Struct_3(arg_0.x));
    let var_3 = vec3<bool>(!(!var_2.c.x), all(arg_1.zzz), !var_2.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.b)), var_2.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(592f)), _wgslsmith_f_op_f32(var_2.a - -795f))))), var_2.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1091f, -1350f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(198f * var_2.a), _wgslsmith_f_op_f32(-var_2.b)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_3 {
    global2 = arg_0.c.x;
    global0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(12131u, 50201u, _wgslsmith_mult_u32(arg_1.x, arg_1.x), 39785u), ~min(vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1.x), vec4<u32>(arg_1.x, u_input.b, arg_1.x, 4979u))));
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - arg_0.b) * -688f), arg_0.c, Struct_3(-_wgslsmith_sub_i32(~(-61646i), select(-1i, -2147483647i, false))));
    var var_1 = Struct_2(var_0.c.xy, select(vec4<bool>(true, false, !(arg_1.x < u_input.b), arg_0.c.x), select(!select(var_0.c, vec4<bool>(false, false, false, var_0.c.x), var_0.c), !select(var_0.c, vec4<bool>(var_0.c.x, false, false, false), false), var_0.c), select(!(!var_0.c), !(!vec4<bool>(false, var_0.c.x, true, var_0.c.x)), (var_0.c.x & var_0.c.x) | any(vec2<bool>(var_0.c.x, var_0.c.x)))), u_input.b == ~(~1u), Struct_1(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.c, arg_1.x, 87470u, u_input.b)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 32452u, arg_1.x, 1u), ~vec4<u32>(u_input.c, arg_1.x, arg_1.x, 0u), ~vec4<u32>(u_input.b, 1u, u_input.c, arg_1.x))), select(!(!arg_0.c.zz), arg_0.c.zy, any(vec4<bool>(var_0.c.x, var_0.c.x, false, arg_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(347f)), -1205f)))));
    let var_2 = Struct_2(vec2<bool>(all(var_1.a) & false, true), vec4<bool>(arg_0.c.x, false, !select(false, arg_0.c.x & arg_0.c.x, true), true & var_1.d.b.x), false, var_1.d);
    return Struct_3(_wgslsmith_div_i32(arg_0.d.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(-1i, 51990i, u_input.a), vec3<u32>(u_input.b, 0u, u_input.c), true)) - _wgslsmith_f_op_f32(1370f - -566f))), _wgslsmith_f_op_f32(func_2(select(-vec2<i32>(2147483647i, 23639i), -vec2<i32>(14587i, 2147483647i), vec2<bool>(true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), u_input.a <= u_input.a))), vec4<bool>(false, any(vec2<bool>(false, true)) & false, ~u_input.c == u_input.b, false), Struct_3(39659i)), select(~abs(countOneBits(vec2<u32>(u_input.b, 19370u))), firstTrailingBit((vec2<u32>(u_input.b, 33968u) << (vec2<u32>(100046u, u_input.b) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(79997u, 1u), vec2<u32>(1u, 29712u))), true));
    var var_1 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-27968i, u_input.a, u_input.a), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, 1i, -26203i), vec3<i32>(-12836i, -1i, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-18732i, -2147483647i, -2147483647i), vec3<i32>(u_input.a, 1i, var_0.a)))), var_0.a, u_input.a);
    global0 = ~firstLeadingBit(_wgslsmith_mult_u32(u_input.c ^ u_input.c, 13431u));
    global1 = _wgslsmith_mult_u32(~u_input.c ^ countOneBits(4294967295u), u_input.b);
    global1 = _wgslsmith_clamp_u32(max(~6217u | _wgslsmith_div_u32(41168u, _wgslsmith_mult_u32(u_input.c, u_input.b)), _wgslsmith_clamp_u32(8304u, 39953u, firstTrailingBit(4294967295u)) >> (39417u % 32u)), ~u_input.c, ~_wgslsmith_mult_u32(1u, max(0u, u_input.b)) << (_wgslsmith_sub_u32(4294967295u, u_input.c & ~0u) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1325f)));
    let var_3 = Struct_3(~var_1.x);
    let var_4 = Struct_2(select(vec2<bool>(all(vec2<bool>(false, true)) | select(false, false, true), any(vec3<bool>(true, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), u_input.c <= u_input.c), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), any(vec2<bool>(false, false))))), vec4<bool>(!(any(vec2<bool>(true, false)) || true), !(_wgslsmith_f_op_f32(-var_2) < -844f), !any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), true), false || any(vec4<bool>(false, 1u < u_input.c, any(vec2<bool>(false, false)), true)), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 37330u, 44869u, u_input.c), vec4<u32>(u_input.c, 14628u, u_input.c, u_input.b))) >> (_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, 48963u, u_input.c, 48743u), vec4<u32>(u_input.b, u_input.b, u_input.b, 396u)), vec4<u32>(11694u, 1u, 33986u, 9369u)) % vec4<u32>(32u)), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-371f + -265f))), var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, firstTrailingBit(var_0.a ^ 1i), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_3.a, 62238i, 73990i)), vec3<i32>(~var_3.a, _wgslsmith_div_i32(u_input.a, u_input.a), var_1.x))));
}

