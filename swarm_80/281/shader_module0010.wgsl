struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(global0.d, abs(vec3<u32>(_wgslsmith_clamp_u32(11369u, global0.b.x, 61920u), _wgslsmith_mult_u32(u_input.a, global0.a), _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(0u, 0u, global0.a))))), global0.b, arg_0.x, ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.d.xz, global0.b.zy), 14547u ^ u_input.a), ~global0.d.x, 1u));
    var_0 = Struct_1(_wgslsmith_clamp_u32(~0u, countOneBits(u_input.a), 0u), ~(~(~reverseBits(vec3<u32>(u_input.a, 0u, 30617u)))), true, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, 48544u, 40673u), vec3<u32>(var_0.a, 4294967295u, 1u), false), vec3<u32>(global0.b.x, u_input.a, 1u)) >> (select(firstLeadingBit(vec3<u32>(global0.a, var_0.b.x, var_0.d.x)), vec3<u32>(global0.d.x, 14742u, global0.d.x), any(vec4<bool>(true, arg_1.x, true, arg_0.x))) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, 0u, _wgslsmith_mod_u32(global0.a, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(62724u, 4294967295u, global0.a), vec3<u32>(var_0.a, u_input.a, global0.d.x)))));
    global0 = Struct_1(4294967295u, var_0.d, (4294967295u >> ((var_0.b.x | (52299u >> (1u % 32u))) % 32u)) != 0u, global0.d);
    let var_1 = Struct_1(14u, ~vec3<u32>(27227u, var_0.d.x, _wgslsmith_sub_u32(abs(74608u), global0.b.x)), global0.c, ~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a, 12053u)) >> (vec3<u32>(23256u, 8073u, global0.a) % vec3<u32>(32u)), global0.b));
    global0 = Struct_1(firstTrailingBit(u_input.a), select(abs(_wgslsmith_sub_vec3_u32(var_1.b | global0.b, ~var_1.d)), vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 61322u), select(0u, _wgslsmith_clamp_u32(131u, 7646u, 1u), false), var_0.d.x >> (1u % 32u)), var_0.c), any(!select(arg_1, arg_0.zz, all(arg_0))), vec3<u32>(u_input.a, 4559u, 0u));
    return abs(vec3<i32>(-1i, ~4678i, _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), max(vec2<i32>(2147483647i, -15993i), firstLeadingBit(vec2<i32>(-2147483647i, 17428i))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -66237i), -vec2<i32>(1i, 1i), reverseBits(vec2<i32>(11822i, -2147483647i))), vec2<i32>(~_wgslsmith_sub_i32(0i, -2147483647i), -65183i >> (arg_0 % 32u)), vec2<i32>(-_wgslsmith_mult_i32(32900i, 56108i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 1i)))), ~min(vec2<i32>(1i, 1i), vec2<i32>(1i, 35858i)));
    global0 = Struct_1(~(firstLeadingBit(4294967295u) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 30189u), global0.b.zz)) | 4294967295u, min(select(~(~global0.d), ~vec3<u32>(1u, 4294967295u, global0.a), select(vec3<bool>(global0.c, false, global0.c), select(vec3<bool>(global0.c, true, false), vec3<bool>(true, global0.c, true), vec3<bool>(false, false, global0.c)), false)), abs(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.a, arg_0), vec3<u32>(47930u, 1u, global0.b.x)), u_input.a))), true, countOneBits(global0.d));
    global0 = Struct_1(~(~_wgslsmith_mult_u32(firstLeadingBit(530u), _wgslsmith_mod_u32(58916u, arg_0))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 8080u, _wgslsmith_mod_u32(63520u, arg_0)), ~(~global0.d)), global0.b), true, ~abs(~countOneBits(global0.b)));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -21720i, var_0.x), func_3(!vec3<bool>(true, true, arg_0 <= 4294967295u), vec2<bool>(true, true)));
    global0 = Struct_1(_wgslsmith_mult_u32(4294967295u, countOneBits(_wgslsmith_sub_u32(select(global0.a, arg_0, true), 4294967295u))), ~(~firstLeadingBit(abs(vec3<u32>(global0.a, 46336u, arg_0)))), false, ~countOneBits(vec3<u32>(1u, u_input.a, max(arg_0, arg_0))));
    return !(!select(select(select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, global0.c), true), select(vec2<bool>(true, false), vec2<bool>(true, true), global0.c), any(vec3<bool>(false, true, global0.c))), !vec2<bool>(false, global0.c), !global0.c & !global0.c));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32) -> vec3<f32> {
    global0 = Struct_1(1595u ^ arg_2, vec3<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46231u, 1u, global0.d.x, u_input.a), vec4<u32>(33592u, global0.b.x, 0u, 4294967295u)), 58294u), 31613u), abs(arg_0.x)), true, ~select(arg_0, abs(select(arg_0, vec3<u32>(arg_2, 64010u, arg_2), vec3<bool>(true, false, arg_1.x))), select(!vec3<bool>(true, true, global0.c), select(vec3<bool>(global0.c, false, true), vec3<bool>(global0.c, global0.c, true), vec3<bool>(false, arg_1.x, arg_1.x)), true)));
    let var_0 = global0.d;
    var var_1 = Struct_1(40093u, min(countOneBits(~vec3<u32>(global0.d.x, u_input.a, 1u)), global0.d) | arg_0, global0.c & any(arg_1), ~firstTrailingBit(global0.d | arg_0) ^ (vec3<u32>(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, global0.a, 7062u, 0u), vec4<u32>(global0.b.x, var_0.x, 54665u, 4294967295u)), select(29285u, u_input.a, global0.c)) & reverseBits(_wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(1u, u_input.a, arg_0.x), vec3<u32>(var_0.x, 1u, 4294967295u)))));
    var var_2 = Struct_1(1u, ~global0.d, all(vec4<bool>(global0.c & global0.c, !arg_1.x, true, true)), (abs(countOneBits(global0.d)) & ~vec3<u32>(arg_0.x, 36427u, 1u)) >> ((_wgslsmith_add_vec3_u32(var_1.d, vec3<u32>(7447u, 0u, var_0.x) | var_1.d) & arg_0) % vec3<u32>(32u)));
    var var_3 = vec2<bool>(var_1.c, any(select(vec3<bool>(false, var_1.c, any(arg_1)), vec3<bool>(select(var_2.c, true, arg_1.x), any(arg_1), all(vec3<bool>(false, arg_1.x, var_2.c))), !(!vec3<bool>(false, false, global0.c)))));
    return vec3<f32>(1f, 1441f, _wgslsmith_div_f32(-887f, 176f));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(u_input.a, ~(~global0.b), !all(select(select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, global0.c)), select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, global0.c), global0.c), vec2<bool>(global0.c, global0.c))), ~(~global0.b));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -535f, 165f)) - vec3<f32>(arg_0.x, -455f, arg_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 1595f) + -1111f), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-691f * 488f)), -251f)) - _wgslsmith_f_op_vec3_f32(func_4(global0.d, select(func_2(~u_input.a, _wgslsmith_f_op_f32(select(-2269f, -1000f, false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(779f, 1000f, arg_0.x, -121f)))), vec2<bool>(true, true), global0.c), global0.b.x)));
    let var_1 = 1f == _wgslsmith_f_op_f32(971f + _wgslsmith_div_f32(arg_0.x, -1468f));
    var var_2 = Struct_1(~23789u, select(~global0.b, ~countOneBits(vec3<u32>(1u, u_input.a, 4294967295u)), true), global0.c || true, global0.b);
    var_2 = Struct_1(u_input.a, min(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_2.b.x, 37935u, 15895u), var_2.d >> (vec3<u32>(30887u, var_2.d.x, 33087u) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(var_2.d, vec3<u32>(var_2.d.x, ~var_2.d.x, _wgslsmith_sub_u32(4294967295u, 81646u)))), all(vec3<bool>(any(vec3<bool>(var_2.c, true, global0.c)), !func_2(1u, arg_0.x, vec4<f32>(1084f, -1000f, var_0.x, 1177f)).x, true)), vec3<u32>(max(~64602u, ~u_input.a) | u_input.a, u_input.a, global0.a));
    return Struct_1(13834u, var_2.d, true, select(vec3<u32>(~firstTrailingBit(16827u), ~26760u, ~60608u), ~(vec3<u32>(70509u, var_2.b.x, 0u) & max(vec3<u32>(18978u, 4294967295u, 1u), global0.b)), vec3<bool>(true, var_1, all(vec3<bool>(true, true, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = 1u >> (~(~667u ^ global0.d.x) % 32u);
    let var_2 = var_0.b.zy;
    let var_3 = any(vec4<bool>(arg_0.c, true, false, var_0.c)) && var_0.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(max(368f, _wgslsmith_div_f32(-462f, -790f))), -1563f, -951f, _wgslsmith_f_op_vec3_f32(func_4(arg_2.d, !vec2<bool>(false, arg_1), ~0u)).x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, -606f, -763f, 1735f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global0.c, (global0.c & true) || true, global0.c, !global0.c);
    var var_1 = u_input.a;
    var var_2 = vec4<u32>(25288u, 90675u, ~global0.d.x, ~(~u_input.a));
    var var_3 = 2147483647i;
    var var_4 = func_5(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1352f, 640f), vec2<f32>(-192f, 801f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-968f, 236f)))), var_0.yz))), any(vec3<bool>(var_0.x, true, !var_0.x)), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1141f, 206f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1168f, 694f) + vec2<f32>(-288f, -557f)), _wgslsmith_f_op_vec3_f32(func_4(var_2.zxx, vec2<bool>(global0.c, global0.c), u_input.a)).xz), false))), reverseBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(66484u, var_2.x, u_input.a, 51280u)), ~(vec4<u32>(1u, 3753u, u_input.a, var_2.x) >> (vec4<u32>(var_2.x, 0u, 31918u, 1u) % vec4<u32>(32u))))));
    var var_5 = 17103i;
    let var_6 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1312f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -196f))))));
    var_4 = Struct_1(_wgslsmith_add_u32(countOneBits(~var_4.d.x), ~global0.a), abs(var_2.xww), var_4.c, ~var_2.ywx);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(reverseBits(reverseBits(-20561i))));
}

