struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = select(_wgslsmith_div_vec3_i32(~u_input.d.yww, vec3<i32>(u_input.d.x, abs(u_input.b), -33i)), u_input.d.xzx << (~(~countOneBits(vec3<u32>(34193u, 90489u, 0u))) % vec3<u32>(32u)), !(~(~u_input.d.x) != u_input.a.x));
    let var_1 = Struct_3(vec2<u32>(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(14075u, 12212u), countOneBits(vec2<u32>(36593u, 4294967295u))) >> (_wgslsmith_clamp_u32(abs(4294967295u), abs(4294967295u), ~4294967295u) % 32u)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), global2.a.xx);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = -firstLeadingBit(arg_2);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(global2.a * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global2.a.x * -124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global2.b, global2.b, vec2<bool>(true, arg_3.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    var var_2 = vec4<bool>(arg_3.x, all(select(arg_1.zxx, arg_1.xxy, !select(arg_3.www, arg_3.zxy, arg_1.x))), arg_1.x | arg_3.x, arg_1.x);
    var var_3 = func_2(!(var_0.x > var_0.x), !var_2.x, vec4<f32>(403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(765f)), _wgslsmith_f_op_f32(-global2.b.x), true)) * _wgslsmith_f_op_f32(-global0.x)), var_1.b.x, global2.b.x));
    let var_4 = firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(min(-14689i, 26207i), arg_2.x) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, arg_2.x, 1i), u_input.d.xwx), arg_0.x, arg_2.x));
    return -27168i;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = func_2(!select(select(false, true, false) & (u_input.b <= u_input.c.x), !any(vec4<bool>(true, false, true, true)), all(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1057f)))) - _wgslsmith_f_op_f32(sign(-552f))), _wgslsmith_f_op_f32(ceil(global2.a.x)), global0.x));
    global0 = func_2(u_input.e < _wgslsmith_dot_vec2_i32(select(u_input.a, vec2<i32>(-1i, u_input.c.x), vec2<bool>(false, true)) >> (_wgslsmith_add_vec2_u32(arg_1.xy, arg_1.zy) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, -34639i), u_input.a), min(u_input.a, u_input.c))), true, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, global0.x, -589f, -491f)))).b;
    let var_1 = vec4<i32>(u_input.e, 0i, -(2147483647i & u_input.c.x), u_input.e) ^ -firstTrailingBit(select(vec4<i32>(-1i, u_input.c.x, u_input.a.x, 19962i), vec4<i32>(-62540i, 2147483647i, u_input.b, u_input.e), -855f <= global2.b.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1573f, global0.x, 1786f) + global2.a))))), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1145f + -1000f) - -1730f))));
    global2 = Struct_2(global2.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(622f, 1182f)) + _wgslsmith_f_op_f32(min(var_2.a.x, global2.b.x)))), -485f));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), arg_1.xx), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_1.x, arg_0), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), arg_0, ~arg_0), arg_1.x), ~(arg_1 >> (max(_wgslsmith_mod_vec3_u32(arg_1, arg_1), arg_1) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-882f, 449f)), _wgslsmith_f_op_f32(global0.x * global2.b.x)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.a.yx, global2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global2.b.x)), true)))));
    let var_1 = Struct_3(arg_2.yx);
    global1 = arg_2.x;
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(global2.a.x + var_0.x))), _wgslsmith_f_op_f32(-global0.x), -1057f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global2.b.x)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.zy * global2.b) * _wgslsmith_f_op_vec2_f32(-global2.b)), func_2(any(vec3<bool>(true, true, true)), true, vec4<f32>(global2.a.x, global0.x, global2.b.x, -1000f)).a.yz, vec2<bool>(false, var_1.a.x <= arg_2.x)))));
    var var_3 = !(!(!all(vec4<bool>(false, false, false, true)))) & any(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), true));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(40162i, (i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 60655u, 15523u), vec3<u32>(39937u, 37204u, 1u)) % 32u), -47250i, -func_1(u_input.d, vec4<bool>(true, true, false, true), vec3<i32>(2147483647i, 1i, u_input.b), vec4<bool>(false, false, true, true))), Struct_1(vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -14193i, u_input.e << (4294967295u % 32u)), 38933i, min(firstTrailingBit(u_input.c), _wgslsmith_sub_vec2_i32(u_input.d.xy, u_input.c))), ~func_3(~23666u, vec3<u32>(1u, 1550u, 1u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2637f)), -2266f)), func_2(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 549f, global0.x, global2.b.x) - vec4<f32>(global2.a.x, 423f, 1438f, 1773f))).a.x)));
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(~vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 10107i, 0i, u_input.d.x), u_input.d), max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.e, u_input.e, 33447i), u_input.d), ~u_input.a.x), -u_input.a.x, u_input.b), Struct_1(u_input.d.ywx, -_wgslsmith_dot_vec3_i32(u_input.d.wyy ^ u_input.d.wyy, vec3<i32>(u_input.d.x, 1i, 2147483647i)), u_input.d.wy), _wgslsmith_mod_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(10974u, 52326u, 1u), vec3<u32>(4541u, 4294967295u, 70842u), vec3<bool>(false, false, true)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 0u, 17261u))), ~vec3<u32>(~12875u, _wgslsmith_mult_u32(4294967295u, 1u), ~83633u)))).x;
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(10293u, 24256u, 6612u, 45167u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4712u, 1u, 3351u), vec4<u32>(38763u, 4294967295u, 8014u, 29428u))) & vec4<u32>(firstTrailingBit(~1u), firstLeadingBit(70732u), min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(40694u, 33658u), vec2<u32>(1u, 0u))), ~(~13088u)), ~min(vec4<u32>(~4294967295u, 1u, 14813u >> (1u % 32u), 1u), ~vec4<u32>(0u, 11569u, 0u, 1u)));
    let var_2 = ~var_1.x >= var_1.x;
    global1 = ~2856u;
    var var_3 = vec4<u32>(~firstTrailingBit(~firstLeadingBit(var_1.x)), 35210u, abs(firstLeadingBit(select(var_1.x, 42853u, var_2))) << (reverseBits(_wgslsmith_mod_u32(1u, ~var_1.x)) % 32u), var_1.x >> (~var_1.x % 32u));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, -2454f, 591f, _wgslsmith_f_op_f32(-565f * global2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, -1000f, -378f), vec4<f32>(-1329f, 192f, -384f, global2.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2137f, global0.x, global0.x, global2.a.x)), select(vec4<bool>(var_2, var_2, false, false), vec4<bool>(true, false, var_2, var_2), vec4<bool>(true, true, var_2, var_2)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1640f, global0.x, -572f, global0.x), vec4<f32>(global2.a.x, global0.x, -192f, global2.a.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2324f, global0.x, -583f, global2.a.x)))))));
    let var_5 = _wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_sub_u32(4294967295u, 25620u)));
    var_4 = vec4<f32>(-321f, global0.x, _wgslsmith_f_op_f32(trunc(830f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -299f), min(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(var_3.x, 33664u)), abs(vec2<u32>(33426u, 40390u))) | var_1.yx, var_3.xy), global2.b.x, _wgslsmith_mod_i32(select(abs(-15165i), u_input.d.x, var_2), ~(-20489i ^ _wgslsmith_dot_vec2_i32(u_input.d.wx, vec2<i32>(u_input.c.x, u_input.a.x)))));
}

